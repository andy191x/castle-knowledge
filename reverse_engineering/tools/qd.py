"""QuickDraw data-structure decoders: PackBits, PixMap/BitMap, CTab, Region, NFNT/FONT."""
import struct
import numpy as np

def u16(d, p): return struct.unpack('>H', d[p:p+2])[0]
def s16(d, p): return struct.unpack('>h', d[p:p+2])[0]
def u32(d, p): return struct.unpack('>I', d[p:p+4])[0]
def rect(d, p): return struct.unpack('>hhhh', d[p:p+8])  # top,left,bottom,right

def unpackbits(d, p, outlen):
    """Byte-wise PackBits. Returns (bytes, new_pos)."""
    out = bytearray()
    while len(out) < outlen:
        n = d[p]; p += 1
        if n < 128:
            out += d[p:p+n+1]; p += n+1
        elif n > 128:
            out += bytes([d[p]]) * (257-n); p += 1
    return bytes(out[:outlen]), p

def unpackbits16(d, p, outlen):
    """Word-wise PackBits (packType 3, 16-bit pixels)."""
    out = bytearray()
    while len(out) < outlen:
        n = d[p]; p += 1
        if n < 128:
            out += d[p:p+2*(n+1)]; p += 2*(n+1)
        elif n > 128:
            out += d[p:p+2] * (257-n); p += 2
    return bytes(out[:outlen]), p

def read_ctab(d, p):
    seed, flags, size = struct.unpack('>IHH', d[p:p+8]); p += 8
    tab = {}
    for i in range(size+1):
        val, r, g, b = struct.unpack('>HHHH', d[p:p+8]); p += 8
        idx = i if (flags & 0x8000) else val
        tab[idx] = (r >> 8, g >> 8, b >> 8)
    return tab, p

def read_pixmap_hdr(d, p, with_base=False):
    """Reads a PixMap record (without baseAddr unless with_base). Returns dict, p."""
    if with_base: p += 4
    rb = u16(d, p); p += 2
    bounds = rect(d, p); p += 8
    pm = {'rowBytes': rb & 0x3fff, 'isPixMap': bool(rb & 0x8000), 'bounds': bounds}
    if pm['isPixMap']:
        (ver, packType, packSize, hRes, vRes, pixelType, pixelSize, cmpCount, cmpSize,
         planeBytes, pmTable, pmReserved) = struct.unpack('>hhIIIhhhhIII', d[p:p+36]); p += 36
        pm.update(packType=packType, pixelSize=pixelSize, cmpCount=cmpCount, cmpSize=cmpSize)
    else:
        pm.update(packType=0, pixelSize=1, cmpCount=1, cmpSize=1)
    return pm, p

def read_pixdata(d, p, pm, packed=True):
    """Reads (possibly packed) pixel rows. Returns raw row-bytes array (h x rowBytes), p."""
    t, l, b, r = pm['bounds']; h = b - t; rb = pm['rowBytes']
    ps = pm['pixelSize']; pt = pm.get('packType', 0)
    rows = []
    if rb < 8 or not packed or pt == 1:
        for y in range(h):
            rows.append(d[p:p+rb]); p += rb
        return rows, p
    for y in range(h):
        if rb > 250: n = u16(d, p); p += 2
        else: n = d[p]; p += 1
        seg = d[p:p+n]; p += n
        if ps == 16 and pt != 1:
            row, _ = unpackbits16(seg, 0, rb)
        elif ps == 32 and pt == 4:
            w = r - l; cc = pm['cmpCount']
            row, _ = unpackbits(seg, 0, w*cc)
        else:
            row, _ = unpackbits(seg, 0, rb)
        rows.append(row)
    return rows, p

