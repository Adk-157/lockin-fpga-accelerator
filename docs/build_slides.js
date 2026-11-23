const pptxgen = require("pptxgenjs");
const S = "/root/.claude/skills/synced/5ec13953-7cc4-4dac-b6ae-9ebfe2779d9e_5aa18437-363b-4b1f-ab23-7de462fe1c60/pptx";
const { applyTheme } = require(S + "/scripts/apply_theme.js");

const THEME = { name: "LockIn Navy", headFontFace: "Cambria", bodyFontFace: "Calibri",
  colors: { dk1: "1A1F3D", lt1: "FFFFFF", dk2: "1E2761", lt2: "EEF3FD", accent1: "1E2761", accent2: "F5A800",
    accent3: "CADCFC", accent4: "5A6275", accent5: "2E7D5B", accent6: "C0392B", hlink: "1E2761", folHlink: "5A6275" } };
const H = { navy: "1E2761", amber: "F5A800", ice: "CADCFC", gray: "5A6275", green: "2E7D5B", red: "C0392B", mid: "8A93B8" };

const pres = new pptxgen();
pres.layout = "LAYOUT_WIDE";            // 13.33 x 7.5
pres.theme = { headFontFace: THEME.headFontFace, bodyFontFace: THEME.bodyFontFace };
pres.title = "Adaptive-Bandwidth Digital Lock-In Amplifier on Zynq UltraScale+";
pres.author = "Adithya Ram S.";
const C = pres.SchemeColor;

const FOOT = "Adithya Ram S.  |  FPGA Digital Lock-In Accelerator  |  PYNQ-ZU (XCZU5EG)";
pres.defineSlideMaster({ title: "TITLE_DARK", background: { color: C.background1 },
  objects: [ { rect: { x: 0, y: 0, w: 13.333, h: 7.5, fill: { color: C.accent1 } } } ],
  slideNumber: undefined });
pres.defineSlideMaster({ title: "CONTENT", background: { color: C.background1 },
  objects: [
    { placeholder: { options: { name: "title", type: "title", x: 0.6, y: 0.35, w: 12.1, h: 0.8, fontSize: 32, bold: true, color: C.text2, align: "left", valign: "middle", margin: 0 }, text: "" } },
    { text: { text: FOOT, options: { x: 0.6, y: 7.05, w: 9, h: 0.3, fontSize: 10, color: C.accent4, margin: 0, isTextBox: true } } } ],
  slideNumber: { x: 12.2, y: 7.05, w: 0.6, h: 0.3, fontSize: 10, color: C.accent4 } });
pres.defineSlideMaster({ title: "DARK", background: { color: C.background1 },
  objects: [
    { rect: { x: 0, y: 0, w: 13.333, h: 7.5, fill: { color: C.accent1 } } },
    { placeholder: { options: { name: "title", type: "title", x: 0.6, y: 0.35, w: 12.1, h: 0.8, fontSize: 32, bold: true, color: C.background1, align: "left", valign: "middle", margin: 0 }, text: "" } },
    { text: { text: FOOT, options: { x: 0.6, y: 7.05, w: 9, h: 0.3, fontSize: 10, color: C.accent3, margin: 0, isTextBox: true } } } ],
  slideNumber: { x: 12.2, y: 7.05, w: 0.6, h: 0.3, fontSize: 10, color: C.accent3 } });

let n = 0;
function content(title, notes) { const s = pres.addSlide({ masterName: "CONTENT" }); s.addText(title, { placeholder: "title" }); if (notes) s.addNotes(notes); return s; }
function card(s, x, y, w, h, fill, name) { s.addShape(pres.shapes.ROUNDED_RECTANGLE, { x, y, w, h, fill: { color: fill }, line: { color: fill, width: 0 }, rectRadius: 0.08, objectName: name || "card" }); }
function txt(s, t, o) { s.addText(t, Object.assign({ isTextBox: true, margin: 0.05, fontSize: 14, color: C.text1, valign: "top" }, o)); }
function bullets(arr, o) { return arr.map((t, i) => ({ text: t, options: Object.assign({ bullet: true, breakLine: i < arr.length - 1, paraSpaceAfter: 6 }, o || {}) })); }
function stat(s, x, y, w, h, big, label, fill, bigColor, labColor) {
  card(s, x, y, w, h, fill, "stat");
  txt(s, big, { x: x + 0.1, y: y + 0.12, w: w - 0.2, h: h * 0.5, fontSize: 36, bold: true, fontFace: "Cambria", color: bigColor, align: "center", valign: "middle" });
  txt(s, label, { x: x + 0.15, y: y + h * 0.55, w: w - 0.3, h: h * 0.4, fontSize: 13, color: labColor, align: "center", valign: "top" });
}

