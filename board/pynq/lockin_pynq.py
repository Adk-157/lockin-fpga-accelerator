"""Run on the PYNQ-ZU (Jupyter terminal or notebook).  Needs lockin_ps.bit + lockin_ps.hwh in the same folder
as this file, and V1.txt..V7.txt (expected logs from the C model).
    sudo python3 lockin_pynq.py verify        # 7 configs, ARM controls the IP, compares with the C model
    sudo python3 lockin_pynq.py throughput    # PL samples/s measured from the ARM
    sudo python3 lockin_pynq.py demo          # adaptive run, prints k and |I+jQ| as noise changes
"""
import sys, time, os
import numpy as np
from pynq import Overlay, MMIO

HERE = os.path.dirname(os.path.abspath(__file__))
ol = Overlay(os.path.join(HERE, "lockin_ps.bit"))
base = ol.ip_dict["lockin_top_0"]["phys_addr"]
io = MMIO(base, 0x10000)
print("lockin_top_0 at", hex(base))
R = dict(ctrl=0x00, ctl=0x10, kfix=0x18, ph_ref=0x20, ph_sig=0x28, ph_off=0x30, amp=0x38, sigma=0x40, seed=0x48,
         every=0x50, xext=0x58, out_count=0x60, log_n=0x70, status=0x80, k_now=0x90, mI=0xA0, mQ=0xB0, mag=0xC0)
RST, ADAPT, LOGEN, EXT, LOGCLR = 0x01, 0x02, 0x04, 0x08, 0x10
F1 = 21474836

def wr(n, v): io.write(R[n], int(v) & 0xFFFFFFFF)
def rd(n): return io.read(R[n])
def s32(x): return x - (1 << 32) if x >= (1 << 31) else x

def start(): io.write(R["ctrl"], 0x81)           # ap_start + auto_restart

def run_log(flags, kfix, amp, sigma, ph_ref, ph_sig, ph_off, seed, every, xext, timeout=120):
    wr("kfix", kfix); wr("amp", amp & 0xFFFF); wr("sigma", sigma); wr("ph_ref", ph_ref); wr("ph_sig", ph_sig)
    wr("ph_off", ph_off); wr("seed", seed); wr("every", every); wr("xext", xext & 0xFFFF)
    wr("ctl", flags | RST | LOGCLR | LOGEN); time.sleep(0.02)
    wr("ctl", flags | LOGEN)
    t0 = time.time()
    while not (rd("status") & 1):
        if time.time() - t0 > timeout: break
        time.sleep(0.01)
    wr("ctl", flags)
    return np.array(io.array[0x8000 // 4: 0x8000 // 4 + 8192], dtype=np.uint32)

def verify():
    cfg = [  # name flags kfix amp sigma ph_ref ph_sig ph_off seed every xext   (identical to board_verify.tcl)
        ("V1", ADAPT, 0, 8192, 60, F1, F1, 0, 1234, 1, 0),
        ("V2", 0, 7, 8192, 60, F1, F1, 0, 1234, 1, 0),
        ("V3", ADAPT, 0, 100, 5, F1, F1, 0xC0000000, 4242, 1, 0),
        ("V4", ADAPT, 0, 32767, 65535, F1, F1, 0, 7, 1, 0),
        ("V5", ADAPT | EXT, 0, 0, 0, F1, F1, 0, 12, 1, -32768),
        ("V6", ADAPT, 0, -8192, 1000, F1, F1 + 12345, 0, 31337, 1, 0),
        ("V7", ADAPT, 0, 8192, 60, F1, F1, 0, 1234, 40, 0)]
    tot = bad = 0
    for c in cfg:
        got = run_log(*c[1:])
        exp = []
        for l in open(os.path.join(HERE, c[0] + ".txt")):
            if l.startswith("#"): continue
            exp.append(int(l.strip(), 16))
        exp = np.array(exp, dtype=np.uint32)
        mism = int(np.sum(got != exp)); tot += len(exp); bad += mism
        print(f"{c[0]}: {len(exp)} words, mismatches = {mism}")
    print(f"ARM-CONTROLLED VERIFY: {tot} words, {bad} mismatches")

def throughput(secs=5):
    wr("kfix", 0); wr("amp", 8192); wr("sigma", 300); wr("ph_ref", F1); wr("ph_sig", F1); wr("ph_off", 0)
    wr("seed", 1); wr("every", 64); wr("xext", 0)
    wr("ctl", ADAPT | RST); time.sleep(0.02); wr("ctl", ADAPT); time.sleep(0.2)
    c0 = rd("out_count"); t0 = time.perf_counter(); time.sleep(secs)
    c1 = rd("out_count"); t1 = time.perf_counter()
    dc = (c1 - c0) & 0xFFFFFFFF
    rate = dc * 128 / (t1 - t0)
    print(f"PL_THROUGHPUT_FROM_ARM: {dc} outputs in {t1-t0:.3f} s -> {rate/1e6:.4f} Msample/s")
    return rate

def demo():
    wr("kfix", 0); wr("amp", 256); wr("ph_ref", F1); wr("ph_sig", F1); wr("ph_off", 0); wr("seed", 5); wr("every", 64)
    wr("ctl", ADAPT | RST); time.sleep(0.02)
    for sg in (100, 1000, 3000, 8000, 1000, 100):
        wr("sigma", sg); wr("ctl", ADAPT)
        for _ in range(8):
            time.sleep(0.5)
            print(f"sigma={sg:5d}  k={rd('k_now'):2d}  I={s32(rd('mI'))/256:9.1f} Q={s32(rd('mQ'))/256:9.1f}  mag(cordic)={rd('mag')}")

start()
cmd = sys.argv[1] if len(sys.argv) > 1 else "verify"
{"verify": verify, "throughput": throughput, "demo": demo}[cmd]()
