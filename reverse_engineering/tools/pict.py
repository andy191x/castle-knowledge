"""QuickDraw PICT (v1/v2) playback renderer -> RGBA numpy canvas."""
import struct, io, math
import numpy as np
from PIL import Image, ImageDraw, ImageFont
from qd import *

BLACK_PAT = b'\xff'*8; WHITE_PAT = b'\x00'*8
TTF = {
    'serif': '/usr/share/fonts/truetype/liberation/LiberationSerif-Regular.ttf',
    'serifb': '/usr/share/fonts/truetype/liberation/LiberationSerif-Bold.ttf',
    'sans': '/usr/share/fonts/truetype/liberation/LiberationSans-Regular.ttf',
    'sansb': '/usr/share/fonts/truetype/liberation/LiberationSans-Bold.ttf',
    'mono': '/home/claude/out/fonts/Courier.ttf',
    'monob': '/home/claude/out/fonts/Courier_Bold.ttf',
}
# Mac font family IDs -> fallback style
FAMILY_STYLE = {0: 'sans', 1: 'sans', 2: 'serif', 3: 'sans', 4: 'mono', 20: 'serif', 21: 'sans', 22: 'mono', 16: 'sans'}
BITMAP_FONTS = {}   # (family, size) -> parsed NFNT
FONT_NAMES = {}     # name -> family id

