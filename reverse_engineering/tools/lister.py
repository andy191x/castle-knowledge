"""Produce annotated 68k listings of Castle Knowledge CODE segments."""
import sys, struct, os, json, re
sys.path.insert(0, '/home/claude/work')
import rsrc, m68k, traps

B = '/home/claude/ck/__MACOSX/castle_knowledge_26/'
ad, RES = rsrc.load(B + '._Castle Knowledge 2.6')
STRS = RES[('STRS', 0)][1]
DATA = RES[('DATA', 0)][1]
C0 = RES[('CODE', 0)][1]
above, below, jtlen, jtoff = struct.unpack('>IIII', C0[:16])
NJT = jtlen // 8

# --- jump table: index -> (seg, offset) ---
JT = {}
for s in range(1, 8):
    h = RES[('CODE', s)][1][:4]
    first, cnt = struct.unpack('>HH', h)
    first &= 0x7fff; cnt &= 0x7fff
    for k in range(cnt):
        e = C0[16 + 8*(first+k): 24 + 8*(first+k)]
        off = struct.unpack('>H', e[:2])[0]
        JT[first+k] = (s, off)

NAMES = {}       # (seg, off) -> name
if os.path.exists('/home/claude/work/names.json'):
    for k, v in json.load(open('/home/claude/work/names.json')).items():
        s, o = k.split(':'); NAMES[(int(s), int(o, 16))] = v
GNAMES = {}
if os.path.exists('/home/claude/work/globals.json'):
    GNAMES = {int(k): v for k, v in json.load(open('/home/claude/work/globals.json')).items()}

def fname(seg, off):
    return NAMES.get((seg, off), 'f%d_%04x' % (seg, off))

def jt_target(d):
    i = (d - jtoff - 2)
    if i % 8 == 0 and 0 <= i // 8 < NJT: return JT.get(i // 8)
    return None

def gname(v):
    o = v - 0x100000000 if v >= 0x80000000 else v
    if o in GNAMES: return GNAMES[o]
    return 'g_%04x' % (-o) if o < 0 else None

def strs_at(off):
    if 0 <= off < len(STRS):
        L = STRS[off]
        s = STRS[off+1:off+1+L]
        if L == 0: return ""
        if all(9 <= c < 127 or c > 127 for c in s):
            return s.decode('mac_roman')
        # C string?
        e = STRS.find(b'\0', off)
        if e > off: return STRS[off:e].decode('mac_roman', 'replace')
    return None

def crel_strs(seg):
    cr = RES.get(('CREL', seg))
    out = set()
    if not cr: return out
    cr = cr[1]
    for e in struct.unpack('>%dH' % (len(cr)//2), cr):
        if e & 1: out.add((e & ~1) - 4)   # code offset of relocated long (STRS-relative)
    return out

def list_segment(seg):
    code = RES[('CODE', seg)][1][4:]
    strs_locs = crel_strs(seg)
    entries = {off: i for i, (s, off) in JT.items() if s == seg}

    def sym(kind, v):
        if kind == 'a5':
            t = jt_target(v)
            if t: return fname(*t)
            return None
        if kind == 'abs':
            if v >= 0xffff0000: return gname(v)
            return None
        if kind == 'pc':
            return None
        return None

    D = m68k.Dis(code, 0, sym)
    # pass 1: decode linearly and collect branch targets / function starts
    insns = []; p = 0
    while p < len(code):
        i = D.one(p); insns.append(i); p += i.size
    targets = set(i.target for i in insns if i.target is not None and i.kind in ('cbranch', 'jmp'))
    funcs = set(entries) | set(i.addr for i in insns if i.kind == 'link')
    funcs |= set(i.target for i in insns if i.kind == 'call' and i.target is not None)
    lines = []
    xrefs = []
    for i in insns:
        if i.addr in funcs:
            nm = fname(seg, i.addr)
            jt = entries.get(i.addr)
            lines.append('')
            lines.append(';' + '-'*70)
            lines.append('; %s%s' % (nm, ('   [jump table #%d]' % jt) if jt is not None else ''))
            lines.append(';' + '-'*70)
            lines.append('%s:' % nm)
        elif i.addr in targets:
            lines.append('L%04x:' % i.addr)
        txt = str(i)
        cmt = []
        if i.kind == 'trap':
            n = traps.name(i.imm)
            if n: txt = '_%-7s' % n; cmt.append('$%04x' % i.imm)
        if i.kind == 'call' and i.target is not None and i.mn.startswith('bsr'):
            txt = '%-8s %s' % (i.mn, fname(seg, i.target))
        if i.kind == 'call' and 'jsr' in i.mn:
            for k, v in i.refs:
                if k == 'a5':
                    t = jt_target(v)
                    if t: xrefs.append((fname(*t), fname(seg, max(f for f in funcs if f <= i.addr))))
                if k == 'pc':
                    txt = 'jsr      %s' % fname(seg, v)
        # STRS literal?
        for q in range(i.addr+2, i.addr+i.size-3, 2):
            if q in strs_locs:
                off = struct.unpack('>I', code[q:q+4])[0]
                s = strs_at(off)
                txt = txt.replace('#$%x' % off, 'STR_%04x' % off).replace('#%d' % off, 'STR_%04x' % off)
                cmt.append('"%s"' % (s[:60] if s else '?'))
        hexb = code[i.addr:i.addr+i.size].hex()
        lines.append('  %05x  %-20s  %-44s%s' % (i.addr, hexb[:20], txt, ('; ' + ' '.join(cmt)) if cmt else ''))
    return lines, xrefs, funcs

if __name__ == '__main__':
    out = sys.argv[1]; os.makedirs(out, exist_ok=True)
    allx = []
    for s in range(1, 8):
        lines, xr, funcs = list_segment(s)
        allx += xr
        hdr = ['; Castle Knowledge 2.6 - CODE segment %d (%d bytes)' % (s, len(RES[('CODE', s)][1])),
               '; Disassembled & annotated. Globals g_XXXX = A5-XXXX; STR_XXXX = STRS literal offset.', '']
        open(os.path.join(out, 'CODE_%d.asm' % s), 'w').write('\n'.join(hdr + lines) + '\n')
        print('seg', s, 'functions', len(funcs), 'lines', len(lines))
    json.dump(allx, open(os.path.join(out, 'xrefs.json'), 'w'))
