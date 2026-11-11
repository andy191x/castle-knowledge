import struct, sys
def appledouble_rsrc(path):
    d=open(path,'rb').read()
    magic,ver=struct.unpack('>II',d[:8]); n=struct.unpack('>H',d[24:26])[0]
    out={}
    for i in range(n):
        eid,off,ln=struct.unpack('>III',d[26+12*i:38+12*i]); out[eid]=d[off:off+ln]
    return out
def parse_rsrc(r):
    doff,moff,dlen,mlen=struct.unpack('>IIII',r[:16])
    m=r[moff:moff+mlen]
    tlo,nlo=struct.unpack('>HH',m[24:28])
    nt=struct.unpack('>H',m[tlo:tlo+2])[0]+1
    res={}
    for i in range(nt):
        t,cnt,ro=struct.unpack('>4sHH',m[tlo+2+8*i:tlo+10+8*i])
        t=t.decode('mac_roman')
        for j in range(cnt+1):
            e=tlo+ro+12*j
            rid,no,att=struct.unpack('>hhB',m[e:e+5]); ofs=int.from_bytes(m[e+5:e+8],'big')
            name=None
            if no!=-1:
                p=nlo+no; name=m[p+1:p+1+m[p]].decode('mac_roman')
            L=struct.unpack('>I',r[doff+ofs:doff+ofs+4])[0]
            res[(t,rid)]=(name,r[doff+ofs+4:doff+ofs+4+L])
    return res
def load(path):
    ad=appledouble_rsrc(path)
    return ad, (parse_rsrc(ad[2]) if 2 in ad and len(ad[2])>0 else {})
if __name__=='__main__':
    ad,res=load(sys.argv[1])
    if 9 in ad: print('finderinfo',ad[9][:8])
    from collections import Counter
    c=Counter(t for t,_ in res); print(dict(c))
    if len(sys.argv)>2:
        for (t,i),(n,dd) in sorted(res.items()):
            print(t,i,repr(n),len(dd))
