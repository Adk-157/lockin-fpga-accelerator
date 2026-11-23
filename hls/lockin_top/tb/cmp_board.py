import sys,re
R="/mnt/user-data/uploads/FPGA/lockin_top_pkg/results_verify"
def board(n):
    L=open(f"{R}/{n}.txt").read().splitlines()
    hdr=[l for l in L if l.startswith('#')]
    bursts={}
    for l in L:
        if l.startswith('B '):
            _,b,h=l.split(); bursts[int(b)]=h.strip()
    return hdr,bursts
def words(bursts,rev):
    w=[]
    for b in sorted(bursts):
        h=bursts[b]; ch=[int(h[i:i+8],16) for i in range(0,len(h),8)]
        w+= ch[::-1] if rev else ch
    return w
for n in ["V1","V2","V3","V4","V5","V6","V7"]:
    hdr,b=board(n)
    exp=[int(x,16) for x in open(f"expect/{n}.txt").read().split('\n')[1:] if x.strip()]
    best=None
    for rev in (True,False):
        w=words(b,rev); 
        mism=sum(1 for a,c in zip(w,exp) if a!=c)
        if best is None or mism<best[0]: best=(mism,rev,len(w))
    print(n,"words",best[2],"vs",len(exp),"mismatching words:",best[0],"(burst order reversed)" if best[1] else "")
    print("   ",hdr[1][:140])
