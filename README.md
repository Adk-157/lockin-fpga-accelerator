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
The adaptive controller's standalone Vitis project no longer exists on disk, so its csim/csynth/cosim/export
reports are not in this repository. The controller figures above are from the logged Vitis runs. What is here
(`hls/projects/ctrl/`): the exported IP (RTL), and an independent g++ re-run of its testbench on all four golden
vector files (0 mismatches). See `hls/projects/ctrl/README.md`.

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
| `board/a53_bench/` | A53 software benchmark source, plus `ap_include/`: the open-source Xilinx `ap_int` headers (Apache-2.0, see `SOURCE.txt`) it builds with (`-Iap_include`) |
| `results/` | Raw board logs: JTAG and ARM verification, adaptive-vs-fixed sweep, deep-noise runs, throughput |
| `analysis/` | Python scripts that turn the logs into the report tables and figures |
| `paper/` | IEEE-style report (`main.tex`, figures, compiled `lockin_report.pdf`) |
| `docs/` | Slides, project checklist, results notes, PS baseline notes |
| `sw/lockin_sw.c`, `sw/lockin_chain_np.py` | PS baseline C code and the numpy CIC+FIR chain (prints the same checksum as the C: `n_out=32768 sum=45376 wsum=0xfffffffecd63f20f` for N = 4194304) |
| `constraints/`, `python/` | Board constraints, Phase 0-2 notebook |
| `hls/projects/ctrl/` | Adaptive controller: exported IP and an independent C-sim re-run (original Vitis reports are lost) |

Rebuild order: `vivado/scripts/run_hls.tcl` (export IP) -> `build_top.tcl` or `build_top_ps.tcl` -> `board_verify*.tcl` / `lockin_pynq.py`.
Paths inside the Vivado/Vitis Tcl scripts are those of the original Windows workspace; adjust them if you rebuild elsewhere. The C-level test scripts under `hls/lockin_top/tb/` use paths relative to the repository.
The Vitis `script.tcl` files reference `../files/...` and absolute `C:/...` paths from the original workspace.

## Key technical notes

- CORDIC angle error is non-monotonic within a bounded envelope; this is a convergence property, not a bug.
- IIR filters at narrow cutoffs must use second-order sections; direct (b, a) form overflows.
- CIC droop is real and the compensating FIR is required.
- The Hogenauer bound needs wide internal accumulators; decimation R = 128 makes the CIC rescale a free shift.
- Round-to-nearest (not truncation) is used at the CIC and FIR output cuts; truncation gave a measurable offset.
- Polynomial extraction uses an order-5 arctangent and an order-3 magnitude-scale polynomial (Horner, 16-bit saturating accumulators); its accuracy is limited by coefficient and accumulator precision.

## Status and known limits

The project is complete: all blocks verified in Vitis HLS, the integrated IP verified bit-exactly on the PYNQ-ZU (JTAG and ARM), results measured, report and slides written (see `paper/` and `docs/`).

Known limits (also in the report):
- On-board input is synthetic (internal tone plus noise); no ADC, analog front end or function generator.
- The 3-guard-bit CORDIC is evaluated in the C model only, not on the board.
- The polynomial saturation path and the LUT table breakpoints are not covered directly by the corner-case vectors.
- Verification used independent NumPy/SciPy references for the golden models; no comparison with vendor IP (Xilinx CIC/FIR compilers), MATLAB or published vectors was made.
- Per-block LUT counts in the report are measured inside the integrated IP and differ slightly from the stand-alone Phase 3 runs listed above.
- The original Vitis reports for the stand-alone controller project are lost (`hls/projects/ctrl/` has an exported IP and an independent C-sim re-run).

Reproducing the C-level checks (no Xilinx tools needed, only g++, gcc, python3 with numpy):
`bash hls/lockin_top/tb/run_all.sh 0` (31 checks), `cd hls/lockin_top/tb && ./build.sh ../src tb_top && ./tb_top` (top-level testbench), `python3 mutate.py` (17 injected faults). The `ap_int` headers used are in `board/a53_bench/ap_include`.
