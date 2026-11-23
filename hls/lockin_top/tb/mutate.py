import subprocess, shutil, os, sys
SRC="../src"
M=[
 ("noise scale 28378->28379",        "lockin_top.cpp","* 28378;","* 28379;"),
 ("xorshift shift 17->16",           "lockin_top.cpp","x ^= (x >> 17);","x ^= (x >> 16);"),
 ("tone rounding bit 14->13",        "lockin_top.cpp","(ap_int<32>(1) << 14)) >> 15;                     // Q3.13","(ap_int<32>(1) << 13)) >> 15;                     // Q3.13"),
 ("phase offset ignored",            "lockin_top.cpp","T.ph_sig_acc + ph_off;","T.ph_sig_acc;"),
 ("mixer Q sign (+sin)",             "lockin_top.cpp","mix_round_sat(-(ap_int<33>)ps)","mix_round_sat((ap_int<33>)ps)"),
 ("adaptive flag inverted",          "lockin_top.cpp","const bool adapt   = ctl[1];","const bool adapt   = !ctl[1];"),
 ("external input ignored",          "lockin_top.cpp","use_ext ? x_ext : x_gen","x_gen"),
 ("log words yI/yQ swapped",         "lockin_top.cpp","log_mem[b + 1]  = (ap_int<32>)yI;","log_mem[b + 1]  = (ap_int<32>)yQ;"),
 ("input clip 32767->32766",         "lockin_top.cpp","(xs > 32767) ? (ap_int<16>)32767","(xs > 32767) ? (ap_int<16>)32766"),
 ("extractor input: no rounding",    "lockin_top.cpp","ap_int<64> r = (v + (ap_int<64>(1) << (sh - 1))) >> sh;","ap_int<64> r = v >> sh;"),
 ("kfix clamp wrong (25)",           "ctrl_x.cpp","(kfix > KMAX) ? (k_t)KMAX : kfix","(kfix > 25) ? (k_t)25 : kfix"),
 ("reset call still processes",      "lockin_top.cpp","if (!rst) {                                      // a reset call does nothing but reset","if (true) {"),
 ("CORDIC log fields swapped",       "lockin_top.cpp","(((ap_uint<32>)(ap_uint<16>)ca << 16) | (ap_uint<32>)cm)","(((ap_uint<32>)(ap_uint<16>)cm << 16) | (ap_uint<32>)ca)"),
 ("anti-windup removed",             "ctrl_x.cpp","if ((int)st.k > s) st.k = s;","/* removed */"),
 ("fixed mode does not hold k",      "ctrl_x.cpp","if (!adapt) st.k = (kfix > KMAX) ? (k_t)KMAX : kfix;","/* removed */"),
 ("log_every off by one",            "lockin_top.cpp","T.lg_cnt + 1 >= every","T.lg_cnt + 1 > every"),
 ("log-full flag wrong",             "lockin_top.cpp","(T.n_log >= LOG_N) ? 1 : 0","(T.n_log > LOG_N) ? 1 : 0"),
]
res=[]
for i,(name,f,old,new) in enumerate(M):
    d=f"/tmp/mut{i}"; shutil.rmtree(d,ignore_errors=True); shutil.copytree(SRC,d)
    p=f"{d}/{f}"; s=open(p).read()
    if old not in s: print("PATTERN NOT FOUND:",name); sys.exit(1)
    open(p,"w").write(s.replace(old,new,1))
    b=subprocess.run(["./build.sh",d,f"/tmp/mut{i}/tb"],capture_output=True,text=True)
    if b.returncode: print(name,"BUILD FAIL",b.stderr[:200]); continue
    r=subprocess.run([f"/tmp/mut{i}/tb"],capture_output=True,text=True)
    line=[l for l in r.stdout.splitlines() if l.startswith("TOTAL")][0]
    caught = r.returncode!=0
    print(f"{'CAUGHT ' if caught else 'MISSED!'} {name:34s} {line.split('=>')[0].strip().split('mismatches:')[1].strip():>9s} mismatches")
    res.append(caught)
print(f"\n{sum(res)}/{len(res)} mutations caught")
