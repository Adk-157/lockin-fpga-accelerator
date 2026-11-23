#!/usr/bin/env python3
"""Make the test input files: mix_in.bin (int16 x,s,c triples) and ext_in.bin (int16 x,y pairs)."""
import sys
import numpy as np

W = sys.argv[1]
rng = np.random.default_rng(12345)

# ---- mixer: every sample value against tie-prone and extreme reference values, plus random triples
L = np.array([-32768, -24576, -16384, -8192, -1, 0, 1, 8192, 16384, 24576, 32767], dtype=np.int16)
xs = np.arange(-32768, 32768, dtype=np.int32).astype(np.int16)
parts = []
for s in L:
    for c in L:
        t = np.empty((len(xs), 3), dtype=np.int16)
        t[:, 0] = xs; t[:, 1] = s; t[:, 2] = c
        parts.append(t)
parts.append(rng.integers(-32768, 32768, size=(2_000_000, 3), dtype=np.int16))
mix = np.concatenate(parts)
mix.tofile(W + "/mix_in.bin")

# ---- extraction: random, exhaustive small region, special values, diagonals/axes, small random
ext = []
ext.append(rng.integers(-32768, 32768, size=(1_000_000, 2), dtype=np.int16))
g = np.arange(-300, 301, dtype=np.int16)
gx, gy = np.meshgrid(g, g)
ext.append(np.stack([gx.ravel(), gy.ravel()], axis=1))
V = np.array([-32768, -32767, -16384, -8192, -4096, -1024, -256, -17, -16, -1, 0, 1, 16, 17, 255, 256,
              1024, 4096, 8192, 16384, 32766, 32767], dtype=np.int16)
vx, vy = np.meshgrid(V, V)
ext.append(np.stack([vx.ravel(), vy.ravel()], axis=1))
k = np.arange(0, 32769, dtype=np.int64)
rows = []
for sx in (1, -1):
    for sy in (1, -1):
        rows.append(np.stack([sx * k, sy * k], axis=1))          # |x| == |y|  (ratio exactly 1)
    rows.append(np.stack([sx * k, 0 * k], axis=1))                # on the x axis
    rows.append(np.stack([0 * k, sx * k], axis=1))                # on the y axis
d = np.concatenate(rows)
d = d[(d >= -32768).all(axis=1) & (d <= 32767).all(axis=1)]
ext.append(d.astype(np.int16))
kk = rng.integers(-32760, 32760, size=40_000)
near = []
for dd in (-2, -1, 1, 2):
    near.append(np.stack([kk, kk + dd], axis=1)); near.append(np.stack([kk + dd, kk], axis=1))
ext.append(np.concatenate(near).astype(np.int16))
ext.append(rng.integers(-255, 256, size=(500_000, 2), dtype=np.int16))
ext = np.concatenate(ext)
ext.tofile(W + "/ext_in.bin")
print("mix triples:", len(mix), " ext pairs:", len(ext))
