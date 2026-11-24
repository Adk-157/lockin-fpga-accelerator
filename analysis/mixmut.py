import os
CSV_DIR=os.environ.get("CSV_DIR", os.path.join(os.path.dirname(os.path.abspath(__file__)),"../hls/golden_vectors"))   # folder holding the mixer test CSVs (mix_a..f); not shipped in this repo
import csv, glob
MAP={"a":"9fd7cf41","b":"a655665e","c":"19add25d","d":"06fff6de","e":"7e532de2","f":"9e119495"}
def s16(v): return v-65536 if v>=32768 else v
def sat(r): return 32767 if r>32767 else (-32768 if r<-32768 else r)
muts={
 "correct (round, ties up)": lambda p:sat((p+(1<<14))>>15),
 "truncate instead of round": lambda p:sat(p>>15),
 "round half-down variant":   lambda p:sat((p+(1<<14)-1)>>15),
 "wrong shift (>>14)":        lambda p:sat((p+(1<<13))>>14),
}
D={}
for tag,u in MAP.items():
    R=list(csv.reader(open(glob.glob(f"{CSV_DIR}/{u}-mix_{tag}.csv")[0])))[2:]
    D[tag]=[(int(r[3],16), s16(int(r[4],16)), int(r[5]), int(r[6]), s16(int(r[7],16)), s16(int(r[8],16))) for r in R]
L=3
for name,f in muts.items():
    bad=0;n=0
    for tag,d in D.items():
        for k in range(108,len(d)):
            x,s,c=d[k-L][1],d[k-L][2],d[k-L][3]
            n+=1
            if (d[k][4],d[k][5])!=(f(x*c),f(-(x*s))): bad+=1
    print(f"{name:28s} mismatches {bad}/{n}")
# sign/swap mutations
for name,g in {"q sign flipped (+sin)":lambda x,s,c:((x*c+(1<<14))>>15,(x*s+(1<<14))>>15),
               "swap sin/cos":lambda x,s,c:((x*s+(1<<14))>>15,(-(x*c)+(1<<14))>>15)}.items():
    bad=0;n=0
    for d in D.values():
        for k in range(108,len(d)):
            x,s,c=d[k-L][1],d[k-L][2],d[k-L][3]; mi,mq=g(x,s,c); n+=1
            if (d[k][4],d[k][5])!=(sat(mi),sat(mq)): bad+=1
    print(f"{name:28s} mismatches {bad}/{n}")
# did any product reach the saturation limits?
mx=max(abs(x*c) for d in D.values() for (_,x,s,c,_,_) in d)
print("largest |x*c| seen:",mx," saturates only if >=",(32768<<15)-(1<<14))
