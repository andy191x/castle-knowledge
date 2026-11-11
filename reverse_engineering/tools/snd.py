import struct, subprocess, os, tempfile, wave
def parse_snd(d):
    fmt=struct.unpack('>H',d[:2])[0]; p=2
    if fmt==1:
        ntypes=struct.unpack('>H',d[p:p+2])[0]; p+=2+6*ntypes
    elif fmt==2: p+=2
    ncmd=struct.unpack('>H',d[p:p+2])[0]; p+=2
    hdr=None
    for i in range(ncmd):
        cmd,p1,p2=struct.unpack('>HhI',d[p:p+8]); p+=8
        if cmd&0x7fff in (0x51,0x50): hdr=p2
    h=hdr
    sptr,nch_or_len,rate,ls,le,enc,base=struct.unpack('>IIIIIBB',d[h:h+22])
    rate=rate/65536.0
    if enc==0:   # standard: nch_or_len = byte length, 8-bit unsigned mono
        return dict(kind='pcm8',rate=rate,ch=1,data=d[h+22:h+22+nch_or_len],loop=(ls,le))
    if enc==0xFE:  # compressed
        nframes=struct.unpack('>I',d[h+22:h+26])[0]
        aiffrate=d[h+26:h+36]
        fmt4=d[h+40:h+44]
        cid=struct.unpack('>h',d[h+56:h+58])[0]
        ssize=struct.unpack('>H',d[h+62:h+64])[0]
        nch=nch_or_len
        tag={3:b'MAC3',4:b'MAC6'}.get(cid,fmt4)
        bpf={b'MAC3':2,b'MAC6':1}[tag]*nch
        return dict(kind=tag.decode(),rate=rate,ch=nch,frames=nframes,aiffrate=aiffrate,data=d[h+64:h+64+nframes*bpf],loop=(ls,le))
    if enc==0xFF:  # extended
        nch=nch_or_len; nframes=struct.unpack('>I',d[h+22:h+26])[0]
        ssize=struct.unpack('>H',d[h+48:h+50])[0]
        return dict(kind='pcm%d'%ssize,rate=rate,ch=nch,data=d[h+64:h+64+nframes*nch*ssize//8],loop=(ls,le))
    raise ValueError('enc %x'%enc)
def ext80(r):
    import math
    e=int(math.floor(math.log2(r))); m=int(r/2**e*2**63)
    return struct.pack('>HQ',16383+e,m)
def to_wav(d,out):
    s=parse_snd(d)
    if s['kind']=='pcm8':
        with wave.open(out,'wb') as w:
            w.setnchannels(1); w.setsampwidth(1); w.setframerate(int(round(s['rate']))); w.writeframes(s['data'])
        return s
    if s['kind']=='pcm16':
        import array; a=array.array('h',s['data']); a.byteswap()
        with wave.open(out,'wb') as w:
            w.setnchannels(s['ch']); w.setsampwidth(2); w.setframerate(int(round(s['rate']))); w.writeframes(a.tobytes())
        return s
    tag=s['kind'].encode(); nf=s['frames']; spf=6 if tag==b'MAC3' else 6  # samples per packet
    # AIFF-C: numSampleFrames = number of packets*samples? ffmpeg uses COMM frames*block_align; MACE: frames count = packets
    comm=struct.pack('>hIh',s['ch'],nf,8)+ext80(s['rate'])+tag+b'\x00'
    comm+= b'\x00' if len(comm)%2 else b''
    ssnd=struct.pack('>II',0,0)+s['data']
    body=b'AIFC'+b'FVER'+struct.pack('>II',4,0xA2805140)+b'COMM'+struct.pack('>I',len(comm))+comm+b'SSND'+struct.pack('>I',len(ssnd))+ssnd
    aif=tempfile.mktemp(suffix='.aifc'); open(aif,'wb').write(b'FORM'+struct.pack('>I',len(body))+body)
    subprocess.run(['ffmpeg','-y','-loglevel','error','-i',aif,'-ar',str(int(round(s['rate']))),'-c:a','pcm_s16le',out],check=True)
    os.remove(aif); return s