// ---- 1 title
{ const s = pres.addSlide({ masterName: "TITLE_DARK" });
  s.addText("Adaptive-Bandwidth Digital Lock-In Amplifier on Zynq UltraScale+", { isTextBox: true, x: 0.8, y: 1.6, w: 11.6, h: 1.8, fontFace: "Cambria", fontSize: 40, bold: true, color: C.background1, valign: "top", margin: 0 });
  s.addText("A parameterized streaming DSP accelerator, implemented and measured on the PYNQ-ZU board", { isTextBox: true, x: 0.8, y: 3.5, w: 11, h: 0.9, fontSize: 20, color: C.accent3, margin: 0, valign: "top" });
  s.addText("Phase 5: board results", { isTextBox: true, x: 0.8, y: 4.6, w: 4, h: 0.5, fontSize: 18, bold: true, color: C.accent2, margin: 0 });
  s.addText("Adithya Ram S.   |   Additional Project (3 credits)   |   Mentor: Dr. Ramesh Kumar V   |   IIIT Sri City", { isTextBox: true, x: 0.8, y: 6.5, w: 11.8, h: 0.4, fontSize: 14, color: C.accent3, margin: 0 });
  s.addNotes("Opening: this is the final presentation with the board results. Everything shown here was measured on the PYNQ-ZU, except the items marked as C model."); }

// ---- 2 problem
{ const s = content("Recovering a signal far below the noise", "A lock-in multiplies by a reference of the known frequency and averages. Noise averages to zero, the signal does not. The -63 dB figure is the weakest case we ran on the board; SNR is defined as A^2/2/sigma^2 over the full sample band.");
  card(s, 0.6, 1.5, 6.9, 4.6, C.background2, "left");
  txt(s, [ { text: "How a lock-in works", options: { bold: true, fontSize: 20, color: C.text2, breakLine: true, paraSpaceAfter: 10 } },
    ...bullets(["Mix the noisy input with a reference at the known frequency (I and Q).", "Low-pass filter: noise averages out, the signal stays.", "Extract amplitude and phase from the averaged I/Q.", "The filter bandwidth is the trade-off: narrow means cleaner but slower. Today it is set by hand."], { fontSize: 18 }) ],
    { x: 0.9, y: 1.75, w: 6.3, h: 4.2 });
  card(s, 7.8, 1.5, 4.9, 4.6, C.accent1, "right");
  txt(s, "-63 dB", { x: 8.0, y: 2.0, w: 4.5, h: 1.3, fontSize: 60, bold: true, fontFace: "Cambria", color: C.accent2, align: "center", valign: "middle" });
  txt(s, "weakest input SNR recovered on the board, with 4 to 6 % amplitude error and no manual bandwidth setting", { x: 8.1, y: 3.4, w: 4.3, h: 1.5, fontSize: 17, color: C.background1, align: "center" });
  txt(s, "Synthetic tone plus noise generated inside the FPGA. SNR = A²/2σ² over the sample band.", { x: 8.1, y: 4.9, w: 4.3, h: 0.9, fontSize: 12, color: C.accent3, align: "center" }); }

// ---- 3 architecture
{ const s = content("Architecture: baseline chain plus two additions", "Baseline structure follows Fan et al. (ZYNQ-7020). Amber blocks are what we added: the adaptive averager and three interchangeable extractors running on the same I/Q.");
  const bw = 1.9, by = 1.9, gap = 0.45; const labels = [["On-chip stimulus", "tone + noise"], ["Reference DDS", "+ quadrature mixer"], ["CIC + FIR", "R=128, 21 taps"], ["Adaptive averager", "k chosen online"], ["Extractors", "CORDIC | LUT | poly"]];
  labels.forEach((l, i) => { const x = 0.6 + i * (bw + gap); const add = i >= 3;
    card(s, x, by, bw, 1.3, add ? C.accent2 : C.accent1, "block");
    txt(s, [ { text: l[0], options: { bold: true, fontSize: 16, breakLine: true } }, { text: l[1], options: { fontSize: 13 } } ], { x: x + 0.05, y: by + 0.1, w: bw - 0.1, h: 1.1, align: "center", valign: "middle", color: add ? C.text1 : C.background1 });
    if (i < 4) s.addShape(pres.shapes.RIGHT_ARROW, { x: x + bw + 0.07, y: by + 0.5, w: 0.31, h: 0.3, fill: { color: C.accent4 }, line: { color: C.accent4, width: 0 }, objectName: "arrow" }); });
  txt(s, "Amber = added in this project", { x: 0.6, y: 3.35, w: 5, h: 0.35, fontSize: 12, color: C.accent4 });
  card(s, 0.6, 4.0, 5.9, 2.1, C.background2, "c1");
  txt(s, [ { text: "One HLS call per input sample", options: { bold: true, fontSize: 16, color: C.text2, breakLine: true, paraSpaceAfter: 6 } }, ...bullets(["Fixed-point integer arithmetic throughout", "32-bit phase accumulator, 1024-entry sine ROM", "40-bit averager state, k from 0 to 20"], { fontSize: 14 }) ], { x: 0.85, y: 4.15, w: 5.4, h: 1.8 });
  card(s, 6.8, 4.0, 5.9, 2.1, C.background2, "c2");
  txt(s, [ { text: "One AXI4-Lite interface", options: { bold: true, fontSize: 16, color: C.text2, breakLine: true, paraSpaceAfter: 6 } }, ...bullets(["Settings, status and a 512-record log memory", "Same registers for JTAG and for the ARM cores", "Baseline: Fan et al., ZYNQ-7020"], { fontSize: 14 }) ], { x: 7.05, y: 4.15, w: 5.4, h: 1.8 }); }

