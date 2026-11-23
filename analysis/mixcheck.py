import csv, sys, glob, collections
def load(p):
    rows = list(csv.reader(open(p)))[2:]
    return [(int(r[3],16), int(r[4],16), int(r[5]), int(r[6]), int(r[7],16), int(r[8],16), int(r[9],16)) for r in rows]
for tag in "abcdef":
    p = glob.glob(f"/mnt/user-data/uploads/*mix_{tag}.csv")[0]
    d = load(p)
    xs = collections.Counter(r[1] for r in d)
    t = next((i for i in range(1,len(d)) if d[i-1][0]==1 and d[i][0]==0), None)
    nz = sum(1 for r in d if r[4] or r[5])
    print(tag, "rows",len(d),"release@",t,"x values seen:",{hex(k):v for k,v in xs.items()}, "rows with nonzero i/q:", nz)
