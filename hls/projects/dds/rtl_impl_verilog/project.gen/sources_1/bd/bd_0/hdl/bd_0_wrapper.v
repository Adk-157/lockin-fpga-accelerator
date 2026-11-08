//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Thu Oct 15 02:42:44 2026
//Host        : SUS running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_rst,
    cos_out,
    cos_out_ap_vld,
    phase_inc,
    rst_r,
    sin_out,
    sin_out_ap_vld);
  input ap_clk;
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  input ap_rst;
  output [15:0]cos_out;
  output cos_out_ap_vld;
  input [31:0]phase_inc;
  input rst_r;
  output [15:0]sin_out;
  output sin_out_ap_vld;

  wire ap_clk;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire ap_rst;
  wire [15:0]cos_out;
  wire cos_out_ap_vld;
  wire [31:0]phase_inc;
  wire rst_r;
  wire [15:0]sin_out;
  wire sin_out_ap_vld;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .ap_rst(ap_rst),
        .cos_out(cos_out),
        .cos_out_ap_vld(cos_out_ap_vld),
        .phase_inc(phase_inc),
        .rst_r(rst_r),
        .sin_out(sin_out),
        .sin_out_ap_vld(sin_out_ap_vld));
endmodule
