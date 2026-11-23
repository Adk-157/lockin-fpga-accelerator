import numpy as np, glob, os, re
def load(path, nb=32):
    hdr=[];b={}
    for l in open(path):
        if l.startswith('#'): hdr.append(l.strip())
        elif l.startswith('B '):
            _,i,h=l.split(); b[int(i)]=h.strip()
    w=[]
    for i in sorted(b):
        h=b[i]; ch=[int(h[j:j+8],16) for j in range(0,len(h),8)]; w+=ch[::-1]
    w=np.array(w,dtype=np.uint64)
    n=len(w)//16
    r=w[:n*16].reshape(n,16)
    def s32(x): x=x.astype(np.int64); return np.where(x>=2**31,x-2**32,x)
    def s16(x): x=x.astype(np.int64)&0xFFFF; return np.where(x>=2**15,x-2**16,x)
    d=dict(n=s32(r[:,0]),yI=s32(r[:,1]),yQ=s32(r[:,2]),k=s32(r[:,3]),mI8=s32(r[:,4]),mQ8=s32(r[:,5]),
           c_mag=(r[:,6].astype(np.int64)&0xFFFF), c_ang=s16(r[:,6].astype(np.int64)>>16),
           l_mag=(r[:,7].astype(np.int64)&0xFFFF), l_ang=s16(r[:,7].astype(np.int64)>>16),
           p_mag=s32(r[:,8]), p_ang=s32(r[:,9]), vm16=s32(r[:,10]), sig=s32(r[:,11]))
    return hdr,d
