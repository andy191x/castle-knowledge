import sys, os, re, json
sys.path.insert(0, '/home/claude/work')
import rsrc, qd, pict
from PIL import Image
B='/home/claude/ck/__MACOSX/castle_knowledge_26/'
SRC={'art':B+'CK data/._CK art&stuff','help':B+'CK data/._CK helpinfo','app':B+'._Castle Knowledge 2.6'}
# load bitmap fonts: FONT id = family*128+size ; NFNT via FOND tables (approximate: use FONT ids)
for k,path in SRC.items():
    ad,res=rsrc.load(path)
    for (t,i),(n,d) in res.items():
        if t=='FONT' and len(d)>26:
            f=qd.parse_nfnt(d)
            if f: pict.BITMAP_FONTS[(i>>7, i&127)]=f
            print('font',k,i,'family',i>>7,'size',i&127)
        if t=='NFNT' and i==28647:
            pict.BITMAP_FONTS[(22,18)]=qd.parse_nfnt(d)
def safe(n): return re.sub(r'[^A-Za-z0-9]+','_',n).strip('_')
if __name__=='__main__':
    out=sys.argv[1]; os.makedirs(out,exist_ok=True); warn={}
    for k,path in SRC.items():
        ad,res=rsrc.load(path)
        for (t,i),(n,d) in sorted(res.items()):
            if t!='PICT': continue
            img,r=pict.render(d)
            fn='%s_%d%s.png'%(k,i,('_'+safe(n)) if n else '')
            img.save(os.path.join(out,fn))
            if r.warnings: warn[fn]=r.warnings
    print(json.dumps(warn,indent=1))
