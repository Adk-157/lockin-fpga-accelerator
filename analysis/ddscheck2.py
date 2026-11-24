import os
CSV_DIR=os.environ.get("CSV_DIR", os.path.join(os.path.dirname(os.path.abspath(__file__)),"../hls/golden_vectors"))   # folder holding the mixer test CSVs (mix_a..f); not shipped in this repo
import csv, re, glob
rom=[int(v) for v in re.search(r'DDS_SINE_ROM\[1024\]\s*=\s*\{([^}]*)\}',open(os.path.join(os.path.dirname(os.path.abspath(__file__)),'../hls/src/dds_params.h')).read()).group(1).split(',')]
INC=21474836
def soft(n):
    ph=(n*INC)&0xFFFFFFFF; return rom[ph>>22], rom[((ph+0x40000000)&0xFFFFFFFF)>>22]
for tag in "abcdef":
    p=glob.glob(f"{CSV_DIR}/*mix_{tag}.csv")[0]
    d=[(int(r[3],16),int(r[5]),int(r[6])) for r in list(csv.reader(open(p)))[2:]]
    t=next(i for i in range(1,len(d)) if d[i-1][0]==1 and d[i][0]==0)
    bad=sum(1 for k in range(len(d)-t) if (d[t+k][1],d[t+k][2])!=soft(k))
    print(tag,"release@",t,"compared",len(d)-t,"mismatches",bad)
