# Parameterized Streaming DSP Accelerator for a Digital Lock-In Amplifier (PYNQ-ZU)

A digital lock-in amplifier (phase-sensitive detection) built as a parameterized streaming DSP accelerator
on the TUL PYNQ-ZU (Zynq UltraScale+ XCZU5EG). The project compares three ways of extracting
magnitude and phase (CORDIC, lookup table with interpolation, polynomial) with real post-implementation
numbers, and adds adaptive bandwidth control driven by an online noise/SNR estimate.

Status: work in progress. Phases 0 to 4 are verified in Vitis HLS; Phase 5 (board bring-up, PS baseline,
Vivado integration) is under way. More files will be added as the project finishes.

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
reports are not in this repository yet; the figures above are from the logged Vitis runs.

## PS (software) baseline on the board

Measured on one Cortex-A53 core at 1.2 GHz, gcc -O2: DDS + mixer 16.35 ns/sample, CIC + FIR (I and Q)
55.40 ns/sample, CORDIC about 215 ns/vector, LUT 58.26 ns/vector, polynomial 107.15 ns/vector.
Details, verification method and limits are in `docs/ps-baseline-results.md`.

## Repository layout

| Path | Contents |
|---|---|
| `hls/src/` | HLS C++ sources, testbenches and parameter headers for every block |
| `hls/golden_vectors/` | Golden-vector CSVs used for C-sim and cosim |
| `hls/projects/<block>/` | Vitis HLS scripts, directives and csim / csynth / cosim / export reports, generated RTL, packaged IP zip |
| `vivado/lockin_hw/` | Vivado 2023.1 project (first block design on the PYNQ-ZU base) |
| `constraints/pynqzu_master.xdc` | Board master constraints |
| `python/lockin.ipynb` | Phase 0 to 2 Python golden model and fixed-point studies |
| `docs/` | Project checklist, slide decks, PS baseline notes |

The Vitis `script.tcl` files reference `../files/...` and absolute `C:/...` paths from the original
workspace; adjust them if you rebuild elsewhere.

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
