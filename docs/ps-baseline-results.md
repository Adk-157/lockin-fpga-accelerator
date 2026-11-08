# Phase 5 progress: board bring-up and PS software baseline (2026-11-08)

## Board bring-up (done)
- Board: PYNQ-ZU. PYNQ image v3.1.1 flashed to a 32 GB microSD. Boot switch on SD (per a mirrored copy of the TUL reference manual v1.2: slide right = microSD, left = JTAG).
- Power: CWT KPL-060F-VI adapter, 12.0 V DC, 5.0 A, 60 W, 6-pin output, needs a 3-pin mains cord.
- Serial console: COM12 (the USB cable), 115200, login `xilinx`. Linux boots.
- Board facts from the terminal: kernel 6.6.10-xilinx-v2024.1 (aarch64), os-release says PynqLinux 3.0 (Ubuntu 22.04) but the pynq package is 3.1.1, numpy 1.21.5, gcc 11.2.0, 4x Cortex-A53, cpu0 at 1199999 kHz with governor `userspace` (clock fixed), 3.8 GiB RAM.
- No network: `ip a` shows no Ethernet interface (no macb/gem lines in dmesg), `usb0` is 192.168.3.1 with NO-CARRIER, and the board has only one USB cable/port available here. So Jupyter/SSH were not confirmed. Files are moved by pasting base64 over the serial console and checking md5.
- `from pynq import Clocks; Clocks.fclk0_mhz` raised `RuntimeError: Could not open device with index '0'` (pyxrt). Cause not investigated.

## PS software baseline (done)
- Program `lockin_sw.c` (plain C, no ap_int) plus the user's own `dds_params.h`, `lockin_golden_params.h`, `cic_fir_params.h`, plus `lockin_chain_np.py` (numpy CIC+FIR chain). Package md5 0fd0f5f5049721195a3146b3a6ddce7f. It lives in `~/lockin` on the board's SD card.
- Stages: DDS + mixer, CIC (R=128) + 21-tap FIR on I and Q, extraction by CORDIC (0 and 3 guard bits), lookup table, polynomial.
- Verified in a sandbox (not on the board) against the real HLS `.cpp` files compiled with the open-source ap_int headers: ~9.9 M mixer cases, 10 DDS step sizes, 13 CIC/FIR streams, 2.4 M extraction vectors for all four methods, 0 mismatches. `mixer_small.csv` (14,297 rows) and `chain_R128_stream.csv` (58,884 rows, 464 outputs): 0 mismatches.
- Deliberate breaks: 14 tried, 13 caught. The 14th (polynomial Horner saturation) can never trigger for any of the 16,385 possible ratios (intermediates stay in [-6801, 14636] and [-67, 11584]). By arithmetic the mixer clamp cannot trigger with this DDS table either (table never reaches -32768); that one was not checked in HLS.
- On the board, all six stage hashes matched the real-HLS values, and the numpy checksum matched (n_out=32768 sum=45376 wsum=0xfffffffecd63f20f):
  - stage 1 dds+mixer 0x64023323860b9621
  - stage 2 cic+fir (I+Q) 0xd3f862f9578e4261
  - cordic_g0 0x3a8051df7fdec6b4, cordic_g3 0xd540f9a02310481d, lut 0x736d506aa087d7ea, poly 0x3ccb404cad729046

## Timing on the A53 (one core, 1.2 GHz, gcc -O2, N = 4,194,304, best of 5; median within 0.1%)
| Stage | Time |
|---|---|
| DDS + mixer | 16.35 ns/sample |
| CIC + FIR, I and Q together | 55.40 ns/sample |
| CORDIC g0 / g3 | 214.86 / 216.37 ns/vector |
| Lookup table | 58.26 ns/vector |
| Polynomial | 107.15 ns/vector |
| numpy chain, one channel | 49.54 ns/sample |

Derived: stages 1+2 = 71.75 ns/sample, about 13.9 Msamples/s on one core. Estimated load at a 200 kHz input is about 1.5% of one core (stage times measured separately and added, so an estimate). C is about 1.8x faster than numpy per channel (27.7 vs 49.5 ns/sample).

Interpretation: at 200 kHz the PS has about 70x headroom, so the PL-vs-PS comparison should be about the throughput ceiling, free CPU time and latency, not feasibility. A PL figure of about 100 Msamples/s per block (II=1 at 10 ns) is a projection from the HLS reports, not a measurement.

Limits: single core only; extraction timed on random 16-bit pairs, not real chain output; the 18-bit FIR output to 16-bit extraction input scaling rule is still undecided.

## Vivado and JTAG (in progress)
- Vivado 2023.1 (same as Vitis HLS). Hardware Manager sees the target `XUPJTAGA`, devices `xczu5_0` and `arm_dap_1`, with the boot switch on SD. The PL already holds the PYNQ base design (no debug cores).
- Board files PYNQ-ZU 1.1 (2023.1 branch) installed through Vivado Store. The block design Board tab lists: 125 MHz differential clock for PL, LED, RGB LEDs, push buttons, DIP switches, Pmod0/1, RaspberryPi, Grove0/1, audio, user reset.
- Next: first design = 125 MHz clock -> Clocking Wizard -> Processor System Reset -> JTAG to AXI Master -> AXI GPIO (LED), then generate the bitstream, program over JTAG and write the GPIO from Hardware Manager. After that: mixer IP, then the chain, extraction and controller.
- Still open: scaling rule from 18-bit FIR output to 16-bit extraction input; XADC rate and range (not checked); real sample rate vs PL clock; how to move large files onto the board later (pen drive or Ethernet).