// ---- 4 what is new
{ const s = content("What is new, and what is not", "Be precise here. We do not claim a new lock-in principle. Adaptive filtering for lock-in detection has been published before, e.g. an adaptive Kalman filter DLIA. What we report is a simple hardware-friendly rule, and its measured behaviour on an FPGA next to a three-way extraction comparison.");
  [[0.6, "1", "Online adaptive bandwidth", ["Noise variance is estimated inside the block", "Every 32 outputs: k up, down or hold", "No manual time-constant choice", "Measured on the board against fixed k"]], [6.8, "2", "Three extractors on one data path", ["CORDIC, lookup table with interpolation, polynomial", "Same averaged I/Q, switchable", "Accuracy and area measured on hardware", "4,608 board points and 4.0 million C-model inputs"]]].forEach(([x, num, head, bl]) => {
    card(s, x, 1.5, 5.9, 3.9, C.accent1, "card");
    s.addShape(pres.shapes.OVAL, { x: x + 0.3, y: 1.75, w: 0.6, h: 0.6, fill: { color: C.accent2 }, line: { color: C.accent2, width: 0 }, objectName: "num" });
    txt(s, num, { x: x + 0.3, y: 1.75, w: 0.6, h: 0.6, fontSize: 22, bold: true, color: C.text1, align: "center", valign: "middle", margin: 0 });
    txt(s, head, { x: x + 1.05, y: 1.75, w: 4.6, h: 0.6, fontSize: 21, bold: true, fontFace: "Cambria", color: C.background1, valign: "middle" });
    txt(s, bullets(bl, { color: C.background1 }), { x: x + 0.35, y: 2.6, w: 5.2, h: 2.6, fontSize: 16 }); });
  card(s, 0.6, 5.65, 12.1, 1.1, C.accent3, "note");
  txt(s, [ { text: "Not claimed: ", options: { bold: true } }, { text: "a new lock-in principle. Adaptive filtering exists (e.g. an adaptive Kalman-filter lock-in, Chen et al. 2023). The contribution is a simple rule, implemented and quantified on an FPGA." } ], { x: 0.85, y: 5.75, w: 11.6, h: 0.9, fontSize: 15, color: C.text1, valign: "middle" }); }

// ---- 5 implementation
{ const s = content("How it is implemented on the board", "Flow: C++ in Vitis HLS, exported as an IP, placed in a Vivado block design with two AXI masters: JTAG for Tcl scripts and the Zynq processing system for Python on the Cortex-A53. The clock comes from the 125 MHz board oscillator via a clock wizard to 100 MHz.");
  const bx = (x, y, w, h, t, fill, col) => { card(s, x, y, w, h, fill, "bd"); txt(s, t, { x, y, w, h, fontSize: 13, bold: true, align: "center", valign: "middle", color: col }); };
  bx(0.6, 1.45, 2.3, 0.75, "JTAG-to-AXI\n(Vivado Tcl)", C.accent3, C.text1);
  bx(0.6, 2.45, 2.3, 0.75, "Zynq PS Cortex-A53\n(PYNQ Python)", C.accent3, C.text1);
  bx(3.4, 1.9, 2.0, 0.95, "AXI\ninterconnect", C.accent1, C.background1);
  bx(5.9, 1.9, 2.6, 0.95, "lockin_top (HLS IP)\n@ 0xA0000000", C.accent2, C.text1);
  bx(3.4, 3.35, 2.0, 0.7, "clk_wiz 125 to 100 MHz", C.background2, C.text1);
  s.addShape(pres.shapes.LINE, { x: 2.9, y: 1.82, w: 0.5, h: 0.55, line: { color: C.accent4, width: 1.5, endArrowType: "triangle" }, objectName: "l1" });
  s.addShape(pres.shapes.LINE, { x: 2.9, y: 2.82, w: 0.5, h: -0.5, line: { color: C.accent4, width: 1.5, endArrowType: "triangle" }, flipV: true, objectName: "l2" });
  s.addShape(pres.shapes.LINE, { x: 5.4, y: 2.37, w: 0.5, h: 0, line: { color: C.accent4, width: 1.5, endArrowType: "triangle" }, objectName: "l3" });
  txt(s, "Flow: C++ (Vitis HLS 2023.1)  to  IP export  to  Vivado 2023.1 block design  to  bitstream (100 MHz, timing met)  to  PYNQ 3.1.1 on the board.", { x: 0.6, y: 4.3, w: 7.9, h: 0.9, fontSize: 14, color: C.accent4 });
  txt(s, "All settings, status and a 512-record log are AXI4-Lite registers. Same register map from JTAG and from the ARM.", { x: 0.6, y: 5.25, w: 7.9, h: 0.9, fontSize: 14, color: C.accent4 });
  card(s, 8.8, 1.45, 3.9, 5.2, C.accent1, "code");
  txt(s, [ { text: "Adaptive rule in the IP (C++)", options: { bold: true, fontFace: "Calibri", fontSize: 13, color: C.accent2, breakLine: true, paraSpaceAfter: 8 } },
    { text: "if (adapt) {\n  if (vm16 > (sig >> 7)\n      && k < KMAX)  k++;\n  else if (vm16 < (sig >> 9)\n      && k > KMIN)  k--;\n}\n\ncordic_vectoring(...);\nlut_vectoring(...);\npoly_vectoring(...);", options: { fontFace: "Courier New", fontSize: 12, color: C.background1 } } ], { x: 9.0, y: 1.6, w: 3.5, h: 4.9 }); }

