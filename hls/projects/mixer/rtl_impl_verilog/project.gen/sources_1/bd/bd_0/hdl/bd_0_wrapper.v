//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Sat Oct 31 23:10:13 2026
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
    c,
    i_out,
    i_out_ap_vld,
    q_out,
    q_out_ap_vld,
    s,
    valid_in,
    valid_out,
    valid_out_ap_vld,
    x);
  input ap_clk;
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  input ap_rst;
  input [15:0]c;
  output [15:0]i_out;
  output i_out_ap_vld;
  output [15:0]q_out;
  output q_out_ap_vld;
  input [15:0]s;
  input valid_in;
  output valid_out;
  output valid_out_ap_vld;
  input [15:0]x;

  wire ap_clk;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire ap_rst;
  wire [15:0]c;
  wire [15:0]i_out;
  wire i_out_ap_vld;
  wire [15:0]q_out;
  wire q_out_ap_vld;
  wire [15:0]s;
  wire valid_in;
  wire valid_out;
  wire valid_out_ap_vld;
  wire [15:0]x;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .ap_rst(ap_rst),
        .c(c),
        .i_out(i_out),
        .i_out_ap_vld(i_out_ap_vld),
        .q_out(q_out),
        .q_out_ap_vld(q_out_ap_vld),
        .s(s),
        .valid_in(valid_in),
        .valid_out(valid_out),
        .valid_out_ap_vld(valid_out_ap_vld),
        .x(x));
endmodule
