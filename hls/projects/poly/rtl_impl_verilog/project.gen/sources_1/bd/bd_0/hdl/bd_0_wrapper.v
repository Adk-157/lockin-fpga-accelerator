//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Tue Oct  6 13:34:39 2026
//Host        : SUS running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
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
  output [16:0]ang_out;
  output ang_out_ap_vld;
  input ap_clk;
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  input ap_rst;
  output [15:0]mag_out;
  output mag_out_ap_vld;
  input [15:0]x_in;
  input [15:0]y_in;

  wire [16:0]ang_out;
  wire ang_out_ap_vld;
  wire ap_clk;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire ap_rst;
  wire [15:0]mag_out;
  wire mag_out_ap_vld;
  wire [15:0]x_in;
  wire [15:0]y_in;

  bd_0 bd_0_i
       (.ang_out(ang_out),
        .ang_out_ap_vld(ang_out_ap_vld),
        .ap_clk(ap_clk),
        .ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .ap_rst(ap_rst),
        .mag_out(mag_out),
        .mag_out_ap_vld(mag_out_ap_vld),
        .x_in(x_in),
        .y_in(y_in));
endmodule