// ---- 6 math
{ const s = content("The math and number formats", "These are the equations for reviewer point three. Mixer outputs are Q4.28 products rounded and saturated to 16 bits. The averager is a first-order recursive filter whose gain is a power of two so it needs only a shift.");
  const rows = [["Mixer", "m_I = x cos(θ_r),   m_Q = −x sin(θ_r)", "Q4.28 product, round + saturate to int16"], ["Decimation", "CIC: 4 stages, R = 128; FIR: 21 taps", "1562.5 outputs/s at nominal 200 kS/s"], ["Averager", "z[m] = z[m−1] + 2^−k (y[m] − z[m−1])", "40-bit state, 22 fractional bits, k in 0..20"], ["Adaptive rule", "k+1 if v > S/2^7;  k−1 if v < S/2^9", "v = noise variance, S = |z|² − 2v, every 32 outputs"], ["Settling", "t90 = ln(10) · 2^k output periods", "1.47 ms × 2^k at nominal rate"], ["Extraction", "|z| = √(I²+Q²),  θ = atan2(Q, I)", "CORDIC 16 iterations | LUT 256 entries | poly order 4/6"]];
  rows.forEach((r, i) => { const y = 1.4 + i * 0.88; card(s, 0.6, y, 12.1, 0.78, i % 2 ? C.background2 : C.accent3, "row");
    txt(s, r[0], { x: 0.8, y, w: 1.9, h: 0.78, fontSize: 15, bold: true, color: C.text2, valign: "middle" });
    txt(s, r[1], { x: 2.8, y, w: 5.1, h: 0.78, fontSize: 15, fontFace: "Cambria", color: C.text1, valign: "middle" });
    txt(s, r[2], { x: 8.0, y, w: 4.6, h: 0.78, fontSize: 13, color: C.accent4, valign: "middle" }); }); }

// ---- 7 resources
{ const s = content("Resources, timing and power (routed design)", "Numbers are post-implementation from the hierarchical utilization report. The IP uses 8.2 percent of the LUTs and 5 percent of the DSPs. Power is Vivado vectorless estimate for the JTAG-only build.");
  s.addChart(pres.charts.BAR, [{ name: "LUTs", labels: ["Adaptive controller", "Poly extractor", "LUT extractor", "CORDIC extractor", "AXI-Lite slave", "FIR (each, x2)"], values: [3125, 1468, 1438, 776, 667, 222] }],
    { x: 0.6, y: 1.4, w: 6.8, h: 4.6, barDir: "bar", chartColors: [H.navy], showTitle: true, title: "LUTs per block", titleFontSize: 14, titleColor: H.navy, showValue: true, dataLabelPosition: "outEnd", dataLabelColor: H.navy, dataLabelFontSize: 12, catAxisLabelColor: H.gray, valAxisLabelColor: H.gray, catAxisLabelFontSize: 12, valAxisLabelFontSize: 10, valGridLine: { color: "E3E7F3", size: 0.5 }, catGridLine: { style: "none" }, showLegend: false, catAxisOrientation: "maxMin", catAxisLabelFontFace: "+mn-lt", valAxisLabelFontFace: "+mn-lt", dataLabelFontFace: "+mn-lt", titleFontFace: "+mn-lt" });
  stat(s, 7.8, 1.4, 2.35, 1.6, "9,554", "LUTs (8.2 %)", C.accent1, C.accent2, C.background1);
  stat(s, 10.35, 1.4, 2.35, 1.6, "63", "DSP slices (5.0 %)", C.accent1, C.accent2, C.background1);
  stat(s, 7.8, 3.2, 2.35, 1.6, "+3.26 ns", "setup slack at 100 MHz", C.accent3, C.text2, C.text1);
  stat(s, 10.35, 3.2, 2.35, 1.6, "0.54 W", "total, vectorless estimate", C.accent3, C.text2, C.text1);
  txt(s, "IP also uses 8 RAMB36 + 3 RAMB18 (log memory). With the processor interface the whole design is 12,545 LUTs and 12 BRAM tiles, still timing met (+3.55 ns).", { x: 7.8, y: 5.05, w: 4.9, h: 1.3, fontSize: 13, color: C.accent4 }); }

