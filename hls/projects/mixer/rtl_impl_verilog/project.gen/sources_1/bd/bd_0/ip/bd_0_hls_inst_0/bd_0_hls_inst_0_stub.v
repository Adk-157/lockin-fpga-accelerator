// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Oct 31 23:11:10 2026
// Host        : SUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/adith/OneDrive/Desktop/College/FPGA/vitis/mixer/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu5eg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mixer,Vivado 2023.1" *)
module bd_0_hls_inst_0(valid_out_ap_vld, i_out_ap_vld, q_out_ap_vld, 
  ap_clk, ap_rst, ap_start, ap_done, ap_idle, ap_ready, valid_in, x, s, c, valid_out, i_out, q_out)
/* synthesis syn_black_box black_box_pad_pin="valid_out_ap_vld,i_out_ap_vld,q_out_ap_vld,ap_rst,ap_start,ap_done,ap_idle,ap_ready,valid_in,x[15:0],s[15:0],c[15:0],valid_out,i_out[15:0],q_out[15:0]" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  output valid_out_ap_vld;
  output i_out_ap_vld;
  output q_out_ap_vld;
  input ap_clk /* synthesis syn_isclock = 1 */;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input valid_in;
  input [15:0]x;
  input [15:0]s;
  input [15:0]c;
  output valid_out;
  output [15:0]i_out;
  output [15:0]q_out;
endmodule
