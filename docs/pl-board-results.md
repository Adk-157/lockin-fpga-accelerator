# PL (FPGA fabric) board results, PYNQ-ZU (XCZU5EG), 23 Nov 2026

Everything below was measured on the real board unless marked "C model". All "ms" values are at the nominal 200 kS/s sample rate (the block really runs about 21x faster).

## Design built
- One HLS IP `lockin_top` (Vitis HLS 2023.1): on-chip stimulus (tone + near-Gaussian noise) -> DDS -> mixer -> CIC (4 stages, R=128) + 21-tap FIR -> adaptive or fixed-bandwidth averager -> CORDIC / LUT / polynomial extractors, one call per input sample. Control, status and a 512-record log over AXI4-Lite.
- Two Vivado builds: JTAG-only (`lockin_top.bit`, IP at 0x40000000) and JTAG + Zynq PS (`lockin_ps.bit/.hwh`, IP at 0xA0000000, 100 MHz from clk_wiz, Zynq UltraScale+ PS as second master via HPM0_FPD). Both built with 0 errors.
- HLS Fmax estimate 137.2 MHz; latency 13-89 cycles. The requested PIPELINE II=500 was not honoured.
- Measured throughput: 4.271 MS/s over JTAG and 4.2714 MS/s from the ARM (167,021 outputs in 5.005 s), i.e. 21.4x the nominal 200 kS/s.

## Post-implementation (routed)
- JTAG-only build: 11,008 LUT, 15,653 FF, 10 RAMB36 + 4 RAMB18, 63 DSP; WNS +3.256 ns, WHS +0.010 ns.
- PS build: 12,545 LUT, 17,319 FF, 12 BRAM tiles; WNS +3.551 ns, WHS +0.010 ns. The 2.8 W power figure of this build is a default-PS estimate, not the IP's power.
- Per block (LUT/FF/DSP): IP 9,554/12,989/63; adaptive controller 3,125/1,815/6; polynomial 1,468/1,368/9; LUT extractor 1,438/1,351/3; CORDIC 776/218/1; each FIR about 222/798/19; AXI slave 667/420/0.
- Power (vectorless estimate, JTAG-only build): 0.540 W.

## Verification
- JTAG, JTAG-only build: 57,344 words (7 x 8,192), 0 mismatches against the C model.
- JTAG, PS build: 57,344 words, 0 mismatches.
- ARM-controlled (PYNQ 3.1.1, Python MMIO on the Cortex-A53): 57,344 words, 0 mismatches.
- Mutation test: 17/17 injected faults caught. Noise kurtosis 2.70.

## Extractor accuracy
- Board, 4,608 points against float64: LUT magnitude RMS 0.66 LSB, angle 0.012 deg; polynomial 0.75 LSB, 0.006 deg; CORDIC (guard 0) 3.7 LSB with bias, angle RMS 1.28 deg.
- C model, 4.0M inputs: 3-guard-bit CORDIC about 1 LSB (C model only, not run on the board).

## Adaptive vs fixed bandwidth (std of |z| over last 128 records / true A/2)
- Amplitude 1024, sigma 100/300/1000/3000/8000: fixed k=4 0.2/0.7/2.2/6.6/17.7 %; k=12 0.0/0.0/0.1/0.2/0.5 %; adaptive 1.1/3.2/6.7/6.6/5.7 %.
- Amplitude 256: fixed k=4 0.9/2.6/8.8/26.5/62.3 %; k=8 0.2/0.5/1.8/5.4/14.7 %; k=12 0.0/0.1/0.2/0.7/1.9 %; adaptive 4.3/5.6/6.1/5.4/3.7 % (k = 0/2/5/8/11).
- Step 512 -> 64 (sigma 300): fixed k=4/8/12 90 % settling 20.5 ms / 368.6 ms / 6.02 s (theory 23.6 / 377 / 6036 ms). Adaptive within 20.5 ms (log resolution), final k=4.

## Deep-noise (sigma 8000; RMS error against true A/2, last 128 records; ~90 s runs)
- Amplitude 64 (-45 dB): fixed k=8 57.3, k=12 17.0, k=16 2.8, adaptive 4.4 % (k=15).
- Amplitude 32 (-51 dB): 119.5 / 33.8 / 5.6 / adaptive 4.2 % (k=17).
- Amplitude 16 (-57 dB): 280.8 / 65.3 / 11.4 / adaptive 5.7 % (k=19, limit 20).
- Amplitude 8 (-63 dB), adaptive, two seeds: 5.7 % and 4.2 % (k at its limit of 20). Indicative only.
- SNR defined as A^2 / (2 sigma^2) over the full sample band.

## ARM side (PYNQ 3.1.1 on SD card; no Ethernet, files copied via the SD BOOT partition)
- Run: `sudo -E env "PATH=$PATH" python3 lockin_pynq.py <verify|throughput|demo>`.
- Same `lockin_top.cpp` on one A53 core (g++ -O2, 5M samples): 0.1849 MS/s -> fabric about 23x faster. Not NEON-optimised.
- Live demo (amplitude 256, sigma 100/1000/3000/8000/1000/100): k = 0/5/8/18-19/5/0, magnitude stayed near 128. At sigma 8000 k (18-19) is higher than the cold-start log mean (11): k depends on history and can overshoot (stated as a limitation).

## Known limits
- On-board input is synthetic (no ADC or function generator). Throughput measured once over JTAG with no external time base. Power is a vectorless estimate. A53 comparison is not an optimised ARM implementation.
