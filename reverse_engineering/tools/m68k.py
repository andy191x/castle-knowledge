"""Compact 68000 (+ common 68020) disassembler for Mac CODE resources."""
import struct

SZ = {0: '.b', 1: '.w', 2: '.l'}
CC = ['t', 'f', 'hi', 'ls', 'cc', 'cs', 'ne', 'eq', 'vc', 'vs', 'pl', 'mi', 'ge', 'lt', 'gt', 'le']

class Insn:
    __slots__ = ('addr', 'size', 'mn', 'ops', 'target', 'kind', 'refs', 'imm')
    def __init__(s, addr): s.addr = addr; s.size = 2; s.mn = '?'; s.ops = ''; s.target = None; s.kind = None; s.refs = []; s.imm = None
    def __str__(s): return '%-8s %s' % (s.mn, s.ops)

class Dis:
    def __init__(self, code, base=0, symfn=None):
        self.c = code; self.base = base
        self.sym = symfn or (lambda kind, v: None)

    def w(self, p): return struct.unpack('>H', self.c[p:p+2])[0]
    def sw(self, p): return struct.unpack('>h', self.c[p:p+2])[0]
    def l(self, p): return struct.unpack('>I', self.c[p:p+4])[0]
    def sl(self, p): return struct.unpack('>i', self.c[p:p+4])[0]

    def ea(self, mode, reg, size, ins):
        """Decode effective address; consumes extension words from self.p."""
        p = self.p
        if mode == 0: return 'd%d' % reg
        if mode == 1: return 'a%d' % reg
        if mode == 2: return '(a%d)' % reg
        if mode == 3: return '(a%d)+' % reg
        if mode == 4: return '-(a%d)' % reg
        if mode == 5:
            d = self.sw(p); self.p += 2
            if reg == 5:
                ins.refs.append(('a5', d))
                n = self.sym('a5', d)
                if n: return n
            if reg == 6:
                return '%s(a6)' % (('-$%x' % -d) if d < 0 else ('$%x' % d))
            return '%s(a%d)' % (hexs(d), reg)
        if mode == 6: return self.idx('a%d' % reg, ins)
        if mode == 7:
            if reg == 0:
                v = self.sw(p); self.p += 2; return '($%x).w' % (v & 0xffff)
            if reg == 1:
                v = self.l(p); self.p += 4
                ins.refs.append(('abs', v))
                n = self.sym('abs', v)
                return n if n else '($%08x).l' % v
            if reg == 2:
                d = self.sw(p); tgt = self.addr_of(p) + d; self.p += 2
                ins.refs.append(('pc', tgt)); ins.target = tgt if ins.target is None else ins.target
                n = self.sym('pc', tgt)
                return n if n else 'L%04x(pc)' % tgt
            if reg == 3: return self.idx('pc', ins)
            if reg == 4:
                if size == 0: v = self.w(p) & 0xff; self.p += 2
                elif size == 1: v = self.w(p); self.p += 2
                else: v = self.l(p); self.p += 4
                ins.imm = v
                return '#%s' % hexu(v)
        return '<ea?>'

    def idx(self, base, ins):
        p = self.p; ext = self.w(p); self.p += 2
        r = 'ad'[0 if not ext & 0x8000 else 0]
        rn = ('a' if ext & 0x8000 else 'd') + str((ext >> 12) & 7) + ('.l' if ext & 0x800 else '.w')
        scale = (ext >> 9) & 3
        if scale: rn += '*%d' % (1 << scale)
        if ext & 0x100:  # full format (68020)
            bs = (ext >> 4) & 3; disp = 0
            if bs == 2: disp = self.sw(self.p); self.p += 2
            elif bs == 3: disp = self.sl(self.p); self.p += 4
            iis = ext & 7
            od = 0
            if iis in (2, 6): od = self.sw(self.p); self.p += 2
            elif iis in (3, 7): od = self.sl(self.p); self.p += 4
            bsup = 'z' if ext & 0x80 else ''
            isup = ext & 0x40
            s = '(%s,%s%s%s)' % (hexs(disp), base if not bsup else 'z' + base, '' if isup else ',', '' if isup else rn)
            if iis: s = '([%s,%s],%s,%s)' % (hexs(disp), base, rn, hexs(od))
            return s
        d = ext & 0xff
        if d & 0x80: d -= 256
        if base == 'pc':
            tgt = self.addr_of(p) + d; ins.refs.append(('pcidx', tgt))
            return 'L%04x(pc,%s)' % (tgt, rn)
        return '%s(%s,%s)' % (hexs(d), base, rn)

    def addr_of(self, p): return p + self.base

    def one(self, p):
        """Disassemble one instruction at byte offset p."""
        self.p = p + 2
        ins = Insn(p + self.base)
        try:
            op = self.w(p)
            self.decode(op, ins)
        except (struct.error, IndexError):
            ins.mn = 'dc.w'; ins.ops = '?'; self.p = p + 2
        ins.size = self.p - p
        return ins

    def eas(self, op, size, ins):
        return self.ea((op >> 3) & 7, op & 7, size, ins)

    def decode(self, op, ins):
        hi = op >> 12
        getattr(self, 'g%x' % hi)(op, ins)

    # ---- group 0: bit ops / immediate ----
    def g0(self, op, ins):
        if op & 0x100:
            if (op >> 3) & 7 == 1:  # movep
                d = self.sw(self.p); self.p += 2
                sz = '.l' if op & 0x40 else '.w'
                if op & 0x80: ins.mn, ins.ops = 'movep' + sz, 'd%d,%s(a%d)' % (op >> 9 & 7, hexs(d), op & 7)
                else: ins.mn, ins.ops = 'movep' + sz, '%s(a%d),d%d' % (hexs(d), op & 7, op >> 9 & 7)
                return
            t = ['btst', 'bchg', 'bclr', 'bset'][(op >> 6) & 3]
            ins.mn = t; ins.ops = 'd%d,%s' % ((op >> 9) & 7, self.eas(op, 0, ins)); return
        sel = (op >> 9) & 7
        if sel == 4:
            t = ['btst', 'bchg', 'bclr', 'bset'][(op >> 6) & 3]
            b = self.w(self.p) & 0xff; self.p += 2
            ins.mn = t; ins.ops = '#%d,%s' % (b, self.eas(op, 0, ins)); return
        names = {0: 'ori', 1: 'andi', 2: 'subi', 3: 'addi', 5: 'eori', 6: 'cmpi'}
        sz = (op >> 6) & 3
        if sz == 3:
            if sel in (5, 6) and op & 0x0800:  # cas (020)
                ins.mn = 'cas'; ext = self.w(self.p); self.p += 2; ins.ops = self.eas(op, 1, ins); return
            if sel in (0, 1, 2) and (op & 0x0800) == 0:  # chk2/cmp2 (020)
                ext = self.w(self.p); self.p += 2
                ins.mn = ('chk2' if ext & 0x800 else 'cmp2') + SZ[sel]
                ins.ops = '%s,%s%d' % (self.eas(op, sel, ins), 'a' if ext & 0x8000 else 'd', (ext >> 12) & 7); return
            ins.mn = 'dc.w'; ins.ops = '$%04x' % op; return
        if sel == 7:
            ins.mn = 'moves'; self.p += 2; ins.ops = self.eas(op, sz, ins); return
        mn = names.get(sel, '?')
        if (op & 0x3f) == 0x3c:
            v = self.w(self.p); self.p += 2
            ins.mn = mn; ins.ops = '#%s,%s' % (hexu(v), 'ccr' if sz == 0 else 'sr'); return
        if sz == 0: v = self.w(self.p) & 0xff; self.p += 2
        elif sz == 1: v = self.w(self.p); self.p += 2
        else: v = self.l(self.p); self.p += 4
        ins.imm = v
        ins.mn = mn + SZ[sz]; ins.ops = '#%s,%s' % (hexu(v), self.eas(op, sz, ins))

    # ---- move ----
    def gmove(self, op, ins, size):
        src = self.eas(op, size, ins)
        dmode = (op >> 6) & 7; dreg = (op >> 9) & 7
        dst = self.ea(dmode, dreg, size, ins)
        ins.mn = ('movea' if dmode == 1 else 'move') + SZ[size]; ins.ops = '%s,%s' % (src, dst)
    def g1(self, op, ins): self.gmove(op, ins, 0)
    def g2(self, op, ins): self.gmove(op, ins, 2)
    def g3(self, op, ins): self.gmove(op, ins, 1)

    # ---- group 4: misc ----
    def g4(self, op, ins):
        if op == 0x4e71: ins.mn = 'nop'; return
        if op == 0x4e75: ins.mn = 'rts'; ins.kind = 'ret'; return
        if op == 0x4e73: ins.mn = 'rte'; ins.kind = 'ret'; return
        if op == 0x4e77: ins.mn = 'rtr'; ins.kind = 'ret'; return
        if op == 0x4e76: ins.mn = 'trapv'; return
        if op == 0x4e70: ins.mn = 'reset'; return
        if op == 0x4e72: v = self.w(self.p); self.p += 2; ins.mn = 'stop'; ins.ops = '#$%x' % v; return
        if op == 0x4e74: v = self.sw(self.p); self.p += 2; ins.mn = 'rtd'; ins.ops = '#%d' % v; ins.kind = 'ret'; return
        if op == 0x4afc: ins.mn = 'illegal'; return
        if (op & 0xfff0) == 0x4e40: ins.mn = 'trap'; ins.ops = '#%d' % (op & 15); return
        if (op & 0xfff8) == 0x4e50:
            d = self.sw(self.p); self.p += 2; ins.mn = 'link'; ins.ops = 'a%d,#%d' % (op & 7, d); ins.kind = 'link'; return
        if (op & 0xfff8) == 0x4808:
            d = self.sl(self.p); self.p += 4; ins.mn = 'link.l'; ins.ops = 'a%d,#%d' % (op & 7, d); ins.kind = 'link'; return
        if (op & 0xfff8) == 0x4e58: ins.mn = 'unlk'; ins.ops = 'a%d' % (op & 7); return
        if (op & 0xfff0) == 0x4e60:
            ins.mn = 'move.l'; ins.ops = ('a%d,usp' % (op & 7)) if not op & 8 else ('usp,a%d' % (op & 7)); return
        if (op & 0xfffe) == 0x4e7a: self.p += 2; ins.mn = 'movec'; return
        if (op & 0xffc0) == 0x4e80:
            ins.mn = 'jsr'; ins.ops = self.eas(op, 2, ins); ins.kind = 'call'; return
        if (op & 0xffc0) == 0x4ec0:
            ins.mn = 'jmp'; ins.ops = self.eas(op, 2, ins); ins.kind = 'jmp'; return
        if (op & 0xfff8) == 0x4840: ins.mn = 'swap'; ins.ops = 'd%d' % (op & 7); return
        if (op & 0xfff8) == 0x4848: ins.mn = 'bkpt'; return
        if (op & 0xffb8) == 0x4880:
            ins.mn = 'ext' + ('.l' if op & 0x40 else '.w'); ins.ops = 'd%d' % (op & 7); return
        if (op & 0xfff8) == 0x49c0: ins.mn = 'extb.l'; ins.ops = 'd%d' % (op & 7); return
        if (op & 0xfb80) == 0x4880:
            mask = self.w(self.p); self.p += 2
            sz = 2 if op & 0x40 else 1
            predec = ((op >> 3) & 7) == 4
            e = self.eas(op, sz, ins)
            rl = reglist(mask, predec)
            ins.mn = 'movem' + SZ[sz]
            ins.ops = ('%s,%s' % (rl, e)) if not (op & 0x400) else ('%s,%s' % (e, rl)); return
        if (op & 0xffc0) == 0x4840: ins.mn = 'pea'; ins.ops = self.eas(op, 2, ins); return
        if (op & 0xffc0) == 0x4800: ins.mn = 'nbcd'; ins.ops = self.eas(op, 0, ins); return
        if (op & 0xffc0) == 0x4ac0: ins.mn = 'tas'; ins.ops = self.eas(op, 0, ins); return
        if (op & 0xff80) == 0x4c00:  # mul/div long (020)
            ext = self.w(self.p); self.p += 2
            e = self.eas(op, 2, ins)
            dl = (ext >> 12) & 7; dh = ext & 7; sgn = 's' if ext & 0x800 else 'u'
            base = 'div' if op & 0x40 else 'mul'
            if base == 'div':
                ins.mn = 'div%s.l' % sgn + ('' if ext & 0x400 or dh != dl else '')
                ins.ops = '%s,d%d:d%d' % (e, dh, dl) if (ext & 0x400 or dh != dl) else '%s,d%d' % (e, dl)
            else:
                ins.mn = 'mul%s.l' % sgn; ins.ops = '%s,d%d' % (e, dl) if not ext & 0x400 else '%s,d%d:d%d' % (e, dh, dl)
            return
        if (op & 0xf1c0) == 0x41c0:
            ins.mn = 'lea'; ins.ops = '%s,a%d' % (self.eas(op, 2, ins), (op >> 9) & 7); return
        if (op & 0xf140) == 0x4100:
            ins.mn = 'chk' + ('.w' if op & 0x80 else '.l'); ins.ops = '%s,d%d' % (self.eas(op, 1, ins), (op >> 9) & 7); return
        if (op & 0xffc0) == 0x40c0: ins.mn = 'move'; ins.ops = 'sr,%s' % self.eas(op, 1, ins); return
        if (op & 0xffc0) == 0x42c0: ins.mn = 'move'; ins.ops = 'ccr,%s' % self.eas(op, 1, ins); return
        if (op & 0xffc0) == 0x44c0: ins.mn = 'move'; ins.ops = '%s,ccr' % self.eas(op, 1, ins); return
        if (op & 0xffc0) == 0x46c0: ins.mn = 'move'; ins.ops = '%s,sr' % self.eas(op, 1, ins); return
        sub = (op >> 8) & 0xf; sz = (op >> 6) & 3
        nm = {0: 'negx', 2: 'clr', 4: 'neg', 6: 'not', 0xa: 'tst'}.get(sub)
        if nm and sz < 3:
            ins.mn = nm + SZ[sz]; ins.ops = self.eas(op, sz, ins); return
        ins.mn = 'dc.w'; ins.ops = '$%04x' % op

    # ---- addq/subq/scc/dbcc ----
    def g5(self, op, ins):
        sz = (op >> 6) & 3
        if sz == 3:
            cc = CC[(op >> 8) & 15]
            if (op >> 3) & 7 == 1:
                d = self.sw(self.p); tgt = self.addr_of(self.p) + d; self.p += 2
                ins.mn = 'db' + cc; ins.ops = 'd%d,L%04x' % (op & 7, tgt); ins.target = tgt; ins.kind = 'cbranch'; return
            if (op & 0x3f) in (0x3a, 0x3b, 0x3c):
                if (op & 7) == 2: self.p += 2
                elif (op & 7) == 3: self.p += 4
                ins.mn = 'trap' + cc; return
            ins.mn = 's' + cc; ins.ops = self.eas(op, 0, ins); return
        q = (op >> 9) & 7 or 8
        ins.mn = ('subq' if op & 0x100 else 'addq') + SZ[sz]; ins.ops = '#%d,%s' % (q, self.eas(op, sz, ins))

    def g6(self, op, ins):
        cond = (op >> 8) & 15; d = op & 0xff
        base = self.p
        if d == 0: d = self.sw(self.p); self.p += 2; sfx = '.w'
        elif d == 0xff: d = self.sl(self.p); self.p += 4; sfx = '.l'
        else:
            if d & 0x80: d -= 256
            sfx = '.s'
        tgt = self.addr_of(base) + d
        ins.target = tgt
        if cond == 0: ins.mn = 'bra' + sfx; ins.kind = 'jmp'
        elif cond == 1: ins.mn = 'bsr' + sfx; ins.kind = 'call'
        else: ins.mn = 'b' + CC[cond] + sfx; ins.kind = 'cbranch'
        n = self.sym('pc', tgt)
        ins.ops = n if n else 'L%04x' % tgt

    def g7(self, op, ins):
        v = op & 0xff
        if v & 0x80: v -= 256
        ins.mn = 'moveq'; ins.ops = '#%d,d%d' % (v, (op >> 9) & 7); ins.imm = v

    def g8(self, op, ins): self.arith(op, ins, 'or', 'divu.w', 'divs.w', 'sbcd')
    def gc(self, op, ins):
        if (op & 0xf130) == 0xc100 and (op & 0xc0) != 0xc0:
            m = (op >> 3) & 0x1f
            if (op & 0x1f8) in (0x140, 0x148, 0x188):
                ins.mn = 'exg'
                a = op >> 9 & 7; b = op & 7
                k = (op >> 3) & 0x1f
                ins.ops = {0x08: 'd%d,d%d', 0x09: 'a%d,a%d', 0x11: 'd%d,a%d'}.get(k, 'd%d,d%d') % (a, b); return
        self.arith(op, ins, 'and', 'mulu.w', 'muls.w', 'abcd')

    def arith(self, op, ins, nm, unsg, sgn, bcd):
        reg = (op >> 9) & 7; om = (op >> 6) & 7
        if om == 3: ins.mn = unsg; ins.ops = '%s,d%d' % (self.eas(op, 1, ins), reg); return
        if om == 7: ins.mn = sgn; ins.ops = '%s,d%d' % (self.eas(op, 1, ins), reg); return
        if om == 4 and (op >> 3) & 7 in (0, 1):
            ins.mn = bcd; ins.ops = ('d%d,d%d' if not op & 8 else '-(a%d),-(a%d)') % (op & 7, reg); return
        if nm == 'or' and om in (5, 6) and (op >> 3) & 7 in (0, 1):
            ins.mn = 'pack' if om == 5 else 'unpk'; self.p += 2; return
        sz = om & 3
        e = self.eas(op, sz, ins)
        ins.mn = nm + SZ[sz]
        ins.ops = ('d%d,%s' % (reg, e)) if om & 4 else ('%s,d%d' % (e, reg))

    def g9(self, op, ins): self.addsub(op, ins, 'sub')
    def gd(self, op, ins): self.addsub(op, ins, 'add')
    def addsub(self, op, ins, nm):
        reg = (op >> 9) & 7; om = (op >> 6) & 7
        if om in (3, 7):
            sz = 1 if om == 3 else 2
            ins.mn = nm + 'a' + SZ[sz]; ins.ops = '%s,a%d' % (self.eas(op, sz, ins), reg); return
        sz = om & 3
        if om & 4 and (op >> 3) & 7 in (0, 1):
            ins.mn = nm + 'x' + SZ[sz]; ins.ops = ('d%d,d%d' if not op & 8 else '-(a%d),-(a%d)') % (op & 7, reg); return
        e = self.eas(op, sz, ins)
        ins.mn = nm + SZ[sz]
        ins.ops = ('d%d,%s' % (reg, e)) if om & 4 else ('%s,d%d' % (e, reg))

    def ga(self, op, ins):
        ins.mn = '_trap'; ins.ops = '$%04x' % op; ins.kind = 'trap'; ins.imm = op
        if op & 0x0800 and op & 0x0400:  # autopop toolbox
            ins.kind = 'trap_ret' if False else 'trap'

    def gb(self, op, ins):
        reg = (op >> 9) & 7; om = (op >> 6) & 7
        if om in (3, 7):
            sz = 1 if om == 3 else 2
            ins.mn = 'cmpa' + SZ[sz]; ins.ops = '%s,a%d' % (self.eas(op, sz, ins), reg); return
        sz = om & 3
        if om & 4:
            if (op >> 3) & 7 == 1:
                ins.mn = 'cmpm' + SZ[sz]; ins.ops = '(a%d)+,(a%d)+' % (op & 7, reg); return
            ins.mn = 'eor' + SZ[sz]; ins.ops = 'd%d,%s' % (reg, self.eas(op, sz, ins)); return
        ins.mn = 'cmp' + SZ[sz]; ins.ops = '%s,d%d' % (self.eas(op, sz, ins), reg)

    def ge(self, op, ins):
        sz = (op >> 6) & 3
        names = ['as', 'ls', 'rox', 'ro']
        if sz == 3:
            if op & 0x800:  # bitfield (020)
                ext = self.w(self.p); self.p += 2
                bf = ['bftst', 'bfextu', 'bfchg', 'bfexts', 'bfclr', 'bfffo', 'bfset', 'bfins'][(op >> 8) & 7]
                off = ('d%d' % ((ext >> 6) & 7)) if ext & 0x800 else str((ext >> 6) & 31)
                wid = ('d%d' % (ext & 7)) if ext & 0x20 else str((ext & 31) or 32)
                e = self.eas(op, 2, ins)
                ins.mn = bf
                rr = 'd%d' % ((ext >> 12) & 7)
                if bf in ('bfextu', 'bfexts', 'bfffo'): ins.ops = '%s{%s:%s},%s' % (e, off, wid, rr)
                elif bf == 'bfins': ins.ops = '%s,%s{%s:%s}' % (rr, e, off, wid)
                else: ins.ops = '%s{%s:%s}' % (e, off, wid)
                return
            t = (op >> 9) & 3
            ins.mn = names[t] + ('l' if op & 0x100 else 'r') + '.w'; ins.ops = self.eas(op, 1, ins); return
        t = (op >> 3) & 3
        cnt = (op >> 9) & 7
        ins.mn = names[t] + ('l' if op & 0x100 else 'r') + SZ[sz]
        if op & 0x20: ins.ops = 'd%d,d%d' % (cnt, op & 7)
        else: ins.ops = '#%d,d%d' % (cnt or 8, op & 7)

    def gf(self, op, ins):
        # FPU (68881) minimal: consume extension word, decode common forms coarsely
        cp = (op >> 9) & 7; typ = (op >> 6) & 7
        if cp != 1:
            ins.mn = 'dc.w'; ins.ops = '$%04x' % op; return
        if typ == 0:
            ext = self.w(self.p); self.p += 2
            opm = ext & 0x7f
            rm = ext & 0x4000
            fmt = (ext >> 10) & 7
            names = {0: 'fmove', 1: 'fint', 2: 'fsinh', 3: 'fintrz', 4: 'fsqrt', 0x18: 'fabs', 0x1a: 'fneg',
                     0x20: 'fdiv', 0x22: 'fadd', 0x23: 'fmul', 0x28: 'fsub', 0x38: 'fcmp', 0x3a: 'ftst', 0x24: 'fsgldiv'}
            if (ext >> 13) == 3:  # fmove fp -> ea
                fsz = {0: 2, 4: 1, 6: 0}.get(fmt, 2)
                ins.mn = 'fmove' + '.lsxpwdbp'[fmt:fmt+1]
                if fmt in (2, 3, 5):
                    sz2 = {2: 12, 3: 12, 5: 8}[fmt]
                ins.ops = 'fp%d,%s' % ((ext >> 7) & 7, self.ea((op >> 3) & 7, op & 7, fsz, ins)); return
            if (ext >> 13) in (4, 5):  # fmove/fmovem control regs
                ins.mn = 'fmovem.l'; ins.ops = self.eas(op, 2, ins); return
            if (ext >> 13) in (6, 7):
                ins.mn = 'fmovem.x'; ins.ops = self.eas(op, 2, ins); return
            nm = names.get(opm, 'fop%02x' % opm)
            if rm:
                fsz = {0: 2, 1: 2, 4: 1, 6: 0}.get(fmt)
                if fsz is None:  # x / p / d immediates
                    if (op & 0x3f) == 0x3c: self.p += {2: 12, 3: 12, 5: 8}.get(fmt, 4); e = '#<fp>'
                    else: e = self.eas(op, 2, ins)
                else: e = self.eas(op, fsz, ins)
                ins.mn = nm + '.' + 'lsxpwdbp'[fmt]; ins.ops = '%s,fp%d' % (e, (ext >> 7) & 7)
            else:
                ins.mn = nm + '.x'; ins.ops = 'fp%d,fp%d' % ((ext >> 10) & 7, (ext >> 7) & 7)
            return
        if typ in (2, 3):
            d = self.sw(self.p) if typ == 2 else self.sl(self.p)
            base = self.p; self.p += 2 if typ == 2 else 4
            ins.mn = 'fb%02x' % (op & 0x3f); ins.target = self.addr_of(base) + d; ins.kind = 'cbranch'
            ins.ops = 'L%04x' % ins.target; return
        if typ == 1:
            self.p += 2; ins.mn = 'fscc'; ins.ops = self.eas(op, 0, ins); return
        if typ == 4: ins.mn = 'fsave'; ins.ops = self.eas(op, 2, ins); return
        if typ == 5: ins.mn = 'frestore'; ins.ops = self.eas(op, 2, ins); return
        ins.mn = 'dc.w'; ins.ops = '$%04x' % op

def hexs(v): return ('-$%x' % -v) if v < 0 else ('$%x' % v)
def hexu(v): return ('$%x' % v) if v > 9 else str(v)

def reglist(mask, predec):
    if predec: mask = int('{:016b}'.format(mask)[::-1], 2)
    regs = [('d%d' % i) for i in range(8) if mask & (1 << i)] + [('a%d' % i) for i in range(8) if mask & (1 << (i+8))]
    return '/'.join(regs) if regs else '0'
