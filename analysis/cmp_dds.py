import re, csv, sys
hdr, capf, INC = sys.argv[1], sys.argv[2], int(sys.argv[3])
txt = open(hdr).read()
rom = [int(v) for v in re.search(r'DDS_SINE_ROM\[1024\]\s*=\s*\{([^}]*)\}', txt).group(1).split(',')]
assert len(rom) == 1024
rows = list(csv.reader(open(capf)))[2:]
cap = [(int(r[3],16), int(r[4]), int(r[5]), int(r[6],16)) for r in rows]
print("rows:", len(cap), " vld all 1:", all(c[3]==1 for c in cap))
# find trigger row (gpio 1->0)
t = next(i for i in range(1,len(cap)) if cap[i-1][0]==1 and cap[i][0]==0)
print("reset released at sample", t, "| gpio=1 for samples before:", all(c[0]==1 for c in cap[:t]))
def soft(n):
    ph = (n*INC) & 0xFFFFFFFF
    pc = (ph + 0x40000000) & 0xFFFFFFFF
    return rom[ph>>22], rom[pc>>22]
# reset-held samples must all be phase 0
print("reset-held samples all (0,32767):", all((c[1],c[2])==(0,32767) for c in cap[:t]))
for off in range(t-2, t+6):
    N = len(cap)-off
    bad = sum(1 for k in range(N) if (cap[off+k][1],cap[off+k][2]) != soft(k))
    print(f"offset {off}: compared {N}, mismatches {bad}")
