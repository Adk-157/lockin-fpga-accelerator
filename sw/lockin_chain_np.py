#!/usr/bin/env python3
"""numpy version of the same chain as lockin_chain.c (CIC R=128, 4 stages, 44-bit wrap, then 21-tap FIR).

    python3 lockin_chain_np.py bench [N] [reps]

Uses the same pseudo-random integer input as the C program, so the printed checksum
must equal the C program's for the same N.
"""
import sys
import time
import numpy as np

TAPS = np.array([141, -140, 59, 111, -340, 540, -526, -80, 2185, -8534, 29555,
                 -8534, 2185, -80, -526, 540, -340, 111, 59, -140, 141], dtype=np.int64)


def sx(v, w):
    """Wrap to a signed w-bit number (what an ap_int<w> assignment does)."""
    s = 64 - w
    return (v << s) >> s


def gen_hash(n):
    x = np.arange(n, dtype=np.uint32)
    x ^= x >> np.uint32(16)
    x *= np.uint32(0x7feb352d)
    x ^= x >> np.uint32(15)
    x *= np.uint32(0x846ca68b)
    x ^= x >> np.uint32(16)
    return (x >> np.uint32(16)).astype(np.uint16).view(np.int16)


def chain_np(x):
    """x: int16 array -> int32 array of FIR outputs (one per 128 input samples)."""
    v = x.astype(np.int64)
    for _ in range(4):                       # 4 integrators; int64 wraps mod 2^64, which is consistent mod 2^44
        v = np.cumsum(v, dtype=np.int64)
    c = sx(v[::128], 44)                     # a decimated sample appears at n = 0, 128, 256, ...
    for _ in range(4):                       # 4 combs (previous value starts at 0)
        c = sx(np.diff(c, prepend=0), 44)
    r = (c + (1 << 27)) >> 28                # round half up, sum not wrapped
    xs = ((r & 0xFFFF) ^ 0x8000) - 0x8000    # cast to 16 bit
    acc = np.convolve(xs, TAPS)[:len(xs)]    # FIR with zero start-up history
    y = sx((acc + (1 << 13)) >> 14, 18)      # round, 18-bit output
    return y.astype(np.int32)


def checksum(y):
    y64 = y.astype(np.int64)
    s1 = int(y64.sum())
    w = np.arange(1, len(y64) + 1, dtype=np.uint64)
    s2 = int((y64.astype(np.uint64) * w).sum(dtype=np.uint64)) if len(y64) else 0
    return s1, s2


def main():
    if len(sys.argv) < 2 or sys.argv[1] != "bench":
        print("usage: lockin_chain_np.py bench [N] [reps]")
        return 2
    n = int(sys.argv[2]) if len(sys.argv) > 2 else 4194304
    reps = int(sys.argv[3]) if len(sys.argv) > 3 else 5
    x = gen_hash(n)
    times = []
    y = None
    for _ in range(reps):
        t0 = time.perf_counter()
        y = chain_np(x)
        times.append((time.perf_counter() - t0) * 1e3)
    times.sort()
    best, med = times[0], times[len(times) // 2]
    s1, s2 = checksum(y)
    print("numpy chain: N=%d n_out=%d sum=%d wsum=0x%016x" % (n, len(y), s1, s2))
    print("numpy time : best %.2f ms, median %.2f ms over %d runs -> best %.2f ns/sample (%.2f Msamples/s)"
          % (best, med, reps, best * 1e6 / n, n / (best * 1e3)))
    return 0


if __name__ == "__main__":
    sys.exit(main())
