import sys,os,glob
from PIL import Image,ImageDraw
files=sorted(glob.glob(sys.argv[1]))[int(sys.argv[3]):int(sys.argv[4])]
cell=int(sys.argv[5]) if len(sys.argv)>5 else 150; cols=6
rows=(len(files)+cols-1)//cols
S=Image.new('RGB',(cols*cell,rows*(cell+12)),(200,200,210)); d=ImageDraw.Draw(S)
for k,f in enumerate(files):
    im=Image.open(f).convert('RGBA'); im.thumbnail((cell-4,cell-4),Image.NEAREST)
    x,y=(k%cols)*cell,(k//cols)*(cell+12)
    # checker bg for transparency
    bg=Image.new('RGBA',im.size,(255,0,255,255)); bg.alpha_composite(im)
    S.paste(bg.convert('RGB'),(x+2,y+2)); d.text((x+2,y+cell),os.path.basename(f)[:24],fill='black')
S.save(sys.argv[2])
