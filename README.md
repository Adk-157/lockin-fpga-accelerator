# Parameterized Streaming DSP Accelerator for a Digital Lock-In Amplifier (PYNQ-ZU)

A digital lock-in amplifier (phase-sensitive detection) built as a parameterized streaming DSP accelerator
on the TUL PYNQ-ZU (Zynq UltraScale+ XCZU5EG). The project compares three ways of extracting
magnitude and phase (CORDIC, lookup table with interpolation, polynomial) with real post-implementation
numbers, and adds adaptive bandwidth control driven by an online noise/SNR estimate.

Status: complete (23 Nov 2026). Phases 0 to 4 are verified in Vitis HLS; Phase 5 (integrated `lockin_top` IP,
Vivado block designs, on-board verification, adaptive-bandwidth measurements, ARM control, A53 comparison) is done
and documented in `paper/lockin_report.pdf` and `docs/pl-board-results.md`.

## Signal chain

DDS (sin/cos reference) -> mixer -> CIC decimator (R = 128) + 21-tap compensating FIR (I and Q)
-> magnitude/phase extraction (CORDIC | LUT | polynomial) -> adaptive bandwidth controller

## Results so far (Vitis HLS 2023.1, xczu5eg-sfvc784-1-e, 10 ns target, post-implementation Export RTL)

| Block | Top function | C-sim / cosim | Latency / II | LUT | FF | DSP | BRAM | CP post-impl (ns) |
|---|---|---|---|---|---|---|---|---|
| CORDIC base | cordic_vectoring | pass / pass, 26,707 vectors, 0 mismatches | | 668 | 190 | 1 | 0 | 4.755 |
| CORDIC, 3 guard bits | cordic_vectoring | pass / pass, 26,707 vectors, 0 mismatches | 4 / 1 | 722 | 230 | 1 | 0 | 5.622 |
| LUT (2 x 256 tables, linear interpolation) | lut_vectoring | pass / pass, 26,707 vectors | 35 / 1 | 1438 | 1353 | 3 | 2 | 5.749 |
| Polynomial (order-5 atan, order-3 scale) | poly_vectoring | pass / pass, 26,707 vectors, 0 mismatches | 37 / 1 | 1528 | 1404 | 9 | 0 | 5.920 |
| CIC (R = 128) + 21-tap FIR, round-to-nearest | cic_fir_chain | pass / pass, 464 outputs, 0 mismatches | 5 / 1 | 1181 | 888 | 19 | 0 | 5.566 |
| DDS | dds_sincos | pass / pass, 45,859 clocks | 1 / 1 | 41 | 33 | 0 | 1 | 1.550 |
| Mixer (round-to-nearest) | mixer | pass / pass | 3 / 1 | 9 | 6 | 2 | 0 | 1.155 |
| Adaptive controller (II = 16 pragma) | adaptive_ctrl | pass (all vectors) / pass | 10 / 11 | 3155 | 1790 | 6 | 0 | 5.067 |

All blocks meet timing at 10 ns. Numbers are taken from the Export RTL post-implementation reports
(see `hls/projects/*/reports/`), not from the HLS-stage estimates, which overstate LUTs.
The adaptive controller's Vitis project was exported to a different folder on the development PC, so its
reports are not in this repository; the figures above are from the logged Vitis runs.

## PS (software) baseline on the board

Measured on one Cortex-A53 core at 1.2 GHz, gcc -O2: DDS + mixer 16.35 ns/sample, CIC + FIR (I and Q)
55.40 ns/sample, CORDIC about 215 ns/vector, LUT 58.26 ns/vector, polynomial 107.15 ns/vector.
Details, verification method and limits are in `docs/ps-baseline-results.md`.

## Integrated design on the board (Phase 5)

One HLS IP, `lockin_top` (stimulus + DDS + mixer + CIC/FIR + adaptive averager + CORDIC/LUT/polynomial extractors),
integrated in two Vivado 2023.1 block designs: JTAG-only (`lockin_top.bit`) and JTAG + Zynq PS (`lockin_ps.bit/.hwh`).
Headline results (details in `docs/pl-board-results.md` and the report):

