//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Tue Oct  6 13:34:39 2026
//Host        : SUS running 64-bit major release  (build 9200)
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
   (ang_out,
    ang_out_ap_vld,
    ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_rst,
    mag_out,
    mag_out_ap_vld,
    x_in,
    y_in);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ANG_OUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ANG_OUT, LAYERED_METADATA undef" *) output [16:0]ang_out;
  output ang_out_ap_vld;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_RESET ap_rst, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) input ap_ctrl_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MAG_OUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MAG_OUT, LAYERED_METADATA undef" *) output [15:0]mag_out;
  output mag_out_ap_vld;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.X_IN DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.X_IN, LAYERED_METADATA undef" *) input [15:0]x_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.Y_IN DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.Y_IN, LAYERED_METADATA undef" *) input [15:0]y_in;

  wire ap_clk_0_1;
  wire ap_ctrl_0_1_done;
  wire ap_ctrl_0_1_idle;
  wire ap_ctrl_0_1_ready;
  wire ap_ctrl_0_1_start;
  wire ap_rst_0_1;
  wire [16:0]hls_inst_ang_out;
  wire hls_inst_ang_out_ap_vld;
  wire [15:0]hls_inst_mag_out;
  wire hls_inst_mag_out_ap_vld;
  wire [15:0]x_in_0_1;
  wire [15:0]y_in_0_1;

  assign ang_out[16:0] = hls_inst_ang_out;
  assign ang_out_ap_vld = hls_inst_ang_out_ap_vld;
  assign ap_clk_0_1 = ap_clk;
  assign ap_ctrl_0_1_start = ap_ctrl_start;
  assign ap_ctrl_done = ap_ctrl_0_1_done;
  assign ap_ctrl_idle = ap_ctrl_0_1_idle;
  assign ap_ctrl_ready = ap_ctrl_0_1_ready;
  assign ap_rst_0_1 = ap_rst;
  assign mag_out[15:0] = hls_inst_mag_out;
  assign mag_out_ap_vld = hls_inst_mag_out_ap_vld;
  assign x_in_0_1 = x_in[15:0];
  assign y_in_0_1 = y_in[15:0];
  bd_0_hls_inst_0 hls_inst
       (.ang_out(hls_inst_ang_out),
        .ang_out_ap_vld(hls_inst_ang_out_ap_vld),
        .ap_clk(ap_clk_0_1),
        .ap_done(ap_ctrl_0_1_done),
        .ap_idle(ap_ctrl_0_1_idle),
        .ap_ready(ap_ctrl_0_1_ready),
        .ap_rst(ap_rst_0_1),
        .ap_start(ap_ctrl_0_1_start),
        .mag_out(hls_inst_mag_out),
        .mag_out_ap_vld(hls_inst_mag_out_ap_vld),
        .x_in(x_in_0_1),
        .y_in(y_in_0_1));
endmodule
