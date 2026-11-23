import csv, glob, collections
MAP={"a":"9fd7cf41","b":"a655665e","c":"19add25d","d":"06fff6de","e":"7e532de2","f":"9e119495"}
def s16(v): return v-65536 if v>=32768 else v
def rs(p):
    r=(p+(1<<14))>>15
    return 32767 if r>32767 else (-32768 if r<-32768 else r)
def model(x,s,c): return rs(x*c), rs(-(x*s))
tot=0; totbad=0; ext=set()
for tag,u in MAP.items():
    p=glob.glob(f"/mnt/user-data/uploads/{u}-mix_{tag}.csv")[0]
    R=list(csv.reader(open(p)))[2:]
    d=[(int(r[3],16), s16(int(r[4],16)), int(r[5]), int(r[6]), s16(int(r[7],16)), s16(int(r[8],16)), int(r[9],16)) for r in R]
    xs=collections.Counter(r[1] for r in d)
    t=next(i for i in range(1,len(d)) if d[i-1][0]==1 and d[i][0]==0)
    best=None
    for L in range(0,6):
        bad=0;n=0
        for k in range(t+8,len(d)):          # skip a few samples after release
            x,s,c=d[k-L][1],d[k-L][2],d[k-L][3]
            mi,mq=model(x,s,c); n+=1
            if (d[k][4],d[k][5])!=(mi,mq): bad+=1
        if best is None or bad<best[1]: best=(L,bad,n)
    vld=all(r[6]==1 for r in d[t:])
    print(f"{tag}: x values={dict(xs)} release@{t} best lag={best[0]} compared={best[2]} mismatches={best[1]} valid_out always 1 after release={vld}")
    if len(xs)==1 and best[1]==0: pass
    tot+=best[2]; totbad+=best[1]
print("TOTAL compared",tot,"mismatches",totbad)