// ---- 8 verification
{ const s = content("Verification: does the board match the model?", "Three layers. A C reference reproduces every stage in integer arithmetic. Seventeen deliberate bugs were injected one at a time and all were caught by the testbench. On the board seven configurations were run twice: once through JTAG and once with the Cortex-A53 in control; every logged word matches.");
  stat(s, 0.6, 1.4, 3.8, 1.55, "57,344", "words compared on the board per route (7 x 8,192)", C.accent1, C.accent2, C.background1);
  stat(s, 0.6, 3.15, 3.8, 1.55, "0", "mismatches, JTAG and ARM-controlled", C.accent1, C.accent2, C.background1);
  stat(s, 0.6, 4.9, 3.8, 1.55, "17 / 17", "injected faults caught by the testbench", C.accent3, C.text2, C.text1);
  const hd = { bold: true, color: C.background1, fill: { color: C.accent1 }, fontSize: 13 };
  const cell = (t) => ({ text: t, options: { fontSize: 13 } });
  s.addTable([[{ text: "Test", options: hd }, { text: "What it covers", options: hd }], [cell("V1"), cell("Adaptive, strong signal")], [cell("V2"), cell("Fixed k = 7")], [cell("V3"), cell("Tiny signal + 0xC0000000 phase offset")], [cell("V4"), cell("Clipping: amp 32767, noise 65535")], [cell("V5"), cell("External input, constant -32768")], [cell("V6"), cell("Negative amplitude, detuned tone")], [cell("V7"), cell("Log spacing every 40 outputs")]],
    { x: 4.8, y: 1.4, w: 7.9, colW: [1.0, 6.9], rowH: 0.6, border: { type: "solid", color: "D5DBEE", pt: 0.75 }, fill: { color: C.background1 }, color: C.text1, valign: "middle" }); }

// ---- 9 extraction
{ const s = content("Three ways to extract magnitude and phase", "Board measurements over 4,608 points against float64. The CORDIC used on the board has no guard bits and carries a magnitude bias. A 3-guard-bit variant exists in the C model with about 1 LSB RMS, but it has not been run on the board, so it is labelled C model only.");
  const hd = { bold: true, color: C.background1, fill: { color: C.accent1 }, fontSize: 15, align: "center" };
  const c = (t, b) => ({ text: t, options: { fontSize: 16, align: "center", bold: !!b } });
  s.addTable([[{ text: "Method", options: hd }, { text: "Magnitude RMS error (LSB)", options: hd }, { text: "Angle RMS error", options: hd }, { text: "LUTs", options: hd }, { text: "DSPs", options: hd }],
    [c("CORDIC (16 it.)", 1), c("3.7"), c("1.28°"), c("776"), c("1")], [c("LUT + interp.", 1), c("0.66"), c("0.012°"), c("1,438"), c("3")], [c("Polynomial", 1), c("0.75"), c("0.006°"), c("1,468"), c("9")]],
    { x: 0.6, y: 1.45, w: 12.1, colW: [2.9, 3.4, 2.4, 1.9, 1.5], rowH: 0.7, border: { type: "solid", color: "D5DBEE", pt: 0.75 }, fill: { color: C.background1 }, color: C.text1, valign: "middle" });
  card(s, 0.6, 4.55, 5.9, 1.9, C.background2, "t1");
  txt(s, [ { text: "Trade-off", options: { bold: true, fontSize: 16, color: C.text2, breakLine: true, paraSpaceAfter: 6 } }, ...bullets(["CORDIC is smallest but least accurate", "LUT and polynomial are about 100 to 200 times more accurate in angle for about 2 times the LUTs"], { fontSize: 14 }) ], { x: 0.85, y: 4.7, w: 5.4, h: 1.8 });
  card(s, 6.8, 4.55, 5.9, 1.9, C.accent3, "t2");
  txt(s, [ { text: "Caveat", options: { bold: true, fontSize: 16, color: C.text2, breakLine: true, paraSpaceAfter: 6 } }, ...bullets(["Unguarded CORDIC has a constant magnitude bias that dominates at small inputs", "Guard-bit fix (about 1 LSB) is C model only, not on the board"], { fontSize: 14 }) ], { x: 7.05, y: 4.7, w: 5.4, h: 1.8 }); }

