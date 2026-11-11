"""Export cicn, ppat, PAT, CURS, icons, fonts, STR#, DLOG/DITL/ALRT/WIND/MENU/dctb/vers to PNG/JSON."""
import sys, os, json, struct, re
sys.path.insert(0, '/home/claude/work')
import numpy as np
from PIL import Image
import rsrc, qd
from qd import u16, s16, u32, rect

def bits_to_mask(data, w, h, rb):
    a = np.frombuffer(data[:rb*h], np.uint8).reshape(h, rb)
    return np.unpackbits(a, axis=1)[:, :w].astype(bool)

def safe(n): return re.sub(r'[^A-Za-z0-9]+', '_', n).strip('_')

# Standard Mac 4-bit and 8-bit system palettes (for icl4/icl8)
def mac_pal8():
    pal = []
    lv = [0xFF, 0xCC, 0x99, 0x66, 0x33, 0x00]
    for r in lv:
        for g in lv:
            for b in lv:
                pal.append((r, g, b))
    pal = pal[:215]
    ramp = [0xEE, 0xDD, 0xBB, 0xAA, 0x88, 0x77, 0x55, 0x44, 0x22, 0x11]
    for c in range(3):
        for v in ramp:
            col = [0, 0, 0]; col[c] = v; pal.append(tuple(col))
    for v in ramp: pal.append((v, v, v))
    pal.append((0, 0, 0))
    return pal
PAL4 = [(255,255,255),(255,255,0),(255,102,0),(221,0,0),(255,0,153),(51,0,153),(0,0,204),(0,153,255),
        (0,170,0),(0,102,0),(102,51,0),(153,102,51),(187,187,187),(136,136,136),(68,68,68),(0,0,0)]
PAL8 = mac_pal8()

def cicn(d):
    pm, p = qd.read_pixmap_hdr(d, 0, with_base=True)
    # mask BitMap
    p0 = 50
    mrb = u16(d, p0+4); mb = rect(d, p0+6)
    brb = u16(d, p0+18); bb = rect(d, p0+20)
    p = p0 + 28 + 4   # iconData handle
    t, l, b, r = pm['bounds']; h, w = b-t, r-l
    mh, mw = mb[2]-mb[0], mb[3]-mb[1]
    mask = bits_to_mask(d[p:], mw, mh, mrb) if mrb else np.ones((h, w), bool); p += mrb*mh
    bw_ = bits_to_mask(d[p:], bb[3]-bb[1], bb[2]-bb[0], brb) if brb else None; p += brb*(bb[2]-bb[0])
    ctab, p = qd.read_ctab(d, p)
    rows = [d[p+y*pm['rowBytes']: p+(y+1)*pm['rowBytes']] for y in range(h)]
    rgb, idx = qd.pixels_to_rgb(rows, pm, ctab)
    a = np.zeros((h, w, 4), np.uint8); a[..., :3] = rgb
    mm = np.zeros((h, w), bool); mm[:mask.shape[0], :mask.shape[1]] = mask[:h, :w]
    a[..., 3] = mm * 255
    return Image.fromarray(a, 'RGBA')

def ppat(d):
    patType = u16(d, 0); hmap = u32(d, 2); hdata = u32(d, 6)
    pat1 = d[28:36]
    if patType == 0 or hmap == 0:
        return pat_img(pat1), pat_img(pat1)
    pm, _ = qd.read_pixmap_hdr(d, hmap, with_base=True)
    pmTable = u32(d, hmap+42)
    ctab, _ = qd.read_ctab(d, pmTable)
    t, l, b, r = pm['bounds']; h = b-t
    rb = pm['rowBytes']
    rows = [d[hdata+y*rb: hdata+(y+1)*rb] for y in range(h)]
    rgb, _ = qd.pixels_to_rgb(rows, pm, ctab)
    return Image.fromarray(rgb, 'RGB'), pat_img(pat1)

def pat_img(p8):
    m = np.unpackbits(np.frombuffer(p8, np.uint8)).reshape(8, 8)
    return Image.fromarray(np.where(m[..., None], 0, 255).repeat(3, 2).astype(np.uint8), 'RGB')

def curs(d):
    data = bits_to_mask(d[0:32], 16, 16, 2); mask = bits_to_mask(d[32:64], 16, 16, 2)
    hv, hh = struct.unpack('>hh', d[64:68])
    a = np.zeros((16, 16, 4), np.uint8)
    a[data] = (0, 0, 0, 255); a[mask & ~data] = (255, 255, 255, 255)
    return Image.fromarray(a, 'RGBA'), (hh, hv)