def pixels_to_rgb(rows, pm, ctab=None, fg=(0,0,0), bk=(255,255,255)):
    """Convert row data to (h,w,3) uint8 RGB array + (h,w) index array (or None)."""
    t, l, b, r = pm['bounds']; h = b - t; w = r - l
    ps = pm['pixelSize']
    out = np.zeros((h, w, 3), np.uint8)
    idx = None
    if ps in (1, 2, 4, 8):
        idx = np.zeros((h, w), np.uint16)
        for y, row in enumerate(rows):
            a = np.frombuffer(row, np.uint8)
            if ps == 8: v = a
            else:
                bits = np.unpackbits(a)
                if ps == 1: v = bits
                else:
                    bits = bits.reshape(-1, ps)
                    v = np.zeros(len(bits), np.uint16)
                    for k in range(ps): v = (v << 1) | bits[:, k]
            v = v[:w]
            if len(v) < w: v = np.pad(v, (0, w-len(v)))
            idx[y] = v
        if ctab is None:
            # 1-bit BitMap: 0 = bk, 1 = fg
            lut = np.array([bk, fg] + [(0,0,0)]*254, np.uint8)
        else:
            lut = np.zeros((65536 if ps > 8 else 256, 3), np.uint8)
            for k, c in ctab.items():
                if k < len(lut): lut[k] = c
        out = lut[idx]
    elif ps == 16:
        for y, row in enumerate(rows):
            a = np.frombuffer(row[:w*2], '>u2').astype(np.uint32)
            rr = (a >> 10) & 31; gg = (a >> 5) & 31; bb = a & 31
            out[y, :len(a), 0] = (rr << 3) | (rr >> 2)
            out[y, :len(a), 1] = (gg << 3) | (gg >> 2)
            out[y, :len(a), 2] = (bb << 3) | (bb >> 2)
    elif ps == 32:
        cc = pm['cmpCount']
        for y, row in enumerate(rows):
            if pm.get('packType') == 4:  # planar per row: (A)RGB
                a = np.frombuffer(row, np.uint8).reshape(cc, w)
                o = cc - 3
                out[y, :, 0] = a[o]; out[y, :, 1] = a[o+1]; out[y, :, 2] = a[o+2]
            else:
                a = np.frombuffer(row[:w*4], np.uint8).reshape(w, 4)
                out[y] = a[:, 1:4]
    return out, idx

def read_region(d, p):
    """Returns (bbox(t,l,b,r), mask ndarray relative to bbox, newp)."""
    size = u16(d, p); bbox = rect(d, p+2)
    t, l, b, r = bbox
    h, w = max(b-t, 0), max(r-l, 0)
    mask = np.ones((h, w), bool)
    if size > 10:
        mask[:] = False
        q = p + 10; end = p + size
        cur = np.zeros(w, bool)
        lasty = t
        while q < end:
            y = s16(d, q); q += 2
            if y == 0x7fff: break
            # rows lasty..y-1 = cur
            if y > lasty: mask[lasty-t:y-t] = cur
            while True:
                x1 = s16(d, q); q += 2
                if x1 == 0x7fff: break
                x2 = s16(d, q); q += 2
                cur[max(x1-l,0):max(x2-l,0)] ^= True
            lasty = y
        if lasty < b: mask[lasty-t:] = cur
    return bbox, mask, p + size

# ---------------- Bitmap fonts (FONT / NFNT) ----------------
def parse_nfnt(d):
    (fontType, firstChar, lastChar, widMax, kernMax, nDescent, fRectWidth, fRectHeight,
     owTLoc, ascent, descent, leading, rowWords) = struct.unpack('>HhhhhhhhHhhhh', d[:26])
    if fRectHeight == 0 or rowWords == 0: return None
    nch = lastChar - firstChar + 3
    p = 26
    strike_bytes = rowWords * 2 * fRectHeight
    strike = np.unpackbits(np.frombuffer(d[p:p+strike_bytes], np.uint8)).reshape(fRectHeight, rowWords*16)
    p += strike_bytes
    loc = struct.unpack('>%dH' % nch, d[p:p+2*nch]); p += 2*nch
    owt_pos = 16 + owTLoc*2  # owTLoc is offset in words from itself (field at byte 16)
    navail = min(nch, (len(d)-owt_pos)//2)
    ow = list(struct.unpack('>%dh' % navail, d[owt_pos:owt_pos+2*navail])) + [-1]*(nch-navail)
    glyphs = {}
    for i in range(nch-1):
        if ow[i] == -1: continue
        off, wid = (ow[i] >> 8) & 0xff, ow[i] & 0xff
        x0, x1 = loc[i], loc[i+1]
        code = firstChar + i if i < nch-2 else -1  # last = missing glyph
        glyphs[code] = dict(bitmap=strike[:, x0:x1], offset=off + kernMax, width=wid)
    return dict(first=firstChar, last=lastChar, ascent=ascent, descent=descent, leading=leading,
                height=fRectHeight, kernMax=kernMax, widMax=widMax, glyphs=glyphs)