// ---- 10 steady state chart
{ const s = content("Adaptive bandwidth holds the error flat as noise grows", "Weak signal, amplitude 256. Error is the standard deviation of the magnitude estimate over the last 128 log records divided by the true value. Fixed short filters degrade with noise. Adaptive holds 4 to 6 percent by raising k. A wide fixed filter is more accurate but needs a long settling time, and at strong signal the adaptive mode is worse than a wide fixed filter.");
  s.addChart(pres.charts.LINE, [
    { name: "fixed k=4", labels: ["100", "300", "1000", "3000", "8000"], values: [0.9, 2.6, 8.8, 26.5, 62.3] },
    { name: "fixed k=8", labels: ["100", "300", "1000", "3000", "8000"], values: [0.2, 0.5, 1.8, 5.4, 14.7] },
    { name: "fixed k=12", labels: ["100", "300", "1000", "3000", "8000"], values: [0.0, 0.1, 0.2, 0.7, 1.9] },
    { name: "adaptive", labels: ["100", "300", "1000", "3000", "8000"], values: [4.3, 5.6, 6.1, 5.4, 3.7] }],
    { x: 0.6, y: 1.4, w: 7.9, h: 5.2, chartColors: [H.mid, H.gray, H.navy, H.amber], lineSize: 3, lineDataSymbolSize: 8, showTitle: true, title: "Relative error of |z| (%), amplitude 256 LSB", titleFontSize: 14, titleColor: H.navy, showLegend: true, legendPos: "b", legendFontSize: 12, legendColor: H.gray, catAxisLabelColor: H.gray, valAxisLabelColor: H.gray, catAxisLabelFontSize: 12, valAxisLabelFontSize: 11, showCatAxisTitle: true, catAxisTitle: "noise sigma (LSB)", catAxisTitleColor: H.gray, catAxisTitleFontSize: 12, valGridLine: { color: "E3E7F3", size: 0.5 }, catGridLine: { style: "none" }, catAxisLabelFontFace: "+mn-lt", valAxisLabelFontFace: "+mn-lt", legendFontFace: "+mn-lt", titleFontFace: "+mn-lt", catAxisTitleFontFace: "+mn-lt" });
  stat(s, 8.9, 1.4, 3.8, 1.6, "62 %  to  3.7 %", "fixed k=4 versus adaptive at sigma = 8000", C.accent1, C.accent2, C.background1);
  txt(s, bullets(["Adaptive k rose from 0 to 11 on its own", "Wide fixed filters are more accurate but settle in seconds", "At strong signal and low noise, adaptive is worse than a wide fixed filter (the dead-band cost)"], { color: C.text1 }), { x: 8.9, y: 3.25, w: 3.8, h: 3.3, fontSize: 14 }); }

// ---- 11 weak signal
{ const s = content("Weak-signal operation: -45 to -63 dB input SNR", "Noise sigma 8000 LSB; amplitude 64, 32, 16 and 8 LSB. Each run is about 90 seconds of board time. Error is RMS against the true amplitude over the last 128 records. At -63 dB the controller hit its upper limit k=20 and only two seeds were run, so those numbers are indicative.");
  s.addChart(pres.charts.BAR, [
    { name: "fixed k=12", labels: ["-45 dB", "-51 dB", "-57 dB"], values: [17.0, 33.8, 65.3] },
    { name: "fixed k=16", labels: ["-45 dB", "-51 dB", "-57 dB"], values: [2.8, 5.6, 11.4] },
    { name: "adaptive", labels: ["-45 dB", "-51 dB", "-57 dB"], values: [4.4, 4.2, 5.7] }],
    { x: 0.6, y: 1.4, w: 7.9, h: 5.2, barDir: "col", barGrouping: "clustered", chartColors: [H.mid, H.navy, H.amber], showTitle: true, title: "RMS error of |z| against the true value (%)", titleFontSize: 14, titleColor: H.navy, showValue: true, dataLabelFormatCode: "0.0", dataLabelPosition: "outEnd", dataLabelFontSize: 11, dataLabelColor: H.gray, showLegend: true, legendPos: "b", legendFontSize: 12, legendColor: H.gray, catAxisLabelColor: H.gray, valAxisLabelColor: H.gray, catAxisLabelFontSize: 12, valAxisLabelFontSize: 11, valGridLine: { color: "E3E7F3", size: 0.5 }, catGridLine: { style: "none" }, catAxisLabelFontFace: "+mn-lt", valAxisLabelFontFace: "+mn-lt", legendFontFace: "+mn-lt", titleFontFace: "+mn-lt", dataLabelFontFace: "+mn-lt" });
  stat(s, 8.9, 1.4, 3.8, 1.6, "k = 15 to 20", "chosen by the controller, no setting by the user", C.accent1, C.accent2, C.background1);
  stat(s, 8.9, 3.2, 3.8, 1.6, "5.7 % / 4.2 %", "at -63 dB, two seeds (k reached its limit of 20)", C.accent3, C.text2, C.text1);
  txt(s, "Fixed k=8 fails here: 57, 120 and 281 % error.", { x: 8.9, y: 5.05, w: 3.8, h: 0.9, fontSize: 14, color: C.accent4 }); }