def icon_bw(d, size):
    rb = size // 8; n = rb*size
    data = bits_to_mask(d[:n], size, size, rb)
    mask = bits_to_mask(d[n:2*n], size, size, rb) if len(d) >= 2*n else np.ones_like(data)
    a = np.zeros((size, size, 4), np.uint8)
    a[..., :3] = np.where(data[..., None], 0, 255); a[..., 3] = mask*255
    return Image.fromarray(a, 'RGBA')

def icon_color(d, size, depth, mask):
    if depth == 8: idx = np.frombuffer(d[:size*size], np.uint8).reshape(size, size); pal = PAL8
    else:
        bb = np.frombuffer(d[:size*size//2], np.uint8)
        idx = np.stack([bb >> 4, bb & 15], 1).reshape(size, size); pal = PAL4
    a = np.zeros((size, size, 4), np.uint8)
    a[..., :3] = np.array(pal, np.uint8)[idx]; a[..., 3] = mask*255
    return Image.fromarray(a, 'RGBA')

def str_list(d):
    n = u16(d, 0); p = 2; out = []
    for i in range(n):
        L = d[p]; out.append(d[p+1:p+1+L].decode('mac_roman')); p += 1+L
    return out

def pstr(d, p):
    return d[p+1:p+1+d[p]].decode('mac_roman'), p+1+d[p]

def dlog(d):
    r = rect(d, 0); procID, vis, _, goAway, _, refCon, itemsID = struct.unpack('>hBBBBih', d[8:20])
    title, _ = pstr(d, 20)
    return dict(rect=r, procID=procID, visible=bool(vis), goAway=bool(goAway), refCon=refCon, ditl=itemsID, title=title)

def wind(d):
    r = rect(d, 0); procID, vis, _, goAway, _, refCon = struct.unpack('>hBBBBi', d[8:18])
    title, _ = pstr(d, 18)
    return dict(rect=r, procID=procID, visible=bool(vis), goAway=bool(goAway), refCon=refCon, title=title)

def alrt(d):
    r = rect(d, 0); itemsID, stages = struct.unpack('>hH', d[8:12])
    return dict(rect=r, ditl=itemsID, stages=stages)

ITEM_TYPES = {0: 'userItem', 4: 'button', 5: 'checkBox', 6: 'radioButton', 7: 'resControl',
              8: 'statText', 16: 'editText', 32: 'icon', 64: 'picture', 1: 'help'}
def ditl(d):
    n = s16(d, 0) + 1; p = 2; items = []
    for i in range(n):
        p += 4
        r = rect(d, p); p += 8
        typ = d[p]; p += 1
        L = d[p]; p += 1
        payload = d[p:p+L]; p += L + (L & 1)
        t = typ & 0x7f
        it = dict(rect=r, type=ITEM_TYPES.get(t, 'type%d' % t), enabled=not (typ & 0x80))
        if t in (4, 5, 6, 8, 16): it['text'] = payload.decode('mac_roman')
        elif t in (7, 32, 64) and L >= 2: it['resID'] = s16(payload, 0)
        items.append(it)
    return items

def menu(d):
    mid, w, h, proc, _, enable = struct.unpack('>hhhhhI', d[:14])
    title, p = pstr(d, 14); items = []
    while p < len(d) and d[p] != 0:
        txt, p = pstr(d, p)
        icon, key, mark, style = d[p:p+4]; p += 4
        items.append(dict(text=txt, key=chr(key) if key else '', mark=mark, style=style))
    return dict(id=mid, title=title, items=items, enableFlags=enable)

def ctab_json(d):
    try:
        tab, _ = qd.read_ctab(d, 0); return {str(k): '#%02x%02x%02x' % v for k, v in tab.items()}
    except Exception: return d.hex()

def font_atlas(f, name, outdir):
    gl = f['glyphs']; H = f['height']
    codes = sorted(k for k in gl if k >= 0)
    W = sum(max(gl[c]['bitmap'].shape[1], 1) + 1 for c in codes)
    atlas = np.zeros((H, W, 4), np.uint8); x = 0; meta = {}
    for c in codes:
        bm = gl[c]['bitmap'].astype(bool); w = bm.shape[1]
        atlas[:, x:x+w][bm] = (255, 255, 255, 255)
        meta[c] = dict(x=x, w=w, offset=int(gl[c]['offset']), advance=int(gl[c]['width']))
        x += max(w, 1) + 1
    Image.fromarray(atlas, 'RGBA').save(os.path.join(outdir, name + '.png'))
    json.dump(dict(ascent=f['ascent'], descent=f['descent'], leading=f['leading'], height=H,
                   glyphs={str(k): v for k, v in meta.items()}),
              open(os.path.join(outdir, name + '.json'), 'w'), indent=1)

def export(src_path, prefix, out):
    ad, res = rsrc.load(src_path)
    data = {}
    os.makedirs(out, exist_ok=True)
    for sub in ('icons', 'patterns', 'cursors', 'fonts'):
        os.makedirs(os.path.join(out, sub), exist_ok=True)
    # gather ICN# masks for color icons
    masks = {}
    for (t, i), (n, d) in res.items():
        if t == 'ICN#' and len(d) >= 256: masks[(32, i)] = bits_to_mask(d[128:256], 32, 32, 4)
        if t == 'ics#' and len(d) >= 64: masks[(16, i)] = bits_to_mask(d[32:64], 16, 16, 2)
    for (t, i), (n, d) in sorted(res.items()):
        tag = '%s_%d%s' % (prefix, i, ('_' + safe(n)) if n else '')
        try:
            if t == 'cicn': cicn(d).save(os.path.join(out, 'icons', 'cicn_' + tag + '.png'))
            elif t == 'ppat':
                c, b = ppat(d)
                c.save(os.path.join(out, 'patterns', 'ppat_' + tag + '.png'))
            elif t == 'PAT ': pat_img(d[:8]).save(os.path.join(out, 'patterns', 'PAT_' + tag + '.png'))
            elif t == 'CURS':
                im, hot = curs(d); im.save(os.path.join(out, 'cursors', 'CURS_' + tag + '.png'))
                data.setdefault('CURS', {})[i] = dict(hotspot=hot, name=n)
            elif t == 'ICN#': icon_bw(d, 32).save(os.path.join(out, 'icons', 'ICN_' + tag + '.png'))
            elif t == 'ics#': icon_bw(d, 16).save(os.path.join(out, 'icons', 'ics_' + tag + '.png'))
            elif t in ('icl8', 'icl4', 'ics8', 'ics4'):
                size = 32 if t.startswith('icl') else 16; depth = int(t[3])
                m = masks.get((size, i), np.ones((size, size), bool))
                icon_color(d, size, depth, m).save(os.path.join(out, 'icons', '%s_%s.png' % (t, tag)))
            elif t in ('FONT', 'NFNT') and len(d) > 26:
                f = qd.parse_nfnt(d)
                if f: font_atlas(f, '%s_%s' % (t, tag), os.path.join(out, 'fonts'))
            elif t == 'STR#': data.setdefault('STR#', {})[i] = dict(name=n, strings=str_list(d))
            elif t == 'STR ': data.setdefault('STR', {})[i] = pstr(d, 0)[0]
            elif t == 'DLOG': data.setdefault('DLOG', {})[i] = dict(name=n, **dlog(d))
            elif t == 'WIND': data.setdefault('WIND', {})[i] = dict(name=n, **wind(d))
            elif t == 'ALRT': data.setdefault('ALRT', {})[i] = dict(name=n, **alrt(d))
            elif t == 'DITL': data.setdefault('DITL', {})[i] = ditl(d)
            elif t == 'MENU': data.setdefault('MENU', {})[i] = menu(d)
            elif t in ('dctb', 'wctb', 'actb'): data.setdefault(t, {})[i] = ctab_json(d)
            elif t == 'vers':
                sv, p = pstr(d, 6); lv, _ = pstr(d, p); data['vers'] = dict(short=sv, long=lv)
        except Exception as e:
            print('ERR', t, i, e)
    return data

if __name__ == '__main__':
    B = '/home/claude/ck/__MACOSX/castle_knowledge_26/'
    out = sys.argv[1]
    all_data = {}
    for prefix, path in [('art', B+'CK data/._CK art&stuff'), ('help', B+'CK data/._CK helpinfo'), ('app', B+'._Castle Knowledge 2.6')]:
        all_data[prefix] = export(path, prefix, out)
    os.makedirs(os.path.join(out, 'data'), exist_ok=True)
    for k, v in all_data.items():
        json.dump(v, open(os.path.join(out, 'data', k + '_resources.json'), 'w'), indent=1, ensure_ascii=False)
    print({k: {t: len(x) for t, x in v.items()} for k, v in all_data.items()})
