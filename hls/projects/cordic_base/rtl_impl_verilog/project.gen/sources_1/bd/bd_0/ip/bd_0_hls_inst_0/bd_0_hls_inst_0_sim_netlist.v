// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Oct  6 00:43:22 2026
// Host        : SUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/adith/AppData/Roaming/Xilinx/Vitis/cordic_base/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_sim_netlist.v
// Design      : bd_0_hls_inst_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu5eg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,cordic_vectoring,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "cordic_vectoring,Vivado 2023.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module bd_0_hls_inst_0
   (mag_out_ap_vld,
    ang_out_ap_vld,
    ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    x_in,
    y_in,
    mag_out,
    ang_out);
  output mag_out_ap_vld;
  output ang_out_ap_vld;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 x_in DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME x_in, LAYERED_METADATA undef" *) input [15:0]x_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 y_in DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME y_in, LAYERED_METADATA undef" *) input [15:0]y_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 mag_out DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mag_out, LAYERED_METADATA undef" *) output [15:0]mag_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 ang_out DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ang_out, LAYERED_METADATA undef" *) output [15:0]ang_out;

  wire \<const0> ;
  wire [15:1]\^ang_out ;
  wire ang_out_ap_vld;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [15:0]mag_out;
  wire mag_out_ap_vld;
  wire [15:0]x_in;
  wire [15:0]y_in;
  wire [0:0]NLW_inst_ang_out_UNCONNECTED;

  assign ang_out[15:1] = \^ang_out [15:1];
  assign ang_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_pp0_stage0 = "1'b1" *) 
  bd_0_hls_inst_0_cordic_vectoring inst
       (.ang_out({\^ang_out ,NLW_inst_ang_out_UNCONNECTED[0]}),
        .ang_out_ap_vld(ang_out_ap_vld),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .mag_out(mag_out),
        .mag_out_ap_vld(mag_out_ap_vld),
        .x_in(x_in),
        .y_in(y_in));
endmodule

(* ORIG_REF_NAME = "cordic_vectoring" *) (* ap_ST_fsm_pp0_stage0 = "1'b1" *) (* hls_module = "yes" *) 
module bd_0_hls_inst_0_cordic_vectoring
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    x_in,
    y_in,
    mag_out,
    mag_out_ap_vld,
    ang_out,
    ang_out_ap_vld);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [15:0]x_in;
  input [15:0]y_in;
  output [15:0]mag_out;
  output mag_out_ap_vld;
  output [15:0]ang_out;
  output ang_out_ap_vld;

  wire \<const0> ;
  wire B0;
  wire [14:9]a_fu_1631_p2;
  wire [6:6]add_ln43_5_fu_1602_p2;
  wire [1:1]add_ln43_7_fu_937_p2;
  wire [14:1]add_ln43_9_fu_952_p2;
  wire \add_ln43_9_reg_1765[14]_i_11_n_0 ;
  wire \add_ln43_9_reg_1765[14]_i_12_n_0 ;
  wire \add_ln43_9_reg_1765[14]_i_13_n_0 ;
  wire \add_ln43_9_reg_1765[14]_i_14_n_0 ;
  wire \add_ln43_9_reg_1765[14]_i_15_n_0 ;
  wire \add_ln43_9_reg_1765[14]_i_16_n_0 ;
  wire \add_ln43_9_reg_1765[14]_i_17_n_0 ;
  wire \add_ln43_9_reg_1765[14]_i_18_n_0 ;
  wire \add_ln43_9_reg_1765[14]_i_19_n_0 ;
  wire \add_ln43_9_reg_1765[14]_i_20_n_0 ;
  wire \add_ln43_9_reg_1765[14]_i_2_n_0 ;
  wire \add_ln43_9_reg_1765[14]_i_3_n_0 ;
  wire \add_ln43_9_reg_1765[14]_i_4_n_0 ;
  wire \add_ln43_9_reg_1765[14]_i_5_n_0 ;
  wire \add_ln43_9_reg_1765[14]_i_6_n_0 ;
  wire \add_ln43_9_reg_1765[14]_i_7_n_0 ;
  wire \add_ln43_9_reg_1765[14]_i_8_n_0 ;
  wire \add_ln43_9_reg_1765[8]_i_10_n_0 ;
  wire \add_ln43_9_reg_1765[8]_i_11_n_0 ;
  wire \add_ln43_9_reg_1765[8]_i_12_n_0 ;
  wire \add_ln43_9_reg_1765[8]_i_13_n_0 ;
  wire \add_ln43_9_reg_1765[8]_i_14_n_0 ;
  wire \add_ln43_9_reg_1765[8]_i_15_n_0 ;
  wire \add_ln43_9_reg_1765[8]_i_16_n_0 ;
  wire \add_ln43_9_reg_1765[8]_i_17_n_0 ;
  wire \add_ln43_9_reg_1765[8]_i_2_n_0 ;
  wire \add_ln43_9_reg_1765[8]_i_3_n_0 ;
  wire \add_ln43_9_reg_1765[8]_i_4_n_0 ;
  wire \add_ln43_9_reg_1765[8]_i_5_n_0 ;
  wire \add_ln43_9_reg_1765[8]_i_6_n_0 ;
  wire \add_ln43_9_reg_1765[8]_i_7_n_0 ;
  wire \add_ln43_9_reg_1765[8]_i_8_n_0 ;
  wire \add_ln43_9_reg_1765_reg[14]_i_10_n_0 ;
  wire \add_ln43_9_reg_1765_reg[14]_i_10_n_1 ;
  wire \add_ln43_9_reg_1765_reg[14]_i_10_n_10 ;
  wire \add_ln43_9_reg_1765_reg[14]_i_10_n_11 ;
  wire \add_ln43_9_reg_1765_reg[14]_i_10_n_12 ;
  wire \add_ln43_9_reg_1765_reg[14]_i_10_n_13 ;
  wire \add_ln43_9_reg_1765_reg[14]_i_10_n_14 ;
  wire \add_ln43_9_reg_1765_reg[14]_i_10_n_15 ;
  wire \add_ln43_9_reg_1765_reg[14]_i_10_n_2 ;
  wire \add_ln43_9_reg_1765_reg[14]_i_10_n_3 ;
  wire \add_ln43_9_reg_1765_reg[14]_i_10_n_4 ;
  wire \add_ln43_9_reg_1765_reg[14]_i_10_n_5 ;
  wire \add_ln43_9_reg_1765_reg[14]_i_10_n_6 ;
  wire \add_ln43_9_reg_1765_reg[14]_i_10_n_7 ;
  wire \add_ln43_9_reg_1765_reg[14]_i_10_n_8 ;
  wire \add_ln43_9_reg_1765_reg[14]_i_10_n_9 ;
  wire \add_ln43_9_reg_1765_reg[14]_i_1_n_3 ;
  wire \add_ln43_9_reg_1765_reg[14]_i_1_n_4 ;
  wire \add_ln43_9_reg_1765_reg[14]_i_1_n_5 ;
  wire \add_ln43_9_reg_1765_reg[14]_i_1_n_6 ;
  wire \add_ln43_9_reg_1765_reg[14]_i_1_n_7 ;
  wire \add_ln43_9_reg_1765_reg[14]_i_9_n_15 ;
  wire \add_ln43_9_reg_1765_reg[14]_i_9_n_7 ;
  wire \add_ln43_9_reg_1765_reg[8]_i_1_n_0 ;
  wire \add_ln43_9_reg_1765_reg[8]_i_1_n_1 ;
  wire \add_ln43_9_reg_1765_reg[8]_i_1_n_2 ;
  wire \add_ln43_9_reg_1765_reg[8]_i_1_n_3 ;
  wire \add_ln43_9_reg_1765_reg[8]_i_1_n_4 ;
  wire \add_ln43_9_reg_1765_reg[8]_i_1_n_5 ;
  wire \add_ln43_9_reg_1765_reg[8]_i_1_n_6 ;
  wire \add_ln43_9_reg_1765_reg[8]_i_1_n_7 ;
  wire \add_ln43_9_reg_1765_reg_n_0_[10] ;
  wire \add_ln43_9_reg_1765_reg_n_0_[11] ;
  wire \add_ln43_9_reg_1765_reg_n_0_[12] ;
  wire \add_ln43_9_reg_1765_reg_n_0_[13] ;
  wire \add_ln43_9_reg_1765_reg_n_0_[14] ;
  wire \add_ln43_9_reg_1765_reg_n_0_[1] ;
  wire \add_ln43_9_reg_1765_reg_n_0_[2] ;
  wire \add_ln43_9_reg_1765_reg_n_0_[3] ;
  wire \add_ln43_9_reg_1765_reg_n_0_[4] ;
  wire \add_ln43_9_reg_1765_reg_n_0_[5] ;
  wire \add_ln43_9_reg_1765_reg_n_0_[6] ;
  wire \add_ln43_9_reg_1765_reg_n_0_[7] ;
  wire \add_ln43_9_reg_1765_reg_n_0_[8] ;
  wire \add_ln43_9_reg_1765_reg_n_0_[9] ;
  wire [15:1]\^ang_out ;
  wire \ang_out[13]_INST_0_i_1_n_0 ;
  wire \ang_out[15]_INST_0_i_10_n_0 ;
  wire \ang_out[15]_INST_0_i_11_n_0 ;
  wire \ang_out[15]_INST_0_i_12_n_0 ;
  wire \ang_out[15]_INST_0_i_13_n_0 ;
  wire \ang_out[15]_INST_0_i_14_n_0 ;
  wire \ang_out[15]_INST_0_i_15_n_0 ;
  wire \ang_out[15]_INST_0_i_16_n_0 ;
  wire \ang_out[15]_INST_0_i_17_n_0 ;
  wire \ang_out[15]_INST_0_i_18_n_0 ;
  wire \ang_out[15]_INST_0_i_19_n_0 ;
  wire \ang_out[15]_INST_0_i_1_n_2 ;
  wire \ang_out[15]_INST_0_i_1_n_4 ;
  wire \ang_out[15]_INST_0_i_1_n_5 ;
  wire \ang_out[15]_INST_0_i_1_n_6 ;
  wire \ang_out[15]_INST_0_i_1_n_7 ;
  wire \ang_out[15]_INST_0_i_20_n_0 ;
  wire \ang_out[15]_INST_0_i_21_n_0 ;
  wire \ang_out[15]_INST_0_i_22_n_0 ;
  wire \ang_out[15]_INST_0_i_23_n_0 ;
  wire \ang_out[15]_INST_0_i_24_n_0 ;
  wire \ang_out[15]_INST_0_i_25_n_0 ;
  wire \ang_out[15]_INST_0_i_26_n_0 ;
  wire \ang_out[15]_INST_0_i_27_n_0 ;
  wire \ang_out[15]_INST_0_i_28_n_0 ;
  wire \ang_out[15]_INST_0_i_29_n_0 ;
  wire \ang_out[15]_INST_0_i_2_n_4 ;
  wire \ang_out[15]_INST_0_i_2_n_5 ;
  wire \ang_out[15]_INST_0_i_2_n_6 ;
  wire \ang_out[15]_INST_0_i_2_n_7 ;
  wire \ang_out[15]_INST_0_i_3_n_0 ;
  wire \ang_out[15]_INST_0_i_4_n_0 ;
  wire \ang_out[15]_INST_0_i_5_n_4 ;
  wire \ang_out[15]_INST_0_i_5_n_5 ;
  wire \ang_out[15]_INST_0_i_5_n_6 ;
  wire \ang_out[15]_INST_0_i_5_n_7 ;
  wire \ang_out[15]_INST_0_i_6_n_0 ;
  wire \ang_out[15]_INST_0_i_7_n_0 ;
  wire \ang_out[15]_INST_0_i_8_n_0 ;
  wire \ang_out[15]_INST_0_i_9_n_0 ;
  wire \ang_out[2]_INST_0_i_10_n_0 ;
  wire \ang_out[2]_INST_0_i_11_n_0 ;
  wire \ang_out[2]_INST_0_i_12_n_0 ;
  wire \ang_out[2]_INST_0_i_13_n_0 ;
  wire \ang_out[2]_INST_0_i_14_n_0 ;
  wire \ang_out[2]_INST_0_i_15_n_0 ;
  wire \ang_out[2]_INST_0_i_16_n_0 ;
  wire \ang_out[2]_INST_0_i_17_n_0 ;
  wire \ang_out[2]_INST_0_i_18_n_1 ;
  wire \ang_out[2]_INST_0_i_18_n_2 ;
  wire \ang_out[2]_INST_0_i_18_n_3 ;
  wire \ang_out[2]_INST_0_i_18_n_4 ;
  wire \ang_out[2]_INST_0_i_18_n_5 ;
  wire \ang_out[2]_INST_0_i_18_n_6 ;
  wire \ang_out[2]_INST_0_i_18_n_7 ;
  wire \ang_out[2]_INST_0_i_19_n_5 ;
  wire \ang_out[2]_INST_0_i_19_n_6 ;
  wire \ang_out[2]_INST_0_i_19_n_7 ;
  wire \ang_out[2]_INST_0_i_1_n_0 ;
  wire \ang_out[2]_INST_0_i_20_n_0 ;
  wire \ang_out[2]_INST_0_i_21_n_0 ;
  wire \ang_out[2]_INST_0_i_22_n_0 ;
  wire \ang_out[2]_INST_0_i_23_n_0 ;
  wire \ang_out[2]_INST_0_i_24_n_0 ;
  wire \ang_out[2]_INST_0_i_25_n_0 ;
  wire \ang_out[2]_INST_0_i_27_n_0 ;
  wire \ang_out[2]_INST_0_i_28_n_0 ;
  wire \ang_out[2]_INST_0_i_29_n_0 ;
  wire \ang_out[2]_INST_0_i_2_n_0 ;
  wire \ang_out[2]_INST_0_i_30_n_0 ;
  wire \ang_out[2]_INST_0_i_31_n_0 ;
  wire \ang_out[2]_INST_0_i_32_n_0 ;
  wire \ang_out[2]_INST_0_i_33_n_0 ;
  wire \ang_out[2]_INST_0_i_34_n_0 ;
  wire \ang_out[2]_INST_0_i_35_n_0 ;
  wire \ang_out[2]_INST_0_i_36_n_0 ;
  wire \ang_out[2]_INST_0_i_37_n_0 ;
  wire \ang_out[2]_INST_0_i_3_n_0 ;
  wire \ang_out[2]_INST_0_i_4_n_0 ;
  wire \ang_out[2]_INST_0_i_5_n_0 ;
  wire \ang_out[2]_INST_0_i_6_n_0 ;
  wire \ang_out[2]_INST_0_i_7_n_0 ;
  wire \ang_out[2]_INST_0_i_8_n_0 ;
  wire \ang_out[2]_INST_0_i_9_n_0 ;
  wire \ang_out[2]_INST_0_n_0 ;
  wire \ang_out[2]_INST_0_n_1 ;
  wire \ang_out[2]_INST_0_n_2 ;
  wire \ang_out[2]_INST_0_n_3 ;
  wire \ang_out[2]_INST_0_n_4 ;
  wire \ang_out[2]_INST_0_n_5 ;
  wire \ang_out[2]_INST_0_n_6 ;
  wire \ang_out[2]_INST_0_n_7 ;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter2;
  wire ap_idle;
  wire ap_rst;
  wire ap_start;
  wire in;
  wire [15:0]mag_out;
  wire [13:8]off_1_reg_1678;
  wire \off_1_reg_1678[12]_i_1_n_0 ;
  wire \off_1_reg_1678[13]_i_1_n_0 ;
  wire \off_1_reg_1678[13]_i_2_n_0 ;
  wire \off_1_reg_1678[13]_i_3_n_0 ;
  wire \off_1_reg_1678[13]_i_4_n_0 ;
  wire p_0_in;
  wire [16:0]p_0_in0_out;
  wire sel;
  wire [16:16]sext_ln11_1_fu_394_p1;
  wire [14:0]sext_ln11_1_fu_394_p1__0;
  wire [16:0]sext_ln11_2_fu_450_p1;
  wire sext_ln27_2_fu_492_p10;
  wire [15:0]sext_ln27_fu_408_p1;
  wire [13:2]sext_ln43_4_fu_1618_p1;
  wire [14:1]sext_ln43_6_fu_1622_p1;
  wire tmp_10_reg_1738;
  wire \tmp_10_reg_1738[0]_i_2_n_0 ;
  wire \tmp_10_reg_1738[0]_i_3_n_0 ;
  wire tmp_10_reg_1738_pp0_iter2_reg;
  wire \tmp_10_reg_1738_reg[0]_i_1_n_7 ;
  wire tmp_11_reg_1770;
  wire tmp_12_reg_1775;
  wire \tmp_12_reg_1775[0]_i_15_n_0 ;
  wire \tmp_12_reg_1775[0]_i_16_n_0 ;
  wire \tmp_12_reg_1775[0]_i_17_n_0 ;
  wire \tmp_12_reg_1775[0]_i_18_n_0 ;
  wire \tmp_12_reg_1775[0]_i_19_n_0 ;
  wire \tmp_12_reg_1775[0]_i_20_n_0 ;
  wire \tmp_12_reg_1775[0]_i_21_n_0 ;
  wire \tmp_12_reg_1775[0]_i_22_n_0 ;
  wire \tmp_12_reg_1775[0]_i_23_n_0 ;
  wire \tmp_12_reg_1775[0]_i_32_n_0 ;
  wire \tmp_12_reg_1775[0]_i_33_n_0 ;
  wire \tmp_12_reg_1775[0]_i_34_n_0 ;
  wire \tmp_12_reg_1775[0]_i_35_n_0 ;
  wire \tmp_12_reg_1775[0]_i_36_n_0 ;
  wire \tmp_12_reg_1775[0]_i_37_n_0 ;
  wire \tmp_12_reg_1775[0]_i_38_n_0 ;
  wire \tmp_12_reg_1775[0]_i_39_n_0 ;
  wire \tmp_12_reg_1775[0]_i_4_n_0 ;
  wire \tmp_12_reg_1775[0]_i_5_n_0 ;
  wire \tmp_12_reg_1775_reg[0]_i_1_n_7 ;
  wire \tmp_12_reg_1775_reg[0]_i_2_n_0 ;
  wire \tmp_12_reg_1775_reg[0]_i_2_n_1 ;
  wire \tmp_12_reg_1775_reg[0]_i_2_n_2 ;
  wire \tmp_12_reg_1775_reg[0]_i_2_n_3 ;
  wire \tmp_12_reg_1775_reg[0]_i_2_n_4 ;
  wire \tmp_12_reg_1775_reg[0]_i_2_n_5 ;
  wire \tmp_12_reg_1775_reg[0]_i_2_n_6 ;
  wire \tmp_12_reg_1775_reg[0]_i_2_n_7 ;
  wire \tmp_12_reg_1775_reg[0]_i_6_n_0 ;
  wire \tmp_12_reg_1775_reg[0]_i_6_n_1 ;
  wire \tmp_12_reg_1775_reg[0]_i_6_n_2 ;
  wire \tmp_12_reg_1775_reg[0]_i_6_n_3 ;
  wire \tmp_12_reg_1775_reg[0]_i_6_n_4 ;
  wire \tmp_12_reg_1775_reg[0]_i_6_n_5 ;
  wire \tmp_12_reg_1775_reg[0]_i_6_n_6 ;
  wire \tmp_12_reg_1775_reg[0]_i_6_n_7 ;
  wire tmp_13_reg_1780;
  wire \tmp_13_reg_1780[0]_i_10_n_0 ;
  wire \tmp_13_reg_1780[0]_i_11_n_0 ;
  wire \tmp_13_reg_1780[0]_i_12_n_0 ;
  wire \tmp_13_reg_1780[0]_i_16_n_0 ;
  wire \tmp_13_reg_1780[0]_i_3_n_0 ;
  wire \tmp_13_reg_1780[0]_i_4_n_0 ;
  wire \tmp_13_reg_1780[0]_i_5_n_0 ;
  wire \tmp_13_reg_1780[0]_i_6_n_0 ;
  wire \tmp_13_reg_1780[0]_i_7_n_0 ;
  wire \tmp_13_reg_1780[0]_i_8_n_0 ;
  wire \tmp_13_reg_1780[0]_i_9_n_0 ;
  wire \tmp_13_reg_1780_reg[0]_i_13_n_7 ;
  wire \tmp_13_reg_1780_reg[0]_i_1_n_7 ;
  wire \tmp_13_reg_1780_reg[0]_i_2_n_0 ;
  wire \tmp_13_reg_1780_reg[0]_i_2_n_1 ;
  wire \tmp_13_reg_1780_reg[0]_i_2_n_2 ;
  wire \tmp_13_reg_1780_reg[0]_i_2_n_3 ;
  wire \tmp_13_reg_1780_reg[0]_i_2_n_4 ;
  wire \tmp_13_reg_1780_reg[0]_i_2_n_5 ;
  wire \tmp_13_reg_1780_reg[0]_i_2_n_6 ;
  wire \tmp_13_reg_1780_reg[0]_i_2_n_7 ;
  wire tmp_14_reg_1785;
  wire \tmp_14_reg_1785[0]_i_2_n_0 ;
  wire \tmp_14_reg_1785[0]_i_3_n_0 ;
  wire \tmp_14_reg_1785_reg[0]_i_1_n_7 ;
  wire \tmp_14_reg_1785_reg[0]_i_4_n_7 ;
  wire tmp_15_reg_1812;
  wire \tmp_15_reg_1812[0]_i_2_n_0 ;
  wire \tmp_15_reg_1812[0]_i_3_n_0 ;
  wire \tmp_15_reg_1812_reg[0]_i_1_n_7 ;
  wire \tmp_2_reg_1683_pp0_iter1_reg_reg[0]_srl2_n_0 ;
  wire tmp_2_reg_1683_pp0_iter2_reg;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_10_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_11_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_12_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_13_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_14_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_15_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_16_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_17_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_18_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_19_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_20_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_21_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_22_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_23_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_24_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_25_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_25_n_1 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_25_n_2 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_25_n_3 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_25_n_4 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_25_n_5 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_25_n_6 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_25_n_7 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_26_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_27_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_28_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_29_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_30_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_31_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_32_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_33_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_34_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_35_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_36_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_37_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_38_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_39_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_40_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_41_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_42_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_43_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_44_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_45_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_46_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_47_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_48_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_49_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_4_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_4_n_1 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_4_n_2 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_4_n_3 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_4_n_4 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_4_n_5 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_4_n_6 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_4_n_7 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_50_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_51_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_52_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_53_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_54_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_59_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_5_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_60_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_63_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_64_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_65_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_66_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_67_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_68_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_69_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_6_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_6_n_1 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_6_n_2 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_6_n_3 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_6_n_4 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_6_n_5 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_6_n_6 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_6_n_7 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_70_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_71_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_72_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_73_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_74_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_75_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_76_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_77_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_7_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_8_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_8_n_1 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_8_n_2 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_8_n_3 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_8_n_4 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_8_n_5 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_8_n_6 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_8_n_7 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_9_n_0 ;
  wire \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_n_0 ;
  wire tmp_3_reg_1689_pp0_iter2_reg;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_10_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_11_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_12_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_13_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_14_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_15_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_16_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_17_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_18_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_19_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_20_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_21_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_22_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_23_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_24_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_25_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_26_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_27_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_28_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_29_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_30_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_31_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_32_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_33_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_34_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_35_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_36_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_37_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_38_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_39_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_4_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_4_n_1 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_4_n_2 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_4_n_3 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_4_n_4 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_4_n_5 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_4_n_6 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_4_n_7 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_5_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_6_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_6_n_1 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_6_n_2 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_6_n_3 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_6_n_4 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_6_n_5 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_6_n_6 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_6_n_7 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_8_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_9_n_0 ;
  wire \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_n_0 ;
  wire tmp_4_reg_1694_pp0_iter2_reg;
  wire \tmp_5_reg_1699_pp0_iter1_reg_reg[0]_srl2_i_3_n_7 ;
  wire \tmp_5_reg_1699_pp0_iter1_reg_reg[0]_srl2_i_4_n_0 ;
  wire \tmp_5_reg_1699_pp0_iter1_reg_reg[0]_srl2_i_5_n_0 ;
  wire \tmp_5_reg_1699_pp0_iter1_reg_reg[0]_srl2_n_0 ;
  wire tmp_5_reg_1699_pp0_iter2_reg;
  wire tmp_6_reg_1726;
  wire \tmp_6_reg_1726[0]_i_3_n_0 ;
  wire \tmp_6_reg_1726[0]_i_4_n_0 ;
  wire \tmp_6_reg_1726_reg[0]_i_1_n_7 ;
  wire tmp_9_reg_1733;
  wire \tmp_9_reg_1733[0]_i_10_n_0 ;
  wire \tmp_9_reg_1733[0]_i_11_n_0 ;
  wire \tmp_9_reg_1733[0]_i_12_n_0 ;
  wire \tmp_9_reg_1733[0]_i_13_n_0 ;
  wire \tmp_9_reg_1733[0]_i_14_n_0 ;
  wire \tmp_9_reg_1733[0]_i_15_n_0 ;
  wire \tmp_9_reg_1733[0]_i_16_n_0 ;
  wire \tmp_9_reg_1733[0]_i_18_n_0 ;
  wire \tmp_9_reg_1733[0]_i_19_n_0 ;
  wire \tmp_9_reg_1733[0]_i_20_n_0 ;
  wire \tmp_9_reg_1733[0]_i_21_n_0 ;
  wire \tmp_9_reg_1733[0]_i_22_n_0 ;
  wire \tmp_9_reg_1733[0]_i_23_n_0 ;
  wire \tmp_9_reg_1733[0]_i_24_n_0 ;
  wire \tmp_9_reg_1733[0]_i_25_n_0 ;
  wire \tmp_9_reg_1733[0]_i_4_n_0 ;
  wire \tmp_9_reg_1733[0]_i_5_n_0 ;
  wire \tmp_9_reg_1733[0]_i_7_n_0 ;
  wire \tmp_9_reg_1733[0]_i_8_n_0 ;
  wire \tmp_9_reg_1733[0]_i_9_n_0 ;
  wire tmp_9_reg_1733_pp0_iter2_reg;
  wire \tmp_9_reg_1733_reg[0]_i_17_n_14 ;
  wire \tmp_9_reg_1733_reg[0]_i_17_n_15 ;
  wire \tmp_9_reg_1733_reg[0]_i_17_n_7 ;
  wire \tmp_9_reg_1733_reg[0]_i_1_n_7 ;
  wire \tmp_9_reg_1733_reg[0]_i_26_n_14 ;
  wire \tmp_9_reg_1733_reg[0]_i_26_n_15 ;
  wire \tmp_9_reg_1733_reg[0]_i_26_n_7 ;
  wire \tmp_9_reg_1733_reg[0]_i_2_n_0 ;
  wire \tmp_9_reg_1733_reg[0]_i_2_n_1 ;
  wire \tmp_9_reg_1733_reg[0]_i_2_n_2 ;
  wire \tmp_9_reg_1733_reg[0]_i_2_n_3 ;
  wire \tmp_9_reg_1733_reg[0]_i_2_n_4 ;
  wire \tmp_9_reg_1733_reg[0]_i_2_n_5 ;
  wire \tmp_9_reg_1733_reg[0]_i_2_n_6 ;
  wire \tmp_9_reg_1733_reg[0]_i_2_n_7 ;
  wire \tmp_9_reg_1733_reg[0]_i_3_n_14 ;
  wire \tmp_9_reg_1733_reg[0]_i_3_n_15 ;
  wire \tmp_9_reg_1733_reg[0]_i_3_n_7 ;
  wire \tmp_9_reg_1733_reg[0]_i_6_n_0 ;
  wire \tmp_9_reg_1733_reg[0]_i_6_n_1 ;
  wire \tmp_9_reg_1733_reg[0]_i_6_n_10 ;
  wire \tmp_9_reg_1733_reg[0]_i_6_n_11 ;
  wire \tmp_9_reg_1733_reg[0]_i_6_n_12 ;
  wire \tmp_9_reg_1733_reg[0]_i_6_n_13 ;
  wire \tmp_9_reg_1733_reg[0]_i_6_n_14 ;
  wire \tmp_9_reg_1733_reg[0]_i_6_n_15 ;
  wire \tmp_9_reg_1733_reg[0]_i_6_n_2 ;
  wire \tmp_9_reg_1733_reg[0]_i_6_n_3 ;
  wire \tmp_9_reg_1733_reg[0]_i_6_n_4 ;
  wire \tmp_9_reg_1733_reg[0]_i_6_n_5 ;
  wire \tmp_9_reg_1733_reg[0]_i_6_n_6 ;
  wire \tmp_9_reg_1733_reg[0]_i_6_n_7 ;
  wire \tmp_9_reg_1733_reg[0]_i_6_n_8 ;
  wire \tmp_9_reg_1733_reg[0]_i_6_n_9 ;
  wire [3:0]x_13_reg_1704;
  wire \x_13_reg_1704[3]_i_104_n_0 ;
  wire \x_13_reg_1704[3]_i_105_n_0 ;
  wire \x_13_reg_1704[3]_i_106_n_0 ;
  wire \x_13_reg_1704[3]_i_107_n_0 ;
  wire \x_13_reg_1704[3]_i_108_n_0 ;
  wire \x_13_reg_1704[3]_i_109_n_0 ;
  wire \x_13_reg_1704[3]_i_10_n_0 ;
  wire \x_13_reg_1704[3]_i_110_n_0 ;
  wire \x_13_reg_1704[3]_i_111_n_0 ;
  wire \x_13_reg_1704[3]_i_12_n_0 ;
  wire \x_13_reg_1704[3]_i_13_n_0 ;
  wire \x_13_reg_1704[3]_i_14_n_0 ;
  wire \x_13_reg_1704[3]_i_15_n_0 ;
  wire \x_13_reg_1704[3]_i_16_n_0 ;
  wire \x_13_reg_1704[3]_i_17_n_0 ;
  wire \x_13_reg_1704[3]_i_18_n_0 ;
  wire \x_13_reg_1704[3]_i_19_n_0 ;
  wire \x_13_reg_1704[3]_i_30_n_0 ;
  wire \x_13_reg_1704[3]_i_31_n_0 ;
  wire \x_13_reg_1704[3]_i_32_n_0 ;
  wire \x_13_reg_1704[3]_i_33_n_0 ;
  wire \x_13_reg_1704[3]_i_34_n_0 ;
  wire \x_13_reg_1704[3]_i_35_n_0 ;
  wire \x_13_reg_1704[3]_i_36_n_0 ;
  wire \x_13_reg_1704[3]_i_37_n_0 ;
  wire \x_13_reg_1704[3]_i_3_n_0 ;
  wire \x_13_reg_1704[3]_i_40_n_0 ;
  wire \x_13_reg_1704[3]_i_41_n_0 ;
  wire \x_13_reg_1704[3]_i_42_n_0 ;
  wire \x_13_reg_1704[3]_i_43_n_0 ;
  wire \x_13_reg_1704[3]_i_44_n_0 ;
  wire \x_13_reg_1704[3]_i_45_n_0 ;
  wire \x_13_reg_1704[3]_i_46_n_0 ;
  wire \x_13_reg_1704[3]_i_47_n_0 ;
  wire \x_13_reg_1704[3]_i_48_n_0 ;
  wire \x_13_reg_1704[3]_i_4_n_0 ;
  wire \x_13_reg_1704[3]_i_56_n_0 ;
  wire \x_13_reg_1704[3]_i_57_n_0 ;
  wire \x_13_reg_1704[3]_i_58_n_0 ;
  wire \x_13_reg_1704[3]_i_59_n_0 ;
  wire \x_13_reg_1704[3]_i_5_n_0 ;
  wire \x_13_reg_1704[3]_i_60_n_0 ;
  wire \x_13_reg_1704[3]_i_61_n_0 ;
  wire \x_13_reg_1704[3]_i_62_n_0 ;
  wire \x_13_reg_1704[3]_i_63_n_0 ;
  wire \x_13_reg_1704[3]_i_65_n_0 ;
  wire \x_13_reg_1704[3]_i_66_n_0 ;
  wire \x_13_reg_1704[3]_i_67_n_0 ;
  wire \x_13_reg_1704[3]_i_68_n_0 ;
  wire \x_13_reg_1704[3]_i_69_n_0 ;
  wire \x_13_reg_1704[3]_i_6_n_0 ;
  wire \x_13_reg_1704[3]_i_70_n_0 ;
  wire \x_13_reg_1704[3]_i_71_n_0 ;
  wire \x_13_reg_1704[3]_i_72_n_0 ;
  wire \x_13_reg_1704[3]_i_73_n_0 ;
  wire \x_13_reg_1704[3]_i_74_n_0 ;
  wire \x_13_reg_1704[3]_i_75_n_0 ;
  wire \x_13_reg_1704[3]_i_76_n_0 ;
  wire \x_13_reg_1704[3]_i_77_n_0 ;
  wire \x_13_reg_1704[3]_i_78_n_0 ;
  wire \x_13_reg_1704[3]_i_79_n_0 ;
  wire \x_13_reg_1704[3]_i_7_n_0 ;
  wire \x_13_reg_1704[3]_i_80_n_0 ;
  wire \x_13_reg_1704[3]_i_81_n_0 ;
  wire \x_13_reg_1704[3]_i_82_n_0 ;
  wire \x_13_reg_1704[3]_i_83_n_0 ;
  wire \x_13_reg_1704[3]_i_84_n_0 ;
  wire \x_13_reg_1704[3]_i_85_n_0 ;
  wire \x_13_reg_1704[3]_i_86_n_0 ;
  wire \x_13_reg_1704[3]_i_87_n_0 ;
  wire \x_13_reg_1704[3]_i_88_n_0 ;
  wire \x_13_reg_1704[3]_i_89_n_0 ;
  wire \x_13_reg_1704[3]_i_8_n_0 ;
  wire \x_13_reg_1704[3]_i_90_n_0 ;
  wire \x_13_reg_1704[3]_i_91_n_0 ;
  wire \x_13_reg_1704[3]_i_92_n_0 ;
  wire \x_13_reg_1704[3]_i_93_n_0 ;
  wire \x_13_reg_1704[3]_i_94_n_0 ;
  wire \x_13_reg_1704[3]_i_95_n_0 ;
  wire \x_13_reg_1704[3]_i_96_n_0 ;
  wire \x_13_reg_1704[3]_i_98_n_0 ;
  wire \x_13_reg_1704[3]_i_99_n_0 ;
  wire \x_13_reg_1704[3]_i_9_n_0 ;
  wire \x_13_reg_1704_reg[3]_i_11_n_0 ;
  wire \x_13_reg_1704_reg[3]_i_11_n_1 ;
  wire \x_13_reg_1704_reg[3]_i_11_n_14 ;
  wire \x_13_reg_1704_reg[3]_i_11_n_15 ;
  wire \x_13_reg_1704_reg[3]_i_11_n_2 ;
  wire \x_13_reg_1704_reg[3]_i_11_n_3 ;
  wire \x_13_reg_1704_reg[3]_i_11_n_4 ;
  wire \x_13_reg_1704_reg[3]_i_11_n_5 ;
  wire \x_13_reg_1704_reg[3]_i_11_n_6 ;
  wire \x_13_reg_1704_reg[3]_i_11_n_7 ;
  wire \x_13_reg_1704_reg[3]_i_1_n_0 ;
  wire \x_13_reg_1704_reg[3]_i_1_n_1 ;
  wire \x_13_reg_1704_reg[3]_i_1_n_10 ;
  wire \x_13_reg_1704_reg[3]_i_1_n_11 ;
  wire \x_13_reg_1704_reg[3]_i_1_n_12 ;
  wire \x_13_reg_1704_reg[3]_i_1_n_13 ;
  wire \x_13_reg_1704_reg[3]_i_1_n_14 ;
  wire \x_13_reg_1704_reg[3]_i_1_n_15 ;
  wire \x_13_reg_1704_reg[3]_i_1_n_2 ;
  wire \x_13_reg_1704_reg[3]_i_1_n_3 ;
  wire \x_13_reg_1704_reg[3]_i_1_n_4 ;
  wire \x_13_reg_1704_reg[3]_i_1_n_5 ;
  wire \x_13_reg_1704_reg[3]_i_1_n_6 ;
  wire \x_13_reg_1704_reg[3]_i_1_n_7 ;
  wire \x_13_reg_1704_reg[3]_i_1_n_8 ;
  wire \x_13_reg_1704_reg[3]_i_1_n_9 ;
  wire \x_13_reg_1704_reg[3]_i_20_n_0 ;
  wire \x_13_reg_1704_reg[3]_i_20_n_1 ;
  wire \x_13_reg_1704_reg[3]_i_20_n_2 ;
  wire \x_13_reg_1704_reg[3]_i_20_n_3 ;
  wire \x_13_reg_1704_reg[3]_i_20_n_4 ;
  wire \x_13_reg_1704_reg[3]_i_20_n_5 ;
  wire \x_13_reg_1704_reg[3]_i_20_n_6 ;
  wire \x_13_reg_1704_reg[3]_i_20_n_7 ;
  wire \x_13_reg_1704_reg[3]_i_21_n_0 ;
  wire \x_13_reg_1704_reg[3]_i_21_n_1 ;
  wire \x_13_reg_1704_reg[3]_i_21_n_2 ;
  wire \x_13_reg_1704_reg[3]_i_21_n_3 ;
  wire \x_13_reg_1704_reg[3]_i_21_n_4 ;
  wire \x_13_reg_1704_reg[3]_i_21_n_5 ;
  wire \x_13_reg_1704_reg[3]_i_21_n_6 ;
  wire \x_13_reg_1704_reg[3]_i_21_n_7 ;
  wire \x_13_reg_1704_reg[3]_i_2_n_0 ;
  wire \x_13_reg_1704_reg[3]_i_2_n_1 ;
  wire \x_13_reg_1704_reg[3]_i_2_n_10 ;
  wire \x_13_reg_1704_reg[3]_i_2_n_11 ;
  wire \x_13_reg_1704_reg[3]_i_2_n_12 ;
  wire \x_13_reg_1704_reg[3]_i_2_n_13 ;
  wire \x_13_reg_1704_reg[3]_i_2_n_14 ;
  wire \x_13_reg_1704_reg[3]_i_2_n_15 ;
  wire \x_13_reg_1704_reg[3]_i_2_n_2 ;
  wire \x_13_reg_1704_reg[3]_i_2_n_3 ;
  wire \x_13_reg_1704_reg[3]_i_2_n_4 ;
  wire \x_13_reg_1704_reg[3]_i_2_n_5 ;
  wire \x_13_reg_1704_reg[3]_i_2_n_6 ;
  wire \x_13_reg_1704_reg[3]_i_2_n_7 ;
  wire \x_13_reg_1704_reg[3]_i_2_n_8 ;
  wire \x_13_reg_1704_reg[3]_i_2_n_9 ;
  wire \x_13_reg_1704_reg[3]_i_38_n_0 ;
  wire \x_13_reg_1704_reg[3]_i_38_n_1 ;
  wire \x_13_reg_1704_reg[3]_i_38_n_2 ;
  wire \x_13_reg_1704_reg[3]_i_38_n_3 ;
  wire \x_13_reg_1704_reg[3]_i_38_n_4 ;
  wire \x_13_reg_1704_reg[3]_i_38_n_5 ;
  wire \x_13_reg_1704_reg[3]_i_38_n_6 ;
  wire \x_13_reg_1704_reg[3]_i_38_n_7 ;
  wire \x_13_reg_1704_reg[3]_i_39_n_0 ;
  wire \x_13_reg_1704_reg[3]_i_39_n_1 ;
  wire \x_13_reg_1704_reg[3]_i_39_n_2 ;
  wire \x_13_reg_1704_reg[3]_i_39_n_3 ;
  wire \x_13_reg_1704_reg[3]_i_39_n_4 ;
  wire \x_13_reg_1704_reg[3]_i_39_n_5 ;
  wire \x_13_reg_1704_reg[3]_i_39_n_6 ;
  wire \x_13_reg_1704_reg[3]_i_39_n_7 ;
  wire \x_13_reg_1704_reg[3]_i_64_n_0 ;
  wire \x_13_reg_1704_reg[3]_i_64_n_1 ;
  wire \x_13_reg_1704_reg[3]_i_64_n_2 ;
  wire \x_13_reg_1704_reg[3]_i_64_n_3 ;
  wire \x_13_reg_1704_reg[3]_i_64_n_4 ;
  wire \x_13_reg_1704_reg[3]_i_64_n_5 ;
  wire \x_13_reg_1704_reg[3]_i_64_n_6 ;
  wire \x_13_reg_1704_reg[3]_i_64_n_7 ;
  wire [17:0]x_22_fu_777_p3;
  wire [17:0]x_25_fu_861_p3;
  wire [17:0]x_26_fu_913_p2;
  wire [17:0]x_26_reg_1745;
  wire \x_26_reg_1745[15]_i_2_n_0 ;
  wire \x_26_reg_1745[15]_i_3_n_0 ;
  wire \x_26_reg_1745[15]_i_4_n_0 ;
  wire \x_26_reg_1745[15]_i_5_n_0 ;
  wire \x_26_reg_1745[15]_i_6_n_0 ;
  wire \x_26_reg_1745[15]_i_7_n_0 ;
  wire \x_26_reg_1745[15]_i_8_n_0 ;
  wire \x_26_reg_1745[15]_i_9_n_0 ;
  wire \x_26_reg_1745[17]_i_2_n_0 ;
  wire \x_26_reg_1745[17]_i_3_n_0 ;
  wire \x_26_reg_1745[7]_i_2_n_0 ;
  wire \x_26_reg_1745[7]_i_3_n_0 ;
  wire \x_26_reg_1745[7]_i_4_n_0 ;
  wire \x_26_reg_1745[7]_i_5_n_0 ;
  wire \x_26_reg_1745[7]_i_6_n_0 ;
  wire \x_26_reg_1745[7]_i_7_n_0 ;
  wire \x_26_reg_1745[7]_i_8_n_0 ;
  wire \x_26_reg_1745[7]_i_9_n_0 ;
  wire \x_26_reg_1745_reg[15]_i_1_n_0 ;
  wire \x_26_reg_1745_reg[15]_i_1_n_1 ;
  wire \x_26_reg_1745_reg[15]_i_1_n_2 ;
  wire \x_26_reg_1745_reg[15]_i_1_n_3 ;
  wire \x_26_reg_1745_reg[15]_i_1_n_4 ;
  wire \x_26_reg_1745_reg[15]_i_1_n_5 ;
  wire \x_26_reg_1745_reg[15]_i_1_n_6 ;
  wire \x_26_reg_1745_reg[15]_i_1_n_7 ;
  wire \x_26_reg_1745_reg[17]_i_1_n_7 ;
  wire \x_26_reg_1745_reg[7]_i_1_n_0 ;
  wire \x_26_reg_1745_reg[7]_i_1_n_1 ;
  wire \x_26_reg_1745_reg[7]_i_1_n_2 ;
  wire \x_26_reg_1745_reg[7]_i_1_n_3 ;
  wire \x_26_reg_1745_reg[7]_i_1_n_4 ;
  wire \x_26_reg_1745_reg[7]_i_1_n_5 ;
  wire \x_26_reg_1745_reg[7]_i_1_n_6 ;
  wire \x_26_reg_1745_reg[7]_i_1_n_7 ;
  wire [17:0]x_27_fu_925_p2;
  wire [17:0]x_27_reg_1755;
  wire \x_27_reg_1755[15]_i_10_n_0 ;
  wire \x_27_reg_1755[15]_i_2_n_0 ;
  wire \x_27_reg_1755[15]_i_3_n_0 ;
  wire \x_27_reg_1755[15]_i_4_n_0 ;
  wire \x_27_reg_1755[15]_i_5_n_0 ;
  wire \x_27_reg_1755[15]_i_6_n_0 ;
  wire \x_27_reg_1755[15]_i_7_n_0 ;
  wire \x_27_reg_1755[15]_i_8_n_0 ;
  wire \x_27_reg_1755[15]_i_9_n_0 ;
  wire \x_27_reg_1755[17]_i_10_n_0 ;
  wire \x_27_reg_1755[17]_i_11_n_0 ;
  wire \x_27_reg_1755[17]_i_13_n_0 ;
  wire \x_27_reg_1755[17]_i_14_n_0 ;
  wire \x_27_reg_1755[17]_i_15_n_0 ;
  wire \x_27_reg_1755[17]_i_16_n_0 ;
  wire \x_27_reg_1755[17]_i_17_n_0 ;
  wire \x_27_reg_1755[17]_i_18_n_0 ;
  wire \x_27_reg_1755[17]_i_19_n_0 ;
  wire \x_27_reg_1755[17]_i_20_n_0 ;
  wire \x_27_reg_1755[17]_i_21_n_0 ;
  wire \x_27_reg_1755[17]_i_3_n_0 ;
  wire \x_27_reg_1755[17]_i_4_n_0 ;
  wire \x_27_reg_1755[17]_i_6_n_0 ;
  wire \x_27_reg_1755[17]_i_7_n_0 ;
  wire \x_27_reg_1755[17]_i_9_n_0 ;
  wire \x_27_reg_1755[7]_i_10_n_0 ;
  wire \x_27_reg_1755[7]_i_12_n_0 ;
  wire \x_27_reg_1755[7]_i_13_n_0 ;
  wire \x_27_reg_1755[7]_i_14_n_0 ;
  wire \x_27_reg_1755[7]_i_15_n_0 ;
  wire \x_27_reg_1755[7]_i_16_n_0 ;
  wire \x_27_reg_1755[7]_i_17_n_0 ;
  wire \x_27_reg_1755[7]_i_18_n_0 ;
  wire \x_27_reg_1755[7]_i_19_n_0 ;
  wire \x_27_reg_1755[7]_i_21_n_0 ;
  wire \x_27_reg_1755[7]_i_22_n_0 ;
  wire \x_27_reg_1755[7]_i_23_n_0 ;
  wire \x_27_reg_1755[7]_i_24_n_0 ;
  wire \x_27_reg_1755[7]_i_25_n_0 ;
  wire \x_27_reg_1755[7]_i_26_n_0 ;
  wire \x_27_reg_1755[7]_i_27_n_0 ;
  wire \x_27_reg_1755[7]_i_28_n_0 ;
  wire \x_27_reg_1755[7]_i_30_n_0 ;
  wire \x_27_reg_1755[7]_i_31_n_0 ;
  wire \x_27_reg_1755[7]_i_32_n_0 ;
  wire \x_27_reg_1755[7]_i_33_n_0 ;
  wire \x_27_reg_1755[7]_i_34_n_0 ;
  wire \x_27_reg_1755[7]_i_35_n_0 ;
  wire \x_27_reg_1755[7]_i_36_n_0 ;
  wire \x_27_reg_1755[7]_i_37_n_0 ;
  wire \x_27_reg_1755[7]_i_38_n_0 ;
  wire \x_27_reg_1755[7]_i_39_n_0 ;
  wire \x_27_reg_1755[7]_i_3_n_0 ;
  wire \x_27_reg_1755[7]_i_40_n_0 ;
  wire \x_27_reg_1755[7]_i_41_n_0 ;
  wire \x_27_reg_1755[7]_i_42_n_0 ;
  wire \x_27_reg_1755[7]_i_43_n_0 ;
  wire \x_27_reg_1755[7]_i_44_n_0 ;
  wire \x_27_reg_1755[7]_i_45_n_0 ;
  wire \x_27_reg_1755[7]_i_4_n_0 ;
  wire \x_27_reg_1755[7]_i_5_n_0 ;
  wire \x_27_reg_1755[7]_i_6_n_0 ;
  wire \x_27_reg_1755[7]_i_7_n_0 ;
  wire \x_27_reg_1755[7]_i_8_n_0 ;
  wire \x_27_reg_1755[7]_i_9_n_0 ;
  wire \x_27_reg_1755_reg[15]_i_1_n_0 ;
  wire \x_27_reg_1755_reg[15]_i_1_n_1 ;
  wire \x_27_reg_1755_reg[15]_i_1_n_2 ;
  wire \x_27_reg_1755_reg[15]_i_1_n_3 ;
  wire \x_27_reg_1755_reg[15]_i_1_n_4 ;
  wire \x_27_reg_1755_reg[15]_i_1_n_5 ;
  wire \x_27_reg_1755_reg[15]_i_1_n_6 ;
  wire \x_27_reg_1755_reg[15]_i_1_n_7 ;
  wire \x_27_reg_1755_reg[17]_i_12_n_0 ;
  wire \x_27_reg_1755_reg[17]_i_12_n_1 ;
  wire \x_27_reg_1755_reg[17]_i_12_n_10 ;
  wire \x_27_reg_1755_reg[17]_i_12_n_11 ;
  wire \x_27_reg_1755_reg[17]_i_12_n_12 ;
  wire \x_27_reg_1755_reg[17]_i_12_n_13 ;
  wire \x_27_reg_1755_reg[17]_i_12_n_14 ;
  wire \x_27_reg_1755_reg[17]_i_12_n_15 ;
  wire \x_27_reg_1755_reg[17]_i_12_n_2 ;
  wire \x_27_reg_1755_reg[17]_i_12_n_3 ;
  wire \x_27_reg_1755_reg[17]_i_12_n_4 ;
  wire \x_27_reg_1755_reg[17]_i_12_n_5 ;
  wire \x_27_reg_1755_reg[17]_i_12_n_6 ;
  wire \x_27_reg_1755_reg[17]_i_12_n_7 ;
  wire \x_27_reg_1755_reg[17]_i_12_n_8 ;
  wire \x_27_reg_1755_reg[17]_i_12_n_9 ;
  wire \x_27_reg_1755_reg[17]_i_1_n_7 ;
  wire \x_27_reg_1755_reg[17]_i_2_n_0 ;
  wire \x_27_reg_1755_reg[17]_i_2_n_1 ;
  wire \x_27_reg_1755_reg[17]_i_2_n_2 ;
  wire \x_27_reg_1755_reg[17]_i_2_n_3 ;
  wire \x_27_reg_1755_reg[17]_i_2_n_4 ;
  wire \x_27_reg_1755_reg[17]_i_2_n_5 ;
  wire \x_27_reg_1755_reg[17]_i_2_n_6 ;
  wire \x_27_reg_1755_reg[17]_i_2_n_7 ;
  wire \x_27_reg_1755_reg[17]_i_5_n_0 ;
  wire \x_27_reg_1755_reg[17]_i_5_n_1 ;
  wire \x_27_reg_1755_reg[17]_i_5_n_2 ;
  wire \x_27_reg_1755_reg[17]_i_5_n_3 ;
  wire \x_27_reg_1755_reg[17]_i_5_n_4 ;
  wire \x_27_reg_1755_reg[17]_i_5_n_5 ;
  wire \x_27_reg_1755_reg[17]_i_5_n_6 ;
  wire \x_27_reg_1755_reg[17]_i_5_n_7 ;
  wire \x_27_reg_1755_reg[17]_i_8_n_0 ;
  wire \x_27_reg_1755_reg[17]_i_8_n_1 ;
  wire \x_27_reg_1755_reg[17]_i_8_n_10 ;
  wire \x_27_reg_1755_reg[17]_i_8_n_11 ;
  wire \x_27_reg_1755_reg[17]_i_8_n_12 ;
  wire \x_27_reg_1755_reg[17]_i_8_n_13 ;
  wire \x_27_reg_1755_reg[17]_i_8_n_14 ;
  wire \x_27_reg_1755_reg[17]_i_8_n_15 ;
  wire \x_27_reg_1755_reg[17]_i_8_n_2 ;
  wire \x_27_reg_1755_reg[17]_i_8_n_3 ;
  wire \x_27_reg_1755_reg[17]_i_8_n_4 ;
  wire \x_27_reg_1755_reg[17]_i_8_n_5 ;
  wire \x_27_reg_1755_reg[17]_i_8_n_6 ;
  wire \x_27_reg_1755_reg[17]_i_8_n_7 ;
  wire \x_27_reg_1755_reg[17]_i_8_n_8 ;
  wire \x_27_reg_1755_reg[17]_i_8_n_9 ;
  wire \x_27_reg_1755_reg[7]_i_11_n_0 ;
  wire \x_27_reg_1755_reg[7]_i_11_n_1 ;
  wire \x_27_reg_1755_reg[7]_i_11_n_2 ;
  wire \x_27_reg_1755_reg[7]_i_11_n_3 ;
  wire \x_27_reg_1755_reg[7]_i_11_n_4 ;
  wire \x_27_reg_1755_reg[7]_i_11_n_5 ;
  wire \x_27_reg_1755_reg[7]_i_11_n_6 ;
  wire \x_27_reg_1755_reg[7]_i_11_n_7 ;
  wire \x_27_reg_1755_reg[7]_i_1_n_0 ;
  wire \x_27_reg_1755_reg[7]_i_1_n_1 ;
  wire \x_27_reg_1755_reg[7]_i_1_n_2 ;
  wire \x_27_reg_1755_reg[7]_i_1_n_3 ;
  wire \x_27_reg_1755_reg[7]_i_1_n_4 ;
  wire \x_27_reg_1755_reg[7]_i_1_n_5 ;
  wire \x_27_reg_1755_reg[7]_i_1_n_6 ;
  wire \x_27_reg_1755_reg[7]_i_1_n_7 ;
  wire \x_27_reg_1755_reg[7]_i_20_n_0 ;
  wire \x_27_reg_1755_reg[7]_i_20_n_1 ;
  wire \x_27_reg_1755_reg[7]_i_20_n_10 ;
  wire \x_27_reg_1755_reg[7]_i_20_n_11 ;
  wire \x_27_reg_1755_reg[7]_i_20_n_12 ;
  wire \x_27_reg_1755_reg[7]_i_20_n_13 ;
  wire \x_27_reg_1755_reg[7]_i_20_n_14 ;
  wire \x_27_reg_1755_reg[7]_i_20_n_15 ;
  wire \x_27_reg_1755_reg[7]_i_20_n_2 ;
  wire \x_27_reg_1755_reg[7]_i_20_n_3 ;
  wire \x_27_reg_1755_reg[7]_i_20_n_4 ;
  wire \x_27_reg_1755_reg[7]_i_20_n_5 ;
  wire \x_27_reg_1755_reg[7]_i_20_n_6 ;
  wire \x_27_reg_1755_reg[7]_i_20_n_7 ;
  wire \x_27_reg_1755_reg[7]_i_20_n_8 ;
  wire \x_27_reg_1755_reg[7]_i_20_n_9 ;
  wire \x_27_reg_1755_reg[7]_i_29_n_0 ;
  wire \x_27_reg_1755_reg[7]_i_29_n_1 ;
  wire \x_27_reg_1755_reg[7]_i_29_n_10 ;
  wire \x_27_reg_1755_reg[7]_i_29_n_11 ;
  wire \x_27_reg_1755_reg[7]_i_29_n_12 ;
  wire \x_27_reg_1755_reg[7]_i_29_n_13 ;
  wire \x_27_reg_1755_reg[7]_i_29_n_14 ;
  wire \x_27_reg_1755_reg[7]_i_29_n_15 ;
  wire \x_27_reg_1755_reg[7]_i_29_n_2 ;
  wire \x_27_reg_1755_reg[7]_i_29_n_3 ;
  wire \x_27_reg_1755_reg[7]_i_29_n_4 ;
  wire \x_27_reg_1755_reg[7]_i_29_n_5 ;
  wire \x_27_reg_1755_reg[7]_i_29_n_6 ;
  wire \x_27_reg_1755_reg[7]_i_29_n_7 ;
  wire \x_27_reg_1755_reg[7]_i_29_n_8 ;
  wire \x_27_reg_1755_reg[7]_i_29_n_9 ;
  wire \x_27_reg_1755_reg[7]_i_2_n_0 ;
  wire \x_27_reg_1755_reg[7]_i_2_n_1 ;
  wire \x_27_reg_1755_reg[7]_i_2_n_2 ;
  wire \x_27_reg_1755_reg[7]_i_2_n_3 ;
  wire \x_27_reg_1755_reg[7]_i_2_n_4 ;
  wire \x_27_reg_1755_reg[7]_i_2_n_5 ;
  wire \x_27_reg_1755_reg[7]_i_2_n_6 ;
  wire \x_27_reg_1755_reg[7]_i_2_n_7 ;
  wire [17:0]x_28_fu_958_p3;
  wire [16:0]x_2_fu_286_p2;
  wire [17:0]x_31_fu_1028_p3;
  wire [17:0]x_34_fu_1104_p3;
  wire [17:0]x_37_fu_1180_p3;
  wire [17:0]x_40_fu_1256_p3;
  wire [12:0]x_40_reg_1790;
  wire \x_40_reg_1790[12]_i_13_n_0 ;
  wire \x_40_reg_1790[12]_i_14_n_0 ;
  wire \x_40_reg_1790[12]_i_15_n_0 ;
  wire \x_40_reg_1790[12]_i_16_n_0 ;
  wire \x_40_reg_1790[12]_i_17_n_0 ;
  wire \x_40_reg_1790[12]_i_18_n_0 ;
  wire \x_40_reg_1790[12]_i_19_n_0 ;
  wire \x_40_reg_1790[12]_i_20_n_0 ;
  wire \x_40_reg_1790[7]_i_10_n_0 ;
  wire \x_40_reg_1790[7]_i_11_n_0 ;
  wire \x_40_reg_1790[7]_i_12_n_0 ;
  wire \x_40_reg_1790[7]_i_13_n_0 ;
  wire \x_40_reg_1790[7]_i_14_n_0 ;
  wire \x_40_reg_1790[7]_i_16_n_0 ;
  wire \x_40_reg_1790[7]_i_17_n_0 ;
  wire \x_40_reg_1790[7]_i_18_n_0 ;
  wire \x_40_reg_1790[7]_i_19_n_0 ;
  wire \x_40_reg_1790[7]_i_20_n_0 ;
  wire \x_40_reg_1790[7]_i_21_n_0 ;
  wire \x_40_reg_1790[7]_i_22_n_0 ;
  wire \x_40_reg_1790[7]_i_31_n_0 ;
  wire \x_40_reg_1790[7]_i_32_n_0 ;
  wire \x_40_reg_1790[7]_i_33_n_0 ;
  wire \x_40_reg_1790[7]_i_34_n_0 ;
  wire \x_40_reg_1790[7]_i_35_n_0 ;
  wire \x_40_reg_1790[7]_i_36_n_0 ;
  wire \x_40_reg_1790[7]_i_37_n_0 ;
  wire \x_40_reg_1790[7]_i_38_n_0 ;
  wire \x_40_reg_1790[7]_i_3_n_0 ;
  wire \x_40_reg_1790[7]_i_4_n_0 ;
  wire \x_40_reg_1790[7]_i_5_n_0 ;
  wire \x_40_reg_1790[7]_i_6_n_0 ;
  wire \x_40_reg_1790[7]_i_7_n_0 ;
  wire \x_40_reg_1790[7]_i_9_n_0 ;
  wire \x_40_reg_1790_reg[12]_i_1_n_0 ;
  wire \x_40_reg_1790_reg[12]_i_1_n_1 ;
  wire \x_40_reg_1790_reg[12]_i_1_n_2 ;
  wire \x_40_reg_1790_reg[12]_i_1_n_3 ;
  wire \x_40_reg_1790_reg[12]_i_1_n_4 ;
  wire \x_40_reg_1790_reg[12]_i_1_n_5 ;
  wire \x_40_reg_1790_reg[12]_i_1_n_6 ;
  wire \x_40_reg_1790_reg[12]_i_1_n_7 ;
  wire \x_40_reg_1790_reg[12]_i_2_n_0 ;
  wire \x_40_reg_1790_reg[12]_i_2_n_1 ;
  wire \x_40_reg_1790_reg[12]_i_2_n_2 ;
  wire \x_40_reg_1790_reg[12]_i_2_n_3 ;
  wire \x_40_reg_1790_reg[12]_i_2_n_4 ;
  wire \x_40_reg_1790_reg[12]_i_2_n_5 ;
  wire \x_40_reg_1790_reg[12]_i_2_n_6 ;
  wire \x_40_reg_1790_reg[12]_i_2_n_7 ;
  wire \x_40_reg_1790_reg[12]_i_3_n_0 ;
  wire \x_40_reg_1790_reg[12]_i_3_n_1 ;
  wire \x_40_reg_1790_reg[12]_i_3_n_2 ;
  wire \x_40_reg_1790_reg[12]_i_3_n_3 ;
  wire \x_40_reg_1790_reg[12]_i_3_n_4 ;
  wire \x_40_reg_1790_reg[12]_i_3_n_5 ;
  wire \x_40_reg_1790_reg[12]_i_3_n_6 ;
  wire \x_40_reg_1790_reg[12]_i_3_n_7 ;
  wire \x_40_reg_1790_reg[12]_i_4_n_0 ;
  wire \x_40_reg_1790_reg[12]_i_4_n_1 ;
  wire \x_40_reg_1790_reg[12]_i_4_n_2 ;
  wire \x_40_reg_1790_reg[12]_i_4_n_3 ;
  wire \x_40_reg_1790_reg[12]_i_4_n_4 ;
  wire \x_40_reg_1790_reg[12]_i_4_n_5 ;
  wire \x_40_reg_1790_reg[12]_i_4_n_6 ;
  wire \x_40_reg_1790_reg[12]_i_4_n_7 ;
  wire \x_40_reg_1790_reg[7]_i_15_n_0 ;
  wire \x_40_reg_1790_reg[7]_i_15_n_1 ;
  wire \x_40_reg_1790_reg[7]_i_15_n_2 ;
  wire \x_40_reg_1790_reg[7]_i_15_n_3 ;
  wire \x_40_reg_1790_reg[7]_i_15_n_4 ;
  wire \x_40_reg_1790_reg[7]_i_15_n_5 ;
  wire \x_40_reg_1790_reg[7]_i_15_n_6 ;
  wire \x_40_reg_1790_reg[7]_i_15_n_7 ;
  wire \x_40_reg_1790_reg[7]_i_1_n_0 ;
  wire \x_40_reg_1790_reg[7]_i_1_n_1 ;
  wire \x_40_reg_1790_reg[7]_i_1_n_2 ;
  wire \x_40_reg_1790_reg[7]_i_1_n_3 ;
  wire \x_40_reg_1790_reg[7]_i_1_n_4 ;
  wire \x_40_reg_1790_reg[7]_i_1_n_5 ;
  wire \x_40_reg_1790_reg[7]_i_1_n_6 ;
  wire \x_40_reg_1790_reg[7]_i_1_n_7 ;
  wire \x_40_reg_1790_reg[7]_i_2_n_0 ;
  wire \x_40_reg_1790_reg[7]_i_2_n_1 ;
  wire \x_40_reg_1790_reg[7]_i_2_n_2 ;
  wire \x_40_reg_1790_reg[7]_i_2_n_3 ;
  wire \x_40_reg_1790_reg[7]_i_2_n_4 ;
  wire \x_40_reg_1790_reg[7]_i_2_n_5 ;
  wire \x_40_reg_1790_reg[7]_i_2_n_6 ;
  wire \x_40_reg_1790_reg[7]_i_2_n_7 ;
  wire \x_40_reg_1790_reg[7]_i_8_n_0 ;
  wire \x_40_reg_1790_reg[7]_i_8_n_1 ;
  wire \x_40_reg_1790_reg[7]_i_8_n_2 ;
  wire \x_40_reg_1790_reg[7]_i_8_n_3 ;
  wire \x_40_reg_1790_reg[7]_i_8_n_4 ;
  wire \x_40_reg_1790_reg[7]_i_8_n_5 ;
  wire \x_40_reg_1790_reg[7]_i_8_n_6 ;
  wire \x_40_reg_1790_reg[7]_i_8_n_7 ;
  wire [15:0]x_in;
  wire [4:0]xs_13_reg_1802;
  wire \xs_13_reg_1802_reg[4]_i_1_n_7 ;
  wire \xs_13_reg_1802_reg[4]_i_2_n_7 ;
  wire [13:0]xs_4_reg_1716;
  wire \xs_4_reg_1716[13]_i_5_n_0 ;
  wire \xs_4_reg_1716[13]_i_7_n_0 ;
  wire \xs_4_reg_1716[4]_i_10_n_0 ;
  wire \xs_4_reg_1716[4]_i_11_n_0 ;
  wire \xs_4_reg_1716[4]_i_12_n_0 ;
  wire \xs_4_reg_1716[4]_i_13_n_0 ;
  wire \xs_4_reg_1716[4]_i_14_n_0 ;
  wire \xs_4_reg_1716[4]_i_15_n_0 ;
  wire \xs_4_reg_1716[4]_i_24_n_0 ;
  wire \xs_4_reg_1716[4]_i_25_n_0 ;
  wire \xs_4_reg_1716[4]_i_26_n_0 ;
  wire \xs_4_reg_1716[4]_i_27_n_0 ;
  wire \xs_4_reg_1716[4]_i_28_n_0 ;
  wire \xs_4_reg_1716[4]_i_29_n_0 ;
  wire \xs_4_reg_1716[4]_i_30_n_0 ;
  wire \xs_4_reg_1716[4]_i_31_n_0 ;
  wire \xs_4_reg_1716[4]_i_33_n_0 ;
  wire \xs_4_reg_1716[4]_i_34_n_0 ;
  wire \xs_4_reg_1716[4]_i_35_n_0 ;
  wire \xs_4_reg_1716[4]_i_36_n_0 ;
  wire \xs_4_reg_1716[4]_i_37_n_0 ;
  wire \xs_4_reg_1716[4]_i_38_n_0 ;
  wire \xs_4_reg_1716[4]_i_39_n_0 ;
  wire \xs_4_reg_1716[4]_i_3_n_0 ;
  wire \xs_4_reg_1716[4]_i_40_n_0 ;
  wire \xs_4_reg_1716[4]_i_41_n_0 ;
  wire \xs_4_reg_1716[4]_i_42_n_0 ;
  wire \xs_4_reg_1716[4]_i_4_n_0 ;
  wire \xs_4_reg_1716[4]_i_5_n_0 ;
  wire \xs_4_reg_1716[4]_i_6_n_0 ;
  wire \xs_4_reg_1716[4]_i_7_n_0 ;
  wire \xs_4_reg_1716[4]_i_8_n_0 ;
  wire \xs_4_reg_1716_reg[13]_i_1_n_14 ;
  wire \xs_4_reg_1716_reg[13]_i_1_n_15 ;
  wire \xs_4_reg_1716_reg[13]_i_1_n_7 ;
  wire \xs_4_reg_1716_reg[13]_i_2_n_15 ;
  wire \xs_4_reg_1716_reg[13]_i_2_n_7 ;
  wire \xs_4_reg_1716_reg[4]_i_1_n_0 ;
  wire \xs_4_reg_1716_reg[4]_i_1_n_1 ;
  wire \xs_4_reg_1716_reg[4]_i_1_n_10 ;
  wire \xs_4_reg_1716_reg[4]_i_1_n_11 ;
  wire \xs_4_reg_1716_reg[4]_i_1_n_12 ;
  wire \xs_4_reg_1716_reg[4]_i_1_n_13 ;
  wire \xs_4_reg_1716_reg[4]_i_1_n_14 ;
  wire \xs_4_reg_1716_reg[4]_i_1_n_15 ;
  wire \xs_4_reg_1716_reg[4]_i_1_n_2 ;
  wire \xs_4_reg_1716_reg[4]_i_1_n_3 ;
  wire \xs_4_reg_1716_reg[4]_i_1_n_4 ;
  wire \xs_4_reg_1716_reg[4]_i_1_n_5 ;
  wire \xs_4_reg_1716_reg[4]_i_1_n_6 ;
  wire \xs_4_reg_1716_reg[4]_i_1_n_7 ;
  wire \xs_4_reg_1716_reg[4]_i_1_n_8 ;
  wire \xs_4_reg_1716_reg[4]_i_1_n_9 ;
  wire \xs_4_reg_1716_reg[4]_i_2_n_0 ;
  wire \xs_4_reg_1716_reg[4]_i_2_n_1 ;
  wire \xs_4_reg_1716_reg[4]_i_2_n_10 ;
  wire \xs_4_reg_1716_reg[4]_i_2_n_11 ;
  wire \xs_4_reg_1716_reg[4]_i_2_n_12 ;
  wire \xs_4_reg_1716_reg[4]_i_2_n_13 ;
  wire \xs_4_reg_1716_reg[4]_i_2_n_14 ;
  wire \xs_4_reg_1716_reg[4]_i_2_n_15 ;
  wire \xs_4_reg_1716_reg[4]_i_2_n_2 ;
  wire \xs_4_reg_1716_reg[4]_i_2_n_3 ;
  wire \xs_4_reg_1716_reg[4]_i_2_n_4 ;
  wire \xs_4_reg_1716_reg[4]_i_2_n_5 ;
  wire \xs_4_reg_1716_reg[4]_i_2_n_6 ;
  wire \xs_4_reg_1716_reg[4]_i_2_n_7 ;
  wire \xs_4_reg_1716_reg[4]_i_2_n_8 ;
  wire \xs_4_reg_1716_reg[4]_i_2_n_9 ;
  wire \xs_4_reg_1716_reg[4]_i_32_n_0 ;
  wire \xs_4_reg_1716_reg[4]_i_32_n_1 ;
  wire \xs_4_reg_1716_reg[4]_i_32_n_2 ;
  wire \xs_4_reg_1716_reg[4]_i_32_n_3 ;
  wire \xs_4_reg_1716_reg[4]_i_32_n_4 ;
  wire \xs_4_reg_1716_reg[4]_i_32_n_5 ;
  wire \xs_4_reg_1716_reg[4]_i_32_n_6 ;
  wire \xs_4_reg_1716_reg[4]_i_32_n_7 ;
  wire \xs_4_reg_1716_reg[4]_i_9_n_0 ;
  wire \xs_4_reg_1716_reg[4]_i_9_n_1 ;
  wire \xs_4_reg_1716_reg[4]_i_9_n_2 ;
  wire \xs_4_reg_1716_reg[4]_i_9_n_3 ;
  wire \xs_4_reg_1716_reg[4]_i_9_n_4 ;
  wire \xs_4_reg_1716_reg[4]_i_9_n_5 ;
  wire \xs_4_reg_1716_reg[4]_i_9_n_6 ;
  wire \xs_4_reg_1716_reg[4]_i_9_n_7 ;
  wire [17:17]y_10_fu_474_p3;
  wire [16:0]y_10_fu_474_p3__0;
  wire [17:0]y_13_fu_550_p3;
  wire [16:0]y_13_reg_1710;
  wire \y_13_reg_1710[3]_i_11_n_0 ;
  wire \y_13_reg_1710[3]_i_12_n_0 ;
  wire \y_13_reg_1710[3]_i_13_n_0 ;
  wire \y_13_reg_1710[3]_i_14_n_0 ;
  wire \y_13_reg_1710[3]_i_15_n_0 ;
  wire \y_13_reg_1710[3]_i_16_n_0 ;
  wire \y_13_reg_1710[3]_i_17_n_0 ;
  wire \y_13_reg_1710[3]_i_18_n_0 ;
  wire \y_13_reg_1710[3]_i_21_n_0 ;
  wire \y_13_reg_1710[3]_i_22_n_0 ;
  wire \y_13_reg_1710[3]_i_23_n_0 ;
  wire \y_13_reg_1710[3]_i_24_n_0 ;
  wire \y_13_reg_1710[3]_i_25_n_0 ;
  wire \y_13_reg_1710[3]_i_26_n_0 ;
  wire \y_13_reg_1710[3]_i_27_n_0 ;
  wire \y_13_reg_1710[3]_i_28_n_0 ;
  wire \y_13_reg_1710[3]_i_2_n_0 ;
  wire \y_13_reg_1710[3]_i_37_n_0 ;
  wire \y_13_reg_1710[3]_i_38_n_0 ;
  wire \y_13_reg_1710[3]_i_39_n_0 ;
  wire \y_13_reg_1710[3]_i_40_n_0 ;
  wire \y_13_reg_1710[3]_i_41_n_0 ;
  wire \y_13_reg_1710[3]_i_42_n_0 ;
  wire \y_13_reg_1710[3]_i_43_n_0 ;
  wire \y_13_reg_1710[3]_i_44_n_0 ;
  wire \y_13_reg_1710[8]_i_10_n_0 ;
  wire \y_13_reg_1710[8]_i_11_n_0 ;
  wire \y_13_reg_1710[8]_i_12_n_0 ;
  wire \y_13_reg_1710[8]_i_13_n_0 ;
  wire \y_13_reg_1710[8]_i_14_n_0 ;
  wire \y_13_reg_1710[8]_i_15_n_0 ;
  wire \y_13_reg_1710[8]_i_16_n_0 ;
  wire \y_13_reg_1710[8]_i_17_n_0 ;
  wire \y_13_reg_1710_reg[3]_i_19_n_0 ;
  wire \y_13_reg_1710_reg[3]_i_19_n_1 ;
  wire \y_13_reg_1710_reg[3]_i_19_n_2 ;
  wire \y_13_reg_1710_reg[3]_i_19_n_3 ;
  wire \y_13_reg_1710_reg[3]_i_19_n_4 ;
  wire \y_13_reg_1710_reg[3]_i_19_n_5 ;
  wire \y_13_reg_1710_reg[3]_i_19_n_6 ;
  wire \y_13_reg_1710_reg[3]_i_19_n_7 ;
  wire \y_13_reg_1710_reg[3]_i_1_n_0 ;
  wire \y_13_reg_1710_reg[3]_i_1_n_1 ;
  wire \y_13_reg_1710_reg[3]_i_1_n_2 ;
  wire \y_13_reg_1710_reg[3]_i_1_n_3 ;
  wire \y_13_reg_1710_reg[3]_i_1_n_4 ;
  wire \y_13_reg_1710_reg[3]_i_1_n_5 ;
  wire \y_13_reg_1710_reg[3]_i_1_n_6 ;
  wire \y_13_reg_1710_reg[3]_i_1_n_7 ;
  wire \y_13_reg_1710_reg[3]_i_20_n_0 ;
  wire \y_13_reg_1710_reg[3]_i_20_n_1 ;
  wire \y_13_reg_1710_reg[3]_i_20_n_2 ;
  wire \y_13_reg_1710_reg[3]_i_20_n_3 ;
  wire \y_13_reg_1710_reg[3]_i_20_n_4 ;
  wire \y_13_reg_1710_reg[3]_i_20_n_5 ;
  wire \y_13_reg_1710_reg[3]_i_20_n_6 ;
  wire \y_13_reg_1710_reg[3]_i_20_n_7 ;
  wire \y_13_reg_1710_reg[8]_i_1_n_0 ;
  wire \y_13_reg_1710_reg[8]_i_1_n_1 ;
  wire \y_13_reg_1710_reg[8]_i_1_n_2 ;
  wire \y_13_reg_1710_reg[8]_i_1_n_3 ;
  wire \y_13_reg_1710_reg[8]_i_1_n_4 ;
  wire \y_13_reg_1710_reg[8]_i_1_n_5 ;
  wire \y_13_reg_1710_reg[8]_i_1_n_6 ;
  wire \y_13_reg_1710_reg[8]_i_1_n_7 ;
  wire [17:17]y_22_fu_785_p3;
  wire [16:0]y_22_fu_785_p3__0;
  wire [17:17]y_25_fu_869_p3;
  wire [16:0]y_25_fu_869_p3__0;
  wire [17:0]y_26_fu_919_p2;
  wire [17:0]y_26_reg_1750;
  wire \y_26_reg_1750[15]_i_10_n_0 ;
  wire \y_26_reg_1750[15]_i_2_n_0 ;
  wire \y_26_reg_1750[15]_i_3_n_0 ;
  wire \y_26_reg_1750[15]_i_4_n_0 ;
  wire \y_26_reg_1750[15]_i_5_n_0 ;
  wire \y_26_reg_1750[15]_i_6_n_0 ;
  wire \y_26_reg_1750[15]_i_7_n_0 ;
  wire \y_26_reg_1750[15]_i_8_n_0 ;
  wire \y_26_reg_1750[15]_i_9_n_0 ;
  wire \y_26_reg_1750[17]_i_2_n_0 ;
  wire \y_26_reg_1750[17]_i_3_n_0 ;
  wire \y_26_reg_1750[7]_i_2_n_0 ;
  wire \y_26_reg_1750[7]_i_3_n_0 ;
  wire \y_26_reg_1750[7]_i_4_n_0 ;
  wire \y_26_reg_1750[7]_i_5_n_0 ;
  wire \y_26_reg_1750[7]_i_6_n_0 ;
  wire \y_26_reg_1750[7]_i_7_n_0 ;
  wire \y_26_reg_1750[7]_i_8_n_0 ;
  wire \y_26_reg_1750[7]_i_9_n_0 ;
  wire \y_26_reg_1750_reg[15]_i_1_n_0 ;
  wire \y_26_reg_1750_reg[15]_i_1_n_1 ;
  wire \y_26_reg_1750_reg[15]_i_1_n_2 ;
  wire \y_26_reg_1750_reg[15]_i_1_n_3 ;
  wire \y_26_reg_1750_reg[15]_i_1_n_4 ;
  wire \y_26_reg_1750_reg[15]_i_1_n_5 ;
  wire \y_26_reg_1750_reg[15]_i_1_n_6 ;
  wire \y_26_reg_1750_reg[15]_i_1_n_7 ;
  wire \y_26_reg_1750_reg[17]_i_1_n_7 ;
  wire \y_26_reg_1750_reg[7]_i_1_n_0 ;
  wire \y_26_reg_1750_reg[7]_i_1_n_1 ;
  wire \y_26_reg_1750_reg[7]_i_1_n_2 ;
  wire \y_26_reg_1750_reg[7]_i_1_n_3 ;
  wire \y_26_reg_1750_reg[7]_i_1_n_4 ;
  wire \y_26_reg_1750_reg[7]_i_1_n_5 ;
  wire \y_26_reg_1750_reg[7]_i_1_n_6 ;
  wire \y_26_reg_1750_reg[7]_i_1_n_7 ;
  wire [17:0]y_27_fu_931_p2;
  wire [17:0]y_27_reg_1760;
  wire \y_27_reg_1760[15]_i_10_n_0 ;
  wire \y_27_reg_1760[15]_i_3_n_0 ;
  wire \y_27_reg_1760[15]_i_4_n_0 ;
  wire \y_27_reg_1760[15]_i_5_n_0 ;
  wire \y_27_reg_1760[15]_i_6_n_0 ;
  wire \y_27_reg_1760[15]_i_7_n_0 ;
  wire \y_27_reg_1760[15]_i_8_n_0 ;
  wire \y_27_reg_1760[15]_i_9_n_0 ;
  wire \y_27_reg_1760[17]_i_10_n_0 ;
  wire \y_27_reg_1760[17]_i_11_n_0 ;
  wire \y_27_reg_1760[17]_i_12_n_0 ;
  wire \y_27_reg_1760[17]_i_3_n_0 ;
  wire \y_27_reg_1760[17]_i_4_n_0 ;
  wire \y_27_reg_1760[17]_i_5_n_0 ;
  wire \y_27_reg_1760[17]_i_6_n_0 ;
  wire \y_27_reg_1760[17]_i_7_n_0 ;
  wire \y_27_reg_1760[17]_i_8_n_0 ;
  wire \y_27_reg_1760[17]_i_9_n_0 ;
  wire \y_27_reg_1760[7]_i_10_n_0 ;
  wire \y_27_reg_1760[7]_i_11_n_0 ;
  wire \y_27_reg_1760[7]_i_13_n_0 ;
  wire \y_27_reg_1760[7]_i_14_n_0 ;
  wire \y_27_reg_1760[7]_i_15_n_0 ;
  wire \y_27_reg_1760[7]_i_16_n_0 ;
  wire \y_27_reg_1760[7]_i_17_n_0 ;
  wire \y_27_reg_1760[7]_i_18_n_0 ;
  wire \y_27_reg_1760[7]_i_19_n_0 ;
  wire \y_27_reg_1760[7]_i_20_n_0 ;
  wire \y_27_reg_1760[7]_i_21_n_0 ;
  wire \y_27_reg_1760[7]_i_23_n_0 ;
  wire \y_27_reg_1760[7]_i_24_n_0 ;
  wire \y_27_reg_1760[7]_i_25_n_0 ;
  wire \y_27_reg_1760[7]_i_26_n_0 ;
  wire \y_27_reg_1760[7]_i_27_n_0 ;
  wire \y_27_reg_1760[7]_i_28_n_0 ;
  wire \y_27_reg_1760[7]_i_29_n_0 ;
  wire \y_27_reg_1760[7]_i_30_n_0 ;
  wire \y_27_reg_1760[7]_i_31_n_0 ;
  wire \y_27_reg_1760[7]_i_33_n_0 ;
  wire \y_27_reg_1760[7]_i_34_n_0 ;
  wire \y_27_reg_1760[7]_i_35_n_0 ;
  wire \y_27_reg_1760[7]_i_36_n_0 ;
  wire \y_27_reg_1760[7]_i_37_n_0 ;
  wire \y_27_reg_1760[7]_i_38_n_0 ;
  wire \y_27_reg_1760[7]_i_39_n_0 ;
  wire \y_27_reg_1760[7]_i_3_n_0 ;
  wire \y_27_reg_1760[7]_i_40_n_0 ;
  wire \y_27_reg_1760[7]_i_41_n_0 ;
  wire \y_27_reg_1760[7]_i_42_n_0 ;
  wire \y_27_reg_1760[7]_i_43_n_0 ;
  wire \y_27_reg_1760[7]_i_44_n_0 ;
  wire \y_27_reg_1760[7]_i_45_n_0 ;
  wire \y_27_reg_1760[7]_i_46_n_0 ;
  wire \y_27_reg_1760[7]_i_47_n_0 ;
  wire \y_27_reg_1760[7]_i_48_n_0 ;
  wire \y_27_reg_1760[7]_i_49_n_0 ;
  wire \y_27_reg_1760[7]_i_4_n_0 ;
  wire \y_27_reg_1760[7]_i_5_n_0 ;
  wire \y_27_reg_1760[7]_i_6_n_0 ;
  wire \y_27_reg_1760[7]_i_7_n_0 ;
  wire \y_27_reg_1760[7]_i_8_n_0 ;
  wire \y_27_reg_1760[7]_i_9_n_0 ;
  wire \y_27_reg_1760_reg[15]_i_11_n_7 ;
  wire \y_27_reg_1760_reg[15]_i_1_n_0 ;
  wire \y_27_reg_1760_reg[15]_i_1_n_1 ;
  wire \y_27_reg_1760_reg[15]_i_1_n_2 ;
  wire \y_27_reg_1760_reg[15]_i_1_n_3 ;
  wire \y_27_reg_1760_reg[15]_i_1_n_4 ;
  wire \y_27_reg_1760_reg[15]_i_1_n_5 ;
  wire \y_27_reg_1760_reg[15]_i_1_n_6 ;
  wire \y_27_reg_1760_reg[15]_i_1_n_7 ;
  wire \y_27_reg_1760_reg[15]_i_2_n_7 ;
  wire \y_27_reg_1760_reg[17]_i_1_n_7 ;
  wire \y_27_reg_1760_reg[17]_i_2_n_0 ;
  wire \y_27_reg_1760_reg[17]_i_2_n_1 ;
  wire \y_27_reg_1760_reg[17]_i_2_n_2 ;
  wire \y_27_reg_1760_reg[17]_i_2_n_3 ;
  wire \y_27_reg_1760_reg[17]_i_2_n_4 ;
  wire \y_27_reg_1760_reg[17]_i_2_n_5 ;
  wire \y_27_reg_1760_reg[17]_i_2_n_6 ;
  wire \y_27_reg_1760_reg[17]_i_2_n_7 ;
  wire \y_27_reg_1760_reg[7]_i_12_n_0 ;
  wire \y_27_reg_1760_reg[7]_i_12_n_1 ;
  wire \y_27_reg_1760_reg[7]_i_12_n_2 ;
  wire \y_27_reg_1760_reg[7]_i_12_n_3 ;
  wire \y_27_reg_1760_reg[7]_i_12_n_4 ;
  wire \y_27_reg_1760_reg[7]_i_12_n_5 ;
  wire \y_27_reg_1760_reg[7]_i_12_n_6 ;
  wire \y_27_reg_1760_reg[7]_i_12_n_7 ;
  wire \y_27_reg_1760_reg[7]_i_1_n_0 ;
  wire \y_27_reg_1760_reg[7]_i_1_n_1 ;
  wire \y_27_reg_1760_reg[7]_i_1_n_2 ;
  wire \y_27_reg_1760_reg[7]_i_1_n_3 ;
  wire \y_27_reg_1760_reg[7]_i_1_n_4 ;
  wire \y_27_reg_1760_reg[7]_i_1_n_5 ;
  wire \y_27_reg_1760_reg[7]_i_1_n_6 ;
  wire \y_27_reg_1760_reg[7]_i_1_n_7 ;
  wire \y_27_reg_1760_reg[7]_i_22_n_0 ;
  wire \y_27_reg_1760_reg[7]_i_22_n_1 ;
  wire \y_27_reg_1760_reg[7]_i_22_n_10 ;
  wire \y_27_reg_1760_reg[7]_i_22_n_11 ;
  wire \y_27_reg_1760_reg[7]_i_22_n_12 ;
  wire \y_27_reg_1760_reg[7]_i_22_n_13 ;
  wire \y_27_reg_1760_reg[7]_i_22_n_14 ;
  wire \y_27_reg_1760_reg[7]_i_22_n_15 ;
  wire \y_27_reg_1760_reg[7]_i_22_n_2 ;
  wire \y_27_reg_1760_reg[7]_i_22_n_3 ;
  wire \y_27_reg_1760_reg[7]_i_22_n_4 ;
  wire \y_27_reg_1760_reg[7]_i_22_n_5 ;
  wire \y_27_reg_1760_reg[7]_i_22_n_6 ;
  wire \y_27_reg_1760_reg[7]_i_22_n_7 ;
  wire \y_27_reg_1760_reg[7]_i_22_n_8 ;
  wire \y_27_reg_1760_reg[7]_i_22_n_9 ;
  wire \y_27_reg_1760_reg[7]_i_2_n_0 ;
  wire \y_27_reg_1760_reg[7]_i_2_n_1 ;
  wire \y_27_reg_1760_reg[7]_i_2_n_2 ;
  wire \y_27_reg_1760_reg[7]_i_2_n_3 ;
  wire \y_27_reg_1760_reg[7]_i_2_n_4 ;
  wire \y_27_reg_1760_reg[7]_i_2_n_5 ;
  wire \y_27_reg_1760_reg[7]_i_2_n_6 ;
  wire \y_27_reg_1760_reg[7]_i_2_n_7 ;
  wire \y_27_reg_1760_reg[7]_i_32_n_0 ;
  wire \y_27_reg_1760_reg[7]_i_32_n_1 ;
  wire \y_27_reg_1760_reg[7]_i_32_n_10 ;
  wire \y_27_reg_1760_reg[7]_i_32_n_11 ;
  wire \y_27_reg_1760_reg[7]_i_32_n_12 ;
  wire \y_27_reg_1760_reg[7]_i_32_n_13 ;
  wire \y_27_reg_1760_reg[7]_i_32_n_14 ;
  wire \y_27_reg_1760_reg[7]_i_32_n_15 ;
  wire \y_27_reg_1760_reg[7]_i_32_n_2 ;
  wire \y_27_reg_1760_reg[7]_i_32_n_3 ;
  wire \y_27_reg_1760_reg[7]_i_32_n_4 ;
  wire \y_27_reg_1760_reg[7]_i_32_n_5 ;
  wire \y_27_reg_1760_reg[7]_i_32_n_6 ;
  wire \y_27_reg_1760_reg[7]_i_32_n_7 ;
  wire \y_27_reg_1760_reg[7]_i_32_n_8 ;
  wire \y_27_reg_1760_reg[7]_i_32_n_9 ;
  wire [17:17]y_28_fu_963_p3;
  wire [16:0]y_28_fu_963_p3__0;
  wire [17:17]y_31_fu_1036_p3;
  wire [16:0]y_31_fu_1036_p3__0;
  wire [17:17]y_34_fu_1112_p3;
  wire [16:0]y_34_fu_1112_p3__0;
  wire [17:17]y_37_fu_1188_p3;
  wire [16:0]y_37_fu_1188_p3__0;
  wire [16:0]y_3_fu_292_p2;
  wire [17:0]y_40_fu_1264_p3;
  wire [16:0]y_40_reg_1796;
  wire \y_40_reg_1796[12]_i_10_n_0 ;
  wire \y_40_reg_1796[12]_i_11_n_0 ;
  wire \y_40_reg_1796[12]_i_12_n_0 ;
  wire \y_40_reg_1796[12]_i_13_n_0 ;
  wire \y_40_reg_1796[12]_i_14_n_0 ;
  wire \y_40_reg_1796[12]_i_15_n_0 ;
  wire \y_40_reg_1796[12]_i_16_n_0 ;
  wire \y_40_reg_1796[12]_i_17_n_0 ;
  wire \y_40_reg_1796[12]_i_18_n_0 ;
  wire \y_40_reg_1796[12]_i_3_n_0 ;
  wire \y_40_reg_1796[12]_i_4_n_0 ;
  wire \y_40_reg_1796[12]_i_5_n_0 ;
  wire \y_40_reg_1796[12]_i_6_n_0 ;
  wire \y_40_reg_1796[12]_i_7_n_0 ;
  wire \y_40_reg_1796[12]_i_8_n_0 ;
  wire \y_40_reg_1796[12]_i_9_n_0 ;
  wire \y_40_reg_1796[7]_i_10_n_0 ;
  wire \y_40_reg_1796[7]_i_11_n_0 ;
  wire \y_40_reg_1796[7]_i_12_n_0 ;
  wire \y_40_reg_1796[7]_i_14_n_0 ;
  wire \y_40_reg_1796[7]_i_15_n_0 ;
  wire \y_40_reg_1796[7]_i_16_n_0 ;
  wire \y_40_reg_1796[7]_i_17_n_0 ;
  wire \y_40_reg_1796[7]_i_18_n_0 ;
  wire \y_40_reg_1796[7]_i_19_n_0 ;
  wire \y_40_reg_1796[7]_i_20_n_0 ;
  wire \y_40_reg_1796[7]_i_21_n_0 ;
  wire \y_40_reg_1796[7]_i_22_n_0 ;
  wire \y_40_reg_1796[7]_i_23_n_0 ;
  wire \y_40_reg_1796[7]_i_24_n_0 ;
  wire \y_40_reg_1796[7]_i_25_n_0 ;
  wire \y_40_reg_1796[7]_i_26_n_0 ;
  wire \y_40_reg_1796[7]_i_27_n_0 ;
  wire \y_40_reg_1796[7]_i_28_n_0 ;
  wire \y_40_reg_1796[7]_i_29_n_0 ;
  wire \y_40_reg_1796[7]_i_2_n_0 ;
  wire \y_40_reg_1796[7]_i_30_n_0 ;
  wire \y_40_reg_1796[7]_i_4_n_0 ;
  wire \y_40_reg_1796[7]_i_5_n_0 ;
  wire \y_40_reg_1796[7]_i_6_n_0 ;
  wire \y_40_reg_1796[7]_i_7_n_0 ;
  wire \y_40_reg_1796[7]_i_8_n_0 ;
  wire \y_40_reg_1796[7]_i_9_n_0 ;
  wire \y_40_reg_1796_reg[12]_i_1_n_0 ;
  wire \y_40_reg_1796_reg[12]_i_1_n_1 ;
  wire \y_40_reg_1796_reg[12]_i_1_n_2 ;
  wire \y_40_reg_1796_reg[12]_i_1_n_3 ;
  wire \y_40_reg_1796_reg[12]_i_1_n_4 ;
  wire \y_40_reg_1796_reg[12]_i_1_n_5 ;
  wire \y_40_reg_1796_reg[12]_i_1_n_6 ;
  wire \y_40_reg_1796_reg[12]_i_1_n_7 ;
  wire \y_40_reg_1796_reg[12]_i_2_n_0 ;
  wire \y_40_reg_1796_reg[12]_i_2_n_1 ;
  wire \y_40_reg_1796_reg[12]_i_2_n_2 ;
  wire \y_40_reg_1796_reg[12]_i_2_n_3 ;
  wire \y_40_reg_1796_reg[12]_i_2_n_4 ;
  wire \y_40_reg_1796_reg[12]_i_2_n_5 ;
  wire \y_40_reg_1796_reg[12]_i_2_n_6 ;
  wire \y_40_reg_1796_reg[12]_i_2_n_7 ;
  wire \y_40_reg_1796_reg[7]_i_13_n_0 ;
  wire \y_40_reg_1796_reg[7]_i_13_n_1 ;
  wire \y_40_reg_1796_reg[7]_i_13_n_2 ;
  wire \y_40_reg_1796_reg[7]_i_13_n_3 ;
  wire \y_40_reg_1796_reg[7]_i_13_n_4 ;
  wire \y_40_reg_1796_reg[7]_i_13_n_5 ;
  wire \y_40_reg_1796_reg[7]_i_13_n_6 ;
  wire \y_40_reg_1796_reg[7]_i_13_n_7 ;
  wire \y_40_reg_1796_reg[7]_i_1_n_0 ;
  wire \y_40_reg_1796_reg[7]_i_1_n_1 ;
  wire \y_40_reg_1796_reg[7]_i_1_n_2 ;
  wire \y_40_reg_1796_reg[7]_i_1_n_3 ;
  wire \y_40_reg_1796_reg[7]_i_1_n_4 ;
  wire \y_40_reg_1796_reg[7]_i_1_n_5 ;
  wire \y_40_reg_1796_reg[7]_i_1_n_6 ;
  wire \y_40_reg_1796_reg[7]_i_1_n_7 ;
  wire \y_40_reg_1796_reg[7]_i_3_n_0 ;
  wire \y_40_reg_1796_reg[7]_i_3_n_1 ;
  wire \y_40_reg_1796_reg[7]_i_3_n_2 ;
  wire \y_40_reg_1796_reg[7]_i_3_n_3 ;
  wire \y_40_reg_1796_reg[7]_i_3_n_4 ;
  wire \y_40_reg_1796_reg[7]_i_3_n_5 ;
  wire \y_40_reg_1796_reg[7]_i_3_n_6 ;
  wire \y_40_reg_1796_reg[7]_i_3_n_7 ;
  wire [16:0]y_48_fu_280_p2;
  wire [16:0]y_5_fu_360_p2;
  wire [16:0]y_6_fu_372_p2;
  wire [16:0]y_9_fu_460_p2;
  wire [17:17]y_9_fu_460_p2__0;
  wire [15:0]y_in;
  wire [15:1]zext_ln10_fu_252_p1;
  wire [7:5]\NLW_add_ln43_9_reg_1765_reg[14]_i_1_CO_UNCONNECTED ;
  wire [7:6]\NLW_add_ln43_9_reg_1765_reg[14]_i_1_O_UNCONNECTED ;
  wire [7:1]\NLW_add_ln43_9_reg_1765_reg[14]_i_9_CO_UNCONNECTED ;
  wire [7:2]\NLW_add_ln43_9_reg_1765_reg[14]_i_9_O_UNCONNECTED ;
  wire [7:4]\NLW_ang_out[15]_INST_0_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_ang_out[15]_INST_0_i_1_O_UNCONNECTED ;
  wire [7:4]\NLW_ang_out[15]_INST_0_i_2_CO_UNCONNECTED ;
  wire [7:0]\NLW_ang_out[15]_INST_0_i_2_O_UNCONNECTED ;
  wire [7:4]\NLW_ang_out[15]_INST_0_i_5_CO_UNCONNECTED ;
  wire [7:0]\NLW_ang_out[15]_INST_0_i_5_O_UNCONNECTED ;
  wire [7:7]\NLW_ang_out[2]_INST_0_i_18_CO_UNCONNECTED ;
  wire [7:3]\NLW_ang_out[2]_INST_0_i_19_CO_UNCONNECTED ;
  wire [7:0]\NLW_ang_out[2]_INST_0_i_19_O_UNCONNECTED ;
  wire [7:1]\NLW_tmp_10_reg_1738_reg[0]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_tmp_10_reg_1738_reg[0]_i_1_O_UNCONNECTED ;
  wire [7:1]\NLW_tmp_12_reg_1775_reg[0]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_tmp_12_reg_1775_reg[0]_i_1_O_UNCONNECTED ;
  wire [7:1]\NLW_tmp_13_reg_1780_reg[0]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_tmp_13_reg_1780_reg[0]_i_1_O_UNCONNECTED ;
  wire [7:1]\NLW_tmp_13_reg_1780_reg[0]_i_13_CO_UNCONNECTED ;
  wire [7:2]\NLW_tmp_13_reg_1780_reg[0]_i_13_O_UNCONNECTED ;
  wire [7:1]\NLW_tmp_14_reg_1785_reg[0]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_tmp_14_reg_1785_reg[0]_i_1_O_UNCONNECTED ;
  wire [7:1]\NLW_tmp_14_reg_1785_reg[0]_i_4_CO_UNCONNECTED ;
  wire [7:2]\NLW_tmp_14_reg_1785_reg[0]_i_4_O_UNCONNECTED ;
  wire [7:1]\NLW_tmp_15_reg_1812_reg[0]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_tmp_15_reg_1812_reg[0]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_2_CO_UNCONNECTED ;
  wire [7:1]\NLW_tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_2_O_UNCONNECTED ;
  wire [7:0]\NLW_tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_3_CO_UNCONNECTED ;
  wire [7:1]\NLW_tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_3_O_UNCONNECTED ;
  wire [7:0]\NLW_tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_2_CO_UNCONNECTED ;
  wire [7:1]\NLW_tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_2_O_UNCONNECTED ;
  wire [7:0]\NLW_tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_3_CO_UNCONNECTED ;
  wire [7:1]\NLW_tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_3_O_UNCONNECTED ;
  wire [7:0]\NLW_tmp_5_reg_1699_pp0_iter1_reg_reg[0]_srl2_i_2_CO_UNCONNECTED ;
  wire [7:1]\NLW_tmp_5_reg_1699_pp0_iter1_reg_reg[0]_srl2_i_2_O_UNCONNECTED ;
  wire [7:1]\NLW_tmp_5_reg_1699_pp0_iter1_reg_reg[0]_srl2_i_3_CO_UNCONNECTED ;
  wire [7:2]\NLW_tmp_5_reg_1699_pp0_iter1_reg_reg[0]_srl2_i_3_O_UNCONNECTED ;
  wire [7:1]\NLW_tmp_6_reg_1726_reg[0]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_tmp_6_reg_1726_reg[0]_i_1_O_UNCONNECTED ;
  wire [7:1]\NLW_tmp_9_reg_1733_reg[0]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_tmp_9_reg_1733_reg[0]_i_1_O_UNCONNECTED ;
  wire [7:1]\NLW_tmp_9_reg_1733_reg[0]_i_17_CO_UNCONNECTED ;
  wire [7:2]\NLW_tmp_9_reg_1733_reg[0]_i_17_O_UNCONNECTED ;
  wire [7:1]\NLW_tmp_9_reg_1733_reg[0]_i_26_CO_UNCONNECTED ;
  wire [7:2]\NLW_tmp_9_reg_1733_reg[0]_i_26_O_UNCONNECTED ;
  wire [7:1]\NLW_tmp_9_reg_1733_reg[0]_i_3_CO_UNCONNECTED ;
  wire [7:2]\NLW_tmp_9_reg_1733_reg[0]_i_3_O_UNCONNECTED ;
  wire [7:1]\NLW_x_26_reg_1745_reg[17]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_x_26_reg_1745_reg[17]_i_1_O_UNCONNECTED ;
  wire [7:1]\NLW_x_27_reg_1755_reg[17]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_x_27_reg_1755_reg[17]_i_1_O_UNCONNECTED ;
  wire [7:1]\NLW_xs_13_reg_1802_reg[4]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_xs_13_reg_1802_reg[4]_i_1_O_UNCONNECTED ;
  wire [7:1]\NLW_xs_13_reg_1802_reg[4]_i_2_CO_UNCONNECTED ;
  wire [7:2]\NLW_xs_13_reg_1802_reg[4]_i_2_O_UNCONNECTED ;
  wire [7:1]\NLW_xs_4_reg_1716_reg[13]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_xs_4_reg_1716_reg[13]_i_1_O_UNCONNECTED ;
  wire [7:1]\NLW_xs_4_reg_1716_reg[13]_i_2_CO_UNCONNECTED ;
  wire [7:2]\NLW_xs_4_reg_1716_reg[13]_i_2_O_UNCONNECTED ;
  wire [7:0]\NLW_xs_4_reg_1716_reg[13]_i_3_CO_UNCONNECTED ;
  wire [7:1]\NLW_xs_4_reg_1716_reg[13]_i_3_O_UNCONNECTED ;
  wire [7:0]\NLW_xs_4_reg_1716_reg[13]_i_6_CO_UNCONNECTED ;
  wire [7:1]\NLW_xs_4_reg_1716_reg[13]_i_6_O_UNCONNECTED ;
  wire [7:1]\NLW_y_26_reg_1750_reg[17]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_y_26_reg_1750_reg[17]_i_1_O_UNCONNECTED ;
  wire [7:1]\NLW_y_27_reg_1760_reg[15]_i_11_CO_UNCONNECTED ;
  wire [7:2]\NLW_y_27_reg_1760_reg[15]_i_11_O_UNCONNECTED ;
  wire [7:1]\NLW_y_27_reg_1760_reg[15]_i_2_CO_UNCONNECTED ;
  wire [7:2]\NLW_y_27_reg_1760_reg[15]_i_2_O_UNCONNECTED ;
  wire [7:1]\NLW_y_27_reg_1760_reg[17]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_y_27_reg_1760_reg[17]_i_1_O_UNCONNECTED ;

  assign ang_out[15:1] = \^ang_out [15:1];
  assign ang_out[0] = \<const0> ;
  assign ang_out_ap_vld = ap_done;
  assign ap_ready = ap_start;
  assign mag_out_ap_vld = ap_done;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln43_9_reg_1765[14]_i_11 
       (.I0(xs_4_reg_1716[13]),
        .O(\add_ln43_9_reg_1765[14]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \add_ln43_9_reg_1765[14]_i_12 
       (.I0(y_13_reg_1710[16]),
        .I1(xs_4_reg_1716[13]),
        .I2(tmp_6_reg_1726),
        .O(\add_ln43_9_reg_1765[14]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \add_ln43_9_reg_1765[14]_i_13 
       (.I0(y_13_reg_1710[15]),
        .I1(xs_4_reg_1716[13]),
        .I2(tmp_6_reg_1726),
        .O(\add_ln43_9_reg_1765[14]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \add_ln43_9_reg_1765[14]_i_14 
       (.I0(y_13_reg_1710[14]),
        .I1(xs_4_reg_1716[13]),
        .I2(tmp_6_reg_1726),
        .O(\add_ln43_9_reg_1765[14]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \add_ln43_9_reg_1765[14]_i_15 
       (.I0(y_13_reg_1710[13]),
        .I1(xs_4_reg_1716[13]),
        .I2(tmp_6_reg_1726),
        .O(\add_ln43_9_reg_1765[14]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \add_ln43_9_reg_1765[14]_i_16 
       (.I0(y_13_reg_1710[12]),
        .I1(xs_4_reg_1716[12]),
        .I2(tmp_6_reg_1726),
        .O(\add_ln43_9_reg_1765[14]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \add_ln43_9_reg_1765[14]_i_17 
       (.I0(y_13_reg_1710[11]),
        .I1(xs_4_reg_1716[11]),
        .I2(tmp_6_reg_1726),
        .O(\add_ln43_9_reg_1765[14]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \add_ln43_9_reg_1765[14]_i_18 
       (.I0(y_13_reg_1710[10]),
        .I1(xs_4_reg_1716[10]),
        .I2(tmp_6_reg_1726),
        .O(\add_ln43_9_reg_1765[14]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \add_ln43_9_reg_1765[14]_i_19 
       (.I0(y_13_reg_1710[9]),
        .I1(xs_4_reg_1716[9]),
        .I2(tmp_6_reg_1726),
        .O(\add_ln43_9_reg_1765[14]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF371)) 
    \add_ln43_9_reg_1765[14]_i_2 
       (.I0(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .I1(tmp_6_reg_1726),
        .I2(off_1_reg_1678[12]),
        .I3(off_1_reg_1678[8]),
        .O(\add_ln43_9_reg_1765[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \add_ln43_9_reg_1765[14]_i_20 
       (.I0(y_13_reg_1710[8]),
        .I1(xs_4_reg_1716[8]),
        .I2(tmp_6_reg_1726),
        .O(\add_ln43_9_reg_1765[14]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \add_ln43_9_reg_1765[14]_i_3 
       (.I0(off_1_reg_1678[8]),
        .I1(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .I2(sel),
        .O(\add_ln43_9_reg_1765[14]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \add_ln43_9_reg_1765[14]_i_4 
       (.I0(off_1_reg_1678[13]),
        .I1(off_1_reg_1678[12]),
        .O(\add_ln43_9_reg_1765[14]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \add_ln43_9_reg_1765[14]_i_5 
       (.I0(off_1_reg_1678[12]),
        .I1(off_1_reg_1678[13]),
        .O(\add_ln43_9_reg_1765[14]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \add_ln43_9_reg_1765[14]_i_6 
       (.I0(off_1_reg_1678[13]),
        .I1(off_1_reg_1678[12]),
        .O(\add_ln43_9_reg_1765[14]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h8ECF7130)) 
    \add_ln43_9_reg_1765[14]_i_7 
       (.I0(off_1_reg_1678[8]),
        .I1(off_1_reg_1678[12]),
        .I2(tmp_6_reg_1726),
        .I3(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .I4(off_1_reg_1678[13]),
        .O(\add_ln43_9_reg_1765[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0FF08778)) 
    \add_ln43_9_reg_1765[14]_i_8 
       (.I0(sel),
        .I1(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .I2(tmp_6_reg_1726),
        .I3(off_1_reg_1678[12]),
        .I4(off_1_reg_1678[8]),
        .O(\add_ln43_9_reg_1765[14]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \add_ln43_9_reg_1765[8]_i_10 
       (.I0(tmp_6_reg_1726),
        .I1(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .I2(off_1_reg_1678[8]),
        .I3(sel),
        .O(\add_ln43_9_reg_1765[8]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln43_9_reg_1765[8]_i_11 
       (.I0(tmp_6_reg_1726),
        .I1(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\add_ln43_9_reg_1765[8]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hC9)) 
    \add_ln43_9_reg_1765[8]_i_12 
       (.I0(sel),
        .I1(tmp_6_reg_1726),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\add_ln43_9_reg_1765[8]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \add_ln43_9_reg_1765[8]_i_13 
       (.I0(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .I1(tmp_6_reg_1726),
        .I2(sel),
        .O(\add_ln43_9_reg_1765[8]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln43_9_reg_1765[8]_i_14 
       (.I0(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .I1(tmp_6_reg_1726),
        .O(\add_ln43_9_reg_1765[8]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'hD)) 
    \add_ln43_9_reg_1765[8]_i_15 
       (.I0(tmp_6_reg_1726),
        .I1(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\add_ln43_9_reg_1765[8]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h87)) 
    \add_ln43_9_reg_1765[8]_i_16 
       (.I0(tmp_6_reg_1726),
        .I1(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .I2(sel),
        .O(\add_ln43_9_reg_1765[8]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \add_ln43_9_reg_1765[8]_i_17 
       (.I0(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .I1(tmp_6_reg_1726),
        .I2(sel),
        .O(\add_ln43_9_reg_1765[8]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h8D)) 
    \add_ln43_9_reg_1765[8]_i_2 
       (.I0(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .I1(tmp_6_reg_1726),
        .I2(sel),
        .O(\add_ln43_9_reg_1765[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln43_9_reg_1765[8]_i_3 
       (.I0(tmp_6_reg_1726),
        .I1(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\add_ln43_9_reg_1765[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln43_9_reg_1765[8]_i_4 
       (.I0(sel),
        .I1(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\add_ln43_9_reg_1765[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \add_ln43_9_reg_1765[8]_i_5 
       (.I0(tmp_6_reg_1726),
        .I1(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .I2(sel),
        .O(\add_ln43_9_reg_1765[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln43_9_reg_1765[8]_i_6 
       (.I0(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .I1(tmp_6_reg_1726),
        .O(\add_ln43_9_reg_1765[8]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \add_ln43_9_reg_1765[8]_i_7 
       (.I0(tmp_6_reg_1726),
        .O(\add_ln43_9_reg_1765[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \add_ln43_9_reg_1765[8]_i_8 
       (.I0(tmp_6_reg_1726),
        .I1(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\add_ln43_9_reg_1765[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \add_ln43_9_reg_1765[8]_i_9 
       (.I0(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .I1(tmp_6_reg_1726),
        .O(add_ln43_7_fu_937_p2));
  FDRE \add_ln43_9_reg_1765_pp0_iter2_reg_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1765_reg_n_0_[10] ),
        .Q(sext_ln43_6_fu_1622_p1[10]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1765_pp0_iter2_reg_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1765_reg_n_0_[11] ),
        .Q(sext_ln43_6_fu_1622_p1[11]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1765_pp0_iter2_reg_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1765_reg_n_0_[12] ),
        .Q(sext_ln43_6_fu_1622_p1[12]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1765_pp0_iter2_reg_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1765_reg_n_0_[13] ),
        .Q(sext_ln43_6_fu_1622_p1[13]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1765_pp0_iter2_reg_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1765_reg_n_0_[14] ),
        .Q(sext_ln43_6_fu_1622_p1[14]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1765_pp0_iter2_reg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1765_reg_n_0_[1] ),
        .Q(sext_ln43_6_fu_1622_p1[1]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1765_pp0_iter2_reg_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1765_reg_n_0_[2] ),
        .Q(sext_ln43_6_fu_1622_p1[2]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1765_pp0_iter2_reg_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1765_reg_n_0_[3] ),
        .Q(sext_ln43_6_fu_1622_p1[3]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1765_pp0_iter2_reg_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1765_reg_n_0_[4] ),
        .Q(sext_ln43_6_fu_1622_p1[4]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1765_pp0_iter2_reg_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1765_reg_n_0_[5] ),
        .Q(sext_ln43_6_fu_1622_p1[5]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1765_pp0_iter2_reg_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1765_reg_n_0_[6] ),
        .Q(sext_ln43_6_fu_1622_p1[6]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1765_pp0_iter2_reg_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1765_reg_n_0_[7] ),
        .Q(sext_ln43_6_fu_1622_p1[7]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1765_pp0_iter2_reg_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1765_reg_n_0_[8] ),
        .Q(sext_ln43_6_fu_1622_p1[8]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1765_pp0_iter2_reg_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1765_reg_n_0_[9] ),
        .Q(sext_ln43_6_fu_1622_p1[9]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1765_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_952_p2[10]),
        .Q(\add_ln43_9_reg_1765_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1765_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_952_p2[11]),
        .Q(\add_ln43_9_reg_1765_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1765_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_952_p2[12]),
        .Q(\add_ln43_9_reg_1765_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1765_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_952_p2[13]),
        .Q(\add_ln43_9_reg_1765_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1765_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_952_p2[14]),
        .Q(\add_ln43_9_reg_1765_reg_n_0_[14] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \add_ln43_9_reg_1765_reg[14]_i_1 
       (.CI(\add_ln43_9_reg_1765_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_add_ln43_9_reg_1765_reg[14]_i_1_CO_UNCONNECTED [7:5],\add_ln43_9_reg_1765_reg[14]_i_1_n_3 ,\add_ln43_9_reg_1765_reg[14]_i_1_n_4 ,\add_ln43_9_reg_1765_reg[14]_i_1_n_5 ,\add_ln43_9_reg_1765_reg[14]_i_1_n_6 ,\add_ln43_9_reg_1765_reg[14]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,off_1_reg_1678[12],off_1_reg_1678[13],1'b0,\add_ln43_9_reg_1765[14]_i_2_n_0 ,\add_ln43_9_reg_1765[14]_i_3_n_0 }),
        .O({\NLW_add_ln43_9_reg_1765_reg[14]_i_1_O_UNCONNECTED [7:6],add_ln43_9_fu_952_p2[14:9]}),
        .S({1'b0,1'b0,\add_ln43_9_reg_1765[14]_i_4_n_0 ,\add_ln43_9_reg_1765[14]_i_5_n_0 ,\add_ln43_9_reg_1765[14]_i_6_n_0 ,1'b1,\add_ln43_9_reg_1765[14]_i_7_n_0 ,\add_ln43_9_reg_1765[14]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \add_ln43_9_reg_1765_reg[14]_i_10 
       (.CI(\y_27_reg_1760_reg[7]_i_32_n_0 ),
        .CI_TOP(1'b0),
        .CO({\add_ln43_9_reg_1765_reg[14]_i_10_n_0 ,\add_ln43_9_reg_1765_reg[14]_i_10_n_1 ,\add_ln43_9_reg_1765_reg[14]_i_10_n_2 ,\add_ln43_9_reg_1765_reg[14]_i_10_n_3 ,\add_ln43_9_reg_1765_reg[14]_i_10_n_4 ,\add_ln43_9_reg_1765_reg[14]_i_10_n_5 ,\add_ln43_9_reg_1765_reg[14]_i_10_n_6 ,\add_ln43_9_reg_1765_reg[14]_i_10_n_7 }),
        .DI(y_13_reg_1710[15:8]),
        .O({\add_ln43_9_reg_1765_reg[14]_i_10_n_8 ,\add_ln43_9_reg_1765_reg[14]_i_10_n_9 ,\add_ln43_9_reg_1765_reg[14]_i_10_n_10 ,\add_ln43_9_reg_1765_reg[14]_i_10_n_11 ,\add_ln43_9_reg_1765_reg[14]_i_10_n_12 ,\add_ln43_9_reg_1765_reg[14]_i_10_n_13 ,\add_ln43_9_reg_1765_reg[14]_i_10_n_14 ,\add_ln43_9_reg_1765_reg[14]_i_10_n_15 }),
        .S({\add_ln43_9_reg_1765[14]_i_13_n_0 ,\add_ln43_9_reg_1765[14]_i_14_n_0 ,\add_ln43_9_reg_1765[14]_i_15_n_0 ,\add_ln43_9_reg_1765[14]_i_16_n_0 ,\add_ln43_9_reg_1765[14]_i_17_n_0 ,\add_ln43_9_reg_1765[14]_i_18_n_0 ,\add_ln43_9_reg_1765[14]_i_19_n_0 ,\add_ln43_9_reg_1765[14]_i_20_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \add_ln43_9_reg_1765_reg[14]_i_9 
       (.CI(\add_ln43_9_reg_1765_reg[14]_i_10_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_add_ln43_9_reg_1765_reg[14]_i_9_CO_UNCONNECTED [7:1],\add_ln43_9_reg_1765_reg[14]_i_9_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_13_reg_1710[16]}),
        .O({\NLW_add_ln43_9_reg_1765_reg[14]_i_9_O_UNCONNECTED [7:2],sel,\add_ln43_9_reg_1765_reg[14]_i_9_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\add_ln43_9_reg_1765[14]_i_11_n_0 ,\add_ln43_9_reg_1765[14]_i_12_n_0 }));
  FDRE \add_ln43_9_reg_1765_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_952_p2[1]),
        .Q(\add_ln43_9_reg_1765_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1765_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_952_p2[2]),
        .Q(\add_ln43_9_reg_1765_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1765_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_952_p2[3]),
        .Q(\add_ln43_9_reg_1765_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1765_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_952_p2[4]),
        .Q(\add_ln43_9_reg_1765_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1765_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_952_p2[5]),
        .Q(\add_ln43_9_reg_1765_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1765_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_952_p2[6]),
        .Q(\add_ln43_9_reg_1765_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1765_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_952_p2[7]),
        .Q(\add_ln43_9_reg_1765_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1765_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_952_p2[8]),
        .Q(\add_ln43_9_reg_1765_reg_n_0_[8] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \add_ln43_9_reg_1765_reg[8]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\add_ln43_9_reg_1765_reg[8]_i_1_n_0 ,\add_ln43_9_reg_1765_reg[8]_i_1_n_1 ,\add_ln43_9_reg_1765_reg[8]_i_1_n_2 ,\add_ln43_9_reg_1765_reg[8]_i_1_n_3 ,\add_ln43_9_reg_1765_reg[8]_i_1_n_4 ,\add_ln43_9_reg_1765_reg[8]_i_1_n_5 ,\add_ln43_9_reg_1765_reg[8]_i_1_n_6 ,\add_ln43_9_reg_1765_reg[8]_i_1_n_7 }),
        .DI({\add_ln43_9_reg_1765[8]_i_2_n_0 ,\add_ln43_9_reg_1765[8]_i_3_n_0 ,\add_ln43_9_reg_1765[8]_i_4_n_0 ,\add_ln43_9_reg_1765[8]_i_5_n_0 ,\add_ln43_9_reg_1765[8]_i_6_n_0 ,\add_ln43_9_reg_1765[8]_i_7_n_0 ,\add_ln43_9_reg_1765[8]_i_8_n_0 ,add_ln43_7_fu_937_p2}),
        .O(add_ln43_9_fu_952_p2[8:1]),
        .S({\add_ln43_9_reg_1765[8]_i_10_n_0 ,\add_ln43_9_reg_1765[8]_i_11_n_0 ,\add_ln43_9_reg_1765[8]_i_12_n_0 ,\add_ln43_9_reg_1765[8]_i_13_n_0 ,\add_ln43_9_reg_1765[8]_i_14_n_0 ,\add_ln43_9_reg_1765[8]_i_15_n_0 ,\add_ln43_9_reg_1765[8]_i_16_n_0 ,\add_ln43_9_reg_1765[8]_i_17_n_0 }));
  FDRE \add_ln43_9_reg_1765_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_952_p2[9]),
        .Q(\add_ln43_9_reg_1765_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA56A)) 
    \ang_out[10]_INST_0 
       (.I0(a_fu_1631_p2[10]),
        .I1(\ang_out[15]_INST_0_i_5_n_4 ),
        .I2(a_fu_1631_p2[9]),
        .I3(\ang_out[15]_INST_0_i_2_n_4 ),
        .O(\^ang_out [10]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6559666A)) 
    \ang_out[11]_INST_0 
       (.I0(a_fu_1631_p2[11]),
        .I1(\ang_out[15]_INST_0_i_2_n_4 ),
        .I2(a_fu_1631_p2[10]),
        .I3(a_fu_1631_p2[9]),
        .I4(\ang_out[15]_INST_0_i_5_n_4 ),
        .O(\^ang_out [11]));
  LUT6 #(
    .INIT(64'h666666AAAA9A9A9A)) 
    \ang_out[12]_INST_0 
       (.I0(a_fu_1631_p2[12]),
        .I1(\ang_out[15]_INST_0_i_2_n_4 ),
        .I2(\ang_out[15]_INST_0_i_5_n_4 ),
        .I3(a_fu_1631_p2[9]),
        .I4(a_fu_1631_p2[10]),
        .I5(a_fu_1631_p2[11]),
        .O(\^ang_out [12]));
  LUT2 #(
    .INIT(4'h9)) 
    \ang_out[13]_INST_0 
       (.I0(a_fu_1631_p2[13]),
        .I1(\ang_out[13]_INST_0_i_1_n_0 ),
        .O(\^ang_out [13]));
  LUT6 #(
    .INIT(64'hC0C0C00055575757)) 
    \ang_out[13]_INST_0_i_1 
       (.I0(\ang_out[15]_INST_0_i_5_n_4 ),
        .I1(a_fu_1631_p2[11]),
        .I2(a_fu_1631_p2[12]),
        .I3(a_fu_1631_p2[10]),
        .I4(a_fu_1631_p2[9]),
        .I5(\ang_out[15]_INST_0_i_2_n_4 ),
        .O(\ang_out[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA9A559A)) 
    \ang_out[14]_INST_0 
       (.I0(a_fu_1631_p2[14]),
        .I1(\ang_out[15]_INST_0_i_4_n_0 ),
        .I2(\ang_out[15]_INST_0_i_5_n_4 ),
        .I3(\ang_out[15]_INST_0_i_2_n_4 ),
        .I4(\ang_out[15]_INST_0_i_3_n_0 ),
        .O(\^ang_out [14]));
  LUT6 #(
    .INIT(64'hA6AAA69995999599)) 
    \ang_out[15]_INST_0 
       (.I0(\ang_out[15]_INST_0_i_1_n_2 ),
        .I1(\ang_out[15]_INST_0_i_2_n_4 ),
        .I2(\ang_out[15]_INST_0_i_3_n_0 ),
        .I3(a_fu_1631_p2[14]),
        .I4(\ang_out[15]_INST_0_i_4_n_0 ),
        .I5(\ang_out[15]_INST_0_i_5_n_4 ),
        .O(\^ang_out [15]));
  CARRY8 \ang_out[15]_INST_0_i_1 
       (.CI(\ang_out[2]_INST_0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_ang_out[15]_INST_0_i_1_CO_UNCONNECTED [7:6],\ang_out[15]_INST_0_i_1_n_2 ,\NLW_ang_out[15]_INST_0_i_1_CO_UNCONNECTED [4],\ang_out[15]_INST_0_i_1_n_4 ,\ang_out[15]_INST_0_i_1_n_5 ,\ang_out[15]_INST_0_i_1_n_6 ,\ang_out[15]_INST_0_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,\ang_out[15]_INST_0_i_6_n_0 ,\ang_out[15]_INST_0_i_7_n_0 ,\ang_out[15]_INST_0_i_8_n_0 ,\ang_out[15]_INST_0_i_9_n_0 ,\ang_out[15]_INST_0_i_10_n_0 }),
        .O({\NLW_ang_out[15]_INST_0_i_1_O_UNCONNECTED [7:5],a_fu_1631_p2[14:10]}),
        .S({1'b0,1'b0,1'b1,\ang_out[15]_INST_0_i_11_n_0 ,\ang_out[15]_INST_0_i_12_n_0 ,\ang_out[15]_INST_0_i_13_n_0 ,\ang_out[15]_INST_0_i_14_n_0 ,\ang_out[15]_INST_0_i_15_n_0 }));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \ang_out[15]_INST_0_i_10 
       (.I0(sext_ln43_6_fu_1622_p1[8]),
        .I1(sext_ln43_4_fu_1618_p1[8]),
        .I2(sext_ln43_6_fu_1622_p1[9]),
        .I3(sext_ln43_4_fu_1618_p1[9]),
        .O(\ang_out[15]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hEF0E10F1)) 
    \ang_out[15]_INST_0_i_11 
       (.I0(sext_ln43_6_fu_1622_p1[12]),
        .I1(sext_ln43_4_fu_1618_p1[12]),
        .I2(sext_ln43_4_fu_1618_p1[13]),
        .I3(sext_ln43_6_fu_1622_p1[13]),
        .I4(sext_ln43_6_fu_1622_p1[14]),
        .O(\ang_out[15]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h96969669)) 
    \ang_out[15]_INST_0_i_12 
       (.I0(\ang_out[15]_INST_0_i_7_n_0 ),
        .I1(sext_ln43_4_fu_1618_p1[13]),
        .I2(sext_ln43_6_fu_1622_p1[13]),
        .I3(sext_ln43_4_fu_1618_p1[12]),
        .I4(sext_ln43_6_fu_1622_p1[12]),
        .O(\ang_out[15]_INST_0_i_12_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \ang_out[15]_INST_0_i_13 
       (.I0(sext_ln43_6_fu_1622_p1[11]),
        .I1(sext_ln43_4_fu_1618_p1[11]),
        .I2(sext_ln43_6_fu_1622_p1[12]),
        .I3(sext_ln43_4_fu_1618_p1[12]),
        .I4(\ang_out[15]_INST_0_i_8_n_0 ),
        .O(\ang_out[15]_INST_0_i_13_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \ang_out[15]_INST_0_i_14 
       (.I0(sext_ln43_6_fu_1622_p1[10]),
        .I1(sext_ln43_4_fu_1618_p1[10]),
        .I2(sext_ln43_6_fu_1622_p1[11]),
        .I3(sext_ln43_4_fu_1618_p1[11]),
        .I4(\ang_out[15]_INST_0_i_9_n_0 ),
        .O(\ang_out[15]_INST_0_i_14_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \ang_out[15]_INST_0_i_15 
       (.I0(sext_ln43_6_fu_1622_p1[9]),
        .I1(sext_ln43_4_fu_1618_p1[9]),
        .I2(sext_ln43_6_fu_1622_p1[10]),
        .I3(sext_ln43_4_fu_1618_p1[10]),
        .I4(\ang_out[15]_INST_0_i_10_n_0 ),
        .O(\ang_out[15]_INST_0_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ang_out[15]_INST_0_i_16 
       (.I0(\ang_out[15]_INST_0_i_1_n_2 ),
        .I1(a_fu_1631_p2[14]),
        .O(\ang_out[15]_INST_0_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ang_out[15]_INST_0_i_17 
       (.I0(a_fu_1631_p2[12]),
        .I1(a_fu_1631_p2[13]),
        .O(\ang_out[15]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ang_out[15]_INST_0_i_18 
       (.I0(\^ang_out [8]),
        .I1(a_fu_1631_p2[9]),
        .O(\ang_out[15]_INST_0_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ang_out[15]_INST_0_i_19 
       (.I0(\ang_out[15]_INST_0_i_1_n_2 ),
        .I1(a_fu_1631_p2[14]),
        .O(\ang_out[15]_INST_0_i_19_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \ang_out[15]_INST_0_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\NLW_ang_out[15]_INST_0_i_2_CO_UNCONNECTED [7:4],\ang_out[15]_INST_0_i_2_n_4 ,\ang_out[15]_INST_0_i_2_n_5 ,\ang_out[15]_INST_0_i_2_n_6 ,\ang_out[15]_INST_0_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\ang_out[15]_INST_0_i_16_n_0 ,\ang_out[15]_INST_0_i_17_n_0 ,1'b0,\ang_out[15]_INST_0_i_18_n_0 }),
        .O(\NLW_ang_out[15]_INST_0_i_2_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\ang_out[15]_INST_0_i_19_n_0 ,\ang_out[15]_INST_0_i_20_n_0 ,\ang_out[15]_INST_0_i_21_n_0 ,\ang_out[15]_INST_0_i_22_n_0 }));
  LUT2 #(
    .INIT(4'h2)) 
    \ang_out[15]_INST_0_i_20 
       (.I0(a_fu_1631_p2[13]),
        .I1(a_fu_1631_p2[12]),
        .O(\ang_out[15]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ang_out[15]_INST_0_i_21 
       (.I0(a_fu_1631_p2[11]),
        .I1(a_fu_1631_p2[10]),
        .O(\ang_out[15]_INST_0_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ang_out[15]_INST_0_i_22 
       (.I0(a_fu_1631_p2[9]),
        .I1(\^ang_out [8]),
        .O(\ang_out[15]_INST_0_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ang_out[15]_INST_0_i_23 
       (.I0(\ang_out[15]_INST_0_i_1_n_2 ),
        .I1(a_fu_1631_p2[14]),
        .O(\ang_out[15]_INST_0_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ang_out[15]_INST_0_i_24 
       (.I0(a_fu_1631_p2[12]),
        .I1(a_fu_1631_p2[13]),
        .O(\ang_out[15]_INST_0_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ang_out[15]_INST_0_i_25 
       (.I0(\^ang_out [8]),
        .I1(a_fu_1631_p2[9]),
        .O(\ang_out[15]_INST_0_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ang_out[15]_INST_0_i_26 
       (.I0(a_fu_1631_p2[14]),
        .I1(\ang_out[15]_INST_0_i_1_n_2 ),
        .O(\ang_out[15]_INST_0_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ang_out[15]_INST_0_i_27 
       (.I0(a_fu_1631_p2[12]),
        .I1(a_fu_1631_p2[13]),
        .O(\ang_out[15]_INST_0_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ang_out[15]_INST_0_i_28 
       (.I0(a_fu_1631_p2[11]),
        .I1(a_fu_1631_p2[10]),
        .O(\ang_out[15]_INST_0_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ang_out[15]_INST_0_i_29 
       (.I0(a_fu_1631_p2[9]),
        .I1(\^ang_out [8]),
        .O(\ang_out[15]_INST_0_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h01555555)) 
    \ang_out[15]_INST_0_i_3 
       (.I0(a_fu_1631_p2[13]),
        .I1(a_fu_1631_p2[9]),
        .I2(a_fu_1631_p2[10]),
        .I3(a_fu_1631_p2[12]),
        .I4(a_fu_1631_p2[11]),
        .O(\ang_out[15]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAAAA80)) 
    \ang_out[15]_INST_0_i_4 
       (.I0(a_fu_1631_p2[13]),
        .I1(a_fu_1631_p2[9]),
        .I2(a_fu_1631_p2[10]),
        .I3(a_fu_1631_p2[12]),
        .I4(a_fu_1631_p2[11]),
        .O(\ang_out[15]_INST_0_i_4_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \ang_out[15]_INST_0_i_5 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\NLW_ang_out[15]_INST_0_i_5_CO_UNCONNECTED [7:4],\ang_out[15]_INST_0_i_5_n_4 ,\ang_out[15]_INST_0_i_5_n_5 ,\ang_out[15]_INST_0_i_5_n_6 ,\ang_out[15]_INST_0_i_5_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\ang_out[15]_INST_0_i_23_n_0 ,\ang_out[15]_INST_0_i_24_n_0 ,1'b0,\ang_out[15]_INST_0_i_25_n_0 }),
        .O(\NLW_ang_out[15]_INST_0_i_5_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\ang_out[15]_INST_0_i_26_n_0 ,\ang_out[15]_INST_0_i_27_n_0 ,\ang_out[15]_INST_0_i_28_n_0 ,\ang_out[15]_INST_0_i_29_n_0 }));
  LUT4 #(
    .INIT(16'hBBB2)) 
    \ang_out[15]_INST_0_i_6 
       (.I0(sext_ln43_6_fu_1622_p1[13]),
        .I1(sext_ln43_4_fu_1618_p1[13]),
        .I2(sext_ln43_4_fu_1618_p1[12]),
        .I3(sext_ln43_6_fu_1622_p1[12]),
        .O(\ang_out[15]_INST_0_i_6_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \ang_out[15]_INST_0_i_7 
       (.I0(sext_ln43_6_fu_1622_p1[11]),
        .I1(sext_ln43_4_fu_1618_p1[11]),
        .I2(sext_ln43_6_fu_1622_p1[12]),
        .I3(sext_ln43_4_fu_1618_p1[12]),
        .O(\ang_out[15]_INST_0_i_7_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \ang_out[15]_INST_0_i_8 
       (.I0(sext_ln43_6_fu_1622_p1[10]),
        .I1(sext_ln43_4_fu_1618_p1[10]),
        .I2(sext_ln43_6_fu_1622_p1[11]),
        .I3(sext_ln43_4_fu_1618_p1[11]),
        .O(\ang_out[15]_INST_0_i_8_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \ang_out[15]_INST_0_i_9 
       (.I0(sext_ln43_6_fu_1622_p1[9]),
        .I1(sext_ln43_4_fu_1618_p1[9]),
        .I2(sext_ln43_6_fu_1622_p1[10]),
        .I3(sext_ln43_4_fu_1618_p1[10]),
        .O(\ang_out[15]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \ang_out[1]_INST_0 
       (.I0(tmp_11_reg_1770),
        .I1(tmp_14_reg_1785),
        .I2(tmp_9_reg_1733_pp0_iter2_reg),
        .I3(sext_ln43_6_fu_1622_p1[1]),
        .O(\^ang_out [1]));
  CARRY8 \ang_out[2]_INST_0 
       (.CI(\ang_out[2]_INST_0_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\ang_out[2]_INST_0_n_0 ,\ang_out[2]_INST_0_n_1 ,\ang_out[2]_INST_0_n_2 ,\ang_out[2]_INST_0_n_3 ,\ang_out[2]_INST_0_n_4 ,\ang_out[2]_INST_0_n_5 ,\ang_out[2]_INST_0_n_6 ,\ang_out[2]_INST_0_n_7 }),
        .DI({\ang_out[2]_INST_0_i_2_n_0 ,\ang_out[2]_INST_0_i_3_n_0 ,\ang_out[2]_INST_0_i_4_n_0 ,\ang_out[2]_INST_0_i_5_n_0 ,\ang_out[2]_INST_0_i_6_n_0 ,\ang_out[2]_INST_0_i_7_n_0 ,\ang_out[2]_INST_0_i_8_n_0 ,\ang_out[2]_INST_0_i_9_n_0 }),
        .O({a_fu_1631_p2[9],\^ang_out [8:2]}),
        .S({\ang_out[2]_INST_0_i_10_n_0 ,\ang_out[2]_INST_0_i_11_n_0 ,\ang_out[2]_INST_0_i_12_n_0 ,\ang_out[2]_INST_0_i_13_n_0 ,\ang_out[2]_INST_0_i_14_n_0 ,\ang_out[2]_INST_0_i_15_n_0 ,\ang_out[2]_INST_0_i_16_n_0 ,\ang_out[2]_INST_0_i_17_n_0 }));
  LUT4 #(
    .INIT(16'h9669)) 
    \ang_out[2]_INST_0_i_1 
       (.I0(sext_ln43_6_fu_1622_p1[1]),
        .I1(tmp_9_reg_1733_pp0_iter2_reg),
        .I2(tmp_14_reg_1785),
        .I3(tmp_11_reg_1770),
        .O(\ang_out[2]_INST_0_i_1_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \ang_out[2]_INST_0_i_10 
       (.I0(sext_ln43_6_fu_1622_p1[8]),
        .I1(sext_ln43_4_fu_1618_p1[8]),
        .I2(sext_ln43_6_fu_1622_p1[9]),
        .I3(sext_ln43_4_fu_1618_p1[9]),
        .I4(\ang_out[2]_INST_0_i_2_n_0 ),
        .O(\ang_out[2]_INST_0_i_10_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \ang_out[2]_INST_0_i_11 
       (.I0(sext_ln43_6_fu_1622_p1[7]),
        .I1(sext_ln43_4_fu_1618_p1[7]),
        .I2(sext_ln43_6_fu_1622_p1[8]),
        .I3(sext_ln43_4_fu_1618_p1[8]),
        .I4(\ang_out[2]_INST_0_i_3_n_0 ),
        .O(\ang_out[2]_INST_0_i_11_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT5 #(
    .INIT(32'hB44B4BB4)) 
    \ang_out[2]_INST_0_i_12 
       (.I0(sext_ln43_4_fu_1618_p1[6]),
        .I1(tmp_9_reg_1733_pp0_iter2_reg),
        .I2(sext_ln43_6_fu_1622_p1[7]),
        .I3(sext_ln43_4_fu_1618_p1[7]),
        .I4(\ang_out[2]_INST_0_i_4_n_0 ),
        .O(\ang_out[2]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \ang_out[2]_INST_0_i_13 
       (.I0(sext_ln43_6_fu_1622_p1[6]),
        .I1(tmp_9_reg_1733_pp0_iter2_reg),
        .I2(sext_ln43_4_fu_1618_p1[6]),
        .I3(sext_ln43_6_fu_1622_p1[5]),
        .I4(sext_ln43_4_fu_1618_p1[5]),
        .I5(\ang_out[2]_INST_0_i_23_n_0 ),
        .O(\ang_out[2]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \ang_out[2]_INST_0_i_14 
       (.I0(\ang_out[2]_INST_0_i_6_n_0 ),
        .I1(sext_ln43_4_fu_1618_p1[5]),
        .I2(sext_ln43_6_fu_1622_p1[5]),
        .I3(\ang_out[2]_INST_0_i_23_n_0 ),
        .O(\ang_out[2]_INST_0_i_14_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ang_out[2]_INST_0_i_15 
       (.I0(sext_ln43_6_fu_1622_p1[4]),
        .I1(sext_ln43_4_fu_1618_p1[4]),
        .I2(\ang_out[2]_INST_0_i_20_n_0 ),
        .I3(\ang_out[2]_INST_0_i_7_n_0 ),
        .O(\ang_out[2]_INST_0_i_15_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ang_out[2]_INST_0_i_16 
       (.I0(sext_ln43_4_fu_1618_p1[3]),
        .I1(\ang_out[2]_INST_0_i_21_n_0 ),
        .I2(sext_ln43_6_fu_1622_p1[3]),
        .I3(\ang_out[2]_INST_0_i_8_n_0 ),
        .O(\ang_out[2]_INST_0_i_16_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ang_out[2]_INST_0_i_17 
       (.I0(sext_ln43_4_fu_1618_p1[2]),
        .I1(\ang_out[2]_INST_0_i_22_n_0 ),
        .I2(sext_ln43_6_fu_1622_p1[2]),
        .I3(\ang_out[2]_INST_0_i_9_n_0 ),
        .O(\ang_out[2]_INST_0_i_17_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \ang_out[2]_INST_0_i_18 
       (.CI(tmp_5_reg_1699_pp0_iter2_reg),
        .CI_TOP(1'b0),
        .CO({\NLW_ang_out[2]_INST_0_i_18_CO_UNCONNECTED [7],\ang_out[2]_INST_0_i_18_n_1 ,\ang_out[2]_INST_0_i_18_n_2 ,\ang_out[2]_INST_0_i_18_n_3 ,\ang_out[2]_INST_0_i_18_n_4 ,\ang_out[2]_INST_0_i_18_n_5 ,\ang_out[2]_INST_0_i_18_n_6 ,\ang_out[2]_INST_0_i_18_n_7 }),
        .DI({1'b0,tmp_3_reg_1689_pp0_iter2_reg,1'b0,\ang_out[2]_INST_0_i_24_n_0 ,\ang_out[2]_INST_0_i_25_n_0 ,tmp_4_reg_1694_pp0_iter2_reg,add_ln43_5_fu_1602_p2,tmp_3_reg_1689_pp0_iter2_reg}),
        .O(sext_ln43_4_fu_1618_p1[13:6]),
        .S({\ang_out[2]_INST_0_i_27_n_0 ,\ang_out[2]_INST_0_i_28_n_0 ,\ang_out[2]_INST_0_i_29_n_0 ,\ang_out[2]_INST_0_i_30_n_0 ,\ang_out[2]_INST_0_i_31_n_0 ,\ang_out[2]_INST_0_i_32_n_0 ,\ang_out[2]_INST_0_i_33_n_0 ,\ang_out[2]_INST_0_i_34_n_0 }));
  CARRY8 \ang_out[2]_INST_0_i_19 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\NLW_ang_out[2]_INST_0_i_19_CO_UNCONNECTED [7:5],sext_ln43_4_fu_1618_p1[5],\NLW_ang_out[2]_INST_0_i_19_CO_UNCONNECTED [3],\ang_out[2]_INST_0_i_19_n_5 ,\ang_out[2]_INST_0_i_19_n_6 ,\ang_out[2]_INST_0_i_19_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,add_ln43_5_fu_1602_p2,tmp_3_reg_1689_pp0_iter2_reg,tmp_4_reg_1694_pp0_iter2_reg,1'b0}),
        .O({\NLW_ang_out[2]_INST_0_i_19_O_UNCONNECTED [7:4],sext_ln43_4_fu_1618_p1[4:2],\NLW_ang_out[2]_INST_0_i_19_O_UNCONNECTED [0]}),
        .S({1'b0,1'b0,1'b0,1'b1,\ang_out[2]_INST_0_i_35_n_0 ,\ang_out[2]_INST_0_i_36_n_0 ,\ang_out[2]_INST_0_i_37_n_0 ,1'b1}));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \ang_out[2]_INST_0_i_2 
       (.I0(sext_ln43_6_fu_1622_p1[7]),
        .I1(sext_ln43_4_fu_1618_p1[7]),
        .I2(sext_ln43_6_fu_1622_p1[8]),
        .I3(sext_ln43_4_fu_1618_p1[8]),
        .O(\ang_out[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0240FD3B2340FDBF)) 
    \ang_out[2]_INST_0_i_20 
       (.I0(tmp_10_reg_1738_pp0_iter2_reg),
        .I1(tmp_12_reg_1775),
        .I2(tmp_13_reg_1780),
        .I3(tmp_9_reg_1733_pp0_iter2_reg),
        .I4(tmp_11_reg_1770),
        .I5(tmp_14_reg_1785),
        .O(\ang_out[2]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hA69AAA5555AAA69A)) 
    \ang_out[2]_INST_0_i_21 
       (.I0(tmp_12_reg_1775),
        .I1(tmp_11_reg_1770),
        .I2(tmp_14_reg_1785),
        .I3(tmp_9_reg_1733_pp0_iter2_reg),
        .I4(tmp_10_reg_1738_pp0_iter2_reg),
        .I5(tmp_13_reg_1780),
        .O(\ang_out[2]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h2BD4D42B)) 
    \ang_out[2]_INST_0_i_22 
       (.I0(tmp_11_reg_1770),
        .I1(tmp_14_reg_1785),
        .I2(tmp_9_reg_1733_pp0_iter2_reg),
        .I3(tmp_13_reg_1780),
        .I4(tmp_10_reg_1738_pp0_iter2_reg),
        .O(\ang_out[2]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h0002BFFF)) 
    \ang_out[2]_INST_0_i_23 
       (.I0(tmp_9_reg_1733_pp0_iter2_reg),
        .I1(tmp_13_reg_1780),
        .I2(tmp_12_reg_1775),
        .I3(tmp_11_reg_1770),
        .I4(tmp_10_reg_1738_pp0_iter2_reg),
        .O(\ang_out[2]_INST_0_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ang_out[2]_INST_0_i_24 
       (.I0(tmp_5_reg_1699_pp0_iter2_reg),
        .I1(tmp_3_reg_1689_pp0_iter2_reg),
        .O(\ang_out[2]_INST_0_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ang_out[2]_INST_0_i_25 
       (.I0(tmp_2_reg_1683_pp0_iter2_reg),
        .I1(tmp_3_reg_1689_pp0_iter2_reg),
        .O(\ang_out[2]_INST_0_i_25_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ang_out[2]_INST_0_i_26 
       (.I0(tmp_5_reg_1699_pp0_iter2_reg),
        .O(add_ln43_5_fu_1602_p2));
  LUT2 #(
    .INIT(4'h6)) 
    \ang_out[2]_INST_0_i_27 
       (.I0(tmp_2_reg_1683_pp0_iter2_reg),
        .I1(tmp_3_reg_1689_pp0_iter2_reg),
        .O(\ang_out[2]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h0C71)) 
    \ang_out[2]_INST_0_i_28 
       (.I0(tmp_5_reg_1699_pp0_iter2_reg),
        .I1(tmp_4_reg_1694_pp0_iter2_reg),
        .I2(tmp_2_reg_1683_pp0_iter2_reg),
        .I3(tmp_3_reg_1689_pp0_iter2_reg),
        .O(\ang_out[2]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h4BB4)) 
    \ang_out[2]_INST_0_i_29 
       (.I0(tmp_3_reg_1689_pp0_iter2_reg),
        .I1(tmp_5_reg_1699_pp0_iter2_reg),
        .I2(tmp_2_reg_1683_pp0_iter2_reg),
        .I3(tmp_4_reg_1694_pp0_iter2_reg),
        .O(\ang_out[2]_INST_0_i_29_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    \ang_out[2]_INST_0_i_3 
       (.I0(sext_ln43_4_fu_1618_p1[6]),
        .I1(tmp_9_reg_1733_pp0_iter2_reg),
        .I2(sext_ln43_6_fu_1622_p1[7]),
        .I3(sext_ln43_4_fu_1618_p1[7]),
        .O(\ang_out[2]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h95)) 
    \ang_out[2]_INST_0_i_30 
       (.I0(tmp_5_reg_1699_pp0_iter2_reg),
        .I1(tmp_2_reg_1683_pp0_iter2_reg),
        .I2(tmp_3_reg_1689_pp0_iter2_reg),
        .O(\ang_out[2]_INST_0_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ang_out[2]_INST_0_i_31 
       (.I0(tmp_3_reg_1689_pp0_iter2_reg),
        .I1(tmp_2_reg_1683_pp0_iter2_reg),
        .O(\ang_out[2]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h718E)) 
    \ang_out[2]_INST_0_i_32 
       (.I0(tmp_5_reg_1699_pp0_iter2_reg),
        .I1(tmp_3_reg_1689_pp0_iter2_reg),
        .I2(tmp_2_reg_1683_pp0_iter2_reg),
        .I3(tmp_4_reg_1694_pp0_iter2_reg),
        .O(\ang_out[2]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \ang_out[2]_INST_0_i_33 
       (.I0(tmp_2_reg_1683_pp0_iter2_reg),
        .I1(tmp_3_reg_1689_pp0_iter2_reg),
        .I2(tmp_5_reg_1699_pp0_iter2_reg),
        .I3(add_ln43_5_fu_1602_p2),
        .O(\ang_out[2]_INST_0_i_33_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ang_out[2]_INST_0_i_34 
       (.I0(tmp_5_reg_1699_pp0_iter2_reg),
        .I1(tmp_3_reg_1689_pp0_iter2_reg),
        .O(\ang_out[2]_INST_0_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ang_out[2]_INST_0_i_35 
       (.I0(tmp_3_reg_1689_pp0_iter2_reg),
        .I1(add_ln43_5_fu_1602_p2),
        .O(\ang_out[2]_INST_0_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ang_out[2]_INST_0_i_36 
       (.I0(tmp_3_reg_1689_pp0_iter2_reg),
        .I1(tmp_4_reg_1694_pp0_iter2_reg),
        .O(\ang_out[2]_INST_0_i_36_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ang_out[2]_INST_0_i_37 
       (.I0(tmp_4_reg_1694_pp0_iter2_reg),
        .O(\ang_out[2]_INST_0_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \ang_out[2]_INST_0_i_4 
       (.I0(sext_ln43_6_fu_1622_p1[6]),
        .I1(sext_ln43_4_fu_1618_p1[6]),
        .I2(tmp_9_reg_1733_pp0_iter2_reg),
        .O(\ang_out[2]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \ang_out[2]_INST_0_i_5 
       (.I0(sext_ln43_4_fu_1618_p1[6]),
        .I1(tmp_9_reg_1733_pp0_iter2_reg),
        .I2(sext_ln43_6_fu_1622_p1[6]),
        .O(\ang_out[2]_INST_0_i_5_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ang_out[2]_INST_0_i_6 
       (.I0(sext_ln43_6_fu_1622_p1[4]),
        .I1(sext_ln43_4_fu_1618_p1[4]),
        .I2(\ang_out[2]_INST_0_i_20_n_0 ),
        .O(\ang_out[2]_INST_0_i_6_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \ang_out[2]_INST_0_i_7 
       (.I0(sext_ln43_4_fu_1618_p1[3]),
        .I1(\ang_out[2]_INST_0_i_21_n_0 ),
        .I2(sext_ln43_6_fu_1622_p1[3]),
        .O(\ang_out[2]_INST_0_i_7_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \ang_out[2]_INST_0_i_8 
       (.I0(sext_ln43_4_fu_1618_p1[2]),
        .I1(\ang_out[2]_INST_0_i_22_n_0 ),
        .I2(sext_ln43_6_fu_1622_p1[2]),
        .O(\ang_out[2]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hEBBE)) 
    \ang_out[2]_INST_0_i_9 
       (.I0(sext_ln43_6_fu_1622_p1[1]),
        .I1(tmp_9_reg_1733_pp0_iter2_reg),
        .I2(tmp_14_reg_1785),
        .I3(tmp_11_reg_1770),
        .O(\ang_out[2]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h36)) 
    \ang_out[9]_INST_0 
       (.I0(\ang_out[15]_INST_0_i_2_n_4 ),
        .I1(a_fu_1631_p2[9]),
        .I2(\ang_out[15]_INST_0_i_5_n_4 ),
        .O(\^ang_out [9]));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_start),
        .Q(ap_enable_reg_pp0_iter1),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1),
        .Q(ap_enable_reg_pp0_iter2),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter3_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2),
        .Q(ap_done),
        .R(ap_rst));
  LUT4 #(
    .INIT(16'h0001)) 
    ap_idle_INST_0
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(ap_done),
        .I3(ap_start),
        .O(ap_idle));
  bd_0_hls_inst_0_cordic_vectoring_mul_17ns_14ns_29_1_1 mul_17ns_14ns_29_1_1_U1
       (.mag_out(mag_out),
        .x_40_reg_1790({xs_13_reg_1802,x_40_reg_1790}),
        .y_40_reg_1796({tmp_15_reg_1812,y_40_reg_1796}));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \off_1_reg_1678[12]_i_1 
       (.I0(x_in[15]),
        .I1(\off_1_reg_1678[13]_i_2_n_0 ),
        .O(\off_1_reg_1678[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \off_1_reg_1678[13]_i_1 
       (.I0(x_in[15]),
        .I1(\off_1_reg_1678[13]_i_2_n_0 ),
        .O(\off_1_reg_1678[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000010)) 
    \off_1_reg_1678[13]_i_2 
       (.I0(y_in[14]),
        .I1(y_in[12]),
        .I2(\off_1_reg_1678[13]_i_3_n_0 ),
        .I3(y_in[11]),
        .I4(y_in[13]),
        .I5(y_in[15]),
        .O(\off_1_reg_1678[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \off_1_reg_1678[13]_i_3 
       (.I0(y_in[9]),
        .I1(y_in[7]),
        .I2(\off_1_reg_1678[13]_i_4_n_0 ),
        .I3(y_in[6]),
        .I4(y_in[8]),
        .I5(y_in[10]),
        .O(\off_1_reg_1678[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \off_1_reg_1678[13]_i_4 
       (.I0(y_in[4]),
        .I1(y_in[2]),
        .I2(y_in[1]),
        .I3(y_in[0]),
        .I4(y_in[3]),
        .I5(y_in[5]),
        .O(\off_1_reg_1678[13]_i_4_n_0 ));
  FDRE \off_1_reg_1678_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\off_1_reg_1678[12]_i_1_n_0 ),
        .Q(off_1_reg_1678[12]),
        .R(1'b0));
  FDRE \off_1_reg_1678_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\off_1_reg_1678[13]_i_1_n_0 ),
        .Q(off_1_reg_1678[13]),
        .R(1'b0));
  FDRE \off_1_reg_1678_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_in[15]),
        .Q(off_1_reg_1678[8]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_10_reg_1738[0]_i_2 
       (.I0(x_22_fu_777_p3[17]),
        .O(\tmp_10_reg_1738[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_10_reg_1738[0]_i_3 
       (.I0(y_22_fu_785_p3__0[16]),
        .I1(x_22_fu_777_p3[17]),
        .I2(y_22_fu_785_p3),
        .O(\tmp_10_reg_1738[0]_i_3_n_0 ));
  FDRE \tmp_10_reg_1738_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_10_reg_1738),
        .Q(tmp_10_reg_1738_pp0_iter2_reg),
        .R(1'b0));
  FDRE \tmp_10_reg_1738_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_25_fu_869_p3),
        .Q(tmp_10_reg_1738),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_10_reg_1738_reg[0]_i_1 
       (.CI(\y_27_reg_1760_reg[17]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_10_reg_1738_reg[0]_i_1_CO_UNCONNECTED [7:1],\tmp_10_reg_1738_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_22_fu_785_p3__0[16]}),
        .O({\NLW_tmp_10_reg_1738_reg[0]_i_1_O_UNCONNECTED [7:2],y_25_fu_869_p3,y_25_fu_869_p3__0[16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\tmp_10_reg_1738[0]_i_2_n_0 ,\tmp_10_reg_1738[0]_i_3_n_0 }));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_11_reg_1770[0]_i_1 
       (.I0(y_26_reg_1750[17]),
        .I1(y_27_reg_1760[17]),
        .I2(tmp_10_reg_1738),
        .O(y_28_fu_963_p3));
  FDRE \tmp_11_reg_1770_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_28_fu_963_p3),
        .Q(tmp_11_reg_1770),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_12_reg_1775[0]_i_10 
       (.I0(y_26_reg_1750[12]),
        .I1(y_27_reg_1760[12]),
        .I2(tmp_10_reg_1738),
        .O(y_28_fu_963_p3__0[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_12_reg_1775[0]_i_11 
       (.I0(y_26_reg_1750[11]),
        .I1(y_27_reg_1760[11]),
        .I2(tmp_10_reg_1738),
        .O(y_28_fu_963_p3__0[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_12_reg_1775[0]_i_12 
       (.I0(y_26_reg_1750[10]),
        .I1(y_27_reg_1760[10]),
        .I2(tmp_10_reg_1738),
        .O(y_28_fu_963_p3__0[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_12_reg_1775[0]_i_13 
       (.I0(y_26_reg_1750[9]),
        .I1(y_27_reg_1760[9]),
        .I2(tmp_10_reg_1738),
        .O(y_28_fu_963_p3__0[9]));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_12_reg_1775[0]_i_14 
       (.I0(y_26_reg_1750[8]),
        .I1(y_27_reg_1760[8]),
        .I2(tmp_10_reg_1738),
        .O(y_28_fu_963_p3__0[8]));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \tmp_12_reg_1775[0]_i_15 
       (.I0(y_27_reg_1760[15]),
        .I1(y_26_reg_1750[15]),
        .I2(x_26_reg_1745[17]),
        .I3(x_27_reg_1755[17]),
        .I4(tmp_10_reg_1738),
        .I5(y_28_fu_963_p3),
        .O(\tmp_12_reg_1775[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \tmp_12_reg_1775[0]_i_16 
       (.I0(y_27_reg_1760[14]),
        .I1(y_26_reg_1750[14]),
        .I2(x_26_reg_1745[17]),
        .I3(x_27_reg_1755[17]),
        .I4(tmp_10_reg_1738),
        .I5(y_28_fu_963_p3),
        .O(\tmp_12_reg_1775[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \tmp_12_reg_1775[0]_i_17 
       (.I0(y_27_reg_1760[13]),
        .I1(y_26_reg_1750[13]),
        .I2(x_26_reg_1745[17]),
        .I3(x_27_reg_1755[17]),
        .I4(tmp_10_reg_1738),
        .I5(y_28_fu_963_p3),
        .O(\tmp_12_reg_1775[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \tmp_12_reg_1775[0]_i_18 
       (.I0(y_27_reg_1760[12]),
        .I1(y_26_reg_1750[12]),
        .I2(x_26_reg_1745[17]),
        .I3(x_27_reg_1755[17]),
        .I4(tmp_10_reg_1738),
        .I5(y_28_fu_963_p3),
        .O(\tmp_12_reg_1775[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \tmp_12_reg_1775[0]_i_19 
       (.I0(y_27_reg_1760[11]),
        .I1(y_26_reg_1750[11]),
        .I2(x_26_reg_1745[17]),
        .I3(x_27_reg_1755[17]),
        .I4(tmp_10_reg_1738),
        .I5(y_28_fu_963_p3),
        .O(\tmp_12_reg_1775[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \tmp_12_reg_1775[0]_i_20 
       (.I0(y_27_reg_1760[10]),
        .I1(y_26_reg_1750[10]),
        .I2(x_26_reg_1745[17]),
        .I3(x_27_reg_1755[17]),
        .I4(tmp_10_reg_1738),
        .I5(y_28_fu_963_p3),
        .O(\tmp_12_reg_1775[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \tmp_12_reg_1775[0]_i_21 
       (.I0(y_27_reg_1760[9]),
        .I1(y_26_reg_1750[9]),
        .I2(x_26_reg_1745[17]),
        .I3(x_27_reg_1755[17]),
        .I4(tmp_10_reg_1738),
        .I5(y_28_fu_963_p3),
        .O(\tmp_12_reg_1775[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \tmp_12_reg_1775[0]_i_22 
       (.I0(y_27_reg_1760[8]),
        .I1(y_26_reg_1750[8]),
        .I2(x_26_reg_1745[17]),
        .I3(x_27_reg_1755[17]),
        .I4(tmp_10_reg_1738),
        .I5(y_28_fu_963_p3),
        .O(\tmp_12_reg_1775[0]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h1B)) 
    \tmp_12_reg_1775[0]_i_23 
       (.I0(tmp_10_reg_1738),
        .I1(y_27_reg_1760[17]),
        .I2(y_26_reg_1750[17]),
        .O(\tmp_12_reg_1775[0]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_12_reg_1775[0]_i_24 
       (.I0(y_26_reg_1750[7]),
        .I1(y_27_reg_1760[7]),
        .I2(tmp_10_reg_1738),
        .O(y_28_fu_963_p3__0[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_12_reg_1775[0]_i_25 
       (.I0(y_26_reg_1750[6]),
        .I1(y_27_reg_1760[6]),
        .I2(tmp_10_reg_1738),
        .O(y_28_fu_963_p3__0[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_12_reg_1775[0]_i_26 
       (.I0(y_26_reg_1750[5]),
        .I1(y_27_reg_1760[5]),
        .I2(tmp_10_reg_1738),
        .O(y_28_fu_963_p3__0[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_12_reg_1775[0]_i_27 
       (.I0(y_26_reg_1750[4]),
        .I1(y_27_reg_1760[4]),
        .I2(tmp_10_reg_1738),
        .O(y_28_fu_963_p3__0[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_12_reg_1775[0]_i_28 
       (.I0(y_26_reg_1750[3]),
        .I1(y_27_reg_1760[3]),
        .I2(tmp_10_reg_1738),
        .O(y_28_fu_963_p3__0[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_12_reg_1775[0]_i_29 
       (.I0(y_26_reg_1750[2]),
        .I1(y_27_reg_1760[2]),
        .I2(tmp_10_reg_1738),
        .O(y_28_fu_963_p3__0[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_12_reg_1775[0]_i_3 
       (.I0(y_26_reg_1750[16]),
        .I1(y_27_reg_1760[16]),
        .I2(tmp_10_reg_1738),
        .O(y_28_fu_963_p3__0[16]));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_12_reg_1775[0]_i_30 
       (.I0(y_26_reg_1750[1]),
        .I1(y_27_reg_1760[1]),
        .I2(tmp_10_reg_1738),
        .O(y_28_fu_963_p3__0[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_12_reg_1775[0]_i_31 
       (.I0(y_26_reg_1750[0]),
        .I1(y_27_reg_1760[0]),
        .I2(tmp_10_reg_1738),
        .O(y_28_fu_963_p3__0[0]));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \tmp_12_reg_1775[0]_i_32 
       (.I0(y_27_reg_1760[7]),
        .I1(y_26_reg_1750[7]),
        .I2(x_26_reg_1745[16]),
        .I3(x_27_reg_1755[16]),
        .I4(tmp_10_reg_1738),
        .I5(y_28_fu_963_p3),
        .O(\tmp_12_reg_1775[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \tmp_12_reg_1775[0]_i_33 
       (.I0(y_27_reg_1760[6]),
        .I1(y_26_reg_1750[6]),
        .I2(x_26_reg_1745[15]),
        .I3(x_27_reg_1755[15]),
        .I4(tmp_10_reg_1738),
        .I5(y_28_fu_963_p3),
        .O(\tmp_12_reg_1775[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \tmp_12_reg_1775[0]_i_34 
       (.I0(y_27_reg_1760[5]),
        .I1(y_26_reg_1750[5]),
        .I2(x_26_reg_1745[14]),
        .I3(x_27_reg_1755[14]),
        .I4(tmp_10_reg_1738),
        .I5(y_28_fu_963_p3),
        .O(\tmp_12_reg_1775[0]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \tmp_12_reg_1775[0]_i_35 
       (.I0(y_27_reg_1760[4]),
        .I1(y_26_reg_1750[4]),
        .I2(x_26_reg_1745[13]),
        .I3(x_27_reg_1755[13]),
        .I4(tmp_10_reg_1738),
        .I5(y_28_fu_963_p3),
        .O(\tmp_12_reg_1775[0]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \tmp_12_reg_1775[0]_i_36 
       (.I0(y_27_reg_1760[3]),
        .I1(y_26_reg_1750[3]),
        .I2(x_26_reg_1745[12]),
        .I3(x_27_reg_1755[12]),
        .I4(tmp_10_reg_1738),
        .I5(y_28_fu_963_p3),
        .O(\tmp_12_reg_1775[0]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \tmp_12_reg_1775[0]_i_37 
       (.I0(y_27_reg_1760[2]),
        .I1(y_26_reg_1750[2]),
        .I2(x_26_reg_1745[11]),
        .I3(x_27_reg_1755[11]),
        .I4(tmp_10_reg_1738),
        .I5(y_28_fu_963_p3),
        .O(\tmp_12_reg_1775[0]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \tmp_12_reg_1775[0]_i_38 
       (.I0(y_27_reg_1760[1]),
        .I1(y_26_reg_1750[1]),
        .I2(x_26_reg_1745[10]),
        .I3(x_27_reg_1755[10]),
        .I4(tmp_10_reg_1738),
        .I5(y_28_fu_963_p3),
        .O(\tmp_12_reg_1775[0]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \tmp_12_reg_1775[0]_i_39 
       (.I0(y_27_reg_1760[0]),
        .I1(y_26_reg_1750[0]),
        .I2(x_26_reg_1745[9]),
        .I3(x_27_reg_1755[9]),
        .I4(tmp_10_reg_1738),
        .I5(y_28_fu_963_p3),
        .O(\tmp_12_reg_1775[0]_i_39_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \tmp_12_reg_1775[0]_i_4 
       (.I0(x_26_reg_1745[17]),
        .I1(x_27_reg_1755[17]),
        .I2(tmp_10_reg_1738),
        .O(\tmp_12_reg_1775[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \tmp_12_reg_1775[0]_i_5 
       (.I0(y_27_reg_1760[16]),
        .I1(y_26_reg_1750[16]),
        .I2(x_26_reg_1745[17]),
        .I3(x_27_reg_1755[17]),
        .I4(tmp_10_reg_1738),
        .I5(y_28_fu_963_p3),
        .O(\tmp_12_reg_1775[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_12_reg_1775[0]_i_7 
       (.I0(y_26_reg_1750[15]),
        .I1(y_27_reg_1760[15]),
        .I2(tmp_10_reg_1738),
        .O(y_28_fu_963_p3__0[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_12_reg_1775[0]_i_8 
       (.I0(y_26_reg_1750[14]),
        .I1(y_27_reg_1760[14]),
        .I2(tmp_10_reg_1738),
        .O(y_28_fu_963_p3__0[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_12_reg_1775[0]_i_9 
       (.I0(y_26_reg_1750[13]),
        .I1(y_27_reg_1760[13]),
        .I2(tmp_10_reg_1738),
        .O(y_28_fu_963_p3__0[13]));
  FDRE \tmp_12_reg_1775_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_31_fu_1036_p3),
        .Q(tmp_12_reg_1775),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_12_reg_1775_reg[0]_i_1 
       (.CI(\tmp_12_reg_1775_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_12_reg_1775_reg[0]_i_1_CO_UNCONNECTED [7:1],\tmp_12_reg_1775_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_28_fu_963_p3__0[16]}),
        .O({\NLW_tmp_12_reg_1775_reg[0]_i_1_O_UNCONNECTED [7:2],y_31_fu_1036_p3,y_31_fu_1036_p3__0[16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\tmp_12_reg_1775[0]_i_4_n_0 ,\tmp_12_reg_1775[0]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_12_reg_1775_reg[0]_i_2 
       (.CI(\tmp_12_reg_1775_reg[0]_i_6_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tmp_12_reg_1775_reg[0]_i_2_n_0 ,\tmp_12_reg_1775_reg[0]_i_2_n_1 ,\tmp_12_reg_1775_reg[0]_i_2_n_2 ,\tmp_12_reg_1775_reg[0]_i_2_n_3 ,\tmp_12_reg_1775_reg[0]_i_2_n_4 ,\tmp_12_reg_1775_reg[0]_i_2_n_5 ,\tmp_12_reg_1775_reg[0]_i_2_n_6 ,\tmp_12_reg_1775_reg[0]_i_2_n_7 }),
        .DI(y_28_fu_963_p3__0[15:8]),
        .O(y_31_fu_1036_p3__0[15:8]),
        .S({\tmp_12_reg_1775[0]_i_15_n_0 ,\tmp_12_reg_1775[0]_i_16_n_0 ,\tmp_12_reg_1775[0]_i_17_n_0 ,\tmp_12_reg_1775[0]_i_18_n_0 ,\tmp_12_reg_1775[0]_i_19_n_0 ,\tmp_12_reg_1775[0]_i_20_n_0 ,\tmp_12_reg_1775[0]_i_21_n_0 ,\tmp_12_reg_1775[0]_i_22_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_12_reg_1775_reg[0]_i_6 
       (.CI(\tmp_12_reg_1775[0]_i_23_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tmp_12_reg_1775_reg[0]_i_6_n_0 ,\tmp_12_reg_1775_reg[0]_i_6_n_1 ,\tmp_12_reg_1775_reg[0]_i_6_n_2 ,\tmp_12_reg_1775_reg[0]_i_6_n_3 ,\tmp_12_reg_1775_reg[0]_i_6_n_4 ,\tmp_12_reg_1775_reg[0]_i_6_n_5 ,\tmp_12_reg_1775_reg[0]_i_6_n_6 ,\tmp_12_reg_1775_reg[0]_i_6_n_7 }),
        .DI(y_28_fu_963_p3__0[7:0]),
        .O(y_31_fu_1036_p3__0[7:0]),
        .S({\tmp_12_reg_1775[0]_i_32_n_0 ,\tmp_12_reg_1775[0]_i_33_n_0 ,\tmp_12_reg_1775[0]_i_34_n_0 ,\tmp_12_reg_1775[0]_i_35_n_0 ,\tmp_12_reg_1775[0]_i_36_n_0 ,\tmp_12_reg_1775[0]_i_37_n_0 ,\tmp_12_reg_1775[0]_i_38_n_0 ,\tmp_12_reg_1775[0]_i_39_n_0 }));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_13_reg_1780[0]_i_10 
       (.I0(y_31_fu_1036_p3__0[10]),
        .I1(x_31_fu_1028_p3[17]),
        .I2(y_31_fu_1036_p3),
        .O(\tmp_13_reg_1780[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_13_reg_1780[0]_i_11 
       (.I0(y_31_fu_1036_p3__0[9]),
        .I1(x_31_fu_1028_p3[17]),
        .I2(y_31_fu_1036_p3),
        .O(\tmp_13_reg_1780[0]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_13_reg_1780[0]_i_12 
       (.I0(y_31_fu_1036_p3__0[8]),
        .I1(x_31_fu_1028_p3[17]),
        .I2(y_31_fu_1036_p3),
        .O(\tmp_13_reg_1780[0]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_13_reg_1780[0]_i_14 
       (.I0(x_26_reg_1745[16]),
        .I1(x_27_reg_1755[16]),
        .I2(tmp_10_reg_1738),
        .O(x_28_fu_958_p3[16]));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_13_reg_1780[0]_i_15 
       (.I0(x_26_reg_1745[17]),
        .I1(x_27_reg_1755[17]),
        .I2(tmp_10_reg_1738),
        .O(x_28_fu_958_p3[17]));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_13_reg_1780[0]_i_16 
       (.I0(x_26_reg_1745[16]),
        .I1(x_27_reg_1755[16]),
        .I2(tmp_10_reg_1738),
        .O(\tmp_13_reg_1780[0]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_13_reg_1780[0]_i_3 
       (.I0(x_31_fu_1028_p3[17]),
        .O(\tmp_13_reg_1780[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_13_reg_1780[0]_i_4 
       (.I0(y_31_fu_1036_p3__0[16]),
        .I1(x_31_fu_1028_p3[17]),
        .I2(y_31_fu_1036_p3),
        .O(\tmp_13_reg_1780[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_13_reg_1780[0]_i_5 
       (.I0(y_31_fu_1036_p3__0[15]),
        .I1(x_31_fu_1028_p3[17]),
        .I2(y_31_fu_1036_p3),
        .O(\tmp_13_reg_1780[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_13_reg_1780[0]_i_6 
       (.I0(y_31_fu_1036_p3__0[14]),
        .I1(x_31_fu_1028_p3[17]),
        .I2(y_31_fu_1036_p3),
        .O(\tmp_13_reg_1780[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_13_reg_1780[0]_i_7 
       (.I0(y_31_fu_1036_p3__0[13]),
        .I1(x_31_fu_1028_p3[17]),
        .I2(y_31_fu_1036_p3),
        .O(\tmp_13_reg_1780[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_13_reg_1780[0]_i_8 
       (.I0(y_31_fu_1036_p3__0[12]),
        .I1(x_31_fu_1028_p3[17]),
        .I2(y_31_fu_1036_p3),
        .O(\tmp_13_reg_1780[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_13_reg_1780[0]_i_9 
       (.I0(y_31_fu_1036_p3__0[11]),
        .I1(x_31_fu_1028_p3[17]),
        .I2(y_31_fu_1036_p3),
        .O(\tmp_13_reg_1780[0]_i_9_n_0 ));
  FDRE \tmp_13_reg_1780_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_34_fu_1112_p3),
        .Q(tmp_13_reg_1780),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_13_reg_1780_reg[0]_i_1 
       (.CI(\tmp_13_reg_1780_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_13_reg_1780_reg[0]_i_1_CO_UNCONNECTED [7:1],\tmp_13_reg_1780_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_31_fu_1036_p3__0[16]}),
        .O({\NLW_tmp_13_reg_1780_reg[0]_i_1_O_UNCONNECTED [7:2],y_34_fu_1112_p3,y_34_fu_1112_p3__0[16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\tmp_13_reg_1780[0]_i_3_n_0 ,\tmp_13_reg_1780[0]_i_4_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_13_reg_1780_reg[0]_i_13 
       (.CI(\x_40_reg_1790_reg[12]_i_4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_13_reg_1780_reg[0]_i_13_CO_UNCONNECTED [7:1],\tmp_13_reg_1780_reg[0]_i_13_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x_28_fu_958_p3[16]}),
        .O({\NLW_tmp_13_reg_1780_reg[0]_i_13_O_UNCONNECTED [7:2],x_31_fu_1028_p3[17:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x_28_fu_958_p3[17],\tmp_13_reg_1780[0]_i_16_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_13_reg_1780_reg[0]_i_2 
       (.CI(\y_40_reg_1796_reg[7]_i_13_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tmp_13_reg_1780_reg[0]_i_2_n_0 ,\tmp_13_reg_1780_reg[0]_i_2_n_1 ,\tmp_13_reg_1780_reg[0]_i_2_n_2 ,\tmp_13_reg_1780_reg[0]_i_2_n_3 ,\tmp_13_reg_1780_reg[0]_i_2_n_4 ,\tmp_13_reg_1780_reg[0]_i_2_n_5 ,\tmp_13_reg_1780_reg[0]_i_2_n_6 ,\tmp_13_reg_1780_reg[0]_i_2_n_7 }),
        .DI(y_31_fu_1036_p3__0[15:8]),
        .O(y_34_fu_1112_p3__0[15:8]),
        .S({\tmp_13_reg_1780[0]_i_5_n_0 ,\tmp_13_reg_1780[0]_i_6_n_0 ,\tmp_13_reg_1780[0]_i_7_n_0 ,\tmp_13_reg_1780[0]_i_8_n_0 ,\tmp_13_reg_1780[0]_i_9_n_0 ,\tmp_13_reg_1780[0]_i_10_n_0 ,\tmp_13_reg_1780[0]_i_11_n_0 ,\tmp_13_reg_1780[0]_i_12_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_14_reg_1785[0]_i_2 
       (.I0(x_34_fu_1104_p3[17]),
        .O(\tmp_14_reg_1785[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_14_reg_1785[0]_i_3 
       (.I0(y_34_fu_1112_p3__0[16]),
        .I1(x_34_fu_1104_p3[17]),
        .I2(y_34_fu_1112_p3),
        .O(\tmp_14_reg_1785[0]_i_3_n_0 ));
  FDRE \tmp_14_reg_1785_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_37_fu_1188_p3),
        .Q(tmp_14_reg_1785),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_14_reg_1785_reg[0]_i_1 
       (.CI(\y_40_reg_1796_reg[12]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_14_reg_1785_reg[0]_i_1_CO_UNCONNECTED [7:1],\tmp_14_reg_1785_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_34_fu_1112_p3__0[16]}),
        .O({\NLW_tmp_14_reg_1785_reg[0]_i_1_O_UNCONNECTED [7:2],y_37_fu_1188_p3,y_37_fu_1188_p3__0[16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\tmp_14_reg_1785[0]_i_2_n_0 ,\tmp_14_reg_1785[0]_i_3_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_14_reg_1785_reg[0]_i_4 
       (.CI(\x_40_reg_1790_reg[12]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_14_reg_1785_reg[0]_i_4_CO_UNCONNECTED [7:1],\tmp_14_reg_1785_reg[0]_i_4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x_31_fu_1028_p3[16]}),
        .O({\NLW_tmp_14_reg_1785_reg[0]_i_4_O_UNCONNECTED [7:2],x_34_fu_1104_p3[17:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x_31_fu_1028_p3[17:16]}));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_15_reg_1812[0]_i_2 
       (.I0(x_37_fu_1180_p3[17]),
        .O(\tmp_15_reg_1812[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_15_reg_1812[0]_i_3 
       (.I0(y_37_fu_1188_p3__0[16]),
        .I1(x_37_fu_1180_p3[17]),
        .I2(y_37_fu_1188_p3),
        .O(\tmp_15_reg_1812[0]_i_3_n_0 ));
  FDRE \tmp_15_reg_1812_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_40_fu_1264_p3[17]),
        .Q(tmp_15_reg_1812),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_15_reg_1812_reg[0]_i_1 
       (.CI(\y_40_reg_1796_reg[12]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_15_reg_1812_reg[0]_i_1_CO_UNCONNECTED [7:1],\tmp_15_reg_1812_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_37_fu_1188_p3__0[16]}),
        .O({\NLW_tmp_15_reg_1812_reg[0]_i_1_O_UNCONNECTED [7:2],y_40_fu_1264_p3[17:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\tmp_15_reg_1812[0]_i_2_n_0 ,\tmp_15_reg_1812[0]_i_3_n_0 }));
  (* srl_bus_name = "inst/\\tmp_2_reg_1683_pp0_iter1_reg_reg " *) 
  (* srl_name = "inst/\\tmp_2_reg_1683_pp0_iter1_reg_reg[0]_srl2 " *) 
  SRL16E \tmp_2_reg_1683_pp0_iter1_reg_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(p_0_in),
        .Q(\tmp_2_reg_1683_pp0_iter1_reg_reg[0]_srl2_n_0 ));
  LUT3 #(
    .INIT(8'h5C)) 
    \tmp_2_reg_1683_pp0_iter1_reg_reg[0]_srl2_i_1 
       (.I0(\off_1_reg_1678[13]_i_2_n_0 ),
        .I1(y_in[15]),
        .I2(x_in[15]),
        .O(p_0_in));
  FDRE \tmp_2_reg_1683_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_2_reg_1683_pp0_iter1_reg_reg[0]_srl2_n_0 ),
        .Q(tmp_2_reg_1683_pp0_iter2_reg),
        .R(1'b0));
  (* srl_bus_name = "inst/\\tmp_3_reg_1689_pp0_iter1_reg_reg " *) 
  (* srl_name = "inst/\\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2 " *) 
  SRL16E \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(B0),
        .Q(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_1 
       (.I0(y_48_fu_280_p2[16]),
        .I1(y_3_fu_292_p2[16]),
        .I2(p_0_in),
        .O(B0));
  LUT6 #(
    .INIT(64'h0010FFEFFFFF0000)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_10 
       (.I0(y_in[13]),
        .I1(y_in[11]),
        .I2(\off_1_reg_1678[13]_i_3_n_0 ),
        .I3(y_in[12]),
        .I4(y_in[14]),
        .I5(x_in[15]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h04FBFF00)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_11 
       (.I0(y_in[12]),
        .I1(\off_1_reg_1678[13]_i_3_n_0 ),
        .I2(y_in[11]),
        .I3(y_in[13]),
        .I4(x_in[15]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h4BF0)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_12 
       (.I0(y_in[11]),
        .I1(\off_1_reg_1678[13]_i_3_n_0 ),
        .I2(y_in[12]),
        .I3(x_in[15]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h9C)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_13 
       (.I0(\off_1_reg_1678[13]_i_3_n_0 ),
        .I1(y_in[11]),
        .I2(x_in[15]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h9C)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_14 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_54_n_0 ),
        .I1(y_in[10]),
        .I2(x_in[15]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0010FFEFFFFF0000)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_15 
       (.I0(y_in[8]),
        .I1(y_in[6]),
        .I2(\off_1_reg_1678[13]_i_4_n_0 ),
        .I3(y_in[7]),
        .I4(y_in[9]),
        .I5(x_in[15]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h04FBFF00)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_16 
       (.I0(y_in[7]),
        .I1(\off_1_reg_1678[13]_i_4_n_0 ),
        .I2(y_in[6]),
        .I3(y_in[8]),
        .I4(x_in[15]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h639C)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_17 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_53_n_0 ),
        .I1(y_in[15]),
        .I2(x_in[15]),
        .I3(zext_ln10_fu_252_p1[15]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_18 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_10_n_0 ),
        .I1(zext_ln10_fu_252_p1[14]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFB0400FF04FBFF00)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_19 
       (.I0(y_in[12]),
        .I1(\off_1_reg_1678[13]_i_3_n_0 ),
        .I2(y_in[11]),
        .I3(y_in[13]),
        .I4(x_in[15]),
        .I5(zext_ln10_fu_252_p1[13]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_19_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_2 
       (.CI(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_4_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_2_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_2_O_UNCONNECTED [7:1],y_48_fu_280_p2[16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_5_n_0 }));
  LUT5 #(
    .INIT(32'hB40F4BF0)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_20 
       (.I0(y_in[11]),
        .I1(\off_1_reg_1678[13]_i_3_n_0 ),
        .I2(y_in[12]),
        .I3(x_in[15]),
        .I4(zext_ln10_fu_252_p1[12]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h4B87B478)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_21 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_59_n_0 ),
        .I1(x_in[15]),
        .I2(x_in[11]),
        .I3(\off_1_reg_1678[13]_i_3_n_0 ),
        .I4(y_in[11]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h4B87B478)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_22 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_60_n_0 ),
        .I1(x_in[15]),
        .I2(x_in[10]),
        .I3(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_54_n_0 ),
        .I4(y_in[10]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_23 
       (.I0(zext_ln10_fu_252_p1[9]),
        .I1(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_15_n_0 ),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFB0400FF04FBFF00)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_24 
       (.I0(y_in[7]),
        .I1(\off_1_reg_1678[13]_i_4_n_0 ),
        .I2(y_in[6]),
        .I3(y_in[8]),
        .I4(x_in[15]),
        .I5(zext_ln10_fu_252_p1[8]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_24_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_25 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_25_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_25_n_1 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_25_n_2 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_25_n_3 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_25_n_4 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_25_n_5 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_25_n_6 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_25_n_7 }),
        .DI({\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_38_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_63_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_64_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_41_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_42_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_43_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_65_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_66_n_0 }),
        .O(y_3_fu_292_p2[7:0]),
        .S({\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_67_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_68_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_69_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_70_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_71_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_72_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_73_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_74_n_0 }));
  LUT3 #(
    .INIT(8'h9C)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_26 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_53_n_0 ),
        .I1(y_in[15]),
        .I2(x_in[15]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h4BF0)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_27 
       (.I0(y_in[11]),
        .I1(\off_1_reg_1678[13]_i_3_n_0 ),
        .I2(y_in[12]),
        .I3(x_in[15]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h9C)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_28 
       (.I0(\off_1_reg_1678[13]_i_3_n_0 ),
        .I1(y_in[11]),
        .I2(x_in[15]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h9C)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_29 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_54_n_0 ),
        .I1(y_in[10]),
        .I2(x_in[15]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_29_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_3 
       (.CI(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_6_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_3_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_3_O_UNCONNECTED [7:1],y_3_fu_292_p2[16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_7_n_0 }));
  LUT4 #(
    .INIT(16'h9C63)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_30 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_53_n_0 ),
        .I1(y_in[15]),
        .I2(x_in[15]),
        .I3(zext_ln10_fu_252_p1[15]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_31 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_10_n_0 ),
        .I1(zext_ln10_fu_252_p1[14]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h04FBFF00FB0400FF)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_32 
       (.I0(y_in[12]),
        .I1(\off_1_reg_1678[13]_i_3_n_0 ),
        .I2(y_in[11]),
        .I3(y_in[13]),
        .I4(x_in[15]),
        .I5(zext_ln10_fu_252_p1[13]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h4BF0B40F)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_33 
       (.I0(y_in[11]),
        .I1(\off_1_reg_1678[13]_i_3_n_0 ),
        .I2(y_in[12]),
        .I3(x_in[15]),
        .I4(zext_ln10_fu_252_p1[12]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_33_n_0 ));
  LUT5 #(
    .INIT(32'hB4784B87)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_34 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_59_n_0 ),
        .I1(x_in[15]),
        .I2(x_in[11]),
        .I3(\off_1_reg_1678[13]_i_3_n_0 ),
        .I4(y_in[11]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_34_n_0 ));
  LUT5 #(
    .INIT(32'hB4784B87)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_35 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_60_n_0 ),
        .I1(x_in[15]),
        .I2(x_in[10]),
        .I3(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_54_n_0 ),
        .I4(y_in[10]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_36 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_15_n_0 ),
        .I1(zext_ln10_fu_252_p1[9]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h04FBFF00FB0400FF)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_37 
       (.I0(y_in[7]),
        .I1(\off_1_reg_1678[13]_i_4_n_0 ),
        .I2(y_in[6]),
        .I3(y_in[8]),
        .I4(x_in[15]),
        .I5(zext_ln10_fu_252_p1[8]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h4BF0)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_38 
       (.I0(y_in[6]),
        .I1(\off_1_reg_1678[13]_i_4_n_0 ),
        .I2(y_in[7]),
        .I3(x_in[15]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_38_n_0 ));
  LUT3 #(
    .INIT(8'h9C)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_39 
       (.I0(\off_1_reg_1678[13]_i_4_n_0 ),
        .I1(y_in[6]),
        .I2(x_in[15]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_39_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_4 
       (.CI(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_8_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_4_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_4_n_1 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_4_n_2 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_4_n_3 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_4_n_4 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_4_n_5 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_4_n_6 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_4_n_7 }),
        .DI({\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_9_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_10_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_11_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_12_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_13_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_14_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_15_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_16_n_0 }),
        .O(y_48_fu_280_p2[15:8]),
        .S({\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_17_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_18_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_19_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_20_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_21_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_22_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_23_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_24_n_0 }));
  LUT3 #(
    .INIT(8'h9C)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_40 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_75_n_0 ),
        .I1(y_in[5]),
        .I2(x_in[15]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFEFFFF0000)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_41 
       (.I0(y_in[3]),
        .I1(y_in[0]),
        .I2(y_in[1]),
        .I3(y_in[2]),
        .I4(y_in[4]),
        .I5(x_in[15]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_41_n_0 ));
  LUT5 #(
    .INIT(32'h01FEFF00)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_42 
       (.I0(y_in[2]),
        .I1(y_in[1]),
        .I2(y_in[0]),
        .I3(y_in[3]),
        .I4(x_in[15]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h1EF0)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_43 
       (.I0(y_in[0]),
        .I1(y_in[1]),
        .I2(y_in[2]),
        .I3(x_in[15]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_43_n_0 ));
  LUT3 #(
    .INIT(8'h6C)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_44 
       (.I0(y_in[0]),
        .I1(y_in[1]),
        .I2(x_in[15]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_44_n_0 ));
  LUT5 #(
    .INIT(32'hB40F4BF0)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_45 
       (.I0(y_in[6]),
        .I1(\off_1_reg_1678[13]_i_4_n_0 ),
        .I2(y_in[7]),
        .I3(x_in[15]),
        .I4(zext_ln10_fu_252_p1[7]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_45_n_0 ));
  LUT5 #(
    .INIT(32'h4B87B478)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_46 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_76_n_0 ),
        .I1(x_in[15]),
        .I2(x_in[6]),
        .I3(\off_1_reg_1678[13]_i_4_n_0 ),
        .I4(y_in[6]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h4B87B478)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_47 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_77_n_0 ),
        .I1(x_in[15]),
        .I2(x_in[5]),
        .I3(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_75_n_0 ),
        .I4(y_in[5]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_47_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_48 
       (.I0(zext_ln10_fu_252_p1[4]),
        .I1(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_41_n_0 ),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hFE0001FF01FFFE00)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_49 
       (.I0(x_in[2]),
        .I1(x_in[1]),
        .I2(x_in[0]),
        .I3(x_in[15]),
        .I4(x_in[3]),
        .I5(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_42_n_0 ),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_49_n_0 ));
  LUT3 #(
    .INIT(8'h5C)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_5 
       (.I0(\off_1_reg_1678[13]_i_2_n_0 ),
        .I1(y_in[15]),
        .I2(x_in[15]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hE01F1FE0)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_50 
       (.I0(x_in[0]),
        .I1(x_in[1]),
        .I2(x_in[15]),
        .I3(x_in[2]),
        .I4(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_43_n_0 ),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_50_n_0 ));
  LUT5 #(
    .INIT(32'h4B87B478)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_51 
       (.I0(x_in[0]),
        .I1(x_in[15]),
        .I2(x_in[1]),
        .I3(y_in[0]),
        .I4(y_in[1]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_51_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_52 
       (.I0(x_in[0]),
        .I1(y_in[0]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_52_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_53 
       (.I0(y_in[13]),
        .I1(y_in[11]),
        .I2(\off_1_reg_1678[13]_i_3_n_0 ),
        .I3(y_in[12]),
        .I4(y_in[14]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_53_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_54 
       (.I0(y_in[8]),
        .I1(y_in[6]),
        .I2(\off_1_reg_1678[13]_i_4_n_0 ),
        .I3(y_in[7]),
        .I4(y_in[9]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_55 
       (.I0(x_in[15]),
        .I1(x_in[13]),
        .I2(x_in[11]),
        .I3(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_59_n_0 ),
        .I4(x_in[12]),
        .I5(x_in[14]),
        .O(zext_ln10_fu_252_p1[15]));
  LUT6 #(
    .INIT(64'h0010FFFFFFEF0000)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_56 
       (.I0(x_in[13]),
        .I1(x_in[11]),
        .I2(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_59_n_0 ),
        .I3(x_in[12]),
        .I4(x_in[15]),
        .I5(x_in[14]),
        .O(zext_ln10_fu_252_p1[14]));
  LUT5 #(
    .INIT(32'h04FFFB00)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_57 
       (.I0(x_in[12]),
        .I1(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_59_n_0 ),
        .I2(x_in[11]),
        .I3(x_in[15]),
        .I4(x_in[13]),
        .O(zext_ln10_fu_252_p1[13]));
  LUT4 #(
    .INIT(16'h4FB0)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_58 
       (.I0(x_in[11]),
        .I1(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_59_n_0 ),
        .I2(x_in[15]),
        .I3(x_in[12]),
        .O(zext_ln10_fu_252_p1[12]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_59 
       (.I0(x_in[9]),
        .I1(x_in[7]),
        .I2(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_76_n_0 ),
        .I3(x_in[6]),
        .I4(x_in[8]),
        .I5(x_in[10]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_59_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_6 
       (.CI(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_25_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_6_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_6_n_1 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_6_n_2 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_6_n_3 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_6_n_4 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_6_n_5 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_6_n_6 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_6_n_7 }),
        .DI({\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_26_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_10_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_11_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_27_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_28_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_29_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_15_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_16_n_0 }),
        .O(y_3_fu_292_p2[15:8]),
        .S({\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_30_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_31_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_32_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_33_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_34_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_35_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_36_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_37_n_0 }));
  LUT5 #(
    .INIT(32'h00000010)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_60 
       (.I0(x_in[8]),
        .I1(x_in[6]),
        .I2(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_76_n_0 ),
        .I3(x_in[7]),
        .I4(x_in[9]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h0010FFFFFFEF0000)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_61 
       (.I0(x_in[8]),
        .I1(x_in[6]),
        .I2(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_76_n_0 ),
        .I3(x_in[7]),
        .I4(x_in[15]),
        .I5(x_in[9]),
        .O(zext_ln10_fu_252_p1[9]));
  LUT5 #(
    .INIT(32'h04FFFB00)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_62 
       (.I0(x_in[7]),
        .I1(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_76_n_0 ),
        .I2(x_in[6]),
        .I3(x_in[15]),
        .I4(x_in[8]),
        .O(zext_ln10_fu_252_p1[8]));
  LUT3 #(
    .INIT(8'h9C)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_63 
       (.I0(\off_1_reg_1678[13]_i_4_n_0 ),
        .I1(y_in[6]),
        .I2(x_in[15]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_63_n_0 ));
  LUT3 #(
    .INIT(8'h9C)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_64 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_75_n_0 ),
        .I1(y_in[5]),
        .I2(x_in[15]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_64_n_0 ));
  LUT3 #(
    .INIT(8'h6C)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_65 
       (.I0(y_in[0]),
        .I1(y_in[1]),
        .I2(x_in[15]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_65_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_66 
       (.I0(y_in[0]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_66_n_0 ));
  LUT5 #(
    .INIT(32'h4BF0B40F)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_67 
       (.I0(y_in[6]),
        .I1(\off_1_reg_1678[13]_i_4_n_0 ),
        .I2(y_in[7]),
        .I3(x_in[15]),
        .I4(zext_ln10_fu_252_p1[7]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_67_n_0 ));
  LUT5 #(
    .INIT(32'hB4784B87)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_68 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_76_n_0 ),
        .I1(x_in[15]),
        .I2(x_in[6]),
        .I3(\off_1_reg_1678[13]_i_4_n_0 ),
        .I4(y_in[6]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_68_n_0 ));
  LUT5 #(
    .INIT(32'hB4784B87)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_69 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_77_n_0 ),
        .I1(x_in[15]),
        .I2(x_in[5]),
        .I3(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_75_n_0 ),
        .I4(y_in[5]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_69_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_7 
       (.I0(p_0_in),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_70 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_41_n_0 ),
        .I1(zext_ln10_fu_252_p1[4]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h6969696969696999)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_71 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_42_n_0 ),
        .I1(x_in[3]),
        .I2(x_in[15]),
        .I3(x_in[0]),
        .I4(x_in[1]),
        .I5(x_in[2]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_71_n_0 ));
  LUT5 #(
    .INIT(32'h69696999)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_72 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_43_n_0 ),
        .I1(x_in[2]),
        .I2(x_in[15]),
        .I3(x_in[1]),
        .I4(x_in[0]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_72_n_0 ));
  LUT5 #(
    .INIT(32'h96A569A5)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_73 
       (.I0(y_in[1]),
        .I1(y_in[0]),
        .I2(x_in[1]),
        .I3(x_in[15]),
        .I4(x_in[0]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_73_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_74 
       (.I0(y_in[0]),
        .I1(x_in[0]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_74_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_75 
       (.I0(y_in[3]),
        .I1(y_in[0]),
        .I2(y_in[1]),
        .I3(y_in[2]),
        .I4(y_in[4]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_76 
       (.I0(x_in[4]),
        .I1(x_in[2]),
        .I2(x_in[1]),
        .I3(x_in[0]),
        .I4(x_in[3]),
        .I5(x_in[5]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_76_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_77 
       (.I0(x_in[3]),
        .I1(x_in[0]),
        .I2(x_in[1]),
        .I3(x_in[2]),
        .I4(x_in[4]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_77_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_8 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_8_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_8_n_1 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_8_n_2 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_8_n_3 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_8_n_4 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_8_n_5 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_8_n_6 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_8_n_7 }),
        .DI({\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_38_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_39_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_40_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_41_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_42_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_43_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_44_n_0 ,x_in[0]}),
        .O(y_48_fu_280_p2[7:0]),
        .S({\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_45_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_46_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_47_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_48_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_49_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_50_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_51_n_0 ,\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_52_n_0 }));
  LUT3 #(
    .INIT(8'h9C)) 
    \tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_9 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_53_n_0 ),
        .I1(y_in[15]),
        .I2(x_in[15]),
        .O(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_9_n_0 ));
  FDRE \tmp_3_reg_1689_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_n_0 ),
        .Q(tmp_3_reg_1689_pp0_iter2_reg),
        .R(1'b0));
  (* srl_bus_name = "inst/\\tmp_4_reg_1694_pp0_iter1_reg_reg " *) 
  (* srl_name = "inst/\\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2 " *) 
  SRL16E \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(sext_ln11_1_fu_394_p1),
        .Q(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_n_0 ));
  LUT5 #(
    .INIT(32'hACACAACC)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_1 
       (.I0(y_5_fu_360_p2[16]),
        .I1(y_6_fu_372_p2[16]),
        .I2(y_48_fu_280_p2[16]),
        .I3(y_3_fu_292_p2[16]),
        .I4(p_0_in),
        .O(sext_ln11_1_fu_394_p1));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_10 
       (.I0(y_48_fu_280_p2[13]),
        .I1(y_3_fu_292_p2[13]),
        .I2(p_0_in),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_11 
       (.I0(y_48_fu_280_p2[12]),
        .I1(y_3_fu_292_p2[12]),
        .I2(p_0_in),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_12 
       (.I0(y_48_fu_280_p2[11]),
        .I1(y_3_fu_292_p2[11]),
        .I2(p_0_in),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_13 
       (.I0(y_48_fu_280_p2[10]),
        .I1(y_3_fu_292_p2[10]),
        .I2(p_0_in),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_14 
       (.I0(y_48_fu_280_p2[9]),
        .I1(y_3_fu_292_p2[9]),
        .I2(p_0_in),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_15 
       (.I0(y_48_fu_280_p2[8]),
        .I1(y_3_fu_292_p2[8]),
        .I2(p_0_in),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h53A35CAC)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_16 
       (.I0(x_2_fu_286_p2[16]),
        .I1(y_48_fu_280_p2[16]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[15]),
        .I4(y_3_fu_292_p2[15]),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h53A35CAC)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_17 
       (.I0(x_2_fu_286_p2[15]),
        .I1(y_48_fu_280_p2[15]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[14]),
        .I4(y_3_fu_292_p2[14]),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h53A35CAC)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_18 
       (.I0(x_2_fu_286_p2[14]),
        .I1(y_48_fu_280_p2[14]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[13]),
        .I4(y_3_fu_292_p2[13]),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h53A35CAC)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_19 
       (.I0(x_2_fu_286_p2[13]),
        .I1(y_48_fu_280_p2[13]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[12]),
        .I4(y_3_fu_292_p2[12]),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_19_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_2 
       (.CI(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_4_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_2_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_2_O_UNCONNECTED [7:1],y_5_fu_360_p2[16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_5_n_0 }));
  LUT5 #(
    .INIT(32'h53A35CAC)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_20 
       (.I0(x_2_fu_286_p2[12]),
        .I1(y_48_fu_280_p2[12]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[11]),
        .I4(y_3_fu_292_p2[11]),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h53A35CAC)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_21 
       (.I0(x_2_fu_286_p2[11]),
        .I1(y_48_fu_280_p2[11]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[10]),
        .I4(y_3_fu_292_p2[10]),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h53A35CAC)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_22 
       (.I0(x_2_fu_286_p2[10]),
        .I1(y_48_fu_280_p2[10]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[9]),
        .I4(y_3_fu_292_p2[9]),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h53A35CAC)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_23 
       (.I0(x_2_fu_286_p2[9]),
        .I1(y_48_fu_280_p2[9]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[8]),
        .I4(y_3_fu_292_p2[8]),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_23_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_24 
       (.I0(y_48_fu_280_p2[15]),
        .I1(y_3_fu_292_p2[15]),
        .I2(p_0_in),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_24_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_25 
       (.I0(y_48_fu_280_p2[14]),
        .I1(y_3_fu_292_p2[14]),
        .I2(p_0_in),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_25_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_26 
       (.I0(y_48_fu_280_p2[13]),
        .I1(y_3_fu_292_p2[13]),
        .I2(p_0_in),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_26_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_27 
       (.I0(y_48_fu_280_p2[12]),
        .I1(y_3_fu_292_p2[12]),
        .I2(p_0_in),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_27_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_28 
       (.I0(y_48_fu_280_p2[11]),
        .I1(y_3_fu_292_p2[11]),
        .I2(p_0_in),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_28_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_29 
       (.I0(y_48_fu_280_p2[10]),
        .I1(y_3_fu_292_p2[10]),
        .I2(p_0_in),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_29_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_3 
       (.CI(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_6_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_3_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_3_O_UNCONNECTED [7:1],y_6_fu_372_p2[16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in}));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_30 
       (.I0(y_48_fu_280_p2[9]),
        .I1(y_3_fu_292_p2[9]),
        .I2(p_0_in),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_30_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_31 
       (.I0(y_48_fu_280_p2[8]),
        .I1(y_3_fu_292_p2[8]),
        .I2(p_0_in),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_31_n_0 ));
  LUT5 #(
    .INIT(32'hCAC53A35)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_32 
       (.I0(y_3_fu_292_p2[15]),
        .I1(y_48_fu_280_p2[15]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[16]),
        .I4(x_2_fu_286_p2[16]),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_32_n_0 ));
  LUT5 #(
    .INIT(32'hCAC53A35)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_33 
       (.I0(y_3_fu_292_p2[14]),
        .I1(y_48_fu_280_p2[14]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[15]),
        .I4(x_2_fu_286_p2[15]),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_33_n_0 ));
  LUT5 #(
    .INIT(32'hCAC53A35)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_34 
       (.I0(y_3_fu_292_p2[13]),
        .I1(y_48_fu_280_p2[13]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[14]),
        .I4(x_2_fu_286_p2[14]),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_34_n_0 ));
  LUT5 #(
    .INIT(32'hCAC53A35)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_35 
       (.I0(y_3_fu_292_p2[12]),
        .I1(y_48_fu_280_p2[12]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[13]),
        .I4(x_2_fu_286_p2[13]),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_35_n_0 ));
  LUT5 #(
    .INIT(32'hCAC53A35)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_36 
       (.I0(y_3_fu_292_p2[11]),
        .I1(y_48_fu_280_p2[11]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[12]),
        .I4(x_2_fu_286_p2[12]),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_36_n_0 ));
  LUT5 #(
    .INIT(32'hCAC53A35)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_37 
       (.I0(y_3_fu_292_p2[10]),
        .I1(y_48_fu_280_p2[10]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[11]),
        .I4(x_2_fu_286_p2[11]),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_37_n_0 ));
  LUT5 #(
    .INIT(32'hCAC53A35)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_38 
       (.I0(y_3_fu_292_p2[9]),
        .I1(y_48_fu_280_p2[9]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[10]),
        .I4(x_2_fu_286_p2[10]),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_38_n_0 ));
  LUT5 #(
    .INIT(32'hCAC53A35)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_39 
       (.I0(y_3_fu_292_p2[8]),
        .I1(y_48_fu_280_p2[8]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[9]),
        .I4(x_2_fu_286_p2[9]),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_39_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_4 
       (.CI(\x_13_reg_1704_reg[3]_i_38_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_4_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_4_n_1 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_4_n_2 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_4_n_3 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_4_n_4 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_4_n_5 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_4_n_6 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_4_n_7 }),
        .DI({\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_8_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_9_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_10_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_11_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_12_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_13_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_14_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_15_n_0 }),
        .O(y_5_fu_360_p2[15:8]),
        .S({\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_16_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_17_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_18_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_19_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_20_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_21_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_22_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_23_n_0 }));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_5 
       (.I0(y_48_fu_280_p2[16]),
        .I1(y_3_fu_292_p2[16]),
        .I2(p_0_in),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_6 
       (.CI(\x_13_reg_1704_reg[3]_i_39_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_6_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_6_n_1 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_6_n_2 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_6_n_3 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_6_n_4 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_6_n_5 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_6_n_6 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_6_n_7 }),
        .DI({\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_24_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_25_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_26_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_27_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_28_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_29_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_30_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_31_n_0 }),
        .O(y_6_fu_372_p2[15:8]),
        .S({\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_32_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_33_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_34_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_35_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_36_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_37_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_38_n_0 ,\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_39_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_7 
       (.I0(B0),
        .O(in));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_8 
       (.I0(y_48_fu_280_p2[15]),
        .I1(y_3_fu_292_p2[15]),
        .I2(p_0_in),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_9 
       (.I0(y_48_fu_280_p2[14]),
        .I1(y_3_fu_292_p2[14]),
        .I2(p_0_in),
        .O(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_i_9_n_0 ));
  FDRE \tmp_4_reg_1694_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_4_reg_1694_pp0_iter1_reg_reg[0]_srl2_n_0 ),
        .Q(tmp_4_reg_1694_pp0_iter2_reg),
        .R(1'b0));
  (* srl_bus_name = "inst/\\tmp_5_reg_1699_pp0_iter1_reg_reg " *) 
  (* srl_name = "inst/\\tmp_5_reg_1699_pp0_iter1_reg_reg[0]_srl2 " *) 
  SRL16E \tmp_5_reg_1699_pp0_iter1_reg_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(y_10_fu_474_p3),
        .Q(\tmp_5_reg_1699_pp0_iter1_reg_reg[0]_srl2_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \tmp_5_reg_1699_pp0_iter1_reg_reg[0]_srl2_i_1 
       (.I0(sext_ln11_2_fu_450_p1[16]),
        .I1(y_5_fu_360_p2[16]),
        .I2(y_6_fu_372_p2[16]),
        .I3(B0),
        .I4(y_9_fu_460_p2__0),
        .O(y_10_fu_474_p3));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_5_reg_1699_pp0_iter1_reg_reg[0]_srl2_i_2 
       (.CI(\x_13_reg_1704_reg[3]_i_20_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_tmp_5_reg_1699_pp0_iter1_reg_reg[0]_srl2_i_2_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmp_5_reg_1699_pp0_iter1_reg_reg[0]_srl2_i_2_O_UNCONNECTED [7:1],sext_ln11_2_fu_450_p1[16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\tmp_5_reg_1699_pp0_iter1_reg_reg[0]_srl2_i_4_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_5_reg_1699_pp0_iter1_reg_reg[0]_srl2_i_3 
       (.CI(\x_13_reg_1704_reg[3]_i_21_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_5_reg_1699_pp0_iter1_reg_reg[0]_srl2_i_3_CO_UNCONNECTED [7:1],\tmp_5_reg_1699_pp0_iter1_reg_reg[0]_srl2_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,sext_ln27_fu_408_p1[15]}),
        .O({\NLW_tmp_5_reg_1699_pp0_iter1_reg_reg[0]_srl2_i_3_O_UNCONNECTED [7:2],y_9_fu_460_p2__0,y_9_fu_460_p2[16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,\tmp_5_reg_1699_pp0_iter1_reg_reg[0]_srl2_i_5_n_0 }));
  LUT4 #(
    .INIT(16'h53AC)) 
    \tmp_5_reg_1699_pp0_iter1_reg_reg[0]_srl2_i_4 
       (.I0(y_5_fu_360_p2[16]),
        .I1(y_6_fu_372_p2[16]),
        .I2(B0),
        .I3(sext_ln27_fu_408_p1[15]),
        .O(\tmp_5_reg_1699_pp0_iter1_reg_reg[0]_srl2_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hA965)) 
    \tmp_5_reg_1699_pp0_iter1_reg_reg[0]_srl2_i_5 
       (.I0(sext_ln27_fu_408_p1[15]),
        .I1(B0),
        .I2(y_6_fu_372_p2[16]),
        .I3(y_5_fu_360_p2[16]),
        .O(\tmp_5_reg_1699_pp0_iter1_reg_reg[0]_srl2_i_5_n_0 ));
  FDRE \tmp_5_reg_1699_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_5_reg_1699_pp0_iter1_reg_reg[0]_srl2_n_0 ),
        .Q(tmp_5_reg_1699_pp0_iter2_reg),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \tmp_6_reg_1726[0]_i_2 
       (.I0(sext_ln11_2_fu_450_p1[16]),
        .I1(y_5_fu_360_p2[16]),
        .I2(y_6_fu_372_p2[16]),
        .I3(B0),
        .I4(y_9_fu_460_p2[16]),
        .O(y_10_fu_474_p3__0[16]));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_6_reg_1726[0]_i_3 
       (.I0(sext_ln27_2_fu_492_p10),
        .O(\tmp_6_reg_1726[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3639)) 
    \tmp_6_reg_1726[0]_i_4 
       (.I0(y_9_fu_460_p2[16]),
        .I1(sext_ln27_2_fu_492_p10),
        .I2(sext_ln11_1_fu_394_p1),
        .I3(y_9_fu_460_p2__0),
        .O(\tmp_6_reg_1726[0]_i_4_n_0 ));
  FDRE \tmp_6_reg_1726_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_550_p3[17]),
        .Q(tmp_6_reg_1726),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_6_reg_1726_reg[0]_i_1 
       (.CI(\y_13_reg_1710_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_6_reg_1726_reg[0]_i_1_CO_UNCONNECTED [7:1],\tmp_6_reg_1726_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_10_fu_474_p3__0[16]}),
        .O({\NLW_tmp_6_reg_1726_reg[0]_i_1_O_UNCONNECTED [7:2],y_13_fu_550_p3[17:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\tmp_6_reg_1726[0]_i_3_n_0 ,\tmp_6_reg_1726[0]_i_4_n_0 }));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1733[0]_i_10 
       (.I0(\tmp_9_reg_1733_reg[0]_i_6_n_11 ),
        .I1(\tmp_9_reg_1733_reg[0]_i_17_n_14 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\tmp_9_reg_1733[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1733[0]_i_11 
       (.I0(\tmp_9_reg_1733_reg[0]_i_6_n_12 ),
        .I1(\tmp_9_reg_1733_reg[0]_i_17_n_14 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\tmp_9_reg_1733[0]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1733[0]_i_12 
       (.I0(\tmp_9_reg_1733_reg[0]_i_6_n_13 ),
        .I1(\tmp_9_reg_1733_reg[0]_i_17_n_15 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\tmp_9_reg_1733[0]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1733[0]_i_13 
       (.I0(\tmp_9_reg_1733_reg[0]_i_6_n_14 ),
        .I1(\x_27_reg_1755_reg[17]_i_8_n_8 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\tmp_9_reg_1733[0]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1733[0]_i_14 
       (.I0(\tmp_9_reg_1733_reg[0]_i_6_n_15 ),
        .I1(\x_27_reg_1755_reg[17]_i_8_n_9 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\tmp_9_reg_1733[0]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_9_reg_1733[0]_i_15 
       (.I0(\tmp_9_reg_1733_reg[0]_i_26_n_14 ),
        .O(\tmp_9_reg_1733[0]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1733[0]_i_16 
       (.I0(\add_ln43_9_reg_1765_reg[14]_i_9_n_15 ),
        .I1(\tmp_9_reg_1733_reg[0]_i_26_n_14 ),
        .I2(sel),
        .O(\tmp_9_reg_1733[0]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1733[0]_i_18 
       (.I0(\add_ln43_9_reg_1765_reg[14]_i_10_n_8 ),
        .I1(\tmp_9_reg_1733_reg[0]_i_26_n_14 ),
        .I2(sel),
        .O(\tmp_9_reg_1733[0]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1733[0]_i_19 
       (.I0(\add_ln43_9_reg_1765_reg[14]_i_10_n_9 ),
        .I1(\tmp_9_reg_1733_reg[0]_i_26_n_14 ),
        .I2(sel),
        .O(\tmp_9_reg_1733[0]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1733[0]_i_20 
       (.I0(\add_ln43_9_reg_1765_reg[14]_i_10_n_10 ),
        .I1(\tmp_9_reg_1733_reg[0]_i_26_n_14 ),
        .I2(sel),
        .O(\tmp_9_reg_1733[0]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1733[0]_i_21 
       (.I0(\add_ln43_9_reg_1765_reg[14]_i_10_n_11 ),
        .I1(\tmp_9_reg_1733_reg[0]_i_26_n_14 ),
        .I2(sel),
        .O(\tmp_9_reg_1733[0]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1733[0]_i_22 
       (.I0(\add_ln43_9_reg_1765_reg[14]_i_10_n_12 ),
        .I1(\tmp_9_reg_1733_reg[0]_i_26_n_15 ),
        .I2(sel),
        .O(\tmp_9_reg_1733[0]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1733[0]_i_23 
       (.I0(\add_ln43_9_reg_1765_reg[14]_i_10_n_13 ),
        .I1(\x_27_reg_1755_reg[17]_i_12_n_8 ),
        .I2(sel),
        .O(\tmp_9_reg_1733[0]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1733[0]_i_24 
       (.I0(\add_ln43_9_reg_1765_reg[14]_i_10_n_14 ),
        .I1(\x_27_reg_1755_reg[17]_i_12_n_9 ),
        .I2(sel),
        .O(\tmp_9_reg_1733[0]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1733[0]_i_25 
       (.I0(\add_ln43_9_reg_1765_reg[14]_i_10_n_15 ),
        .I1(\x_27_reg_1755_reg[17]_i_12_n_10 ),
        .I2(sel),
        .O(\tmp_9_reg_1733[0]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_9_reg_1733[0]_i_4 
       (.I0(\tmp_9_reg_1733_reg[0]_i_17_n_14 ),
        .O(\tmp_9_reg_1733[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1733[0]_i_5 
       (.I0(\tmp_9_reg_1733_reg[0]_i_3_n_15 ),
        .I1(\tmp_9_reg_1733_reg[0]_i_17_n_14 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\tmp_9_reg_1733[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1733[0]_i_7 
       (.I0(\tmp_9_reg_1733_reg[0]_i_6_n_8 ),
        .I1(\tmp_9_reg_1733_reg[0]_i_17_n_14 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\tmp_9_reg_1733[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1733[0]_i_8 
       (.I0(\tmp_9_reg_1733_reg[0]_i_6_n_9 ),
        .I1(\tmp_9_reg_1733_reg[0]_i_17_n_14 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\tmp_9_reg_1733[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1733[0]_i_9 
       (.I0(\tmp_9_reg_1733_reg[0]_i_6_n_10 ),
        .I1(\tmp_9_reg_1733_reg[0]_i_17_n_14 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\tmp_9_reg_1733[0]_i_9_n_0 ));
  FDRE \tmp_9_reg_1733_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_9_reg_1733),
        .Q(tmp_9_reg_1733_pp0_iter2_reg),
        .R(1'b0));
  FDRE \tmp_9_reg_1733_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_22_fu_785_p3),
        .Q(tmp_9_reg_1733),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_9_reg_1733_reg[0]_i_1 
       (.CI(\tmp_9_reg_1733_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_9_reg_1733_reg[0]_i_1_CO_UNCONNECTED [7:1],\tmp_9_reg_1733_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\tmp_9_reg_1733_reg[0]_i_3_n_15 }),
        .O({\NLW_tmp_9_reg_1733_reg[0]_i_1_O_UNCONNECTED [7:2],y_22_fu_785_p3,y_22_fu_785_p3__0[16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\tmp_9_reg_1733[0]_i_4_n_0 ,\tmp_9_reg_1733[0]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_9_reg_1733_reg[0]_i_17 
       (.CI(\x_27_reg_1755_reg[17]_i_8_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_9_reg_1733_reg[0]_i_17_CO_UNCONNECTED [7:1],\tmp_9_reg_1733_reg[0]_i_17_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\tmp_9_reg_1733_reg[0]_i_26_n_15 }),
        .O({\NLW_tmp_9_reg_1733_reg[0]_i_17_O_UNCONNECTED [7:2],\tmp_9_reg_1733_reg[0]_i_17_n_14 ,\tmp_9_reg_1733_reg[0]_i_17_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\tmp_9_reg_1733_reg[0]_i_26_n_14 ,\tmp_9_reg_1733_reg[0]_i_26_n_15 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_9_reg_1733_reg[0]_i_2 
       (.CI(\y_27_reg_1760_reg[7]_i_12_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tmp_9_reg_1733_reg[0]_i_2_n_0 ,\tmp_9_reg_1733_reg[0]_i_2_n_1 ,\tmp_9_reg_1733_reg[0]_i_2_n_2 ,\tmp_9_reg_1733_reg[0]_i_2_n_3 ,\tmp_9_reg_1733_reg[0]_i_2_n_4 ,\tmp_9_reg_1733_reg[0]_i_2_n_5 ,\tmp_9_reg_1733_reg[0]_i_2_n_6 ,\tmp_9_reg_1733_reg[0]_i_2_n_7 }),
        .DI({\tmp_9_reg_1733_reg[0]_i_6_n_8 ,\tmp_9_reg_1733_reg[0]_i_6_n_9 ,\tmp_9_reg_1733_reg[0]_i_6_n_10 ,\tmp_9_reg_1733_reg[0]_i_6_n_11 ,\tmp_9_reg_1733_reg[0]_i_6_n_12 ,\tmp_9_reg_1733_reg[0]_i_6_n_13 ,\tmp_9_reg_1733_reg[0]_i_6_n_14 ,\tmp_9_reg_1733_reg[0]_i_6_n_15 }),
        .O(y_22_fu_785_p3__0[15:8]),
        .S({\tmp_9_reg_1733[0]_i_7_n_0 ,\tmp_9_reg_1733[0]_i_8_n_0 ,\tmp_9_reg_1733[0]_i_9_n_0 ,\tmp_9_reg_1733[0]_i_10_n_0 ,\tmp_9_reg_1733[0]_i_11_n_0 ,\tmp_9_reg_1733[0]_i_12_n_0 ,\tmp_9_reg_1733[0]_i_13_n_0 ,\tmp_9_reg_1733[0]_i_14_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_9_reg_1733_reg[0]_i_26 
       (.CI(\x_27_reg_1755_reg[17]_i_12_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_9_reg_1733_reg[0]_i_26_CO_UNCONNECTED [7:1],\tmp_9_reg_1733_reg[0]_i_26_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xs_4_reg_1716[12]}),
        .O({\NLW_tmp_9_reg_1733_reg[0]_i_26_O_UNCONNECTED [7:2],\tmp_9_reg_1733_reg[0]_i_26_n_14 ,\tmp_9_reg_1733_reg[0]_i_26_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xs_4_reg_1716[13:12]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_9_reg_1733_reg[0]_i_3 
       (.CI(\tmp_9_reg_1733_reg[0]_i_6_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_9_reg_1733_reg[0]_i_3_CO_UNCONNECTED [7:1],\tmp_9_reg_1733_reg[0]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\add_ln43_9_reg_1765_reg[14]_i_9_n_15 }),
        .O({\NLW_tmp_9_reg_1733_reg[0]_i_3_O_UNCONNECTED [7:2],\tmp_9_reg_1733_reg[0]_i_3_n_14 ,\tmp_9_reg_1733_reg[0]_i_3_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\tmp_9_reg_1733[0]_i_15_n_0 ,\tmp_9_reg_1733[0]_i_16_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_9_reg_1733_reg[0]_i_6 
       (.CI(\y_27_reg_1760_reg[7]_i_22_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tmp_9_reg_1733_reg[0]_i_6_n_0 ,\tmp_9_reg_1733_reg[0]_i_6_n_1 ,\tmp_9_reg_1733_reg[0]_i_6_n_2 ,\tmp_9_reg_1733_reg[0]_i_6_n_3 ,\tmp_9_reg_1733_reg[0]_i_6_n_4 ,\tmp_9_reg_1733_reg[0]_i_6_n_5 ,\tmp_9_reg_1733_reg[0]_i_6_n_6 ,\tmp_9_reg_1733_reg[0]_i_6_n_7 }),
        .DI({\add_ln43_9_reg_1765_reg[14]_i_10_n_8 ,\add_ln43_9_reg_1765_reg[14]_i_10_n_9 ,\add_ln43_9_reg_1765_reg[14]_i_10_n_10 ,\add_ln43_9_reg_1765_reg[14]_i_10_n_11 ,\add_ln43_9_reg_1765_reg[14]_i_10_n_12 ,\add_ln43_9_reg_1765_reg[14]_i_10_n_13 ,\add_ln43_9_reg_1765_reg[14]_i_10_n_14 ,\add_ln43_9_reg_1765_reg[14]_i_10_n_15 }),
        .O({\tmp_9_reg_1733_reg[0]_i_6_n_8 ,\tmp_9_reg_1733_reg[0]_i_6_n_9 ,\tmp_9_reg_1733_reg[0]_i_6_n_10 ,\tmp_9_reg_1733_reg[0]_i_6_n_11 ,\tmp_9_reg_1733_reg[0]_i_6_n_12 ,\tmp_9_reg_1733_reg[0]_i_6_n_13 ,\tmp_9_reg_1733_reg[0]_i_6_n_14 ,\tmp_9_reg_1733_reg[0]_i_6_n_15 }),
        .S({\tmp_9_reg_1733[0]_i_18_n_0 ,\tmp_9_reg_1733[0]_i_19_n_0 ,\tmp_9_reg_1733[0]_i_20_n_0 ,\tmp_9_reg_1733[0]_i_21_n_0 ,\tmp_9_reg_1733[0]_i_22_n_0 ,\tmp_9_reg_1733[0]_i_23_n_0 ,\tmp_9_reg_1733[0]_i_24_n_0 ,\tmp_9_reg_1733[0]_i_25_n_0 }));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \x_13_reg_1704[3]_i_10 
       (.I0(\x_13_reg_1704_reg[3]_i_2_n_15 ),
        .I1(sext_ln11_2_fu_450_p1[3]),
        .I2(sext_ln11_1_fu_394_p1),
        .I3(y_9_fu_460_p2[3]),
        .I4(sext_ln11_2_fu_450_p1[16]),
        .I5(y_9_fu_460_p2__0),
        .O(\x_13_reg_1704[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFFFFFE0000)) 
    \x_13_reg_1704[3]_i_100 
       (.I0(x_in[3]),
        .I1(x_in[0]),
        .I2(x_in[1]),
        .I3(x_in[2]),
        .I4(x_in[15]),
        .I5(x_in[4]),
        .O(zext_ln10_fu_252_p1[4]));
  LUT5 #(
    .INIT(32'h01FFFE00)) 
    \x_13_reg_1704[3]_i_101 
       (.I0(x_in[2]),
        .I1(x_in[1]),
        .I2(x_in[0]),
        .I3(x_in[15]),
        .I4(x_in[3]),
        .O(zext_ln10_fu_252_p1[3]));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \x_13_reg_1704[3]_i_102 
       (.I0(x_in[0]),
        .I1(x_in[1]),
        .I2(x_in[15]),
        .I3(x_in[2]),
        .O(zext_ln10_fu_252_p1[2]));
  LUT3 #(
    .INIT(8'h78)) 
    \x_13_reg_1704[3]_i_103 
       (.I0(x_in[0]),
        .I1(x_in[15]),
        .I2(x_in[1]),
        .O(zext_ln10_fu_252_p1[1]));
  LUT5 #(
    .INIT(32'h4BF0B40F)) 
    \x_13_reg_1704[3]_i_104 
       (.I0(y_in[6]),
        .I1(\off_1_reg_1678[13]_i_4_n_0 ),
        .I2(y_in[7]),
        .I3(x_in[15]),
        .I4(zext_ln10_fu_252_p1[7]),
        .O(\x_13_reg_1704[3]_i_104_n_0 ));
  LUT5 #(
    .INIT(32'hB4784B87)) 
    \x_13_reg_1704[3]_i_105 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_76_n_0 ),
        .I1(x_in[15]),
        .I2(x_in[6]),
        .I3(\off_1_reg_1678[13]_i_4_n_0 ),
        .I4(y_in[6]),
        .O(\x_13_reg_1704[3]_i_105_n_0 ));
  LUT5 #(
    .INIT(32'hB4784B87)) 
    \x_13_reg_1704[3]_i_106 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_77_n_0 ),
        .I1(x_in[15]),
        .I2(x_in[5]),
        .I3(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_75_n_0 ),
        .I4(y_in[5]),
        .O(\x_13_reg_1704[3]_i_106_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_13_reg_1704[3]_i_107 
       (.I0(zext_ln10_fu_252_p1[4]),
        .I1(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_41_n_0 ),
        .O(\x_13_reg_1704[3]_i_107_n_0 ));
  LUT6 #(
    .INIT(64'h6666666A99999995)) 
    \x_13_reg_1704[3]_i_108 
       (.I0(x_in[3]),
        .I1(x_in[15]),
        .I2(x_in[0]),
        .I3(x_in[1]),
        .I4(x_in[2]),
        .I5(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_42_n_0 ),
        .O(\x_13_reg_1704[3]_i_108_n_0 ));
  LUT5 #(
    .INIT(32'h666A9995)) 
    \x_13_reg_1704[3]_i_109 
       (.I0(x_in[2]),
        .I1(x_in[15]),
        .I2(x_in[1]),
        .I3(x_in[0]),
        .I4(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_43_n_0 ),
        .O(\x_13_reg_1704[3]_i_109_n_0 ));
  LUT5 #(
    .INIT(32'h9A656A95)) 
    \x_13_reg_1704[3]_i_110 
       (.I0(x_in[1]),
        .I1(x_in[0]),
        .I2(x_in[15]),
        .I3(y_in[1]),
        .I4(y_in[0]),
        .O(\x_13_reg_1704[3]_i_110_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_13_reg_1704[3]_i_111 
       (.I0(x_in[0]),
        .I1(y_in[0]),
        .O(\x_13_reg_1704[3]_i_111_n_0 ));
  LUT6 #(
    .INIT(64'h99A566A5995A665A)) 
    \x_13_reg_1704[3]_i_12 
       (.I0(sext_ln27_fu_408_p1[5]),
        .I1(y_5_fu_360_p2[9]),
        .I2(y_6_fu_372_p2[9]),
        .I3(B0),
        .I4(y_5_fu_360_p2[16]),
        .I5(y_6_fu_372_p2[16]),
        .O(\x_13_reg_1704[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h99A566A5995A665A)) 
    \x_13_reg_1704[3]_i_13 
       (.I0(sext_ln27_fu_408_p1[4]),
        .I1(y_5_fu_360_p2[8]),
        .I2(y_6_fu_372_p2[8]),
        .I3(B0),
        .I4(y_5_fu_360_p2[16]),
        .I5(y_6_fu_372_p2[16]),
        .O(\x_13_reg_1704[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h99A566A5995A665A)) 
    \x_13_reg_1704[3]_i_14 
       (.I0(sext_ln27_fu_408_p1[3]),
        .I1(y_5_fu_360_p2[7]),
        .I2(y_6_fu_372_p2[7]),
        .I3(B0),
        .I4(y_5_fu_360_p2[16]),
        .I5(y_6_fu_372_p2[16]),
        .O(\x_13_reg_1704[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h99A566A5995A665A)) 
    \x_13_reg_1704[3]_i_15 
       (.I0(sext_ln27_fu_408_p1[2]),
        .I1(y_5_fu_360_p2[6]),
        .I2(y_6_fu_372_p2[6]),
        .I3(B0),
        .I4(y_5_fu_360_p2[16]),
        .I5(y_6_fu_372_p2[16]),
        .O(\x_13_reg_1704[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h99A566A5995A665A)) 
    \x_13_reg_1704[3]_i_16 
       (.I0(sext_ln27_fu_408_p1[1]),
        .I1(y_5_fu_360_p2[5]),
        .I2(y_6_fu_372_p2[5]),
        .I3(B0),
        .I4(y_5_fu_360_p2[16]),
        .I5(y_6_fu_372_p2[16]),
        .O(\x_13_reg_1704[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h99A566A5995A665A)) 
    \x_13_reg_1704[3]_i_17 
       (.I0(sext_ln27_fu_408_p1[0]),
        .I1(y_5_fu_360_p2[4]),
        .I2(y_6_fu_372_p2[4]),
        .I3(B0),
        .I4(y_5_fu_360_p2[16]),
        .I5(y_6_fu_372_p2[16]),
        .O(\x_13_reg_1704[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h99A566A5995A665A)) 
    \x_13_reg_1704[3]_i_18 
       (.I0(\x_13_reg_1704_reg[3]_i_11_n_14 ),
        .I1(y_5_fu_360_p2[3]),
        .I2(y_6_fu_372_p2[3]),
        .I3(B0),
        .I4(y_5_fu_360_p2[16]),
        .I5(y_6_fu_372_p2[16]),
        .O(\x_13_reg_1704[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h99A566A5995A665A)) 
    \x_13_reg_1704[3]_i_19 
       (.I0(\x_13_reg_1704_reg[3]_i_11_n_15 ),
        .I1(y_5_fu_360_p2[2]),
        .I2(y_6_fu_372_p2[2]),
        .I3(B0),
        .I4(y_5_fu_360_p2[16]),
        .I5(y_6_fu_372_p2[16]),
        .O(\x_13_reg_1704[3]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_22 
       (.I0(x_2_fu_286_p2[7]),
        .I1(y_48_fu_280_p2[7]),
        .I2(p_0_in),
        .O(p_0_in0_out[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_23 
       (.I0(x_2_fu_286_p2[6]),
        .I1(y_48_fu_280_p2[6]),
        .I2(p_0_in),
        .O(p_0_in0_out[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_24 
       (.I0(x_2_fu_286_p2[5]),
        .I1(y_48_fu_280_p2[5]),
        .I2(p_0_in),
        .O(p_0_in0_out[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_25 
       (.I0(x_2_fu_286_p2[4]),
        .I1(y_48_fu_280_p2[4]),
        .I2(p_0_in),
        .O(p_0_in0_out[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_26 
       (.I0(x_2_fu_286_p2[3]),
        .I1(y_48_fu_280_p2[3]),
        .I2(p_0_in),
        .O(p_0_in0_out[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_27 
       (.I0(x_2_fu_286_p2[2]),
        .I1(y_48_fu_280_p2[2]),
        .I2(p_0_in),
        .O(p_0_in0_out[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_28 
       (.I0(x_2_fu_286_p2[1]),
        .I1(y_48_fu_280_p2[1]),
        .I2(p_0_in),
        .O(p_0_in0_out[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_29 
       (.I0(x_2_fu_286_p2[0]),
        .I1(y_48_fu_280_p2[0]),
        .I2(p_0_in),
        .O(p_0_in0_out[0]));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \x_13_reg_1704[3]_i_3 
       (.I0(\x_13_reg_1704_reg[3]_i_2_n_8 ),
        .I1(sext_ln11_2_fu_450_p1[10]),
        .I2(sext_ln11_1_fu_394_p1),
        .I3(y_9_fu_460_p2[10]),
        .I4(sext_ln11_2_fu_450_p1[16]),
        .I5(y_9_fu_460_p2__0),
        .O(\x_13_reg_1704[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \x_13_reg_1704[3]_i_30 
       (.I0(y_48_fu_280_p2[7]),
        .I1(x_2_fu_286_p2[7]),
        .I2(y_48_fu_280_p2[8]),
        .I3(y_3_fu_292_p2[8]),
        .I4(p_0_in),
        .I5(B0),
        .O(\x_13_reg_1704[3]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \x_13_reg_1704[3]_i_31 
       (.I0(y_48_fu_280_p2[6]),
        .I1(x_2_fu_286_p2[6]),
        .I2(y_48_fu_280_p2[7]),
        .I3(y_3_fu_292_p2[7]),
        .I4(p_0_in),
        .I5(B0),
        .O(\x_13_reg_1704[3]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \x_13_reg_1704[3]_i_32 
       (.I0(y_48_fu_280_p2[5]),
        .I1(x_2_fu_286_p2[5]),
        .I2(y_48_fu_280_p2[6]),
        .I3(y_3_fu_292_p2[6]),
        .I4(p_0_in),
        .I5(B0),
        .O(\x_13_reg_1704[3]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \x_13_reg_1704[3]_i_33 
       (.I0(y_48_fu_280_p2[4]),
        .I1(x_2_fu_286_p2[4]),
        .I2(y_48_fu_280_p2[5]),
        .I3(y_3_fu_292_p2[5]),
        .I4(p_0_in),
        .I5(B0),
        .O(\x_13_reg_1704[3]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \x_13_reg_1704[3]_i_34 
       (.I0(y_48_fu_280_p2[3]),
        .I1(x_2_fu_286_p2[3]),
        .I2(y_48_fu_280_p2[4]),
        .I3(y_3_fu_292_p2[4]),
        .I4(p_0_in),
        .I5(B0),
        .O(\x_13_reg_1704[3]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \x_13_reg_1704[3]_i_35 
       (.I0(y_48_fu_280_p2[2]),
        .I1(x_2_fu_286_p2[2]),
        .I2(y_48_fu_280_p2[3]),
        .I3(y_3_fu_292_p2[3]),
        .I4(p_0_in),
        .I5(B0),
        .O(\x_13_reg_1704[3]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \x_13_reg_1704[3]_i_36 
       (.I0(y_48_fu_280_p2[1]),
        .I1(x_2_fu_286_p2[1]),
        .I2(y_48_fu_280_p2[2]),
        .I3(y_3_fu_292_p2[2]),
        .I4(p_0_in),
        .I5(B0),
        .O(\x_13_reg_1704[3]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \x_13_reg_1704[3]_i_37 
       (.I0(y_48_fu_280_p2[0]),
        .I1(x_2_fu_286_p2[0]),
        .I2(y_48_fu_280_p2[1]),
        .I3(y_3_fu_292_p2[1]),
        .I4(p_0_in),
        .I5(B0),
        .O(\x_13_reg_1704[3]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \x_13_reg_1704[3]_i_4 
       (.I0(\x_13_reg_1704_reg[3]_i_2_n_9 ),
        .I1(sext_ln11_2_fu_450_p1[9]),
        .I2(sext_ln11_1_fu_394_p1),
        .I3(y_9_fu_460_p2[9]),
        .I4(sext_ln11_2_fu_450_p1[16]),
        .I5(y_9_fu_460_p2__0),
        .O(\x_13_reg_1704[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h53AC)) 
    \x_13_reg_1704[3]_i_40 
       (.I0(y_5_fu_360_p2[15]),
        .I1(y_6_fu_372_p2[15]),
        .I2(B0),
        .I3(sext_ln27_fu_408_p1[15]),
        .O(\x_13_reg_1704[3]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h665A)) 
    \x_13_reg_1704[3]_i_41 
       (.I0(sext_ln27_fu_408_p1[14]),
        .I1(y_5_fu_360_p2[14]),
        .I2(y_6_fu_372_p2[14]),
        .I3(B0),
        .O(\x_13_reg_1704[3]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h665A)) 
    \x_13_reg_1704[3]_i_42 
       (.I0(sext_ln27_fu_408_p1[13]),
        .I1(y_5_fu_360_p2[13]),
        .I2(y_6_fu_372_p2[13]),
        .I3(B0),
        .O(\x_13_reg_1704[3]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h665A)) 
    \x_13_reg_1704[3]_i_43 
       (.I0(sext_ln27_fu_408_p1[12]),
        .I1(y_5_fu_360_p2[12]),
        .I2(y_6_fu_372_p2[12]),
        .I3(B0),
        .O(\x_13_reg_1704[3]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h665A)) 
    \x_13_reg_1704[3]_i_44 
       (.I0(sext_ln27_fu_408_p1[11]),
        .I1(y_5_fu_360_p2[11]),
        .I2(y_6_fu_372_p2[11]),
        .I3(B0),
        .O(\x_13_reg_1704[3]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h665A)) 
    \x_13_reg_1704[3]_i_45 
       (.I0(sext_ln27_fu_408_p1[10]),
        .I1(y_5_fu_360_p2[10]),
        .I2(y_6_fu_372_p2[10]),
        .I3(B0),
        .O(\x_13_reg_1704[3]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h665A)) 
    \x_13_reg_1704[3]_i_46 
       (.I0(sext_ln27_fu_408_p1[9]),
        .I1(y_5_fu_360_p2[9]),
        .I2(y_6_fu_372_p2[9]),
        .I3(B0),
        .O(\x_13_reg_1704[3]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h665A)) 
    \x_13_reg_1704[3]_i_47 
       (.I0(sext_ln27_fu_408_p1[8]),
        .I1(y_5_fu_360_p2[8]),
        .I2(y_6_fu_372_p2[8]),
        .I3(B0),
        .O(\x_13_reg_1704[3]_i_47_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_13_reg_1704[3]_i_48 
       (.I0(sext_ln27_fu_408_p1[15]),
        .O(\x_13_reg_1704[3]_i_48_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_49 
       (.I0(y_5_fu_360_p2[14]),
        .I1(y_6_fu_372_p2[14]),
        .I2(B0),
        .O(sext_ln11_1_fu_394_p1__0[14]));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \x_13_reg_1704[3]_i_5 
       (.I0(\x_13_reg_1704_reg[3]_i_2_n_10 ),
        .I1(sext_ln11_2_fu_450_p1[8]),
        .I2(sext_ln11_1_fu_394_p1),
        .I3(y_9_fu_460_p2[8]),
        .I4(sext_ln11_2_fu_450_p1[16]),
        .I5(y_9_fu_460_p2__0),
        .O(\x_13_reg_1704[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_50 
       (.I0(y_5_fu_360_p2[13]),
        .I1(y_6_fu_372_p2[13]),
        .I2(B0),
        .O(sext_ln11_1_fu_394_p1__0[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_51 
       (.I0(y_5_fu_360_p2[12]),
        .I1(y_6_fu_372_p2[12]),
        .I2(B0),
        .O(sext_ln11_1_fu_394_p1__0[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_52 
       (.I0(y_5_fu_360_p2[11]),
        .I1(y_6_fu_372_p2[11]),
        .I2(B0),
        .O(sext_ln11_1_fu_394_p1__0[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_53 
       (.I0(y_5_fu_360_p2[10]),
        .I1(y_6_fu_372_p2[10]),
        .I2(B0),
        .O(sext_ln11_1_fu_394_p1__0[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_54 
       (.I0(y_5_fu_360_p2[9]),
        .I1(y_6_fu_372_p2[9]),
        .I2(B0),
        .O(sext_ln11_1_fu_394_p1__0[9]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_55 
       (.I0(y_5_fu_360_p2[8]),
        .I1(y_6_fu_372_p2[8]),
        .I2(B0),
        .O(sext_ln11_1_fu_394_p1__0[8]));
  LUT4 #(
    .INIT(16'hA965)) 
    \x_13_reg_1704[3]_i_56 
       (.I0(sext_ln27_fu_408_p1[15]),
        .I1(B0),
        .I2(y_6_fu_372_p2[15]),
        .I3(y_5_fu_360_p2[15]),
        .O(\x_13_reg_1704[3]_i_56_n_0 ));
  LUT4 #(
    .INIT(16'hE41B)) 
    \x_13_reg_1704[3]_i_57 
       (.I0(B0),
        .I1(y_6_fu_372_p2[14]),
        .I2(y_5_fu_360_p2[14]),
        .I3(sext_ln27_fu_408_p1[14]),
        .O(\x_13_reg_1704[3]_i_57_n_0 ));
  LUT4 #(
    .INIT(16'hE41B)) 
    \x_13_reg_1704[3]_i_58 
       (.I0(B0),
        .I1(y_6_fu_372_p2[13]),
        .I2(y_5_fu_360_p2[13]),
        .I3(sext_ln27_fu_408_p1[13]),
        .O(\x_13_reg_1704[3]_i_58_n_0 ));
  LUT4 #(
    .INIT(16'hE41B)) 
    \x_13_reg_1704[3]_i_59 
       (.I0(B0),
        .I1(y_6_fu_372_p2[12]),
        .I2(y_5_fu_360_p2[12]),
        .I3(sext_ln27_fu_408_p1[12]),
        .O(\x_13_reg_1704[3]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \x_13_reg_1704[3]_i_6 
       (.I0(\x_13_reg_1704_reg[3]_i_2_n_11 ),
        .I1(sext_ln11_2_fu_450_p1[7]),
        .I2(sext_ln11_1_fu_394_p1),
        .I3(y_9_fu_460_p2[7]),
        .I4(sext_ln11_2_fu_450_p1[16]),
        .I5(y_9_fu_460_p2__0),
        .O(\x_13_reg_1704[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE41B)) 
    \x_13_reg_1704[3]_i_60 
       (.I0(B0),
        .I1(y_6_fu_372_p2[11]),
        .I2(y_5_fu_360_p2[11]),
        .I3(sext_ln27_fu_408_p1[11]),
        .O(\x_13_reg_1704[3]_i_60_n_0 ));
  LUT4 #(
    .INIT(16'hE41B)) 
    \x_13_reg_1704[3]_i_61 
       (.I0(B0),
        .I1(y_6_fu_372_p2[10]),
        .I2(y_5_fu_360_p2[10]),
        .I3(sext_ln27_fu_408_p1[10]),
        .O(\x_13_reg_1704[3]_i_61_n_0 ));
  LUT4 #(
    .INIT(16'hE41B)) 
    \x_13_reg_1704[3]_i_62 
       (.I0(B0),
        .I1(y_6_fu_372_p2[9]),
        .I2(y_5_fu_360_p2[9]),
        .I3(sext_ln27_fu_408_p1[9]),
        .O(\x_13_reg_1704[3]_i_62_n_0 ));
  LUT4 #(
    .INIT(16'hE41B)) 
    \x_13_reg_1704[3]_i_63 
       (.I0(B0),
        .I1(y_6_fu_372_p2[8]),
        .I2(y_5_fu_360_p2[8]),
        .I3(sext_ln27_fu_408_p1[8]),
        .O(\x_13_reg_1704[3]_i_63_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_65 
       (.I0(y_48_fu_280_p2[7]),
        .I1(y_3_fu_292_p2[7]),
        .I2(p_0_in),
        .O(\x_13_reg_1704[3]_i_65_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_66 
       (.I0(y_48_fu_280_p2[6]),
        .I1(y_3_fu_292_p2[6]),
        .I2(p_0_in),
        .O(\x_13_reg_1704[3]_i_66_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_67 
       (.I0(y_48_fu_280_p2[5]),
        .I1(y_3_fu_292_p2[5]),
        .I2(p_0_in),
        .O(\x_13_reg_1704[3]_i_67_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_68 
       (.I0(y_48_fu_280_p2[4]),
        .I1(y_3_fu_292_p2[4]),
        .I2(p_0_in),
        .O(\x_13_reg_1704[3]_i_68_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_69 
       (.I0(y_48_fu_280_p2[3]),
        .I1(y_3_fu_292_p2[3]),
        .I2(p_0_in),
        .O(\x_13_reg_1704[3]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \x_13_reg_1704[3]_i_7 
       (.I0(\x_13_reg_1704_reg[3]_i_2_n_12 ),
        .I1(sext_ln11_2_fu_450_p1[6]),
        .I2(sext_ln11_1_fu_394_p1),
        .I3(y_9_fu_460_p2[6]),
        .I4(sext_ln11_2_fu_450_p1[16]),
        .I5(y_9_fu_460_p2__0),
        .O(\x_13_reg_1704[3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_70 
       (.I0(y_48_fu_280_p2[2]),
        .I1(y_3_fu_292_p2[2]),
        .I2(p_0_in),
        .O(\x_13_reg_1704[3]_i_70_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_71 
       (.I0(y_48_fu_280_p2[1]),
        .I1(y_3_fu_292_p2[1]),
        .I2(p_0_in),
        .O(\x_13_reg_1704[3]_i_71_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_72 
       (.I0(y_48_fu_280_p2[0]),
        .I1(y_3_fu_292_p2[0]),
        .I2(p_0_in),
        .O(\x_13_reg_1704[3]_i_72_n_0 ));
  LUT5 #(
    .INIT(32'h53A35CAC)) 
    \x_13_reg_1704[3]_i_73 
       (.I0(x_2_fu_286_p2[8]),
        .I1(y_48_fu_280_p2[8]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[7]),
        .I4(y_3_fu_292_p2[7]),
        .O(\x_13_reg_1704[3]_i_73_n_0 ));
  LUT5 #(
    .INIT(32'h53A35CAC)) 
    \x_13_reg_1704[3]_i_74 
       (.I0(x_2_fu_286_p2[7]),
        .I1(y_48_fu_280_p2[7]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[6]),
        .I4(y_3_fu_292_p2[6]),
        .O(\x_13_reg_1704[3]_i_74_n_0 ));
  LUT5 #(
    .INIT(32'h53A35CAC)) 
    \x_13_reg_1704[3]_i_75 
       (.I0(x_2_fu_286_p2[6]),
        .I1(y_48_fu_280_p2[6]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[5]),
        .I4(y_3_fu_292_p2[5]),
        .O(\x_13_reg_1704[3]_i_75_n_0 ));
  LUT5 #(
    .INIT(32'h53A35CAC)) 
    \x_13_reg_1704[3]_i_76 
       (.I0(x_2_fu_286_p2[5]),
        .I1(y_48_fu_280_p2[5]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[4]),
        .I4(y_3_fu_292_p2[4]),
        .O(\x_13_reg_1704[3]_i_76_n_0 ));
  LUT5 #(
    .INIT(32'h53A35CAC)) 
    \x_13_reg_1704[3]_i_77 
       (.I0(x_2_fu_286_p2[4]),
        .I1(y_48_fu_280_p2[4]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[3]),
        .I4(y_3_fu_292_p2[3]),
        .O(\x_13_reg_1704[3]_i_77_n_0 ));
  LUT5 #(
    .INIT(32'h53A35CAC)) 
    \x_13_reg_1704[3]_i_78 
       (.I0(x_2_fu_286_p2[3]),
        .I1(y_48_fu_280_p2[3]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[2]),
        .I4(y_3_fu_292_p2[2]),
        .O(\x_13_reg_1704[3]_i_78_n_0 ));
  LUT5 #(
    .INIT(32'h53A35CAC)) 
    \x_13_reg_1704[3]_i_79 
       (.I0(x_2_fu_286_p2[2]),
        .I1(y_48_fu_280_p2[2]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[1]),
        .I4(y_3_fu_292_p2[1]),
        .O(\x_13_reg_1704[3]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \x_13_reg_1704[3]_i_8 
       (.I0(\x_13_reg_1704_reg[3]_i_2_n_13 ),
        .I1(sext_ln11_2_fu_450_p1[5]),
        .I2(sext_ln11_1_fu_394_p1),
        .I3(y_9_fu_460_p2[5]),
        .I4(sext_ln11_2_fu_450_p1[16]),
        .I5(y_9_fu_460_p2__0),
        .O(\x_13_reg_1704[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h53A35CAC)) 
    \x_13_reg_1704[3]_i_80 
       (.I0(x_2_fu_286_p2[1]),
        .I1(y_48_fu_280_p2[1]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[0]),
        .I4(y_3_fu_292_p2[0]),
        .O(\x_13_reg_1704[3]_i_80_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_81 
       (.I0(y_48_fu_280_p2[7]),
        .I1(y_3_fu_292_p2[7]),
        .I2(p_0_in),
        .O(\x_13_reg_1704[3]_i_81_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_82 
       (.I0(y_48_fu_280_p2[6]),
        .I1(y_3_fu_292_p2[6]),
        .I2(p_0_in),
        .O(\x_13_reg_1704[3]_i_82_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_83 
       (.I0(y_48_fu_280_p2[5]),
        .I1(y_3_fu_292_p2[5]),
        .I2(p_0_in),
        .O(\x_13_reg_1704[3]_i_83_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_84 
       (.I0(y_48_fu_280_p2[4]),
        .I1(y_3_fu_292_p2[4]),
        .I2(p_0_in),
        .O(\x_13_reg_1704[3]_i_84_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_85 
       (.I0(y_48_fu_280_p2[3]),
        .I1(y_3_fu_292_p2[3]),
        .I2(p_0_in),
        .O(\x_13_reg_1704[3]_i_85_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_86 
       (.I0(y_48_fu_280_p2[2]),
        .I1(y_3_fu_292_p2[2]),
        .I2(p_0_in),
        .O(\x_13_reg_1704[3]_i_86_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_87 
       (.I0(y_48_fu_280_p2[1]),
        .I1(y_3_fu_292_p2[1]),
        .I2(p_0_in),
        .O(\x_13_reg_1704[3]_i_87_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_13_reg_1704[3]_i_88 
       (.I0(y_48_fu_280_p2[0]),
        .I1(y_3_fu_292_p2[0]),
        .I2(p_0_in),
        .O(\x_13_reg_1704[3]_i_88_n_0 ));
  LUT5 #(
    .INIT(32'hCAC53A35)) 
    \x_13_reg_1704[3]_i_89 
       (.I0(y_3_fu_292_p2[7]),
        .I1(y_48_fu_280_p2[7]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[8]),
        .I4(x_2_fu_286_p2[8]),
        .O(\x_13_reg_1704[3]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \x_13_reg_1704[3]_i_9 
       (.I0(\x_13_reg_1704_reg[3]_i_2_n_14 ),
        .I1(sext_ln11_2_fu_450_p1[4]),
        .I2(sext_ln11_1_fu_394_p1),
        .I3(y_9_fu_460_p2[4]),
        .I4(sext_ln11_2_fu_450_p1[16]),
        .I5(y_9_fu_460_p2__0),
        .O(\x_13_reg_1704[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hCAC53A35)) 
    \x_13_reg_1704[3]_i_90 
       (.I0(y_3_fu_292_p2[6]),
        .I1(y_48_fu_280_p2[6]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[7]),
        .I4(x_2_fu_286_p2[7]),
        .O(\x_13_reg_1704[3]_i_90_n_0 ));
  LUT5 #(
    .INIT(32'hCAC53A35)) 
    \x_13_reg_1704[3]_i_91 
       (.I0(y_3_fu_292_p2[5]),
        .I1(y_48_fu_280_p2[5]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[6]),
        .I4(x_2_fu_286_p2[6]),
        .O(\x_13_reg_1704[3]_i_91_n_0 ));
  LUT5 #(
    .INIT(32'hCAC53A35)) 
    \x_13_reg_1704[3]_i_92 
       (.I0(y_3_fu_292_p2[4]),
        .I1(y_48_fu_280_p2[4]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[5]),
        .I4(x_2_fu_286_p2[5]),
        .O(\x_13_reg_1704[3]_i_92_n_0 ));
  LUT5 #(
    .INIT(32'hCAC53A35)) 
    \x_13_reg_1704[3]_i_93 
       (.I0(y_3_fu_292_p2[3]),
        .I1(y_48_fu_280_p2[3]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[4]),
        .I4(x_2_fu_286_p2[4]),
        .O(\x_13_reg_1704[3]_i_93_n_0 ));
  LUT5 #(
    .INIT(32'hCAC53A35)) 
    \x_13_reg_1704[3]_i_94 
       (.I0(y_3_fu_292_p2[2]),
        .I1(y_48_fu_280_p2[2]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[3]),
        .I4(x_2_fu_286_p2[3]),
        .O(\x_13_reg_1704[3]_i_94_n_0 ));
  LUT5 #(
    .INIT(32'hCAC53A35)) 
    \x_13_reg_1704[3]_i_95 
       (.I0(y_3_fu_292_p2[1]),
        .I1(y_48_fu_280_p2[1]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[2]),
        .I4(x_2_fu_286_p2[2]),
        .O(\x_13_reg_1704[3]_i_95_n_0 ));
  LUT5 #(
    .INIT(32'hCAC53A35)) 
    \x_13_reg_1704[3]_i_96 
       (.I0(y_3_fu_292_p2[0]),
        .I1(y_48_fu_280_p2[0]),
        .I2(p_0_in),
        .I3(y_48_fu_280_p2[1]),
        .I4(x_2_fu_286_p2[1]),
        .O(\x_13_reg_1704[3]_i_96_n_0 ));
  LUT4 #(
    .INIT(16'h4FB0)) 
    \x_13_reg_1704[3]_i_97 
       (.I0(x_in[6]),
        .I1(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_76_n_0 ),
        .I2(x_in[15]),
        .I3(x_in[7]),
        .O(zext_ln10_fu_252_p1[7]));
  LUT3 #(
    .INIT(8'hB4)) 
    \x_13_reg_1704[3]_i_98 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_76_n_0 ),
        .I1(x_in[15]),
        .I2(x_in[6]),
        .O(\x_13_reg_1704[3]_i_98_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \x_13_reg_1704[3]_i_99 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_77_n_0 ),
        .I1(x_in[15]),
        .I2(x_in[5]),
        .O(\x_13_reg_1704[3]_i_99_n_0 ));
  FDRE \x_13_reg_1704_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_13_reg_1704_reg[3]_i_1_n_15 ),
        .Q(x_13_reg_1704[0]),
        .R(1'b0));
  FDRE \x_13_reg_1704_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_13_reg_1704_reg[3]_i_1_n_14 ),
        .Q(x_13_reg_1704[1]),
        .R(1'b0));
  FDRE \x_13_reg_1704_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_13_reg_1704_reg[3]_i_1_n_13 ),
        .Q(x_13_reg_1704[2]),
        .R(1'b0));
  FDRE \x_13_reg_1704_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_13_reg_1704_reg[3]_i_1_n_12 ),
        .Q(x_13_reg_1704[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_13_reg_1704_reg[3]_i_1 
       (.CI(y_10_fu_474_p3),
        .CI_TOP(1'b0),
        .CO({\x_13_reg_1704_reg[3]_i_1_n_0 ,\x_13_reg_1704_reg[3]_i_1_n_1 ,\x_13_reg_1704_reg[3]_i_1_n_2 ,\x_13_reg_1704_reg[3]_i_1_n_3 ,\x_13_reg_1704_reg[3]_i_1_n_4 ,\x_13_reg_1704_reg[3]_i_1_n_5 ,\x_13_reg_1704_reg[3]_i_1_n_6 ,\x_13_reg_1704_reg[3]_i_1_n_7 }),
        .DI({\x_13_reg_1704_reg[3]_i_2_n_8 ,\x_13_reg_1704_reg[3]_i_2_n_9 ,\x_13_reg_1704_reg[3]_i_2_n_10 ,\x_13_reg_1704_reg[3]_i_2_n_11 ,\x_13_reg_1704_reg[3]_i_2_n_12 ,\x_13_reg_1704_reg[3]_i_2_n_13 ,\x_13_reg_1704_reg[3]_i_2_n_14 ,\x_13_reg_1704_reg[3]_i_2_n_15 }),
        .O({\x_13_reg_1704_reg[3]_i_1_n_8 ,\x_13_reg_1704_reg[3]_i_1_n_9 ,\x_13_reg_1704_reg[3]_i_1_n_10 ,\x_13_reg_1704_reg[3]_i_1_n_11 ,\x_13_reg_1704_reg[3]_i_1_n_12 ,\x_13_reg_1704_reg[3]_i_1_n_13 ,\x_13_reg_1704_reg[3]_i_1_n_14 ,\x_13_reg_1704_reg[3]_i_1_n_15 }),
        .S({\x_13_reg_1704[3]_i_3_n_0 ,\x_13_reg_1704[3]_i_4_n_0 ,\x_13_reg_1704[3]_i_5_n_0 ,\x_13_reg_1704[3]_i_6_n_0 ,\x_13_reg_1704[3]_i_7_n_0 ,\x_13_reg_1704[3]_i_8_n_0 ,\x_13_reg_1704[3]_i_9_n_0 ,\x_13_reg_1704[3]_i_10_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_13_reg_1704_reg[3]_i_11 
       (.CI(B0),
        .CI_TOP(1'b0),
        .CO({\x_13_reg_1704_reg[3]_i_11_n_0 ,\x_13_reg_1704_reg[3]_i_11_n_1 ,\x_13_reg_1704_reg[3]_i_11_n_2 ,\x_13_reg_1704_reg[3]_i_11_n_3 ,\x_13_reg_1704_reg[3]_i_11_n_4 ,\x_13_reg_1704_reg[3]_i_11_n_5 ,\x_13_reg_1704_reg[3]_i_11_n_6 ,\x_13_reg_1704_reg[3]_i_11_n_7 }),
        .DI(p_0_in0_out[7:0]),
        .O({sext_ln27_fu_408_p1[5:0],\x_13_reg_1704_reg[3]_i_11_n_14 ,\x_13_reg_1704_reg[3]_i_11_n_15 }),
        .S({\x_13_reg_1704[3]_i_30_n_0 ,\x_13_reg_1704[3]_i_31_n_0 ,\x_13_reg_1704[3]_i_32_n_0 ,\x_13_reg_1704[3]_i_33_n_0 ,\x_13_reg_1704[3]_i_34_n_0 ,\x_13_reg_1704[3]_i_35_n_0 ,\x_13_reg_1704[3]_i_36_n_0 ,\x_13_reg_1704[3]_i_37_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_13_reg_1704_reg[3]_i_2 
       (.CI(sext_ln11_1_fu_394_p1),
        .CI_TOP(1'b0),
        .CO({\x_13_reg_1704_reg[3]_i_2_n_0 ,\x_13_reg_1704_reg[3]_i_2_n_1 ,\x_13_reg_1704_reg[3]_i_2_n_2 ,\x_13_reg_1704_reg[3]_i_2_n_3 ,\x_13_reg_1704_reg[3]_i_2_n_4 ,\x_13_reg_1704_reg[3]_i_2_n_5 ,\x_13_reg_1704_reg[3]_i_2_n_6 ,\x_13_reg_1704_reg[3]_i_2_n_7 }),
        .DI({sext_ln27_fu_408_p1[5:0],\x_13_reg_1704_reg[3]_i_11_n_14 ,\x_13_reg_1704_reg[3]_i_11_n_15 }),
        .O({\x_13_reg_1704_reg[3]_i_2_n_8 ,\x_13_reg_1704_reg[3]_i_2_n_9 ,\x_13_reg_1704_reg[3]_i_2_n_10 ,\x_13_reg_1704_reg[3]_i_2_n_11 ,\x_13_reg_1704_reg[3]_i_2_n_12 ,\x_13_reg_1704_reg[3]_i_2_n_13 ,\x_13_reg_1704_reg[3]_i_2_n_14 ,\x_13_reg_1704_reg[3]_i_2_n_15 }),
        .S({\x_13_reg_1704[3]_i_12_n_0 ,\x_13_reg_1704[3]_i_13_n_0 ,\x_13_reg_1704[3]_i_14_n_0 ,\x_13_reg_1704[3]_i_15_n_0 ,\x_13_reg_1704[3]_i_16_n_0 ,\x_13_reg_1704[3]_i_17_n_0 ,\x_13_reg_1704[3]_i_18_n_0 ,\x_13_reg_1704[3]_i_19_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_13_reg_1704_reg[3]_i_20 
       (.CI(\y_13_reg_1710_reg[3]_i_19_n_0 ),
        .CI_TOP(1'b0),
        .CO({\x_13_reg_1704_reg[3]_i_20_n_0 ,\x_13_reg_1704_reg[3]_i_20_n_1 ,\x_13_reg_1704_reg[3]_i_20_n_2 ,\x_13_reg_1704_reg[3]_i_20_n_3 ,\x_13_reg_1704_reg[3]_i_20_n_4 ,\x_13_reg_1704_reg[3]_i_20_n_5 ,\x_13_reg_1704_reg[3]_i_20_n_6 ,\x_13_reg_1704_reg[3]_i_20_n_7 }),
        .DI(sext_ln27_fu_408_p1[15:8]),
        .O(sext_ln11_2_fu_450_p1[15:8]),
        .S({\x_13_reg_1704[3]_i_40_n_0 ,\x_13_reg_1704[3]_i_41_n_0 ,\x_13_reg_1704[3]_i_42_n_0 ,\x_13_reg_1704[3]_i_43_n_0 ,\x_13_reg_1704[3]_i_44_n_0 ,\x_13_reg_1704[3]_i_45_n_0 ,\x_13_reg_1704[3]_i_46_n_0 ,\x_13_reg_1704[3]_i_47_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_13_reg_1704_reg[3]_i_21 
       (.CI(\y_13_reg_1710_reg[3]_i_20_n_0 ),
        .CI_TOP(1'b0),
        .CO({\x_13_reg_1704_reg[3]_i_21_n_0 ,\x_13_reg_1704_reg[3]_i_21_n_1 ,\x_13_reg_1704_reg[3]_i_21_n_2 ,\x_13_reg_1704_reg[3]_i_21_n_3 ,\x_13_reg_1704_reg[3]_i_21_n_4 ,\x_13_reg_1704_reg[3]_i_21_n_5 ,\x_13_reg_1704_reg[3]_i_21_n_6 ,\x_13_reg_1704_reg[3]_i_21_n_7 }),
        .DI({\x_13_reg_1704[3]_i_48_n_0 ,sext_ln11_1_fu_394_p1__0[14:8]}),
        .O(y_9_fu_460_p2[15:8]),
        .S({\x_13_reg_1704[3]_i_56_n_0 ,\x_13_reg_1704[3]_i_57_n_0 ,\x_13_reg_1704[3]_i_58_n_0 ,\x_13_reg_1704[3]_i_59_n_0 ,\x_13_reg_1704[3]_i_60_n_0 ,\x_13_reg_1704[3]_i_61_n_0 ,\x_13_reg_1704[3]_i_62_n_0 ,\x_13_reg_1704[3]_i_63_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_13_reg_1704_reg[3]_i_38 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\x_13_reg_1704_reg[3]_i_38_n_0 ,\x_13_reg_1704_reg[3]_i_38_n_1 ,\x_13_reg_1704_reg[3]_i_38_n_2 ,\x_13_reg_1704_reg[3]_i_38_n_3 ,\x_13_reg_1704_reg[3]_i_38_n_4 ,\x_13_reg_1704_reg[3]_i_38_n_5 ,\x_13_reg_1704_reg[3]_i_38_n_6 ,\x_13_reg_1704_reg[3]_i_38_n_7 }),
        .DI({\x_13_reg_1704[3]_i_65_n_0 ,\x_13_reg_1704[3]_i_66_n_0 ,\x_13_reg_1704[3]_i_67_n_0 ,\x_13_reg_1704[3]_i_68_n_0 ,\x_13_reg_1704[3]_i_69_n_0 ,\x_13_reg_1704[3]_i_70_n_0 ,\x_13_reg_1704[3]_i_71_n_0 ,\x_13_reg_1704[3]_i_72_n_0 }),
        .O(y_5_fu_360_p2[7:0]),
        .S({\x_13_reg_1704[3]_i_73_n_0 ,\x_13_reg_1704[3]_i_74_n_0 ,\x_13_reg_1704[3]_i_75_n_0 ,\x_13_reg_1704[3]_i_76_n_0 ,\x_13_reg_1704[3]_i_77_n_0 ,\x_13_reg_1704[3]_i_78_n_0 ,\x_13_reg_1704[3]_i_79_n_0 ,\x_13_reg_1704[3]_i_80_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_13_reg_1704_reg[3]_i_39 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\x_13_reg_1704_reg[3]_i_39_n_0 ,\x_13_reg_1704_reg[3]_i_39_n_1 ,\x_13_reg_1704_reg[3]_i_39_n_2 ,\x_13_reg_1704_reg[3]_i_39_n_3 ,\x_13_reg_1704_reg[3]_i_39_n_4 ,\x_13_reg_1704_reg[3]_i_39_n_5 ,\x_13_reg_1704_reg[3]_i_39_n_6 ,\x_13_reg_1704_reg[3]_i_39_n_7 }),
        .DI({\x_13_reg_1704[3]_i_81_n_0 ,\x_13_reg_1704[3]_i_82_n_0 ,\x_13_reg_1704[3]_i_83_n_0 ,\x_13_reg_1704[3]_i_84_n_0 ,\x_13_reg_1704[3]_i_85_n_0 ,\x_13_reg_1704[3]_i_86_n_0 ,\x_13_reg_1704[3]_i_87_n_0 ,\x_13_reg_1704[3]_i_88_n_0 }),
        .O(y_6_fu_372_p2[7:0]),
        .S({\x_13_reg_1704[3]_i_89_n_0 ,\x_13_reg_1704[3]_i_90_n_0 ,\x_13_reg_1704[3]_i_91_n_0 ,\x_13_reg_1704[3]_i_92_n_0 ,\x_13_reg_1704[3]_i_93_n_0 ,\x_13_reg_1704[3]_i_94_n_0 ,\x_13_reg_1704[3]_i_95_n_0 ,\x_13_reg_1704[3]_i_96_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \x_13_reg_1704_reg[3]_i_64 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\x_13_reg_1704_reg[3]_i_64_n_0 ,\x_13_reg_1704_reg[3]_i_64_n_1 ,\x_13_reg_1704_reg[3]_i_64_n_2 ,\x_13_reg_1704_reg[3]_i_64_n_3 ,\x_13_reg_1704_reg[3]_i_64_n_4 ,\x_13_reg_1704_reg[3]_i_64_n_5 ,\x_13_reg_1704_reg[3]_i_64_n_6 ,\x_13_reg_1704_reg[3]_i_64_n_7 }),
        .DI({zext_ln10_fu_252_p1[7],\x_13_reg_1704[3]_i_98_n_0 ,\x_13_reg_1704[3]_i_99_n_0 ,zext_ln10_fu_252_p1[4:1],x_in[0]}),
        .O(x_2_fu_286_p2[7:0]),
        .S({\x_13_reg_1704[3]_i_104_n_0 ,\x_13_reg_1704[3]_i_105_n_0 ,\x_13_reg_1704[3]_i_106_n_0 ,\x_13_reg_1704[3]_i_107_n_0 ,\x_13_reg_1704[3]_i_108_n_0 ,\x_13_reg_1704[3]_i_109_n_0 ,\x_13_reg_1704[3]_i_110_n_0 ,\x_13_reg_1704[3]_i_111_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \x_26_reg_1745[15]_i_2 
       (.I0(x_25_fu_861_p3[14]),
        .I1(x_25_fu_861_p3[15]),
        .O(\x_26_reg_1745[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_26_reg_1745[15]_i_3 
       (.I0(x_25_fu_861_p3[13]),
        .I1(x_25_fu_861_p3[14]),
        .O(\x_26_reg_1745[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_26_reg_1745[15]_i_4 
       (.I0(x_25_fu_861_p3[12]),
        .I1(x_25_fu_861_p3[13]),
        .O(\x_26_reg_1745[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_26_reg_1745[15]_i_5 
       (.I0(x_25_fu_861_p3[11]),
        .I1(x_25_fu_861_p3[12]),
        .O(\x_26_reg_1745[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_26_reg_1745[15]_i_6 
       (.I0(x_25_fu_861_p3[10]),
        .I1(x_25_fu_861_p3[11]),
        .O(\x_26_reg_1745[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_26_reg_1745[15]_i_7 
       (.I0(x_25_fu_861_p3[10]),
        .I1(y_25_fu_869_p3),
        .O(\x_26_reg_1745[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_26_reg_1745[15]_i_8 
       (.I0(x_25_fu_861_p3[9]),
        .I1(y_25_fu_869_p3),
        .O(\x_26_reg_1745[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_26_reg_1745[15]_i_9 
       (.I0(y_25_fu_869_p3__0[16]),
        .I1(x_25_fu_861_p3[8]),
        .O(\x_26_reg_1745[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_26_reg_1745[17]_i_2 
       (.I0(x_25_fu_861_p3[16]),
        .I1(x_25_fu_861_p3[17]),
        .O(\x_26_reg_1745[17]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_26_reg_1745[17]_i_3 
       (.I0(x_25_fu_861_p3[15]),
        .I1(x_25_fu_861_p3[16]),
        .O(\x_26_reg_1745[17]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_26_reg_1745[7]_i_2 
       (.I0(y_25_fu_869_p3__0[15]),
        .I1(x_25_fu_861_p3[7]),
        .O(\x_26_reg_1745[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_26_reg_1745[7]_i_3 
       (.I0(y_25_fu_869_p3__0[14]),
        .I1(x_25_fu_861_p3[6]),
        .O(\x_26_reg_1745[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_26_reg_1745[7]_i_4 
       (.I0(y_25_fu_869_p3__0[13]),
        .I1(x_25_fu_861_p3[5]),
        .O(\x_26_reg_1745[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_26_reg_1745[7]_i_5 
       (.I0(y_25_fu_869_p3__0[12]),
        .I1(x_25_fu_861_p3[4]),
        .O(\x_26_reg_1745[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_26_reg_1745[7]_i_6 
       (.I0(y_25_fu_869_p3__0[11]),
        .I1(x_25_fu_861_p3[3]),
        .O(\x_26_reg_1745[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_26_reg_1745[7]_i_7 
       (.I0(y_25_fu_869_p3__0[10]),
        .I1(x_25_fu_861_p3[2]),
        .O(\x_26_reg_1745[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_26_reg_1745[7]_i_8 
       (.I0(y_25_fu_869_p3__0[9]),
        .I1(x_25_fu_861_p3[1]),
        .O(\x_26_reg_1745[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_26_reg_1745[7]_i_9 
       (.I0(y_25_fu_869_p3__0[8]),
        .I1(x_25_fu_861_p3[0]),
        .O(\x_26_reg_1745[7]_i_9_n_0 ));
  FDRE \x_26_reg_1745_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_913_p2[0]),
        .Q(x_26_reg_1745[0]),
        .R(1'b0));
  FDRE \x_26_reg_1745_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_913_p2[10]),
        .Q(x_26_reg_1745[10]),
        .R(1'b0));
  FDRE \x_26_reg_1745_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_913_p2[11]),
        .Q(x_26_reg_1745[11]),
        .R(1'b0));
  FDRE \x_26_reg_1745_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_913_p2[12]),
        .Q(x_26_reg_1745[12]),
        .R(1'b0));
  FDRE \x_26_reg_1745_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_913_p2[13]),
        .Q(x_26_reg_1745[13]),
        .R(1'b0));
  FDRE \x_26_reg_1745_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_913_p2[14]),
        .Q(x_26_reg_1745[14]),
        .R(1'b0));
  FDRE \x_26_reg_1745_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_913_p2[15]),
        .Q(x_26_reg_1745[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_26_reg_1745_reg[15]_i_1 
       (.CI(\x_26_reg_1745_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\x_26_reg_1745_reg[15]_i_1_n_0 ,\x_26_reg_1745_reg[15]_i_1_n_1 ,\x_26_reg_1745_reg[15]_i_1_n_2 ,\x_26_reg_1745_reg[15]_i_1_n_3 ,\x_26_reg_1745_reg[15]_i_1_n_4 ,\x_26_reg_1745_reg[15]_i_1_n_5 ,\x_26_reg_1745_reg[15]_i_1_n_6 ,\x_26_reg_1745_reg[15]_i_1_n_7 }),
        .DI({x_25_fu_861_p3[14:10],y_25_fu_869_p3,x_25_fu_861_p3[9:8]}),
        .O(x_26_fu_913_p2[15:8]),
        .S({\x_26_reg_1745[15]_i_2_n_0 ,\x_26_reg_1745[15]_i_3_n_0 ,\x_26_reg_1745[15]_i_4_n_0 ,\x_26_reg_1745[15]_i_5_n_0 ,\x_26_reg_1745[15]_i_6_n_0 ,\x_26_reg_1745[15]_i_7_n_0 ,\x_26_reg_1745[15]_i_8_n_0 ,\x_26_reg_1745[15]_i_9_n_0 }));
  FDRE \x_26_reg_1745_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_913_p2[16]),
        .Q(x_26_reg_1745[16]),
        .R(1'b0));
  FDRE \x_26_reg_1745_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_913_p2[17]),
        .Q(x_26_reg_1745[17]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_26_reg_1745_reg[17]_i_1 
       (.CI(\x_26_reg_1745_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_x_26_reg_1745_reg[17]_i_1_CO_UNCONNECTED [7:1],\x_26_reg_1745_reg[17]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x_25_fu_861_p3[15]}),
        .O({\NLW_x_26_reg_1745_reg[17]_i_1_O_UNCONNECTED [7:2],x_26_fu_913_p2[17:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\x_26_reg_1745[17]_i_2_n_0 ,\x_26_reg_1745[17]_i_3_n_0 }));
  FDRE \x_26_reg_1745_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_913_p2[1]),
        .Q(x_26_reg_1745[1]),
        .R(1'b0));
  FDRE \x_26_reg_1745_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_913_p2[2]),
        .Q(x_26_reg_1745[2]),
        .R(1'b0));
  FDRE \x_26_reg_1745_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_913_p2[3]),
        .Q(x_26_reg_1745[3]),
        .R(1'b0));
  FDRE \x_26_reg_1745_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_913_p2[4]),
        .Q(x_26_reg_1745[4]),
        .R(1'b0));
  FDRE \x_26_reg_1745_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_913_p2[5]),
        .Q(x_26_reg_1745[5]),
        .R(1'b0));
  FDRE \x_26_reg_1745_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_913_p2[6]),
        .Q(x_26_reg_1745[6]),
        .R(1'b0));
  FDRE \x_26_reg_1745_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_913_p2[7]),
        .Q(x_26_reg_1745[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_26_reg_1745_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\x_26_reg_1745_reg[7]_i_1_n_0 ,\x_26_reg_1745_reg[7]_i_1_n_1 ,\x_26_reg_1745_reg[7]_i_1_n_2 ,\x_26_reg_1745_reg[7]_i_1_n_3 ,\x_26_reg_1745_reg[7]_i_1_n_4 ,\x_26_reg_1745_reg[7]_i_1_n_5 ,\x_26_reg_1745_reg[7]_i_1_n_6 ,\x_26_reg_1745_reg[7]_i_1_n_7 }),
        .DI(x_25_fu_861_p3[7:0]),
        .O(x_26_fu_913_p2[7:0]),
        .S({\x_26_reg_1745[7]_i_2_n_0 ,\x_26_reg_1745[7]_i_3_n_0 ,\x_26_reg_1745[7]_i_4_n_0 ,\x_26_reg_1745[7]_i_5_n_0 ,\x_26_reg_1745[7]_i_6_n_0 ,\x_26_reg_1745[7]_i_7_n_0 ,\x_26_reg_1745[7]_i_8_n_0 ,\x_26_reg_1745[7]_i_9_n_0 }));
  FDRE \x_26_reg_1745_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_913_p2[8]),
        .Q(x_26_reg_1745[8]),
        .R(1'b0));
  FDRE \x_26_reg_1745_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_913_p2[9]),
        .Q(x_26_reg_1745[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \x_27_reg_1755[15]_i_10 
       (.I0(x_25_fu_861_p3[8]),
        .I1(y_25_fu_869_p3__0[16]),
        .O(\x_27_reg_1755[15]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_27_reg_1755[15]_i_2 
       (.I0(y_25_fu_869_p3),
        .O(\x_27_reg_1755[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_27_reg_1755[15]_i_3 
       (.I0(x_25_fu_861_p3[14]),
        .I1(x_25_fu_861_p3[15]),
        .O(\x_27_reg_1755[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_27_reg_1755[15]_i_4 
       (.I0(x_25_fu_861_p3[13]),
        .I1(x_25_fu_861_p3[14]),
        .O(\x_27_reg_1755[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_27_reg_1755[15]_i_5 
       (.I0(x_25_fu_861_p3[12]),
        .I1(x_25_fu_861_p3[13]),
        .O(\x_27_reg_1755[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_27_reg_1755[15]_i_6 
       (.I0(x_25_fu_861_p3[11]),
        .I1(x_25_fu_861_p3[12]),
        .O(\x_27_reg_1755[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_27_reg_1755[15]_i_7 
       (.I0(x_25_fu_861_p3[10]),
        .I1(x_25_fu_861_p3[11]),
        .O(\x_27_reg_1755[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_27_reg_1755[15]_i_8 
       (.I0(y_25_fu_869_p3),
        .I1(x_25_fu_861_p3[10]),
        .O(\x_27_reg_1755[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_27_reg_1755[15]_i_9 
       (.I0(y_25_fu_869_p3),
        .I1(x_25_fu_861_p3[9]),
        .O(\x_27_reg_1755[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[17]_i_10 
       (.I0(\x_27_reg_1755_reg[17]_i_8_n_14 ),
        .I1(\tmp_9_reg_1733_reg[0]_i_6_n_8 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\x_27_reg_1755[17]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[17]_i_11 
       (.I0(\x_27_reg_1755_reg[17]_i_8_n_15 ),
        .I1(\tmp_9_reg_1733_reg[0]_i_6_n_9 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\x_27_reg_1755[17]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[17]_i_13 
       (.I0(\x_27_reg_1755_reg[17]_i_12_n_12 ),
        .I1(\add_ln43_9_reg_1765_reg[14]_i_9_n_15 ),
        .I2(sel),
        .O(\x_27_reg_1755[17]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[17]_i_14 
       (.I0(\x_27_reg_1755_reg[17]_i_12_n_13 ),
        .I1(\add_ln43_9_reg_1765_reg[14]_i_10_n_8 ),
        .I2(sel),
        .O(\x_27_reg_1755[17]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[17]_i_15 
       (.I0(\x_27_reg_1755_reg[17]_i_12_n_14 ),
        .I1(\add_ln43_9_reg_1765_reg[14]_i_10_n_9 ),
        .I2(sel),
        .O(\x_27_reg_1755[17]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[17]_i_16 
       (.I0(\x_27_reg_1755_reg[17]_i_12_n_15 ),
        .I1(\add_ln43_9_reg_1765_reg[14]_i_10_n_10 ),
        .I2(sel),
        .O(\x_27_reg_1755[17]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[17]_i_17 
       (.I0(xs_4_reg_1716[8]),
        .I1(y_13_reg_1710[16]),
        .I2(tmp_6_reg_1726),
        .O(\x_27_reg_1755[17]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[17]_i_18 
       (.I0(xs_4_reg_1716[7]),
        .I1(y_13_reg_1710[15]),
        .I2(tmp_6_reg_1726),
        .O(\x_27_reg_1755[17]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[17]_i_19 
       (.I0(xs_4_reg_1716[6]),
        .I1(y_13_reg_1710[14]),
        .I2(tmp_6_reg_1726),
        .O(\x_27_reg_1755[17]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[17]_i_20 
       (.I0(xs_4_reg_1716[5]),
        .I1(y_13_reg_1710[13]),
        .I2(tmp_6_reg_1726),
        .O(\x_27_reg_1755[17]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[17]_i_21 
       (.I0(xs_4_reg_1716[4]),
        .I1(y_13_reg_1710[12]),
        .I2(tmp_6_reg_1726),
        .O(\x_27_reg_1755[17]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_27_reg_1755[17]_i_3 
       (.I0(x_25_fu_861_p3[16]),
        .I1(x_25_fu_861_p3[17]),
        .O(\x_27_reg_1755[17]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_27_reg_1755[17]_i_4 
       (.I0(x_25_fu_861_p3[15]),
        .I1(x_25_fu_861_p3[16]),
        .O(\x_27_reg_1755[17]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[17]_i_6 
       (.I0(x_22_fu_777_p3[9]),
        .I1(y_22_fu_785_p3__0[16]),
        .I2(y_22_fu_785_p3),
        .O(\x_27_reg_1755[17]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[17]_i_7 
       (.I0(x_22_fu_777_p3[8]),
        .I1(y_22_fu_785_p3__0[15]),
        .I2(y_22_fu_785_p3),
        .O(\x_27_reg_1755[17]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[17]_i_9 
       (.I0(\x_27_reg_1755_reg[17]_i_8_n_13 ),
        .I1(\tmp_9_reg_1733_reg[0]_i_3_n_15 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\x_27_reg_1755[17]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_27_reg_1755[7]_i_10 
       (.I0(x_25_fu_861_p3[0]),
        .I1(y_25_fu_869_p3__0[8]),
        .O(\x_27_reg_1755[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_12 
       (.I0(x_22_fu_777_p3[7]),
        .I1(y_22_fu_785_p3__0[14]),
        .I2(y_22_fu_785_p3),
        .O(\x_27_reg_1755[7]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_13 
       (.I0(x_22_fu_777_p3[6]),
        .I1(y_22_fu_785_p3__0[13]),
        .I2(y_22_fu_785_p3),
        .O(\x_27_reg_1755[7]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_14 
       (.I0(x_22_fu_777_p3[5]),
        .I1(y_22_fu_785_p3__0[12]),
        .I2(y_22_fu_785_p3),
        .O(\x_27_reg_1755[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_15 
       (.I0(x_22_fu_777_p3[4]),
        .I1(y_22_fu_785_p3__0[11]),
        .I2(y_22_fu_785_p3),
        .O(\x_27_reg_1755[7]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_16 
       (.I0(x_22_fu_777_p3[3]),
        .I1(y_22_fu_785_p3__0[10]),
        .I2(y_22_fu_785_p3),
        .O(\x_27_reg_1755[7]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_17 
       (.I0(x_22_fu_777_p3[2]),
        .I1(y_22_fu_785_p3__0[9]),
        .I2(y_22_fu_785_p3),
        .O(\x_27_reg_1755[7]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_18 
       (.I0(x_22_fu_777_p3[1]),
        .I1(y_22_fu_785_p3__0[8]),
        .I2(y_22_fu_785_p3),
        .O(\x_27_reg_1755[7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_19 
       (.I0(x_22_fu_777_p3[0]),
        .I1(y_22_fu_785_p3__0[7]),
        .I2(y_22_fu_785_p3),
        .O(\x_27_reg_1755[7]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_21 
       (.I0(\x_27_reg_1755_reg[7]_i_20_n_8 ),
        .I1(\tmp_9_reg_1733_reg[0]_i_6_n_10 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\x_27_reg_1755[7]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_22 
       (.I0(\x_27_reg_1755_reg[7]_i_20_n_9 ),
        .I1(\tmp_9_reg_1733_reg[0]_i_6_n_11 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\x_27_reg_1755[7]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_23 
       (.I0(\x_27_reg_1755_reg[7]_i_20_n_10 ),
        .I1(\tmp_9_reg_1733_reg[0]_i_6_n_12 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\x_27_reg_1755[7]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_24 
       (.I0(\x_27_reg_1755_reg[7]_i_20_n_11 ),
        .I1(\tmp_9_reg_1733_reg[0]_i_6_n_13 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\x_27_reg_1755[7]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_25 
       (.I0(\x_27_reg_1755_reg[7]_i_20_n_12 ),
        .I1(\tmp_9_reg_1733_reg[0]_i_6_n_14 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\x_27_reg_1755[7]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_26 
       (.I0(\x_27_reg_1755_reg[7]_i_20_n_13 ),
        .I1(\tmp_9_reg_1733_reg[0]_i_6_n_15 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\x_27_reg_1755[7]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_27 
       (.I0(\x_27_reg_1755_reg[7]_i_20_n_14 ),
        .I1(\y_27_reg_1760_reg[7]_i_22_n_8 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\x_27_reg_1755[7]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_28 
       (.I0(\x_27_reg_1755_reg[7]_i_20_n_15 ),
        .I1(\y_27_reg_1760_reg[7]_i_22_n_9 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\x_27_reg_1755[7]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_27_reg_1755[7]_i_3 
       (.I0(x_25_fu_861_p3[7]),
        .I1(y_25_fu_869_p3__0[15]),
        .O(\x_27_reg_1755[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_30 
       (.I0(\x_27_reg_1755_reg[7]_i_29_n_8 ),
        .I1(\add_ln43_9_reg_1765_reg[14]_i_10_n_11 ),
        .I2(sel),
        .O(\x_27_reg_1755[7]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_31 
       (.I0(\x_27_reg_1755_reg[7]_i_29_n_9 ),
        .I1(\add_ln43_9_reg_1765_reg[14]_i_10_n_12 ),
        .I2(sel),
        .O(\x_27_reg_1755[7]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_32 
       (.I0(\x_27_reg_1755_reg[7]_i_29_n_10 ),
        .I1(\add_ln43_9_reg_1765_reg[14]_i_10_n_13 ),
        .I2(sel),
        .O(\x_27_reg_1755[7]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_33 
       (.I0(\x_27_reg_1755_reg[7]_i_29_n_11 ),
        .I1(\add_ln43_9_reg_1765_reg[14]_i_10_n_14 ),
        .I2(sel),
        .O(\x_27_reg_1755[7]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_34 
       (.I0(\x_27_reg_1755_reg[7]_i_29_n_12 ),
        .I1(\add_ln43_9_reg_1765_reg[14]_i_10_n_15 ),
        .I2(sel),
        .O(\x_27_reg_1755[7]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_35 
       (.I0(\x_27_reg_1755_reg[7]_i_29_n_13 ),
        .I1(\y_27_reg_1760_reg[7]_i_32_n_8 ),
        .I2(sel),
        .O(\x_27_reg_1755[7]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_36 
       (.I0(\x_27_reg_1755_reg[7]_i_29_n_14 ),
        .I1(\y_27_reg_1760_reg[7]_i_32_n_9 ),
        .I2(sel),
        .O(\x_27_reg_1755[7]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_37 
       (.I0(\x_27_reg_1755_reg[7]_i_29_n_15 ),
        .I1(\y_27_reg_1760_reg[7]_i_32_n_10 ),
        .I2(sel),
        .O(\x_27_reg_1755[7]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_38 
       (.I0(xs_4_reg_1716[3]),
        .I1(y_13_reg_1710[11]),
        .I2(tmp_6_reg_1726),
        .O(\x_27_reg_1755[7]_i_38_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_39 
       (.I0(xs_4_reg_1716[2]),
        .I1(y_13_reg_1710[10]),
        .I2(tmp_6_reg_1726),
        .O(\x_27_reg_1755[7]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_27_reg_1755[7]_i_4 
       (.I0(x_25_fu_861_p3[6]),
        .I1(y_25_fu_869_p3__0[14]),
        .O(\x_27_reg_1755[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_40 
       (.I0(xs_4_reg_1716[1]),
        .I1(y_13_reg_1710[9]),
        .I2(tmp_6_reg_1726),
        .O(\x_27_reg_1755[7]_i_40_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_41 
       (.I0(xs_4_reg_1716[0]),
        .I1(y_13_reg_1710[8]),
        .I2(tmp_6_reg_1726),
        .O(\x_27_reg_1755[7]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_42 
       (.I0(x_13_reg_1704[3]),
        .I1(y_13_reg_1710[7]),
        .I2(tmp_6_reg_1726),
        .O(\x_27_reg_1755[7]_i_42_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_43 
       (.I0(x_13_reg_1704[2]),
        .I1(y_13_reg_1710[6]),
        .I2(tmp_6_reg_1726),
        .O(\x_27_reg_1755[7]_i_43_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_44 
       (.I0(x_13_reg_1704[1]),
        .I1(y_13_reg_1710[5]),
        .I2(tmp_6_reg_1726),
        .O(\x_27_reg_1755[7]_i_44_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_27_reg_1755[7]_i_45 
       (.I0(x_13_reg_1704[0]),
        .I1(y_13_reg_1710[4]),
        .I2(tmp_6_reg_1726),
        .O(\x_27_reg_1755[7]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_27_reg_1755[7]_i_5 
       (.I0(x_25_fu_861_p3[5]),
        .I1(y_25_fu_869_p3__0[13]),
        .O(\x_27_reg_1755[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_27_reg_1755[7]_i_6 
       (.I0(x_25_fu_861_p3[4]),
        .I1(y_25_fu_869_p3__0[12]),
        .O(\x_27_reg_1755[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_27_reg_1755[7]_i_7 
       (.I0(x_25_fu_861_p3[3]),
        .I1(y_25_fu_869_p3__0[11]),
        .O(\x_27_reg_1755[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_27_reg_1755[7]_i_8 
       (.I0(x_25_fu_861_p3[2]),
        .I1(y_25_fu_869_p3__0[10]),
        .O(\x_27_reg_1755[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_27_reg_1755[7]_i_9 
       (.I0(x_25_fu_861_p3[1]),
        .I1(y_25_fu_869_p3__0[9]),
        .O(\x_27_reg_1755[7]_i_9_n_0 ));
  FDRE \x_27_reg_1755_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_27_fu_925_p2[0]),
        .Q(x_27_reg_1755[0]),
        .R(1'b0));
  FDRE \x_27_reg_1755_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_27_fu_925_p2[10]),
        .Q(x_27_reg_1755[10]),
        .R(1'b0));
  FDRE \x_27_reg_1755_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_27_fu_925_p2[11]),
        .Q(x_27_reg_1755[11]),
        .R(1'b0));
  FDRE \x_27_reg_1755_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_27_fu_925_p2[12]),
        .Q(x_27_reg_1755[12]),
        .R(1'b0));
  FDRE \x_27_reg_1755_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_27_fu_925_p2[13]),
        .Q(x_27_reg_1755[13]),
        .R(1'b0));
  FDRE \x_27_reg_1755_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_27_fu_925_p2[14]),
        .Q(x_27_reg_1755[14]),
        .R(1'b0));
  FDRE \x_27_reg_1755_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_27_fu_925_p2[15]),
        .Q(x_27_reg_1755[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_27_reg_1755_reg[15]_i_1 
       (.CI(\x_27_reg_1755_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\x_27_reg_1755_reg[15]_i_1_n_0 ,\x_27_reg_1755_reg[15]_i_1_n_1 ,\x_27_reg_1755_reg[15]_i_1_n_2 ,\x_27_reg_1755_reg[15]_i_1_n_3 ,\x_27_reg_1755_reg[15]_i_1_n_4 ,\x_27_reg_1755_reg[15]_i_1_n_5 ,\x_27_reg_1755_reg[15]_i_1_n_6 ,\x_27_reg_1755_reg[15]_i_1_n_7 }),
        .DI({x_25_fu_861_p3[14:10],\x_27_reg_1755[15]_i_2_n_0 ,y_25_fu_869_p3,x_25_fu_861_p3[8]}),
        .O(x_27_fu_925_p2[15:8]),
        .S({\x_27_reg_1755[15]_i_3_n_0 ,\x_27_reg_1755[15]_i_4_n_0 ,\x_27_reg_1755[15]_i_5_n_0 ,\x_27_reg_1755[15]_i_6_n_0 ,\x_27_reg_1755[15]_i_7_n_0 ,\x_27_reg_1755[15]_i_8_n_0 ,\x_27_reg_1755[15]_i_9_n_0 ,\x_27_reg_1755[15]_i_10_n_0 }));
  FDRE \x_27_reg_1755_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_27_fu_925_p2[16]),
        .Q(x_27_reg_1755[16]),
        .R(1'b0));
  FDRE \x_27_reg_1755_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_27_fu_925_p2[17]),
        .Q(x_27_reg_1755[17]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_27_reg_1755_reg[17]_i_1 
       (.CI(\x_27_reg_1755_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_x_27_reg_1755_reg[17]_i_1_CO_UNCONNECTED [7:1],\x_27_reg_1755_reg[17]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x_25_fu_861_p3[15]}),
        .O({\NLW_x_27_reg_1755_reg[17]_i_1_O_UNCONNECTED [7:2],x_27_fu_925_p2[17:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\x_27_reg_1755[17]_i_3_n_0 ,\x_27_reg_1755[17]_i_4_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_27_reg_1755_reg[17]_i_12 
       (.CI(\x_27_reg_1755_reg[7]_i_29_n_0 ),
        .CI_TOP(1'b0),
        .CO({\x_27_reg_1755_reg[17]_i_12_n_0 ,\x_27_reg_1755_reg[17]_i_12_n_1 ,\x_27_reg_1755_reg[17]_i_12_n_2 ,\x_27_reg_1755_reg[17]_i_12_n_3 ,\x_27_reg_1755_reg[17]_i_12_n_4 ,\x_27_reg_1755_reg[17]_i_12_n_5 ,\x_27_reg_1755_reg[17]_i_12_n_6 ,\x_27_reg_1755_reg[17]_i_12_n_7 }),
        .DI(xs_4_reg_1716[11:4]),
        .O({\x_27_reg_1755_reg[17]_i_12_n_8 ,\x_27_reg_1755_reg[17]_i_12_n_9 ,\x_27_reg_1755_reg[17]_i_12_n_10 ,\x_27_reg_1755_reg[17]_i_12_n_11 ,\x_27_reg_1755_reg[17]_i_12_n_12 ,\x_27_reg_1755_reg[17]_i_12_n_13 ,\x_27_reg_1755_reg[17]_i_12_n_14 ,\x_27_reg_1755_reg[17]_i_12_n_15 }),
        .S({xs_4_reg_1716[11:9],\x_27_reg_1755[17]_i_17_n_0 ,\x_27_reg_1755[17]_i_18_n_0 ,\x_27_reg_1755[17]_i_19_n_0 ,\x_27_reg_1755[17]_i_20_n_0 ,\x_27_reg_1755[17]_i_21_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_27_reg_1755_reg[17]_i_2 
       (.CI(\x_27_reg_1755_reg[7]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\x_27_reg_1755_reg[17]_i_2_n_0 ,\x_27_reg_1755_reg[17]_i_2_n_1 ,\x_27_reg_1755_reg[17]_i_2_n_2 ,\x_27_reg_1755_reg[17]_i_2_n_3 ,\x_27_reg_1755_reg[17]_i_2_n_4 ,\x_27_reg_1755_reg[17]_i_2_n_5 ,\x_27_reg_1755_reg[17]_i_2_n_6 ,\x_27_reg_1755_reg[17]_i_2_n_7 }),
        .DI(x_22_fu_777_p3[15:8]),
        .O(x_25_fu_861_p3[15:8]),
        .S({x_22_fu_777_p3[15:10],\x_27_reg_1755[17]_i_6_n_0 ,\x_27_reg_1755[17]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_27_reg_1755_reg[17]_i_5 
       (.CI(\x_27_reg_1755_reg[7]_i_11_n_0 ),
        .CI_TOP(1'b0),
        .CO({\x_27_reg_1755_reg[17]_i_5_n_0 ,\x_27_reg_1755_reg[17]_i_5_n_1 ,\x_27_reg_1755_reg[17]_i_5_n_2 ,\x_27_reg_1755_reg[17]_i_5_n_3 ,\x_27_reg_1755_reg[17]_i_5_n_4 ,\x_27_reg_1755_reg[17]_i_5_n_5 ,\x_27_reg_1755_reg[17]_i_5_n_6 ,\x_27_reg_1755_reg[17]_i_5_n_7 }),
        .DI({\x_27_reg_1755_reg[17]_i_8_n_8 ,\x_27_reg_1755_reg[17]_i_8_n_9 ,\x_27_reg_1755_reg[17]_i_8_n_10 ,\x_27_reg_1755_reg[17]_i_8_n_11 ,\x_27_reg_1755_reg[17]_i_8_n_12 ,\x_27_reg_1755_reg[17]_i_8_n_13 ,\x_27_reg_1755_reg[17]_i_8_n_14 ,\x_27_reg_1755_reg[17]_i_8_n_15 }),
        .O(x_22_fu_777_p3[15:8]),
        .S({\x_27_reg_1755_reg[17]_i_8_n_8 ,\x_27_reg_1755_reg[17]_i_8_n_9 ,\x_27_reg_1755_reg[17]_i_8_n_10 ,\x_27_reg_1755_reg[17]_i_8_n_11 ,\x_27_reg_1755_reg[17]_i_8_n_12 ,\x_27_reg_1755[17]_i_9_n_0 ,\x_27_reg_1755[17]_i_10_n_0 ,\x_27_reg_1755[17]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_27_reg_1755_reg[17]_i_8 
       (.CI(\x_27_reg_1755_reg[7]_i_20_n_0 ),
        .CI_TOP(1'b0),
        .CO({\x_27_reg_1755_reg[17]_i_8_n_0 ,\x_27_reg_1755_reg[17]_i_8_n_1 ,\x_27_reg_1755_reg[17]_i_8_n_2 ,\x_27_reg_1755_reg[17]_i_8_n_3 ,\x_27_reg_1755_reg[17]_i_8_n_4 ,\x_27_reg_1755_reg[17]_i_8_n_5 ,\x_27_reg_1755_reg[17]_i_8_n_6 ,\x_27_reg_1755_reg[17]_i_8_n_7 }),
        .DI({\x_27_reg_1755_reg[17]_i_12_n_8 ,\x_27_reg_1755_reg[17]_i_12_n_9 ,\x_27_reg_1755_reg[17]_i_12_n_10 ,\x_27_reg_1755_reg[17]_i_12_n_11 ,\x_27_reg_1755_reg[17]_i_12_n_12 ,\x_27_reg_1755_reg[17]_i_12_n_13 ,\x_27_reg_1755_reg[17]_i_12_n_14 ,\x_27_reg_1755_reg[17]_i_12_n_15 }),
        .O({\x_27_reg_1755_reg[17]_i_8_n_8 ,\x_27_reg_1755_reg[17]_i_8_n_9 ,\x_27_reg_1755_reg[17]_i_8_n_10 ,\x_27_reg_1755_reg[17]_i_8_n_11 ,\x_27_reg_1755_reg[17]_i_8_n_12 ,\x_27_reg_1755_reg[17]_i_8_n_13 ,\x_27_reg_1755_reg[17]_i_8_n_14 ,\x_27_reg_1755_reg[17]_i_8_n_15 }),
        .S({\x_27_reg_1755_reg[17]_i_12_n_8 ,\x_27_reg_1755_reg[17]_i_12_n_9 ,\x_27_reg_1755_reg[17]_i_12_n_10 ,\x_27_reg_1755_reg[17]_i_12_n_11 ,\x_27_reg_1755[17]_i_13_n_0 ,\x_27_reg_1755[17]_i_14_n_0 ,\x_27_reg_1755[17]_i_15_n_0 ,\x_27_reg_1755[17]_i_16_n_0 }));
  FDRE \x_27_reg_1755_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_27_fu_925_p2[1]),
        .Q(x_27_reg_1755[1]),
        .R(1'b0));
  FDRE \x_27_reg_1755_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_27_fu_925_p2[2]),
        .Q(x_27_reg_1755[2]),
        .R(1'b0));
  FDRE \x_27_reg_1755_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_27_fu_925_p2[3]),
        .Q(x_27_reg_1755[3]),
        .R(1'b0));
  FDRE \x_27_reg_1755_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_27_fu_925_p2[4]),
        .Q(x_27_reg_1755[4]),
        .R(1'b0));
  FDRE \x_27_reg_1755_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_27_fu_925_p2[5]),
        .Q(x_27_reg_1755[5]),
        .R(1'b0));
  FDRE \x_27_reg_1755_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_27_fu_925_p2[6]),
        .Q(x_27_reg_1755[6]),
        .R(1'b0));
  FDRE \x_27_reg_1755_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_27_fu_925_p2[7]),
        .Q(x_27_reg_1755[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_27_reg_1755_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\x_27_reg_1755_reg[7]_i_1_n_0 ,\x_27_reg_1755_reg[7]_i_1_n_1 ,\x_27_reg_1755_reg[7]_i_1_n_2 ,\x_27_reg_1755_reg[7]_i_1_n_3 ,\x_27_reg_1755_reg[7]_i_1_n_4 ,\x_27_reg_1755_reg[7]_i_1_n_5 ,\x_27_reg_1755_reg[7]_i_1_n_6 ,\x_27_reg_1755_reg[7]_i_1_n_7 }),
        .DI(x_25_fu_861_p3[7:0]),
        .O(x_27_fu_925_p2[7:0]),
        .S({\x_27_reg_1755[7]_i_3_n_0 ,\x_27_reg_1755[7]_i_4_n_0 ,\x_27_reg_1755[7]_i_5_n_0 ,\x_27_reg_1755[7]_i_6_n_0 ,\x_27_reg_1755[7]_i_7_n_0 ,\x_27_reg_1755[7]_i_8_n_0 ,\x_27_reg_1755[7]_i_9_n_0 ,\x_27_reg_1755[7]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_27_reg_1755_reg[7]_i_11 
       (.CI(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .CI_TOP(1'b0),
        .CO({\x_27_reg_1755_reg[7]_i_11_n_0 ,\x_27_reg_1755_reg[7]_i_11_n_1 ,\x_27_reg_1755_reg[7]_i_11_n_2 ,\x_27_reg_1755_reg[7]_i_11_n_3 ,\x_27_reg_1755_reg[7]_i_11_n_4 ,\x_27_reg_1755_reg[7]_i_11_n_5 ,\x_27_reg_1755_reg[7]_i_11_n_6 ,\x_27_reg_1755_reg[7]_i_11_n_7 }),
        .DI({\x_27_reg_1755_reg[7]_i_20_n_8 ,\x_27_reg_1755_reg[7]_i_20_n_9 ,\x_27_reg_1755_reg[7]_i_20_n_10 ,\x_27_reg_1755_reg[7]_i_20_n_11 ,\x_27_reg_1755_reg[7]_i_20_n_12 ,\x_27_reg_1755_reg[7]_i_20_n_13 ,\x_27_reg_1755_reg[7]_i_20_n_14 ,\x_27_reg_1755_reg[7]_i_20_n_15 }),
        .O(x_22_fu_777_p3[7:0]),
        .S({\x_27_reg_1755[7]_i_21_n_0 ,\x_27_reg_1755[7]_i_22_n_0 ,\x_27_reg_1755[7]_i_23_n_0 ,\x_27_reg_1755[7]_i_24_n_0 ,\x_27_reg_1755[7]_i_25_n_0 ,\x_27_reg_1755[7]_i_26_n_0 ,\x_27_reg_1755[7]_i_27_n_0 ,\x_27_reg_1755[7]_i_28_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_27_reg_1755_reg[7]_i_2 
       (.CI(y_22_fu_785_p3),
        .CI_TOP(1'b0),
        .CO({\x_27_reg_1755_reg[7]_i_2_n_0 ,\x_27_reg_1755_reg[7]_i_2_n_1 ,\x_27_reg_1755_reg[7]_i_2_n_2 ,\x_27_reg_1755_reg[7]_i_2_n_3 ,\x_27_reg_1755_reg[7]_i_2_n_4 ,\x_27_reg_1755_reg[7]_i_2_n_5 ,\x_27_reg_1755_reg[7]_i_2_n_6 ,\x_27_reg_1755_reg[7]_i_2_n_7 }),
        .DI(x_22_fu_777_p3[7:0]),
        .O(x_25_fu_861_p3[7:0]),
        .S({\x_27_reg_1755[7]_i_12_n_0 ,\x_27_reg_1755[7]_i_13_n_0 ,\x_27_reg_1755[7]_i_14_n_0 ,\x_27_reg_1755[7]_i_15_n_0 ,\x_27_reg_1755[7]_i_16_n_0 ,\x_27_reg_1755[7]_i_17_n_0 ,\x_27_reg_1755[7]_i_18_n_0 ,\x_27_reg_1755[7]_i_19_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_27_reg_1755_reg[7]_i_20 
       (.CI(sel),
        .CI_TOP(1'b0),
        .CO({\x_27_reg_1755_reg[7]_i_20_n_0 ,\x_27_reg_1755_reg[7]_i_20_n_1 ,\x_27_reg_1755_reg[7]_i_20_n_2 ,\x_27_reg_1755_reg[7]_i_20_n_3 ,\x_27_reg_1755_reg[7]_i_20_n_4 ,\x_27_reg_1755_reg[7]_i_20_n_5 ,\x_27_reg_1755_reg[7]_i_20_n_6 ,\x_27_reg_1755_reg[7]_i_20_n_7 }),
        .DI({\x_27_reg_1755_reg[7]_i_29_n_8 ,\x_27_reg_1755_reg[7]_i_29_n_9 ,\x_27_reg_1755_reg[7]_i_29_n_10 ,\x_27_reg_1755_reg[7]_i_29_n_11 ,\x_27_reg_1755_reg[7]_i_29_n_12 ,\x_27_reg_1755_reg[7]_i_29_n_13 ,\x_27_reg_1755_reg[7]_i_29_n_14 ,\x_27_reg_1755_reg[7]_i_29_n_15 }),
        .O({\x_27_reg_1755_reg[7]_i_20_n_8 ,\x_27_reg_1755_reg[7]_i_20_n_9 ,\x_27_reg_1755_reg[7]_i_20_n_10 ,\x_27_reg_1755_reg[7]_i_20_n_11 ,\x_27_reg_1755_reg[7]_i_20_n_12 ,\x_27_reg_1755_reg[7]_i_20_n_13 ,\x_27_reg_1755_reg[7]_i_20_n_14 ,\x_27_reg_1755_reg[7]_i_20_n_15 }),
        .S({\x_27_reg_1755[7]_i_30_n_0 ,\x_27_reg_1755[7]_i_31_n_0 ,\x_27_reg_1755[7]_i_32_n_0 ,\x_27_reg_1755[7]_i_33_n_0 ,\x_27_reg_1755[7]_i_34_n_0 ,\x_27_reg_1755[7]_i_35_n_0 ,\x_27_reg_1755[7]_i_36_n_0 ,\x_27_reg_1755[7]_i_37_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_27_reg_1755_reg[7]_i_29 
       (.CI(tmp_6_reg_1726),
        .CI_TOP(1'b0),
        .CO({\x_27_reg_1755_reg[7]_i_29_n_0 ,\x_27_reg_1755_reg[7]_i_29_n_1 ,\x_27_reg_1755_reg[7]_i_29_n_2 ,\x_27_reg_1755_reg[7]_i_29_n_3 ,\x_27_reg_1755_reg[7]_i_29_n_4 ,\x_27_reg_1755_reg[7]_i_29_n_5 ,\x_27_reg_1755_reg[7]_i_29_n_6 ,\x_27_reg_1755_reg[7]_i_29_n_7 }),
        .DI({xs_4_reg_1716[3:0],x_13_reg_1704}),
        .O({\x_27_reg_1755_reg[7]_i_29_n_8 ,\x_27_reg_1755_reg[7]_i_29_n_9 ,\x_27_reg_1755_reg[7]_i_29_n_10 ,\x_27_reg_1755_reg[7]_i_29_n_11 ,\x_27_reg_1755_reg[7]_i_29_n_12 ,\x_27_reg_1755_reg[7]_i_29_n_13 ,\x_27_reg_1755_reg[7]_i_29_n_14 ,\x_27_reg_1755_reg[7]_i_29_n_15 }),
        .S({\x_27_reg_1755[7]_i_38_n_0 ,\x_27_reg_1755[7]_i_39_n_0 ,\x_27_reg_1755[7]_i_40_n_0 ,\x_27_reg_1755[7]_i_41_n_0 ,\x_27_reg_1755[7]_i_42_n_0 ,\x_27_reg_1755[7]_i_43_n_0 ,\x_27_reg_1755[7]_i_44_n_0 ,\x_27_reg_1755[7]_i_45_n_0 }));
  FDRE \x_27_reg_1755_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_27_fu_925_p2[8]),
        .Q(x_27_reg_1755[8]),
        .R(1'b0));
  FDRE \x_27_reg_1755_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_27_fu_925_p2[9]),
        .Q(x_27_reg_1755[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_40_reg_1790[12]_i_10 
       (.I0(x_26_reg_1745[10]),
        .I1(x_27_reg_1755[10]),
        .I2(tmp_10_reg_1738),
        .O(x_28_fu_958_p3[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_40_reg_1790[12]_i_11 
       (.I0(x_26_reg_1745[9]),
        .I1(x_27_reg_1755[9]),
        .I2(tmp_10_reg_1738),
        .O(x_28_fu_958_p3[9]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_40_reg_1790[12]_i_12 
       (.I0(x_26_reg_1745[8]),
        .I1(x_27_reg_1755[8]),
        .I2(tmp_10_reg_1738),
        .O(x_28_fu_958_p3[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_40_reg_1790[12]_i_13 
       (.I0(x_26_reg_1745[15]),
        .I1(x_27_reg_1755[15]),
        .I2(tmp_10_reg_1738),
        .O(\x_40_reg_1790[12]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_40_reg_1790[12]_i_14 
       (.I0(x_26_reg_1745[14]),
        .I1(x_27_reg_1755[14]),
        .I2(tmp_10_reg_1738),
        .O(\x_40_reg_1790[12]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_40_reg_1790[12]_i_15 
       (.I0(x_26_reg_1745[13]),
        .I1(x_27_reg_1755[13]),
        .I2(tmp_10_reg_1738),
        .O(\x_40_reg_1790[12]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_40_reg_1790[12]_i_16 
       (.I0(x_26_reg_1745[12]),
        .I1(x_27_reg_1755[12]),
        .I2(tmp_10_reg_1738),
        .O(\x_40_reg_1790[12]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_40_reg_1790[12]_i_17 
       (.I0(x_26_reg_1745[11]),
        .I1(x_27_reg_1755[11]),
        .I2(tmp_10_reg_1738),
        .O(\x_40_reg_1790[12]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_40_reg_1790[12]_i_18 
       (.I0(x_26_reg_1745[10]),
        .I1(x_27_reg_1755[10]),
        .I2(tmp_10_reg_1738),
        .O(\x_40_reg_1790[12]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_40_reg_1790[12]_i_19 
       (.I0(x_26_reg_1745[9]),
        .I1(x_27_reg_1755[9]),
        .I2(tmp_10_reg_1738),
        .O(\x_40_reg_1790[12]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_40_reg_1790[12]_i_20 
       (.I0(x_26_reg_1745[8]),
        .I1(x_27_reg_1755[8]),
        .I2(tmp_10_reg_1738),
        .O(\x_40_reg_1790[12]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_40_reg_1790[12]_i_5 
       (.I0(x_26_reg_1745[15]),
        .I1(x_27_reg_1755[15]),
        .I2(tmp_10_reg_1738),
        .O(x_28_fu_958_p3[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_40_reg_1790[12]_i_6 
       (.I0(x_26_reg_1745[14]),
        .I1(x_27_reg_1755[14]),
        .I2(tmp_10_reg_1738),
        .O(x_28_fu_958_p3[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_40_reg_1790[12]_i_7 
       (.I0(x_26_reg_1745[13]),
        .I1(x_27_reg_1755[13]),
        .I2(tmp_10_reg_1738),
        .O(x_28_fu_958_p3[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_40_reg_1790[12]_i_8 
       (.I0(x_26_reg_1745[12]),
        .I1(x_27_reg_1755[12]),
        .I2(tmp_10_reg_1738),
        .O(x_28_fu_958_p3[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_40_reg_1790[12]_i_9 
       (.I0(x_26_reg_1745[11]),
        .I1(x_27_reg_1755[11]),
        .I2(tmp_10_reg_1738),
        .O(x_28_fu_958_p3[11]));
  LUT3 #(
    .INIT(8'h96)) 
    \x_40_reg_1790[7]_i_10 
       (.I0(x_34_fu_1104_p3[4]),
        .I1(y_34_fu_1112_p3__0[15]),
        .I2(y_34_fu_1112_p3),
        .O(\x_40_reg_1790[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_40_reg_1790[7]_i_11 
       (.I0(x_34_fu_1104_p3[3]),
        .I1(y_34_fu_1112_p3__0[14]),
        .I2(y_34_fu_1112_p3),
        .O(\x_40_reg_1790[7]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_40_reg_1790[7]_i_12 
       (.I0(x_34_fu_1104_p3[2]),
        .I1(y_34_fu_1112_p3__0[13]),
        .I2(y_34_fu_1112_p3),
        .O(\x_40_reg_1790[7]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_40_reg_1790[7]_i_13 
       (.I0(x_34_fu_1104_p3[1]),
        .I1(y_34_fu_1112_p3__0[12]),
        .I2(y_34_fu_1112_p3),
        .O(\x_40_reg_1790[7]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_40_reg_1790[7]_i_14 
       (.I0(x_34_fu_1104_p3[0]),
        .I1(y_34_fu_1112_p3__0[11]),
        .I2(y_34_fu_1112_p3),
        .O(\x_40_reg_1790[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_40_reg_1790[7]_i_16 
       (.I0(x_31_fu_1028_p3[6]),
        .I1(y_31_fu_1036_p3__0[16]),
        .I2(y_31_fu_1036_p3),
        .O(\x_40_reg_1790[7]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_40_reg_1790[7]_i_17 
       (.I0(x_31_fu_1028_p3[5]),
        .I1(y_31_fu_1036_p3__0[15]),
        .I2(y_31_fu_1036_p3),
        .O(\x_40_reg_1790[7]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_40_reg_1790[7]_i_18 
       (.I0(x_31_fu_1028_p3[4]),
        .I1(y_31_fu_1036_p3__0[14]),
        .I2(y_31_fu_1036_p3),
        .O(\x_40_reg_1790[7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_40_reg_1790[7]_i_19 
       (.I0(x_31_fu_1028_p3[3]),
        .I1(y_31_fu_1036_p3__0[13]),
        .I2(y_31_fu_1036_p3),
        .O(\x_40_reg_1790[7]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_40_reg_1790[7]_i_20 
       (.I0(x_31_fu_1028_p3[2]),
        .I1(y_31_fu_1036_p3__0[12]),
        .I2(y_31_fu_1036_p3),
        .O(\x_40_reg_1790[7]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_40_reg_1790[7]_i_21 
       (.I0(x_31_fu_1028_p3[1]),
        .I1(y_31_fu_1036_p3__0[11]),
        .I2(y_31_fu_1036_p3),
        .O(\x_40_reg_1790[7]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_40_reg_1790[7]_i_22 
       (.I0(x_31_fu_1028_p3[0]),
        .I1(y_31_fu_1036_p3__0[10]),
        .I2(y_31_fu_1036_p3),
        .O(\x_40_reg_1790[7]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_40_reg_1790[7]_i_23 
       (.I0(x_26_reg_1745[7]),
        .I1(x_27_reg_1755[7]),
        .I2(tmp_10_reg_1738),
        .O(x_28_fu_958_p3[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_40_reg_1790[7]_i_24 
       (.I0(x_26_reg_1745[6]),
        .I1(x_27_reg_1755[6]),
        .I2(tmp_10_reg_1738),
        .O(x_28_fu_958_p3[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_40_reg_1790[7]_i_25 
       (.I0(x_26_reg_1745[5]),
        .I1(x_27_reg_1755[5]),
        .I2(tmp_10_reg_1738),
        .O(x_28_fu_958_p3[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_40_reg_1790[7]_i_26 
       (.I0(x_26_reg_1745[4]),
        .I1(x_27_reg_1755[4]),
        .I2(tmp_10_reg_1738),
        .O(x_28_fu_958_p3[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_40_reg_1790[7]_i_27 
       (.I0(x_26_reg_1745[3]),
        .I1(x_27_reg_1755[3]),
        .I2(tmp_10_reg_1738),
        .O(x_28_fu_958_p3[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_40_reg_1790[7]_i_28 
       (.I0(x_26_reg_1745[2]),
        .I1(x_27_reg_1755[2]),
        .I2(tmp_10_reg_1738),
        .O(x_28_fu_958_p3[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_40_reg_1790[7]_i_29 
       (.I0(x_26_reg_1745[1]),
        .I1(x_27_reg_1755[1]),
        .I2(tmp_10_reg_1738),
        .O(x_28_fu_958_p3[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \x_40_reg_1790[7]_i_3 
       (.I0(x_37_fu_1180_p3[4]),
        .I1(y_37_fu_1188_p3__0[16]),
        .I2(y_37_fu_1188_p3),
        .O(\x_40_reg_1790[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_40_reg_1790[7]_i_30 
       (.I0(x_26_reg_1745[0]),
        .I1(x_27_reg_1755[0]),
        .I2(tmp_10_reg_1738),
        .O(x_28_fu_958_p3[0]));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \x_40_reg_1790[7]_i_31 
       (.I0(x_27_reg_1755[7]),
        .I1(x_26_reg_1745[7]),
        .I2(y_26_reg_1750[16]),
        .I3(y_27_reg_1760[16]),
        .I4(tmp_10_reg_1738),
        .I5(y_28_fu_963_p3),
        .O(\x_40_reg_1790[7]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \x_40_reg_1790[7]_i_32 
       (.I0(x_27_reg_1755[6]),
        .I1(x_26_reg_1745[6]),
        .I2(y_26_reg_1750[15]),
        .I3(y_27_reg_1760[15]),
        .I4(tmp_10_reg_1738),
        .I5(y_28_fu_963_p3),
        .O(\x_40_reg_1790[7]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \x_40_reg_1790[7]_i_33 
       (.I0(x_27_reg_1755[5]),
        .I1(x_26_reg_1745[5]),
        .I2(y_26_reg_1750[14]),
        .I3(y_27_reg_1760[14]),
        .I4(tmp_10_reg_1738),
        .I5(y_28_fu_963_p3),
        .O(\x_40_reg_1790[7]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \x_40_reg_1790[7]_i_34 
       (.I0(x_27_reg_1755[4]),
        .I1(x_26_reg_1745[4]),
        .I2(y_26_reg_1750[13]),
        .I3(y_27_reg_1760[13]),
        .I4(tmp_10_reg_1738),
        .I5(y_28_fu_963_p3),
        .O(\x_40_reg_1790[7]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \x_40_reg_1790[7]_i_35 
       (.I0(x_27_reg_1755[3]),
        .I1(x_26_reg_1745[3]),
        .I2(y_26_reg_1750[12]),
        .I3(y_27_reg_1760[12]),
        .I4(tmp_10_reg_1738),
        .I5(y_28_fu_963_p3),
        .O(\x_40_reg_1790[7]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \x_40_reg_1790[7]_i_36 
       (.I0(x_27_reg_1755[2]),
        .I1(x_26_reg_1745[2]),
        .I2(y_26_reg_1750[11]),
        .I3(y_27_reg_1760[11]),
        .I4(tmp_10_reg_1738),
        .I5(y_28_fu_963_p3),
        .O(\x_40_reg_1790[7]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \x_40_reg_1790[7]_i_37 
       (.I0(x_27_reg_1755[1]),
        .I1(x_26_reg_1745[1]),
        .I2(y_26_reg_1750[10]),
        .I3(y_27_reg_1760[10]),
        .I4(tmp_10_reg_1738),
        .I5(y_28_fu_963_p3),
        .O(\x_40_reg_1790[7]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \x_40_reg_1790[7]_i_38 
       (.I0(x_27_reg_1755[0]),
        .I1(x_26_reg_1745[0]),
        .I2(y_26_reg_1750[9]),
        .I3(y_27_reg_1760[9]),
        .I4(tmp_10_reg_1738),
        .I5(y_28_fu_963_p3),
        .O(\x_40_reg_1790[7]_i_38_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_40_reg_1790[7]_i_4 
       (.I0(x_37_fu_1180_p3[3]),
        .I1(y_37_fu_1188_p3__0[15]),
        .I2(y_37_fu_1188_p3),
        .O(\x_40_reg_1790[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_40_reg_1790[7]_i_5 
       (.I0(x_37_fu_1180_p3[2]),
        .I1(y_37_fu_1188_p3__0[14]),
        .I2(y_37_fu_1188_p3),
        .O(\x_40_reg_1790[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_40_reg_1790[7]_i_6 
       (.I0(x_37_fu_1180_p3[1]),
        .I1(y_37_fu_1188_p3__0[13]),
        .I2(y_37_fu_1188_p3),
        .O(\x_40_reg_1790[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_40_reg_1790[7]_i_7 
       (.I0(x_37_fu_1180_p3[0]),
        .I1(y_37_fu_1188_p3__0[12]),
        .I2(y_37_fu_1188_p3),
        .O(\x_40_reg_1790[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_40_reg_1790[7]_i_9 
       (.I0(x_34_fu_1104_p3[5]),
        .I1(y_34_fu_1112_p3__0[16]),
        .I2(y_34_fu_1112_p3),
        .O(\x_40_reg_1790[7]_i_9_n_0 ));
  FDRE \x_40_reg_1790_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_40_fu_1256_p3[0]),
        .Q(x_40_reg_1790[0]),
        .R(1'b0));
  FDRE \x_40_reg_1790_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_40_fu_1256_p3[10]),
        .Q(x_40_reg_1790[10]),
        .R(1'b0));
  FDRE \x_40_reg_1790_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_40_fu_1256_p3[11]),
        .Q(x_40_reg_1790[11]),
        .R(1'b0));
  FDRE \x_40_reg_1790_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_40_fu_1256_p3[12]),
        .Q(x_40_reg_1790[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_40_reg_1790_reg[12]_i_1 
       (.CI(\x_40_reg_1790_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\x_40_reg_1790_reg[12]_i_1_n_0 ,\x_40_reg_1790_reg[12]_i_1_n_1 ,\x_40_reg_1790_reg[12]_i_1_n_2 ,\x_40_reg_1790_reg[12]_i_1_n_3 ,\x_40_reg_1790_reg[12]_i_1_n_4 ,\x_40_reg_1790_reg[12]_i_1_n_5 ,\x_40_reg_1790_reg[12]_i_1_n_6 ,\x_40_reg_1790_reg[12]_i_1_n_7 }),
        .DI(x_37_fu_1180_p3[15:8]),
        .O(x_40_fu_1256_p3[15:8]),
        .S(x_37_fu_1180_p3[15:8]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_40_reg_1790_reg[12]_i_2 
       (.CI(\x_40_reg_1790_reg[7]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\x_40_reg_1790_reg[12]_i_2_n_0 ,\x_40_reg_1790_reg[12]_i_2_n_1 ,\x_40_reg_1790_reg[12]_i_2_n_2 ,\x_40_reg_1790_reg[12]_i_2_n_3 ,\x_40_reg_1790_reg[12]_i_2_n_4 ,\x_40_reg_1790_reg[12]_i_2_n_5 ,\x_40_reg_1790_reg[12]_i_2_n_6 ,\x_40_reg_1790_reg[12]_i_2_n_7 }),
        .DI(x_34_fu_1104_p3[15:8]),
        .O(x_37_fu_1180_p3[15:8]),
        .S(x_34_fu_1104_p3[15:8]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_40_reg_1790_reg[12]_i_3 
       (.CI(\x_40_reg_1790_reg[7]_i_8_n_0 ),
        .CI_TOP(1'b0),
        .CO({\x_40_reg_1790_reg[12]_i_3_n_0 ,\x_40_reg_1790_reg[12]_i_3_n_1 ,\x_40_reg_1790_reg[12]_i_3_n_2 ,\x_40_reg_1790_reg[12]_i_3_n_3 ,\x_40_reg_1790_reg[12]_i_3_n_4 ,\x_40_reg_1790_reg[12]_i_3_n_5 ,\x_40_reg_1790_reg[12]_i_3_n_6 ,\x_40_reg_1790_reg[12]_i_3_n_7 }),
        .DI(x_31_fu_1028_p3[15:8]),
        .O(x_34_fu_1104_p3[15:8]),
        .S(x_31_fu_1028_p3[15:8]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_40_reg_1790_reg[12]_i_4 
       (.CI(\x_40_reg_1790_reg[7]_i_15_n_0 ),
        .CI_TOP(1'b0),
        .CO({\x_40_reg_1790_reg[12]_i_4_n_0 ,\x_40_reg_1790_reg[12]_i_4_n_1 ,\x_40_reg_1790_reg[12]_i_4_n_2 ,\x_40_reg_1790_reg[12]_i_4_n_3 ,\x_40_reg_1790_reg[12]_i_4_n_4 ,\x_40_reg_1790_reg[12]_i_4_n_5 ,\x_40_reg_1790_reg[12]_i_4_n_6 ,\x_40_reg_1790_reg[12]_i_4_n_7 }),
        .DI(x_28_fu_958_p3[15:8]),
        .O(x_31_fu_1028_p3[15:8]),
        .S({\x_40_reg_1790[12]_i_13_n_0 ,\x_40_reg_1790[12]_i_14_n_0 ,\x_40_reg_1790[12]_i_15_n_0 ,\x_40_reg_1790[12]_i_16_n_0 ,\x_40_reg_1790[12]_i_17_n_0 ,\x_40_reg_1790[12]_i_18_n_0 ,\x_40_reg_1790[12]_i_19_n_0 ,\x_40_reg_1790[12]_i_20_n_0 }));
  FDRE \x_40_reg_1790_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_40_fu_1256_p3[1]),
        .Q(x_40_reg_1790[1]),
        .R(1'b0));
  FDRE \x_40_reg_1790_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_40_fu_1256_p3[2]),
        .Q(x_40_reg_1790[2]),
        .R(1'b0));
  FDRE \x_40_reg_1790_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_40_fu_1256_p3[3]),
        .Q(x_40_reg_1790[3]),
        .R(1'b0));
  FDRE \x_40_reg_1790_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_40_fu_1256_p3[4]),
        .Q(x_40_reg_1790[4]),
        .R(1'b0));
  FDRE \x_40_reg_1790_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_40_fu_1256_p3[5]),
        .Q(x_40_reg_1790[5]),
        .R(1'b0));
  FDRE \x_40_reg_1790_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_40_fu_1256_p3[6]),
        .Q(x_40_reg_1790[6]),
        .R(1'b0));
  FDRE \x_40_reg_1790_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_40_fu_1256_p3[7]),
        .Q(x_40_reg_1790[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_40_reg_1790_reg[7]_i_1 
       (.CI(y_37_fu_1188_p3),
        .CI_TOP(1'b0),
        .CO({\x_40_reg_1790_reg[7]_i_1_n_0 ,\x_40_reg_1790_reg[7]_i_1_n_1 ,\x_40_reg_1790_reg[7]_i_1_n_2 ,\x_40_reg_1790_reg[7]_i_1_n_3 ,\x_40_reg_1790_reg[7]_i_1_n_4 ,\x_40_reg_1790_reg[7]_i_1_n_5 ,\x_40_reg_1790_reg[7]_i_1_n_6 ,\x_40_reg_1790_reg[7]_i_1_n_7 }),
        .DI(x_37_fu_1180_p3[7:0]),
        .O(x_40_fu_1256_p3[7:0]),
        .S({x_37_fu_1180_p3[7:5],\x_40_reg_1790[7]_i_3_n_0 ,\x_40_reg_1790[7]_i_4_n_0 ,\x_40_reg_1790[7]_i_5_n_0 ,\x_40_reg_1790[7]_i_6_n_0 ,\x_40_reg_1790[7]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_40_reg_1790_reg[7]_i_15 
       (.CI(y_28_fu_963_p3),
        .CI_TOP(1'b0),
        .CO({\x_40_reg_1790_reg[7]_i_15_n_0 ,\x_40_reg_1790_reg[7]_i_15_n_1 ,\x_40_reg_1790_reg[7]_i_15_n_2 ,\x_40_reg_1790_reg[7]_i_15_n_3 ,\x_40_reg_1790_reg[7]_i_15_n_4 ,\x_40_reg_1790_reg[7]_i_15_n_5 ,\x_40_reg_1790_reg[7]_i_15_n_6 ,\x_40_reg_1790_reg[7]_i_15_n_7 }),
        .DI(x_28_fu_958_p3[7:0]),
        .O(x_31_fu_1028_p3[7:0]),
        .S({\x_40_reg_1790[7]_i_31_n_0 ,\x_40_reg_1790[7]_i_32_n_0 ,\x_40_reg_1790[7]_i_33_n_0 ,\x_40_reg_1790[7]_i_34_n_0 ,\x_40_reg_1790[7]_i_35_n_0 ,\x_40_reg_1790[7]_i_36_n_0 ,\x_40_reg_1790[7]_i_37_n_0 ,\x_40_reg_1790[7]_i_38_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_40_reg_1790_reg[7]_i_2 
       (.CI(y_34_fu_1112_p3),
        .CI_TOP(1'b0),
        .CO({\x_40_reg_1790_reg[7]_i_2_n_0 ,\x_40_reg_1790_reg[7]_i_2_n_1 ,\x_40_reg_1790_reg[7]_i_2_n_2 ,\x_40_reg_1790_reg[7]_i_2_n_3 ,\x_40_reg_1790_reg[7]_i_2_n_4 ,\x_40_reg_1790_reg[7]_i_2_n_5 ,\x_40_reg_1790_reg[7]_i_2_n_6 ,\x_40_reg_1790_reg[7]_i_2_n_7 }),
        .DI(x_34_fu_1104_p3[7:0]),
        .O(x_37_fu_1180_p3[7:0]),
        .S({x_34_fu_1104_p3[7:6],\x_40_reg_1790[7]_i_9_n_0 ,\x_40_reg_1790[7]_i_10_n_0 ,\x_40_reg_1790[7]_i_11_n_0 ,\x_40_reg_1790[7]_i_12_n_0 ,\x_40_reg_1790[7]_i_13_n_0 ,\x_40_reg_1790[7]_i_14_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_40_reg_1790_reg[7]_i_8 
       (.CI(y_31_fu_1036_p3),
        .CI_TOP(1'b0),
        .CO({\x_40_reg_1790_reg[7]_i_8_n_0 ,\x_40_reg_1790_reg[7]_i_8_n_1 ,\x_40_reg_1790_reg[7]_i_8_n_2 ,\x_40_reg_1790_reg[7]_i_8_n_3 ,\x_40_reg_1790_reg[7]_i_8_n_4 ,\x_40_reg_1790_reg[7]_i_8_n_5 ,\x_40_reg_1790_reg[7]_i_8_n_6 ,\x_40_reg_1790_reg[7]_i_8_n_7 }),
        .DI(x_31_fu_1028_p3[7:0]),
        .O(x_34_fu_1104_p3[7:0]),
        .S({x_31_fu_1028_p3[7],\x_40_reg_1790[7]_i_16_n_0 ,\x_40_reg_1790[7]_i_17_n_0 ,\x_40_reg_1790[7]_i_18_n_0 ,\x_40_reg_1790[7]_i_19_n_0 ,\x_40_reg_1790[7]_i_20_n_0 ,\x_40_reg_1790[7]_i_21_n_0 ,\x_40_reg_1790[7]_i_22_n_0 }));
  FDRE \x_40_reg_1790_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_40_fu_1256_p3[8]),
        .Q(x_40_reg_1790[8]),
        .R(1'b0));
  FDRE \x_40_reg_1790_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_40_fu_1256_p3[9]),
        .Q(x_40_reg_1790[9]),
        .R(1'b0));
  FDRE \xs_13_reg_1802_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_40_fu_1256_p3[13]),
        .Q(xs_13_reg_1802[0]),
        .R(1'b0));
  FDRE \xs_13_reg_1802_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_40_fu_1256_p3[14]),
        .Q(xs_13_reg_1802[1]),
        .R(1'b0));
  FDRE \xs_13_reg_1802_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_40_fu_1256_p3[15]),
        .Q(xs_13_reg_1802[2]),
        .R(1'b0));
  FDRE \xs_13_reg_1802_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_40_fu_1256_p3[16]),
        .Q(xs_13_reg_1802[3]),
        .R(1'b0));
  FDRE \xs_13_reg_1802_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_40_fu_1256_p3[17]),
        .Q(xs_13_reg_1802[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \xs_13_reg_1802_reg[4]_i_1 
       (.CI(\x_40_reg_1790_reg[12]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_xs_13_reg_1802_reg[4]_i_1_CO_UNCONNECTED [7:1],\xs_13_reg_1802_reg[4]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x_37_fu_1180_p3[16]}),
        .O({\NLW_xs_13_reg_1802_reg[4]_i_1_O_UNCONNECTED [7:2],x_40_fu_1256_p3[17:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x_37_fu_1180_p3[17:16]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \xs_13_reg_1802_reg[4]_i_2 
       (.CI(\x_40_reg_1790_reg[12]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_xs_13_reg_1802_reg[4]_i_2_CO_UNCONNECTED [7:1],\xs_13_reg_1802_reg[4]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x_34_fu_1104_p3[16]}),
        .O({\NLW_xs_13_reg_1802_reg[4]_i_2_O_UNCONNECTED [7:2],x_37_fu_1180_p3[17:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x_34_fu_1104_p3[17:16]}));
  LUT3 #(
    .INIT(8'hAC)) 
    \xs_4_reg_1716[13]_i_4 
       (.I0(x_2_fu_286_p2[16]),
        .I1(y_48_fu_280_p2[16]),
        .I2(p_0_in),
        .O(p_0_in0_out[16]));
  LUT3 #(
    .INIT(8'hAC)) 
    \xs_4_reg_1716[13]_i_5 
       (.I0(x_2_fu_286_p2[16]),
        .I1(y_48_fu_280_p2[16]),
        .I2(p_0_in),
        .O(\xs_4_reg_1716[13]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \xs_4_reg_1716[13]_i_7 
       (.I0(p_0_in),
        .O(\xs_4_reg_1716[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h99A566A5995A665A)) 
    \xs_4_reg_1716[4]_i_10 
       (.I0(sext_ln27_fu_408_p1[11]),
        .I1(y_5_fu_360_p2[15]),
        .I2(y_6_fu_372_p2[15]),
        .I3(B0),
        .I4(y_5_fu_360_p2[16]),
        .I5(y_6_fu_372_p2[16]),
        .O(\xs_4_reg_1716[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h99A566A5995A665A)) 
    \xs_4_reg_1716[4]_i_11 
       (.I0(sext_ln27_fu_408_p1[10]),
        .I1(y_5_fu_360_p2[14]),
        .I2(y_6_fu_372_p2[14]),
        .I3(B0),
        .I4(y_5_fu_360_p2[16]),
        .I5(y_6_fu_372_p2[16]),
        .O(\xs_4_reg_1716[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h99A566A5995A665A)) 
    \xs_4_reg_1716[4]_i_12 
       (.I0(sext_ln27_fu_408_p1[9]),
        .I1(y_5_fu_360_p2[13]),
        .I2(y_6_fu_372_p2[13]),
        .I3(B0),
        .I4(y_5_fu_360_p2[16]),
        .I5(y_6_fu_372_p2[16]),
        .O(\xs_4_reg_1716[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h99A566A5995A665A)) 
    \xs_4_reg_1716[4]_i_13 
       (.I0(sext_ln27_fu_408_p1[8]),
        .I1(y_5_fu_360_p2[12]),
        .I2(y_6_fu_372_p2[12]),
        .I3(B0),
        .I4(y_5_fu_360_p2[16]),
        .I5(y_6_fu_372_p2[16]),
        .O(\xs_4_reg_1716[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h99A566A5995A665A)) 
    \xs_4_reg_1716[4]_i_14 
       (.I0(sext_ln27_fu_408_p1[7]),
        .I1(y_5_fu_360_p2[11]),
        .I2(y_6_fu_372_p2[11]),
        .I3(B0),
        .I4(y_5_fu_360_p2[16]),
        .I5(y_6_fu_372_p2[16]),
        .O(\xs_4_reg_1716[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h99A566A5995A665A)) 
    \xs_4_reg_1716[4]_i_15 
       (.I0(sext_ln27_fu_408_p1[6]),
        .I1(y_5_fu_360_p2[10]),
        .I2(y_6_fu_372_p2[10]),
        .I3(B0),
        .I4(y_5_fu_360_p2[16]),
        .I5(y_6_fu_372_p2[16]),
        .O(\xs_4_reg_1716[4]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \xs_4_reg_1716[4]_i_16 
       (.I0(x_2_fu_286_p2[15]),
        .I1(y_48_fu_280_p2[15]),
        .I2(p_0_in),
        .O(p_0_in0_out[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    \xs_4_reg_1716[4]_i_17 
       (.I0(x_2_fu_286_p2[14]),
        .I1(y_48_fu_280_p2[14]),
        .I2(p_0_in),
        .O(p_0_in0_out[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \xs_4_reg_1716[4]_i_18 
       (.I0(x_2_fu_286_p2[13]),
        .I1(y_48_fu_280_p2[13]),
        .I2(p_0_in),
        .O(p_0_in0_out[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \xs_4_reg_1716[4]_i_19 
       (.I0(x_2_fu_286_p2[12]),
        .I1(y_48_fu_280_p2[12]),
        .I2(p_0_in),
        .O(p_0_in0_out[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    \xs_4_reg_1716[4]_i_20 
       (.I0(x_2_fu_286_p2[11]),
        .I1(y_48_fu_280_p2[11]),
        .I2(p_0_in),
        .O(p_0_in0_out[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    \xs_4_reg_1716[4]_i_21 
       (.I0(x_2_fu_286_p2[10]),
        .I1(y_48_fu_280_p2[10]),
        .I2(p_0_in),
        .O(p_0_in0_out[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \xs_4_reg_1716[4]_i_22 
       (.I0(x_2_fu_286_p2[9]),
        .I1(y_48_fu_280_p2[9]),
        .I2(p_0_in),
        .O(p_0_in0_out[9]));
  LUT3 #(
    .INIT(8'hAC)) 
    \xs_4_reg_1716[4]_i_23 
       (.I0(x_2_fu_286_p2[8]),
        .I1(y_48_fu_280_p2[8]),
        .I2(p_0_in),
        .O(p_0_in0_out[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    \xs_4_reg_1716[4]_i_24 
       (.I0(x_2_fu_286_p2[15]),
        .I1(y_48_fu_280_p2[15]),
        .I2(p_0_in),
        .O(\xs_4_reg_1716[4]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \xs_4_reg_1716[4]_i_25 
       (.I0(y_48_fu_280_p2[14]),
        .I1(x_2_fu_286_p2[14]),
        .I2(y_48_fu_280_p2[15]),
        .I3(y_3_fu_292_p2[15]),
        .I4(p_0_in),
        .I5(B0),
        .O(\xs_4_reg_1716[4]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \xs_4_reg_1716[4]_i_26 
       (.I0(y_48_fu_280_p2[13]),
        .I1(x_2_fu_286_p2[13]),
        .I2(y_48_fu_280_p2[14]),
        .I3(y_3_fu_292_p2[14]),
        .I4(p_0_in),
        .I5(B0),
        .O(\xs_4_reg_1716[4]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \xs_4_reg_1716[4]_i_27 
       (.I0(y_48_fu_280_p2[12]),
        .I1(x_2_fu_286_p2[12]),
        .I2(y_48_fu_280_p2[13]),
        .I3(y_3_fu_292_p2[13]),
        .I4(p_0_in),
        .I5(B0),
        .O(\xs_4_reg_1716[4]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \xs_4_reg_1716[4]_i_28 
       (.I0(y_48_fu_280_p2[11]),
        .I1(x_2_fu_286_p2[11]),
        .I2(y_48_fu_280_p2[12]),
        .I3(y_3_fu_292_p2[12]),
        .I4(p_0_in),
        .I5(B0),
        .O(\xs_4_reg_1716[4]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \xs_4_reg_1716[4]_i_29 
       (.I0(y_48_fu_280_p2[10]),
        .I1(x_2_fu_286_p2[10]),
        .I2(y_48_fu_280_p2[11]),
        .I3(y_3_fu_292_p2[11]),
        .I4(p_0_in),
        .I5(B0),
        .O(\xs_4_reg_1716[4]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hA99A)) 
    \xs_4_reg_1716[4]_i_3 
       (.I0(\xs_4_reg_1716_reg[4]_i_2_n_10 ),
        .I1(sext_ln11_1_fu_394_p1),
        .I2(y_9_fu_460_p2[16]),
        .I3(y_9_fu_460_p2__0),
        .O(\xs_4_reg_1716[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \xs_4_reg_1716[4]_i_30 
       (.I0(y_48_fu_280_p2[9]),
        .I1(x_2_fu_286_p2[9]),
        .I2(y_48_fu_280_p2[10]),
        .I3(y_3_fu_292_p2[10]),
        .I4(p_0_in),
        .I5(B0),
        .O(\xs_4_reg_1716[4]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \xs_4_reg_1716[4]_i_31 
       (.I0(y_48_fu_280_p2[8]),
        .I1(x_2_fu_286_p2[8]),
        .I2(y_48_fu_280_p2[9]),
        .I3(y_3_fu_292_p2[9]),
        .I4(p_0_in),
        .I5(B0),
        .O(\xs_4_reg_1716[4]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \xs_4_reg_1716[4]_i_33 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_59_n_0 ),
        .I1(x_in[15]),
        .I2(x_in[11]),
        .O(\xs_4_reg_1716[4]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \xs_4_reg_1716[4]_i_34 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_60_n_0 ),
        .I1(x_in[15]),
        .I2(x_in[10]),
        .O(\xs_4_reg_1716[4]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9C63)) 
    \xs_4_reg_1716[4]_i_35 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_53_n_0 ),
        .I1(y_in[15]),
        .I2(x_in[15]),
        .I3(zext_ln10_fu_252_p1[15]),
        .O(\xs_4_reg_1716[4]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \xs_4_reg_1716[4]_i_36 
       (.I0(zext_ln10_fu_252_p1[14]),
        .I1(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_10_n_0 ),
        .O(\xs_4_reg_1716[4]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h04FBFF00FB0400FF)) 
    \xs_4_reg_1716[4]_i_37 
       (.I0(y_in[12]),
        .I1(\off_1_reg_1678[13]_i_3_n_0 ),
        .I2(y_in[11]),
        .I3(y_in[13]),
        .I4(x_in[15]),
        .I5(zext_ln10_fu_252_p1[13]),
        .O(\xs_4_reg_1716[4]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h4BF0B40F)) 
    \xs_4_reg_1716[4]_i_38 
       (.I0(y_in[11]),
        .I1(\off_1_reg_1678[13]_i_3_n_0 ),
        .I2(y_in[12]),
        .I3(x_in[15]),
        .I4(zext_ln10_fu_252_p1[12]),
        .O(\xs_4_reg_1716[4]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'hB4784B87)) 
    \xs_4_reg_1716[4]_i_39 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_59_n_0 ),
        .I1(x_in[15]),
        .I2(x_in[11]),
        .I3(\off_1_reg_1678[13]_i_3_n_0 ),
        .I4(y_in[11]),
        .O(\xs_4_reg_1716[4]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \xs_4_reg_1716[4]_i_4 
       (.I0(\xs_4_reg_1716_reg[4]_i_2_n_11 ),
        .I1(sext_ln11_2_fu_450_p1[15]),
        .I2(sext_ln11_1_fu_394_p1),
        .I3(y_9_fu_460_p2[15]),
        .I4(sext_ln11_2_fu_450_p1[16]),
        .I5(y_9_fu_460_p2__0),
        .O(\xs_4_reg_1716[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB4784B87)) 
    \xs_4_reg_1716[4]_i_40 
       (.I0(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_60_n_0 ),
        .I1(x_in[15]),
        .I2(x_in[10]),
        .I3(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_54_n_0 ),
        .I4(y_in[10]),
        .O(\xs_4_reg_1716[4]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \xs_4_reg_1716[4]_i_41 
       (.I0(zext_ln10_fu_252_p1[9]),
        .I1(\tmp_3_reg_1689_pp0_iter1_reg_reg[0]_srl2_i_15_n_0 ),
        .O(\xs_4_reg_1716[4]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h04FBFF00FB0400FF)) 
    \xs_4_reg_1716[4]_i_42 
       (.I0(y_in[7]),
        .I1(\off_1_reg_1678[13]_i_4_n_0 ),
        .I2(y_in[6]),
        .I3(y_in[8]),
        .I4(x_in[15]),
        .I5(zext_ln10_fu_252_p1[8]),
        .O(\xs_4_reg_1716[4]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \xs_4_reg_1716[4]_i_5 
       (.I0(\xs_4_reg_1716_reg[4]_i_2_n_12 ),
        .I1(sext_ln11_2_fu_450_p1[14]),
        .I2(sext_ln11_1_fu_394_p1),
        .I3(y_9_fu_460_p2[14]),
        .I4(sext_ln11_2_fu_450_p1[16]),
        .I5(y_9_fu_460_p2__0),
        .O(\xs_4_reg_1716[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \xs_4_reg_1716[4]_i_6 
       (.I0(\xs_4_reg_1716_reg[4]_i_2_n_13 ),
        .I1(sext_ln11_2_fu_450_p1[13]),
        .I2(sext_ln11_1_fu_394_p1),
        .I3(y_9_fu_460_p2[13]),
        .I4(sext_ln11_2_fu_450_p1[16]),
        .I5(y_9_fu_460_p2__0),
        .O(\xs_4_reg_1716[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \xs_4_reg_1716[4]_i_7 
       (.I0(\xs_4_reg_1716_reg[4]_i_2_n_14 ),
        .I1(sext_ln11_2_fu_450_p1[12]),
        .I2(sext_ln11_1_fu_394_p1),
        .I3(y_9_fu_460_p2[12]),
        .I4(sext_ln11_2_fu_450_p1[16]),
        .I5(y_9_fu_460_p2__0),
        .O(\xs_4_reg_1716[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \xs_4_reg_1716[4]_i_8 
       (.I0(\xs_4_reg_1716_reg[4]_i_2_n_15 ),
        .I1(sext_ln11_2_fu_450_p1[11]),
        .I2(sext_ln11_1_fu_394_p1),
        .I3(y_9_fu_460_p2[11]),
        .I4(sext_ln11_2_fu_450_p1[16]),
        .I5(y_9_fu_460_p2__0),
        .O(\xs_4_reg_1716[4]_i_8_n_0 ));
  FDRE \xs_4_reg_1716_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_13_reg_1704_reg[3]_i_1_n_11 ),
        .Q(xs_4_reg_1716[0]),
        .R(1'b0));
  FDRE \xs_4_reg_1716_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\xs_4_reg_1716_reg[4]_i_1_n_9 ),
        .Q(xs_4_reg_1716[10]),
        .R(1'b0));
  FDRE \xs_4_reg_1716_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\xs_4_reg_1716_reg[4]_i_1_n_8 ),
        .Q(xs_4_reg_1716[11]),
        .R(1'b0));
  FDRE \xs_4_reg_1716_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\xs_4_reg_1716_reg[13]_i_1_n_15 ),
        .Q(xs_4_reg_1716[12]),
        .R(1'b0));
  FDRE \xs_4_reg_1716_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\xs_4_reg_1716_reg[13]_i_1_n_14 ),
        .Q(xs_4_reg_1716[13]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \xs_4_reg_1716_reg[13]_i_1 
       (.CI(\xs_4_reg_1716_reg[4]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_xs_4_reg_1716_reg[13]_i_1_CO_UNCONNECTED [7:1],\xs_4_reg_1716_reg[13]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\xs_4_reg_1716_reg[13]_i_2_n_15 }),
        .O({\NLW_xs_4_reg_1716_reg[13]_i_1_O_UNCONNECTED [7:2],\xs_4_reg_1716_reg[13]_i_1_n_14 ,\xs_4_reg_1716_reg[13]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,sext_ln27_2_fu_492_p10,\xs_4_reg_1716_reg[13]_i_2_n_15 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \xs_4_reg_1716_reg[13]_i_2 
       (.CI(\xs_4_reg_1716_reg[4]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_xs_4_reg_1716_reg[13]_i_2_CO_UNCONNECTED [7:1],\xs_4_reg_1716_reg[13]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,sext_ln27_fu_408_p1[14]}),
        .O({\NLW_xs_4_reg_1716_reg[13]_i_2_O_UNCONNECTED [7:2],sext_ln27_2_fu_492_p10,\xs_4_reg_1716_reg[13]_i_2_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,sext_ln27_fu_408_p1[15:14]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \xs_4_reg_1716_reg[13]_i_3 
       (.CI(\xs_4_reg_1716_reg[4]_i_9_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_xs_4_reg_1716_reg[13]_i_3_CO_UNCONNECTED [7:2],sext_ln27_fu_408_p1[15],\NLW_xs_4_reg_1716_reg[13]_i_3_CO_UNCONNECTED [0]}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_0_in0_out[16]}),
        .O({\NLW_xs_4_reg_1716_reg[13]_i_3_O_UNCONNECTED [7:1],sext_ln27_fu_408_p1[14]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,\xs_4_reg_1716[13]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \xs_4_reg_1716_reg[13]_i_6 
       (.CI(\xs_4_reg_1716_reg[4]_i_32_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_xs_4_reg_1716_reg[13]_i_6_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_xs_4_reg_1716_reg[13]_i_6_O_UNCONNECTED [7:1],x_2_fu_286_p2[16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\xs_4_reg_1716[13]_i_7_n_0 }));
  FDRE \xs_4_reg_1716_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_13_reg_1704_reg[3]_i_1_n_10 ),
        .Q(xs_4_reg_1716[1]),
        .R(1'b0));
  FDRE \xs_4_reg_1716_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_13_reg_1704_reg[3]_i_1_n_9 ),
        .Q(xs_4_reg_1716[2]),
        .R(1'b0));
  FDRE \xs_4_reg_1716_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_13_reg_1704_reg[3]_i_1_n_8 ),
        .Q(xs_4_reg_1716[3]),
        .R(1'b0));
  FDRE \xs_4_reg_1716_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\xs_4_reg_1716_reg[4]_i_1_n_15 ),
        .Q(xs_4_reg_1716[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \xs_4_reg_1716_reg[4]_i_1 
       (.CI(\x_13_reg_1704_reg[3]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\xs_4_reg_1716_reg[4]_i_1_n_0 ,\xs_4_reg_1716_reg[4]_i_1_n_1 ,\xs_4_reg_1716_reg[4]_i_1_n_2 ,\xs_4_reg_1716_reg[4]_i_1_n_3 ,\xs_4_reg_1716_reg[4]_i_1_n_4 ,\xs_4_reg_1716_reg[4]_i_1_n_5 ,\xs_4_reg_1716_reg[4]_i_1_n_6 ,\xs_4_reg_1716_reg[4]_i_1_n_7 }),
        .DI({\xs_4_reg_1716_reg[4]_i_2_n_8 ,\xs_4_reg_1716_reg[4]_i_2_n_9 ,\xs_4_reg_1716_reg[4]_i_2_n_10 ,\xs_4_reg_1716_reg[4]_i_2_n_11 ,\xs_4_reg_1716_reg[4]_i_2_n_12 ,\xs_4_reg_1716_reg[4]_i_2_n_13 ,\xs_4_reg_1716_reg[4]_i_2_n_14 ,\xs_4_reg_1716_reg[4]_i_2_n_15 }),
        .O({\xs_4_reg_1716_reg[4]_i_1_n_8 ,\xs_4_reg_1716_reg[4]_i_1_n_9 ,\xs_4_reg_1716_reg[4]_i_1_n_10 ,\xs_4_reg_1716_reg[4]_i_1_n_11 ,\xs_4_reg_1716_reg[4]_i_1_n_12 ,\xs_4_reg_1716_reg[4]_i_1_n_13 ,\xs_4_reg_1716_reg[4]_i_1_n_14 ,\xs_4_reg_1716_reg[4]_i_1_n_15 }),
        .S({\xs_4_reg_1716_reg[4]_i_2_n_8 ,\xs_4_reg_1716_reg[4]_i_2_n_9 ,\xs_4_reg_1716[4]_i_3_n_0 ,\xs_4_reg_1716[4]_i_4_n_0 ,\xs_4_reg_1716[4]_i_5_n_0 ,\xs_4_reg_1716[4]_i_6_n_0 ,\xs_4_reg_1716[4]_i_7_n_0 ,\xs_4_reg_1716[4]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \xs_4_reg_1716_reg[4]_i_2 
       (.CI(\x_13_reg_1704_reg[3]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\xs_4_reg_1716_reg[4]_i_2_n_0 ,\xs_4_reg_1716_reg[4]_i_2_n_1 ,\xs_4_reg_1716_reg[4]_i_2_n_2 ,\xs_4_reg_1716_reg[4]_i_2_n_3 ,\xs_4_reg_1716_reg[4]_i_2_n_4 ,\xs_4_reg_1716_reg[4]_i_2_n_5 ,\xs_4_reg_1716_reg[4]_i_2_n_6 ,\xs_4_reg_1716_reg[4]_i_2_n_7 }),
        .DI(sext_ln27_fu_408_p1[13:6]),
        .O({\xs_4_reg_1716_reg[4]_i_2_n_8 ,\xs_4_reg_1716_reg[4]_i_2_n_9 ,\xs_4_reg_1716_reg[4]_i_2_n_10 ,\xs_4_reg_1716_reg[4]_i_2_n_11 ,\xs_4_reg_1716_reg[4]_i_2_n_12 ,\xs_4_reg_1716_reg[4]_i_2_n_13 ,\xs_4_reg_1716_reg[4]_i_2_n_14 ,\xs_4_reg_1716_reg[4]_i_2_n_15 }),
        .S({sext_ln27_fu_408_p1[13:12],\xs_4_reg_1716[4]_i_10_n_0 ,\xs_4_reg_1716[4]_i_11_n_0 ,\xs_4_reg_1716[4]_i_12_n_0 ,\xs_4_reg_1716[4]_i_13_n_0 ,\xs_4_reg_1716[4]_i_14_n_0 ,\xs_4_reg_1716[4]_i_15_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \xs_4_reg_1716_reg[4]_i_32 
       (.CI(\x_13_reg_1704_reg[3]_i_64_n_0 ),
        .CI_TOP(1'b0),
        .CO({\xs_4_reg_1716_reg[4]_i_32_n_0 ,\xs_4_reg_1716_reg[4]_i_32_n_1 ,\xs_4_reg_1716_reg[4]_i_32_n_2 ,\xs_4_reg_1716_reg[4]_i_32_n_3 ,\xs_4_reg_1716_reg[4]_i_32_n_4 ,\xs_4_reg_1716_reg[4]_i_32_n_5 ,\xs_4_reg_1716_reg[4]_i_32_n_6 ,\xs_4_reg_1716_reg[4]_i_32_n_7 }),
        .DI({zext_ln10_fu_252_p1[15:12],\xs_4_reg_1716[4]_i_33_n_0 ,\xs_4_reg_1716[4]_i_34_n_0 ,zext_ln10_fu_252_p1[9:8]}),
        .O(x_2_fu_286_p2[15:8]),
        .S({\xs_4_reg_1716[4]_i_35_n_0 ,\xs_4_reg_1716[4]_i_36_n_0 ,\xs_4_reg_1716[4]_i_37_n_0 ,\xs_4_reg_1716[4]_i_38_n_0 ,\xs_4_reg_1716[4]_i_39_n_0 ,\xs_4_reg_1716[4]_i_40_n_0 ,\xs_4_reg_1716[4]_i_41_n_0 ,\xs_4_reg_1716[4]_i_42_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \xs_4_reg_1716_reg[4]_i_9 
       (.CI(\x_13_reg_1704_reg[3]_i_11_n_0 ),
        .CI_TOP(1'b0),
        .CO({\xs_4_reg_1716_reg[4]_i_9_n_0 ,\xs_4_reg_1716_reg[4]_i_9_n_1 ,\xs_4_reg_1716_reg[4]_i_9_n_2 ,\xs_4_reg_1716_reg[4]_i_9_n_3 ,\xs_4_reg_1716_reg[4]_i_9_n_4 ,\xs_4_reg_1716_reg[4]_i_9_n_5 ,\xs_4_reg_1716_reg[4]_i_9_n_6 ,\xs_4_reg_1716_reg[4]_i_9_n_7 }),
        .DI(p_0_in0_out[15:8]),
        .O(sext_ln27_fu_408_p1[13:6]),
        .S({\xs_4_reg_1716[4]_i_24_n_0 ,\xs_4_reg_1716[4]_i_25_n_0 ,\xs_4_reg_1716[4]_i_26_n_0 ,\xs_4_reg_1716[4]_i_27_n_0 ,\xs_4_reg_1716[4]_i_28_n_0 ,\xs_4_reg_1716[4]_i_29_n_0 ,\xs_4_reg_1716[4]_i_30_n_0 ,\xs_4_reg_1716[4]_i_31_n_0 }));
  FDRE \xs_4_reg_1716_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\xs_4_reg_1716_reg[4]_i_1_n_14 ),
        .Q(xs_4_reg_1716[5]),
        .R(1'b0));
  FDRE \xs_4_reg_1716_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\xs_4_reg_1716_reg[4]_i_1_n_13 ),
        .Q(xs_4_reg_1716[6]),
        .R(1'b0));
  FDRE \xs_4_reg_1716_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\xs_4_reg_1716_reg[4]_i_1_n_12 ),
        .Q(xs_4_reg_1716[7]),
        .R(1'b0));
  FDRE \xs_4_reg_1716_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\xs_4_reg_1716_reg[4]_i_1_n_11 ),
        .Q(xs_4_reg_1716[8]),
        .R(1'b0));
  FDRE \xs_4_reg_1716_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\xs_4_reg_1716_reg[4]_i_1_n_10 ),
        .Q(xs_4_reg_1716[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \y_13_reg_1710[3]_i_10 
       (.I0(sext_ln11_2_fu_450_p1[0]),
        .I1(y_5_fu_360_p2[16]),
        .I2(y_6_fu_372_p2[16]),
        .I3(B0),
        .I4(y_9_fu_460_p2[0]),
        .O(y_10_fu_474_p3__0[0]));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \y_13_reg_1710[3]_i_11 
       (.I0(y_9_fu_460_p2[7]),
        .I1(sext_ln11_2_fu_450_p1[7]),
        .I2(\xs_4_reg_1716_reg[4]_i_2_n_13 ),
        .I3(sext_ln11_2_fu_450_p1[16]),
        .I4(sext_ln11_1_fu_394_p1),
        .I5(y_9_fu_460_p2__0),
        .O(\y_13_reg_1710[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \y_13_reg_1710[3]_i_12 
       (.I0(y_9_fu_460_p2[6]),
        .I1(sext_ln11_2_fu_450_p1[6]),
        .I2(\xs_4_reg_1716_reg[4]_i_2_n_14 ),
        .I3(sext_ln11_2_fu_450_p1[16]),
        .I4(sext_ln11_1_fu_394_p1),
        .I5(y_9_fu_460_p2__0),
        .O(\y_13_reg_1710[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \y_13_reg_1710[3]_i_13 
       (.I0(y_9_fu_460_p2[5]),
        .I1(sext_ln11_2_fu_450_p1[5]),
        .I2(\xs_4_reg_1716_reg[4]_i_2_n_15 ),
        .I3(sext_ln11_2_fu_450_p1[16]),
        .I4(sext_ln11_1_fu_394_p1),
        .I5(y_9_fu_460_p2__0),
        .O(\y_13_reg_1710[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \y_13_reg_1710[3]_i_14 
       (.I0(y_9_fu_460_p2[4]),
        .I1(sext_ln11_2_fu_450_p1[4]),
        .I2(\x_13_reg_1704_reg[3]_i_2_n_8 ),
        .I3(sext_ln11_2_fu_450_p1[16]),
        .I4(sext_ln11_1_fu_394_p1),
        .I5(y_9_fu_460_p2__0),
        .O(\y_13_reg_1710[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \y_13_reg_1710[3]_i_15 
       (.I0(y_9_fu_460_p2[3]),
        .I1(sext_ln11_2_fu_450_p1[3]),
        .I2(\x_13_reg_1704_reg[3]_i_2_n_9 ),
        .I3(sext_ln11_2_fu_450_p1[16]),
        .I4(sext_ln11_1_fu_394_p1),
        .I5(y_9_fu_460_p2__0),
        .O(\y_13_reg_1710[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \y_13_reg_1710[3]_i_16 
       (.I0(y_9_fu_460_p2[2]),
        .I1(sext_ln11_2_fu_450_p1[2]),
        .I2(\x_13_reg_1704_reg[3]_i_2_n_10 ),
        .I3(sext_ln11_2_fu_450_p1[16]),
        .I4(sext_ln11_1_fu_394_p1),
        .I5(y_9_fu_460_p2__0),
        .O(\y_13_reg_1710[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \y_13_reg_1710[3]_i_17 
       (.I0(y_9_fu_460_p2[1]),
        .I1(sext_ln11_2_fu_450_p1[1]),
        .I2(\x_13_reg_1704_reg[3]_i_2_n_11 ),
        .I3(sext_ln11_2_fu_450_p1[16]),
        .I4(sext_ln11_1_fu_394_p1),
        .I5(y_9_fu_460_p2__0),
        .O(\y_13_reg_1710[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \y_13_reg_1710[3]_i_18 
       (.I0(y_9_fu_460_p2[0]),
        .I1(sext_ln11_2_fu_450_p1[0]),
        .I2(\x_13_reg_1704_reg[3]_i_2_n_12 ),
        .I3(sext_ln11_2_fu_450_p1[16]),
        .I4(sext_ln11_1_fu_394_p1),
        .I5(y_9_fu_460_p2__0),
        .O(\y_13_reg_1710[3]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h0145FD75)) 
    \y_13_reg_1710[3]_i_2 
       (.I0(y_9_fu_460_p2__0),
        .I1(B0),
        .I2(y_6_fu_372_p2[16]),
        .I3(y_5_fu_360_p2[16]),
        .I4(sext_ln11_2_fu_450_p1[16]),
        .O(\y_13_reg_1710[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h665A)) 
    \y_13_reg_1710[3]_i_21 
       (.I0(sext_ln27_fu_408_p1[7]),
        .I1(y_5_fu_360_p2[7]),
        .I2(y_6_fu_372_p2[7]),
        .I3(B0),
        .O(\y_13_reg_1710[3]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h665A)) 
    \y_13_reg_1710[3]_i_22 
       (.I0(sext_ln27_fu_408_p1[6]),
        .I1(y_5_fu_360_p2[6]),
        .I2(y_6_fu_372_p2[6]),
        .I3(B0),
        .O(\y_13_reg_1710[3]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h665A)) 
    \y_13_reg_1710[3]_i_23 
       (.I0(sext_ln27_fu_408_p1[5]),
        .I1(y_5_fu_360_p2[5]),
        .I2(y_6_fu_372_p2[5]),
        .I3(B0),
        .O(\y_13_reg_1710[3]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h665A)) 
    \y_13_reg_1710[3]_i_24 
       (.I0(sext_ln27_fu_408_p1[4]),
        .I1(y_5_fu_360_p2[4]),
        .I2(y_6_fu_372_p2[4]),
        .I3(B0),
        .O(\y_13_reg_1710[3]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h665A)) 
    \y_13_reg_1710[3]_i_25 
       (.I0(sext_ln27_fu_408_p1[3]),
        .I1(y_5_fu_360_p2[3]),
        .I2(y_6_fu_372_p2[3]),
        .I3(B0),
        .O(\y_13_reg_1710[3]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h665A)) 
    \y_13_reg_1710[3]_i_26 
       (.I0(sext_ln27_fu_408_p1[2]),
        .I1(y_5_fu_360_p2[2]),
        .I2(y_6_fu_372_p2[2]),
        .I3(B0),
        .O(\y_13_reg_1710[3]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h665A)) 
    \y_13_reg_1710[3]_i_27 
       (.I0(sext_ln27_fu_408_p1[1]),
        .I1(y_5_fu_360_p2[1]),
        .I2(y_6_fu_372_p2[1]),
        .I3(B0),
        .O(\y_13_reg_1710[3]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h665A)) 
    \y_13_reg_1710[3]_i_28 
       (.I0(sext_ln27_fu_408_p1[0]),
        .I1(y_5_fu_360_p2[0]),
        .I2(y_6_fu_372_p2[0]),
        .I3(B0),
        .O(\y_13_reg_1710[3]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \y_13_reg_1710[3]_i_29 
       (.I0(y_5_fu_360_p2[7]),
        .I1(y_6_fu_372_p2[7]),
        .I2(B0),
        .O(sext_ln11_1_fu_394_p1__0[7]));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \y_13_reg_1710[3]_i_3 
       (.I0(sext_ln11_2_fu_450_p1[7]),
        .I1(y_5_fu_360_p2[16]),
        .I2(y_6_fu_372_p2[16]),
        .I3(B0),
        .I4(y_9_fu_460_p2[7]),
        .O(y_10_fu_474_p3__0[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \y_13_reg_1710[3]_i_30 
       (.I0(y_5_fu_360_p2[6]),
        .I1(y_6_fu_372_p2[6]),
        .I2(B0),
        .O(sext_ln11_1_fu_394_p1__0[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \y_13_reg_1710[3]_i_31 
       (.I0(y_5_fu_360_p2[5]),
        .I1(y_6_fu_372_p2[5]),
        .I2(B0),
        .O(sext_ln11_1_fu_394_p1__0[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \y_13_reg_1710[3]_i_32 
       (.I0(y_5_fu_360_p2[4]),
        .I1(y_6_fu_372_p2[4]),
        .I2(B0),
        .O(sext_ln11_1_fu_394_p1__0[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \y_13_reg_1710[3]_i_33 
       (.I0(y_5_fu_360_p2[3]),
        .I1(y_6_fu_372_p2[3]),
        .I2(B0),
        .O(sext_ln11_1_fu_394_p1__0[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \y_13_reg_1710[3]_i_34 
       (.I0(y_5_fu_360_p2[2]),
        .I1(y_6_fu_372_p2[2]),
        .I2(B0),
        .O(sext_ln11_1_fu_394_p1__0[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \y_13_reg_1710[3]_i_35 
       (.I0(y_5_fu_360_p2[1]),
        .I1(y_6_fu_372_p2[1]),
        .I2(B0),
        .O(sext_ln11_1_fu_394_p1__0[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \y_13_reg_1710[3]_i_36 
       (.I0(y_5_fu_360_p2[0]),
        .I1(y_6_fu_372_p2[0]),
        .I2(B0),
        .O(sext_ln11_1_fu_394_p1__0[0]));
  LUT4 #(
    .INIT(16'hE41B)) 
    \y_13_reg_1710[3]_i_37 
       (.I0(B0),
        .I1(y_6_fu_372_p2[7]),
        .I2(y_5_fu_360_p2[7]),
        .I3(sext_ln27_fu_408_p1[7]),
        .O(\y_13_reg_1710[3]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'hE41B)) 
    \y_13_reg_1710[3]_i_38 
       (.I0(B0),
        .I1(y_6_fu_372_p2[6]),
        .I2(y_5_fu_360_p2[6]),
        .I3(sext_ln27_fu_408_p1[6]),
        .O(\y_13_reg_1710[3]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'hE41B)) 
    \y_13_reg_1710[3]_i_39 
       (.I0(B0),
        .I1(y_6_fu_372_p2[5]),
        .I2(y_5_fu_360_p2[5]),
        .I3(sext_ln27_fu_408_p1[5]),
        .O(\y_13_reg_1710[3]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \y_13_reg_1710[3]_i_4 
       (.I0(sext_ln11_2_fu_450_p1[6]),
        .I1(y_5_fu_360_p2[16]),
        .I2(y_6_fu_372_p2[16]),
        .I3(B0),
        .I4(y_9_fu_460_p2[6]),
        .O(y_10_fu_474_p3__0[6]));
  LUT4 #(
    .INIT(16'hE41B)) 
    \y_13_reg_1710[3]_i_40 
       (.I0(B0),
        .I1(y_6_fu_372_p2[4]),
        .I2(y_5_fu_360_p2[4]),
        .I3(sext_ln27_fu_408_p1[4]),
        .O(\y_13_reg_1710[3]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hE41B)) 
    \y_13_reg_1710[3]_i_41 
       (.I0(B0),
        .I1(y_6_fu_372_p2[3]),
        .I2(y_5_fu_360_p2[3]),
        .I3(sext_ln27_fu_408_p1[3]),
        .O(\y_13_reg_1710[3]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'hE41B)) 
    \y_13_reg_1710[3]_i_42 
       (.I0(B0),
        .I1(y_6_fu_372_p2[2]),
        .I2(y_5_fu_360_p2[2]),
        .I3(sext_ln27_fu_408_p1[2]),
        .O(\y_13_reg_1710[3]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'hE41B)) 
    \y_13_reg_1710[3]_i_43 
       (.I0(B0),
        .I1(y_6_fu_372_p2[1]),
        .I2(y_5_fu_360_p2[1]),
        .I3(sext_ln27_fu_408_p1[1]),
        .O(\y_13_reg_1710[3]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hE41B)) 
    \y_13_reg_1710[3]_i_44 
       (.I0(B0),
        .I1(y_6_fu_372_p2[0]),
        .I2(y_5_fu_360_p2[0]),
        .I3(sext_ln27_fu_408_p1[0]),
        .O(\y_13_reg_1710[3]_i_44_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \y_13_reg_1710[3]_i_5 
       (.I0(sext_ln11_2_fu_450_p1[5]),
        .I1(y_5_fu_360_p2[16]),
        .I2(y_6_fu_372_p2[16]),
        .I3(B0),
        .I4(y_9_fu_460_p2[5]),
        .O(y_10_fu_474_p3__0[5]));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \y_13_reg_1710[3]_i_6 
       (.I0(sext_ln11_2_fu_450_p1[4]),
        .I1(y_5_fu_360_p2[16]),
        .I2(y_6_fu_372_p2[16]),
        .I3(B0),
        .I4(y_9_fu_460_p2[4]),
        .O(y_10_fu_474_p3__0[4]));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \y_13_reg_1710[3]_i_7 
       (.I0(sext_ln11_2_fu_450_p1[3]),
        .I1(y_5_fu_360_p2[16]),
        .I2(y_6_fu_372_p2[16]),
        .I3(B0),
        .I4(y_9_fu_460_p2[3]),
        .O(y_10_fu_474_p3__0[3]));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \y_13_reg_1710[3]_i_8 
       (.I0(sext_ln11_2_fu_450_p1[2]),
        .I1(y_5_fu_360_p2[16]),
        .I2(y_6_fu_372_p2[16]),
        .I3(B0),
        .I4(y_9_fu_460_p2[2]),
        .O(y_10_fu_474_p3__0[2]));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \y_13_reg_1710[3]_i_9 
       (.I0(sext_ln11_2_fu_450_p1[1]),
        .I1(y_5_fu_360_p2[16]),
        .I2(y_6_fu_372_p2[16]),
        .I3(B0),
        .I4(y_9_fu_460_p2[1]),
        .O(y_10_fu_474_p3__0[1]));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \y_13_reg_1710[8]_i_10 
       (.I0(y_9_fu_460_p2[15]),
        .I1(sext_ln11_2_fu_450_p1[15]),
        .I2(sext_ln27_2_fu_492_p10),
        .I3(sext_ln11_2_fu_450_p1[16]),
        .I4(sext_ln11_1_fu_394_p1),
        .I5(y_9_fu_460_p2__0),
        .O(\y_13_reg_1710[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \y_13_reg_1710[8]_i_11 
       (.I0(y_9_fu_460_p2[14]),
        .I1(sext_ln11_2_fu_450_p1[14]),
        .I2(sext_ln27_2_fu_492_p10),
        .I3(sext_ln11_2_fu_450_p1[16]),
        .I4(sext_ln11_1_fu_394_p1),
        .I5(y_9_fu_460_p2__0),
        .O(\y_13_reg_1710[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \y_13_reg_1710[8]_i_12 
       (.I0(y_9_fu_460_p2[13]),
        .I1(sext_ln11_2_fu_450_p1[13]),
        .I2(\xs_4_reg_1716_reg[13]_i_2_n_15 ),
        .I3(sext_ln11_2_fu_450_p1[16]),
        .I4(sext_ln11_1_fu_394_p1),
        .I5(y_9_fu_460_p2__0),
        .O(\y_13_reg_1710[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \y_13_reg_1710[8]_i_13 
       (.I0(y_9_fu_460_p2[12]),
        .I1(sext_ln11_2_fu_450_p1[12]),
        .I2(\xs_4_reg_1716_reg[4]_i_2_n_8 ),
        .I3(sext_ln11_2_fu_450_p1[16]),
        .I4(sext_ln11_1_fu_394_p1),
        .I5(y_9_fu_460_p2__0),
        .O(\y_13_reg_1710[8]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \y_13_reg_1710[8]_i_14 
       (.I0(y_9_fu_460_p2[11]),
        .I1(sext_ln11_2_fu_450_p1[11]),
        .I2(\xs_4_reg_1716_reg[4]_i_2_n_9 ),
        .I3(sext_ln11_2_fu_450_p1[16]),
        .I4(sext_ln11_1_fu_394_p1),
        .I5(y_9_fu_460_p2__0),
        .O(\y_13_reg_1710[8]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \y_13_reg_1710[8]_i_15 
       (.I0(y_9_fu_460_p2[10]),
        .I1(sext_ln11_2_fu_450_p1[10]),
        .I2(\xs_4_reg_1716_reg[4]_i_2_n_10 ),
        .I3(sext_ln11_2_fu_450_p1[16]),
        .I4(sext_ln11_1_fu_394_p1),
        .I5(y_9_fu_460_p2__0),
        .O(\y_13_reg_1710[8]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \y_13_reg_1710[8]_i_16 
       (.I0(y_9_fu_460_p2[9]),
        .I1(sext_ln11_2_fu_450_p1[9]),
        .I2(\xs_4_reg_1716_reg[4]_i_2_n_11 ),
        .I3(sext_ln11_2_fu_450_p1[16]),
        .I4(sext_ln11_1_fu_394_p1),
        .I5(y_9_fu_460_p2__0),
        .O(\y_13_reg_1710[8]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \y_13_reg_1710[8]_i_17 
       (.I0(y_9_fu_460_p2[8]),
        .I1(sext_ln11_2_fu_450_p1[8]),
        .I2(\xs_4_reg_1716_reg[4]_i_2_n_12 ),
        .I3(sext_ln11_2_fu_450_p1[16]),
        .I4(sext_ln11_1_fu_394_p1),
        .I5(y_9_fu_460_p2__0),
        .O(\y_13_reg_1710[8]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \y_13_reg_1710[8]_i_2 
       (.I0(sext_ln11_2_fu_450_p1[15]),
        .I1(y_5_fu_360_p2[16]),
        .I2(y_6_fu_372_p2[16]),
        .I3(B0),
        .I4(y_9_fu_460_p2[15]),
        .O(y_10_fu_474_p3__0[15]));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \y_13_reg_1710[8]_i_3 
       (.I0(sext_ln11_2_fu_450_p1[14]),
        .I1(y_5_fu_360_p2[16]),
        .I2(y_6_fu_372_p2[16]),
        .I3(B0),
        .I4(y_9_fu_460_p2[14]),
        .O(y_10_fu_474_p3__0[14]));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \y_13_reg_1710[8]_i_4 
       (.I0(sext_ln11_2_fu_450_p1[13]),
        .I1(y_5_fu_360_p2[16]),
        .I2(y_6_fu_372_p2[16]),
        .I3(B0),
        .I4(y_9_fu_460_p2[13]),
        .O(y_10_fu_474_p3__0[13]));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \y_13_reg_1710[8]_i_5 
       (.I0(sext_ln11_2_fu_450_p1[12]),
        .I1(y_5_fu_360_p2[16]),
        .I2(y_6_fu_372_p2[16]),
        .I3(B0),
        .I4(y_9_fu_460_p2[12]),
        .O(y_10_fu_474_p3__0[12]));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \y_13_reg_1710[8]_i_6 
       (.I0(sext_ln11_2_fu_450_p1[11]),
        .I1(y_5_fu_360_p2[16]),
        .I2(y_6_fu_372_p2[16]),
        .I3(B0),
        .I4(y_9_fu_460_p2[11]),
        .O(y_10_fu_474_p3__0[11]));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \y_13_reg_1710[8]_i_7 
       (.I0(sext_ln11_2_fu_450_p1[10]),
        .I1(y_5_fu_360_p2[16]),
        .I2(y_6_fu_372_p2[16]),
        .I3(B0),
        .I4(y_9_fu_460_p2[10]),
        .O(y_10_fu_474_p3__0[10]));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \y_13_reg_1710[8]_i_8 
       (.I0(sext_ln11_2_fu_450_p1[9]),
        .I1(y_5_fu_360_p2[16]),
        .I2(y_6_fu_372_p2[16]),
        .I3(B0),
        .I4(y_9_fu_460_p2[9]),
        .O(y_10_fu_474_p3__0[9]));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \y_13_reg_1710[8]_i_9 
       (.I0(sext_ln11_2_fu_450_p1[8]),
        .I1(y_5_fu_360_p2[16]),
        .I2(y_6_fu_372_p2[16]),
        .I3(B0),
        .I4(y_9_fu_460_p2[8]),
        .O(y_10_fu_474_p3__0[8]));
  FDRE \y_13_reg_1710_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_550_p3[0]),
        .Q(y_13_reg_1710[0]),
        .R(1'b0));
  FDRE \y_13_reg_1710_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_550_p3[10]),
        .Q(y_13_reg_1710[10]),
        .R(1'b0));
  FDRE \y_13_reg_1710_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_550_p3[11]),
        .Q(y_13_reg_1710[11]),
        .R(1'b0));
  FDRE \y_13_reg_1710_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_550_p3[12]),
        .Q(y_13_reg_1710[12]),
        .R(1'b0));
  FDRE \y_13_reg_1710_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_550_p3[13]),
        .Q(y_13_reg_1710[13]),
        .R(1'b0));
  FDRE \y_13_reg_1710_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_550_p3[14]),
        .Q(y_13_reg_1710[14]),
        .R(1'b0));
  FDRE \y_13_reg_1710_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_550_p3[15]),
        .Q(y_13_reg_1710[15]),
        .R(1'b0));
  FDRE \y_13_reg_1710_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_550_p3[16]),
        .Q(y_13_reg_1710[16]),
        .R(1'b0));
  FDRE \y_13_reg_1710_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_550_p3[1]),
        .Q(y_13_reg_1710[1]),
        .R(1'b0));
  FDRE \y_13_reg_1710_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_550_p3[2]),
        .Q(y_13_reg_1710[2]),
        .R(1'b0));
  FDRE \y_13_reg_1710_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_550_p3[3]),
        .Q(y_13_reg_1710[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_13_reg_1710_reg[3]_i_1 
       (.CI(\y_13_reg_1710[3]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_13_reg_1710_reg[3]_i_1_n_0 ,\y_13_reg_1710_reg[3]_i_1_n_1 ,\y_13_reg_1710_reg[3]_i_1_n_2 ,\y_13_reg_1710_reg[3]_i_1_n_3 ,\y_13_reg_1710_reg[3]_i_1_n_4 ,\y_13_reg_1710_reg[3]_i_1_n_5 ,\y_13_reg_1710_reg[3]_i_1_n_6 ,\y_13_reg_1710_reg[3]_i_1_n_7 }),
        .DI(y_10_fu_474_p3__0[7:0]),
        .O(y_13_fu_550_p3[7:0]),
        .S({\y_13_reg_1710[3]_i_11_n_0 ,\y_13_reg_1710[3]_i_12_n_0 ,\y_13_reg_1710[3]_i_13_n_0 ,\y_13_reg_1710[3]_i_14_n_0 ,\y_13_reg_1710[3]_i_15_n_0 ,\y_13_reg_1710[3]_i_16_n_0 ,\y_13_reg_1710[3]_i_17_n_0 ,\y_13_reg_1710[3]_i_18_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_13_reg_1710_reg[3]_i_19 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\y_13_reg_1710_reg[3]_i_19_n_0 ,\y_13_reg_1710_reg[3]_i_19_n_1 ,\y_13_reg_1710_reg[3]_i_19_n_2 ,\y_13_reg_1710_reg[3]_i_19_n_3 ,\y_13_reg_1710_reg[3]_i_19_n_4 ,\y_13_reg_1710_reg[3]_i_19_n_5 ,\y_13_reg_1710_reg[3]_i_19_n_6 ,\y_13_reg_1710_reg[3]_i_19_n_7 }),
        .DI(sext_ln27_fu_408_p1[7:0]),
        .O(sext_ln11_2_fu_450_p1[7:0]),
        .S({\y_13_reg_1710[3]_i_21_n_0 ,\y_13_reg_1710[3]_i_22_n_0 ,\y_13_reg_1710[3]_i_23_n_0 ,\y_13_reg_1710[3]_i_24_n_0 ,\y_13_reg_1710[3]_i_25_n_0 ,\y_13_reg_1710[3]_i_26_n_0 ,\y_13_reg_1710[3]_i_27_n_0 ,\y_13_reg_1710[3]_i_28_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_13_reg_1710_reg[3]_i_20 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\y_13_reg_1710_reg[3]_i_20_n_0 ,\y_13_reg_1710_reg[3]_i_20_n_1 ,\y_13_reg_1710_reg[3]_i_20_n_2 ,\y_13_reg_1710_reg[3]_i_20_n_3 ,\y_13_reg_1710_reg[3]_i_20_n_4 ,\y_13_reg_1710_reg[3]_i_20_n_5 ,\y_13_reg_1710_reg[3]_i_20_n_6 ,\y_13_reg_1710_reg[3]_i_20_n_7 }),
        .DI(sext_ln11_1_fu_394_p1__0[7:0]),
        .O(y_9_fu_460_p2[7:0]),
        .S({\y_13_reg_1710[3]_i_37_n_0 ,\y_13_reg_1710[3]_i_38_n_0 ,\y_13_reg_1710[3]_i_39_n_0 ,\y_13_reg_1710[3]_i_40_n_0 ,\y_13_reg_1710[3]_i_41_n_0 ,\y_13_reg_1710[3]_i_42_n_0 ,\y_13_reg_1710[3]_i_43_n_0 ,\y_13_reg_1710[3]_i_44_n_0 }));
  FDRE \y_13_reg_1710_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_550_p3[4]),
        .Q(y_13_reg_1710[4]),
        .R(1'b0));
  FDRE \y_13_reg_1710_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_550_p3[5]),
        .Q(y_13_reg_1710[5]),
        .R(1'b0));
  FDRE \y_13_reg_1710_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_550_p3[6]),
        .Q(y_13_reg_1710[6]),
        .R(1'b0));
  FDRE \y_13_reg_1710_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_550_p3[7]),
        .Q(y_13_reg_1710[7]),
        .R(1'b0));
  FDRE \y_13_reg_1710_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_550_p3[8]),
        .Q(y_13_reg_1710[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_13_reg_1710_reg[8]_i_1 
       (.CI(\y_13_reg_1710_reg[3]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_13_reg_1710_reg[8]_i_1_n_0 ,\y_13_reg_1710_reg[8]_i_1_n_1 ,\y_13_reg_1710_reg[8]_i_1_n_2 ,\y_13_reg_1710_reg[8]_i_1_n_3 ,\y_13_reg_1710_reg[8]_i_1_n_4 ,\y_13_reg_1710_reg[8]_i_1_n_5 ,\y_13_reg_1710_reg[8]_i_1_n_6 ,\y_13_reg_1710_reg[8]_i_1_n_7 }),
        .DI(y_10_fu_474_p3__0[15:8]),
        .O(y_13_fu_550_p3[15:8]),
        .S({\y_13_reg_1710[8]_i_10_n_0 ,\y_13_reg_1710[8]_i_11_n_0 ,\y_13_reg_1710[8]_i_12_n_0 ,\y_13_reg_1710[8]_i_13_n_0 ,\y_13_reg_1710[8]_i_14_n_0 ,\y_13_reg_1710[8]_i_15_n_0 ,\y_13_reg_1710[8]_i_16_n_0 ,\y_13_reg_1710[8]_i_17_n_0 }));
  FDRE \y_13_reg_1710_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_550_p3[9]),
        .Q(y_13_reg_1710[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \y_26_reg_1750[15]_i_10 
       (.I0(x_25_fu_861_p3[16]),
        .I1(y_25_fu_869_p3__0[8]),
        .O(\y_26_reg_1750[15]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y_26_reg_1750[15]_i_2 
       (.I0(x_25_fu_861_p3[17]),
        .O(\y_26_reg_1750[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_26_reg_1750[15]_i_3 
       (.I0(y_25_fu_869_p3__0[14]),
        .I1(y_25_fu_869_p3__0[15]),
        .O(\y_26_reg_1750[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_26_reg_1750[15]_i_4 
       (.I0(y_25_fu_869_p3__0[13]),
        .I1(y_25_fu_869_p3__0[14]),
        .O(\y_26_reg_1750[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_26_reg_1750[15]_i_5 
       (.I0(y_25_fu_869_p3__0[12]),
        .I1(y_25_fu_869_p3__0[13]),
        .O(\y_26_reg_1750[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_26_reg_1750[15]_i_6 
       (.I0(y_25_fu_869_p3__0[11]),
        .I1(y_25_fu_869_p3__0[12]),
        .O(\y_26_reg_1750[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_26_reg_1750[15]_i_7 
       (.I0(y_25_fu_869_p3__0[10]),
        .I1(y_25_fu_869_p3__0[11]),
        .O(\y_26_reg_1750[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_26_reg_1750[15]_i_8 
       (.I0(y_25_fu_869_p3__0[10]),
        .I1(x_25_fu_861_p3[17]),
        .O(\y_26_reg_1750[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_26_reg_1750[15]_i_9 
       (.I0(y_25_fu_869_p3__0[9]),
        .I1(x_25_fu_861_p3[17]),
        .O(\y_26_reg_1750[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_26_reg_1750[17]_i_2 
       (.I0(y_25_fu_869_p3__0[16]),
        .I1(y_25_fu_869_p3),
        .O(\y_26_reg_1750[17]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_26_reg_1750[17]_i_3 
       (.I0(y_25_fu_869_p3__0[15]),
        .I1(y_25_fu_869_p3__0[16]),
        .O(\y_26_reg_1750[17]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_26_reg_1750[7]_i_2 
       (.I0(x_25_fu_861_p3[15]),
        .I1(y_25_fu_869_p3__0[7]),
        .O(\y_26_reg_1750[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_26_reg_1750[7]_i_3 
       (.I0(x_25_fu_861_p3[14]),
        .I1(y_25_fu_869_p3__0[6]),
        .O(\y_26_reg_1750[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_26_reg_1750[7]_i_4 
       (.I0(x_25_fu_861_p3[13]),
        .I1(y_25_fu_869_p3__0[5]),
        .O(\y_26_reg_1750[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_26_reg_1750[7]_i_5 
       (.I0(x_25_fu_861_p3[12]),
        .I1(y_25_fu_869_p3__0[4]),
        .O(\y_26_reg_1750[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_26_reg_1750[7]_i_6 
       (.I0(x_25_fu_861_p3[11]),
        .I1(y_25_fu_869_p3__0[3]),
        .O(\y_26_reg_1750[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_26_reg_1750[7]_i_7 
       (.I0(x_25_fu_861_p3[10]),
        .I1(y_25_fu_869_p3__0[2]),
        .O(\y_26_reg_1750[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_26_reg_1750[7]_i_8 
       (.I0(x_25_fu_861_p3[9]),
        .I1(y_25_fu_869_p3__0[1]),
        .O(\y_26_reg_1750[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_26_reg_1750[7]_i_9 
       (.I0(x_25_fu_861_p3[8]),
        .I1(y_25_fu_869_p3__0[0]),
        .O(\y_26_reg_1750[7]_i_9_n_0 ));
  FDRE \y_26_reg_1750_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_919_p2[0]),
        .Q(y_26_reg_1750[0]),
        .R(1'b0));
  FDRE \y_26_reg_1750_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_919_p2[10]),
        .Q(y_26_reg_1750[10]),
        .R(1'b0));
  FDRE \y_26_reg_1750_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_919_p2[11]),
        .Q(y_26_reg_1750[11]),
        .R(1'b0));
  FDRE \y_26_reg_1750_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_919_p2[12]),
        .Q(y_26_reg_1750[12]),
        .R(1'b0));
  FDRE \y_26_reg_1750_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_919_p2[13]),
        .Q(y_26_reg_1750[13]),
        .R(1'b0));
  FDRE \y_26_reg_1750_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_919_p2[14]),
        .Q(y_26_reg_1750[14]),
        .R(1'b0));
  FDRE \y_26_reg_1750_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_919_p2[15]),
        .Q(y_26_reg_1750[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_26_reg_1750_reg[15]_i_1 
       (.CI(\y_26_reg_1750_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_26_reg_1750_reg[15]_i_1_n_0 ,\y_26_reg_1750_reg[15]_i_1_n_1 ,\y_26_reg_1750_reg[15]_i_1_n_2 ,\y_26_reg_1750_reg[15]_i_1_n_3 ,\y_26_reg_1750_reg[15]_i_1_n_4 ,\y_26_reg_1750_reg[15]_i_1_n_5 ,\y_26_reg_1750_reg[15]_i_1_n_6 ,\y_26_reg_1750_reg[15]_i_1_n_7 }),
        .DI({y_25_fu_869_p3__0[14:10],\y_26_reg_1750[15]_i_2_n_0 ,x_25_fu_861_p3[17],y_25_fu_869_p3__0[8]}),
        .O(y_26_fu_919_p2[15:8]),
        .S({\y_26_reg_1750[15]_i_3_n_0 ,\y_26_reg_1750[15]_i_4_n_0 ,\y_26_reg_1750[15]_i_5_n_0 ,\y_26_reg_1750[15]_i_6_n_0 ,\y_26_reg_1750[15]_i_7_n_0 ,\y_26_reg_1750[15]_i_8_n_0 ,\y_26_reg_1750[15]_i_9_n_0 ,\y_26_reg_1750[15]_i_10_n_0 }));
  FDRE \y_26_reg_1750_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_919_p2[16]),
        .Q(y_26_reg_1750[16]),
        .R(1'b0));
  FDRE \y_26_reg_1750_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_919_p2[17]),
        .Q(y_26_reg_1750[17]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_26_reg_1750_reg[17]_i_1 
       (.CI(\y_26_reg_1750_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_y_26_reg_1750_reg[17]_i_1_CO_UNCONNECTED [7:1],\y_26_reg_1750_reg[17]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_25_fu_869_p3__0[15]}),
        .O({\NLW_y_26_reg_1750_reg[17]_i_1_O_UNCONNECTED [7:2],y_26_fu_919_p2[17:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\y_26_reg_1750[17]_i_2_n_0 ,\y_26_reg_1750[17]_i_3_n_0 }));
  FDRE \y_26_reg_1750_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_919_p2[1]),
        .Q(y_26_reg_1750[1]),
        .R(1'b0));
  FDRE \y_26_reg_1750_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_919_p2[2]),
        .Q(y_26_reg_1750[2]),
        .R(1'b0));
  FDRE \y_26_reg_1750_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_919_p2[3]),
        .Q(y_26_reg_1750[3]),
        .R(1'b0));
  FDRE \y_26_reg_1750_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_919_p2[4]),
        .Q(y_26_reg_1750[4]),
        .R(1'b0));
  FDRE \y_26_reg_1750_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_919_p2[5]),
        .Q(y_26_reg_1750[5]),
        .R(1'b0));
  FDRE \y_26_reg_1750_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_919_p2[6]),
        .Q(y_26_reg_1750[6]),
        .R(1'b0));
  FDRE \y_26_reg_1750_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_919_p2[7]),
        .Q(y_26_reg_1750[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_26_reg_1750_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\y_26_reg_1750_reg[7]_i_1_n_0 ,\y_26_reg_1750_reg[7]_i_1_n_1 ,\y_26_reg_1750_reg[7]_i_1_n_2 ,\y_26_reg_1750_reg[7]_i_1_n_3 ,\y_26_reg_1750_reg[7]_i_1_n_4 ,\y_26_reg_1750_reg[7]_i_1_n_5 ,\y_26_reg_1750_reg[7]_i_1_n_6 ,\y_26_reg_1750_reg[7]_i_1_n_7 }),
        .DI(y_25_fu_869_p3__0[7:0]),
        .O(y_26_fu_919_p2[7:0]),
        .S({\y_26_reg_1750[7]_i_2_n_0 ,\y_26_reg_1750[7]_i_3_n_0 ,\y_26_reg_1750[7]_i_4_n_0 ,\y_26_reg_1750[7]_i_5_n_0 ,\y_26_reg_1750[7]_i_6_n_0 ,\y_26_reg_1750[7]_i_7_n_0 ,\y_26_reg_1750[7]_i_8_n_0 ,\y_26_reg_1750[7]_i_9_n_0 }));
  FDRE \y_26_reg_1750_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_919_p2[8]),
        .Q(y_26_reg_1750[8]),
        .R(1'b0));
  FDRE \y_26_reg_1750_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_919_p2[9]),
        .Q(y_26_reg_1750[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \y_27_reg_1760[15]_i_10 
       (.I0(y_25_fu_869_p3__0[8]),
        .I1(x_25_fu_861_p3[16]),
        .O(\y_27_reg_1760[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_27_reg_1760[15]_i_3 
       (.I0(y_25_fu_869_p3__0[14]),
        .I1(y_25_fu_869_p3__0[15]),
        .O(\y_27_reg_1760[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_27_reg_1760[15]_i_4 
       (.I0(y_25_fu_869_p3__0[13]),
        .I1(y_25_fu_869_p3__0[14]),
        .O(\y_27_reg_1760[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_27_reg_1760[15]_i_5 
       (.I0(y_25_fu_869_p3__0[12]),
        .I1(y_25_fu_869_p3__0[13]),
        .O(\y_27_reg_1760[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_27_reg_1760[15]_i_6 
       (.I0(y_25_fu_869_p3__0[11]),
        .I1(y_25_fu_869_p3__0[12]),
        .O(\y_27_reg_1760[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_27_reg_1760[15]_i_7 
       (.I0(y_25_fu_869_p3__0[10]),
        .I1(y_25_fu_869_p3__0[11]),
        .O(\y_27_reg_1760[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_27_reg_1760[15]_i_8 
       (.I0(x_25_fu_861_p3[17]),
        .I1(y_25_fu_869_p3__0[10]),
        .O(\y_27_reg_1760[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_27_reg_1760[15]_i_9 
       (.I0(x_25_fu_861_p3[17]),
        .I1(y_25_fu_869_p3__0[9]),
        .O(\y_27_reg_1760[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[17]_i_10 
       (.I0(y_22_fu_785_p3__0[10]),
        .I1(x_22_fu_777_p3[17]),
        .I2(y_22_fu_785_p3),
        .O(\y_27_reg_1760[17]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[17]_i_11 
       (.I0(y_22_fu_785_p3__0[9]),
        .I1(x_22_fu_777_p3[16]),
        .I2(y_22_fu_785_p3),
        .O(\y_27_reg_1760[17]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[17]_i_12 
       (.I0(y_22_fu_785_p3__0[8]),
        .I1(x_22_fu_777_p3[15]),
        .I2(y_22_fu_785_p3),
        .O(\y_27_reg_1760[17]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_27_reg_1760[17]_i_3 
       (.I0(y_25_fu_869_p3__0[16]),
        .I1(y_25_fu_869_p3),
        .O(\y_27_reg_1760[17]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_27_reg_1760[17]_i_4 
       (.I0(y_25_fu_869_p3__0[15]),
        .I1(y_25_fu_869_p3__0[16]),
        .O(\y_27_reg_1760[17]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[17]_i_5 
       (.I0(y_22_fu_785_p3__0[15]),
        .I1(x_22_fu_777_p3[17]),
        .I2(y_22_fu_785_p3),
        .O(\y_27_reg_1760[17]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[17]_i_6 
       (.I0(y_22_fu_785_p3__0[14]),
        .I1(x_22_fu_777_p3[17]),
        .I2(y_22_fu_785_p3),
        .O(\y_27_reg_1760[17]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[17]_i_7 
       (.I0(y_22_fu_785_p3__0[13]),
        .I1(x_22_fu_777_p3[17]),
        .I2(y_22_fu_785_p3),
        .O(\y_27_reg_1760[17]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[17]_i_8 
       (.I0(y_22_fu_785_p3__0[12]),
        .I1(x_22_fu_777_p3[17]),
        .I2(y_22_fu_785_p3),
        .O(\y_27_reg_1760[17]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[17]_i_9 
       (.I0(y_22_fu_785_p3__0[11]),
        .I1(x_22_fu_777_p3[17]),
        .I2(y_22_fu_785_p3),
        .O(\y_27_reg_1760[17]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_27_reg_1760[7]_i_10 
       (.I0(y_25_fu_869_p3__0[0]),
        .I1(x_25_fu_861_p3[8]),
        .O(\y_27_reg_1760[7]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y_27_reg_1760[7]_i_11 
       (.I0(y_22_fu_785_p3),
        .O(\y_27_reg_1760[7]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_13 
       (.I0(y_22_fu_785_p3__0[7]),
        .I1(x_22_fu_777_p3[14]),
        .I2(y_22_fu_785_p3),
        .O(\y_27_reg_1760[7]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_14 
       (.I0(y_22_fu_785_p3__0[6]),
        .I1(x_22_fu_777_p3[13]),
        .I2(y_22_fu_785_p3),
        .O(\y_27_reg_1760[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_15 
       (.I0(y_22_fu_785_p3__0[5]),
        .I1(x_22_fu_777_p3[12]),
        .I2(y_22_fu_785_p3),
        .O(\y_27_reg_1760[7]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_16 
       (.I0(y_22_fu_785_p3__0[4]),
        .I1(x_22_fu_777_p3[11]),
        .I2(y_22_fu_785_p3),
        .O(\y_27_reg_1760[7]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_17 
       (.I0(y_22_fu_785_p3__0[3]),
        .I1(x_22_fu_777_p3[10]),
        .I2(y_22_fu_785_p3),
        .O(\y_27_reg_1760[7]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_18 
       (.I0(y_22_fu_785_p3__0[2]),
        .I1(x_22_fu_777_p3[9]),
        .I2(y_22_fu_785_p3),
        .O(\y_27_reg_1760[7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_19 
       (.I0(y_22_fu_785_p3__0[1]),
        .I1(x_22_fu_777_p3[8]),
        .I2(y_22_fu_785_p3),
        .O(\y_27_reg_1760[7]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_20 
       (.I0(y_22_fu_785_p3__0[0]),
        .I1(x_22_fu_777_p3[7]),
        .I2(y_22_fu_785_p3),
        .O(\y_27_reg_1760[7]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y_27_reg_1760[7]_i_21 
       (.I0(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\y_27_reg_1760[7]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_23 
       (.I0(\y_27_reg_1760_reg[7]_i_22_n_8 ),
        .I1(\x_27_reg_1755_reg[17]_i_8_n_10 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\y_27_reg_1760[7]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_24 
       (.I0(\y_27_reg_1760_reg[7]_i_22_n_9 ),
        .I1(\x_27_reg_1755_reg[17]_i_8_n_11 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\y_27_reg_1760[7]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_25 
       (.I0(\y_27_reg_1760_reg[7]_i_22_n_10 ),
        .I1(\x_27_reg_1755_reg[17]_i_8_n_12 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\y_27_reg_1760[7]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_26 
       (.I0(\y_27_reg_1760_reg[7]_i_22_n_11 ),
        .I1(\x_27_reg_1755_reg[17]_i_8_n_13 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\y_27_reg_1760[7]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_27 
       (.I0(\y_27_reg_1760_reg[7]_i_22_n_12 ),
        .I1(\x_27_reg_1755_reg[17]_i_8_n_14 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\y_27_reg_1760[7]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_28 
       (.I0(\y_27_reg_1760_reg[7]_i_22_n_13 ),
        .I1(\x_27_reg_1755_reg[17]_i_8_n_15 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\y_27_reg_1760[7]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_29 
       (.I0(\y_27_reg_1760_reg[7]_i_22_n_14 ),
        .I1(\x_27_reg_1755_reg[7]_i_20_n_8 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\y_27_reg_1760[7]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_27_reg_1760[7]_i_3 
       (.I0(y_25_fu_869_p3__0[7]),
        .I1(x_25_fu_861_p3[15]),
        .O(\y_27_reg_1760[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_30 
       (.I0(\y_27_reg_1760_reg[7]_i_22_n_15 ),
        .I1(\x_27_reg_1755_reg[7]_i_20_n_9 ),
        .I2(\tmp_9_reg_1733_reg[0]_i_3_n_14 ),
        .O(\y_27_reg_1760[7]_i_30_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y_27_reg_1760[7]_i_31 
       (.I0(sel),
        .O(\y_27_reg_1760[7]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_33 
       (.I0(\y_27_reg_1760_reg[7]_i_32_n_8 ),
        .I1(\x_27_reg_1755_reg[17]_i_12_n_11 ),
        .I2(sel),
        .O(\y_27_reg_1760[7]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_34 
       (.I0(\y_27_reg_1760_reg[7]_i_32_n_9 ),
        .I1(\x_27_reg_1755_reg[17]_i_12_n_12 ),
        .I2(sel),
        .O(\y_27_reg_1760[7]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_35 
       (.I0(\y_27_reg_1760_reg[7]_i_32_n_10 ),
        .I1(\x_27_reg_1755_reg[17]_i_12_n_13 ),
        .I2(sel),
        .O(\y_27_reg_1760[7]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_36 
       (.I0(\y_27_reg_1760_reg[7]_i_32_n_11 ),
        .I1(\x_27_reg_1755_reg[17]_i_12_n_14 ),
        .I2(sel),
        .O(\y_27_reg_1760[7]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_37 
       (.I0(\y_27_reg_1760_reg[7]_i_32_n_12 ),
        .I1(\x_27_reg_1755_reg[17]_i_12_n_15 ),
        .I2(sel),
        .O(\y_27_reg_1760[7]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_38 
       (.I0(\y_27_reg_1760_reg[7]_i_32_n_13 ),
        .I1(\x_27_reg_1755_reg[7]_i_29_n_8 ),
        .I2(sel),
        .O(\y_27_reg_1760[7]_i_38_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_39 
       (.I0(\y_27_reg_1760_reg[7]_i_32_n_14 ),
        .I1(\x_27_reg_1755_reg[7]_i_29_n_9 ),
        .I2(sel),
        .O(\y_27_reg_1760[7]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_27_reg_1760[7]_i_4 
       (.I0(y_25_fu_869_p3__0[6]),
        .I1(x_25_fu_861_p3[14]),
        .O(\y_27_reg_1760[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_40 
       (.I0(\y_27_reg_1760_reg[7]_i_32_n_15 ),
        .I1(\x_27_reg_1755_reg[7]_i_29_n_10 ),
        .I2(sel),
        .O(\y_27_reg_1760[7]_i_40_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y_27_reg_1760[7]_i_41 
       (.I0(tmp_6_reg_1726),
        .O(\y_27_reg_1760[7]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_42 
       (.I0(y_13_reg_1710[7]),
        .I1(xs_4_reg_1716[7]),
        .I2(tmp_6_reg_1726),
        .O(\y_27_reg_1760[7]_i_42_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_43 
       (.I0(y_13_reg_1710[6]),
        .I1(xs_4_reg_1716[6]),
        .I2(tmp_6_reg_1726),
        .O(\y_27_reg_1760[7]_i_43_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_44 
       (.I0(y_13_reg_1710[5]),
        .I1(xs_4_reg_1716[5]),
        .I2(tmp_6_reg_1726),
        .O(\y_27_reg_1760[7]_i_44_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_45 
       (.I0(y_13_reg_1710[4]),
        .I1(xs_4_reg_1716[4]),
        .I2(tmp_6_reg_1726),
        .O(\y_27_reg_1760[7]_i_45_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_46 
       (.I0(y_13_reg_1710[3]),
        .I1(xs_4_reg_1716[3]),
        .I2(tmp_6_reg_1726),
        .O(\y_27_reg_1760[7]_i_46_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_47 
       (.I0(y_13_reg_1710[2]),
        .I1(xs_4_reg_1716[2]),
        .I2(tmp_6_reg_1726),
        .O(\y_27_reg_1760[7]_i_47_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_48 
       (.I0(y_13_reg_1710[1]),
        .I1(xs_4_reg_1716[1]),
        .I2(tmp_6_reg_1726),
        .O(\y_27_reg_1760[7]_i_48_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_27_reg_1760[7]_i_49 
       (.I0(y_13_reg_1710[0]),
        .I1(xs_4_reg_1716[0]),
        .I2(tmp_6_reg_1726),
        .O(\y_27_reg_1760[7]_i_49_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_27_reg_1760[7]_i_5 
       (.I0(y_25_fu_869_p3__0[5]),
        .I1(x_25_fu_861_p3[13]),
        .O(\y_27_reg_1760[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_27_reg_1760[7]_i_6 
       (.I0(y_25_fu_869_p3__0[4]),
        .I1(x_25_fu_861_p3[12]),
        .O(\y_27_reg_1760[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_27_reg_1760[7]_i_7 
       (.I0(y_25_fu_869_p3__0[3]),
        .I1(x_25_fu_861_p3[11]),
        .O(\y_27_reg_1760[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_27_reg_1760[7]_i_8 
       (.I0(y_25_fu_869_p3__0[2]),
        .I1(x_25_fu_861_p3[10]),
        .O(\y_27_reg_1760[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_27_reg_1760[7]_i_9 
       (.I0(y_25_fu_869_p3__0[1]),
        .I1(x_25_fu_861_p3[9]),
        .O(\y_27_reg_1760[7]_i_9_n_0 ));
  FDRE \y_27_reg_1760_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_27_fu_931_p2[0]),
        .Q(y_27_reg_1760[0]),
        .R(1'b0));
  FDRE \y_27_reg_1760_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_27_fu_931_p2[10]),
        .Q(y_27_reg_1760[10]),
        .R(1'b0));
  FDRE \y_27_reg_1760_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_27_fu_931_p2[11]),
        .Q(y_27_reg_1760[11]),
        .R(1'b0));
  FDRE \y_27_reg_1760_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_27_fu_931_p2[12]),
        .Q(y_27_reg_1760[12]),
        .R(1'b0));
  FDRE \y_27_reg_1760_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_27_fu_931_p2[13]),
        .Q(y_27_reg_1760[13]),
        .R(1'b0));
  FDRE \y_27_reg_1760_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_27_fu_931_p2[14]),
        .Q(y_27_reg_1760[14]),
        .R(1'b0));
  FDRE \y_27_reg_1760_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_27_fu_931_p2[15]),
        .Q(y_27_reg_1760[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_27_reg_1760_reg[15]_i_1 
       (.CI(\y_27_reg_1760_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_27_reg_1760_reg[15]_i_1_n_0 ,\y_27_reg_1760_reg[15]_i_1_n_1 ,\y_27_reg_1760_reg[15]_i_1_n_2 ,\y_27_reg_1760_reg[15]_i_1_n_3 ,\y_27_reg_1760_reg[15]_i_1_n_4 ,\y_27_reg_1760_reg[15]_i_1_n_5 ,\y_27_reg_1760_reg[15]_i_1_n_6 ,\y_27_reg_1760_reg[15]_i_1_n_7 }),
        .DI({y_25_fu_869_p3__0[14:10],x_25_fu_861_p3[17],y_25_fu_869_p3__0[9:8]}),
        .O(y_27_fu_931_p2[15:8]),
        .S({\y_27_reg_1760[15]_i_3_n_0 ,\y_27_reg_1760[15]_i_4_n_0 ,\y_27_reg_1760[15]_i_5_n_0 ,\y_27_reg_1760[15]_i_6_n_0 ,\y_27_reg_1760[15]_i_7_n_0 ,\y_27_reg_1760[15]_i_8_n_0 ,\y_27_reg_1760[15]_i_9_n_0 ,\y_27_reg_1760[15]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_27_reg_1760_reg[15]_i_11 
       (.CI(\x_27_reg_1755_reg[17]_i_5_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_y_27_reg_1760_reg[15]_i_11_CO_UNCONNECTED [7:1],\y_27_reg_1760_reg[15]_i_11_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\tmp_9_reg_1733_reg[0]_i_17_n_15 }),
        .O({\NLW_y_27_reg_1760_reg[15]_i_11_O_UNCONNECTED [7:2],x_22_fu_777_p3[17:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\tmp_9_reg_1733_reg[0]_i_17_n_14 ,\tmp_9_reg_1733_reg[0]_i_17_n_15 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_27_reg_1760_reg[15]_i_2 
       (.CI(\x_27_reg_1755_reg[17]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_y_27_reg_1760_reg[15]_i_2_CO_UNCONNECTED [7:1],\y_27_reg_1760_reg[15]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x_22_fu_777_p3[16]}),
        .O({\NLW_y_27_reg_1760_reg[15]_i_2_O_UNCONNECTED [7:2],x_25_fu_861_p3[17:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x_22_fu_777_p3[17:16]}));
  FDRE \y_27_reg_1760_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_27_fu_931_p2[16]),
        .Q(y_27_reg_1760[16]),
        .R(1'b0));
  FDRE \y_27_reg_1760_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_27_fu_931_p2[17]),
        .Q(y_27_reg_1760[17]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_27_reg_1760_reg[17]_i_1 
       (.CI(\y_27_reg_1760_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_y_27_reg_1760_reg[17]_i_1_CO_UNCONNECTED [7:1],\y_27_reg_1760_reg[17]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_25_fu_869_p3__0[15]}),
        .O({\NLW_y_27_reg_1760_reg[17]_i_1_O_UNCONNECTED [7:2],y_27_fu_931_p2[17:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\y_27_reg_1760[17]_i_3_n_0 ,\y_27_reg_1760[17]_i_4_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_27_reg_1760_reg[17]_i_2 
       (.CI(\y_27_reg_1760_reg[7]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_27_reg_1760_reg[17]_i_2_n_0 ,\y_27_reg_1760_reg[17]_i_2_n_1 ,\y_27_reg_1760_reg[17]_i_2_n_2 ,\y_27_reg_1760_reg[17]_i_2_n_3 ,\y_27_reg_1760_reg[17]_i_2_n_4 ,\y_27_reg_1760_reg[17]_i_2_n_5 ,\y_27_reg_1760_reg[17]_i_2_n_6 ,\y_27_reg_1760_reg[17]_i_2_n_7 }),
        .DI(y_22_fu_785_p3__0[15:8]),
        .O(y_25_fu_869_p3__0[15:8]),
        .S({\y_27_reg_1760[17]_i_5_n_0 ,\y_27_reg_1760[17]_i_6_n_0 ,\y_27_reg_1760[17]_i_7_n_0 ,\y_27_reg_1760[17]_i_8_n_0 ,\y_27_reg_1760[17]_i_9_n_0 ,\y_27_reg_1760[17]_i_10_n_0 ,\y_27_reg_1760[17]_i_11_n_0 ,\y_27_reg_1760[17]_i_12_n_0 }));
  FDRE \y_27_reg_1760_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_27_fu_931_p2[1]),
        .Q(y_27_reg_1760[1]),
        .R(1'b0));
  FDRE \y_27_reg_1760_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_27_fu_931_p2[2]),
        .Q(y_27_reg_1760[2]),
        .R(1'b0));
  FDRE \y_27_reg_1760_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_27_fu_931_p2[3]),
        .Q(y_27_reg_1760[3]),
        .R(1'b0));
  FDRE \y_27_reg_1760_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_27_fu_931_p2[4]),
        .Q(y_27_reg_1760[4]),
        .R(1'b0));
  FDRE \y_27_reg_1760_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_27_fu_931_p2[5]),
        .Q(y_27_reg_1760[5]),
        .R(1'b0));
  FDRE \y_27_reg_1760_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_27_fu_931_p2[6]),
        .Q(y_27_reg_1760[6]),
        .R(1'b0));
  FDRE \y_27_reg_1760_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_27_fu_931_p2[7]),
        .Q(y_27_reg_1760[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_27_reg_1760_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\y_27_reg_1760_reg[7]_i_1_n_0 ,\y_27_reg_1760_reg[7]_i_1_n_1 ,\y_27_reg_1760_reg[7]_i_1_n_2 ,\y_27_reg_1760_reg[7]_i_1_n_3 ,\y_27_reg_1760_reg[7]_i_1_n_4 ,\y_27_reg_1760_reg[7]_i_1_n_5 ,\y_27_reg_1760_reg[7]_i_1_n_6 ,\y_27_reg_1760_reg[7]_i_1_n_7 }),
        .DI(y_25_fu_869_p3__0[7:0]),
        .O(y_27_fu_931_p2[7:0]),
        .S({\y_27_reg_1760[7]_i_3_n_0 ,\y_27_reg_1760[7]_i_4_n_0 ,\y_27_reg_1760[7]_i_5_n_0 ,\y_27_reg_1760[7]_i_6_n_0 ,\y_27_reg_1760[7]_i_7_n_0 ,\y_27_reg_1760[7]_i_8_n_0 ,\y_27_reg_1760[7]_i_9_n_0 ,\y_27_reg_1760[7]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_27_reg_1760_reg[7]_i_12 
       (.CI(\y_27_reg_1760[7]_i_21_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_27_reg_1760_reg[7]_i_12_n_0 ,\y_27_reg_1760_reg[7]_i_12_n_1 ,\y_27_reg_1760_reg[7]_i_12_n_2 ,\y_27_reg_1760_reg[7]_i_12_n_3 ,\y_27_reg_1760_reg[7]_i_12_n_4 ,\y_27_reg_1760_reg[7]_i_12_n_5 ,\y_27_reg_1760_reg[7]_i_12_n_6 ,\y_27_reg_1760_reg[7]_i_12_n_7 }),
        .DI({\y_27_reg_1760_reg[7]_i_22_n_8 ,\y_27_reg_1760_reg[7]_i_22_n_9 ,\y_27_reg_1760_reg[7]_i_22_n_10 ,\y_27_reg_1760_reg[7]_i_22_n_11 ,\y_27_reg_1760_reg[7]_i_22_n_12 ,\y_27_reg_1760_reg[7]_i_22_n_13 ,\y_27_reg_1760_reg[7]_i_22_n_14 ,\y_27_reg_1760_reg[7]_i_22_n_15 }),
        .O(y_22_fu_785_p3__0[7:0]),
        .S({\y_27_reg_1760[7]_i_23_n_0 ,\y_27_reg_1760[7]_i_24_n_0 ,\y_27_reg_1760[7]_i_25_n_0 ,\y_27_reg_1760[7]_i_26_n_0 ,\y_27_reg_1760[7]_i_27_n_0 ,\y_27_reg_1760[7]_i_28_n_0 ,\y_27_reg_1760[7]_i_29_n_0 ,\y_27_reg_1760[7]_i_30_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_27_reg_1760_reg[7]_i_2 
       (.CI(\y_27_reg_1760[7]_i_11_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_27_reg_1760_reg[7]_i_2_n_0 ,\y_27_reg_1760_reg[7]_i_2_n_1 ,\y_27_reg_1760_reg[7]_i_2_n_2 ,\y_27_reg_1760_reg[7]_i_2_n_3 ,\y_27_reg_1760_reg[7]_i_2_n_4 ,\y_27_reg_1760_reg[7]_i_2_n_5 ,\y_27_reg_1760_reg[7]_i_2_n_6 ,\y_27_reg_1760_reg[7]_i_2_n_7 }),
        .DI(y_22_fu_785_p3__0[7:0]),
        .O(y_25_fu_869_p3__0[7:0]),
        .S({\y_27_reg_1760[7]_i_13_n_0 ,\y_27_reg_1760[7]_i_14_n_0 ,\y_27_reg_1760[7]_i_15_n_0 ,\y_27_reg_1760[7]_i_16_n_0 ,\y_27_reg_1760[7]_i_17_n_0 ,\y_27_reg_1760[7]_i_18_n_0 ,\y_27_reg_1760[7]_i_19_n_0 ,\y_27_reg_1760[7]_i_20_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_27_reg_1760_reg[7]_i_22 
       (.CI(\y_27_reg_1760[7]_i_31_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_27_reg_1760_reg[7]_i_22_n_0 ,\y_27_reg_1760_reg[7]_i_22_n_1 ,\y_27_reg_1760_reg[7]_i_22_n_2 ,\y_27_reg_1760_reg[7]_i_22_n_3 ,\y_27_reg_1760_reg[7]_i_22_n_4 ,\y_27_reg_1760_reg[7]_i_22_n_5 ,\y_27_reg_1760_reg[7]_i_22_n_6 ,\y_27_reg_1760_reg[7]_i_22_n_7 }),
        .DI({\y_27_reg_1760_reg[7]_i_32_n_8 ,\y_27_reg_1760_reg[7]_i_32_n_9 ,\y_27_reg_1760_reg[7]_i_32_n_10 ,\y_27_reg_1760_reg[7]_i_32_n_11 ,\y_27_reg_1760_reg[7]_i_32_n_12 ,\y_27_reg_1760_reg[7]_i_32_n_13 ,\y_27_reg_1760_reg[7]_i_32_n_14 ,\y_27_reg_1760_reg[7]_i_32_n_15 }),
        .O({\y_27_reg_1760_reg[7]_i_22_n_8 ,\y_27_reg_1760_reg[7]_i_22_n_9 ,\y_27_reg_1760_reg[7]_i_22_n_10 ,\y_27_reg_1760_reg[7]_i_22_n_11 ,\y_27_reg_1760_reg[7]_i_22_n_12 ,\y_27_reg_1760_reg[7]_i_22_n_13 ,\y_27_reg_1760_reg[7]_i_22_n_14 ,\y_27_reg_1760_reg[7]_i_22_n_15 }),
        .S({\y_27_reg_1760[7]_i_33_n_0 ,\y_27_reg_1760[7]_i_34_n_0 ,\y_27_reg_1760[7]_i_35_n_0 ,\y_27_reg_1760[7]_i_36_n_0 ,\y_27_reg_1760[7]_i_37_n_0 ,\y_27_reg_1760[7]_i_38_n_0 ,\y_27_reg_1760[7]_i_39_n_0 ,\y_27_reg_1760[7]_i_40_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_27_reg_1760_reg[7]_i_32 
       (.CI(\y_27_reg_1760[7]_i_41_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_27_reg_1760_reg[7]_i_32_n_0 ,\y_27_reg_1760_reg[7]_i_32_n_1 ,\y_27_reg_1760_reg[7]_i_32_n_2 ,\y_27_reg_1760_reg[7]_i_32_n_3 ,\y_27_reg_1760_reg[7]_i_32_n_4 ,\y_27_reg_1760_reg[7]_i_32_n_5 ,\y_27_reg_1760_reg[7]_i_32_n_6 ,\y_27_reg_1760_reg[7]_i_32_n_7 }),
        .DI(y_13_reg_1710[7:0]),
        .O({\y_27_reg_1760_reg[7]_i_32_n_8 ,\y_27_reg_1760_reg[7]_i_32_n_9 ,\y_27_reg_1760_reg[7]_i_32_n_10 ,\y_27_reg_1760_reg[7]_i_32_n_11 ,\y_27_reg_1760_reg[7]_i_32_n_12 ,\y_27_reg_1760_reg[7]_i_32_n_13 ,\y_27_reg_1760_reg[7]_i_32_n_14 ,\y_27_reg_1760_reg[7]_i_32_n_15 }),
        .S({\y_27_reg_1760[7]_i_42_n_0 ,\y_27_reg_1760[7]_i_43_n_0 ,\y_27_reg_1760[7]_i_44_n_0 ,\y_27_reg_1760[7]_i_45_n_0 ,\y_27_reg_1760[7]_i_46_n_0 ,\y_27_reg_1760[7]_i_47_n_0 ,\y_27_reg_1760[7]_i_48_n_0 ,\y_27_reg_1760[7]_i_49_n_0 }));
  FDRE \y_27_reg_1760_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_27_fu_931_p2[8]),
        .Q(y_27_reg_1760[8]),
        .R(1'b0));
  FDRE \y_27_reg_1760_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_27_fu_931_p2[9]),
        .Q(y_27_reg_1760[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[12]_i_10 
       (.I0(y_37_fu_1188_p3__0[8]),
        .I1(x_37_fu_1180_p3[17]),
        .I2(y_37_fu_1188_p3),
        .O(\y_40_reg_1796[12]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[12]_i_11 
       (.I0(y_34_fu_1112_p3__0[15]),
        .I1(x_34_fu_1104_p3[17]),
        .I2(y_34_fu_1112_p3),
        .O(\y_40_reg_1796[12]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[12]_i_12 
       (.I0(y_34_fu_1112_p3__0[14]),
        .I1(x_34_fu_1104_p3[17]),
        .I2(y_34_fu_1112_p3),
        .O(\y_40_reg_1796[12]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[12]_i_13 
       (.I0(y_34_fu_1112_p3__0[13]),
        .I1(x_34_fu_1104_p3[17]),
        .I2(y_34_fu_1112_p3),
        .O(\y_40_reg_1796[12]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[12]_i_14 
       (.I0(y_34_fu_1112_p3__0[12]),
        .I1(x_34_fu_1104_p3[17]),
        .I2(y_34_fu_1112_p3),
        .O(\y_40_reg_1796[12]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[12]_i_15 
       (.I0(y_34_fu_1112_p3__0[11]),
        .I1(x_34_fu_1104_p3[17]),
        .I2(y_34_fu_1112_p3),
        .O(\y_40_reg_1796[12]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[12]_i_16 
       (.I0(y_34_fu_1112_p3__0[10]),
        .I1(x_34_fu_1104_p3[17]),
        .I2(y_34_fu_1112_p3),
        .O(\y_40_reg_1796[12]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[12]_i_17 
       (.I0(y_34_fu_1112_p3__0[9]),
        .I1(x_34_fu_1104_p3[17]),
        .I2(y_34_fu_1112_p3),
        .O(\y_40_reg_1796[12]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[12]_i_18 
       (.I0(y_34_fu_1112_p3__0[8]),
        .I1(x_34_fu_1104_p3[17]),
        .I2(y_34_fu_1112_p3),
        .O(\y_40_reg_1796[12]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[12]_i_3 
       (.I0(y_37_fu_1188_p3__0[15]),
        .I1(x_37_fu_1180_p3[17]),
        .I2(y_37_fu_1188_p3),
        .O(\y_40_reg_1796[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[12]_i_4 
       (.I0(y_37_fu_1188_p3__0[14]),
        .I1(x_37_fu_1180_p3[17]),
        .I2(y_37_fu_1188_p3),
        .O(\y_40_reg_1796[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[12]_i_5 
       (.I0(y_37_fu_1188_p3__0[13]),
        .I1(x_37_fu_1180_p3[17]),
        .I2(y_37_fu_1188_p3),
        .O(\y_40_reg_1796[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[12]_i_6 
       (.I0(y_37_fu_1188_p3__0[12]),
        .I1(x_37_fu_1180_p3[17]),
        .I2(y_37_fu_1188_p3),
        .O(\y_40_reg_1796[12]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[12]_i_7 
       (.I0(y_37_fu_1188_p3__0[11]),
        .I1(x_37_fu_1180_p3[17]),
        .I2(y_37_fu_1188_p3),
        .O(\y_40_reg_1796[12]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[12]_i_8 
       (.I0(y_37_fu_1188_p3__0[10]),
        .I1(x_37_fu_1180_p3[17]),
        .I2(y_37_fu_1188_p3),
        .O(\y_40_reg_1796[12]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[12]_i_9 
       (.I0(y_37_fu_1188_p3__0[9]),
        .I1(x_37_fu_1180_p3[17]),
        .I2(y_37_fu_1188_p3),
        .O(\y_40_reg_1796[12]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[7]_i_10 
       (.I0(y_37_fu_1188_p3__0[1]),
        .I1(x_37_fu_1180_p3[13]),
        .I2(y_37_fu_1188_p3),
        .O(\y_40_reg_1796[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[7]_i_11 
       (.I0(y_37_fu_1188_p3__0[0]),
        .I1(x_37_fu_1180_p3[12]),
        .I2(y_37_fu_1188_p3),
        .O(\y_40_reg_1796[7]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y_40_reg_1796[7]_i_12 
       (.I0(y_34_fu_1112_p3),
        .O(\y_40_reg_1796[7]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[7]_i_14 
       (.I0(y_34_fu_1112_p3__0[7]),
        .I1(x_34_fu_1104_p3[17]),
        .I2(y_34_fu_1112_p3),
        .O(\y_40_reg_1796[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[7]_i_15 
       (.I0(y_34_fu_1112_p3__0[6]),
        .I1(x_34_fu_1104_p3[17]),
        .I2(y_34_fu_1112_p3),
        .O(\y_40_reg_1796[7]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[7]_i_16 
       (.I0(y_34_fu_1112_p3__0[5]),
        .I1(x_34_fu_1104_p3[16]),
        .I2(y_34_fu_1112_p3),
        .O(\y_40_reg_1796[7]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[7]_i_17 
       (.I0(y_34_fu_1112_p3__0[4]),
        .I1(x_34_fu_1104_p3[15]),
        .I2(y_34_fu_1112_p3),
        .O(\y_40_reg_1796[7]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[7]_i_18 
       (.I0(y_34_fu_1112_p3__0[3]),
        .I1(x_34_fu_1104_p3[14]),
        .I2(y_34_fu_1112_p3),
        .O(\y_40_reg_1796[7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[7]_i_19 
       (.I0(y_34_fu_1112_p3__0[2]),
        .I1(x_34_fu_1104_p3[13]),
        .I2(y_34_fu_1112_p3),
        .O(\y_40_reg_1796[7]_i_19_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y_40_reg_1796[7]_i_2 
       (.I0(y_37_fu_1188_p3),
        .O(\y_40_reg_1796[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[7]_i_20 
       (.I0(y_34_fu_1112_p3__0[1]),
        .I1(x_34_fu_1104_p3[12]),
        .I2(y_34_fu_1112_p3),
        .O(\y_40_reg_1796[7]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[7]_i_21 
       (.I0(y_34_fu_1112_p3__0[0]),
        .I1(x_34_fu_1104_p3[11]),
        .I2(y_34_fu_1112_p3),
        .O(\y_40_reg_1796[7]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y_40_reg_1796[7]_i_22 
       (.I0(y_31_fu_1036_p3),
        .O(\y_40_reg_1796[7]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[7]_i_23 
       (.I0(y_31_fu_1036_p3__0[7]),
        .I1(x_31_fu_1028_p3[17]),
        .I2(y_31_fu_1036_p3),
        .O(\y_40_reg_1796[7]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[7]_i_24 
       (.I0(y_31_fu_1036_p3__0[6]),
        .I1(x_31_fu_1028_p3[16]),
        .I2(y_31_fu_1036_p3),
        .O(\y_40_reg_1796[7]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[7]_i_25 
       (.I0(y_31_fu_1036_p3__0[5]),
        .I1(x_31_fu_1028_p3[15]),
        .I2(y_31_fu_1036_p3),
        .O(\y_40_reg_1796[7]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[7]_i_26 
       (.I0(y_31_fu_1036_p3__0[4]),
        .I1(x_31_fu_1028_p3[14]),
        .I2(y_31_fu_1036_p3),
        .O(\y_40_reg_1796[7]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[7]_i_27 
       (.I0(y_31_fu_1036_p3__0[3]),
        .I1(x_31_fu_1028_p3[13]),
        .I2(y_31_fu_1036_p3),
        .O(\y_40_reg_1796[7]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[7]_i_28 
       (.I0(y_31_fu_1036_p3__0[2]),
        .I1(x_31_fu_1028_p3[12]),
        .I2(y_31_fu_1036_p3),
        .O(\y_40_reg_1796[7]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[7]_i_29 
       (.I0(y_31_fu_1036_p3__0[1]),
        .I1(x_31_fu_1028_p3[11]),
        .I2(y_31_fu_1036_p3),
        .O(\y_40_reg_1796[7]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[7]_i_30 
       (.I0(y_31_fu_1036_p3__0[0]),
        .I1(x_31_fu_1028_p3[10]),
        .I2(y_31_fu_1036_p3),
        .O(\y_40_reg_1796[7]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[7]_i_4 
       (.I0(y_37_fu_1188_p3__0[7]),
        .I1(x_37_fu_1180_p3[17]),
        .I2(y_37_fu_1188_p3),
        .O(\y_40_reg_1796[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[7]_i_5 
       (.I0(y_37_fu_1188_p3__0[6]),
        .I1(x_37_fu_1180_p3[17]),
        .I2(y_37_fu_1188_p3),
        .O(\y_40_reg_1796[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[7]_i_6 
       (.I0(y_37_fu_1188_p3__0[5]),
        .I1(x_37_fu_1180_p3[17]),
        .I2(y_37_fu_1188_p3),
        .O(\y_40_reg_1796[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[7]_i_7 
       (.I0(y_37_fu_1188_p3__0[4]),
        .I1(x_37_fu_1180_p3[16]),
        .I2(y_37_fu_1188_p3),
        .O(\y_40_reg_1796[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[7]_i_8 
       (.I0(y_37_fu_1188_p3__0[3]),
        .I1(x_37_fu_1180_p3[15]),
        .I2(y_37_fu_1188_p3),
        .O(\y_40_reg_1796[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_40_reg_1796[7]_i_9 
       (.I0(y_37_fu_1188_p3__0[2]),
        .I1(x_37_fu_1180_p3[14]),
        .I2(y_37_fu_1188_p3),
        .O(\y_40_reg_1796[7]_i_9_n_0 ));
  FDRE \y_40_reg_1796_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_40_fu_1264_p3[0]),
        .Q(y_40_reg_1796[0]),
        .R(1'b0));
  FDRE \y_40_reg_1796_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_40_fu_1264_p3[10]),
        .Q(y_40_reg_1796[10]),
        .R(1'b0));
  FDRE \y_40_reg_1796_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_40_fu_1264_p3[11]),
        .Q(y_40_reg_1796[11]),
        .R(1'b0));
  FDRE \y_40_reg_1796_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_40_fu_1264_p3[12]),
        .Q(y_40_reg_1796[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_40_reg_1796_reg[12]_i_1 
       (.CI(\y_40_reg_1796_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_40_reg_1796_reg[12]_i_1_n_0 ,\y_40_reg_1796_reg[12]_i_1_n_1 ,\y_40_reg_1796_reg[12]_i_1_n_2 ,\y_40_reg_1796_reg[12]_i_1_n_3 ,\y_40_reg_1796_reg[12]_i_1_n_4 ,\y_40_reg_1796_reg[12]_i_1_n_5 ,\y_40_reg_1796_reg[12]_i_1_n_6 ,\y_40_reg_1796_reg[12]_i_1_n_7 }),
        .DI(y_37_fu_1188_p3__0[15:8]),
        .O(y_40_fu_1264_p3[15:8]),
        .S({\y_40_reg_1796[12]_i_3_n_0 ,\y_40_reg_1796[12]_i_4_n_0 ,\y_40_reg_1796[12]_i_5_n_0 ,\y_40_reg_1796[12]_i_6_n_0 ,\y_40_reg_1796[12]_i_7_n_0 ,\y_40_reg_1796[12]_i_8_n_0 ,\y_40_reg_1796[12]_i_9_n_0 ,\y_40_reg_1796[12]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_40_reg_1796_reg[12]_i_2 
       (.CI(\y_40_reg_1796_reg[7]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_40_reg_1796_reg[12]_i_2_n_0 ,\y_40_reg_1796_reg[12]_i_2_n_1 ,\y_40_reg_1796_reg[12]_i_2_n_2 ,\y_40_reg_1796_reg[12]_i_2_n_3 ,\y_40_reg_1796_reg[12]_i_2_n_4 ,\y_40_reg_1796_reg[12]_i_2_n_5 ,\y_40_reg_1796_reg[12]_i_2_n_6 ,\y_40_reg_1796_reg[12]_i_2_n_7 }),
        .DI(y_34_fu_1112_p3__0[15:8]),
        .O(y_37_fu_1188_p3__0[15:8]),
        .S({\y_40_reg_1796[12]_i_11_n_0 ,\y_40_reg_1796[12]_i_12_n_0 ,\y_40_reg_1796[12]_i_13_n_0 ,\y_40_reg_1796[12]_i_14_n_0 ,\y_40_reg_1796[12]_i_15_n_0 ,\y_40_reg_1796[12]_i_16_n_0 ,\y_40_reg_1796[12]_i_17_n_0 ,\y_40_reg_1796[12]_i_18_n_0 }));
  FDRE \y_40_reg_1796_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_40_fu_1264_p3[13]),
        .Q(y_40_reg_1796[13]),
        .R(1'b0));
  FDRE \y_40_reg_1796_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_40_fu_1264_p3[14]),
        .Q(y_40_reg_1796[14]),
        .R(1'b0));
  FDRE \y_40_reg_1796_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_40_fu_1264_p3[15]),
        .Q(y_40_reg_1796[15]),
        .R(1'b0));
  FDRE \y_40_reg_1796_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_40_fu_1264_p3[16]),
        .Q(y_40_reg_1796[16]),
        .R(1'b0));
  FDRE \y_40_reg_1796_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_40_fu_1264_p3[1]),
        .Q(y_40_reg_1796[1]),
        .R(1'b0));
  FDRE \y_40_reg_1796_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_40_fu_1264_p3[2]),
        .Q(y_40_reg_1796[2]),
        .R(1'b0));
  FDRE \y_40_reg_1796_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_40_fu_1264_p3[3]),
        .Q(y_40_reg_1796[3]),
        .R(1'b0));
  FDRE \y_40_reg_1796_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_40_fu_1264_p3[4]),
        .Q(y_40_reg_1796[4]),
        .R(1'b0));
  FDRE \y_40_reg_1796_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_40_fu_1264_p3[5]),
        .Q(y_40_reg_1796[5]),
        .R(1'b0));
  FDRE \y_40_reg_1796_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_40_fu_1264_p3[6]),
        .Q(y_40_reg_1796[6]),
        .R(1'b0));
  FDRE \y_40_reg_1796_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_40_fu_1264_p3[7]),
        .Q(y_40_reg_1796[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_40_reg_1796_reg[7]_i_1 
       (.CI(\y_40_reg_1796[7]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_40_reg_1796_reg[7]_i_1_n_0 ,\y_40_reg_1796_reg[7]_i_1_n_1 ,\y_40_reg_1796_reg[7]_i_1_n_2 ,\y_40_reg_1796_reg[7]_i_1_n_3 ,\y_40_reg_1796_reg[7]_i_1_n_4 ,\y_40_reg_1796_reg[7]_i_1_n_5 ,\y_40_reg_1796_reg[7]_i_1_n_6 ,\y_40_reg_1796_reg[7]_i_1_n_7 }),
        .DI(y_37_fu_1188_p3__0[7:0]),
        .O(y_40_fu_1264_p3[7:0]),
        .S({\y_40_reg_1796[7]_i_4_n_0 ,\y_40_reg_1796[7]_i_5_n_0 ,\y_40_reg_1796[7]_i_6_n_0 ,\y_40_reg_1796[7]_i_7_n_0 ,\y_40_reg_1796[7]_i_8_n_0 ,\y_40_reg_1796[7]_i_9_n_0 ,\y_40_reg_1796[7]_i_10_n_0 ,\y_40_reg_1796[7]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_40_reg_1796_reg[7]_i_13 
       (.CI(\y_40_reg_1796[7]_i_22_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_40_reg_1796_reg[7]_i_13_n_0 ,\y_40_reg_1796_reg[7]_i_13_n_1 ,\y_40_reg_1796_reg[7]_i_13_n_2 ,\y_40_reg_1796_reg[7]_i_13_n_3 ,\y_40_reg_1796_reg[7]_i_13_n_4 ,\y_40_reg_1796_reg[7]_i_13_n_5 ,\y_40_reg_1796_reg[7]_i_13_n_6 ,\y_40_reg_1796_reg[7]_i_13_n_7 }),
        .DI(y_31_fu_1036_p3__0[7:0]),
        .O(y_34_fu_1112_p3__0[7:0]),
        .S({\y_40_reg_1796[7]_i_23_n_0 ,\y_40_reg_1796[7]_i_24_n_0 ,\y_40_reg_1796[7]_i_25_n_0 ,\y_40_reg_1796[7]_i_26_n_0 ,\y_40_reg_1796[7]_i_27_n_0 ,\y_40_reg_1796[7]_i_28_n_0 ,\y_40_reg_1796[7]_i_29_n_0 ,\y_40_reg_1796[7]_i_30_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_40_reg_1796_reg[7]_i_3 
       (.CI(\y_40_reg_1796[7]_i_12_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_40_reg_1796_reg[7]_i_3_n_0 ,\y_40_reg_1796_reg[7]_i_3_n_1 ,\y_40_reg_1796_reg[7]_i_3_n_2 ,\y_40_reg_1796_reg[7]_i_3_n_3 ,\y_40_reg_1796_reg[7]_i_3_n_4 ,\y_40_reg_1796_reg[7]_i_3_n_5 ,\y_40_reg_1796_reg[7]_i_3_n_6 ,\y_40_reg_1796_reg[7]_i_3_n_7 }),
        .DI(y_34_fu_1112_p3__0[7:0]),
        .O(y_37_fu_1188_p3__0[7:0]),
        .S({\y_40_reg_1796[7]_i_14_n_0 ,\y_40_reg_1796[7]_i_15_n_0 ,\y_40_reg_1796[7]_i_16_n_0 ,\y_40_reg_1796[7]_i_17_n_0 ,\y_40_reg_1796[7]_i_18_n_0 ,\y_40_reg_1796[7]_i_19_n_0 ,\y_40_reg_1796[7]_i_20_n_0 ,\y_40_reg_1796[7]_i_21_n_0 }));
  FDRE \y_40_reg_1796_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_40_fu_1264_p3[8]),
        .Q(y_40_reg_1796[8]),
        .R(1'b0));
  FDRE \y_40_reg_1796_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_40_fu_1264_p3[9]),
        .Q(y_40_reg_1796[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cordic_vectoring_mul_17ns_14ns_29_1_1" *) 
module bd_0_hls_inst_0_cordic_vectoring_mul_17ns_14ns_29_1_1
   (mag_out,
    x_40_reg_1790,
    y_40_reg_1796);
  output [15:0]mag_out;
  input [17:0]x_40_reg_1790;
  input [17:0]y_40_reg_1796;

  wire [15:0]mag_out;
  wire p_0_in1_in;
  wire tmp_product1__0_carry_i_1_n_0;
  wire tmp_product1__0_carry_i_2_n_0;
  wire tmp_product1__0_carry_i_3_n_0;
  wire tmp_product1__0_carry_n_14;
  wire tmp_product1__0_carry_n_15;
  wire tmp_product1__0_carry_n_5;
  wire tmp_product1__0_carry_n_7;
  wire tmp_product1__6_carry__0_i_1_n_0;
  wire tmp_product1__6_carry__0_i_1_n_1;
  wire tmp_product1__6_carry__0_i_1_n_10;
  wire tmp_product1__6_carry__0_i_1_n_11;
  wire tmp_product1__6_carry__0_i_1_n_12;
  wire tmp_product1__6_carry__0_i_1_n_13;
  wire tmp_product1__6_carry__0_i_1_n_14;
  wire tmp_product1__6_carry__0_i_1_n_15;
  wire tmp_product1__6_carry__0_i_1_n_2;
  wire tmp_product1__6_carry__0_i_1_n_3;
  wire tmp_product1__6_carry__0_i_1_n_4;
  wire tmp_product1__6_carry__0_i_1_n_5;
  wire tmp_product1__6_carry__0_i_1_n_6;
  wire tmp_product1__6_carry__0_i_1_n_7;
  wire tmp_product1__6_carry__0_i_1_n_8;
  wire tmp_product1__6_carry__0_i_1_n_9;
  wire tmp_product1__6_carry__0_n_0;
  wire tmp_product1__6_carry__0_n_1;
  wire tmp_product1__6_carry__0_n_10;
  wire tmp_product1__6_carry__0_n_11;
  wire tmp_product1__6_carry__0_n_12;
  wire tmp_product1__6_carry__0_n_13;
  wire tmp_product1__6_carry__0_n_14;
  wire tmp_product1__6_carry__0_n_15;
  wire tmp_product1__6_carry__0_n_2;
  wire tmp_product1__6_carry__0_n_3;
  wire tmp_product1__6_carry__0_n_4;
  wire tmp_product1__6_carry__0_n_5;
  wire tmp_product1__6_carry__0_n_6;
  wire tmp_product1__6_carry__0_n_7;
  wire tmp_product1__6_carry__0_n_8;
  wire tmp_product1__6_carry__0_n_9;
  wire tmp_product1__6_carry__1_i_1_n_14;
  wire tmp_product1__6_carry__1_i_1_n_15;
  wire tmp_product1__6_carry__1_i_1_n_7;
  wire tmp_product1__6_carry__1_n_15;
  wire tmp_product1__6_carry_i_10_n_0;
  wire tmp_product1__6_carry_i_11_n_0;
  wire tmp_product1__6_carry_i_1_n_0;
  wire tmp_product1__6_carry_i_1_n_1;
  wire tmp_product1__6_carry_i_1_n_10;
  wire tmp_product1__6_carry_i_1_n_11;
  wire tmp_product1__6_carry_i_1_n_12;
  wire tmp_product1__6_carry_i_1_n_13;
  wire tmp_product1__6_carry_i_1_n_14;
  wire tmp_product1__6_carry_i_1_n_15;
  wire tmp_product1__6_carry_i_1_n_2;
  wire tmp_product1__6_carry_i_1_n_3;
  wire tmp_product1__6_carry_i_1_n_4;
  wire tmp_product1__6_carry_i_1_n_5;
  wire tmp_product1__6_carry_i_1_n_6;
  wire tmp_product1__6_carry_i_1_n_7;
  wire tmp_product1__6_carry_i_1_n_8;
  wire tmp_product1__6_carry_i_1_n_9;
  wire tmp_product1__6_carry_i_2_n_0;
  wire tmp_product1__6_carry_i_3_n_0;
  wire tmp_product1__6_carry_i_4_n_0;
  wire tmp_product1__6_carry_i_5_n_0;
  wire tmp_product1__6_carry_i_6_n_0;
  wire tmp_product1__6_carry_i_7_n_0;
  wire tmp_product1__6_carry_i_8_n_0;
  wire tmp_product1__6_carry_i_9_n_0;
  wire tmp_product1__6_carry_n_0;
  wire tmp_product1__6_carry_n_1;
  wire tmp_product1__6_carry_n_10;
  wire tmp_product1__6_carry_n_11;
  wire tmp_product1__6_carry_n_12;
  wire tmp_product1__6_carry_n_13;
  wire tmp_product1__6_carry_n_14;
  wire tmp_product1__6_carry_n_15;
  wire tmp_product1__6_carry_n_2;
  wire tmp_product1__6_carry_n_3;
  wire tmp_product1__6_carry_n_4;
  wire tmp_product1__6_carry_n_5;
  wire tmp_product1__6_carry_n_6;
  wire tmp_product1__6_carry_n_7;
  wire tmp_product1__6_carry_n_8;
  wire tmp_product1__6_carry_n_9;
  wire tmp_product2;
  wire tmp_product4_carry__0_i_1_n_0;
  wire tmp_product4_carry__0_i_2_n_0;
  wire tmp_product4_carry__0_i_3_n_0;
  wire tmp_product4_carry__0_i_4_n_0;
  wire tmp_product4_carry__0_i_5_n_0;
  wire tmp_product4_carry__0_i_6_n_0;
  wire tmp_product4_carry__0_i_7_n_0;
  wire tmp_product4_carry__0_i_8_n_0;
  wire tmp_product4_carry__0_n_0;
  wire tmp_product4_carry__0_n_1;
  wire tmp_product4_carry__0_n_2;
  wire tmp_product4_carry__0_n_3;
  wire tmp_product4_carry__0_n_4;
  wire tmp_product4_carry__0_n_5;
  wire tmp_product4_carry__0_n_6;
  wire tmp_product4_carry__0_n_7;
  wire tmp_product4_carry__0_n_8;
  wire tmp_product4_carry__1_i_1_n_0;
  wire tmp_product4_carry__1_i_2_n_0;
  wire tmp_product4_carry__1_n_15;
  wire tmp_product4_carry__1_n_7;
  wire tmp_product4_carry_i_1_n_0;
  wire tmp_product4_carry_i_2_n_0;
  wire tmp_product4_carry_i_3_n_0;
  wire tmp_product4_carry_i_4_n_0;
  wire tmp_product4_carry_i_5_n_0;
  wire tmp_product4_carry_i_6_n_0;
  wire tmp_product4_carry_i_7_n_0;
  wire tmp_product4_carry_i_8_n_0;
  wire tmp_product4_carry_i_9_n_0;
  wire tmp_product4_carry_n_0;
  wire tmp_product4_carry_n_1;
  wire tmp_product4_carry_n_2;
  wire tmp_product4_carry_n_3;
  wire tmp_product4_carry_n_4;
  wire tmp_product4_carry_n_5;
  wire tmp_product4_carry_n_6;
  wire tmp_product4_carry_n_7;
  wire tmp_product5_carry__0_i_1_n_0;
  wire tmp_product5_carry__0_i_2_n_0;
  wire tmp_product5_carry__0_i_3_n_0;
  wire tmp_product5_carry__0_i_4_n_0;
  wire tmp_product5_carry__0_i_5_n_0;
  wire tmp_product5_carry__0_i_6_n_0;
  wire tmp_product5_carry__0_i_7_n_0;
  wire tmp_product5_carry__0_i_8_n_0;
  wire tmp_product5_carry__0_n_0;
  wire tmp_product5_carry__0_n_1;
  wire tmp_product5_carry__0_n_10;
  wire tmp_product5_carry__0_n_11;
  wire tmp_product5_carry__0_n_12;
  wire tmp_product5_carry__0_n_13;
  wire tmp_product5_carry__0_n_14;
  wire tmp_product5_carry__0_n_15;
  wire tmp_product5_carry__0_n_2;
  wire tmp_product5_carry__0_n_3;
  wire tmp_product5_carry__0_n_4;
  wire tmp_product5_carry__0_n_5;
  wire tmp_product5_carry__0_n_6;
  wire tmp_product5_carry__0_n_7;
  wire tmp_product5_carry__0_n_8;
  wire tmp_product5_carry__0_n_9;
  wire tmp_product5_carry__1_i_1_n_0;
  wire tmp_product5_carry__1_i_2_n_0;
  wire tmp_product5_carry__1_n_15;
  wire tmp_product5_carry__1_n_7;
  wire tmp_product5_carry_i_1_n_0;
  wire tmp_product5_carry_i_2_n_0;
  wire tmp_product5_carry_i_3_n_0;
  wire tmp_product5_carry_i_4_n_0;
  wire tmp_product5_carry_i_5_n_0;
  wire tmp_product5_carry_i_6_n_0;
  wire tmp_product5_carry_i_7_n_0;
  wire tmp_product5_carry_i_8_n_0;
  wire tmp_product5_carry_i_9_n_0;
  wire tmp_product5_carry_n_0;
  wire tmp_product5_carry_n_1;
  wire tmp_product5_carry_n_10;
  wire tmp_product5_carry_n_11;
  wire tmp_product5_carry_n_12;
  wire tmp_product5_carry_n_13;
  wire tmp_product5_carry_n_14;
  wire tmp_product5_carry_n_15;
  wire tmp_product5_carry_n_2;
  wire tmp_product5_carry_n_3;
  wire tmp_product5_carry_n_4;
  wire tmp_product5_carry_n_5;
  wire tmp_product5_carry_n_6;
  wire tmp_product5_carry_n_7;
  wire tmp_product5_carry_n_8;
  wire tmp_product5_carry_n_9;
  wire tmp_product_n_100;
  wire tmp_product_n_101;
  wire tmp_product_n_102;
  wire tmp_product_n_103;
  wire tmp_product_n_104;
  wire tmp_product_n_105;
  wire tmp_product_n_74;
  wire tmp_product_n_75;
  wire tmp_product_n_76;
  wire tmp_product_n_93;
  wire tmp_product_n_94;
  wire tmp_product_n_95;
  wire tmp_product_n_96;
  wire tmp_product_n_97;
  wire tmp_product_n_98;
  wire tmp_product_n_99;
  wire [17:0]x_40_reg_1790;
  wire [17:0]y_40_reg_1796;
  wire NLW_tmp_product_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_product_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_product_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_product_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_product_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_product_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_product_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_product_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_product_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_tmp_product_P_UNCONNECTED;
  wire [47:0]NLW_tmp_product_PCOUT_UNCONNECTED;
  wire [7:0]NLW_tmp_product_XOROUT_UNCONNECTED;
  wire [7:1]NLW_tmp_product1__0_carry_CO_UNCONNECTED;
  wire [7:2]NLW_tmp_product1__0_carry_O_UNCONNECTED;
  wire [7:0]NLW_tmp_product1__6_carry__1_CO_UNCONNECTED;
  wire [7:1]NLW_tmp_product1__6_carry__1_O_UNCONNECTED;
  wire [7:1]NLW_tmp_product1__6_carry__1_i_1_CO_UNCONNECTED;
  wire [7:2]NLW_tmp_product1__6_carry__1_i_1_O_UNCONNECTED;
  wire [7:0]NLW_tmp_product4_carry_O_UNCONNECTED;
  wire [6:0]NLW_tmp_product4_carry__0_O_UNCONNECTED;
  wire [7:1]NLW_tmp_product4_carry__1_CO_UNCONNECTED;
  wire [7:2]NLW_tmp_product4_carry__1_O_UNCONNECTED;
  wire [7:1]NLW_tmp_product5_carry__1_CO_UNCONNECTED;
  wire [7:2]NLW_tmp_product5_carry__1_O_UNCONNECTED;

  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    tmp_product
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,tmp_product1__6_carry__1_n_15,tmp_product1__6_carry__0_n_8,tmp_product1__6_carry__0_n_9,tmp_product1__6_carry__0_n_10,tmp_product1__6_carry__0_n_11,tmp_product1__6_carry__0_n_12,tmp_product1__6_carry__0_n_13,tmp_product1__6_carry__0_n_14,tmp_product1__6_carry__0_n_15,tmp_product1__6_carry_n_8,tmp_product1__6_carry_n_9,tmp_product1__6_carry_n_10,tmp_product1__6_carry_n_11,tmp_product1__6_carry_n_12,tmp_product1__6_carry_n_13,tmp_product1__6_carry_n_14,tmp_product1__6_carry_n_15}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_product_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_product_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_product_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_product_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_product_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_product_OVERFLOW_UNCONNECTED),
        .P({NLW_tmp_product_P_UNCONNECTED[47:32],tmp_product_n_74,tmp_product_n_75,tmp_product_n_76,mag_out,tmp_product_n_93,tmp_product_n_94,tmp_product_n_95,tmp_product_n_96,tmp_product_n_97,tmp_product_n_98,tmp_product_n_99,tmp_product_n_100,tmp_product_n_101,tmp_product_n_102,tmp_product_n_103,tmp_product_n_104,tmp_product_n_105}),
        .PATTERNBDETECT(NLW_tmp_product_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_product_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_tmp_product_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp_product_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_tmp_product_XOROUT_UNCONNECTED[7:0]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product1__0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_tmp_product1__0_carry_CO_UNCONNECTED[7:3],tmp_product1__0_carry_n_5,NLW_tmp_product1__0_carry_CO_UNCONNECTED[1],tmp_product1__0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,tmp_product1__0_carry_i_1_n_0,1'b0}),
        .O({NLW_tmp_product1__0_carry_O_UNCONNECTED[7:2],tmp_product1__0_carry_n_14,tmp_product1__0_carry_n_15}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,tmp_product1__0_carry_i_2_n_0,tmp_product1__0_carry_i_3_n_0}));
  LUT3 #(
    .INIT(8'hB8)) 
    tmp_product1__0_carry_i_1
       (.I0(p_0_in1_in),
        .I1(tmp_product4_carry__0_n_8),
        .I2(tmp_product2),
        .O(tmp_product1__0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hD278)) 
    tmp_product1__0_carry_i_2
       (.I0(tmp_product4_carry__0_n_8),
        .I1(p_0_in1_in),
        .I2(tmp_product4_carry__1_n_15),
        .I3(tmp_product2),
        .O(tmp_product1__0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product1__0_carry_i_3
       (.I0(p_0_in1_in),
        .I1(tmp_product4_carry__0_n_8),
        .O(tmp_product1__0_carry_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product1__6_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({tmp_product1__6_carry_n_0,tmp_product1__6_carry_n_1,tmp_product1__6_carry_n_2,tmp_product1__6_carry_n_3,tmp_product1__6_carry_n_4,tmp_product1__6_carry_n_5,tmp_product1__6_carry_n_6,tmp_product1__6_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,tmp_product1__6_carry_i_1_n_12,tmp_product1__6_carry_i_2_n_0,tmp_product1__6_carry_i_3_n_0,1'b0}),
        .O({tmp_product1__6_carry_n_8,tmp_product1__6_carry_n_9,tmp_product1__6_carry_n_10,tmp_product1__6_carry_n_11,tmp_product1__6_carry_n_12,tmp_product1__6_carry_n_13,tmp_product1__6_carry_n_14,tmp_product1__6_carry_n_15}),
        .S({tmp_product1__6_carry_i_1_n_8,tmp_product1__6_carry_i_1_n_9,tmp_product1__6_carry_i_1_n_10,tmp_product1__6_carry_i_1_n_11,tmp_product1__6_carry_i_4_n_0,tmp_product1__6_carry_i_5_n_0,tmp_product1__6_carry_i_6_n_0,tmp_product1__6_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product1__6_carry__0
       (.CI(tmp_product1__6_carry_n_0),
        .CI_TOP(1'b0),
        .CO({tmp_product1__6_carry__0_n_0,tmp_product1__6_carry__0_n_1,tmp_product1__6_carry__0_n_2,tmp_product1__6_carry__0_n_3,tmp_product1__6_carry__0_n_4,tmp_product1__6_carry__0_n_5,tmp_product1__6_carry__0_n_6,tmp_product1__6_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({tmp_product1__6_carry__0_n_8,tmp_product1__6_carry__0_n_9,tmp_product1__6_carry__0_n_10,tmp_product1__6_carry__0_n_11,tmp_product1__6_carry__0_n_12,tmp_product1__6_carry__0_n_13,tmp_product1__6_carry__0_n_14,tmp_product1__6_carry__0_n_15}),
        .S({tmp_product1__6_carry__0_i_1_n_8,tmp_product1__6_carry__0_i_1_n_9,tmp_product1__6_carry__0_i_1_n_10,tmp_product1__6_carry__0_i_1_n_11,tmp_product1__6_carry__0_i_1_n_12,tmp_product1__6_carry__0_i_1_n_13,tmp_product1__6_carry__0_i_1_n_14,tmp_product1__6_carry__0_i_1_n_15}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product1__6_carry__0_i_1
       (.CI(tmp_product1__6_carry_i_1_n_0),
        .CI_TOP(1'b0),
        .CO({tmp_product1__6_carry__0_i_1_n_0,tmp_product1__6_carry__0_i_1_n_1,tmp_product1__6_carry__0_i_1_n_2,tmp_product1__6_carry__0_i_1_n_3,tmp_product1__6_carry__0_i_1_n_4,tmp_product1__6_carry__0_i_1_n_5,tmp_product1__6_carry__0_i_1_n_6,tmp_product1__6_carry__0_i_1_n_7}),
        .DI(x_40_reg_1790[15:8]),
        .O({tmp_product1__6_carry__0_i_1_n_8,tmp_product1__6_carry__0_i_1_n_9,tmp_product1__6_carry__0_i_1_n_10,tmp_product1__6_carry__0_i_1_n_11,tmp_product1__6_carry__0_i_1_n_12,tmp_product1__6_carry__0_i_1_n_13,tmp_product1__6_carry__0_i_1_n_14,tmp_product1__6_carry__0_i_1_n_15}),
        .S(x_40_reg_1790[15:8]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product1__6_carry__1
       (.CI(tmp_product1__6_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO(NLW_tmp_product1__6_carry__1_CO_UNCONNECTED[7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_tmp_product1__6_carry__1_O_UNCONNECTED[7:1],tmp_product1__6_carry__1_n_15}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,tmp_product1__6_carry__1_i_1_n_15}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product1__6_carry__1_i_1
       (.CI(tmp_product1__6_carry__0_i_1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_tmp_product1__6_carry__1_i_1_CO_UNCONNECTED[7:1],tmp_product1__6_carry__1_i_1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x_40_reg_1790[16]}),
        .O({NLW_tmp_product1__6_carry__1_i_1_O_UNCONNECTED[7:2],tmp_product1__6_carry__1_i_1_n_14,tmp_product1__6_carry__1_i_1_n_15}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x_40_reg_1790[17:16]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product1__6_carry_i_1
       (.CI(y_40_reg_1796[17]),
        .CI_TOP(1'b0),
        .CO({tmp_product1__6_carry_i_1_n_0,tmp_product1__6_carry_i_1_n_1,tmp_product1__6_carry_i_1_n_2,tmp_product1__6_carry_i_1_n_3,tmp_product1__6_carry_i_1_n_4,tmp_product1__6_carry_i_1_n_5,tmp_product1__6_carry_i_1_n_6,tmp_product1__6_carry_i_1_n_7}),
        .DI(x_40_reg_1790[7:0]),
        .O({tmp_product1__6_carry_i_1_n_8,tmp_product1__6_carry_i_1_n_9,tmp_product1__6_carry_i_1_n_10,tmp_product1__6_carry_i_1_n_11,tmp_product1__6_carry_i_1_n_12,tmp_product1__6_carry_i_1_n_13,tmp_product1__6_carry_i_1_n_14,tmp_product1__6_carry_i_1_n_15}),
        .S({x_40_reg_1790[7:4],tmp_product1__6_carry_i_8_n_0,tmp_product1__6_carry_i_9_n_0,tmp_product1__6_carry_i_10_n_0,tmp_product1__6_carry_i_11_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    tmp_product1__6_carry_i_10
       (.I0(x_40_reg_1790[1]),
        .I1(y_40_reg_1796[14]),
        .I2(y_40_reg_1796[17]),
        .O(tmp_product1__6_carry_i_10_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tmp_product1__6_carry_i_11
       (.I0(x_40_reg_1790[0]),
        .I1(y_40_reg_1796[13]),
        .I2(y_40_reg_1796[17]),
        .O(tmp_product1__6_carry_i_11_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h8EE8)) 
    tmp_product1__6_carry_i_2
       (.I0(tmp_product1__0_carry_n_14),
        .I1(tmp_product1__6_carry_i_1_n_14),
        .I2(tmp_product5_carry__0_n_8),
        .I3(p_0_in1_in),
        .O(tmp_product1__6_carry_i_2_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h8EE8)) 
    tmp_product1__6_carry_i_3
       (.I0(tmp_product1__0_carry_n_15),
        .I1(tmp_product1__6_carry_i_1_n_15),
        .I2(tmp_product5_carry__0_n_9),
        .I3(p_0_in1_in),
        .O(tmp_product1__6_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h099FF660)) 
    tmp_product1__6_carry_i_4
       (.I0(p_0_in1_in),
        .I1(tmp_product5_carry__1_n_15),
        .I2(tmp_product1__6_carry_i_1_n_13),
        .I3(tmp_product1__0_carry_n_5),
        .I4(tmp_product1__6_carry_i_1_n_12),
        .O(tmp_product1__6_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    tmp_product1__6_carry_i_5
       (.I0(tmp_product1__6_carry_i_2_n_0),
        .I1(tmp_product1__6_carry_i_1_n_13),
        .I2(tmp_product1__0_carry_n_5),
        .I3(p_0_in1_in),
        .I4(tmp_product5_carry__1_n_15),
        .O(tmp_product1__6_carry_i_5_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    tmp_product1__6_carry_i_6
       (.I0(tmp_product1__0_carry_n_14),
        .I1(tmp_product1__6_carry_i_1_n_14),
        .I2(tmp_product5_carry__0_n_8),
        .I3(p_0_in1_in),
        .I4(tmp_product1__6_carry_i_3_n_0),
        .O(tmp_product1__6_carry_i_6_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    tmp_product1__6_carry_i_7
       (.I0(tmp_product1__0_carry_n_15),
        .I1(tmp_product1__6_carry_i_1_n_15),
        .I2(tmp_product5_carry__0_n_9),
        .I3(p_0_in1_in),
        .O(tmp_product1__6_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tmp_product1__6_carry_i_8
       (.I0(x_40_reg_1790[3]),
        .I1(y_40_reg_1796[16]),
        .I2(y_40_reg_1796[17]),
        .O(tmp_product1__6_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tmp_product1__6_carry_i_9
       (.I0(x_40_reg_1790[2]),
        .I1(y_40_reg_1796[15]),
        .I2(y_40_reg_1796[17]),
        .O(tmp_product1__6_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product4_carry
       (.CI(tmp_product4_carry_i_1_n_0),
        .CI_TOP(1'b0),
        .CO({tmp_product4_carry_n_0,tmp_product4_carry_n_1,tmp_product4_carry_n_2,tmp_product4_carry_n_3,tmp_product4_carry_n_4,tmp_product4_carry_n_5,tmp_product4_carry_n_6,tmp_product4_carry_n_7}),
        .DI({tmp_product5_carry_n_8,tmp_product5_carry_n_9,tmp_product5_carry_n_10,tmp_product5_carry_n_11,tmp_product5_carry_n_12,tmp_product5_carry_n_13,tmp_product5_carry_n_14,tmp_product5_carry_n_15}),
        .O(NLW_tmp_product4_carry_O_UNCONNECTED[7:0]),
        .S({tmp_product4_carry_i_2_n_0,tmp_product4_carry_i_3_n_0,tmp_product4_carry_i_4_n_0,tmp_product4_carry_i_5_n_0,tmp_product4_carry_i_6_n_0,tmp_product4_carry_i_7_n_0,tmp_product4_carry_i_8_n_0,tmp_product4_carry_i_9_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product4_carry__0
       (.CI(tmp_product4_carry_n_0),
        .CI_TOP(1'b0),
        .CO({tmp_product4_carry__0_n_0,tmp_product4_carry__0_n_1,tmp_product4_carry__0_n_2,tmp_product4_carry__0_n_3,tmp_product4_carry__0_n_4,tmp_product4_carry__0_n_5,tmp_product4_carry__0_n_6,tmp_product4_carry__0_n_7}),
        .DI({tmp_product5_carry__0_n_8,tmp_product5_carry__0_n_9,tmp_product5_carry__0_n_10,tmp_product5_carry__0_n_11,tmp_product5_carry__0_n_12,tmp_product5_carry__0_n_13,tmp_product5_carry__0_n_14,tmp_product5_carry__0_n_15}),
        .O({tmp_product4_carry__0_n_8,NLW_tmp_product4_carry__0_O_UNCONNECTED[6:0]}),
        .S({tmp_product4_carry__0_i_1_n_0,tmp_product4_carry__0_i_2_n_0,tmp_product4_carry__0_i_3_n_0,tmp_product4_carry__0_i_4_n_0,tmp_product4_carry__0_i_5_n_0,tmp_product4_carry__0_i_6_n_0,tmp_product4_carry__0_i_7_n_0,tmp_product4_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product4_carry__0_i_1
       (.I0(tmp_product5_carry__0_n_8),
        .I1(tmp_product1__6_carry__1_i_1_n_14),
        .I2(p_0_in1_in),
        .O(tmp_product4_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product4_carry__0_i_2
       (.I0(tmp_product5_carry__0_n_9),
        .I1(tmp_product1__6_carry__1_i_1_n_14),
        .I2(p_0_in1_in),
        .O(tmp_product4_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product4_carry__0_i_3
       (.I0(tmp_product5_carry__0_n_10),
        .I1(tmp_product1__6_carry__1_i_1_n_14),
        .I2(p_0_in1_in),
        .O(tmp_product4_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product4_carry__0_i_4
       (.I0(tmp_product5_carry__0_n_11),
        .I1(tmp_product1__6_carry__1_i_1_n_14),
        .I2(p_0_in1_in),
        .O(tmp_product4_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product4_carry__0_i_5
       (.I0(tmp_product5_carry__0_n_12),
        .I1(tmp_product1__6_carry__1_i_1_n_14),
        .I2(p_0_in1_in),
        .O(tmp_product4_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product4_carry__0_i_6
       (.I0(tmp_product5_carry__0_n_13),
        .I1(tmp_product1__6_carry__1_i_1_n_14),
        .I2(p_0_in1_in),
        .O(tmp_product4_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product4_carry__0_i_7
       (.I0(tmp_product5_carry__0_n_14),
        .I1(tmp_product1__6_carry__1_i_1_n_14),
        .I2(p_0_in1_in),
        .O(tmp_product4_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product4_carry__0_i_8
       (.I0(tmp_product5_carry__0_n_15),
        .I1(tmp_product1__6_carry__1_i_1_n_14),
        .I2(p_0_in1_in),
        .O(tmp_product4_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product4_carry__1
       (.CI(tmp_product4_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_tmp_product4_carry__1_CO_UNCONNECTED[7:1],tmp_product4_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,tmp_product5_carry__1_n_15}),
        .O({NLW_tmp_product4_carry__1_O_UNCONNECTED[7:2],tmp_product2,tmp_product4_carry__1_n_15}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,tmp_product4_carry__1_i_1_n_0,tmp_product4_carry__1_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_product4_carry__1_i_1
       (.I0(tmp_product1__6_carry__1_i_1_n_14),
        .O(tmp_product4_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product4_carry__1_i_2
       (.I0(tmp_product5_carry__1_n_15),
        .I1(tmp_product1__6_carry__1_i_1_n_14),
        .I2(p_0_in1_in),
        .O(tmp_product4_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_product4_carry_i_1
       (.I0(p_0_in1_in),
        .O(tmp_product4_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product4_carry_i_2
       (.I0(tmp_product5_carry_n_8),
        .I1(tmp_product1__6_carry__1_i_1_n_14),
        .I2(p_0_in1_in),
        .O(tmp_product4_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product4_carry_i_3
       (.I0(tmp_product5_carry_n_9),
        .I1(tmp_product1__6_carry__1_i_1_n_14),
        .I2(p_0_in1_in),
        .O(tmp_product4_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product4_carry_i_4
       (.I0(tmp_product5_carry_n_10),
        .I1(tmp_product1__6_carry__1_i_1_n_14),
        .I2(p_0_in1_in),
        .O(tmp_product4_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product4_carry_i_5
       (.I0(tmp_product5_carry_n_11),
        .I1(tmp_product1__6_carry__1_i_1_n_14),
        .I2(p_0_in1_in),
        .O(tmp_product4_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product4_carry_i_6
       (.I0(tmp_product5_carry_n_12),
        .I1(tmp_product1__6_carry__1_i_1_n_14),
        .I2(p_0_in1_in),
        .O(tmp_product4_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product4_carry_i_7
       (.I0(tmp_product5_carry_n_13),
        .I1(tmp_product1__6_carry__1_i_1_n_15),
        .I2(p_0_in1_in),
        .O(tmp_product4_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product4_carry_i_8
       (.I0(tmp_product5_carry_n_14),
        .I1(tmp_product1__6_carry__0_i_1_n_8),
        .I2(p_0_in1_in),
        .O(tmp_product4_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product4_carry_i_9
       (.I0(tmp_product5_carry_n_15),
        .I1(tmp_product1__6_carry__0_i_1_n_9),
        .I2(p_0_in1_in),
        .O(tmp_product4_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product5_carry
       (.CI(tmp_product5_carry_i_1_n_0),
        .CI_TOP(1'b0),
        .CO({tmp_product5_carry_n_0,tmp_product5_carry_n_1,tmp_product5_carry_n_2,tmp_product5_carry_n_3,tmp_product5_carry_n_4,tmp_product5_carry_n_5,tmp_product5_carry_n_6,tmp_product5_carry_n_7}),
        .DI(y_40_reg_1796[7:0]),
        .O({tmp_product5_carry_n_8,tmp_product5_carry_n_9,tmp_product5_carry_n_10,tmp_product5_carry_n_11,tmp_product5_carry_n_12,tmp_product5_carry_n_13,tmp_product5_carry_n_14,tmp_product5_carry_n_15}),
        .S({tmp_product5_carry_i_2_n_0,tmp_product5_carry_i_3_n_0,tmp_product5_carry_i_4_n_0,tmp_product5_carry_i_5_n_0,tmp_product5_carry_i_6_n_0,tmp_product5_carry_i_7_n_0,tmp_product5_carry_i_8_n_0,tmp_product5_carry_i_9_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product5_carry__0
       (.CI(tmp_product5_carry_n_0),
        .CI_TOP(1'b0),
        .CO({tmp_product5_carry__0_n_0,tmp_product5_carry__0_n_1,tmp_product5_carry__0_n_2,tmp_product5_carry__0_n_3,tmp_product5_carry__0_n_4,tmp_product5_carry__0_n_5,tmp_product5_carry__0_n_6,tmp_product5_carry__0_n_7}),
        .DI(y_40_reg_1796[15:8]),
        .O({tmp_product5_carry__0_n_8,tmp_product5_carry__0_n_9,tmp_product5_carry__0_n_10,tmp_product5_carry__0_n_11,tmp_product5_carry__0_n_12,tmp_product5_carry__0_n_13,tmp_product5_carry__0_n_14,tmp_product5_carry__0_n_15}),
        .S({tmp_product5_carry__0_i_1_n_0,tmp_product5_carry__0_i_2_n_0,tmp_product5_carry__0_i_3_n_0,tmp_product5_carry__0_i_4_n_0,tmp_product5_carry__0_i_5_n_0,tmp_product5_carry__0_i_6_n_0,tmp_product5_carry__0_i_7_n_0,tmp_product5_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product5_carry__0_i_1
       (.I0(y_40_reg_1796[15]),
        .I1(x_40_reg_1790[17]),
        .I2(y_40_reg_1796[17]),
        .O(tmp_product5_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product5_carry__0_i_2
       (.I0(y_40_reg_1796[14]),
        .I1(x_40_reg_1790[17]),
        .I2(y_40_reg_1796[17]),
        .O(tmp_product5_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product5_carry__0_i_3
       (.I0(y_40_reg_1796[13]),
        .I1(x_40_reg_1790[17]),
        .I2(y_40_reg_1796[17]),
        .O(tmp_product5_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product5_carry__0_i_4
       (.I0(y_40_reg_1796[12]),
        .I1(x_40_reg_1790[17]),
        .I2(y_40_reg_1796[17]),
        .O(tmp_product5_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product5_carry__0_i_5
       (.I0(y_40_reg_1796[11]),
        .I1(x_40_reg_1790[17]),
        .I2(y_40_reg_1796[17]),
        .O(tmp_product5_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product5_carry__0_i_6
       (.I0(y_40_reg_1796[10]),
        .I1(x_40_reg_1790[17]),
        .I2(y_40_reg_1796[17]),
        .O(tmp_product5_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product5_carry__0_i_7
       (.I0(y_40_reg_1796[9]),
        .I1(x_40_reg_1790[17]),
        .I2(y_40_reg_1796[17]),
        .O(tmp_product5_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product5_carry__0_i_8
       (.I0(y_40_reg_1796[8]),
        .I1(x_40_reg_1790[17]),
        .I2(y_40_reg_1796[17]),
        .O(tmp_product5_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product5_carry__1
       (.CI(tmp_product5_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_tmp_product5_carry__1_CO_UNCONNECTED[7:1],tmp_product5_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_40_reg_1796[16]}),
        .O({NLW_tmp_product5_carry__1_O_UNCONNECTED[7:2],p_0_in1_in,tmp_product5_carry__1_n_15}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,tmp_product5_carry__1_i_1_n_0,tmp_product5_carry__1_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_product5_carry__1_i_1
       (.I0(x_40_reg_1790[17]),
        .O(tmp_product5_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product5_carry__1_i_2
       (.I0(y_40_reg_1796[16]),
        .I1(x_40_reg_1790[17]),
        .I2(y_40_reg_1796[17]),
        .O(tmp_product5_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_product5_carry_i_1
       (.I0(y_40_reg_1796[17]),
        .O(tmp_product5_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product5_carry_i_2
       (.I0(y_40_reg_1796[7]),
        .I1(x_40_reg_1790[17]),
        .I2(y_40_reg_1796[17]),
        .O(tmp_product5_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product5_carry_i_3
       (.I0(y_40_reg_1796[6]),
        .I1(x_40_reg_1790[17]),
        .I2(y_40_reg_1796[17]),
        .O(tmp_product5_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product5_carry_i_4
       (.I0(y_40_reg_1796[5]),
        .I1(x_40_reg_1790[17]),
        .I2(y_40_reg_1796[17]),
        .O(tmp_product5_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product5_carry_i_5
       (.I0(y_40_reg_1796[4]),
        .I1(x_40_reg_1790[17]),
        .I2(y_40_reg_1796[17]),
        .O(tmp_product5_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product5_carry_i_6
       (.I0(y_40_reg_1796[3]),
        .I1(x_40_reg_1790[16]),
        .I2(y_40_reg_1796[17]),
        .O(tmp_product5_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product5_carry_i_7
       (.I0(y_40_reg_1796[2]),
        .I1(x_40_reg_1790[15]),
        .I2(y_40_reg_1796[17]),
        .O(tmp_product5_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product5_carry_i_8
       (.I0(y_40_reg_1796[1]),
        .I1(x_40_reg_1790[14]),
        .I2(y_40_reg_1796[17]),
        .O(tmp_product5_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product5_carry_i_9
       (.I0(y_40_reg_1796[0]),
        .I1(x_40_reg_1790[13]),
        .I2(y_40_reg_1796[17]),
        .O(tmp_product5_carry_i_9_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