// ---- 12 dynamics
{ const s = content("Settling time and a live run from the ARM", "Fixed-k settling matches theory. The times are nominal at 200 kS/s; the block actually runs 21 times faster so real board time is about 21 times shorter. The adaptive mode was already within 10 percent at the first log record after the step, which is a 20.5 ms bound, not a finer measurement. The live run came from Python on the Cortex-A53; k overshot to 18-19 at sigma 8000 and came back down after the noise was reduced.");
  const hd = { bold: true, color: C.background1, fill: { color: C.accent1 }, fontSize: 14, align: "center" };
  const c = (t, b) => ({ text: t, options: { fontSize: 15, align: "center", bold: !!b } });
  s.addTable([[{ text: "90 % settling after a step", options: hd }, { text: "Board", options: hd }, { text: "Theory", options: hd }], [c("fixed k = 4", 1), c("20.5 ms"), c("23.6 ms")], [c("fixed k = 8", 1), c("368.6 ms"), c("377 ms")], [c("fixed k = 12", 1), c("6.02 s"), c("6.04 s")], [c("adaptive", 1), c("≤ 20.5 ms*"), c("k starts at 0")]],
    { x: 0.6, y: 1.45, w: 6.4, colW: [2.8, 1.8, 1.8], rowH: 0.6, border: { type: "solid", color: "D5DBEE", pt: 0.75 }, fill: { color: C.background1 }, color: C.text1, valign: "middle" });
  txt(s, "*bounded by the log spacing (20.5 ms). Times are nominal at 200 kS/s; the board runs 21 times faster.", { x: 0.6, y: 4.55, w: 6.4, h: 0.8, fontSize: 12, color: C.accent4 });
  s.addChart(pres.charts.LINE, [{ name: "k", labels: ["100", "1000", "3000", "8000", "1000", "100"], values: [0, 5, 8, 18, 5, 0] }],
    { x: 7.3, y: 1.4, w: 5.4, h: 4.2, chartColors: [H.amber], lineSize: 3, lineDataSymbolSize: 9, showTitle: true, title: "Live run from the ARM: k follows noise sigma", titleFontSize: 13, titleColor: H.navy, showLegend: false, catAxisLabelColor: H.gray, valAxisLabelColor: H.gray, catAxisLabelFontSize: 12, valAxisLabelFontSize: 11, showCatAxisTitle: true, catAxisTitle: "sigma, in the order applied", catAxisTitleColor: H.gray, catAxisTitleFontSize: 11, showValue: true, dataLabelPosition: "t", dataLabelFontSize: 11, dataLabelColor: H.gray, valGridLine: { color: "E3E7F3", size: 0.5 }, catGridLine: { style: "none" }, catAxisLabelFontFace: "+mn-lt", valAxisLabelFontFace: "+mn-lt", titleFontFace: "+mn-lt", catAxisTitleFontFace: "+mn-lt", dataLabelFontFace: "+mn-lt" });
  txt(s, "Amplitude fixed at 256 (true |z| = 128). After the 8000 step k overshot to 18-19, then fell back once the noise dropped.", { x: 7.3, y: 5.7, w: 5.4, h: 0.95, fontSize: 12, color: C.accent4 }); }

// ---- 13 speed
{ const s = content("Fabric versus Cortex-A53: same source, 23 times faster", "Throughput was measured over JTAG and again from the ARM; both gave 4.27 MS/s. The A53 number is the same C++ function compiled with g++ -O2 on one core. It uses HLS arbitrary-precision types and is not NEON-optimised, so the ratio is specific to this code.");
  stat(s, 0.6, 1.5, 3.8, 2.4, "4.27 MS/s", "fabric, 100 MHz clock (JTAG and ARM readings agree)", C.accent1, C.accent2, C.background1);
  stat(s, 4.75, 1.5, 3.8, 2.4, "0.185 MS/s", "Cortex-A53, one core, same C++ source (compiled with -O2)", C.accent3, C.text2, C.text1);
  stat(s, 8.9, 1.5, 3.8, 2.4, "23 ×", "faster in the fabric", C.accent2, C.text1, C.text1);
  card(s, 0.6, 4.25, 12.1, 1.9, C.background2, "n");
  txt(s, bullets(["The fabric runs 21 times faster than the nominal 200 kS/s the design was specified for", "The requested pipelining for exactly 200 kS/s was not honoured by the HLS tool; throughput is measured, not assumed", "Software was not hand-optimised (no NEON, one core), so a tuned ARM implementation would narrow the gap"], { color: C.text1 }), { x: 0.9, y: 4.45, w: 11.5, h: 1.6, fontSize: 17 }); }