class PictRenderer:
    def __init__(self, data):
        self.d = data
        size, *frame = struct.unpack('>Hhhhh', data[:10])
        self.frame = frame  # t,l,b,r
        t, l, b, r = frame
        self.W, self.H = max(r-l, 1), max(b-t, 1)
        self.ox, self.oy = l, t          # picture coord of canvas (0,0)
        self.canvas = np.zeros((self.H, self.W, 4), np.uint8)
        self.clip = None                  # mask in canvas coords or None
        self.pen = [0, 0]; self.pnsize = (1, 1); self.pnmode = 8
        self.pnpat = BLACK_PAT; self.fillpat = BLACK_PAT; self.bkpat = WHITE_PAT
        self.fg = (0, 0, 0); self.bk = (255, 255, 255)
        self.ovsize = (0, 0)
        self.txfont = 0; self.txface = 0; self.txsize = 12; self.txmode = 1
        self.txloc = [0, 0]; self.org = [0, 0]
        self.last = {}   # last shape per kind for "same" ops
        self.warnings = []
        self.version = 2

    # ---- coordinate helpers ----
    def X(self, h): return h - self.ox - self.org[0]
    def Y(self, v): return v - self.oy - self.org[1]

    # ---- pattern / pixel application ----
    def pat_mask(self, pat, h, w, y0, x0):
        bits = np.unpackbits(np.frombuffer(pat, np.uint8)).reshape(8, 8).astype(bool)
        # pattern aligned to picture coordinates
        ys = (np.arange(h) + y0 + self.oy) % 8
        xs = (np.arange(w) + x0 + self.ox) % 8
        return bits[ys][:, xs]

    def apply(self, shape, pat, mode, fg=None, bk=None):
        """shape: bool mask (H,W) on canvas. Apply pattern with pen mode."""
        fg = self.fg if fg is None else fg
        bk = self.bk if bk is None else bk
        if self.clip is not None: shape = shape & self.clip
        if not shape.any(): return
        ys, xs = np.nonzero(shape)
        y0, y1, x0, x1 = ys.min(), ys.max()+1, xs.min(), xs.max()+1
        sh = shape[y0:y1, x0:x1]
        pm = self.pat_mask(pat, y1-y0, x1-x0, y0, x0)
        m = mode & 0x3f
        if m >= 32: m = {36: 9}.get(m, 8)   # arithmetic modes: approximate
        if m & 4: pm = ~pm; m &= ~4
        reg = self.canvas[y0:y1, x0:x1]
        base = m & 3 if m >= 8 else m & 3
        if base == 0:      # copy
            sel = sh
            col = np.where(pm[..., None], np.array(fg, np.uint8), np.array(bk, np.uint8))
            reg[sel, :3] = col[sel]; reg[sel, 3] = 255
        elif base == 1:    # or
            sel = sh & pm
            reg[sel, :3] = fg; reg[sel, 3] = 255
        elif base == 2:    # xor
            sel = sh & pm
            reg[sel, :3] = 255 - reg[sel, :3]; reg[sel, 3] = 255
        elif base == 3:    # bic
            sel = sh & pm
            reg[sel, :3] = bk; reg[sel, 3] = 255

    def blank(self): return np.zeros((self.H, self.W), bool)

    def img_mask(self, drawfn):
        im = Image.new('1', (self.W, self.H), 0)
        drawfn(ImageDraw.Draw(im))
        return np.array(im, bool)

    # ---- shapes ----
    def rect_mask(self, r):
        t, l, b, rr = r
        m = self.blank()
        y0, y1 = max(self.Y(t), 0), min(self.Y(b), self.H)
        x0, x1 = max(self.X(l), 0), min(self.X(rr), self.W)
        if y1 > y0 and x1 > x0: m[y0:y1, x0:x1] = True
        return m

    def oval_mask(self, r):
        t, l, b, rr = r
        if b - t <= 0 or rr - l <= 0: return self.blank()
        return self.img_mask(lambda dr: dr.ellipse([self.X(l), self.Y(t), self.X(rr)-1, self.Y(b)-1], fill=1))

    def rrect_mask(self, r):
        t, l, b, rr = r
        ow, oh = self.ovsize
        rad = max(min(ow, oh) // 2, 0)
        if b - t <= 0 or rr - l <= 0: return self.blank()
        return self.img_mask(lambda dr: dr.rounded_rectangle([self.X(l), self.Y(t), self.X(rr)-1, self.Y(b)-1], radius=rad, fill=1))

    def arc_mask(self, r, start, arc):
        t, l, b, rr = r
        if arc < 0: start, arc = start + arc, -arc
        a0, a1 = start - 90, start + arc - 90
        return self.img_mask(lambda dr: dr.pieslice([self.X(l), self.Y(t), self.X(rr)-1, self.Y(b)-1], a0, a1, fill=1))

    def inset(self, r):
        t, l, b, rr = r; pw, ph = self.pnsize
        return (t+ph, l+pw, b-ph, rr-pw)

    def frame_of(self, maskfn, r):
        outer = maskfn(r)
        t, l, b, rr = r; pw, ph = self.pnsize
        if (rr-l) <= 2*pw or (b-t) <= 2*ph: return outer
        if maskfn == self.rrect_mask:
            sv = self.ovsize; self.ovsize = (max(sv[0]-2*pw, 0), max(sv[1]-2*ph, 0))
            inner = maskfn(self.inset(r)); self.ovsize = sv
        else:
            inner = maskfn(self.inset(r))
        return outer & ~inner

    def shape_op(self, kind, verb, maskfn, r):
        if verb == 0:   # frame
            m = self.frame_of(maskfn, r)
            self.apply(m, self.pnpat, self.pnmode)
        else:
            m = maskfn(r)
            if verb == 1: self.apply(m, self.pnpat, self.pnmode)
            elif verb == 2: self.apply(m, self.bkpat, 8, fg=self.bk, bk=self.bk)
            elif verb == 3: self.apply(m, BLACK_PAT, 10)
            elif verb == 4: self.apply(m, self.fillpat, 8)

    def line(self, h0, v0, h1, v1):
        pw, ph = self.pnsize
        if pw <= 0 or ph <= 0: self.pen = [h1, v1]; return
        x0, y0, x1, y1 = self.X(h0), self.Y(v0), self.X(h1), self.Y(v1)
        def dr(d):
            if pw == 1 and ph == 1:
                d.line([x0, y0, x1, y1], fill=1)
            else:
                # sweep the pen rectangle along the line (convex hull of start & end rects)
                pts = [(x0, y0), (x0+pw-1, y0), (x0+pw-1, y0+ph-1), (x0, y0+ph-1),
                       (x1, y1), (x1+pw-1, y1), (x1+pw-1, y1+ph-1), (x1, y1+ph-1)]
                hull = convex_hull(pts)
                d.polygon(hull, fill=1)
        self.apply(self.img_mask(dr), self.pnpat, self.pnmode)
        self.pen = [h1, v1]

    def poly(self, verb, data):
        n = u16(data, 0); pts = []
        for k in range((n-10)//4):
            v, h = struct.unpack('>hh', data[10+4*k:14+4*k]); pts.append((h, v))
        if not pts: return
        if verb == 0:
            for a, b in zip(pts, pts[1:]): self.line(a[0], a[1], b[0], b[1])
            return
        cp = [(self.X(h), self.Y(v)) for h, v in pts]
        m = self.img_mask(lambda d: d.polygon(cp, fill=1)) if len(cp) > 2 else self.blank()
        if verb == 1: self.apply(m, self.pnpat, self.pnmode)
        elif verb == 2: self.apply(m, self.bkpat, 8, fg=self.bk, bk=self.bk)
        elif verb == 3: self.apply(m, BLACK_PAT, 10)
        elif verb == 4: self.apply(m, self.fillpat, 8)

    def region_canvas_mask(self, data, p):
        bbox, rm, np_ = read_region(data, p)
        t, l, b, r = bbox
        m = self.blank()
        Y0, X0 = self.Y(t), self.X(l)
        ys0, xs0 = max(-Y0, 0), max(-X0, 0)
        ye, xe = min(rm.shape[0], self.H - Y0), min(rm.shape[1], self.W - X0)
        if ye > ys0 and xe > xs0:
            m[Y0+ys0:Y0+ye, X0+xs0:X0+xe] = rm[ys0:ye, xs0:xe]
        return m, np_, bbox

    # ---- text ----
    def draw_text(self, s):
        fam, size, face = self.txfont, self.txsize or 12, self.txface
        bf = BITMAP_FONTS.get((fam, size))
        x, y = self.X(self.txloc[0]), self.Y(self.txloc[1])
        bold = face & 1; italic = face & 2; underline = face & 4
        if bf:
            m = self.blank(); cx = x
            for ch in s.encode('mac_roman', 'replace'):
                g = bf['glyphs'].get(ch, bf['glyphs'].get(-1))
                if g is None: continue
                bm = g['bitmap'].astype(bool); gx = cx + g['offset']; gy = y - bf['ascent']
                for dx in ([0, 1] if bold else [0]):
                    paste(m, bm, gy, gx + dx)
                cx += g['width'] + (1 if bold else 0)
            adv = cx - x
        else:
            style = FAMILY_STYLE.get(fam, 'sans') + ('b' if bold else '')
            try: font = ImageFont.truetype(TTF[style], size)
            except Exception: font = ImageFont.load_default()
            m = self.img_mask(lambda d: d.text((x, y), s, font=font, fill=1, anchor='ls'))
            adv = int(font.getlength(s))
        if underline:
            m[min(max(y+1, 0), self.H-1), max(x, 0):max(min(x+adv, self.W), 0)] = True
        mode = self.txmode
        tm = {0: 8, 1: 9, 2: 10, 3: 11}.get(mode, 9 if mode not in range(8, 16) else mode)
        self.apply(m, BLACK_PAT, tm)
        self.txloc[0] += adv / 1.0 if False else 0  # QuickDraw text loc for DH ops is anchor-based

    # ---- bitmaps ----
    def bits_op(self, op, d, p):
        direct = op in (0x9A, 0x9B)
        if direct:
            pm, p = read_pixmap_hdr(d, p, with_base=True); ctab = None
        else:
            pm, p = read_pixmap_hdr(d, p)
            ctab = None
            if pm['isPixMap']: ctab, p = read_ctab(d, p)
        src = rect(d, p); dst = rect(d, p+8); mode = u16(d, p+16); p += 18
        mask = None
        if op in (0x91, 0x99, 0x9B):
            mask, p, _ = self.region_canvas_mask(d, p)
        rows, p = read_pixdata(d, p, pm, packed=op not in (0x90, 0x91))
        rgb, idx = pixels_to_rgb(rows, pm, ctab, self.fg, self.bk)
        bt, bl, bb, br = pm['bounds']
        st, sl, sb, sr = src
        sub = rgb[max(st-bt, 0):sb-bt, max(sl-bl, 0):sr-bl]
        subi = None if idx is None else idx[max(st-bt, 0):sb-bt, max(sl-bl, 0):sr-bl]
        dt, dl, db, dr_ = dst
        dw, dh = dr_-dl, db-dt
        if dw <= 0 or dh <= 0 or sub.size == 0: return p
        if sub.shape[1] != dw or sub.shape[0] != dh:
            sub = np.array(Image.fromarray(sub).resize((dw, dh), Image.NEAREST))
            if subi is not None:
                subi = np.array(Image.fromarray(subi.astype(np.int32)).resize((dw, dh), Image.NEAREST))
        sel = np.ones((dh, dw), bool)
        m = mode & 0x7f
        is1bit = not pm['isPixMap'] or pm['pixelSize'] == 1
        if m in (1, 9) and is1bit:            # srcOr on 1-bit: only black pixels
            sel = (subi == 1) if subi is not None else sel
        elif m == 36:                          # transparent: skip bk-colored pixels
            sel = ~np.all(sub == np.array(self.bk, np.uint8), axis=2)
        elif m in (3, 11) and is1bit:          # srcBic
            sel = (subi == 1); sub = np.broadcast_to(np.array(self.bk, np.uint8), sub.shape).copy()
        elif m in (2, 10):                     # xor
            sel = (subi == 1) if subi is not None else ~np.all(sub == 255, axis=2)
        Y0, X0 = self.Y(dt), self.X(dl)
        full = self.blank(); colors = np.zeros((self.H, self.W, 3), np.uint8)
        ys0, xs0 = max(-Y0, 0), max(-X0, 0)
        ye, xe = min(dh, self.H-Y0), min(dw, self.W-X0)
        if ye <= ys0 or xe <= xs0: return p
        full[Y0+ys0:Y0+ye, X0+xs0:X0+xe] = sel[ys0:ye, xs0:xe]
        colors[Y0+ys0:Y0+ye, X0+xs0:X0+xe] = sub[ys0:ye, xs0:xe]
        if mask is not None: full &= mask
        if self.clip is not None: full &= self.clip
        if m in (2, 10):
            self.canvas[full, :3] = 255 - self.canvas[full, :3]
        else:
            self.canvas[full, :3] = colors[full]
        self.canvas[full, 3] = 255
        return p

    def quicktime(self, d, p, n):
        """0x8200 CompressedQuickTime: decode JPEG (or other PIL-readable) image description."""
        q = p
        ver = u16(d, q); matrix = struct.unpack('>9i', d[q+2:q+38]); q += 38
        matteSize = u32(d, q); matteRect = rect(d, q+4); q += 12
        mode = u16(d, q); srcRect = rect(d, q+2); q += 10
        accuracy = u32(d, q); maskSize = u32(d, q+4); q += 8
        if matteSize: q += matteSize
        if maskSize: q += maskSize
        idsc = q
        idsize = u32(d, idsc); codec = d[idsc+4:idsc+8]
        w, h = u16(d, idsc+32), u16(d, idsc+34)
        dsize = u32(d, idsc+44)
        img_data = d[idsc+idsize: idsc+idsize+dsize]
        try:
            im = Image.open(io.BytesIO(img_data)).convert('RGB')
        except Exception as e:
            self.warnings.append('qt codec %r undecodable: %s' % (codec, e)); return False
        tx, ty = matrix[6] / 65536.0, matrix[7] / 65536.0
        sx, sy = matrix[0] / 65536.0, matrix[4] / 65536.0
        st, sl, sb, sr = srcRect
        dw, dh = int(round((sr-sl)*sx)), int(round((sb-st)*sy))
        if (dw, dh) != im.size and dw > 0 and dh > 0: im = im.resize((dw, dh), Image.BILINEAR)
        a = np.array(im)
        X0, Y0 = int(round(self.X(sl*sx + tx))), int(round(self.Y(st*sy + ty)))
        paste_rgb(self.canvas, a, Y0, X0, self.clip)
        return True

    def skip_until_nop(self, d, p):
        saved = (self.canvas.copy(), self.pen[:], self.txloc[:])
        start = p
        cv = self.canvas
        self.canvas = np.zeros_like(cv)
        while p < len(d):
            if p & 1: p += 1
            op = u16(d, p)
            if op in (0x0000, 0x00FF): break
            p = self.do_op(op, d, p+2)
            if p is None: p = len(d); break
        self.canvas = saved[0]
        return p

    # ---- main loop ----
    def run(self):
        d = self.d; p = 10
        if d[10:12] == b'\x11\x01':
            self.version = 1; p = 12
        def rd_op():
            nonlocal p
            if self.version == 1:
                op = d[p]; p += 1
            else:
                if p & 1: p += 1
                op = u16(d, p); p += 2
            return op
        while p < len(d):
            op = rd_op()
            if op == 0xFF or op == 0xFFFF: break
            try:
                p = self.do_op(op, d, p)
            except Exception as e:
                self.warnings.append('op %04x at %d: %s' % (op, p, e)); break
            if p is None: break
        return self.canvas

    def do_op(self, op, d, p):
        last = self.last
        if op == 0x00: return p
        if op == 0x01:
            m, p2, bbox = self.region_canvas_mask(d, p)
            self.clip = m; return p2
        if op in (0x02,): self.bkpat = d[p:p+8]; return p+8
        if op == 0x03: self.txfont = s16(d, p); return p+2
        if op == 0x04: self.txface = d[p]; return p+1
        if op == 0x05: self.txmode = s16(d, p); return p+2
        if op == 0x06: return p+4
        if op == 0x07: v, h = struct.unpack('>hh', d[p:p+4]); self.pnsize = (h, v); return p+4
        if op == 0x08: self.pnmode = s16(d, p); return p+2
        if op == 0x09: self.pnpat = d[p:p+8]; return p+8
        if op == 0x0A: self.fillpat = d[p:p+8]; return p+8
        if op == 0x0B: v, h = struct.unpack('>hh', d[p:p+4]); self.ovsize = (h, v); return p+4
        if op == 0x0C:
            dh, dv = struct.unpack('>hh', d[p:p+4]); self.org[0] += dh; self.org[1] += dv; return p+4
        if op == 0x0D: self.txsize = s16(d, p); return p+2
        if op in (0x0E, 0x0F):
            c = u32(d, p)
            old = {33: (0,0,0), 30: (255,255,255), 205: (255,0,0), 341: (0,255,0), 409: (0,0,255),
                   273: (0,255,255), 137: (255,0,255), 69: (255,255,0)}.get(c, (0,0,0))
            if op == 0x0E: self.fg = old
            else: self.bk = old
            return p+4
        if op == 0x10: return p+8
        if op == 0x11: return p+(1 if self.version == 1 else 1)
        if op in (0x15, 0x16): return p+2
        if op == 0x1A: self.fg = tuple(x >> 8 for x in struct.unpack('>HHH', d[p:p+6])); return p+6
        if op == 0x1B: self.bk = tuple(x >> 8 for x in struct.unpack('>HHH', d[p:p+6])); return p+6
        if op in (0x1D, 0x1F): return p+6
        if op == 0x1C or op == 0x1E: return p
        if op == 0x20:
            v0, h0, v1, h1 = struct.unpack('>hhhh', d[p:p+8]); self.line(h0, v0, h1, v1); return p+8
        if op == 0x21:
            v1, h1 = struct.unpack('>hh', d[p:p+4]); self.line(self.pen[0], self.pen[1], h1, v1); return p+4
        if op == 0x22:
            v0, h0, dh, dv = struct.unpack('>hhbb', d[p:p+6]); self.line(h0, v0, h0+dh, v0+dv); return p+6
        if op == 0x23:
            dh, dv = struct.unpack('>bb', d[p:p+2]); self.line(self.pen[0], self.pen[1], self.pen[0]+dh, self.pen[1]+dv); return p+2
        if op == 0x28:
            v, h = struct.unpack('>hh', d[p:p+4]); self.txloc = [h, v]; n = d[p+4]
            self.draw_text(d[p+5:p+5+n].decode('mac_roman')); return p+5+n
        if op == 0x29:
            self.txloc[0] += d[p]; n = d[p+1]; self.draw_text(d[p+2:p+2+n].decode('mac_roman')); return p+2+n
        if op == 0x2A:
            self.txloc[1] += d[p]; n = d[p+1]; self.draw_text(d[p+2:p+2+n].decode('mac_roman')); return p+2+n
        if op == 0x2B:
            self.txloc[0] += d[p]; self.txloc[1] += d[p+1]; n = d[p+2]
            self.draw_text(d[p+3:p+3+n].decode('mac_roman')); return p+3+n
        if op == 0x2C:
            n = u16(d, p); fid = s16(d, p+2); nm = d[p+5:p+5+d[p+4]].decode('mac_roman')
            FONT_NAMES.setdefault(nm, fid)
            if nm.lower().startswith('times'): FAMILY_STYLE.setdefault(fid, 'serif')
            elif nm.lower().startswith('courier') or nm.lower().startswith('monaco'): FAMILY_STYLE.setdefault(fid, 'mono')
            return p+2+n
        if op in (0x2D, 0x2E, 0x2F) or 0x24 <= op <= 0x27:
            return p+2+u16(d, p)
        # rect family 0x30-0x3C, rrect 0x40-0x4C, oval 0x50-0x5C, arc 0x60-0x6C
        fam = {0x3: ('rect', self.rect_mask), 0x4: ('rrect', self.rrect_mask), 0x5: ('oval', self.oval_mask), 0x6: ('arc', None)}
        hi = op >> 4
        if op < 0x70 and hi in fam:
            kind, fn = fam[hi]; verb = op & 7; same = op & 8
            if verb > 4: return p + (0 if same else 8) + (4 if kind == 'arc' else 0)
            if same: r = last.get(kind, (0,0,0,0))
            else: r = rect(d, p); p += 8; last[kind] = r
            if kind == 'arc':
                sa, aa = struct.unpack('>hh', d[p:p+4]); p += 4
                m = self.arc_mask(r, sa, aa)
                if verb == 0:
                    inner = self.arc_mask(self.inset(r), sa, aa); m = m & ~inner
                    self.apply(m, self.pnpat, self.pnmode)
                elif verb == 1: self.apply(m, self.pnpat, self.pnmode)
                elif verb == 2: self.apply(m, self.bkpat, 8, fg=self.bk, bk=self.bk)
                elif verb == 3: self.apply(m, BLACK_PAT, 10)
                elif verb == 4: self.apply(m, self.fillpat, 8)
            else:
                self.shape_op(kind, verb, fn, r)
            return p
        if 0x70 <= op <= 0x7C:
            verb = op & 7
            if op & 8: data = last.get('poly', b'\x00\x0a' + b'\x00'*8)
            else: n = u16(d, p); data = d[p:p+n]; p += n; last['poly'] = data
            if verb <= 4: self.poly(verb, data)
            return p
        if 0x80 <= op <= 0x8C:
            verb = op & 7
            if op & 8: m = last.get('rgn', self.blank())
            else: m, p, _ = self.region_canvas_mask(d, p); last['rgn'] = m
            if verb == 0:
                # frame region: approximate with boundary pixels
                inner = m.copy(); inner[1:] &= m[:-1]; inner[:-1] &= m[1:]; inner[:, 1:] &= m[:, :-1]; inner[:, :-1] &= m[:, 1:]
                self.apply(m & ~inner, self.pnpat, self.pnmode)
            elif verb == 1: self.apply(m, self.pnpat, self.pnmode)
            elif verb == 2: self.apply(m, self.bkpat, 8, fg=self.bk, bk=self.bk)
            elif verb == 3: self.apply(m, BLACK_PAT, 10)
            elif verb == 4: self.apply(m, self.fillpat, 8)
            return p
        if op in (0x90, 0x91, 0x98, 0x99, 0x9A, 0x9B):
            return self.bits_op(op, d, p)
        if op == 0xA0: return p+2
        if op == 0xA1: return p+4+u16(d, p+2)
        if op == 0x0C00: return p+24
        if op == 0x02FF: return p+2
        if 0x8200 <= op <= 0x8201:
            n = u32(d, p)
            q = p+4+n
            if op == 0x8200 and self.quicktime(d, p+4, n):
                # QuickTime drew the image; skip the non-QT fallback ops up to the NOP terminator
                q = self.skip_until_nop(d, q)
            return q
        # generic skip rules for reserved opcodes
        if 0x0100 <= op <= 0x7FFF: return p + ((op >> 8) * 2)
        if 0x8000 <= op <= 0x80FF: return p
        if 0x8100 <= op <= 0xFFFF: return p+4+u32(d, p)
        if 0xA2 <= op <= 0xAF: return p+2+u16(d, p)
        if 0xB0 <= op <= 0xCF: return p
        if 0xD0 <= op <= 0xFE: return p+4+u32(d, p)
        self.warnings.append('unknown op %04x' % op); return None

def convex_hull(pts):
    pts = sorted(set(pts))
    if len(pts) <= 2: return pts
    def cross(o, a, b): return (a[0]-o[0])*(b[1]-o[1]) - (a[1]-o[1])*(b[0]-o[0])
    lo, hi = [], []
    for q in pts:
        while len(lo) >= 2 and cross(lo[-2], lo[-1], q) <= 0: lo.pop()
        lo.append(q)
    for q in reversed(pts):
        while len(hi) >= 2 and cross(hi[-2], hi[-1], q) <= 0: hi.pop()
        hi.append(q)
    return lo[:-1] + hi[:-1]

def paste(m, bm, y, x):
    h, w = bm.shape; H, W = m.shape
    ys0, xs0 = max(-y, 0), max(-x, 0); ye, xe = min(h, H-y), min(w, W-x)
    if ye > ys0 and xe > xs0: m[y+ys0:y+ye, x+xs0:x+xe] |= bm[ys0:ye, xs0:xe]

def paste_rgb(canvas, a, y, x, clip=None):
    h, w = a.shape[:2]; H, W = canvas.shape[:2]
    ys0, xs0 = max(-y, 0), max(-x, 0); ye, xe = min(h, H-y), min(w, W-x)
    if ye <= ys0 or xe <= xs0: return
    sel = np.ones((ye-ys0, xe-xs0), bool)
    if clip is not None: sel &= clip[y+ys0:y+ye, x+xs0:x+xe]
    reg = canvas[y+ys0:y+ye, x+xs0:x+xe]
    reg[sel, :3] = a[ys0:ye, xs0:xe][sel]; reg[sel, 3] = 255

def render(data):
    r = PictRenderer(data)
    c = r.run()
    return Image.fromarray(c, 'RGBA'), r
