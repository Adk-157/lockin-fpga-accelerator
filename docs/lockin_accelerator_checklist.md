# Lock-In Accelerator — Understand ↔ Implement Checklist

Each block: understand the concept, then build the matching piece. Do them in order — each implementation step depends on the one above it.

---

## Phase 0 — Signal chain fundamentals (Python, no board needed)

- [ ] **Understand:** what phase-sensitive detection actually does — multiply signal by reference, low-pass filter, why noise not locked to the reference frequency averages toward zero
- [ ] **Implement:** synthetic test signal generator in Python (sine + Gaussian noise, adjustable SNR down to -40/-60 dB)
- [ ] **Understand:** why you need two reference channels (in-phase / quadrature) to recover both amplitude and phase, not just one
- [ ] **Implement:** ideal floating-point I/Q lock-in in NumPy (mix + low-pass), verify it recovers known amplitude/phase from your test signal at various SNRs

- [ ] **Understand:** Direct Digital Synthesis (DDS) — phase accumulator, why it's the standard way to generate the reference on-chip without a DAC lookup table for every sample
- [ ] **Implement:** DDS phase accumulator in Python (integer phase register, wraps at 2^N), compare its output spectrum to an ideal sine

- [ ] **Understand:** CIC (cascaded integrator-comb) decimation — why it's cheap (no multipliers) and why droop/aliasing tradeoffs exist
- [ ] **Understand:** why a CIC alone isn't enough and a compensating FIR is usually cascaded after it
- [ ] **Implement:** CIC + FIR decimation chain in Python, decimate your mixed signal down to output rate, check the filter response against your target bandwidth

---

## Phase 1 — Magnitude/phase extraction: the three-way comparison

This phase is your paper's core contribution — build all three, side by side, on the same test vectors.

- [ ] **Understand:** CORDIC algorithm — iterative vector rotation, why it converges to magnitude/phase using only shifts and adds (no multiplier), what "number of iterations vs precision" tradeoff means
- [ ] **Implement:** CORDIC magnitude/phase extractor in Python, bit-accurate (fixed iteration count), measure error vs iteration count

- [ ] **Understand:** LUT-based extraction — precompute atan/magnitude tables, why table size vs precision is the tradeoff, interpolation between entries
- [ ] **Implement:** LUT-based extractor in Python, sweep table size, measure error vs table size vs memory used

- [ ] **Understand:** polynomial (Chebyshev/minimax) approximation — why a low-order polynomial can approximate atan/sqrt cheaply, where it beats CORDIC and where it doesn't
- [ ] **Implement:** polynomial approximation extractor in Python (scipy for coefficient fitting), measure error vs polynomial order

- [ ] **Understand:** what "resource cost" means in FPGA terms — LUTs, DSP slices, BRAM — and roughly how CORDIC (logic-heavy), LUT (memory-heavy), and polynomial (multiplier-heavy) differ before you've written a line of HLS
- [ ] **Implement:** a single Python comparison harness — same test vectors through all three methods, table of accuracy vs "expected" resource profile, this becomes your first paper figure

---

## Phase 2 — Fixed-point translation

- [ ] **Understand:** fixed-point representation (Q-format), why floating-point isn't free on FPGA, quantization noise and how it propagates through cascaded stages
- [ ] **Implement:** re-run your entire Phase 0/1 pipeline in fixed-point (Python integer arithmetic mimicking Q-format), compare error against the floating-point golden model — this becomes your "why I chose this bit width" paragraph

- [ ] **Understand:** how Vitis HLS pragmas (PIPELINE, UNROLL, dataflow) map to actual hardware structures, not just "make it faster"
- [ ] **Implement:** port the fixed-point Python model to HLS C++, get it through C-simulation matching your Python output bit-for-bit

---

## Phase 3 — Hardware bring-up (once ZCU104 arrives)

- [ ] **Understand:** ZCU104 clocking/ADC/DAC options (XADC, external pmods, what's actually available on-board) — confirm your input path before designing around it
- [ ] **Implement:** Vivado block design — DDS + mixer + CIC/FIR + magnitude/phase block (start with CORDIC only) wired to AXI-Stream, get bitstream generated

- [ ] **Understand:** AXI-Lite vs AXI-Stream — why control registers (bandwidth setting, method select) go on AXI-Lite and data goes on AXI-Stream
- [ ] **Implement:** PS-side driver/test app (bare-metal or Linux) that configures the accelerator and reads back demodulated output, validate against a real function generator + photodiode or loopback signal

- [ ] **Implement:** swap in LUT and polynomial variants behind the same interface, confirm all three produce consistent results on real hardware, log actual resource utilization from the Vivado implementation report (compare to your Phase 1 predictions)

---

## Phase 4 — Adaptive bandwidth (stretch goal — drop first if time is short)

- [ ] **Understand:** online SNR estimation — how you'd estimate noise floor from the decimated output without a second reference measurement
- [ ] **Implement:** SNR estimator block, feed it into a bandwidth control loop that adjusts the FIR/CIC decimation rate or filter order live

---

## Phase 5 — Characterization and writeup

- [ ] **Implement:** benchmark suite — latency, throughput, power/resource utilization for all three methods, PL accelerator vs Cortex-A53 software baseline for the same operation
- [ ] **Implement:** noise floor / minimum detectable signal measurement on real hardware, compare to your floating-point golden model's theoretical limit
- [ ] **Understand:** how to frame the paper's related-work section — cite the baseline Zynq LIA papers and the LUT/CORDIC comparison paper, position your contribution as extending both
- [ ] **Implement:** draft writeup — problem statement, architecture, design-space results (Phase 1 figure), adaptive bandwidth results if completed, hardware benchmarks, conclusion
