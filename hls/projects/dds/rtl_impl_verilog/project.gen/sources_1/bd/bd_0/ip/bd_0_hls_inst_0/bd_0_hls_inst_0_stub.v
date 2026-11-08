// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Oct 15 02:43:45 2026
// Host        : SUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/adith/OneDrive/Desktop/College/FPGA/vitis/dds/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu5eg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "dds_sincos,Vivado 2023.1" *)
module bd_0_hls_inst_0(sin_out_ap_vld, cos_out_ap_vld, ap_clk, ap_rst, 
  ap_start, ap_done, ap_idle, ap_ready, rst_r, phase_inc, sin_out, cos_out)
/* synthesis syn_black_box black_box_pad_pin="sin_out_ap_vld,cos_out_ap_vld,ap_rst,ap_start,ap_done,ap_idle,ap_ready,rst_r,phase_inc[31:0],sin_out[15:0],cos_out[15:0]" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  output sin_out_ap_vld;
  output cos_out_ap_vld;
  input ap_clk /* synthesis syn_isclock = 1 */;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input rst_r;
  input [31:0]phase_inc;
  output [15:0]sin_out;
  output [15:0]cos_out;
endmodule
