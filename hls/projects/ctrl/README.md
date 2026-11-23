# Adaptive controller (`adaptive_ctrl`): what is and is not here

The standalone Vitis HLS project for this block was overwritten/removed (its folder on the development PC holds
only a `.settings` stub), so its original report files are **not** in this repository. What exists:

| File | What it is | Provenance |
| --- | --- | --- |
| `ctrl1_ip_export.zip` | Exported IP (Verilog and VHDL, `component.xml`) from Export RTL, 30 Oct 2026 | The real Vitis output, copied from `C:/hls_out/ctrl1.zip` |
| `csim_gcc_rerun.log` | Testbench `hls/src/tb_ctrl.cpp` re-run on all four golden files, outputs only and with internal `vh`/`u` compared: 0 mismatches | Re-run on 23 Nov 2026 with g++ and the open-source `ap_int` headers. **Not a Vitis run** |

## Figures from the logged Vitis HLS 2023.1 runs (xczu5eg-sfvc784-1-e, 10 ns target)

These come from the project's earlier session logs, not from files kept here:

- C-sim passed on `ctrl_m40`, `ctrl_m20`, `ctrl_step`, `ctrl_corner` (outputs only), and on `ctrl_corner` with the `internals` argument (65,000 samples x 3 passes, 0 mismatches).
- C synthesis estimate 7.041 ns, latency 10, interval 11 (`#pragma HLS PIPELINE II=16`).
- C/RTL cosim passed on `ctrl_m20` and `ctrl_corner` (outputs only).
- Export RTL post-implementation: LUT 3155, FF 1790, DSP 6, BRAM 0, SRL 36, CLB 603; CP post-synthesis 4.320 ns, post-implementation 5.067 ns, timing met.

The same controller is also part of the integrated `lockin_top` design: its per-block figures from that build are in
`docs/pl-board-results.md` and `hls/lockin_top/`.

To regenerate real reports, open Vitis HLS 2023.1 and run `csim`, `csynth`, `cosim` and Export RTL on
`hls/src/ctrl_hls.cpp` with `tb_ctrl.cpp`, top function `adaptive_ctrl`, part `xczu5eg-sfvc784-1-e`, 10 ns clock,
cosim argument `hls/golden_vectors/ctrl_corner.csv` (path only).