- IP: 9,554 LUT, 12,989 FF, 63 DSP; JTAG-only design 11,008 LUT; timing met at 100 MHz (WNS +3.256 ns); vectorless power 0.54 W.
- On-board output bit-exact against the C reference: 57,344 words (7 configurations), over JTAG and from the Cortex-A53 (PYNQ 3.1.1); 17/17 injected faults caught.
- Throughput 4.27 MS/s (21x the nominal 200 kS/s); the same C++ on one A53 core: 0.185 MS/s (about 23x slower).
- Adaptive averaging bandwidth keeps the relative error at about 4-7 % from 100 to 8000 LSB noise and down to -63 dB input SNR (k at its limit of 20); fixed k=8 reaches 57-281 %.

## Repository layout

| Path | Contents |
|---|---|
| `hls/src/`, `hls/golden_vectors/`, `hls/projects/<block>/` | Phase 3/4 per-block HLS sources, golden vectors, Vitis scripts and reports |
| `hls/lockin_top/src/` | Integrated top-level HLS IP (`lockin_top.cpp`, `ctrl_x.cpp`, extractors) |
| `hls/lockin_top/tb/` | Testbench, C reference (`ref_pipe.c`), mutation tester, board-vs-model compare, expected logs V1-V7 |
| `vivado/lockin_hw/` | Early Vivado project (first block design on the PYNQ-ZU base) |
| `vivado/scripts/` | Tcl for the two block designs (`build_top.tcl`, `build_top_ps.tcl`), board runs (`board_*.tcl`, `lockin_hw.tcl`) |
| `vivado/reports/` | Post-implementation utilization, timing, power reports for both builds |
| `bitstreams/` | `lockin_top.bit`, `lockin_ps.bit`, `lockin_ps.hwh`, packaged IP zip |
| `board/pynq/` | `lockin_pynq.py` (verify / throughput / demo on PYNQ 3.1.1) |
| `board/a53_bench/` | A53 software benchmark source (needs the Xilinx `ap_int` headers from a Vitis HLS install; not redistributed) |
| `results/` | Raw board logs: JTAG and ARM verification, adaptive-vs-fixed sweep, deep-noise runs, throughput |
| `analysis/` | Python scripts that turn the logs into the report tables and figures |
| `paper/` | IEEE-style report (`main.tex`, figures, compiled `lockin_report.pdf`) |
| `docs/` | Slides, project checklist, results notes, PS baseline notes |
| `sw/lockin_sw.c`, `constraints/`, `python/` | PS baseline C code, board constraints, Phase 0-2 notebook |

Rebuild order: `vivado/scripts/run_hls.tcl` (export IP) -> `build_top.tcl` or `build_top_ps.tcl` -> `board_verify*.tcl` / `lockin_pynq.py`.
Paths inside the scripts are those of the original Windows workspace; adjust them if you rebuild elsewhere.
The Vitis `script.tcl` files reference `../files/...` and absolute `C:/...` paths from the original workspace.

## Key technical notes

- CORDIC angle error is non-monotonic within a bounded envelope; this is a convergence property, not a bug.
- IIR filters at narrow cutoffs must use second-order sections; direct (b, a) form overflows.
- CIC droop is real and the compensating FIR is required.
- The Hogenauer bound needs wide internal accumulators; decimation R = 128 makes the CIC rescale a free shift.
- Round-to-nearest (not truncation) is used at the CIC and FIR output cuts; truncation gave a measurable offset.
- Polynomial extraction accuracy is limited by coefficient and accumulator precision beyond order 4.

## Still to do

- Vivado integration on the PYNQ-ZU (mixer IP, then chain, extraction and controller) and on-board measurements
- Scaling rule from the 18-bit FIR output to the 16-bit extraction input
- PL-versus-PS comparison, paper writeup