// ---- 14 limits
{ const s = content("Limits and honest scope", "State these before anyone asks. The input is synthetic. Power is an estimate. The adaptive rule is a fixed dead-band controller and has overshoot after a noise step.");
  const items = [["Synthetic input", "Tone plus pseudo-random noise generated inside the FPGA; no ADC, front end or function generator. Noise is near-Gaussian (kurtosis 2.70)."], ["Estimates and bounds", "Power is a Vivado vectorless estimate. Throughput came from JTAG and ARM polling. -63 dB used two seeds and hit k = 20."], ["Adaptive rule", "Fixed thresholds chosen by simulation, not optimised. k depends on history and can overshoot after a noise step."], ["CORDIC variant", "The 3-guard-bit CORDIC (about 1 LSB) is evaluated in the C model only."]];
  items.forEach((it, i) => { const x = 0.6 + (i % 2) * 6.15, y = 1.45 + Math.floor(i / 2) * 2.6; card(s, x, y, 5.95, 2.4, i % 3 === 0 ? C.accent3 : C.background2, "lim");
    txt(s, [ { text: it[0], options: { bold: true, fontSize: 18, color: C.text2, breakLine: true, paraSpaceAfter: 8 } }, { text: it[1], options: { fontSize: 16 } } ], { x: x + 0.25, y: y + 0.2, w: 5.45, h: 2.0 }); }); }

// ---- 15 status
{ const s = pres.addSlide({ masterName: "DARK" }); s.addText("Conclusion and status", { placeholder: "title" });
  s.addNotes("All planned phases are done. Phases 0-2 were the Python golden model; phase 3 built each block in Vitis HLS with its own testbench; phase 4 built the adaptive controller (floating point prototype, fixed point, then HLS); phase 5 integrated everything into one IP, built the Vivado block designs, and measured it on the board. The report is compiled in IEEE format (6 pages) and the similarity check is pending. Code, logs and bitstreams are in the project repository (private, can be shared on request).");
  const ph = [["Phases 0-2", "Python golden model, extraction study, fixed-point translation", "Done"], ["Phase 3", "Each block in Vitis HLS with testbench, co-simulation and post-implementation numbers", "Done"], ["Phase 4", "Adaptive-bandwidth controller: prototype, fixed point, HLS", "Done"], ["Phase 5", "One integrated IP, Vivado block designs, board verification, measurements, A53 comparison", "Done"], ["Report", "IEEE-format report (6 pages); code, logs and bitstreams in the project repository", "Similarity check pending"]];
  ph.forEach((p, i) => { const y = 1.45 + i * 0.82; card(s, 0.6, y, 12.1, 0.7, i === 4 ? C.accent3 : C.background2, "ph");
    txt(s, p[0], { x: 0.85, y, w: 1.9, h: 0.7, fontSize: 15, bold: true, color: C.text2, valign: "middle" });
    txt(s, p[1], { x: 2.8, y, w: 7.2, h: 0.7, fontSize: 14, color: C.text1, valign: "middle" });
    txt(s, p[2], { x: 10.1, y, w: 2.5, h: 0.7, fontSize: 13, bold: true, color: i === 4 ? C.text1 : C.accent5, valign: "middle", align: "right" }); });
  txt(s, "A working adaptive-bandwidth lock-in on the PYNQ-ZU, verified bit-exact and measured against fixed bandwidth, with a hardware comparison of three extraction methods.", { x: 0.6, y: 5.7, w: 12.1, h: 1.1, fontSize: 17, color: C.background1 }); }

// ---- 16 references
{ const s = content("References", "Details checked against the publishers' pages on 23 Nov 2026.");
  txt(s, bullets([
    "S. X. Fan et al., \"Design of digital lock-in amplifier based on ZYNQ-7020,\" Proc. CSAA/IET Int. Conf. Aircraft Utility Systems (AUS 2022), Nanchang, 17-20 Aug 2022, pp. 1428-1433 (baseline).",
    "C. Zhang, H. Liu, J. Ge, H. Dong, \"FPGA-based digital lock-in amplifier with high-precision automatic frequency tracking,\" IEEE Access, vol. 8, pp. 123114-123122, 2020.",
    "Z. Yao et al., \"A universal digital lock-in amplifier design for calibrating the photo-detector responses with standard black-bodies,\" Sensors, vol. 23, no. 21, 8902, Nov 2023.",
    "A. J. Harvie, J. C. de Mello, \"OLIA: an open-source digital lock-in amplifier,\" Front. Sens., vol. 4, 1102176, Mar 2023.",
    "H. Chen, Y. Li, L. Ou, \"A digital lock-in amplifier based on adaptive Kalman filter for rail defect detection,\" J. Sensors, vol. 2023, 7112942, 2023.",
    "J. Ge, X. Chen, B. Hu, \"Velocity-adaptable ACFM device for crack inspection in rails,\" IEEE Sensors J., vol. 23, no. 15, pp. 17034-17041, Aug 2023.",
    "J. E. Volder, \"The CORDIC trigonometric computing technique,\" IRE Trans. Electron. Comput., vol. EC-8, no. 3, 1959.",
    "E. B. Hogenauer, \"An economical class of digital filters for decimation and interpolation,\" IEEE Trans. ASSP, vol. 29, no. 2, 1981."], { color: C.text1 }), { x: 0.6, y: 1.4, w: 12.1, h: 5.4, fontSize: 13 }); }

(async () => { await pres.writeFile({ fileName: "lockin_final.pptx" }); await applyTheme("lockin_final.pptx", THEME); console.log("written"); })();
