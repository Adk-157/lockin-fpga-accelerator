// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Oct  6 12:13:03 2026
// Host        : SUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/adith/OneDrive/Desktop/College/FPGA/vitis/cordic_g3/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_sim_netlist.v
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
  wire [20:20]A;
  wire [19:2]A__0;
  wire B0;
  wire [15:9]a_4_fu_1671_p3;
  wire \a_4_reg_1835[11]_i_1_n_0 ;
  wire \a_4_reg_1835[13]_i_1_n_0 ;
  wire \a_4_reg_1835[13]_i_2_n_0 ;
  wire \a_4_reg_1835[14]_i_1_n_0 ;
  wire \a_4_reg_1835[15]_i_10_n_0 ;
  wire \a_4_reg_1835[15]_i_11_n_0 ;
  wire \a_4_reg_1835[15]_i_12_n_0 ;
  wire \a_4_reg_1835[15]_i_13_n_0 ;
  wire \a_4_reg_1835[15]_i_14_n_0 ;
  wire \a_4_reg_1835[15]_i_15_n_0 ;
  wire \a_4_reg_1835[15]_i_16_n_0 ;
  wire \a_4_reg_1835[15]_i_17_n_0 ;
  wire \a_4_reg_1835[15]_i_18_n_0 ;
  wire \a_4_reg_1835[15]_i_19_n_0 ;
  wire \a_4_reg_1835[15]_i_20_n_0 ;
  wire \a_4_reg_1835[15]_i_21_n_0 ;
  wire \a_4_reg_1835[15]_i_22_n_0 ;
  wire \a_4_reg_1835[15]_i_23_n_0 ;
  wire \a_4_reg_1835[15]_i_24_n_0 ;
  wire \a_4_reg_1835[15]_i_25_n_0 ;
  wire \a_4_reg_1835[15]_i_26_n_0 ;
  wire \a_4_reg_1835[15]_i_27_n_0 ;
  wire \a_4_reg_1835[15]_i_28_n_0 ;
  wire \a_4_reg_1835[15]_i_29_n_0 ;
  wire \a_4_reg_1835[15]_i_30_n_0 ;
  wire \a_4_reg_1835[15]_i_4_n_0 ;
  wire \a_4_reg_1835[15]_i_5_n_0 ;
  wire \a_4_reg_1835[15]_i_7_n_0 ;
  wire \a_4_reg_1835[15]_i_8_n_0 ;
  wire \a_4_reg_1835[15]_i_9_n_0 ;
  wire \a_4_reg_1835[8]_i_10_n_0 ;
  wire \a_4_reg_1835[8]_i_11_n_0 ;
  wire \a_4_reg_1835[8]_i_12_n_0 ;
  wire \a_4_reg_1835[8]_i_13_n_0 ;
  wire \a_4_reg_1835[8]_i_14_n_0 ;
  wire \a_4_reg_1835[8]_i_15_n_0 ;
  wire \a_4_reg_1835[8]_i_16_n_0 ;
  wire \a_4_reg_1835[8]_i_17_n_0 ;
  wire \a_4_reg_1835[8]_i_18_n_0 ;
  wire \a_4_reg_1835[8]_i_20_n_0 ;
  wire \a_4_reg_1835[8]_i_22_n_0 ;
  wire \a_4_reg_1835[8]_i_23_n_0 ;
  wire \a_4_reg_1835[8]_i_24_n_0 ;
  wire \a_4_reg_1835[8]_i_25_n_0 ;
  wire \a_4_reg_1835[8]_i_26_n_0 ;
  wire \a_4_reg_1835[8]_i_28_n_0 ;
  wire \a_4_reg_1835[8]_i_29_n_0 ;
  wire \a_4_reg_1835[8]_i_2_n_0 ;
  wire \a_4_reg_1835[8]_i_30_n_0 ;
  wire \a_4_reg_1835[8]_i_31_n_0 ;
  wire \a_4_reg_1835[8]_i_32_n_0 ;
  wire \a_4_reg_1835[8]_i_33_n_0 ;
  wire \a_4_reg_1835[8]_i_34_n_0 ;
  wire \a_4_reg_1835[8]_i_35_n_0 ;
  wire \a_4_reg_1835[8]_i_36_n_0 ;
  wire \a_4_reg_1835[8]_i_37_n_0 ;
  wire \a_4_reg_1835[8]_i_38_n_0 ;
  wire \a_4_reg_1835[8]_i_3_n_0 ;
  wire \a_4_reg_1835[8]_i_4_n_0 ;
  wire \a_4_reg_1835[8]_i_5_n_0 ;
  wire \a_4_reg_1835[8]_i_6_n_0 ;
  wire \a_4_reg_1835[8]_i_7_n_0 ;
  wire \a_4_reg_1835[8]_i_8_n_0 ;
  wire \a_4_reg_1835[8]_i_9_n_0 ;
  wire \a_4_reg_1835_reg[15]_i_2_n_2 ;
  wire \a_4_reg_1835_reg[15]_i_2_n_4 ;
  wire \a_4_reg_1835_reg[15]_i_2_n_5 ;
  wire \a_4_reg_1835_reg[15]_i_2_n_6 ;
  wire \a_4_reg_1835_reg[15]_i_2_n_7 ;
  wire \a_4_reg_1835_reg[15]_i_3_n_4 ;
  wire \a_4_reg_1835_reg[15]_i_3_n_5 ;
  wire \a_4_reg_1835_reg[15]_i_3_n_6 ;
  wire \a_4_reg_1835_reg[15]_i_3_n_7 ;
  wire \a_4_reg_1835_reg[15]_i_6_n_4 ;
  wire \a_4_reg_1835_reg[15]_i_6_n_5 ;
  wire \a_4_reg_1835_reg[15]_i_6_n_6 ;
  wire \a_4_reg_1835_reg[15]_i_6_n_7 ;
  wire \a_4_reg_1835_reg[8]_i_19_n_1 ;
  wire \a_4_reg_1835_reg[8]_i_19_n_2 ;
  wire \a_4_reg_1835_reg[8]_i_19_n_3 ;
  wire \a_4_reg_1835_reg[8]_i_19_n_4 ;
  wire \a_4_reg_1835_reg[8]_i_19_n_5 ;
  wire \a_4_reg_1835_reg[8]_i_19_n_6 ;
  wire \a_4_reg_1835_reg[8]_i_19_n_7 ;
  wire \a_4_reg_1835_reg[8]_i_1_n_0 ;
  wire \a_4_reg_1835_reg[8]_i_1_n_1 ;
  wire \a_4_reg_1835_reg[8]_i_1_n_2 ;
  wire \a_4_reg_1835_reg[8]_i_1_n_3 ;
  wire \a_4_reg_1835_reg[8]_i_1_n_4 ;
  wire \a_4_reg_1835_reg[8]_i_1_n_5 ;
  wire \a_4_reg_1835_reg[8]_i_1_n_6 ;
  wire \a_4_reg_1835_reg[8]_i_1_n_7 ;
  wire \a_4_reg_1835_reg[8]_i_21_n_5 ;
  wire \a_4_reg_1835_reg[8]_i_21_n_6 ;
  wire \a_4_reg_1835_reg[8]_i_21_n_7 ;
  wire [8:1]a_fu_1633_p2;
  wire [14:9]a_fu_1633_p2__0;
  wire [19:3]add_ln30_fu_314_p2;
  wire [6:6]add_ln43_5_fu_1604_p2;
  wire [1:1]add_ln43_7_fu_930_p2;
  wire [14:1]add_ln43_9_fu_945_p2;
  wire \add_ln43_9_reg_1781[14]_i_12_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_13_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_14_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_15_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_16_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_17_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_18_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_19_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_20_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_21_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_22_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_23_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_24_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_25_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_26_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_27_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_28_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_29_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_2_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_30_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_31_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_32_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_33_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_34_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_35_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_36_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_3_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_4_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_5_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_6_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_7_n_0 ;
  wire \add_ln43_9_reg_1781[14]_i_8_n_0 ;
  wire \add_ln43_9_reg_1781[8]_i_10_n_0 ;
  wire \add_ln43_9_reg_1781[8]_i_11_n_0 ;
  wire \add_ln43_9_reg_1781[8]_i_12_n_0 ;
  wire \add_ln43_9_reg_1781[8]_i_13_n_0 ;
  wire \add_ln43_9_reg_1781[8]_i_14_n_0 ;
  wire \add_ln43_9_reg_1781[8]_i_15_n_0 ;
  wire \add_ln43_9_reg_1781[8]_i_16_n_0 ;
  wire \add_ln43_9_reg_1781[8]_i_17_n_0 ;
  wire \add_ln43_9_reg_1781[8]_i_2_n_0 ;
  wire \add_ln43_9_reg_1781[8]_i_3_n_0 ;
  wire \add_ln43_9_reg_1781[8]_i_4_n_0 ;
  wire \add_ln43_9_reg_1781[8]_i_5_n_0 ;
  wire \add_ln43_9_reg_1781[8]_i_6_n_0 ;
  wire \add_ln43_9_reg_1781[8]_i_7_n_0 ;
  wire \add_ln43_9_reg_1781[8]_i_8_n_0 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_11_n_0 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_11_n_1 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_11_n_10 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_11_n_11 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_11_n_12 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_11_n_13 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_11_n_14 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_11_n_15 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_11_n_2 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_11_n_3 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_11_n_4 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_11_n_5 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_11_n_6 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_11_n_7 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_11_n_8 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_11_n_9 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_1_n_3 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_1_n_4 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_1_n_5 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_1_n_6 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_1_n_7 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_9_n_11 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_9_n_12 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_9_n_13 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_9_n_14 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_9_n_15 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_9_n_4 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_9_n_5 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_9_n_6 ;
  wire \add_ln43_9_reg_1781_reg[14]_i_9_n_7 ;
  wire \add_ln43_9_reg_1781_reg[8]_i_1_n_0 ;
  wire \add_ln43_9_reg_1781_reg[8]_i_1_n_1 ;
  wire \add_ln43_9_reg_1781_reg[8]_i_1_n_2 ;
  wire \add_ln43_9_reg_1781_reg[8]_i_1_n_3 ;
  wire \add_ln43_9_reg_1781_reg[8]_i_1_n_4 ;
  wire \add_ln43_9_reg_1781_reg[8]_i_1_n_5 ;
  wire \add_ln43_9_reg_1781_reg[8]_i_1_n_6 ;
  wire \add_ln43_9_reg_1781_reg[8]_i_1_n_7 ;
  wire \add_ln43_9_reg_1781_reg_n_0_[10] ;
  wire \add_ln43_9_reg_1781_reg_n_0_[11] ;
  wire \add_ln43_9_reg_1781_reg_n_0_[12] ;
  wire \add_ln43_9_reg_1781_reg_n_0_[13] ;
  wire \add_ln43_9_reg_1781_reg_n_0_[14] ;
  wire \add_ln43_9_reg_1781_reg_n_0_[1] ;
  wire \add_ln43_9_reg_1781_reg_n_0_[2] ;
  wire \add_ln43_9_reg_1781_reg_n_0_[3] ;
  wire \add_ln43_9_reg_1781_reg_n_0_[4] ;
  wire \add_ln43_9_reg_1781_reg_n_0_[5] ;
  wire \add_ln43_9_reg_1781_reg_n_0_[6] ;
  wire \add_ln43_9_reg_1781_reg_n_0_[7] ;
  wire \add_ln43_9_reg_1781_reg_n_0_[8] ;
  wire \add_ln43_9_reg_1781_reg_n_0_[9] ;
  wire [15:1]\^ang_out ;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire ap_idle;
  wire ap_rst;
  wire ap_start;
  wire [15:0]mag_out;
  wire [13:12]off_1_fu_292_p3;
  wire [13:8]off_1_reg_1699;
  wire \off_1_reg_1699[12]_i_2_n_0 ;
  wire \off_1_reg_1699[13]_i_2_n_0 ;
  wire \off_1_reg_1699[13]_i_3_n_0 ;
  wire \off_1_reg_1699[13]_i_4_n_0 ;
  wire p_0_in;
  wire sel;
  wire [18:4]sext_ln10_1_fu_276_p1;
  wire [17:0]sext_ln27_2_fu_514_p1;
  wire [19:2]sext_ln27_fu_362_p1;
  wire sext_ln28_2_fu_528_p10;
  wire [13:2]sext_ln43_4_fu_1620_p1;
  wire [14:1]sext_ln43_6_fu_1624_p1;
  wire tmp_10_reg_1774;
  wire \tmp_10_reg_1774[0]_i_2_n_0 ;
  wire \tmp_10_reg_1774[0]_i_3_n_0 ;
  wire \tmp_10_reg_1774[0]_i_4_n_0 ;
  wire \tmp_10_reg_1774[0]_i_5_n_0 ;
  wire \tmp_10_reg_1774[0]_i_6_n_0 ;
  wire tmp_10_reg_1774_pp0_iter2_reg;
  wire \tmp_10_reg_1774_reg[0]_i_1_n_4 ;
  wire \tmp_10_reg_1774_reg[0]_i_1_n_5 ;
  wire \tmp_10_reg_1774_reg[0]_i_1_n_6 ;
  wire \tmp_10_reg_1774_reg[0]_i_1_n_7 ;
  wire tmp_11_reg_1786;
  wire \tmp_11_reg_1786[0]_i_10_n_0 ;
  wire \tmp_11_reg_1786[0]_i_11_n_0 ;
  wire \tmp_11_reg_1786[0]_i_12_n_0 ;
  wire \tmp_11_reg_1786[0]_i_13_n_0 ;
  wire \tmp_11_reg_1786[0]_i_14_n_0 ;
  wire \tmp_11_reg_1786[0]_i_15_n_0 ;
  wire \tmp_11_reg_1786[0]_i_16_n_0 ;
  wire \tmp_11_reg_1786[0]_i_17_n_0 ;
  wire \tmp_11_reg_1786[0]_i_18_n_0 ;
  wire \tmp_11_reg_1786[0]_i_19_n_0 ;
  wire \tmp_11_reg_1786[0]_i_20_n_0 ;
  wire \tmp_11_reg_1786[0]_i_21_n_0 ;
  wire \tmp_11_reg_1786[0]_i_22_n_0 ;
  wire \tmp_11_reg_1786[0]_i_23_n_0 ;
  wire \tmp_11_reg_1786[0]_i_24_n_0 ;
  wire \tmp_11_reg_1786[0]_i_25_n_0 ;
  wire \tmp_11_reg_1786[0]_i_3_n_0 ;
  wire \tmp_11_reg_1786[0]_i_4_n_0 ;
  wire \tmp_11_reg_1786[0]_i_5_n_0 ;
  wire \tmp_11_reg_1786[0]_i_6_n_0 ;
  wire \tmp_11_reg_1786[0]_i_7_n_0 ;
  wire \tmp_11_reg_1786[0]_i_9_n_0 ;
  wire \tmp_11_reg_1786_reg[0]_i_1_n_4 ;
  wire \tmp_11_reg_1786_reg[0]_i_1_n_5 ;
  wire \tmp_11_reg_1786_reg[0]_i_1_n_6 ;
  wire \tmp_11_reg_1786_reg[0]_i_1_n_7 ;
  wire \tmp_11_reg_1786_reg[0]_i_2_n_0 ;
  wire \tmp_11_reg_1786_reg[0]_i_2_n_1 ;
  wire \tmp_11_reg_1786_reg[0]_i_2_n_2 ;
  wire \tmp_11_reg_1786_reg[0]_i_2_n_3 ;
  wire \tmp_11_reg_1786_reg[0]_i_2_n_4 ;
  wire \tmp_11_reg_1786_reg[0]_i_2_n_5 ;
  wire \tmp_11_reg_1786_reg[0]_i_2_n_6 ;
  wire \tmp_11_reg_1786_reg[0]_i_2_n_7 ;
  wire \tmp_11_reg_1786_reg[0]_i_8_n_0 ;
  wire \tmp_11_reg_1786_reg[0]_i_8_n_1 ;
  wire \tmp_11_reg_1786_reg[0]_i_8_n_2 ;
  wire \tmp_11_reg_1786_reg[0]_i_8_n_3 ;
  wire \tmp_11_reg_1786_reg[0]_i_8_n_4 ;
  wire \tmp_11_reg_1786_reg[0]_i_8_n_5 ;
  wire \tmp_11_reg_1786_reg[0]_i_8_n_6 ;
  wire \tmp_11_reg_1786_reg[0]_i_8_n_7 ;
  wire tmp_12_reg_1791;
  wire \tmp_12_reg_1791[0]_i_10_n_0 ;
  wire \tmp_12_reg_1791[0]_i_11_n_0 ;
  wire \tmp_12_reg_1791[0]_i_12_n_0 ;
  wire \tmp_12_reg_1791[0]_i_13_n_0 ;
  wire \tmp_12_reg_1791[0]_i_14_n_0 ;
  wire \tmp_12_reg_1791[0]_i_15_n_0 ;
  wire \tmp_12_reg_1791[0]_i_3_n_0 ;
  wire \tmp_12_reg_1791[0]_i_4_n_0 ;
  wire \tmp_12_reg_1791[0]_i_5_n_0 ;
  wire \tmp_12_reg_1791[0]_i_6_n_0 ;
  wire \tmp_12_reg_1791[0]_i_7_n_0 ;
  wire \tmp_12_reg_1791[0]_i_8_n_0 ;
  wire \tmp_12_reg_1791[0]_i_9_n_0 ;
  wire \tmp_12_reg_1791_reg[0]_i_16_n_4 ;
  wire \tmp_12_reg_1791_reg[0]_i_16_n_5 ;
  wire \tmp_12_reg_1791_reg[0]_i_16_n_6 ;
  wire \tmp_12_reg_1791_reg[0]_i_16_n_7 ;
  wire \tmp_12_reg_1791_reg[0]_i_1_n_4 ;
  wire \tmp_12_reg_1791_reg[0]_i_1_n_5 ;
  wire \tmp_12_reg_1791_reg[0]_i_1_n_6 ;
  wire \tmp_12_reg_1791_reg[0]_i_1_n_7 ;
  wire \tmp_12_reg_1791_reg[0]_i_2_n_0 ;
  wire \tmp_12_reg_1791_reg[0]_i_2_n_1 ;
  wire \tmp_12_reg_1791_reg[0]_i_2_n_2 ;
  wire \tmp_12_reg_1791_reg[0]_i_2_n_3 ;
  wire \tmp_12_reg_1791_reg[0]_i_2_n_4 ;
  wire \tmp_12_reg_1791_reg[0]_i_2_n_5 ;
  wire \tmp_12_reg_1791_reg[0]_i_2_n_6 ;
  wire \tmp_12_reg_1791_reg[0]_i_2_n_7 ;
  wire tmp_13_reg_1796;
  wire \tmp_13_reg_1796[0]_i_2_n_0 ;
  wire \tmp_13_reg_1796[0]_i_3_n_0 ;
  wire \tmp_13_reg_1796[0]_i_4_n_0 ;
  wire \tmp_13_reg_1796[0]_i_5_n_0 ;
  wire \tmp_13_reg_1796[0]_i_6_n_0 ;
  wire \tmp_13_reg_1796_reg[0]_i_1_n_4 ;
  wire \tmp_13_reg_1796_reg[0]_i_1_n_5 ;
  wire \tmp_13_reg_1796_reg[0]_i_1_n_6 ;
  wire \tmp_13_reg_1796_reg[0]_i_1_n_7 ;
  wire \tmp_13_reg_1796_reg[0]_i_7_n_4 ;
  wire \tmp_13_reg_1796_reg[0]_i_7_n_5 ;
  wire \tmp_13_reg_1796_reg[0]_i_7_n_6 ;
  wire \tmp_13_reg_1796_reg[0]_i_7_n_7 ;
  wire tmp_14_reg_1823;
  wire \tmp_14_reg_1823[0]_i_2_n_0 ;
  wire \tmp_14_reg_1823[0]_i_3_n_0 ;
  wire \tmp_14_reg_1823[0]_i_4_n_0 ;
  wire \tmp_14_reg_1823[0]_i_5_n_0 ;
  wire \tmp_14_reg_1823[0]_i_6_n_0 ;
  wire \tmp_14_reg_1823_reg[0]_i_1_n_4 ;
  wire \tmp_14_reg_1823_reg[0]_i_1_n_5 ;
  wire \tmp_14_reg_1823_reg[0]_i_1_n_6 ;
  wire \tmp_14_reg_1823_reg[0]_i_1_n_7 ;
  wire \tmp_2_reg_1704_pp0_iter1_reg_reg[0]_srl2_n_0 ;
  wire tmp_2_reg_1704_pp0_iter2_reg;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_10_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_10_n_1 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_10_n_2 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_10_n_3 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_10_n_4 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_10_n_5 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_10_n_6 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_10_n_7 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_11_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_12_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_13_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_14_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_15_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_16_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_17_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_18_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_19_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_20_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_21_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_22_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_23_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_24_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_25_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_26_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_28_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_29_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_2_n_7 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_30_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_31_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_32_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_33_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_34_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_35_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_36_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_37_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_38_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_39_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_40_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_41_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_42_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_43_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_44_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_45_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_46_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_47_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_48_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_49_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_4_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_4_n_1 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_4_n_2 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_4_n_3 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_4_n_4 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_4_n_5 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_4_n_6 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_4_n_7 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_50_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_51_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_52_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_53_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_54_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_55_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_56_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_57_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_5_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_62_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_64_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_68_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_69_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_6_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_70_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_71_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_7_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_8_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_8_n_1 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_8_n_2 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_8_n_3 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_8_n_4 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_8_n_5 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_8_n_6 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_8_n_7 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_9_n_0 ;
  wire \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_n_0 ;
  wire tmp_3_reg_1710_pp0_iter2_reg;
  wire \tmp_4_reg_1715_pp0_iter1_reg_reg[0]_srl2_n_0 ;
  wire tmp_4_reg_1715_pp0_iter2_reg;
  wire tmp_5_reg_1720;
  wire \tmp_5_reg_1720[0]_i_10_n_0 ;
  wire \tmp_5_reg_1720[0]_i_11_n_0 ;
  wire \tmp_5_reg_1720[0]_i_12_n_0 ;
  wire \tmp_5_reg_1720[0]_i_13_n_0 ;
  wire \tmp_5_reg_1720[0]_i_14_n_0 ;
  wire \tmp_5_reg_1720[0]_i_15_n_0 ;
  wire \tmp_5_reg_1720[0]_i_16_n_0 ;
  wire \tmp_5_reg_1720[0]_i_17_n_0 ;
  wire \tmp_5_reg_1720[0]_i_18_n_0 ;
  wire \tmp_5_reg_1720[0]_i_19_n_0 ;
  wire \tmp_5_reg_1720[0]_i_20_n_0 ;
  wire \tmp_5_reg_1720[0]_i_21_n_0 ;
  wire \tmp_5_reg_1720[0]_i_22_n_0 ;
  wire \tmp_5_reg_1720[0]_i_23_n_0 ;
  wire \tmp_5_reg_1720[0]_i_24_n_0 ;
  wire \tmp_5_reg_1720[0]_i_25_n_0 ;
  wire \tmp_5_reg_1720[0]_i_26_n_0 ;
  wire \tmp_5_reg_1720[0]_i_27_n_0 ;
  wire \tmp_5_reg_1720[0]_i_28_n_0 ;
  wire \tmp_5_reg_1720[0]_i_29_n_0 ;
  wire \tmp_5_reg_1720[0]_i_31_n_0 ;
  wire \tmp_5_reg_1720[0]_i_32_n_0 ;
  wire \tmp_5_reg_1720[0]_i_33_n_0 ;
  wire \tmp_5_reg_1720[0]_i_34_n_0 ;
  wire \tmp_5_reg_1720[0]_i_35_n_0 ;
  wire \tmp_5_reg_1720[0]_i_36_n_0 ;
  wire \tmp_5_reg_1720[0]_i_37_n_0 ;
  wire \tmp_5_reg_1720[0]_i_38_n_0 ;
  wire \tmp_5_reg_1720[0]_i_39_n_0 ;
  wire \tmp_5_reg_1720[0]_i_40_n_0 ;
  wire \tmp_5_reg_1720[0]_i_41_n_0 ;
  wire \tmp_5_reg_1720[0]_i_42_n_0 ;
  wire \tmp_5_reg_1720[0]_i_43_n_0 ;
  wire \tmp_5_reg_1720[0]_i_44_n_0 ;
  wire \tmp_5_reg_1720[0]_i_45_n_0 ;
  wire \tmp_5_reg_1720[0]_i_46_n_0 ;
  wire \tmp_5_reg_1720[0]_i_47_n_0 ;
  wire \tmp_5_reg_1720[0]_i_48_n_0 ;
  wire \tmp_5_reg_1720[0]_i_4_n_0 ;
  wire \tmp_5_reg_1720[0]_i_5_n_0 ;
  wire \tmp_5_reg_1720[0]_i_6_n_0 ;
  wire \tmp_5_reg_1720[0]_i_7_n_0 ;
  wire \tmp_5_reg_1720[0]_i_8_n_0 ;
  wire \tmp_5_reg_1720[0]_i_9_n_0 ;
  wire tmp_5_reg_1720_pp0_iter1_reg;
  wire tmp_5_reg_1720_pp0_iter2_reg;
  wire \tmp_5_reg_1720_reg[0]_i_1_n_11 ;
  wire \tmp_5_reg_1720_reg[0]_i_1_n_12 ;
  wire \tmp_5_reg_1720_reg[0]_i_1_n_13 ;
  wire \tmp_5_reg_1720_reg[0]_i_1_n_14 ;
  wire \tmp_5_reg_1720_reg[0]_i_1_n_15 ;
  wire \tmp_5_reg_1720_reg[0]_i_1_n_3 ;
  wire \tmp_5_reg_1720_reg[0]_i_1_n_4 ;
  wire \tmp_5_reg_1720_reg[0]_i_1_n_5 ;
  wire \tmp_5_reg_1720_reg[0]_i_1_n_6 ;
  wire \tmp_5_reg_1720_reg[0]_i_1_n_7 ;
  wire \tmp_5_reg_1720_reg[0]_i_2_n_5 ;
  wire \tmp_5_reg_1720_reg[0]_i_2_n_7 ;
  wire \tmp_5_reg_1720_reg[0]_i_30_n_0 ;
  wire \tmp_5_reg_1720_reg[0]_i_30_n_1 ;
  wire \tmp_5_reg_1720_reg[0]_i_30_n_2 ;
  wire \tmp_5_reg_1720_reg[0]_i_30_n_3 ;
  wire \tmp_5_reg_1720_reg[0]_i_30_n_4 ;
  wire \tmp_5_reg_1720_reg[0]_i_30_n_5 ;
  wire \tmp_5_reg_1720_reg[0]_i_30_n_6 ;
  wire \tmp_5_reg_1720_reg[0]_i_30_n_7 ;
  wire \tmp_5_reg_1720_reg[0]_i_3_n_0 ;
  wire \tmp_5_reg_1720_reg[0]_i_3_n_1 ;
  wire \tmp_5_reg_1720_reg[0]_i_3_n_2 ;
  wire \tmp_5_reg_1720_reg[0]_i_3_n_3 ;
  wire \tmp_5_reg_1720_reg[0]_i_3_n_4 ;
  wire \tmp_5_reg_1720_reg[0]_i_3_n_5 ;
  wire \tmp_5_reg_1720_reg[0]_i_3_n_6 ;
  wire \tmp_5_reg_1720_reg[0]_i_3_n_7 ;
  wire tmp_9_reg_1747;
  wire \tmp_9_reg_1747[0]_i_10_n_0 ;
  wire \tmp_9_reg_1747[0]_i_11_n_0 ;
  wire \tmp_9_reg_1747[0]_i_12_n_0 ;
  wire \tmp_9_reg_1747[0]_i_13_n_0 ;
  wire \tmp_9_reg_1747[0]_i_14_n_0 ;
  wire \tmp_9_reg_1747[0]_i_15_n_0 ;
  wire \tmp_9_reg_1747[0]_i_16_n_0 ;
  wire \tmp_9_reg_1747[0]_i_17_n_0 ;
  wire \tmp_9_reg_1747[0]_i_18_n_0 ;
  wire \tmp_9_reg_1747[0]_i_19_n_0 ;
  wire \tmp_9_reg_1747[0]_i_20_n_0 ;
  wire \tmp_9_reg_1747[0]_i_21_n_0 ;
  wire \tmp_9_reg_1747[0]_i_22_n_0 ;
  wire \tmp_9_reg_1747[0]_i_24_n_0 ;
  wire \tmp_9_reg_1747[0]_i_25_n_0 ;
  wire \tmp_9_reg_1747[0]_i_26_n_0 ;
  wire \tmp_9_reg_1747[0]_i_27_n_0 ;
  wire \tmp_9_reg_1747[0]_i_28_n_0 ;
  wire \tmp_9_reg_1747[0]_i_29_n_0 ;
  wire \tmp_9_reg_1747[0]_i_30_n_0 ;
  wire \tmp_9_reg_1747[0]_i_31_n_0 ;
  wire \tmp_9_reg_1747[0]_i_38_n_0 ;
  wire \tmp_9_reg_1747[0]_i_39_n_0 ;
  wire \tmp_9_reg_1747[0]_i_40_n_0 ;
  wire \tmp_9_reg_1747[0]_i_41_n_0 ;
  wire \tmp_9_reg_1747[0]_i_4_n_0 ;
  wire \tmp_9_reg_1747[0]_i_5_n_0 ;
  wire \tmp_9_reg_1747[0]_i_6_n_0 ;
  wire \tmp_9_reg_1747[0]_i_7_n_0 ;
  wire \tmp_9_reg_1747[0]_i_8_n_0 ;
  wire tmp_9_reg_1747_pp0_iter2_reg;
  wire \tmp_9_reg_1747_reg[0]_i_1_n_4 ;
  wire \tmp_9_reg_1747_reg[0]_i_1_n_5 ;
  wire \tmp_9_reg_1747_reg[0]_i_1_n_6 ;
  wire \tmp_9_reg_1747_reg[0]_i_1_n_7 ;
  wire \tmp_9_reg_1747_reg[0]_i_23_n_11 ;
  wire \tmp_9_reg_1747_reg[0]_i_23_n_12 ;
  wire \tmp_9_reg_1747_reg[0]_i_23_n_13 ;
  wire \tmp_9_reg_1747_reg[0]_i_23_n_14 ;
  wire \tmp_9_reg_1747_reg[0]_i_23_n_15 ;
  wire \tmp_9_reg_1747_reg[0]_i_23_n_4 ;
  wire \tmp_9_reg_1747_reg[0]_i_23_n_5 ;
  wire \tmp_9_reg_1747_reg[0]_i_23_n_6 ;
  wire \tmp_9_reg_1747_reg[0]_i_23_n_7 ;
  wire \tmp_9_reg_1747_reg[0]_i_2_n_0 ;
  wire \tmp_9_reg_1747_reg[0]_i_2_n_1 ;
  wire \tmp_9_reg_1747_reg[0]_i_2_n_2 ;
  wire \tmp_9_reg_1747_reg[0]_i_2_n_3 ;
  wire \tmp_9_reg_1747_reg[0]_i_2_n_4 ;
  wire \tmp_9_reg_1747_reg[0]_i_2_n_5 ;
  wire \tmp_9_reg_1747_reg[0]_i_2_n_6 ;
  wire \tmp_9_reg_1747_reg[0]_i_2_n_7 ;
  wire \tmp_9_reg_1747_reg[0]_i_32_n_11 ;
  wire \tmp_9_reg_1747_reg[0]_i_32_n_12 ;
  wire \tmp_9_reg_1747_reg[0]_i_32_n_13 ;
  wire \tmp_9_reg_1747_reg[0]_i_32_n_14 ;
  wire \tmp_9_reg_1747_reg[0]_i_32_n_15 ;
  wire \tmp_9_reg_1747_reg[0]_i_32_n_4 ;
  wire \tmp_9_reg_1747_reg[0]_i_32_n_5 ;
  wire \tmp_9_reg_1747_reg[0]_i_32_n_6 ;
  wire \tmp_9_reg_1747_reg[0]_i_32_n_7 ;
  wire \tmp_9_reg_1747_reg[0]_i_3_n_11 ;
  wire \tmp_9_reg_1747_reg[0]_i_3_n_12 ;
  wire \tmp_9_reg_1747_reg[0]_i_3_n_13 ;
  wire \tmp_9_reg_1747_reg[0]_i_3_n_14 ;
  wire \tmp_9_reg_1747_reg[0]_i_3_n_15 ;
  wire \tmp_9_reg_1747_reg[0]_i_3_n_4 ;
  wire \tmp_9_reg_1747_reg[0]_i_3_n_5 ;
  wire \tmp_9_reg_1747_reg[0]_i_3_n_6 ;
  wire \tmp_9_reg_1747_reg[0]_i_3_n_7 ;
  wire \tmp_9_reg_1747_reg[0]_i_9_n_0 ;
  wire \tmp_9_reg_1747_reg[0]_i_9_n_1 ;
  wire \tmp_9_reg_1747_reg[0]_i_9_n_10 ;
  wire \tmp_9_reg_1747_reg[0]_i_9_n_11 ;
  wire \tmp_9_reg_1747_reg[0]_i_9_n_12 ;
  wire \tmp_9_reg_1747_reg[0]_i_9_n_13 ;
  wire \tmp_9_reg_1747_reg[0]_i_9_n_14 ;
  wire \tmp_9_reg_1747_reg[0]_i_9_n_15 ;
  wire \tmp_9_reg_1747_reg[0]_i_9_n_2 ;
  wire \tmp_9_reg_1747_reg[0]_i_9_n_3 ;
  wire \tmp_9_reg_1747_reg[0]_i_9_n_4 ;
  wire \tmp_9_reg_1747_reg[0]_i_9_n_5 ;
  wire \tmp_9_reg_1747_reg[0]_i_9_n_6 ;
  wire \tmp_9_reg_1747_reg[0]_i_9_n_7 ;
  wire \tmp_9_reg_1747_reg[0]_i_9_n_8 ;
  wire \tmp_9_reg_1747_reg[0]_i_9_n_9 ;
  wire [20:0]x_12_fu_540_p2;
  wire [20:0]x_12_reg_1727;
  wire \x_12_reg_1727[15]_i_2_n_0 ;
  wire \x_12_reg_1727[15]_i_3_n_0 ;
  wire \x_12_reg_1727[15]_i_4_n_0 ;
  wire \x_12_reg_1727[15]_i_5_n_0 ;
  wire \x_12_reg_1727[15]_i_6_n_0 ;
  wire \x_12_reg_1727[15]_i_7_n_0 ;
  wire \x_12_reg_1727[15]_i_8_n_0 ;
  wire \x_12_reg_1727[15]_i_9_n_0 ;
  wire \x_12_reg_1727[20]_i_2_n_0 ;
  wire \x_12_reg_1727[20]_i_3_n_0 ;
  wire \x_12_reg_1727[20]_i_4_n_0 ;
  wire \x_12_reg_1727[20]_i_5_n_0 ;
  wire \x_12_reg_1727[20]_i_6_n_0 ;
  wire \x_12_reg_1727[7]_i_2_n_0 ;
  wire \x_12_reg_1727[7]_i_3_n_0 ;
  wire \x_12_reg_1727[7]_i_4_n_0 ;
  wire \x_12_reg_1727[7]_i_5_n_0 ;
  wire \x_12_reg_1727[7]_i_6_n_0 ;
  wire \x_12_reg_1727[7]_i_7_n_0 ;
  wire \x_12_reg_1727[7]_i_8_n_0 ;
  wire \x_12_reg_1727[7]_i_9_n_0 ;
  wire \x_12_reg_1727_reg[15]_i_1_n_0 ;
  wire \x_12_reg_1727_reg[15]_i_1_n_1 ;
  wire \x_12_reg_1727_reg[15]_i_1_n_2 ;
  wire \x_12_reg_1727_reg[15]_i_1_n_3 ;
  wire \x_12_reg_1727_reg[15]_i_1_n_4 ;
  wire \x_12_reg_1727_reg[15]_i_1_n_5 ;
  wire \x_12_reg_1727_reg[15]_i_1_n_6 ;
  wire \x_12_reg_1727_reg[15]_i_1_n_7 ;
  wire \x_12_reg_1727_reg[20]_i_1_n_4 ;
  wire \x_12_reg_1727_reg[20]_i_1_n_5 ;
  wire \x_12_reg_1727_reg[20]_i_1_n_6 ;
  wire \x_12_reg_1727_reg[20]_i_1_n_7 ;
  wire \x_12_reg_1727_reg[7]_i_1_n_0 ;
  wire \x_12_reg_1727_reg[7]_i_1_n_1 ;
  wire \x_12_reg_1727_reg[7]_i_1_n_2 ;
  wire \x_12_reg_1727_reg[7]_i_1_n_3 ;
  wire \x_12_reg_1727_reg[7]_i_1_n_4 ;
  wire \x_12_reg_1727_reg[7]_i_1_n_5 ;
  wire \x_12_reg_1727_reg[7]_i_1_n_6 ;
  wire \x_12_reg_1727_reg[7]_i_1_n_7 ;
  wire [20:0]x_13_fu_552_p2;
  wire [20:0]x_13_reg_1737;
  wire \x_13_reg_1737[15]_i_10_n_0 ;
  wire \x_13_reg_1737[15]_i_12_n_0 ;
  wire \x_13_reg_1737[15]_i_13_n_0 ;
  wire \x_13_reg_1737[15]_i_14_n_0 ;
  wire \x_13_reg_1737[15]_i_15_n_0 ;
  wire \x_13_reg_1737[15]_i_16_n_0 ;
  wire \x_13_reg_1737[15]_i_17_n_0 ;
  wire \x_13_reg_1737[15]_i_18_n_0 ;
  wire \x_13_reg_1737[15]_i_19_n_0 ;
  wire \x_13_reg_1737[15]_i_20_n_0 ;
  wire \x_13_reg_1737[15]_i_21_n_0 ;
  wire \x_13_reg_1737[15]_i_22_n_0 ;
  wire \x_13_reg_1737[15]_i_23_n_0 ;
  wire \x_13_reg_1737[15]_i_24_n_0 ;
  wire \x_13_reg_1737[15]_i_25_n_0 ;
  wire \x_13_reg_1737[15]_i_26_n_0 ;
  wire \x_13_reg_1737[15]_i_27_n_0 ;
  wire \x_13_reg_1737[15]_i_3_n_0 ;
  wire \x_13_reg_1737[15]_i_4_n_0 ;
  wire \x_13_reg_1737[15]_i_5_n_0 ;
  wire \x_13_reg_1737[15]_i_6_n_0 ;
  wire \x_13_reg_1737[15]_i_7_n_0 ;
  wire \x_13_reg_1737[15]_i_8_n_0 ;
  wire \x_13_reg_1737[15]_i_9_n_0 ;
  wire \x_13_reg_1737[20]_i_2_n_0 ;
  wire \x_13_reg_1737[20]_i_3_n_0 ;
  wire \x_13_reg_1737[20]_i_4_n_0 ;
  wire \x_13_reg_1737[20]_i_5_n_0 ;
  wire \x_13_reg_1737[20]_i_6_n_0 ;
  wire \x_13_reg_1737[20]_i_7_n_0 ;
  wire \x_13_reg_1737[7]_i_10_n_0 ;
  wire \x_13_reg_1737[7]_i_11_n_0 ;
  wire \x_13_reg_1737[7]_i_12_n_0 ;
  wire \x_13_reg_1737[7]_i_13_n_0 ;
  wire \x_13_reg_1737[7]_i_14_n_0 ;
  wire \x_13_reg_1737[7]_i_15_n_0 ;
  wire \x_13_reg_1737[7]_i_16_n_0 ;
  wire \x_13_reg_1737[7]_i_17_n_0 ;
  wire \x_13_reg_1737[7]_i_18_n_0 ;
  wire \x_13_reg_1737[7]_i_3_n_0 ;
  wire \x_13_reg_1737[7]_i_4_n_0 ;
  wire \x_13_reg_1737[7]_i_5_n_0 ;
  wire \x_13_reg_1737[7]_i_6_n_0 ;
  wire \x_13_reg_1737[7]_i_7_n_0 ;
  wire \x_13_reg_1737[7]_i_8_n_0 ;
  wire \x_13_reg_1737[7]_i_9_n_0 ;
  wire \x_13_reg_1737_reg[15]_i_11_n_0 ;
  wire \x_13_reg_1737_reg[15]_i_11_n_1 ;
  wire \x_13_reg_1737_reg[15]_i_11_n_10 ;
  wire \x_13_reg_1737_reg[15]_i_11_n_11 ;
  wire \x_13_reg_1737_reg[15]_i_11_n_12 ;
  wire \x_13_reg_1737_reg[15]_i_11_n_13 ;
  wire \x_13_reg_1737_reg[15]_i_11_n_14 ;
  wire \x_13_reg_1737_reg[15]_i_11_n_15 ;
  wire \x_13_reg_1737_reg[15]_i_11_n_2 ;
  wire \x_13_reg_1737_reg[15]_i_11_n_3 ;
  wire \x_13_reg_1737_reg[15]_i_11_n_4 ;
  wire \x_13_reg_1737_reg[15]_i_11_n_5 ;
  wire \x_13_reg_1737_reg[15]_i_11_n_6 ;
  wire \x_13_reg_1737_reg[15]_i_11_n_7 ;
  wire \x_13_reg_1737_reg[15]_i_11_n_8 ;
  wire \x_13_reg_1737_reg[15]_i_11_n_9 ;
  wire \x_13_reg_1737_reg[15]_i_1_n_0 ;
  wire \x_13_reg_1737_reg[15]_i_1_n_1 ;
  wire \x_13_reg_1737_reg[15]_i_1_n_2 ;
  wire \x_13_reg_1737_reg[15]_i_1_n_3 ;
  wire \x_13_reg_1737_reg[15]_i_1_n_4 ;
  wire \x_13_reg_1737_reg[15]_i_1_n_5 ;
  wire \x_13_reg_1737_reg[15]_i_1_n_6 ;
  wire \x_13_reg_1737_reg[15]_i_1_n_7 ;
  wire \x_13_reg_1737_reg[15]_i_2_n_0 ;
  wire \x_13_reg_1737_reg[15]_i_2_n_1 ;
  wire \x_13_reg_1737_reg[15]_i_2_n_2 ;
  wire \x_13_reg_1737_reg[15]_i_2_n_3 ;
  wire \x_13_reg_1737_reg[15]_i_2_n_4 ;
  wire \x_13_reg_1737_reg[15]_i_2_n_5 ;
  wire \x_13_reg_1737_reg[15]_i_2_n_6 ;
  wire \x_13_reg_1737_reg[15]_i_2_n_7 ;
  wire \x_13_reg_1737_reg[20]_i_1_n_4 ;
  wire \x_13_reg_1737_reg[20]_i_1_n_5 ;
  wire \x_13_reg_1737_reg[20]_i_1_n_6 ;
  wire \x_13_reg_1737_reg[20]_i_1_n_7 ;
  wire \x_13_reg_1737_reg[7]_i_1_n_0 ;
  wire \x_13_reg_1737_reg[7]_i_1_n_1 ;
  wire \x_13_reg_1737_reg[7]_i_1_n_2 ;
  wire \x_13_reg_1737_reg[7]_i_1_n_3 ;
  wire \x_13_reg_1737_reg[7]_i_1_n_4 ;
  wire \x_13_reg_1737_reg[7]_i_1_n_5 ;
  wire \x_13_reg_1737_reg[7]_i_1_n_6 ;
  wire \x_13_reg_1737_reg[7]_i_1_n_7 ;
  wire \x_13_reg_1737_reg[7]_i_2_n_0 ;
  wire \x_13_reg_1737_reg[7]_i_2_n_1 ;
  wire \x_13_reg_1737_reg[7]_i_2_n_13 ;
  wire \x_13_reg_1737_reg[7]_i_2_n_14 ;
  wire \x_13_reg_1737_reg[7]_i_2_n_15 ;
  wire \x_13_reg_1737_reg[7]_i_2_n_2 ;
  wire \x_13_reg_1737_reg[7]_i_2_n_3 ;
  wire \x_13_reg_1737_reg[7]_i_2_n_4 ;
  wire \x_13_reg_1737_reg[7]_i_2_n_5 ;
  wire \x_13_reg_1737_reg[7]_i_2_n_6 ;
  wire \x_13_reg_1737_reg[7]_i_2_n_7 ;
  wire [20:0]x_14_fu_564_p3;
  wire [20:0]x_23_fu_802_p3;
  wire [20:0]x_26_fu_886_p3;
  wire [7:0]x_26_reg_1752;
  wire \x_26_reg_1752[7]_i_10_n_0 ;
  wire \x_26_reg_1752[7]_i_12_n_0 ;
  wire \x_26_reg_1752[7]_i_13_n_0 ;
  wire \x_26_reg_1752[7]_i_14_n_0 ;
  wire \x_26_reg_1752[7]_i_15_n_0 ;
  wire \x_26_reg_1752[7]_i_16_n_0 ;
  wire \x_26_reg_1752[7]_i_17_n_0 ;
  wire \x_26_reg_1752[7]_i_18_n_0 ;
  wire \x_26_reg_1752[7]_i_19_n_0 ;
  wire \x_26_reg_1752[7]_i_21_n_0 ;
  wire \x_26_reg_1752[7]_i_22_n_0 ;
  wire \x_26_reg_1752[7]_i_23_n_0 ;
  wire \x_26_reg_1752[7]_i_24_n_0 ;
  wire \x_26_reg_1752[7]_i_25_n_0 ;
  wire \x_26_reg_1752[7]_i_26_n_0 ;
  wire \x_26_reg_1752[7]_i_27_n_0 ;
  wire \x_26_reg_1752[7]_i_28_n_0 ;
  wire \x_26_reg_1752[7]_i_37_n_0 ;
  wire \x_26_reg_1752[7]_i_38_n_0 ;
  wire \x_26_reg_1752[7]_i_39_n_0 ;
  wire \x_26_reg_1752[7]_i_3_n_0 ;
  wire \x_26_reg_1752[7]_i_40_n_0 ;
  wire \x_26_reg_1752[7]_i_41_n_0 ;
  wire \x_26_reg_1752[7]_i_42_n_0 ;
  wire \x_26_reg_1752[7]_i_43_n_0 ;
  wire \x_26_reg_1752[7]_i_44_n_0 ;
  wire \x_26_reg_1752[7]_i_4_n_0 ;
  wire \x_26_reg_1752[7]_i_5_n_0 ;
  wire \x_26_reg_1752[7]_i_6_n_0 ;
  wire \x_26_reg_1752[7]_i_7_n_0 ;
  wire \x_26_reg_1752[7]_i_8_n_0 ;
  wire \x_26_reg_1752[7]_i_9_n_0 ;
  wire \x_26_reg_1752_reg[7]_i_11_n_0 ;
  wire \x_26_reg_1752_reg[7]_i_11_n_1 ;
  wire \x_26_reg_1752_reg[7]_i_11_n_10 ;
  wire \x_26_reg_1752_reg[7]_i_11_n_11 ;
  wire \x_26_reg_1752_reg[7]_i_11_n_12 ;
  wire \x_26_reg_1752_reg[7]_i_11_n_13 ;
  wire \x_26_reg_1752_reg[7]_i_11_n_14 ;
  wire \x_26_reg_1752_reg[7]_i_11_n_15 ;
  wire \x_26_reg_1752_reg[7]_i_11_n_2 ;
  wire \x_26_reg_1752_reg[7]_i_11_n_3 ;
  wire \x_26_reg_1752_reg[7]_i_11_n_4 ;
  wire \x_26_reg_1752_reg[7]_i_11_n_5 ;
  wire \x_26_reg_1752_reg[7]_i_11_n_6 ;
  wire \x_26_reg_1752_reg[7]_i_11_n_7 ;
  wire \x_26_reg_1752_reg[7]_i_11_n_8 ;
  wire \x_26_reg_1752_reg[7]_i_11_n_9 ;
  wire \x_26_reg_1752_reg[7]_i_1_n_0 ;
  wire \x_26_reg_1752_reg[7]_i_1_n_1 ;
  wire \x_26_reg_1752_reg[7]_i_1_n_2 ;
  wire \x_26_reg_1752_reg[7]_i_1_n_3 ;
  wire \x_26_reg_1752_reg[7]_i_1_n_4 ;
  wire \x_26_reg_1752_reg[7]_i_1_n_5 ;
  wire \x_26_reg_1752_reg[7]_i_1_n_6 ;
  wire \x_26_reg_1752_reg[7]_i_1_n_7 ;
  wire \x_26_reg_1752_reg[7]_i_20_n_0 ;
  wire \x_26_reg_1752_reg[7]_i_20_n_1 ;
  wire \x_26_reg_1752_reg[7]_i_20_n_10 ;
  wire \x_26_reg_1752_reg[7]_i_20_n_11 ;
  wire \x_26_reg_1752_reg[7]_i_20_n_12 ;
  wire \x_26_reg_1752_reg[7]_i_20_n_13 ;
  wire \x_26_reg_1752_reg[7]_i_20_n_14 ;
  wire \x_26_reg_1752_reg[7]_i_20_n_15 ;
  wire \x_26_reg_1752_reg[7]_i_20_n_2 ;
  wire \x_26_reg_1752_reg[7]_i_20_n_3 ;
  wire \x_26_reg_1752_reg[7]_i_20_n_4 ;
  wire \x_26_reg_1752_reg[7]_i_20_n_5 ;
  wire \x_26_reg_1752_reg[7]_i_20_n_6 ;
  wire \x_26_reg_1752_reg[7]_i_20_n_7 ;
  wire \x_26_reg_1752_reg[7]_i_20_n_8 ;
  wire \x_26_reg_1752_reg[7]_i_20_n_9 ;
  wire \x_26_reg_1752_reg[7]_i_2_n_0 ;
  wire \x_26_reg_1752_reg[7]_i_2_n_1 ;
  wire \x_26_reg_1752_reg[7]_i_2_n_2 ;
  wire \x_26_reg_1752_reg[7]_i_2_n_3 ;
  wire \x_26_reg_1752_reg[7]_i_2_n_4 ;
  wire \x_26_reg_1752_reg[7]_i_2_n_5 ;
  wire \x_26_reg_1752_reg[7]_i_2_n_6 ;
  wire \x_26_reg_1752_reg[7]_i_2_n_7 ;
  wire [20:0]x_29_fu_977_p3;
  wire [20:0]x_32_fu_1051_p3;
  wire [20:0]x_35_fu_1127_p3;
  wire [20:0]x_38_fu_1203_p3;
  wire [11:0]x_38_reg_1801;
  wire \x_38_reg_1801[11]_i_10_n_0 ;
  wire \x_38_reg_1801[11]_i_11_n_0 ;
  wire \x_38_reg_1801[11]_i_12_n_0 ;
  wire \x_38_reg_1801[11]_i_13_n_0 ;
  wire \x_38_reg_1801[11]_i_14_n_0 ;
  wire \x_38_reg_1801[11]_i_3_n_0 ;
  wire \x_38_reg_1801[11]_i_5_n_0 ;
  wire \x_38_reg_1801[11]_i_6_n_0 ;
  wire \x_38_reg_1801[11]_i_8_n_0 ;
  wire \x_38_reg_1801[11]_i_9_n_0 ;
  wire \x_38_reg_1801[7]_i_10_n_0 ;
  wire \x_38_reg_1801[7]_i_12_n_0 ;
  wire \x_38_reg_1801[7]_i_13_n_0 ;
  wire \x_38_reg_1801[7]_i_14_n_0 ;
  wire \x_38_reg_1801[7]_i_15_n_0 ;
  wire \x_38_reg_1801[7]_i_16_n_0 ;
  wire \x_38_reg_1801[7]_i_17_n_0 ;
  wire \x_38_reg_1801[7]_i_18_n_0 ;
  wire \x_38_reg_1801[7]_i_19_n_0 ;
  wire \x_38_reg_1801[7]_i_21_n_0 ;
  wire \x_38_reg_1801[7]_i_22_n_0 ;
  wire \x_38_reg_1801[7]_i_23_n_0 ;
  wire \x_38_reg_1801[7]_i_24_n_0 ;
  wire \x_38_reg_1801[7]_i_25_n_0 ;
  wire \x_38_reg_1801[7]_i_26_n_0 ;
  wire \x_38_reg_1801[7]_i_27_n_0 ;
  wire \x_38_reg_1801[7]_i_28_n_0 ;
  wire \x_38_reg_1801[7]_i_29_n_0 ;
  wire \x_38_reg_1801[7]_i_30_n_0 ;
  wire \x_38_reg_1801[7]_i_31_n_0 ;
  wire \x_38_reg_1801[7]_i_32_n_0 ;
  wire \x_38_reg_1801[7]_i_33_n_0 ;
  wire \x_38_reg_1801[7]_i_34_n_0 ;
  wire \x_38_reg_1801[7]_i_35_n_0 ;
  wire \x_38_reg_1801[7]_i_36_n_0 ;
  wire \x_38_reg_1801[7]_i_3_n_0 ;
  wire \x_38_reg_1801[7]_i_4_n_0 ;
  wire \x_38_reg_1801[7]_i_5_n_0 ;
  wire \x_38_reg_1801[7]_i_6_n_0 ;
  wire \x_38_reg_1801[7]_i_7_n_0 ;
  wire \x_38_reg_1801[7]_i_8_n_0 ;
  wire \x_38_reg_1801[7]_i_9_n_0 ;
  wire \x_38_reg_1801_reg[11]_i_1_n_0 ;
  wire \x_38_reg_1801_reg[11]_i_1_n_1 ;
  wire \x_38_reg_1801_reg[11]_i_1_n_2 ;
  wire \x_38_reg_1801_reg[11]_i_1_n_3 ;
  wire \x_38_reg_1801_reg[11]_i_1_n_4 ;
  wire \x_38_reg_1801_reg[11]_i_1_n_5 ;
  wire \x_38_reg_1801_reg[11]_i_1_n_6 ;
  wire \x_38_reg_1801_reg[11]_i_1_n_7 ;
  wire \x_38_reg_1801_reg[11]_i_2_n_0 ;
  wire \x_38_reg_1801_reg[11]_i_2_n_1 ;
  wire \x_38_reg_1801_reg[11]_i_2_n_2 ;
  wire \x_38_reg_1801_reg[11]_i_2_n_3 ;
  wire \x_38_reg_1801_reg[11]_i_2_n_4 ;
  wire \x_38_reg_1801_reg[11]_i_2_n_5 ;
  wire \x_38_reg_1801_reg[11]_i_2_n_6 ;
  wire \x_38_reg_1801_reg[11]_i_2_n_7 ;
  wire \x_38_reg_1801_reg[11]_i_4_n_0 ;
  wire \x_38_reg_1801_reg[11]_i_4_n_1 ;
  wire \x_38_reg_1801_reg[11]_i_4_n_2 ;
  wire \x_38_reg_1801_reg[11]_i_4_n_3 ;
  wire \x_38_reg_1801_reg[11]_i_4_n_4 ;
  wire \x_38_reg_1801_reg[11]_i_4_n_5 ;
  wire \x_38_reg_1801_reg[11]_i_4_n_6 ;
  wire \x_38_reg_1801_reg[11]_i_4_n_7 ;
  wire \x_38_reg_1801_reg[11]_i_7_n_0 ;
  wire \x_38_reg_1801_reg[11]_i_7_n_1 ;
  wire \x_38_reg_1801_reg[11]_i_7_n_2 ;
  wire \x_38_reg_1801_reg[11]_i_7_n_3 ;
  wire \x_38_reg_1801_reg[11]_i_7_n_4 ;
  wire \x_38_reg_1801_reg[11]_i_7_n_5 ;
  wire \x_38_reg_1801_reg[11]_i_7_n_6 ;
  wire \x_38_reg_1801_reg[11]_i_7_n_7 ;
  wire \x_38_reg_1801_reg[7]_i_11_n_0 ;
  wire \x_38_reg_1801_reg[7]_i_11_n_1 ;
  wire \x_38_reg_1801_reg[7]_i_11_n_2 ;
  wire \x_38_reg_1801_reg[7]_i_11_n_3 ;
  wire \x_38_reg_1801_reg[7]_i_11_n_4 ;
  wire \x_38_reg_1801_reg[7]_i_11_n_5 ;
  wire \x_38_reg_1801_reg[7]_i_11_n_6 ;
  wire \x_38_reg_1801_reg[7]_i_11_n_7 ;
  wire \x_38_reg_1801_reg[7]_i_1_n_0 ;
  wire \x_38_reg_1801_reg[7]_i_1_n_1 ;
  wire \x_38_reg_1801_reg[7]_i_1_n_2 ;
  wire \x_38_reg_1801_reg[7]_i_1_n_3 ;
  wire \x_38_reg_1801_reg[7]_i_1_n_4 ;
  wire \x_38_reg_1801_reg[7]_i_1_n_5 ;
  wire \x_38_reg_1801_reg[7]_i_1_n_6 ;
  wire \x_38_reg_1801_reg[7]_i_1_n_7 ;
  wire \x_38_reg_1801_reg[7]_i_20_n_0 ;
  wire \x_38_reg_1801_reg[7]_i_20_n_1 ;
  wire \x_38_reg_1801_reg[7]_i_20_n_2 ;
  wire \x_38_reg_1801_reg[7]_i_20_n_3 ;
  wire \x_38_reg_1801_reg[7]_i_20_n_4 ;
  wire \x_38_reg_1801_reg[7]_i_20_n_5 ;
  wire \x_38_reg_1801_reg[7]_i_20_n_6 ;
  wire \x_38_reg_1801_reg[7]_i_20_n_7 ;
  wire \x_38_reg_1801_reg[7]_i_2_n_0 ;
  wire \x_38_reg_1801_reg[7]_i_2_n_1 ;
  wire \x_38_reg_1801_reg[7]_i_2_n_2 ;
  wire \x_38_reg_1801_reg[7]_i_2_n_3 ;
  wire \x_38_reg_1801_reg[7]_i_2_n_4 ;
  wire \x_38_reg_1801_reg[7]_i_2_n_5 ;
  wire \x_38_reg_1801_reg[7]_i_2_n_6 ;
  wire \x_38_reg_1801_reg[7]_i_2_n_7 ;
  wire [15:0]x_in;
  wire [8:0]xs_12_reg_1813;
  wire \xs_12_reg_1813_reg[8]_i_1_n_4 ;
  wire \xs_12_reg_1813_reg[8]_i_1_n_5 ;
  wire \xs_12_reg_1813_reg[8]_i_1_n_6 ;
  wire \xs_12_reg_1813_reg[8]_i_1_n_7 ;
  wire \xs_12_reg_1813_reg[8]_i_2_n_4 ;
  wire \xs_12_reg_1813_reg[8]_i_2_n_5 ;
  wire \xs_12_reg_1813_reg[8]_i_2_n_6 ;
  wire \xs_12_reg_1813_reg[8]_i_2_n_7 ;
  wire [12:0]xs_8_reg_1764;
  wire \xs_8_reg_1764[0]_i_10_n_0 ;
  wire \xs_8_reg_1764[0]_i_11_n_0 ;
  wire \xs_8_reg_1764[0]_i_12_n_0 ;
  wire \xs_8_reg_1764[0]_i_13_n_0 ;
  wire \xs_8_reg_1764[0]_i_14_n_0 ;
  wire \xs_8_reg_1764[0]_i_16_n_0 ;
  wire \xs_8_reg_1764[0]_i_17_n_0 ;
  wire \xs_8_reg_1764[0]_i_18_n_0 ;
  wire \xs_8_reg_1764[0]_i_19_n_0 ;
  wire \xs_8_reg_1764[0]_i_20_n_0 ;
  wire \xs_8_reg_1764[0]_i_21_n_0 ;
  wire \xs_8_reg_1764[0]_i_22_n_0 ;
  wire \xs_8_reg_1764[0]_i_31_n_0 ;
  wire \xs_8_reg_1764[0]_i_32_n_0 ;
  wire \xs_8_reg_1764[0]_i_33_n_0 ;
  wire \xs_8_reg_1764[0]_i_34_n_0 ;
  wire \xs_8_reg_1764[0]_i_35_n_0 ;
  wire \xs_8_reg_1764[0]_i_36_n_0 ;
  wire \xs_8_reg_1764[0]_i_37_n_0 ;
  wire \xs_8_reg_1764[0]_i_38_n_0 ;
  wire \xs_8_reg_1764[0]_i_3_n_0 ;
  wire \xs_8_reg_1764[0]_i_4_n_0 ;
  wire \xs_8_reg_1764[0]_i_5_n_0 ;
  wire \xs_8_reg_1764[0]_i_6_n_0 ;
  wire \xs_8_reg_1764[0]_i_7_n_0 ;
  wire \xs_8_reg_1764[0]_i_9_n_0 ;
  wire \xs_8_reg_1764_reg[0]_i_15_n_0 ;
  wire \xs_8_reg_1764_reg[0]_i_15_n_1 ;
  wire \xs_8_reg_1764_reg[0]_i_15_n_10 ;
  wire \xs_8_reg_1764_reg[0]_i_15_n_11 ;
  wire \xs_8_reg_1764_reg[0]_i_15_n_12 ;
  wire \xs_8_reg_1764_reg[0]_i_15_n_13 ;
  wire \xs_8_reg_1764_reg[0]_i_15_n_14 ;
  wire \xs_8_reg_1764_reg[0]_i_15_n_15 ;
  wire \xs_8_reg_1764_reg[0]_i_15_n_2 ;
  wire \xs_8_reg_1764_reg[0]_i_15_n_3 ;
  wire \xs_8_reg_1764_reg[0]_i_15_n_4 ;
  wire \xs_8_reg_1764_reg[0]_i_15_n_5 ;
  wire \xs_8_reg_1764_reg[0]_i_15_n_6 ;
  wire \xs_8_reg_1764_reg[0]_i_15_n_7 ;
  wire \xs_8_reg_1764_reg[0]_i_15_n_8 ;
  wire \xs_8_reg_1764_reg[0]_i_15_n_9 ;
  wire \xs_8_reg_1764_reg[0]_i_1_n_0 ;
  wire \xs_8_reg_1764_reg[0]_i_1_n_1 ;
  wire \xs_8_reg_1764_reg[0]_i_1_n_2 ;
  wire \xs_8_reg_1764_reg[0]_i_1_n_3 ;
  wire \xs_8_reg_1764_reg[0]_i_1_n_4 ;
  wire \xs_8_reg_1764_reg[0]_i_1_n_5 ;
  wire \xs_8_reg_1764_reg[0]_i_1_n_6 ;
  wire \xs_8_reg_1764_reg[0]_i_1_n_7 ;
  wire \xs_8_reg_1764_reg[0]_i_2_n_0 ;
  wire \xs_8_reg_1764_reg[0]_i_2_n_1 ;
  wire \xs_8_reg_1764_reg[0]_i_2_n_2 ;
  wire \xs_8_reg_1764_reg[0]_i_2_n_3 ;
  wire \xs_8_reg_1764_reg[0]_i_2_n_4 ;
  wire \xs_8_reg_1764_reg[0]_i_2_n_5 ;
  wire \xs_8_reg_1764_reg[0]_i_2_n_6 ;
  wire \xs_8_reg_1764_reg[0]_i_2_n_7 ;
  wire \xs_8_reg_1764_reg[0]_i_8_n_0 ;
  wire \xs_8_reg_1764_reg[0]_i_8_n_1 ;
  wire \xs_8_reg_1764_reg[0]_i_8_n_10 ;
  wire \xs_8_reg_1764_reg[0]_i_8_n_11 ;
  wire \xs_8_reg_1764_reg[0]_i_8_n_12 ;
  wire \xs_8_reg_1764_reg[0]_i_8_n_13 ;
  wire \xs_8_reg_1764_reg[0]_i_8_n_14 ;
  wire \xs_8_reg_1764_reg[0]_i_8_n_15 ;
  wire \xs_8_reg_1764_reg[0]_i_8_n_2 ;
  wire \xs_8_reg_1764_reg[0]_i_8_n_3 ;
  wire \xs_8_reg_1764_reg[0]_i_8_n_4 ;
  wire \xs_8_reg_1764_reg[0]_i_8_n_5 ;
  wire \xs_8_reg_1764_reg[0]_i_8_n_6 ;
  wire \xs_8_reg_1764_reg[0]_i_8_n_7 ;
  wire \xs_8_reg_1764_reg[0]_i_8_n_8 ;
  wire \xs_8_reg_1764_reg[0]_i_8_n_9 ;
  wire \xs_8_reg_1764_reg[12]_i_1_n_4 ;
  wire \xs_8_reg_1764_reg[12]_i_1_n_5 ;
  wire \xs_8_reg_1764_reg[12]_i_1_n_6 ;
  wire \xs_8_reg_1764_reg[12]_i_1_n_7 ;
  wire \xs_8_reg_1764_reg[12]_i_2_n_4 ;
  wire \xs_8_reg_1764_reg[12]_i_2_n_5 ;
  wire \xs_8_reg_1764_reg[12]_i_2_n_6 ;
  wire \xs_8_reg_1764_reg[12]_i_2_n_7 ;
  wire [20:0]y_12_fu_546_p2;
  wire [20:0]y_12_reg_1732;
  wire \y_12_reg_1732[15]_i_2_n_0 ;
  wire \y_12_reg_1732[15]_i_3_n_0 ;
  wire \y_12_reg_1732[15]_i_4_n_0 ;
  wire \y_12_reg_1732[15]_i_5_n_0 ;
  wire \y_12_reg_1732[15]_i_6_n_0 ;
  wire \y_12_reg_1732[15]_i_7_n_0 ;
  wire \y_12_reg_1732[15]_i_8_n_0 ;
  wire \y_12_reg_1732[15]_i_9_n_0 ;
  wire \y_12_reg_1732[20]_i_2_n_0 ;
  wire \y_12_reg_1732[20]_i_3_n_0 ;
  wire \y_12_reg_1732[20]_i_4_n_0 ;
  wire \y_12_reg_1732[20]_i_5_n_0 ;
  wire \y_12_reg_1732[20]_i_6_n_0 ;
  wire \y_12_reg_1732[20]_i_7_n_0 ;
  wire \y_12_reg_1732[7]_i_2_n_0 ;
  wire \y_12_reg_1732[7]_i_3_n_0 ;
  wire \y_12_reg_1732[7]_i_4_n_0 ;
  wire \y_12_reg_1732[7]_i_5_n_0 ;
  wire \y_12_reg_1732[7]_i_6_n_0 ;
  wire \y_12_reg_1732[7]_i_7_n_0 ;
  wire \y_12_reg_1732[7]_i_8_n_0 ;
  wire \y_12_reg_1732[7]_i_9_n_0 ;
  wire \y_12_reg_1732_reg[15]_i_1_n_0 ;
  wire \y_12_reg_1732_reg[15]_i_1_n_1 ;
  wire \y_12_reg_1732_reg[15]_i_1_n_2 ;
  wire \y_12_reg_1732_reg[15]_i_1_n_3 ;
  wire \y_12_reg_1732_reg[15]_i_1_n_4 ;
  wire \y_12_reg_1732_reg[15]_i_1_n_5 ;
  wire \y_12_reg_1732_reg[15]_i_1_n_6 ;
  wire \y_12_reg_1732_reg[15]_i_1_n_7 ;
  wire \y_12_reg_1732_reg[20]_i_1_n_4 ;
  wire \y_12_reg_1732_reg[20]_i_1_n_5 ;
  wire \y_12_reg_1732_reg[20]_i_1_n_6 ;
  wire \y_12_reg_1732_reg[20]_i_1_n_7 ;
  wire \y_12_reg_1732_reg[7]_i_1_n_0 ;
  wire \y_12_reg_1732_reg[7]_i_1_n_1 ;
  wire \y_12_reg_1732_reg[7]_i_1_n_2 ;
  wire \y_12_reg_1732_reg[7]_i_1_n_3 ;
  wire \y_12_reg_1732_reg[7]_i_1_n_4 ;
  wire \y_12_reg_1732_reg[7]_i_1_n_5 ;
  wire \y_12_reg_1732_reg[7]_i_1_n_6 ;
  wire \y_12_reg_1732_reg[7]_i_1_n_7 ;
  wire [20:0]y_13_fu_558_p2;
  wire [20:0]y_13_reg_1742;
  wire \y_13_reg_1742[15]_i_10_n_0 ;
  wire \y_13_reg_1742[15]_i_12_n_0 ;
  wire \y_13_reg_1742[15]_i_13_n_0 ;
  wire \y_13_reg_1742[15]_i_14_n_0 ;
  wire \y_13_reg_1742[15]_i_15_n_0 ;
  wire \y_13_reg_1742[15]_i_16_n_0 ;
  wire \y_13_reg_1742[15]_i_17_n_0 ;
  wire \y_13_reg_1742[15]_i_18_n_0 ;
  wire \y_13_reg_1742[15]_i_19_n_0 ;
  wire \y_13_reg_1742[15]_i_20_n_0 ;
  wire \y_13_reg_1742[15]_i_21_n_0 ;
  wire \y_13_reg_1742[15]_i_22_n_0 ;
  wire \y_13_reg_1742[15]_i_23_n_0 ;
  wire \y_13_reg_1742[15]_i_24_n_0 ;
  wire \y_13_reg_1742[15]_i_25_n_0 ;
  wire \y_13_reg_1742[15]_i_26_n_0 ;
  wire \y_13_reg_1742[15]_i_27_n_0 ;
  wire \y_13_reg_1742[15]_i_28_n_0 ;
  wire \y_13_reg_1742[15]_i_29_n_0 ;
  wire \y_13_reg_1742[15]_i_30_n_0 ;
  wire \y_13_reg_1742[15]_i_31_n_0 ;
  wire \y_13_reg_1742[15]_i_32_n_0 ;
  wire \y_13_reg_1742[15]_i_33_n_0 ;
  wire \y_13_reg_1742[15]_i_34_n_0 ;
  wire \y_13_reg_1742[15]_i_35_n_0 ;
  wire \y_13_reg_1742[15]_i_3_n_0 ;
  wire \y_13_reg_1742[15]_i_4_n_0 ;
  wire \y_13_reg_1742[15]_i_5_n_0 ;
  wire \y_13_reg_1742[15]_i_6_n_0 ;
  wire \y_13_reg_1742[15]_i_7_n_0 ;
  wire \y_13_reg_1742[15]_i_8_n_0 ;
  wire \y_13_reg_1742[15]_i_9_n_0 ;
  wire \y_13_reg_1742[20]_i_10_n_0 ;
  wire \y_13_reg_1742[20]_i_11_n_0 ;
  wire \y_13_reg_1742[20]_i_16_n_0 ;
  wire \y_13_reg_1742[20]_i_17_n_0 ;
  wire \y_13_reg_1742[20]_i_18_n_0 ;
  wire \y_13_reg_1742[20]_i_19_n_0 ;
  wire \y_13_reg_1742[20]_i_20_n_0 ;
  wire \y_13_reg_1742[20]_i_21_n_0 ;
  wire \y_13_reg_1742[20]_i_22_n_0 ;
  wire \y_13_reg_1742[20]_i_23_n_0 ;
  wire \y_13_reg_1742[20]_i_24_n_0 ;
  wire \y_13_reg_1742[20]_i_25_n_0 ;
  wire \y_13_reg_1742[20]_i_26_n_0 ;
  wire \y_13_reg_1742[20]_i_27_n_0 ;
  wire \y_13_reg_1742[20]_i_28_n_0 ;
  wire \y_13_reg_1742[20]_i_29_n_0 ;
  wire \y_13_reg_1742[20]_i_30_n_0 ;
  wire \y_13_reg_1742[20]_i_31_n_0 ;
  wire \y_13_reg_1742[20]_i_32_n_0 ;
  wire \y_13_reg_1742[20]_i_33_n_0 ;
  wire \y_13_reg_1742[20]_i_34_n_0 ;
  wire \y_13_reg_1742[20]_i_35_n_0 ;
  wire \y_13_reg_1742[20]_i_36_n_0 ;
  wire \y_13_reg_1742[20]_i_37_n_0 ;
  wire \y_13_reg_1742[20]_i_38_n_0 ;
  wire \y_13_reg_1742[20]_i_39_n_0 ;
  wire \y_13_reg_1742[20]_i_3_n_0 ;
  wire \y_13_reg_1742[20]_i_40_n_0 ;
  wire \y_13_reg_1742[20]_i_41_n_0 ;
  wire \y_13_reg_1742[20]_i_42_n_0 ;
  wire \y_13_reg_1742[20]_i_43_n_0 ;
  wire \y_13_reg_1742[20]_i_44_n_0 ;
  wire \y_13_reg_1742[20]_i_45_n_0 ;
  wire \y_13_reg_1742[20]_i_46_n_0 ;
  wire \y_13_reg_1742[20]_i_47_n_0 ;
  wire \y_13_reg_1742[20]_i_48_n_0 ;
  wire \y_13_reg_1742[20]_i_49_n_0 ;
  wire \y_13_reg_1742[20]_i_4_n_0 ;
  wire \y_13_reg_1742[20]_i_50_n_0 ;
  wire \y_13_reg_1742[20]_i_51_n_0 ;
  wire \y_13_reg_1742[20]_i_52_n_0 ;
  wire \y_13_reg_1742[20]_i_53_n_0 ;
  wire \y_13_reg_1742[20]_i_54_n_0 ;
  wire \y_13_reg_1742[20]_i_55_n_0 ;
  wire \y_13_reg_1742[20]_i_56_n_0 ;
  wire \y_13_reg_1742[20]_i_57_n_0 ;
  wire \y_13_reg_1742[20]_i_59_n_0 ;
  wire \y_13_reg_1742[20]_i_5_n_0 ;
  wire \y_13_reg_1742[20]_i_64_n_0 ;
  wire \y_13_reg_1742[20]_i_66_n_0 ;
  wire \y_13_reg_1742[20]_i_67_n_0 ;
  wire \y_13_reg_1742[20]_i_6_n_0 ;
  wire \y_13_reg_1742[20]_i_7_n_0 ;
  wire \y_13_reg_1742[7]_i_10_n_0 ;
  wire \y_13_reg_1742[7]_i_11_n_0 ;
  wire \y_13_reg_1742[7]_i_12_n_0 ;
  wire \y_13_reg_1742[7]_i_13_n_0 ;
  wire \y_13_reg_1742[7]_i_14_n_0 ;
  wire \y_13_reg_1742[7]_i_15_n_0 ;
  wire \y_13_reg_1742[7]_i_16_n_0 ;
  wire \y_13_reg_1742[7]_i_17_n_0 ;
  wire \y_13_reg_1742[7]_i_3_n_0 ;
  wire \y_13_reg_1742[7]_i_4_n_0 ;
  wire \y_13_reg_1742[7]_i_5_n_0 ;
  wire \y_13_reg_1742[7]_i_6_n_0 ;
  wire \y_13_reg_1742[7]_i_7_n_0 ;
  wire \y_13_reg_1742[7]_i_8_n_0 ;
  wire \y_13_reg_1742[7]_i_9_n_0 ;
  wire \y_13_reg_1742_reg[15]_i_11_n_0 ;
  wire \y_13_reg_1742_reg[15]_i_11_n_1 ;
  wire \y_13_reg_1742_reg[15]_i_11_n_2 ;
  wire \y_13_reg_1742_reg[15]_i_11_n_3 ;
  wire \y_13_reg_1742_reg[15]_i_11_n_4 ;
  wire \y_13_reg_1742_reg[15]_i_11_n_5 ;
  wire \y_13_reg_1742_reg[15]_i_11_n_6 ;
  wire \y_13_reg_1742_reg[15]_i_11_n_7 ;
  wire \y_13_reg_1742_reg[15]_i_1_n_0 ;
  wire \y_13_reg_1742_reg[15]_i_1_n_1 ;
  wire \y_13_reg_1742_reg[15]_i_1_n_2 ;
  wire \y_13_reg_1742_reg[15]_i_1_n_3 ;
  wire \y_13_reg_1742_reg[15]_i_1_n_4 ;
  wire \y_13_reg_1742_reg[15]_i_1_n_5 ;
  wire \y_13_reg_1742_reg[15]_i_1_n_6 ;
  wire \y_13_reg_1742_reg[15]_i_1_n_7 ;
  wire \y_13_reg_1742_reg[15]_i_2_n_0 ;
  wire \y_13_reg_1742_reg[15]_i_2_n_1 ;
  wire \y_13_reg_1742_reg[15]_i_2_n_10 ;
  wire \y_13_reg_1742_reg[15]_i_2_n_11 ;
  wire \y_13_reg_1742_reg[15]_i_2_n_12 ;
  wire \y_13_reg_1742_reg[15]_i_2_n_13 ;
  wire \y_13_reg_1742_reg[15]_i_2_n_14 ;
  wire \y_13_reg_1742_reg[15]_i_2_n_15 ;
  wire \y_13_reg_1742_reg[15]_i_2_n_2 ;
  wire \y_13_reg_1742_reg[15]_i_2_n_3 ;
  wire \y_13_reg_1742_reg[15]_i_2_n_4 ;
  wire \y_13_reg_1742_reg[15]_i_2_n_5 ;
  wire \y_13_reg_1742_reg[15]_i_2_n_6 ;
  wire \y_13_reg_1742_reg[15]_i_2_n_7 ;
  wire \y_13_reg_1742_reg[15]_i_2_n_8 ;
  wire \y_13_reg_1742_reg[15]_i_2_n_9 ;
  wire \y_13_reg_1742_reg[20]_i_12_n_6 ;
  wire \y_13_reg_1742_reg[20]_i_13_n_0 ;
  wire \y_13_reg_1742_reg[20]_i_13_n_1 ;
  wire \y_13_reg_1742_reg[20]_i_13_n_2 ;
  wire \y_13_reg_1742_reg[20]_i_13_n_3 ;
  wire \y_13_reg_1742_reg[20]_i_13_n_4 ;
  wire \y_13_reg_1742_reg[20]_i_13_n_5 ;
  wire \y_13_reg_1742_reg[20]_i_13_n_6 ;
  wire \y_13_reg_1742_reg[20]_i_13_n_7 ;
  wire \y_13_reg_1742_reg[20]_i_15_n_0 ;
  wire \y_13_reg_1742_reg[20]_i_15_n_1 ;
  wire \y_13_reg_1742_reg[20]_i_15_n_2 ;
  wire \y_13_reg_1742_reg[20]_i_15_n_3 ;
  wire \y_13_reg_1742_reg[20]_i_15_n_4 ;
  wire \y_13_reg_1742_reg[20]_i_15_n_5 ;
  wire \y_13_reg_1742_reg[20]_i_15_n_6 ;
  wire \y_13_reg_1742_reg[20]_i_15_n_7 ;
  wire \y_13_reg_1742_reg[20]_i_1_n_4 ;
  wire \y_13_reg_1742_reg[20]_i_1_n_5 ;
  wire \y_13_reg_1742_reg[20]_i_1_n_6 ;
  wire \y_13_reg_1742_reg[20]_i_1_n_7 ;
  wire \y_13_reg_1742_reg[20]_i_2_n_4 ;
  wire \y_13_reg_1742_reg[20]_i_2_n_5 ;
  wire \y_13_reg_1742_reg[20]_i_2_n_6 ;
  wire \y_13_reg_1742_reg[20]_i_2_n_7 ;
  wire \y_13_reg_1742_reg[20]_i_8_n_13 ;
  wire \y_13_reg_1742_reg[20]_i_8_n_14 ;
  wire \y_13_reg_1742_reg[20]_i_8_n_15 ;
  wire \y_13_reg_1742_reg[20]_i_8_n_6 ;
  wire \y_13_reg_1742_reg[20]_i_8_n_7 ;
  wire \y_13_reg_1742_reg[20]_i_9_n_0 ;
  wire \y_13_reg_1742_reg[20]_i_9_n_1 ;
  wire \y_13_reg_1742_reg[20]_i_9_n_10 ;
  wire \y_13_reg_1742_reg[20]_i_9_n_11 ;
  wire \y_13_reg_1742_reg[20]_i_9_n_12 ;
  wire \y_13_reg_1742_reg[20]_i_9_n_13 ;
  wire \y_13_reg_1742_reg[20]_i_9_n_14 ;
  wire \y_13_reg_1742_reg[20]_i_9_n_15 ;
  wire \y_13_reg_1742_reg[20]_i_9_n_2 ;
  wire \y_13_reg_1742_reg[20]_i_9_n_3 ;
  wire \y_13_reg_1742_reg[20]_i_9_n_4 ;
  wire \y_13_reg_1742_reg[20]_i_9_n_5 ;
  wire \y_13_reg_1742_reg[20]_i_9_n_6 ;
  wire \y_13_reg_1742_reg[20]_i_9_n_7 ;
  wire \y_13_reg_1742_reg[20]_i_9_n_8 ;
  wire \y_13_reg_1742_reg[20]_i_9_n_9 ;
  wire \y_13_reg_1742_reg[7]_i_1_n_0 ;
  wire \y_13_reg_1742_reg[7]_i_1_n_1 ;
  wire \y_13_reg_1742_reg[7]_i_1_n_2 ;
  wire \y_13_reg_1742_reg[7]_i_1_n_3 ;
  wire \y_13_reg_1742_reg[7]_i_1_n_4 ;
  wire \y_13_reg_1742_reg[7]_i_1_n_5 ;
  wire \y_13_reg_1742_reg[7]_i_1_n_6 ;
  wire \y_13_reg_1742_reg[7]_i_1_n_7 ;
  wire \y_13_reg_1742_reg[7]_i_2_n_0 ;
  wire \y_13_reg_1742_reg[7]_i_2_n_1 ;
  wire \y_13_reg_1742_reg[7]_i_2_n_10 ;
  wire \y_13_reg_1742_reg[7]_i_2_n_11 ;
  wire \y_13_reg_1742_reg[7]_i_2_n_12 ;
  wire \y_13_reg_1742_reg[7]_i_2_n_13 ;
  wire \y_13_reg_1742_reg[7]_i_2_n_14 ;
  wire \y_13_reg_1742_reg[7]_i_2_n_2 ;
  wire \y_13_reg_1742_reg[7]_i_2_n_3 ;
  wire \y_13_reg_1742_reg[7]_i_2_n_4 ;
  wire \y_13_reg_1742_reg[7]_i_2_n_5 ;
  wire \y_13_reg_1742_reg[7]_i_2_n_6 ;
  wire \y_13_reg_1742_reg[7]_i_2_n_7 ;
  wire \y_13_reg_1742_reg[7]_i_2_n_8 ;
  wire \y_13_reg_1742_reg[7]_i_2_n_9 ;
  wire [20:20]y_23_fu_810_p3;
  wire [19:0]y_23_fu_810_p3__0;
  wire [20:0]y_26_fu_894_p3;
  wire [19:0]y_26_reg_1758;
  wire \y_26_reg_1758[7]_i_10_n_0 ;
  wire \y_26_reg_1758[7]_i_11_n_0 ;
  wire \y_26_reg_1758[7]_i_12_n_0 ;
  wire \y_26_reg_1758[7]_i_14_n_0 ;
  wire \y_26_reg_1758[7]_i_15_n_0 ;
  wire \y_26_reg_1758[7]_i_16_n_0 ;
  wire \y_26_reg_1758[7]_i_17_n_0 ;
  wire \y_26_reg_1758[7]_i_18_n_0 ;
  wire \y_26_reg_1758[7]_i_19_n_0 ;
  wire \y_26_reg_1758[7]_i_20_n_0 ;
  wire \y_26_reg_1758[7]_i_21_n_0 ;
  wire \y_26_reg_1758[7]_i_22_n_0 ;
  wire \y_26_reg_1758[7]_i_24_n_0 ;
  wire \y_26_reg_1758[7]_i_25_n_0 ;
  wire \y_26_reg_1758[7]_i_26_n_0 ;
  wire \y_26_reg_1758[7]_i_27_n_0 ;
  wire \y_26_reg_1758[7]_i_28_n_0 ;
  wire \y_26_reg_1758[7]_i_29_n_0 ;
  wire \y_26_reg_1758[7]_i_2_n_0 ;
  wire \y_26_reg_1758[7]_i_30_n_0 ;
  wire \y_26_reg_1758[7]_i_31_n_0 ;
  wire \y_26_reg_1758[7]_i_32_n_0 ;
  wire \y_26_reg_1758[7]_i_33_n_0 ;
  wire \y_26_reg_1758[7]_i_34_n_0 ;
  wire \y_26_reg_1758[7]_i_35_n_0 ;
  wire \y_26_reg_1758[7]_i_36_n_0 ;
  wire \y_26_reg_1758[7]_i_37_n_0 ;
  wire \y_26_reg_1758[7]_i_38_n_0 ;
  wire \y_26_reg_1758[7]_i_39_n_0 ;
  wire \y_26_reg_1758[7]_i_40_n_0 ;
  wire \y_26_reg_1758[7]_i_41_n_0 ;
  wire \y_26_reg_1758[7]_i_42_n_0 ;
  wire \y_26_reg_1758[7]_i_43_n_0 ;
  wire \y_26_reg_1758[7]_i_44_n_0 ;
  wire \y_26_reg_1758[7]_i_45_n_0 ;
  wire \y_26_reg_1758[7]_i_46_n_0 ;
  wire \y_26_reg_1758[7]_i_47_n_0 ;
  wire \y_26_reg_1758[7]_i_48_n_0 ;
  wire \y_26_reg_1758[7]_i_4_n_0 ;
  wire \y_26_reg_1758[7]_i_5_n_0 ;
  wire \y_26_reg_1758[7]_i_6_n_0 ;
  wire \y_26_reg_1758[7]_i_7_n_0 ;
  wire \y_26_reg_1758[7]_i_8_n_0 ;
  wire \y_26_reg_1758[7]_i_9_n_0 ;
  wire \y_26_reg_1758[8]_i_2_n_0 ;
  wire \y_26_reg_1758[8]_i_3_n_0 ;
  wire \y_26_reg_1758[8]_i_4_n_0 ;
  wire \y_26_reg_1758[8]_i_5_n_0 ;
  wire \y_26_reg_1758[8]_i_6_n_0 ;
  wire \y_26_reg_1758[8]_i_7_n_0 ;
  wire \y_26_reg_1758[8]_i_8_n_0 ;
  wire \y_26_reg_1758[8]_i_9_n_0 ;
  wire \y_26_reg_1758_reg[7]_i_13_n_0 ;
  wire \y_26_reg_1758_reg[7]_i_13_n_1 ;
  wire \y_26_reg_1758_reg[7]_i_13_n_10 ;
  wire \y_26_reg_1758_reg[7]_i_13_n_11 ;
  wire \y_26_reg_1758_reg[7]_i_13_n_12 ;
  wire \y_26_reg_1758_reg[7]_i_13_n_13 ;
  wire \y_26_reg_1758_reg[7]_i_13_n_14 ;
  wire \y_26_reg_1758_reg[7]_i_13_n_15 ;
  wire \y_26_reg_1758_reg[7]_i_13_n_2 ;
  wire \y_26_reg_1758_reg[7]_i_13_n_3 ;
  wire \y_26_reg_1758_reg[7]_i_13_n_4 ;
  wire \y_26_reg_1758_reg[7]_i_13_n_5 ;
  wire \y_26_reg_1758_reg[7]_i_13_n_6 ;
  wire \y_26_reg_1758_reg[7]_i_13_n_7 ;
  wire \y_26_reg_1758_reg[7]_i_13_n_8 ;
  wire \y_26_reg_1758_reg[7]_i_13_n_9 ;
  wire \y_26_reg_1758_reg[7]_i_1_n_0 ;
  wire \y_26_reg_1758_reg[7]_i_1_n_1 ;
  wire \y_26_reg_1758_reg[7]_i_1_n_2 ;
  wire \y_26_reg_1758_reg[7]_i_1_n_3 ;
  wire \y_26_reg_1758_reg[7]_i_1_n_4 ;
  wire \y_26_reg_1758_reg[7]_i_1_n_5 ;
  wire \y_26_reg_1758_reg[7]_i_1_n_6 ;
  wire \y_26_reg_1758_reg[7]_i_1_n_7 ;
  wire \y_26_reg_1758_reg[7]_i_23_n_0 ;
  wire \y_26_reg_1758_reg[7]_i_23_n_1 ;
  wire \y_26_reg_1758_reg[7]_i_23_n_10 ;
  wire \y_26_reg_1758_reg[7]_i_23_n_11 ;
  wire \y_26_reg_1758_reg[7]_i_23_n_12 ;
  wire \y_26_reg_1758_reg[7]_i_23_n_13 ;
  wire \y_26_reg_1758_reg[7]_i_23_n_14 ;
  wire \y_26_reg_1758_reg[7]_i_23_n_15 ;
  wire \y_26_reg_1758_reg[7]_i_23_n_2 ;
  wire \y_26_reg_1758_reg[7]_i_23_n_3 ;
  wire \y_26_reg_1758_reg[7]_i_23_n_4 ;
  wire \y_26_reg_1758_reg[7]_i_23_n_5 ;
  wire \y_26_reg_1758_reg[7]_i_23_n_6 ;
  wire \y_26_reg_1758_reg[7]_i_23_n_7 ;
  wire \y_26_reg_1758_reg[7]_i_23_n_8 ;
  wire \y_26_reg_1758_reg[7]_i_23_n_9 ;
  wire \y_26_reg_1758_reg[7]_i_3_n_0 ;
  wire \y_26_reg_1758_reg[7]_i_3_n_1 ;
  wire \y_26_reg_1758_reg[7]_i_3_n_2 ;
  wire \y_26_reg_1758_reg[7]_i_3_n_3 ;
  wire \y_26_reg_1758_reg[7]_i_3_n_4 ;
  wire \y_26_reg_1758_reg[7]_i_3_n_5 ;
  wire \y_26_reg_1758_reg[7]_i_3_n_6 ;
  wire \y_26_reg_1758_reg[7]_i_3_n_7 ;
  wire \y_26_reg_1758_reg[8]_i_1_n_0 ;
  wire \y_26_reg_1758_reg[8]_i_1_n_1 ;
  wire \y_26_reg_1758_reg[8]_i_1_n_2 ;
  wire \y_26_reg_1758_reg[8]_i_1_n_3 ;
  wire \y_26_reg_1758_reg[8]_i_1_n_4 ;
  wire \y_26_reg_1758_reg[8]_i_1_n_5 ;
  wire \y_26_reg_1758_reg[8]_i_1_n_6 ;
  wire \y_26_reg_1758_reg[8]_i_1_n_7 ;
  wire [20:20]y_29_fu_984_p3;
  wire [19:0]y_29_fu_984_p3__0;
  wire [20:20]y_32_fu_1059_p3;
  wire [19:0]y_32_fu_1059_p3__0;
  wire [20:20]y_35_fu_1135_p3;
  wire [19:0]y_35_fu_1135_p3__0;
  wire [20:0]y_38_fu_1211_p3;
  wire [19:0]y_38_reg_1807;
  wire \y_38_reg_1807[11]_i_10_n_0 ;
  wire \y_38_reg_1807[11]_i_11_n_0 ;
  wire \y_38_reg_1807[11]_i_12_n_0 ;
  wire \y_38_reg_1807[11]_i_13_n_0 ;
  wire \y_38_reg_1807[11]_i_14_n_0 ;
  wire \y_38_reg_1807[11]_i_15_n_0 ;
  wire \y_38_reg_1807[11]_i_16_n_0 ;
  wire \y_38_reg_1807[11]_i_17_n_0 ;
  wire \y_38_reg_1807[11]_i_18_n_0 ;
  wire \y_38_reg_1807[11]_i_3_n_0 ;
  wire \y_38_reg_1807[11]_i_4_n_0 ;
  wire \y_38_reg_1807[11]_i_5_n_0 ;
  wire \y_38_reg_1807[11]_i_6_n_0 ;
  wire \y_38_reg_1807[11]_i_7_n_0 ;
  wire \y_38_reg_1807[11]_i_8_n_0 ;
  wire \y_38_reg_1807[11]_i_9_n_0 ;
  wire \y_38_reg_1807[7]_i_10_n_0 ;
  wire \y_38_reg_1807[7]_i_11_n_0 ;
  wire \y_38_reg_1807[7]_i_12_n_0 ;
  wire \y_38_reg_1807[7]_i_14_n_0 ;
  wire \y_38_reg_1807[7]_i_15_n_0 ;
  wire \y_38_reg_1807[7]_i_16_n_0 ;
  wire \y_38_reg_1807[7]_i_17_n_0 ;
  wire \y_38_reg_1807[7]_i_18_n_0 ;
  wire \y_38_reg_1807[7]_i_19_n_0 ;
  wire \y_38_reg_1807[7]_i_20_n_0 ;
  wire \y_38_reg_1807[7]_i_21_n_0 ;
  wire \y_38_reg_1807[7]_i_22_n_0 ;
  wire \y_38_reg_1807[7]_i_23_n_0 ;
  wire \y_38_reg_1807[7]_i_24_n_0 ;
  wire \y_38_reg_1807[7]_i_25_n_0 ;
  wire \y_38_reg_1807[7]_i_26_n_0 ;
  wire \y_38_reg_1807[7]_i_27_n_0 ;
  wire \y_38_reg_1807[7]_i_28_n_0 ;
  wire \y_38_reg_1807[7]_i_29_n_0 ;
  wire \y_38_reg_1807[7]_i_2_n_0 ;
  wire \y_38_reg_1807[7]_i_30_n_0 ;
  wire \y_38_reg_1807[7]_i_4_n_0 ;
  wire \y_38_reg_1807[7]_i_5_n_0 ;
  wire \y_38_reg_1807[7]_i_6_n_0 ;
  wire \y_38_reg_1807[7]_i_7_n_0 ;
  wire \y_38_reg_1807[7]_i_8_n_0 ;
  wire \y_38_reg_1807[7]_i_9_n_0 ;
  wire \y_38_reg_1807_reg[11]_i_1_n_0 ;
  wire \y_38_reg_1807_reg[11]_i_1_n_1 ;
  wire \y_38_reg_1807_reg[11]_i_1_n_2 ;
  wire \y_38_reg_1807_reg[11]_i_1_n_3 ;
  wire \y_38_reg_1807_reg[11]_i_1_n_4 ;
  wire \y_38_reg_1807_reg[11]_i_1_n_5 ;
  wire \y_38_reg_1807_reg[11]_i_1_n_6 ;
  wire \y_38_reg_1807_reg[11]_i_1_n_7 ;
  wire \y_38_reg_1807_reg[11]_i_2_n_0 ;
  wire \y_38_reg_1807_reg[11]_i_2_n_1 ;
  wire \y_38_reg_1807_reg[11]_i_2_n_2 ;
  wire \y_38_reg_1807_reg[11]_i_2_n_3 ;
  wire \y_38_reg_1807_reg[11]_i_2_n_4 ;
  wire \y_38_reg_1807_reg[11]_i_2_n_5 ;
  wire \y_38_reg_1807_reg[11]_i_2_n_6 ;
  wire \y_38_reg_1807_reg[11]_i_2_n_7 ;
  wire \y_38_reg_1807_reg[7]_i_13_n_0 ;
  wire \y_38_reg_1807_reg[7]_i_13_n_1 ;
  wire \y_38_reg_1807_reg[7]_i_13_n_2 ;
  wire \y_38_reg_1807_reg[7]_i_13_n_3 ;
  wire \y_38_reg_1807_reg[7]_i_13_n_4 ;
  wire \y_38_reg_1807_reg[7]_i_13_n_5 ;
  wire \y_38_reg_1807_reg[7]_i_13_n_6 ;
  wire \y_38_reg_1807_reg[7]_i_13_n_7 ;
  wire \y_38_reg_1807_reg[7]_i_1_n_0 ;
  wire \y_38_reg_1807_reg[7]_i_1_n_1 ;
  wire \y_38_reg_1807_reg[7]_i_1_n_2 ;
  wire \y_38_reg_1807_reg[7]_i_1_n_3 ;
  wire \y_38_reg_1807_reg[7]_i_1_n_4 ;
  wire \y_38_reg_1807_reg[7]_i_1_n_5 ;
  wire \y_38_reg_1807_reg[7]_i_1_n_6 ;
  wire \y_38_reg_1807_reg[7]_i_1_n_7 ;
  wire \y_38_reg_1807_reg[7]_i_3_n_0 ;
  wire \y_38_reg_1807_reg[7]_i_3_n_1 ;
  wire \y_38_reg_1807_reg[7]_i_3_n_2 ;
  wire \y_38_reg_1807_reg[7]_i_3_n_3 ;
  wire \y_38_reg_1807_reg[7]_i_3_n_4 ;
  wire \y_38_reg_1807_reg[7]_i_3_n_5 ;
  wire \y_38_reg_1807_reg[7]_i_3_n_6 ;
  wire \y_38_reg_1807_reg[7]_i_3_n_7 ;
  wire [19:3]y_4_fu_326_p2;
  wire [15:0]y_in;
  wire [7:4]\NLW_a_4_reg_1835_reg[15]_i_2_CO_UNCONNECTED ;
  wire [7:5]\NLW_a_4_reg_1835_reg[15]_i_2_O_UNCONNECTED ;
  wire [7:4]\NLW_a_4_reg_1835_reg[15]_i_3_CO_UNCONNECTED ;
  wire [7:0]\NLW_a_4_reg_1835_reg[15]_i_3_O_UNCONNECTED ;
  wire [7:4]\NLW_a_4_reg_1835_reg[15]_i_6_CO_UNCONNECTED ;
  wire [7:0]\NLW_a_4_reg_1835_reg[15]_i_6_O_UNCONNECTED ;
  wire [7:7]\NLW_a_4_reg_1835_reg[8]_i_19_CO_UNCONNECTED ;
  wire [7:3]\NLW_a_4_reg_1835_reg[8]_i_21_CO_UNCONNECTED ;
  wire [7:0]\NLW_a_4_reg_1835_reg[8]_i_21_O_UNCONNECTED ;
  wire [7:5]\NLW_add_ln43_9_reg_1781_reg[14]_i_1_CO_UNCONNECTED ;
  wire [7:6]\NLW_add_ln43_9_reg_1781_reg[14]_i_1_O_UNCONNECTED ;
  wire [7:4]\NLW_add_ln43_9_reg_1781_reg[14]_i_9_CO_UNCONNECTED ;
  wire [7:5]\NLW_add_ln43_9_reg_1781_reg[14]_i_9_O_UNCONNECTED ;
  wire [7:4]\NLW_tmp_10_reg_1774_reg[0]_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_tmp_10_reg_1774_reg[0]_i_1_O_UNCONNECTED ;
  wire [7:4]\NLW_tmp_11_reg_1786_reg[0]_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_tmp_11_reg_1786_reg[0]_i_1_O_UNCONNECTED ;
  wire [7:4]\NLW_tmp_12_reg_1791_reg[0]_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_tmp_12_reg_1791_reg[0]_i_1_O_UNCONNECTED ;
  wire [7:4]\NLW_tmp_12_reg_1791_reg[0]_i_16_CO_UNCONNECTED ;
  wire [7:5]\NLW_tmp_12_reg_1791_reg[0]_i_16_O_UNCONNECTED ;
  wire [7:4]\NLW_tmp_13_reg_1796_reg[0]_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_tmp_13_reg_1796_reg[0]_i_1_O_UNCONNECTED ;
  wire [7:4]\NLW_tmp_13_reg_1796_reg[0]_i_7_CO_UNCONNECTED ;
  wire [7:5]\NLW_tmp_13_reg_1796_reg[0]_i_7_O_UNCONNECTED ;
  wire [7:4]\NLW_tmp_14_reg_1823_reg[0]_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_tmp_14_reg_1823_reg[0]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_10_O_UNCONNECTED ;
  wire [7:1]\NLW_tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_2_CO_UNCONNECTED ;
  wire [7:2]\NLW_tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_2_O_UNCONNECTED ;
  wire [7:0]\NLW_tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_3_CO_UNCONNECTED ;
  wire [7:1]\NLW_tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_3_O_UNCONNECTED ;
  wire [7:5]\NLW_tmp_5_reg_1720_reg[0]_i_1_CO_UNCONNECTED ;
  wire [7:6]\NLW_tmp_5_reg_1720_reg[0]_i_1_O_UNCONNECTED ;
  wire [7:1]\NLW_tmp_5_reg_1720_reg[0]_i_2_CO_UNCONNECTED ;
  wire [7:2]\NLW_tmp_5_reg_1720_reg[0]_i_2_O_UNCONNECTED ;
  wire [7:4]\NLW_tmp_9_reg_1747_reg[0]_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_tmp_9_reg_1747_reg[0]_i_1_O_UNCONNECTED ;
  wire [7:4]\NLW_tmp_9_reg_1747_reg[0]_i_23_CO_UNCONNECTED ;
  wire [7:5]\NLW_tmp_9_reg_1747_reg[0]_i_23_O_UNCONNECTED ;
  wire [7:4]\NLW_tmp_9_reg_1747_reg[0]_i_3_CO_UNCONNECTED ;
  wire [7:5]\NLW_tmp_9_reg_1747_reg[0]_i_3_O_UNCONNECTED ;
  wire [7:4]\NLW_tmp_9_reg_1747_reg[0]_i_32_CO_UNCONNECTED ;
  wire [7:5]\NLW_tmp_9_reg_1747_reg[0]_i_32_O_UNCONNECTED ;
  wire [7:4]\NLW_x_12_reg_1727_reg[20]_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_x_12_reg_1727_reg[20]_i_1_O_UNCONNECTED ;
  wire [7:4]\NLW_x_13_reg_1737_reg[20]_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_x_13_reg_1737_reg[20]_i_1_O_UNCONNECTED ;
  wire [7:4]\NLW_xs_12_reg_1813_reg[8]_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_xs_12_reg_1813_reg[8]_i_1_O_UNCONNECTED ;
  wire [7:4]\NLW_xs_12_reg_1813_reg[8]_i_2_CO_UNCONNECTED ;
  wire [7:5]\NLW_xs_12_reg_1813_reg[8]_i_2_O_UNCONNECTED ;
  wire [7:4]\NLW_xs_8_reg_1764_reg[12]_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_xs_8_reg_1764_reg[12]_i_1_O_UNCONNECTED ;
  wire [7:4]\NLW_xs_8_reg_1764_reg[12]_i_2_CO_UNCONNECTED ;
  wire [7:5]\NLW_xs_8_reg_1764_reg[12]_i_2_O_UNCONNECTED ;
  wire [7:4]\NLW_y_12_reg_1732_reg[20]_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_y_12_reg_1732_reg[20]_i_1_O_UNCONNECTED ;
  wire [7:4]\NLW_y_13_reg_1742_reg[20]_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_y_13_reg_1742_reg[20]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_y_13_reg_1742_reg[20]_i_12_CO_UNCONNECTED ;
  wire [7:1]\NLW_y_13_reg_1742_reg[20]_i_12_O_UNCONNECTED ;
  wire [7:4]\NLW_y_13_reg_1742_reg[20]_i_2_CO_UNCONNECTED ;
  wire [7:5]\NLW_y_13_reg_1742_reg[20]_i_2_O_UNCONNECTED ;
  wire [7:2]\NLW_y_13_reg_1742_reg[20]_i_8_CO_UNCONNECTED ;
  wire [7:3]\NLW_y_13_reg_1742_reg[20]_i_8_O_UNCONNECTED ;
  wire [0:0]\NLW_y_13_reg_1742_reg[7]_i_2_O_UNCONNECTED ;

  assign ang_out[15:1] = \^ang_out [15:1];
  assign ang_out[0] = \<const0> ;
  assign ang_out_ap_vld = ap_done;
  assign ap_ready = ap_start;
  assign mag_out_ap_vld = ap_done;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA56A)) 
    \a_4_reg_1835[10]_i_1 
       (.I0(a_fu_1633_p2__0[10]),
        .I1(\a_4_reg_1835_reg[15]_i_6_n_4 ),
        .I2(a_fu_1633_p2__0[9]),
        .I3(\a_4_reg_1835_reg[15]_i_3_n_4 ),
        .O(a_4_fu_1671_p3[10]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6559666A)) 
    \a_4_reg_1835[11]_i_1 
       (.I0(a_fu_1633_p2__0[11]),
        .I1(\a_4_reg_1835_reg[15]_i_3_n_4 ),
        .I2(a_fu_1633_p2__0[10]),
        .I3(a_fu_1633_p2__0[9]),
        .I4(\a_4_reg_1835_reg[15]_i_6_n_4 ),
        .O(\a_4_reg_1835[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h666666AAAA9A9A9A)) 
    \a_4_reg_1835[12]_i_1 
       (.I0(a_fu_1633_p2__0[12]),
        .I1(\a_4_reg_1835_reg[15]_i_3_n_4 ),
        .I2(\a_4_reg_1835_reg[15]_i_6_n_4 ),
        .I3(a_fu_1633_p2__0[9]),
        .I4(a_fu_1633_p2__0[10]),
        .I5(a_fu_1633_p2__0[11]),
        .O(a_4_fu_1671_p3[12]));
  LUT2 #(
    .INIT(4'h9)) 
    \a_4_reg_1835[13]_i_1 
       (.I0(a_fu_1633_p2__0[13]),
        .I1(\a_4_reg_1835[13]_i_2_n_0 ),
        .O(\a_4_reg_1835[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0C00055575757)) 
    \a_4_reg_1835[13]_i_2 
       (.I0(\a_4_reg_1835_reg[15]_i_6_n_4 ),
        .I1(a_fu_1633_p2__0[11]),
        .I2(a_fu_1633_p2__0[12]),
        .I3(a_fu_1633_p2__0[10]),
        .I4(a_fu_1633_p2__0[9]),
        .I5(\a_4_reg_1835_reg[15]_i_3_n_4 ),
        .O(\a_4_reg_1835[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA9A559A)) 
    \a_4_reg_1835[14]_i_1 
       (.I0(a_fu_1633_p2__0[14]),
        .I1(\a_4_reg_1835[15]_i_5_n_0 ),
        .I2(\a_4_reg_1835_reg[15]_i_6_n_4 ),
        .I3(\a_4_reg_1835_reg[15]_i_3_n_4 ),
        .I4(\a_4_reg_1835[15]_i_4_n_0 ),
        .O(\a_4_reg_1835[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA6AAA69995999599)) 
    \a_4_reg_1835[15]_i_1 
       (.I0(\a_4_reg_1835_reg[15]_i_2_n_2 ),
        .I1(\a_4_reg_1835_reg[15]_i_3_n_4 ),
        .I2(\a_4_reg_1835[15]_i_4_n_0 ),
        .I3(a_fu_1633_p2__0[14]),
        .I4(\a_4_reg_1835[15]_i_5_n_0 ),
        .I5(\a_4_reg_1835_reg[15]_i_6_n_4 ),
        .O(a_4_fu_1671_p3[15]));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \a_4_reg_1835[15]_i_10 
       (.I0(sext_ln43_6_fu_1624_p1[9]),
        .I1(sext_ln43_4_fu_1620_p1[9]),
        .I2(sext_ln43_6_fu_1624_p1[10]),
        .I3(sext_ln43_4_fu_1620_p1[10]),
        .O(\a_4_reg_1835[15]_i_10_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \a_4_reg_1835[15]_i_11 
       (.I0(sext_ln43_6_fu_1624_p1[8]),
        .I1(sext_ln43_4_fu_1620_p1[8]),
        .I2(sext_ln43_6_fu_1624_p1[9]),
        .I3(sext_ln43_4_fu_1620_p1[9]),
        .O(\a_4_reg_1835[15]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hEF0E10F1)) 
    \a_4_reg_1835[15]_i_12 
       (.I0(sext_ln43_6_fu_1624_p1[12]),
        .I1(sext_ln43_4_fu_1620_p1[12]),
        .I2(sext_ln43_4_fu_1620_p1[13]),
        .I3(sext_ln43_6_fu_1624_p1[13]),
        .I4(sext_ln43_6_fu_1624_p1[14]),
        .O(\a_4_reg_1835[15]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h96969669)) 
    \a_4_reg_1835[15]_i_13 
       (.I0(\a_4_reg_1835[15]_i_8_n_0 ),
        .I1(sext_ln43_4_fu_1620_p1[13]),
        .I2(sext_ln43_6_fu_1624_p1[13]),
        .I3(sext_ln43_4_fu_1620_p1[12]),
        .I4(sext_ln43_6_fu_1624_p1[12]),
        .O(\a_4_reg_1835[15]_i_13_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \a_4_reg_1835[15]_i_14 
       (.I0(sext_ln43_6_fu_1624_p1[11]),
        .I1(sext_ln43_4_fu_1620_p1[11]),
        .I2(sext_ln43_6_fu_1624_p1[12]),
        .I3(sext_ln43_4_fu_1620_p1[12]),
        .I4(\a_4_reg_1835[15]_i_9_n_0 ),
        .O(\a_4_reg_1835[15]_i_14_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \a_4_reg_1835[15]_i_15 
       (.I0(sext_ln43_6_fu_1624_p1[10]),
        .I1(sext_ln43_4_fu_1620_p1[10]),
        .I2(sext_ln43_6_fu_1624_p1[11]),
        .I3(sext_ln43_4_fu_1620_p1[11]),
        .I4(\a_4_reg_1835[15]_i_10_n_0 ),
        .O(\a_4_reg_1835[15]_i_15_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \a_4_reg_1835[15]_i_16 
       (.I0(sext_ln43_6_fu_1624_p1[9]),
        .I1(sext_ln43_4_fu_1620_p1[9]),
        .I2(sext_ln43_6_fu_1624_p1[10]),
        .I3(sext_ln43_4_fu_1620_p1[10]),
        .I4(\a_4_reg_1835[15]_i_11_n_0 ),
        .O(\a_4_reg_1835[15]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \a_4_reg_1835[15]_i_17 
       (.I0(\a_4_reg_1835_reg[15]_i_2_n_2 ),
        .I1(a_fu_1633_p2__0[14]),
        .O(\a_4_reg_1835[15]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \a_4_reg_1835[15]_i_18 
       (.I0(a_fu_1633_p2__0[12]),
        .I1(a_fu_1633_p2__0[13]),
        .O(\a_4_reg_1835[15]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \a_4_reg_1835[15]_i_19 
       (.I0(a_fu_1633_p2[8]),
        .I1(a_fu_1633_p2__0[9]),
        .O(\a_4_reg_1835[15]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_4_reg_1835[15]_i_20 
       (.I0(\a_4_reg_1835_reg[15]_i_2_n_2 ),
        .I1(a_fu_1633_p2__0[14]),
        .O(\a_4_reg_1835[15]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_4_reg_1835[15]_i_21 
       (.I0(a_fu_1633_p2__0[13]),
        .I1(a_fu_1633_p2__0[12]),
        .O(\a_4_reg_1835[15]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \a_4_reg_1835[15]_i_22 
       (.I0(a_fu_1633_p2__0[11]),
        .I1(a_fu_1633_p2__0[10]),
        .O(\a_4_reg_1835[15]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a_4_reg_1835[15]_i_23 
       (.I0(a_fu_1633_p2__0[9]),
        .I1(a_fu_1633_p2[8]),
        .O(\a_4_reg_1835[15]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a_4_reg_1835[15]_i_24 
       (.I0(\a_4_reg_1835_reg[15]_i_2_n_2 ),
        .I1(a_fu_1633_p2__0[14]),
        .O(\a_4_reg_1835[15]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a_4_reg_1835[15]_i_25 
       (.I0(a_fu_1633_p2__0[12]),
        .I1(a_fu_1633_p2__0[13]),
        .O(\a_4_reg_1835[15]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \a_4_reg_1835[15]_i_26 
       (.I0(a_fu_1633_p2[8]),
        .I1(a_fu_1633_p2__0[9]),
        .O(\a_4_reg_1835[15]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_4_reg_1835[15]_i_27 
       (.I0(a_fu_1633_p2__0[14]),
        .I1(\a_4_reg_1835_reg[15]_i_2_n_2 ),
        .O(\a_4_reg_1835[15]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_4_reg_1835[15]_i_28 
       (.I0(a_fu_1633_p2__0[12]),
        .I1(a_fu_1633_p2__0[13]),
        .O(\a_4_reg_1835[15]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a_4_reg_1835[15]_i_29 
       (.I0(a_fu_1633_p2__0[11]),
        .I1(a_fu_1633_p2__0[10]),
        .O(\a_4_reg_1835[15]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \a_4_reg_1835[15]_i_30 
       (.I0(a_fu_1633_p2__0[9]),
        .I1(a_fu_1633_p2[8]),
        .O(\a_4_reg_1835[15]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h01555555)) 
    \a_4_reg_1835[15]_i_4 
       (.I0(a_fu_1633_p2__0[13]),
        .I1(a_fu_1633_p2__0[9]),
        .I2(a_fu_1633_p2__0[10]),
        .I3(a_fu_1633_p2__0[12]),
        .I4(a_fu_1633_p2__0[11]),
        .O(\a_4_reg_1835[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAAAAA80)) 
    \a_4_reg_1835[15]_i_5 
       (.I0(a_fu_1633_p2__0[13]),
        .I1(a_fu_1633_p2__0[9]),
        .I2(a_fu_1633_p2__0[10]),
        .I3(a_fu_1633_p2__0[12]),
        .I4(a_fu_1633_p2__0[11]),
        .O(\a_4_reg_1835[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBBB2)) 
    \a_4_reg_1835[15]_i_7 
       (.I0(sext_ln43_6_fu_1624_p1[13]),
        .I1(sext_ln43_4_fu_1620_p1[13]),
        .I2(sext_ln43_4_fu_1620_p1[12]),
        .I3(sext_ln43_6_fu_1624_p1[12]),
        .O(\a_4_reg_1835[15]_i_7_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \a_4_reg_1835[15]_i_8 
       (.I0(sext_ln43_6_fu_1624_p1[11]),
        .I1(sext_ln43_4_fu_1620_p1[11]),
        .I2(sext_ln43_6_fu_1624_p1[12]),
        .I3(sext_ln43_4_fu_1620_p1[12]),
        .O(\a_4_reg_1835[15]_i_8_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \a_4_reg_1835[15]_i_9 
       (.I0(sext_ln43_6_fu_1624_p1[10]),
        .I1(sext_ln43_4_fu_1620_p1[10]),
        .I2(sext_ln43_6_fu_1624_p1[11]),
        .I3(sext_ln43_4_fu_1620_p1[11]),
        .O(\a_4_reg_1835[15]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \a_4_reg_1835[1]_i_1 
       (.I0(tmp_11_reg_1786),
        .I1(tmp_9_reg_1747_pp0_iter2_reg),
        .I2(tmp_14_reg_1823),
        .I3(sext_ln43_6_fu_1624_p1[1]),
        .O(a_fu_1633_p2[1]));
  LUT4 #(
    .INIT(16'hEBBE)) 
    \a_4_reg_1835[8]_i_10 
       (.I0(sext_ln43_6_fu_1624_p1[1]),
        .I1(tmp_14_reg_1823),
        .I2(tmp_9_reg_1747_pp0_iter2_reg),
        .I3(tmp_11_reg_1786),
        .O(\a_4_reg_1835[8]_i_10_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \a_4_reg_1835[8]_i_11 
       (.I0(sext_ln43_6_fu_1624_p1[8]),
        .I1(sext_ln43_4_fu_1620_p1[8]),
        .I2(sext_ln43_6_fu_1624_p1[9]),
        .I3(sext_ln43_4_fu_1620_p1[9]),
        .I4(\a_4_reg_1835[8]_i_3_n_0 ),
        .O(\a_4_reg_1835[8]_i_11_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \a_4_reg_1835[8]_i_12 
       (.I0(sext_ln43_6_fu_1624_p1[7]),
        .I1(sext_ln43_4_fu_1620_p1[7]),
        .I2(sext_ln43_6_fu_1624_p1[8]),
        .I3(sext_ln43_4_fu_1620_p1[8]),
        .I4(\a_4_reg_1835[8]_i_4_n_0 ),
        .O(\a_4_reg_1835[8]_i_12_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT5 #(
    .INIT(32'hB44B4BB4)) 
    \a_4_reg_1835[8]_i_13 
       (.I0(sext_ln43_4_fu_1620_p1[6]),
        .I1(tmp_9_reg_1747_pp0_iter2_reg),
        .I2(sext_ln43_6_fu_1624_p1[7]),
        .I3(sext_ln43_4_fu_1620_p1[7]),
        .I4(\a_4_reg_1835[8]_i_5_n_0 ),
        .O(\a_4_reg_1835[8]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \a_4_reg_1835[8]_i_14 
       (.I0(sext_ln43_6_fu_1624_p1[6]),
        .I1(tmp_9_reg_1747_pp0_iter2_reg),
        .I2(sext_ln43_4_fu_1620_p1[6]),
        .I3(sext_ln43_6_fu_1624_p1[5]),
        .I4(sext_ln43_4_fu_1620_p1[5]),
        .I5(\a_4_reg_1835[8]_i_24_n_0 ),
        .O(\a_4_reg_1835[8]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \a_4_reg_1835[8]_i_15 
       (.I0(\a_4_reg_1835[8]_i_7_n_0 ),
        .I1(sext_ln43_4_fu_1620_p1[5]),
        .I2(sext_ln43_6_fu_1624_p1[5]),
        .I3(\a_4_reg_1835[8]_i_24_n_0 ),
        .O(\a_4_reg_1835[8]_i_15_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \a_4_reg_1835[8]_i_16 
       (.I0(\a_4_reg_1835[8]_i_20_n_0 ),
        .I1(sext_ln43_4_fu_1620_p1[4]),
        .I2(sext_ln43_6_fu_1624_p1[4]),
        .I3(\a_4_reg_1835[8]_i_8_n_0 ),
        .O(\a_4_reg_1835[8]_i_16_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \a_4_reg_1835[8]_i_17 
       (.I0(sext_ln43_4_fu_1620_p1[3]),
        .I1(\a_4_reg_1835[8]_i_22_n_0 ),
        .I2(sext_ln43_6_fu_1624_p1[3]),
        .I3(\a_4_reg_1835[8]_i_9_n_0 ),
        .O(\a_4_reg_1835[8]_i_17_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \a_4_reg_1835[8]_i_18 
       (.I0(sext_ln43_4_fu_1620_p1[2]),
        .I1(\a_4_reg_1835[8]_i_23_n_0 ),
        .I2(sext_ln43_6_fu_1624_p1[2]),
        .I3(\a_4_reg_1835[8]_i_10_n_0 ),
        .O(\a_4_reg_1835[8]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \a_4_reg_1835[8]_i_2 
       (.I0(sext_ln43_6_fu_1624_p1[1]),
        .I1(tmp_14_reg_1823),
        .I2(tmp_9_reg_1747_pp0_iter2_reg),
        .I3(tmp_11_reg_1786),
        .O(\a_4_reg_1835[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0240FD3B2340FDBF)) 
    \a_4_reg_1835[8]_i_20 
       (.I0(tmp_10_reg_1774_pp0_iter2_reg),
        .I1(tmp_12_reg_1791),
        .I2(tmp_13_reg_1796),
        .I3(tmp_9_reg_1747_pp0_iter2_reg),
        .I4(tmp_11_reg_1786),
        .I5(tmp_14_reg_1823),
        .O(\a_4_reg_1835[8]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hA69AAA5555AAA69A)) 
    \a_4_reg_1835[8]_i_22 
       (.I0(tmp_12_reg_1791),
        .I1(tmp_11_reg_1786),
        .I2(tmp_14_reg_1823),
        .I3(tmp_9_reg_1747_pp0_iter2_reg),
        .I4(tmp_10_reg_1774_pp0_iter2_reg),
        .I5(tmp_13_reg_1796),
        .O(\a_4_reg_1835[8]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h2BD4D42B)) 
    \a_4_reg_1835[8]_i_23 
       (.I0(tmp_11_reg_1786),
        .I1(tmp_14_reg_1823),
        .I2(tmp_9_reg_1747_pp0_iter2_reg),
        .I3(tmp_13_reg_1796),
        .I4(tmp_10_reg_1774_pp0_iter2_reg),
        .O(\a_4_reg_1835[8]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h0002BFFF)) 
    \a_4_reg_1835[8]_i_24 
       (.I0(tmp_9_reg_1747_pp0_iter2_reg),
        .I1(tmp_13_reg_1796),
        .I2(tmp_12_reg_1791),
        .I3(tmp_11_reg_1786),
        .I4(tmp_10_reg_1774_pp0_iter2_reg),
        .O(\a_4_reg_1835[8]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \a_4_reg_1835[8]_i_25 
       (.I0(tmp_5_reg_1720_pp0_iter2_reg),
        .I1(tmp_3_reg_1710_pp0_iter2_reg),
        .O(\a_4_reg_1835[8]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \a_4_reg_1835[8]_i_26 
       (.I0(tmp_2_reg_1704_pp0_iter2_reg),
        .I1(tmp_3_reg_1710_pp0_iter2_reg),
        .O(\a_4_reg_1835[8]_i_26_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \a_4_reg_1835[8]_i_27 
       (.I0(tmp_5_reg_1720_pp0_iter2_reg),
        .O(add_ln43_5_fu_1604_p2));
  LUT2 #(
    .INIT(4'h6)) 
    \a_4_reg_1835[8]_i_28 
       (.I0(tmp_2_reg_1704_pp0_iter2_reg),
        .I1(tmp_3_reg_1710_pp0_iter2_reg),
        .O(\a_4_reg_1835[8]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h0C71)) 
    \a_4_reg_1835[8]_i_29 
       (.I0(tmp_5_reg_1720_pp0_iter2_reg),
        .I1(tmp_4_reg_1715_pp0_iter2_reg),
        .I2(tmp_2_reg_1704_pp0_iter2_reg),
        .I3(tmp_3_reg_1710_pp0_iter2_reg),
        .O(\a_4_reg_1835[8]_i_29_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \a_4_reg_1835[8]_i_3 
       (.I0(sext_ln43_6_fu_1624_p1[7]),
        .I1(sext_ln43_4_fu_1620_p1[7]),
        .I2(sext_ln43_6_fu_1624_p1[8]),
        .I3(sext_ln43_4_fu_1620_p1[8]),
        .O(\a_4_reg_1835[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4BB4)) 
    \a_4_reg_1835[8]_i_30 
       (.I0(tmp_3_reg_1710_pp0_iter2_reg),
        .I1(tmp_5_reg_1720_pp0_iter2_reg),
        .I2(tmp_2_reg_1704_pp0_iter2_reg),
        .I3(tmp_4_reg_1715_pp0_iter2_reg),
        .O(\a_4_reg_1835[8]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h95)) 
    \a_4_reg_1835[8]_i_31 
       (.I0(tmp_5_reg_1720_pp0_iter2_reg),
        .I1(tmp_2_reg_1704_pp0_iter2_reg),
        .I2(tmp_3_reg_1710_pp0_iter2_reg),
        .O(\a_4_reg_1835[8]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \a_4_reg_1835[8]_i_32 
       (.I0(tmp_3_reg_1710_pp0_iter2_reg),
        .I1(tmp_2_reg_1704_pp0_iter2_reg),
        .O(\a_4_reg_1835[8]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h718E)) 
    \a_4_reg_1835[8]_i_33 
       (.I0(tmp_5_reg_1720_pp0_iter2_reg),
        .I1(tmp_3_reg_1710_pp0_iter2_reg),
        .I2(tmp_2_reg_1704_pp0_iter2_reg),
        .I3(tmp_4_reg_1715_pp0_iter2_reg),
        .O(\a_4_reg_1835[8]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \a_4_reg_1835[8]_i_34 
       (.I0(tmp_2_reg_1704_pp0_iter2_reg),
        .I1(tmp_3_reg_1710_pp0_iter2_reg),
        .I2(tmp_5_reg_1720_pp0_iter2_reg),
        .I3(add_ln43_5_fu_1604_p2),
        .O(\a_4_reg_1835[8]_i_34_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_4_reg_1835[8]_i_35 
       (.I0(tmp_5_reg_1720_pp0_iter2_reg),
        .I1(tmp_3_reg_1710_pp0_iter2_reg),
        .O(\a_4_reg_1835[8]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \a_4_reg_1835[8]_i_36 
       (.I0(tmp_3_reg_1710_pp0_iter2_reg),
        .I1(add_ln43_5_fu_1604_p2),
        .O(\a_4_reg_1835[8]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \a_4_reg_1835[8]_i_37 
       (.I0(tmp_3_reg_1710_pp0_iter2_reg),
        .I1(tmp_4_reg_1715_pp0_iter2_reg),
        .O(\a_4_reg_1835[8]_i_37_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a_4_reg_1835[8]_i_38 
       (.I0(tmp_4_reg_1715_pp0_iter2_reg),
        .O(\a_4_reg_1835[8]_i_38_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    \a_4_reg_1835[8]_i_4 
       (.I0(sext_ln43_4_fu_1620_p1[6]),
        .I1(tmp_9_reg_1747_pp0_iter2_reg),
        .I2(sext_ln43_6_fu_1624_p1[7]),
        .I3(sext_ln43_4_fu_1620_p1[7]),
        .O(\a_4_reg_1835[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \a_4_reg_1835[8]_i_5 
       (.I0(sext_ln43_6_fu_1624_p1[6]),
        .I1(sext_ln43_4_fu_1620_p1[6]),
        .I2(tmp_9_reg_1747_pp0_iter2_reg),
        .O(\a_4_reg_1835[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \a_4_reg_1835[8]_i_6 
       (.I0(sext_ln43_4_fu_1620_p1[6]),
        .I1(tmp_9_reg_1747_pp0_iter2_reg),
        .I2(sext_ln43_6_fu_1624_p1[6]),
        .O(\a_4_reg_1835[8]_i_6_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \a_4_reg_1835[8]_i_7 
       (.I0(\a_4_reg_1835[8]_i_20_n_0 ),
        .I1(sext_ln43_4_fu_1620_p1[4]),
        .I2(sext_ln43_6_fu_1624_p1[4]),
        .O(\a_4_reg_1835[8]_i_7_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \a_4_reg_1835[8]_i_8 
       (.I0(sext_ln43_4_fu_1620_p1[3]),
        .I1(\a_4_reg_1835[8]_i_22_n_0 ),
        .I2(sext_ln43_6_fu_1624_p1[3]),
        .O(\a_4_reg_1835[8]_i_8_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \a_4_reg_1835[8]_i_9 
       (.I0(sext_ln43_4_fu_1620_p1[2]),
        .I1(\a_4_reg_1835[8]_i_23_n_0 ),
        .I2(sext_ln43_6_fu_1624_p1[2]),
        .O(\a_4_reg_1835[8]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h36)) 
    \a_4_reg_1835[9]_i_1 
       (.I0(\a_4_reg_1835_reg[15]_i_3_n_4 ),
        .I1(a_fu_1633_p2__0[9]),
        .I2(\a_4_reg_1835_reg[15]_i_6_n_4 ),
        .O(a_4_fu_1671_p3[9]));
  FDRE \a_4_reg_1835_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(a_4_fu_1671_p3[10]),
        .Q(\^ang_out [10]),
        .R(1'b0));
  FDRE \a_4_reg_1835_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\a_4_reg_1835[11]_i_1_n_0 ),
        .Q(\^ang_out [11]),
        .R(1'b0));
  FDRE \a_4_reg_1835_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(a_4_fu_1671_p3[12]),
        .Q(\^ang_out [12]),
        .R(1'b0));
  FDRE \a_4_reg_1835_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\a_4_reg_1835[13]_i_1_n_0 ),
        .Q(\^ang_out [13]),
        .R(1'b0));
  FDRE \a_4_reg_1835_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\a_4_reg_1835[14]_i_1_n_0 ),
        .Q(\^ang_out [14]),
        .R(1'b0));
  FDRE \a_4_reg_1835_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(a_4_fu_1671_p3[15]),
        .Q(\^ang_out [15]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \a_4_reg_1835_reg[15]_i_2 
       (.CI(\a_4_reg_1835_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_a_4_reg_1835_reg[15]_i_2_CO_UNCONNECTED [7:6],\a_4_reg_1835_reg[15]_i_2_n_2 ,\NLW_a_4_reg_1835_reg[15]_i_2_CO_UNCONNECTED [4],\a_4_reg_1835_reg[15]_i_2_n_4 ,\a_4_reg_1835_reg[15]_i_2_n_5 ,\a_4_reg_1835_reg[15]_i_2_n_6 ,\a_4_reg_1835_reg[15]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,\a_4_reg_1835[15]_i_7_n_0 ,\a_4_reg_1835[15]_i_8_n_0 ,\a_4_reg_1835[15]_i_9_n_0 ,\a_4_reg_1835[15]_i_10_n_0 ,\a_4_reg_1835[15]_i_11_n_0 }),
        .O({\NLW_a_4_reg_1835_reg[15]_i_2_O_UNCONNECTED [7:5],a_fu_1633_p2__0[14:10]}),
        .S({1'b0,1'b0,1'b1,\a_4_reg_1835[15]_i_12_n_0 ,\a_4_reg_1835[15]_i_13_n_0 ,\a_4_reg_1835[15]_i_14_n_0 ,\a_4_reg_1835[15]_i_15_n_0 ,\a_4_reg_1835[15]_i_16_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \a_4_reg_1835_reg[15]_i_3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\NLW_a_4_reg_1835_reg[15]_i_3_CO_UNCONNECTED [7:4],\a_4_reg_1835_reg[15]_i_3_n_4 ,\a_4_reg_1835_reg[15]_i_3_n_5 ,\a_4_reg_1835_reg[15]_i_3_n_6 ,\a_4_reg_1835_reg[15]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\a_4_reg_1835[15]_i_17_n_0 ,\a_4_reg_1835[15]_i_18_n_0 ,1'b0,\a_4_reg_1835[15]_i_19_n_0 }),
        .O(\NLW_a_4_reg_1835_reg[15]_i_3_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\a_4_reg_1835[15]_i_20_n_0 ,\a_4_reg_1835[15]_i_21_n_0 ,\a_4_reg_1835[15]_i_22_n_0 ,\a_4_reg_1835[15]_i_23_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \a_4_reg_1835_reg[15]_i_6 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\NLW_a_4_reg_1835_reg[15]_i_6_CO_UNCONNECTED [7:4],\a_4_reg_1835_reg[15]_i_6_n_4 ,\a_4_reg_1835_reg[15]_i_6_n_5 ,\a_4_reg_1835_reg[15]_i_6_n_6 ,\a_4_reg_1835_reg[15]_i_6_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\a_4_reg_1835[15]_i_24_n_0 ,\a_4_reg_1835[15]_i_25_n_0 ,1'b0,\a_4_reg_1835[15]_i_26_n_0 }),
        .O(\NLW_a_4_reg_1835_reg[15]_i_6_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\a_4_reg_1835[15]_i_27_n_0 ,\a_4_reg_1835[15]_i_28_n_0 ,\a_4_reg_1835[15]_i_29_n_0 ,\a_4_reg_1835[15]_i_30_n_0 }));
  FDRE \a_4_reg_1835_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(a_fu_1633_p2[1]),
        .Q(\^ang_out [1]),
        .R(1'b0));
  FDRE \a_4_reg_1835_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(a_fu_1633_p2[2]),
        .Q(\^ang_out [2]),
        .R(1'b0));
  FDRE \a_4_reg_1835_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(a_fu_1633_p2[3]),
        .Q(\^ang_out [3]),
        .R(1'b0));
  FDRE \a_4_reg_1835_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(a_fu_1633_p2[4]),
        .Q(\^ang_out [4]),
        .R(1'b0));
  FDRE \a_4_reg_1835_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(a_fu_1633_p2[5]),
        .Q(\^ang_out [5]),
        .R(1'b0));
  FDRE \a_4_reg_1835_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(a_fu_1633_p2[6]),
        .Q(\^ang_out [6]),
        .R(1'b0));
  FDRE \a_4_reg_1835_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(a_fu_1633_p2[7]),
        .Q(\^ang_out [7]),
        .R(1'b0));
  FDRE \a_4_reg_1835_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(a_fu_1633_p2[8]),
        .Q(\^ang_out [8]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \a_4_reg_1835_reg[8]_i_1 
       (.CI(\a_4_reg_1835[8]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\a_4_reg_1835_reg[8]_i_1_n_0 ,\a_4_reg_1835_reg[8]_i_1_n_1 ,\a_4_reg_1835_reg[8]_i_1_n_2 ,\a_4_reg_1835_reg[8]_i_1_n_3 ,\a_4_reg_1835_reg[8]_i_1_n_4 ,\a_4_reg_1835_reg[8]_i_1_n_5 ,\a_4_reg_1835_reg[8]_i_1_n_6 ,\a_4_reg_1835_reg[8]_i_1_n_7 }),
        .DI({\a_4_reg_1835[8]_i_3_n_0 ,\a_4_reg_1835[8]_i_4_n_0 ,\a_4_reg_1835[8]_i_5_n_0 ,\a_4_reg_1835[8]_i_6_n_0 ,\a_4_reg_1835[8]_i_7_n_0 ,\a_4_reg_1835[8]_i_8_n_0 ,\a_4_reg_1835[8]_i_9_n_0 ,\a_4_reg_1835[8]_i_10_n_0 }),
        .O({a_fu_1633_p2__0[9],a_fu_1633_p2[8:2]}),
        .S({\a_4_reg_1835[8]_i_11_n_0 ,\a_4_reg_1835[8]_i_12_n_0 ,\a_4_reg_1835[8]_i_13_n_0 ,\a_4_reg_1835[8]_i_14_n_0 ,\a_4_reg_1835[8]_i_15_n_0 ,\a_4_reg_1835[8]_i_16_n_0 ,\a_4_reg_1835[8]_i_17_n_0 ,\a_4_reg_1835[8]_i_18_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \a_4_reg_1835_reg[8]_i_19 
       (.CI(tmp_5_reg_1720_pp0_iter2_reg),
        .CI_TOP(1'b0),
        .CO({\NLW_a_4_reg_1835_reg[8]_i_19_CO_UNCONNECTED [7],\a_4_reg_1835_reg[8]_i_19_n_1 ,\a_4_reg_1835_reg[8]_i_19_n_2 ,\a_4_reg_1835_reg[8]_i_19_n_3 ,\a_4_reg_1835_reg[8]_i_19_n_4 ,\a_4_reg_1835_reg[8]_i_19_n_5 ,\a_4_reg_1835_reg[8]_i_19_n_6 ,\a_4_reg_1835_reg[8]_i_19_n_7 }),
        .DI({1'b0,tmp_3_reg_1710_pp0_iter2_reg,1'b0,\a_4_reg_1835[8]_i_25_n_0 ,\a_4_reg_1835[8]_i_26_n_0 ,tmp_4_reg_1715_pp0_iter2_reg,add_ln43_5_fu_1604_p2,tmp_3_reg_1710_pp0_iter2_reg}),
        .O(sext_ln43_4_fu_1620_p1[13:6]),
        .S({\a_4_reg_1835[8]_i_28_n_0 ,\a_4_reg_1835[8]_i_29_n_0 ,\a_4_reg_1835[8]_i_30_n_0 ,\a_4_reg_1835[8]_i_31_n_0 ,\a_4_reg_1835[8]_i_32_n_0 ,\a_4_reg_1835[8]_i_33_n_0 ,\a_4_reg_1835[8]_i_34_n_0 ,\a_4_reg_1835[8]_i_35_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \a_4_reg_1835_reg[8]_i_21 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\NLW_a_4_reg_1835_reg[8]_i_21_CO_UNCONNECTED [7:5],sext_ln43_4_fu_1620_p1[5],\NLW_a_4_reg_1835_reg[8]_i_21_CO_UNCONNECTED [3],\a_4_reg_1835_reg[8]_i_21_n_5 ,\a_4_reg_1835_reg[8]_i_21_n_6 ,\a_4_reg_1835_reg[8]_i_21_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,add_ln43_5_fu_1604_p2,tmp_3_reg_1710_pp0_iter2_reg,tmp_4_reg_1715_pp0_iter2_reg,1'b0}),
        .O({\NLW_a_4_reg_1835_reg[8]_i_21_O_UNCONNECTED [7:4],sext_ln43_4_fu_1620_p1[4:2],\NLW_a_4_reg_1835_reg[8]_i_21_O_UNCONNECTED [0]}),
        .S({1'b0,1'b0,1'b0,1'b1,\a_4_reg_1835[8]_i_36_n_0 ,\a_4_reg_1835[8]_i_37_n_0 ,\a_4_reg_1835[8]_i_38_n_0 ,1'b1}));
  FDRE \a_4_reg_1835_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(a_4_fu_1671_p3[9]),
        .Q(\^ang_out [9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hAC)) 
    \add_ln43_9_reg_1781[14]_i_10 
       (.I0(y_12_reg_1732[20]),
        .I1(y_13_reg_1742[20]),
        .I2(tmp_5_reg_1720),
        .O(sel));
  LUT3 #(
    .INIT(8'hAC)) 
    \add_ln43_9_reg_1781[14]_i_12 
       (.I0(y_12_reg_1732[19]),
        .I1(y_13_reg_1742[19]),
        .I2(tmp_5_reg_1720),
        .O(\add_ln43_9_reg_1781[14]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \add_ln43_9_reg_1781[14]_i_13 
       (.I0(y_12_reg_1732[18]),
        .I1(y_13_reg_1742[18]),
        .I2(tmp_5_reg_1720),
        .O(\add_ln43_9_reg_1781[14]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \add_ln43_9_reg_1781[14]_i_14 
       (.I0(y_12_reg_1732[17]),
        .I1(y_13_reg_1742[17]),
        .I2(tmp_5_reg_1720),
        .O(\add_ln43_9_reg_1781[14]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \add_ln43_9_reg_1781[14]_i_15 
       (.I0(y_12_reg_1732[16]),
        .I1(y_13_reg_1742[16]),
        .I2(tmp_5_reg_1720),
        .O(\add_ln43_9_reg_1781[14]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \add_ln43_9_reg_1781[14]_i_16 
       (.I0(x_12_reg_1727[20]),
        .I1(x_13_reg_1737[20]),
        .I2(tmp_5_reg_1720),
        .O(\add_ln43_9_reg_1781[14]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \add_ln43_9_reg_1781[14]_i_17 
       (.I0(y_13_reg_1742[19]),
        .I1(y_12_reg_1732[19]),
        .I2(x_12_reg_1727[20]),
        .I3(x_13_reg_1737[20]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\add_ln43_9_reg_1781[14]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \add_ln43_9_reg_1781[14]_i_18 
       (.I0(y_13_reg_1742[18]),
        .I1(y_12_reg_1732[18]),
        .I2(x_12_reg_1727[20]),
        .I3(x_13_reg_1737[20]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\add_ln43_9_reg_1781[14]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \add_ln43_9_reg_1781[14]_i_19 
       (.I0(y_13_reg_1742[17]),
        .I1(y_12_reg_1732[17]),
        .I2(x_12_reg_1727[20]),
        .I3(x_13_reg_1737[20]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\add_ln43_9_reg_1781[14]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF03CF57DF0145)) 
    \add_ln43_9_reg_1781[14]_i_2 
       (.I0(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .I1(tmp_5_reg_1720),
        .I2(y_13_reg_1742[20]),
        .I3(y_12_reg_1732[20]),
        .I4(off_1_reg_1699[12]),
        .I5(off_1_reg_1699[8]),
        .O(\add_ln43_9_reg_1781[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \add_ln43_9_reg_1781[14]_i_20 
       (.I0(y_13_reg_1742[16]),
        .I1(y_12_reg_1732[16]),
        .I2(x_12_reg_1727[20]),
        .I3(x_13_reg_1737[20]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\add_ln43_9_reg_1781[14]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \add_ln43_9_reg_1781[14]_i_21 
       (.I0(y_12_reg_1732[15]),
        .I1(y_13_reg_1742[15]),
        .I2(tmp_5_reg_1720),
        .O(\add_ln43_9_reg_1781[14]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \add_ln43_9_reg_1781[14]_i_22 
       (.I0(y_12_reg_1732[14]),
        .I1(y_13_reg_1742[14]),
        .I2(tmp_5_reg_1720),
        .O(\add_ln43_9_reg_1781[14]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \add_ln43_9_reg_1781[14]_i_23 
       (.I0(y_12_reg_1732[13]),
        .I1(y_13_reg_1742[13]),
        .I2(tmp_5_reg_1720),
        .O(\add_ln43_9_reg_1781[14]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \add_ln43_9_reg_1781[14]_i_24 
       (.I0(y_12_reg_1732[12]),
        .I1(y_13_reg_1742[12]),
        .I2(tmp_5_reg_1720),
        .O(\add_ln43_9_reg_1781[14]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \add_ln43_9_reg_1781[14]_i_25 
       (.I0(y_12_reg_1732[11]),
        .I1(y_13_reg_1742[11]),
        .I2(tmp_5_reg_1720),
        .O(\add_ln43_9_reg_1781[14]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \add_ln43_9_reg_1781[14]_i_26 
       (.I0(y_12_reg_1732[10]),
        .I1(y_13_reg_1742[10]),
        .I2(tmp_5_reg_1720),
        .O(\add_ln43_9_reg_1781[14]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \add_ln43_9_reg_1781[14]_i_27 
       (.I0(y_12_reg_1732[9]),
        .I1(y_13_reg_1742[9]),
        .I2(tmp_5_reg_1720),
        .O(\add_ln43_9_reg_1781[14]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \add_ln43_9_reg_1781[14]_i_28 
       (.I0(y_12_reg_1732[8]),
        .I1(y_13_reg_1742[8]),
        .I2(tmp_5_reg_1720),
        .O(\add_ln43_9_reg_1781[14]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \add_ln43_9_reg_1781[14]_i_29 
       (.I0(y_13_reg_1742[15]),
        .I1(y_12_reg_1732[15]),
        .I2(x_12_reg_1727[19]),
        .I3(x_13_reg_1737[19]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\add_ln43_9_reg_1781[14]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \add_ln43_9_reg_1781[14]_i_3 
       (.I0(off_1_reg_1699[8]),
        .I1(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\add_ln43_9_reg_1781[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \add_ln43_9_reg_1781[14]_i_30 
       (.I0(y_13_reg_1742[14]),
        .I1(y_12_reg_1732[14]),
        .I2(x_12_reg_1727[18]),
        .I3(x_13_reg_1737[18]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\add_ln43_9_reg_1781[14]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \add_ln43_9_reg_1781[14]_i_31 
       (.I0(y_13_reg_1742[13]),
        .I1(y_12_reg_1732[13]),
        .I2(x_12_reg_1727[17]),
        .I3(x_13_reg_1737[17]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\add_ln43_9_reg_1781[14]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \add_ln43_9_reg_1781[14]_i_32 
       (.I0(y_13_reg_1742[12]),
        .I1(y_12_reg_1732[12]),
        .I2(x_12_reg_1727[16]),
        .I3(x_13_reg_1737[16]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\add_ln43_9_reg_1781[14]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \add_ln43_9_reg_1781[14]_i_33 
       (.I0(y_13_reg_1742[11]),
        .I1(y_12_reg_1732[11]),
        .I2(x_12_reg_1727[15]),
        .I3(x_13_reg_1737[15]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\add_ln43_9_reg_1781[14]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \add_ln43_9_reg_1781[14]_i_34 
       (.I0(y_13_reg_1742[10]),
        .I1(y_12_reg_1732[10]),
        .I2(x_12_reg_1727[14]),
        .I3(x_13_reg_1737[14]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\add_ln43_9_reg_1781[14]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \add_ln43_9_reg_1781[14]_i_35 
       (.I0(y_13_reg_1742[9]),
        .I1(y_12_reg_1732[9]),
        .I2(x_12_reg_1727[13]),
        .I3(x_13_reg_1737[13]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\add_ln43_9_reg_1781[14]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \add_ln43_9_reg_1781[14]_i_36 
       (.I0(y_13_reg_1742[8]),
        .I1(y_12_reg_1732[8]),
        .I2(x_12_reg_1727[12]),
        .I3(x_13_reg_1737[12]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\add_ln43_9_reg_1781[14]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \add_ln43_9_reg_1781[14]_i_4 
       (.I0(off_1_reg_1699[13]),
        .I1(off_1_reg_1699[12]),
        .O(\add_ln43_9_reg_1781[14]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \add_ln43_9_reg_1781[14]_i_5 
       (.I0(off_1_reg_1699[12]),
        .I1(off_1_reg_1699[13]),
        .O(\add_ln43_9_reg_1781[14]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \add_ln43_9_reg_1781[14]_i_6 
       (.I0(off_1_reg_1699[13]),
        .I1(off_1_reg_1699[12]),
        .O(\add_ln43_9_reg_1781[14]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h8ECF7130)) 
    \add_ln43_9_reg_1781[14]_i_7 
       (.I0(off_1_reg_1699[8]),
        .I1(off_1_reg_1699[12]),
        .I2(sel),
        .I3(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .I4(off_1_reg_1699[13]),
        .O(\add_ln43_9_reg_1781[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0FF08778)) 
    \add_ln43_9_reg_1781[14]_i_8 
       (.I0(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .I2(sel),
        .I3(off_1_reg_1699[12]),
        .I4(off_1_reg_1699[8]),
        .O(\add_ln43_9_reg_1781[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hACFF53005300ACFF)) 
    \add_ln43_9_reg_1781[8]_i_10 
       (.I0(y_12_reg_1732[20]),
        .I1(y_13_reg_1742[20]),
        .I2(tmp_5_reg_1720),
        .I3(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .I4(off_1_reg_1699[8]),
        .I5(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\add_ln43_9_reg_1781[8]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \add_ln43_9_reg_1781[8]_i_11 
       (.I0(y_12_reg_1732[20]),
        .I1(y_13_reg_1742[20]),
        .I2(tmp_5_reg_1720),
        .I3(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\add_ln43_9_reg_1781[8]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hCCF099A5)) 
    \add_ln43_9_reg_1781[8]_i_12 
       (.I0(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .I1(y_12_reg_1732[20]),
        .I2(y_13_reg_1742[20]),
        .I3(tmp_5_reg_1720),
        .I4(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\add_ln43_9_reg_1781[8]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hABEF5410)) 
    \add_ln43_9_reg_1781[8]_i_13 
       (.I0(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .I1(tmp_5_reg_1720),
        .I2(y_13_reg_1742[20]),
        .I3(y_12_reg_1732[20]),
        .I4(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\add_ln43_9_reg_1781[8]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h665A)) 
    \add_ln43_9_reg_1781[8]_i_14 
       (.I0(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .I1(y_12_reg_1732[20]),
        .I2(y_13_reg_1742[20]),
        .I3(tmp_5_reg_1720),
        .O(\add_ln43_9_reg_1781[8]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFF53)) 
    \add_ln43_9_reg_1781[8]_i_15 
       (.I0(y_12_reg_1732[20]),
        .I1(y_13_reg_1742[20]),
        .I2(tmp_5_reg_1720),
        .I3(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\add_ln43_9_reg_1781[8]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hAC0053FF)) 
    \add_ln43_9_reg_1781[8]_i_16 
       (.I0(y_12_reg_1732[20]),
        .I1(y_13_reg_1742[20]),
        .I2(tmp_5_reg_1720),
        .I3(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .I4(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\add_ln43_9_reg_1781[8]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h99A5665A)) 
    \add_ln43_9_reg_1781[8]_i_17 
       (.I0(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .I1(y_12_reg_1732[20]),
        .I2(y_13_reg_1742[20]),
        .I3(tmp_5_reg_1720),
        .I4(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\add_ln43_9_reg_1781[8]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hA820FD75)) 
    \add_ln43_9_reg_1781[8]_i_2 
       (.I0(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .I1(tmp_5_reg_1720),
        .I2(y_13_reg_1742[20]),
        .I3(y_12_reg_1732[20]),
        .I4(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\add_ln43_9_reg_1781[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h53AC)) 
    \add_ln43_9_reg_1781[8]_i_3 
       (.I0(y_12_reg_1732[20]),
        .I1(y_13_reg_1742[20]),
        .I2(tmp_5_reg_1720),
        .I3(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\add_ln43_9_reg_1781[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln43_9_reg_1781[8]_i_4 
       (.I0(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\add_ln43_9_reg_1781[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF1B001B)) 
    \add_ln43_9_reg_1781[8]_i_5 
       (.I0(tmp_5_reg_1720),
        .I1(y_13_reg_1742[20]),
        .I2(y_12_reg_1732[20]),
        .I3(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .I4(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\add_ln43_9_reg_1781[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h665A)) 
    \add_ln43_9_reg_1781[8]_i_6 
       (.I0(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .I1(y_12_reg_1732[20]),
        .I2(y_13_reg_1742[20]),
        .I3(tmp_5_reg_1720),
        .O(\add_ln43_9_reg_1781[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \add_ln43_9_reg_1781[8]_i_7 
       (.I0(tmp_5_reg_1720),
        .I1(y_13_reg_1742[20]),
        .I2(y_12_reg_1732[20]),
        .O(\add_ln43_9_reg_1781[8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hAC00)) 
    \add_ln43_9_reg_1781[8]_i_8 
       (.I0(y_12_reg_1732[20]),
        .I1(y_13_reg_1742[20]),
        .I2(tmp_5_reg_1720),
        .I3(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\add_ln43_9_reg_1781[8]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h99A5)) 
    \add_ln43_9_reg_1781[8]_i_9 
       (.I0(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .I1(y_12_reg_1732[20]),
        .I2(y_13_reg_1742[20]),
        .I3(tmp_5_reg_1720),
        .O(add_ln43_7_fu_930_p2));
  FDRE \add_ln43_9_reg_1781_pp0_iter2_reg_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1781_reg_n_0_[10] ),
        .Q(sext_ln43_6_fu_1624_p1[10]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1781_pp0_iter2_reg_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1781_reg_n_0_[11] ),
        .Q(sext_ln43_6_fu_1624_p1[11]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1781_pp0_iter2_reg_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1781_reg_n_0_[12] ),
        .Q(sext_ln43_6_fu_1624_p1[12]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1781_pp0_iter2_reg_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1781_reg_n_0_[13] ),
        .Q(sext_ln43_6_fu_1624_p1[13]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1781_pp0_iter2_reg_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1781_reg_n_0_[14] ),
        .Q(sext_ln43_6_fu_1624_p1[14]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1781_pp0_iter2_reg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1781_reg_n_0_[1] ),
        .Q(sext_ln43_6_fu_1624_p1[1]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1781_pp0_iter2_reg_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1781_reg_n_0_[2] ),
        .Q(sext_ln43_6_fu_1624_p1[2]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1781_pp0_iter2_reg_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1781_reg_n_0_[3] ),
        .Q(sext_ln43_6_fu_1624_p1[3]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1781_pp0_iter2_reg_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1781_reg_n_0_[4] ),
        .Q(sext_ln43_6_fu_1624_p1[4]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1781_pp0_iter2_reg_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1781_reg_n_0_[5] ),
        .Q(sext_ln43_6_fu_1624_p1[5]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1781_pp0_iter2_reg_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1781_reg_n_0_[6] ),
        .Q(sext_ln43_6_fu_1624_p1[6]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1781_pp0_iter2_reg_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1781_reg_n_0_[7] ),
        .Q(sext_ln43_6_fu_1624_p1[7]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1781_pp0_iter2_reg_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1781_reg_n_0_[8] ),
        .Q(sext_ln43_6_fu_1624_p1[8]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1781_pp0_iter2_reg_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln43_9_reg_1781_reg_n_0_[9] ),
        .Q(sext_ln43_6_fu_1624_p1[9]),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1781_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_945_p2[10]),
        .Q(\add_ln43_9_reg_1781_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1781_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_945_p2[11]),
        .Q(\add_ln43_9_reg_1781_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1781_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_945_p2[12]),
        .Q(\add_ln43_9_reg_1781_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1781_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_945_p2[13]),
        .Q(\add_ln43_9_reg_1781_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1781_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_945_p2[14]),
        .Q(\add_ln43_9_reg_1781_reg_n_0_[14] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \add_ln43_9_reg_1781_reg[14]_i_1 
       (.CI(\add_ln43_9_reg_1781_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_add_ln43_9_reg_1781_reg[14]_i_1_CO_UNCONNECTED [7:5],\add_ln43_9_reg_1781_reg[14]_i_1_n_3 ,\add_ln43_9_reg_1781_reg[14]_i_1_n_4 ,\add_ln43_9_reg_1781_reg[14]_i_1_n_5 ,\add_ln43_9_reg_1781_reg[14]_i_1_n_6 ,\add_ln43_9_reg_1781_reg[14]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,off_1_reg_1699[12],off_1_reg_1699[13],1'b0,\add_ln43_9_reg_1781[14]_i_2_n_0 ,\add_ln43_9_reg_1781[14]_i_3_n_0 }),
        .O({\NLW_add_ln43_9_reg_1781_reg[14]_i_1_O_UNCONNECTED [7:6],add_ln43_9_fu_945_p2[14:9]}),
        .S({1'b0,1'b0,\add_ln43_9_reg_1781[14]_i_4_n_0 ,\add_ln43_9_reg_1781[14]_i_5_n_0 ,\add_ln43_9_reg_1781[14]_i_6_n_0 ,1'b1,\add_ln43_9_reg_1781[14]_i_7_n_0 ,\add_ln43_9_reg_1781[14]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \add_ln43_9_reg_1781_reg[14]_i_11 
       (.CI(\y_26_reg_1758_reg[7]_i_23_n_0 ),
        .CI_TOP(1'b0),
        .CO({\add_ln43_9_reg_1781_reg[14]_i_11_n_0 ,\add_ln43_9_reg_1781_reg[14]_i_11_n_1 ,\add_ln43_9_reg_1781_reg[14]_i_11_n_2 ,\add_ln43_9_reg_1781_reg[14]_i_11_n_3 ,\add_ln43_9_reg_1781_reg[14]_i_11_n_4 ,\add_ln43_9_reg_1781_reg[14]_i_11_n_5 ,\add_ln43_9_reg_1781_reg[14]_i_11_n_6 ,\add_ln43_9_reg_1781_reg[14]_i_11_n_7 }),
        .DI({\add_ln43_9_reg_1781[14]_i_21_n_0 ,\add_ln43_9_reg_1781[14]_i_22_n_0 ,\add_ln43_9_reg_1781[14]_i_23_n_0 ,\add_ln43_9_reg_1781[14]_i_24_n_0 ,\add_ln43_9_reg_1781[14]_i_25_n_0 ,\add_ln43_9_reg_1781[14]_i_26_n_0 ,\add_ln43_9_reg_1781[14]_i_27_n_0 ,\add_ln43_9_reg_1781[14]_i_28_n_0 }),
        .O({\add_ln43_9_reg_1781_reg[14]_i_11_n_8 ,\add_ln43_9_reg_1781_reg[14]_i_11_n_9 ,\add_ln43_9_reg_1781_reg[14]_i_11_n_10 ,\add_ln43_9_reg_1781_reg[14]_i_11_n_11 ,\add_ln43_9_reg_1781_reg[14]_i_11_n_12 ,\add_ln43_9_reg_1781_reg[14]_i_11_n_13 ,\add_ln43_9_reg_1781_reg[14]_i_11_n_14 ,\add_ln43_9_reg_1781_reg[14]_i_11_n_15 }),
        .S({\add_ln43_9_reg_1781[14]_i_29_n_0 ,\add_ln43_9_reg_1781[14]_i_30_n_0 ,\add_ln43_9_reg_1781[14]_i_31_n_0 ,\add_ln43_9_reg_1781[14]_i_32_n_0 ,\add_ln43_9_reg_1781[14]_i_33_n_0 ,\add_ln43_9_reg_1781[14]_i_34_n_0 ,\add_ln43_9_reg_1781[14]_i_35_n_0 ,\add_ln43_9_reg_1781[14]_i_36_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \add_ln43_9_reg_1781_reg[14]_i_9 
       (.CI(\add_ln43_9_reg_1781_reg[14]_i_11_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_add_ln43_9_reg_1781_reg[14]_i_9_CO_UNCONNECTED [7:4],\add_ln43_9_reg_1781_reg[14]_i_9_n_4 ,\add_ln43_9_reg_1781_reg[14]_i_9_n_5 ,\add_ln43_9_reg_1781_reg[14]_i_9_n_6 ,\add_ln43_9_reg_1781_reg[14]_i_9_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\add_ln43_9_reg_1781[14]_i_12_n_0 ,\add_ln43_9_reg_1781[14]_i_13_n_0 ,\add_ln43_9_reg_1781[14]_i_14_n_0 ,\add_ln43_9_reg_1781[14]_i_15_n_0 }),
        .O({\NLW_add_ln43_9_reg_1781_reg[14]_i_9_O_UNCONNECTED [7:5],\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ,\add_ln43_9_reg_1781_reg[14]_i_9_n_12 ,\add_ln43_9_reg_1781_reg[14]_i_9_n_13 ,\add_ln43_9_reg_1781_reg[14]_i_9_n_14 ,\add_ln43_9_reg_1781_reg[14]_i_9_n_15 }),
        .S({1'b0,1'b0,1'b0,\add_ln43_9_reg_1781[14]_i_16_n_0 ,\add_ln43_9_reg_1781[14]_i_17_n_0 ,\add_ln43_9_reg_1781[14]_i_18_n_0 ,\add_ln43_9_reg_1781[14]_i_19_n_0 ,\add_ln43_9_reg_1781[14]_i_20_n_0 }));
  FDRE \add_ln43_9_reg_1781_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_945_p2[1]),
        .Q(\add_ln43_9_reg_1781_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1781_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_945_p2[2]),
        .Q(\add_ln43_9_reg_1781_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1781_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_945_p2[3]),
        .Q(\add_ln43_9_reg_1781_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1781_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_945_p2[4]),
        .Q(\add_ln43_9_reg_1781_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1781_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_945_p2[5]),
        .Q(\add_ln43_9_reg_1781_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1781_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_945_p2[6]),
        .Q(\add_ln43_9_reg_1781_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1781_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_945_p2[7]),
        .Q(\add_ln43_9_reg_1781_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \add_ln43_9_reg_1781_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_945_p2[8]),
        .Q(\add_ln43_9_reg_1781_reg_n_0_[8] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \add_ln43_9_reg_1781_reg[8]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\add_ln43_9_reg_1781_reg[8]_i_1_n_0 ,\add_ln43_9_reg_1781_reg[8]_i_1_n_1 ,\add_ln43_9_reg_1781_reg[8]_i_1_n_2 ,\add_ln43_9_reg_1781_reg[8]_i_1_n_3 ,\add_ln43_9_reg_1781_reg[8]_i_1_n_4 ,\add_ln43_9_reg_1781_reg[8]_i_1_n_5 ,\add_ln43_9_reg_1781_reg[8]_i_1_n_6 ,\add_ln43_9_reg_1781_reg[8]_i_1_n_7 }),
        .DI({\add_ln43_9_reg_1781[8]_i_2_n_0 ,\add_ln43_9_reg_1781[8]_i_3_n_0 ,\add_ln43_9_reg_1781[8]_i_4_n_0 ,\add_ln43_9_reg_1781[8]_i_5_n_0 ,\add_ln43_9_reg_1781[8]_i_6_n_0 ,\add_ln43_9_reg_1781[8]_i_7_n_0 ,\add_ln43_9_reg_1781[8]_i_8_n_0 ,add_ln43_7_fu_930_p2}),
        .O(add_ln43_9_fu_945_p2[8:1]),
        .S({\add_ln43_9_reg_1781[8]_i_10_n_0 ,\add_ln43_9_reg_1781[8]_i_11_n_0 ,\add_ln43_9_reg_1781[8]_i_12_n_0 ,\add_ln43_9_reg_1781[8]_i_13_n_0 ,\add_ln43_9_reg_1781[8]_i_14_n_0 ,\add_ln43_9_reg_1781[8]_i_15_n_0 ,\add_ln43_9_reg_1781[8]_i_16_n_0 ,\add_ln43_9_reg_1781[8]_i_17_n_0 }));
  FDRE \add_ln43_9_reg_1781_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln43_9_fu_945_p2[9]),
        .Q(\add_ln43_9_reg_1781_reg_n_0_[9] ),
        .R(1'b0));
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
        .Q(ap_enable_reg_pp0_iter3),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter4_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter3),
        .Q(ap_done),
        .R(ap_rst));
  LUT5 #(
    .INIT(32'h00000001)) 
    ap_idle_INST_0
       (.I0(ap_start),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(ap_enable_reg_pp0_iter3),
        .I3(ap_done),
        .I4(ap_enable_reg_pp0_iter1),
        .O(ap_idle));
  bd_0_hls_inst_0_cordic_vectoring_mul_20ns_14ns_32_1_1 mul_20ns_14ns_32_1_1_U1
       (.Q(x_38_reg_1801),
        .ap_clk(ap_clk),
        .mag_out(mag_out),
        .tmp_14_reg_1823(tmp_14_reg_1823),
        .xs_12_reg_1813(xs_12_reg_1813),
        .y_38_reg_1807(y_38_reg_1807));
  LUT2 #(
    .INIT(4'h1)) 
    \off_1_reg_1699[12]_i_1 
       (.I0(\off_1_reg_1699[12]_i_2_n_0 ),
        .I1(y_in[15]),
        .O(off_1_fu_292_p3[12]));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \off_1_reg_1699[12]_i_2 
       (.I0(y_in[14]),
        .I1(y_in[13]),
        .I2(y_in[12]),
        .I3(y_in[11]),
        .I4(\off_1_reg_1699[13]_i_3_n_0 ),
        .I5(x_in[15]),
        .O(\off_1_reg_1699[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \off_1_reg_1699[13]_i_1 
       (.I0(y_in[15]),
        .I1(\off_1_reg_1699[13]_i_2_n_0 ),
        .I2(x_in[15]),
        .O(off_1_fu_292_p3[13]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \off_1_reg_1699[13]_i_2 
       (.I0(\off_1_reg_1699[13]_i_3_n_0 ),
        .I1(y_in[11]),
        .I2(y_in[12]),
        .I3(y_in[13]),
        .I4(y_in[14]),
        .O(\off_1_reg_1699[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \off_1_reg_1699[13]_i_3 
       (.I0(\off_1_reg_1699[13]_i_4_n_0 ),
        .I1(y_in[6]),
        .I2(y_in[7]),
        .I3(y_in[8]),
        .I4(y_in[9]),
        .I5(y_in[10]),
        .O(\off_1_reg_1699[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \off_1_reg_1699[13]_i_4 
       (.I0(y_in[5]),
        .I1(y_in[4]),
        .I2(y_in[3]),
        .I3(y_in[2]),
        .I4(y_in[1]),
        .I5(y_in[0]),
        .O(\off_1_reg_1699[13]_i_4_n_0 ));
  FDRE \off_1_reg_1699_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(off_1_fu_292_p3[12]),
        .Q(off_1_reg_1699[12]),
        .R(1'b0));
  FDRE \off_1_reg_1699_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(off_1_fu_292_p3[13]),
        .Q(off_1_reg_1699[13]),
        .R(1'b0));
  FDRE \off_1_reg_1699_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_in[15]),
        .Q(off_1_reg_1699[8]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_10_reg_1774[0]_i_2 
       (.I0(x_23_fu_802_p3[20]),
        .O(\tmp_10_reg_1774[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_10_reg_1774[0]_i_3 
       (.I0(y_23_fu_810_p3__0[19]),
        .I1(x_23_fu_802_p3[20]),
        .I2(y_23_fu_810_p3),
        .O(\tmp_10_reg_1774[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_10_reg_1774[0]_i_4 
       (.I0(y_23_fu_810_p3__0[18]),
        .I1(x_23_fu_802_p3[20]),
        .I2(y_23_fu_810_p3),
        .O(\tmp_10_reg_1774[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_10_reg_1774[0]_i_5 
       (.I0(y_23_fu_810_p3__0[17]),
        .I1(x_23_fu_802_p3[20]),
        .I2(y_23_fu_810_p3),
        .O(\tmp_10_reg_1774[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_10_reg_1774[0]_i_6 
       (.I0(y_23_fu_810_p3__0[16]),
        .I1(x_23_fu_802_p3[20]),
        .I2(y_23_fu_810_p3),
        .O(\tmp_10_reg_1774[0]_i_6_n_0 ));
  FDRE \tmp_10_reg_1774_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_10_reg_1774),
        .Q(tmp_10_reg_1774_pp0_iter2_reg),
        .R(1'b0));
  FDRE \tmp_10_reg_1774_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_894_p3[20]),
        .Q(tmp_10_reg_1774),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_10_reg_1774_reg[0]_i_1 
       (.CI(\y_26_reg_1758_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_10_reg_1774_reg[0]_i_1_CO_UNCONNECTED [7:4],\tmp_10_reg_1774_reg[0]_i_1_n_4 ,\tmp_10_reg_1774_reg[0]_i_1_n_5 ,\tmp_10_reg_1774_reg[0]_i_1_n_6 ,\tmp_10_reg_1774_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,y_23_fu_810_p3__0[19:16]}),
        .O({\NLW_tmp_10_reg_1774_reg[0]_i_1_O_UNCONNECTED [7:5],y_26_fu_894_p3[20:16]}),
        .S({1'b0,1'b0,1'b0,\tmp_10_reg_1774[0]_i_2_n_0 ,\tmp_10_reg_1774[0]_i_3_n_0 ,\tmp_10_reg_1774[0]_i_4_n_0 ,\tmp_10_reg_1774[0]_i_5_n_0 ,\tmp_10_reg_1774[0]_i_6_n_0 }));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_11_reg_1786[0]_i_10 
       (.I0(y_26_reg_1758[14]),
        .I1(xs_8_reg_1764[12]),
        .I2(tmp_10_reg_1774),
        .O(\tmp_11_reg_1786[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_11_reg_1786[0]_i_11 
       (.I0(y_26_reg_1758[13]),
        .I1(xs_8_reg_1764[12]),
        .I2(tmp_10_reg_1774),
        .O(\tmp_11_reg_1786[0]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_11_reg_1786[0]_i_12 
       (.I0(y_26_reg_1758[12]),
        .I1(xs_8_reg_1764[12]),
        .I2(tmp_10_reg_1774),
        .O(\tmp_11_reg_1786[0]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_11_reg_1786[0]_i_13 
       (.I0(y_26_reg_1758[11]),
        .I1(xs_8_reg_1764[11]),
        .I2(tmp_10_reg_1774),
        .O(\tmp_11_reg_1786[0]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_11_reg_1786[0]_i_14 
       (.I0(y_26_reg_1758[10]),
        .I1(xs_8_reg_1764[10]),
        .I2(tmp_10_reg_1774),
        .O(\tmp_11_reg_1786[0]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_11_reg_1786[0]_i_15 
       (.I0(y_26_reg_1758[9]),
        .I1(xs_8_reg_1764[9]),
        .I2(tmp_10_reg_1774),
        .O(\tmp_11_reg_1786[0]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_11_reg_1786[0]_i_16 
       (.I0(y_26_reg_1758[8]),
        .I1(xs_8_reg_1764[8]),
        .I2(tmp_10_reg_1774),
        .O(\tmp_11_reg_1786[0]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_11_reg_1786[0]_i_17 
       (.I0(tmp_10_reg_1774),
        .O(\tmp_11_reg_1786[0]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_11_reg_1786[0]_i_18 
       (.I0(y_26_reg_1758[7]),
        .I1(xs_8_reg_1764[7]),
        .I2(tmp_10_reg_1774),
        .O(\tmp_11_reg_1786[0]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_11_reg_1786[0]_i_19 
       (.I0(y_26_reg_1758[6]),
        .I1(xs_8_reg_1764[6]),
        .I2(tmp_10_reg_1774),
        .O(\tmp_11_reg_1786[0]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_11_reg_1786[0]_i_20 
       (.I0(y_26_reg_1758[5]),
        .I1(xs_8_reg_1764[5]),
        .I2(tmp_10_reg_1774),
        .O(\tmp_11_reg_1786[0]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_11_reg_1786[0]_i_21 
       (.I0(y_26_reg_1758[4]),
        .I1(xs_8_reg_1764[4]),
        .I2(tmp_10_reg_1774),
        .O(\tmp_11_reg_1786[0]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_11_reg_1786[0]_i_22 
       (.I0(y_26_reg_1758[3]),
        .I1(xs_8_reg_1764[3]),
        .I2(tmp_10_reg_1774),
        .O(\tmp_11_reg_1786[0]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_11_reg_1786[0]_i_23 
       (.I0(y_26_reg_1758[2]),
        .I1(xs_8_reg_1764[2]),
        .I2(tmp_10_reg_1774),
        .O(\tmp_11_reg_1786[0]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_11_reg_1786[0]_i_24 
       (.I0(y_26_reg_1758[1]),
        .I1(xs_8_reg_1764[1]),
        .I2(tmp_10_reg_1774),
        .O(\tmp_11_reg_1786[0]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_11_reg_1786[0]_i_25 
       (.I0(y_26_reg_1758[0]),
        .I1(xs_8_reg_1764[0]),
        .I2(tmp_10_reg_1774),
        .O(\tmp_11_reg_1786[0]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_11_reg_1786[0]_i_3 
       (.I0(xs_8_reg_1764[12]),
        .O(\tmp_11_reg_1786[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_11_reg_1786[0]_i_4 
       (.I0(y_26_reg_1758[19]),
        .I1(xs_8_reg_1764[12]),
        .I2(tmp_10_reg_1774),
        .O(\tmp_11_reg_1786[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_11_reg_1786[0]_i_5 
       (.I0(y_26_reg_1758[18]),
        .I1(xs_8_reg_1764[12]),
        .I2(tmp_10_reg_1774),
        .O(\tmp_11_reg_1786[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_11_reg_1786[0]_i_6 
       (.I0(y_26_reg_1758[17]),
        .I1(xs_8_reg_1764[12]),
        .I2(tmp_10_reg_1774),
        .O(\tmp_11_reg_1786[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_11_reg_1786[0]_i_7 
       (.I0(y_26_reg_1758[16]),
        .I1(xs_8_reg_1764[12]),
        .I2(tmp_10_reg_1774),
        .O(\tmp_11_reg_1786[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_11_reg_1786[0]_i_9 
       (.I0(y_26_reg_1758[15]),
        .I1(xs_8_reg_1764[12]),
        .I2(tmp_10_reg_1774),
        .O(\tmp_11_reg_1786[0]_i_9_n_0 ));
  FDRE \tmp_11_reg_1786_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_29_fu_984_p3),
        .Q(tmp_11_reg_1786),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_11_reg_1786_reg[0]_i_1 
       (.CI(\tmp_11_reg_1786_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_11_reg_1786_reg[0]_i_1_CO_UNCONNECTED [7:4],\tmp_11_reg_1786_reg[0]_i_1_n_4 ,\tmp_11_reg_1786_reg[0]_i_1_n_5 ,\tmp_11_reg_1786_reg[0]_i_1_n_6 ,\tmp_11_reg_1786_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,y_26_reg_1758[19:16]}),
        .O({\NLW_tmp_11_reg_1786_reg[0]_i_1_O_UNCONNECTED [7:5],y_29_fu_984_p3,y_29_fu_984_p3__0[19:16]}),
        .S({1'b0,1'b0,1'b0,\tmp_11_reg_1786[0]_i_3_n_0 ,\tmp_11_reg_1786[0]_i_4_n_0 ,\tmp_11_reg_1786[0]_i_5_n_0 ,\tmp_11_reg_1786[0]_i_6_n_0 ,\tmp_11_reg_1786[0]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_11_reg_1786_reg[0]_i_2 
       (.CI(\tmp_11_reg_1786_reg[0]_i_8_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tmp_11_reg_1786_reg[0]_i_2_n_0 ,\tmp_11_reg_1786_reg[0]_i_2_n_1 ,\tmp_11_reg_1786_reg[0]_i_2_n_2 ,\tmp_11_reg_1786_reg[0]_i_2_n_3 ,\tmp_11_reg_1786_reg[0]_i_2_n_4 ,\tmp_11_reg_1786_reg[0]_i_2_n_5 ,\tmp_11_reg_1786_reg[0]_i_2_n_6 ,\tmp_11_reg_1786_reg[0]_i_2_n_7 }),
        .DI(y_26_reg_1758[15:8]),
        .O(y_29_fu_984_p3__0[15:8]),
        .S({\tmp_11_reg_1786[0]_i_9_n_0 ,\tmp_11_reg_1786[0]_i_10_n_0 ,\tmp_11_reg_1786[0]_i_11_n_0 ,\tmp_11_reg_1786[0]_i_12_n_0 ,\tmp_11_reg_1786[0]_i_13_n_0 ,\tmp_11_reg_1786[0]_i_14_n_0 ,\tmp_11_reg_1786[0]_i_15_n_0 ,\tmp_11_reg_1786[0]_i_16_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_11_reg_1786_reg[0]_i_8 
       (.CI(\tmp_11_reg_1786[0]_i_17_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tmp_11_reg_1786_reg[0]_i_8_n_0 ,\tmp_11_reg_1786_reg[0]_i_8_n_1 ,\tmp_11_reg_1786_reg[0]_i_8_n_2 ,\tmp_11_reg_1786_reg[0]_i_8_n_3 ,\tmp_11_reg_1786_reg[0]_i_8_n_4 ,\tmp_11_reg_1786_reg[0]_i_8_n_5 ,\tmp_11_reg_1786_reg[0]_i_8_n_6 ,\tmp_11_reg_1786_reg[0]_i_8_n_7 }),
        .DI(y_26_reg_1758[7:0]),
        .O(y_29_fu_984_p3__0[7:0]),
        .S({\tmp_11_reg_1786[0]_i_18_n_0 ,\tmp_11_reg_1786[0]_i_19_n_0 ,\tmp_11_reg_1786[0]_i_20_n_0 ,\tmp_11_reg_1786[0]_i_21_n_0 ,\tmp_11_reg_1786[0]_i_22_n_0 ,\tmp_11_reg_1786[0]_i_23_n_0 ,\tmp_11_reg_1786[0]_i_24_n_0 ,\tmp_11_reg_1786[0]_i_25_n_0 }));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_12_reg_1791[0]_i_10 
       (.I0(y_29_fu_984_p3__0[13]),
        .I1(x_29_fu_977_p3[20]),
        .I2(y_29_fu_984_p3),
        .O(\tmp_12_reg_1791[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_12_reg_1791[0]_i_11 
       (.I0(y_29_fu_984_p3__0[12]),
        .I1(x_29_fu_977_p3[20]),
        .I2(y_29_fu_984_p3),
        .O(\tmp_12_reg_1791[0]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_12_reg_1791[0]_i_12 
       (.I0(y_29_fu_984_p3__0[11]),
        .I1(x_29_fu_977_p3[20]),
        .I2(y_29_fu_984_p3),
        .O(\tmp_12_reg_1791[0]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_12_reg_1791[0]_i_13 
       (.I0(y_29_fu_984_p3__0[10]),
        .I1(x_29_fu_977_p3[19]),
        .I2(y_29_fu_984_p3),
        .O(\tmp_12_reg_1791[0]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_12_reg_1791[0]_i_14 
       (.I0(y_29_fu_984_p3__0[9]),
        .I1(x_29_fu_977_p3[18]),
        .I2(y_29_fu_984_p3),
        .O(\tmp_12_reg_1791[0]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_12_reg_1791[0]_i_15 
       (.I0(y_29_fu_984_p3__0[8]),
        .I1(x_29_fu_977_p3[17]),
        .I2(y_29_fu_984_p3),
        .O(\tmp_12_reg_1791[0]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_12_reg_1791[0]_i_3 
       (.I0(x_29_fu_977_p3[20]),
        .O(\tmp_12_reg_1791[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_12_reg_1791[0]_i_4 
       (.I0(y_29_fu_984_p3__0[19]),
        .I1(x_29_fu_977_p3[20]),
        .I2(y_29_fu_984_p3),
        .O(\tmp_12_reg_1791[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_12_reg_1791[0]_i_5 
       (.I0(y_29_fu_984_p3__0[18]),
        .I1(x_29_fu_977_p3[20]),
        .I2(y_29_fu_984_p3),
        .O(\tmp_12_reg_1791[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_12_reg_1791[0]_i_6 
       (.I0(y_29_fu_984_p3__0[17]),
        .I1(x_29_fu_977_p3[20]),
        .I2(y_29_fu_984_p3),
        .O(\tmp_12_reg_1791[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_12_reg_1791[0]_i_7 
       (.I0(y_29_fu_984_p3__0[16]),
        .I1(x_29_fu_977_p3[20]),
        .I2(y_29_fu_984_p3),
        .O(\tmp_12_reg_1791[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_12_reg_1791[0]_i_8 
       (.I0(y_29_fu_984_p3__0[15]),
        .I1(x_29_fu_977_p3[20]),
        .I2(y_29_fu_984_p3),
        .O(\tmp_12_reg_1791[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_12_reg_1791[0]_i_9 
       (.I0(y_29_fu_984_p3__0[14]),
        .I1(x_29_fu_977_p3[20]),
        .I2(y_29_fu_984_p3),
        .O(\tmp_12_reg_1791[0]_i_9_n_0 ));
  FDRE \tmp_12_reg_1791_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_32_fu_1059_p3),
        .Q(tmp_12_reg_1791),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_12_reg_1791_reg[0]_i_1 
       (.CI(\tmp_12_reg_1791_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_12_reg_1791_reg[0]_i_1_CO_UNCONNECTED [7:4],\tmp_12_reg_1791_reg[0]_i_1_n_4 ,\tmp_12_reg_1791_reg[0]_i_1_n_5 ,\tmp_12_reg_1791_reg[0]_i_1_n_6 ,\tmp_12_reg_1791_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,y_29_fu_984_p3__0[19:16]}),
        .O({\NLW_tmp_12_reg_1791_reg[0]_i_1_O_UNCONNECTED [7:5],y_32_fu_1059_p3,y_32_fu_1059_p3__0[19:16]}),
        .S({1'b0,1'b0,1'b0,\tmp_12_reg_1791[0]_i_3_n_0 ,\tmp_12_reg_1791[0]_i_4_n_0 ,\tmp_12_reg_1791[0]_i_5_n_0 ,\tmp_12_reg_1791[0]_i_6_n_0 ,\tmp_12_reg_1791[0]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_12_reg_1791_reg[0]_i_16 
       (.CI(\x_38_reg_1801_reg[11]_i_7_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_12_reg_1791_reg[0]_i_16_CO_UNCONNECTED [7:4],\tmp_12_reg_1791_reg[0]_i_16_n_4 ,\tmp_12_reg_1791_reg[0]_i_16_n_5 ,\tmp_12_reg_1791_reg[0]_i_16_n_6 ,\tmp_12_reg_1791_reg[0]_i_16_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,xs_8_reg_1764[11:8]}),
        .O({\NLW_tmp_12_reg_1791_reg[0]_i_16_O_UNCONNECTED [7:5],x_29_fu_977_p3[20:16]}),
        .S({1'b0,1'b0,1'b0,xs_8_reg_1764[12:8]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_12_reg_1791_reg[0]_i_2 
       (.CI(\y_38_reg_1807_reg[7]_i_13_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tmp_12_reg_1791_reg[0]_i_2_n_0 ,\tmp_12_reg_1791_reg[0]_i_2_n_1 ,\tmp_12_reg_1791_reg[0]_i_2_n_2 ,\tmp_12_reg_1791_reg[0]_i_2_n_3 ,\tmp_12_reg_1791_reg[0]_i_2_n_4 ,\tmp_12_reg_1791_reg[0]_i_2_n_5 ,\tmp_12_reg_1791_reg[0]_i_2_n_6 ,\tmp_12_reg_1791_reg[0]_i_2_n_7 }),
        .DI(y_29_fu_984_p3__0[15:8]),
        .O(y_32_fu_1059_p3__0[15:8]),
        .S({\tmp_12_reg_1791[0]_i_8_n_0 ,\tmp_12_reg_1791[0]_i_9_n_0 ,\tmp_12_reg_1791[0]_i_10_n_0 ,\tmp_12_reg_1791[0]_i_11_n_0 ,\tmp_12_reg_1791[0]_i_12_n_0 ,\tmp_12_reg_1791[0]_i_13_n_0 ,\tmp_12_reg_1791[0]_i_14_n_0 ,\tmp_12_reg_1791[0]_i_15_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_13_reg_1796[0]_i_2 
       (.I0(x_32_fu_1051_p3[20]),
        .O(\tmp_13_reg_1796[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_13_reg_1796[0]_i_3 
       (.I0(y_32_fu_1059_p3__0[19]),
        .I1(x_32_fu_1051_p3[20]),
        .I2(y_32_fu_1059_p3),
        .O(\tmp_13_reg_1796[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_13_reg_1796[0]_i_4 
       (.I0(y_32_fu_1059_p3__0[18]),
        .I1(x_32_fu_1051_p3[20]),
        .I2(y_32_fu_1059_p3),
        .O(\tmp_13_reg_1796[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_13_reg_1796[0]_i_5 
       (.I0(y_32_fu_1059_p3__0[17]),
        .I1(x_32_fu_1051_p3[20]),
        .I2(y_32_fu_1059_p3),
        .O(\tmp_13_reg_1796[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_13_reg_1796[0]_i_6 
       (.I0(y_32_fu_1059_p3__0[16]),
        .I1(x_32_fu_1051_p3[20]),
        .I2(y_32_fu_1059_p3),
        .O(\tmp_13_reg_1796[0]_i_6_n_0 ));
  FDRE \tmp_13_reg_1796_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_35_fu_1135_p3),
        .Q(tmp_13_reg_1796),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_13_reg_1796_reg[0]_i_1 
       (.CI(\y_38_reg_1807_reg[11]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_13_reg_1796_reg[0]_i_1_CO_UNCONNECTED [7:4],\tmp_13_reg_1796_reg[0]_i_1_n_4 ,\tmp_13_reg_1796_reg[0]_i_1_n_5 ,\tmp_13_reg_1796_reg[0]_i_1_n_6 ,\tmp_13_reg_1796_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,y_32_fu_1059_p3__0[19:16]}),
        .O({\NLW_tmp_13_reg_1796_reg[0]_i_1_O_UNCONNECTED [7:5],y_35_fu_1135_p3,y_35_fu_1135_p3__0[19:16]}),
        .S({1'b0,1'b0,1'b0,\tmp_13_reg_1796[0]_i_2_n_0 ,\tmp_13_reg_1796[0]_i_3_n_0 ,\tmp_13_reg_1796[0]_i_4_n_0 ,\tmp_13_reg_1796[0]_i_5_n_0 ,\tmp_13_reg_1796[0]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_13_reg_1796_reg[0]_i_7 
       (.CI(\x_38_reg_1801_reg[11]_i_4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_13_reg_1796_reg[0]_i_7_CO_UNCONNECTED [7:4],\tmp_13_reg_1796_reg[0]_i_7_n_4 ,\tmp_13_reg_1796_reg[0]_i_7_n_5 ,\tmp_13_reg_1796_reg[0]_i_7_n_6 ,\tmp_13_reg_1796_reg[0]_i_7_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,x_29_fu_977_p3[19:16]}),
        .O({\NLW_tmp_13_reg_1796_reg[0]_i_7_O_UNCONNECTED [7:5],x_32_fu_1051_p3[20:16]}),
        .S({1'b0,1'b0,1'b0,x_29_fu_977_p3[20:16]}));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_14_reg_1823[0]_i_2 
       (.I0(x_35_fu_1127_p3[20]),
        .O(\tmp_14_reg_1823[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_14_reg_1823[0]_i_3 
       (.I0(y_35_fu_1135_p3__0[19]),
        .I1(x_35_fu_1127_p3[20]),
        .I2(y_35_fu_1135_p3),
        .O(\tmp_14_reg_1823[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_14_reg_1823[0]_i_4 
       (.I0(y_35_fu_1135_p3__0[18]),
        .I1(x_35_fu_1127_p3[20]),
        .I2(y_35_fu_1135_p3),
        .O(\tmp_14_reg_1823[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_14_reg_1823[0]_i_5 
       (.I0(y_35_fu_1135_p3__0[17]),
        .I1(x_35_fu_1127_p3[20]),
        .I2(y_35_fu_1135_p3),
        .O(\tmp_14_reg_1823[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_14_reg_1823[0]_i_6 
       (.I0(y_35_fu_1135_p3__0[16]),
        .I1(x_35_fu_1127_p3[20]),
        .I2(y_35_fu_1135_p3),
        .O(\tmp_14_reg_1823[0]_i_6_n_0 ));
  FDRE \tmp_14_reg_1823_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_38_fu_1211_p3[20]),
        .Q(tmp_14_reg_1823),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_14_reg_1823_reg[0]_i_1 
       (.CI(\y_38_reg_1807_reg[11]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_14_reg_1823_reg[0]_i_1_CO_UNCONNECTED [7:4],\tmp_14_reg_1823_reg[0]_i_1_n_4 ,\tmp_14_reg_1823_reg[0]_i_1_n_5 ,\tmp_14_reg_1823_reg[0]_i_1_n_6 ,\tmp_14_reg_1823_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,y_35_fu_1135_p3__0[19:16]}),
        .O({\NLW_tmp_14_reg_1823_reg[0]_i_1_O_UNCONNECTED [7:5],y_38_fu_1211_p3[20:16]}),
        .S({1'b0,1'b0,1'b0,\tmp_14_reg_1823[0]_i_2_n_0 ,\tmp_14_reg_1823[0]_i_3_n_0 ,\tmp_14_reg_1823[0]_i_4_n_0 ,\tmp_14_reg_1823[0]_i_5_n_0 ,\tmp_14_reg_1823[0]_i_6_n_0 }));
  (* srl_bus_name = "inst/\\tmp_2_reg_1704_pp0_iter1_reg_reg " *) 
  (* srl_name = "inst/\\tmp_2_reg_1704_pp0_iter1_reg_reg[0]_srl2 " *) 
  SRL16E \tmp_2_reg_1704_pp0_iter1_reg_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(p_0_in),
        .Q(\tmp_2_reg_1704_pp0_iter1_reg_reg[0]_srl2_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \tmp_2_reg_1704_pp0_iter1_reg_reg[0]_srl2_i_1 
       (.I0(x_in[15]),
        .I1(y_in[15]),
        .I2(\off_1_reg_1699[12]_i_2_n_0 ),
        .O(p_0_in));
  FDRE \tmp_2_reg_1704_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_2_reg_1704_pp0_iter1_reg_reg[0]_srl2_n_0 ),
        .Q(tmp_2_reg_1704_pp0_iter2_reg),
        .R(1'b0));
  (* srl_bus_name = "inst/\\tmp_3_reg_1710_pp0_iter1_reg_reg " *) 
  (* srl_name = "inst/\\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2 " *) 
  SRL16E \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(B0),
        .Q(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_1 
       (.I0(add_ln30_fu_314_p2[19]),
        .I1(p_0_in),
        .I2(y_4_fu_326_p2[19]),
        .O(B0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_10 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_10_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_10_n_1 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_10_n_2 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_10_n_3 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_10_n_4 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_10_n_5 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_10_n_6 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_10_n_7 }),
        .DI({\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_44_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_45_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_46_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_47_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_48_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_49_n_0 ,y_in[0],1'b0}),
        .O({add_ln30_fu_314_p2[9:3],\NLW_tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_10_O_UNCONNECTED [0]}),
        .S({\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_50_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_51_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_52_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_53_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_54_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_55_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_56_n_0 ,1'b0}));
  LUT6 #(
    .INIT(64'h55575555AAA8AAAA)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_11 
       (.I0(x_in[15]),
        .I1(y_in[13]),
        .I2(y_in[12]),
        .I3(y_in[11]),
        .I4(\off_1_reg_1699[13]_i_3_n_0 ),
        .I5(y_in[14]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h555DAAA2)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_12 
       (.I0(x_in[15]),
        .I1(\off_1_reg_1699[13]_i_3_n_0 ),
        .I2(y_in[11]),
        .I3(y_in[12]),
        .I4(y_in[13]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h758A)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_13 
       (.I0(x_in[15]),
        .I1(y_in[11]),
        .I2(\off_1_reg_1699[13]_i_3_n_0 ),
        .I3(y_in[12]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_14 
       (.I0(x_in[15]),
        .I1(\off_1_reg_1699[13]_i_3_n_0 ),
        .I2(y_in[11]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_15 
       (.I0(x_in[15]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_57_n_0 ),
        .I2(y_in[10]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h55555557AAAAAAA8)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_16 
       (.I0(x_in[15]),
        .I1(\off_1_reg_1699[13]_i_4_n_0 ),
        .I2(y_in[6]),
        .I3(y_in[7]),
        .I4(y_in[8]),
        .I5(y_in[9]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h5557AAA8)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_17 
       (.I0(x_in[15]),
        .I1(y_in[7]),
        .I2(y_in[6]),
        .I3(\off_1_reg_1699[13]_i_4_n_0 ),
        .I4(y_in[8]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h57A8)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_18 
       (.I0(x_in[15]),
        .I1(\off_1_reg_1699[13]_i_4_n_0 ),
        .I2(y_in[6]),
        .I3(y_in[7]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_19 
       (.I0(sext_ln10_1_fu_276_p1[17]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_11_n_0 ),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_19_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_2 
       (.CI(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_2_CO_UNCONNECTED [7:1],\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_5_n_0 }),
        .O({\NLW_tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_2_O_UNCONNECTED [7:2],add_ln30_fu_314_p2[19:18]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_6_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_7_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_20 
       (.I0(sext_ln10_1_fu_276_p1[16]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_12_n_0 ),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_21 
       (.I0(sext_ln10_1_fu_276_p1[15]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_13_n_0 ),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_22 
       (.I0(sext_ln10_1_fu_276_p1[14]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_62_n_0 ),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_23 
       (.I0(sext_ln10_1_fu_276_p1[13]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_64_n_0 ),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_24 
       (.I0(sext_ln10_1_fu_276_p1[12]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_16_n_0 ),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_25 
       (.I0(sext_ln10_1_fu_276_p1[11]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_17_n_0 ),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_26 
       (.I0(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_18_n_0 ),
        .I1(sext_ln10_1_fu_276_p1[10]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_27 
       (.I0(x_in[14]),
        .I1(x_in[15]),
        .I2(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_68_n_0 ),
        .I3(x_in[11]),
        .I4(x_in[12]),
        .I5(x_in[13]),
        .O(sext_ln10_1_fu_276_p1[18]));
  LUT2 #(
    .INIT(4'h2)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_28 
       (.I0(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_11_n_0 ),
        .I1(sext_ln10_1_fu_276_p1[17]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_29 
       (.I0(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_12_n_0 ),
        .I1(sext_ln10_1_fu_276_p1[16]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_29_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_3 
       (.CI(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_8_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_3_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_3_O_UNCONNECTED [7:1],y_4_fu_326_p2[19]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h2)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_30 
       (.I0(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_13_n_0 ),
        .I1(sext_ln10_1_fu_276_p1[15]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_31 
       (.I0(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_62_n_0 ),
        .I1(sext_ln10_1_fu_276_p1[14]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_32 
       (.I0(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_64_n_0 ),
        .I1(sext_ln10_1_fu_276_p1[13]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_33 
       (.I0(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_16_n_0 ),
        .I1(sext_ln10_1_fu_276_p1[12]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_34 
       (.I0(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_17_n_0 ),
        .I1(sext_ln10_1_fu_276_p1[11]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_35 
       (.I0(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_18_n_0 ),
        .I1(sext_ln10_1_fu_276_p1[10]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h96996966)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_36 
       (.I0(\off_1_reg_1699[12]_i_2_n_0 ),
        .I1(y_in[15]),
        .I2(sext_ln10_1_fu_276_p1[17]),
        .I3(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_11_n_0 ),
        .I4(sext_ln10_1_fu_276_p1[18]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_36_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_37 
       (.I0(sext_ln10_1_fu_276_p1[16]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_12_n_0 ),
        .I2(sext_ln10_1_fu_276_p1[17]),
        .I3(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_11_n_0 ),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_37_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_38 
       (.I0(sext_ln10_1_fu_276_p1[15]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_13_n_0 ),
        .I2(sext_ln10_1_fu_276_p1[16]),
        .I3(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_12_n_0 ),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h69CC396C9633C693)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_39 
       (.I0(sext_ln10_1_fu_276_p1[14]),
        .I1(sext_ln10_1_fu_276_p1[15]),
        .I2(x_in[15]),
        .I3(y_in[11]),
        .I4(\off_1_reg_1699[13]_i_3_n_0 ),
        .I5(y_in[12]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_39_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_4 
       (.CI(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_10_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_4_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_4_n_1 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_4_n_2 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_4_n_3 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_4_n_4 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_4_n_5 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_4_n_6 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_4_n_7 }),
        .DI({\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_11_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_12_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_13_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_14_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_15_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_16_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_17_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_18_n_0 }),
        .O(add_ln30_fu_314_p2[17:10]),
        .S({\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_19_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_20_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_21_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_22_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_23_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_24_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_25_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_26_n_0 }));
  LUT6 #(
    .INIT(64'h39696CCCC6969333)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_40 
       (.I0(sext_ln10_1_fu_276_p1[13]),
        .I1(sext_ln10_1_fu_276_p1[14]),
        .I2(x_in[15]),
        .I3(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_57_n_0 ),
        .I4(y_in[10]),
        .I5(y_in[11]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h69CC396C9633C693)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_41 
       (.I0(sext_ln10_1_fu_276_p1[12]),
        .I1(sext_ln10_1_fu_276_p1[13]),
        .I2(x_in[15]),
        .I3(y_in[9]),
        .I4(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_69_n_0 ),
        .I5(y_in[10]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_41_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_42 
       (.I0(sext_ln10_1_fu_276_p1[11]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_17_n_0 ),
        .I2(sext_ln10_1_fu_276_p1[12]),
        .I3(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_16_n_0 ),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_42_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_43 
       (.I0(sext_ln10_1_fu_276_p1[10]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_18_n_0 ),
        .I2(sext_ln10_1_fu_276_p1[11]),
        .I3(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_17_n_0 ),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_43_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_44 
       (.I0(x_in[15]),
        .I1(\off_1_reg_1699[13]_i_4_n_0 ),
        .I2(y_in[6]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_44_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_45 
       (.I0(x_in[15]),
        .I1(\tmp_5_reg_1720[0]_i_46_n_0 ),
        .I2(y_in[5]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h55555557AAAAAAA8)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_46 
       (.I0(x_in[15]),
        .I1(y_in[3]),
        .I2(y_in[2]),
        .I3(y_in[1]),
        .I4(y_in[0]),
        .I5(y_in[4]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h5557AAA8)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_47 
       (.I0(x_in[15]),
        .I1(y_in[0]),
        .I2(y_in[1]),
        .I3(y_in[2]),
        .I4(y_in[3]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h57A8)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_48 
       (.I0(x_in[15]),
        .I1(y_in[1]),
        .I2(y_in[0]),
        .I3(y_in[2]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_48_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_49 
       (.I0(y_in[0]),
        .I1(x_in[15]),
        .I2(y_in[1]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_49_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_5 
       (.I0(\off_1_reg_1699[12]_i_2_n_0 ),
        .I1(y_in[15]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_50 
       (.I0(sext_ln10_1_fu_276_p1[9]),
        .I1(\y_13_reg_1742[20]_i_57_n_0 ),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_50_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_51 
       (.I0(sext_ln10_1_fu_276_p1[8]),
        .I1(\y_13_reg_1742[20]_i_59_n_0 ),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_51_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_52 
       (.I0(sext_ln10_1_fu_276_p1[7]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_46_n_0 ),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h999999956666666A)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_53 
       (.I0(sext_ln10_1_fu_276_p1[6]),
        .I1(x_in[15]),
        .I2(y_in[0]),
        .I3(y_in[1]),
        .I4(y_in[2]),
        .I5(y_in[3]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_53_n_0 ));
  LUT5 #(
    .INIT(32'h9995666A)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_54 
       (.I0(sext_ln10_1_fu_276_p1[5]),
        .I1(x_in[15]),
        .I2(y_in[1]),
        .I3(y_in[0]),
        .I4(y_in[2]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_54_n_0 ));
  LUT5 #(
    .INIT(32'h4B87B478)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_55 
       (.I0(x_in[0]),
        .I1(x_in[15]),
        .I2(x_in[1]),
        .I3(y_in[0]),
        .I4(y_in[1]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_55_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_56 
       (.I0(y_in[0]),
        .I1(x_in[0]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_56_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_57 
       (.I0(y_in[9]),
        .I1(y_in[8]),
        .I2(y_in[7]),
        .I3(y_in[6]),
        .I4(\off_1_reg_1699[13]_i_4_n_0 ),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h55575555AAA8AAAA)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_58 
       (.I0(x_in[15]),
        .I1(x_in[13]),
        .I2(x_in[12]),
        .I3(x_in[11]),
        .I4(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_68_n_0 ),
        .I5(x_in[14]),
        .O(sext_ln10_1_fu_276_p1[17]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h555DAAA2)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_59 
       (.I0(x_in[15]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_68_n_0 ),
        .I2(x_in[11]),
        .I3(x_in[12]),
        .I4(x_in[13]),
        .O(sext_ln10_1_fu_276_p1[16]));
  LUT3 #(
    .INIT(8'h47)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_6 
       (.I0(x_in[15]),
        .I1(y_in[15]),
        .I2(\off_1_reg_1699[12]_i_2_n_0 ),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h758A)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_60 
       (.I0(x_in[15]),
        .I1(x_in[11]),
        .I2(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_68_n_0 ),
        .I3(x_in[12]),
        .O(sext_ln10_1_fu_276_p1[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_61 
       (.I0(x_in[15]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_68_n_0 ),
        .I2(x_in[11]),
        .O(sext_ln10_1_fu_276_p1[14]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_62 
       (.I0(x_in[15]),
        .I1(\off_1_reg_1699[13]_i_3_n_0 ),
        .I2(y_in[11]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_63 
       (.I0(x_in[15]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_70_n_0 ),
        .I2(x_in[10]),
        .O(sext_ln10_1_fu_276_p1[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_64 
       (.I0(x_in[15]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_57_n_0 ),
        .I2(y_in[10]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h55555557AAAAAAA8)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_65 
       (.I0(x_in[15]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_71_n_0 ),
        .I2(x_in[6]),
        .I3(x_in[7]),
        .I4(x_in[8]),
        .I5(x_in[9]),
        .O(sext_ln10_1_fu_276_p1[12]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h5557AAA8)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_66 
       (.I0(x_in[15]),
        .I1(x_in[7]),
        .I2(x_in[6]),
        .I3(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_71_n_0 ),
        .I4(x_in[8]),
        .O(sext_ln10_1_fu_276_p1[11]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h57A8)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_67 
       (.I0(x_in[15]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_71_n_0 ),
        .I2(x_in[6]),
        .I3(x_in[7]),
        .O(sext_ln10_1_fu_276_p1[10]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_68 
       (.I0(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_71_n_0 ),
        .I1(x_in[6]),
        .I2(x_in[7]),
        .I3(x_in[8]),
        .I4(x_in[9]),
        .I5(x_in[10]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_68_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_69 
       (.I0(\off_1_reg_1699[13]_i_4_n_0 ),
        .I1(y_in[6]),
        .I2(y_in[7]),
        .I3(y_in[8]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_69_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_7 
       (.I0(\off_1_reg_1699[12]_i_2_n_0 ),
        .I1(y_in[15]),
        .I2(sext_ln10_1_fu_276_p1[18]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_70 
       (.I0(x_in[9]),
        .I1(x_in[8]),
        .I2(x_in[7]),
        .I3(x_in[6]),
        .I4(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_71_n_0 ),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_71 
       (.I0(x_in[5]),
        .I1(x_in[4]),
        .I2(x_in[3]),
        .I3(x_in[2]),
        .I4(x_in[1]),
        .I5(x_in[0]),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_71_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_8 
       (.CI(\tmp_5_reg_1720_reg[0]_i_30_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_8_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_8_n_1 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_8_n_2 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_8_n_3 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_8_n_4 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_8_n_5 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_8_n_6 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_8_n_7 }),
        .DI({\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_28_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_29_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_30_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_31_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_32_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_33_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_34_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_35_n_0 }),
        .O(y_4_fu_326_p2[18:11]),
        .S({\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_36_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_37_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_38_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_39_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_40_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_41_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_42_n_0 ,\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_43_n_0 }));
  LUT4 #(
    .INIT(16'h09F6)) 
    \tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_9 
       (.I0(\off_1_reg_1699[12]_i_2_n_0 ),
        .I1(y_in[15]),
        .I2(sext_ln10_1_fu_276_p1[18]),
        .I3(p_0_in),
        .O(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_9_n_0 ));
  FDRE \tmp_3_reg_1710_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_n_0 ),
        .Q(tmp_3_reg_1710_pp0_iter2_reg),
        .R(1'b0));
  (* srl_bus_name = "inst/\\tmp_4_reg_1715_pp0_iter1_reg_reg " *) 
  (* srl_name = "inst/\\tmp_4_reg_1715_pp0_iter1_reg_reg[0]_srl2 " *) 
  SRL16E \tmp_4_reg_1715_pp0_iter1_reg_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(A),
        .Q(\tmp_4_reg_1715_pp0_iter1_reg_reg[0]_srl2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_4_reg_1715_pp0_iter1_reg_reg[0]_srl2_i_1 
       (.I0(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(A));
  FDRE \tmp_4_reg_1715_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_4_reg_1715_pp0_iter1_reg_reg[0]_srl2_n_0 ),
        .Q(tmp_4_reg_1715_pp0_iter2_reg),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hE21D)) 
    \tmp_5_reg_1720[0]_i_10 
       (.I0(y_4_fu_326_p2[19]),
        .I1(p_0_in),
        .I2(add_ln30_fu_314_p2[19]),
        .I3(\y_13_reg_1742_reg[20]_i_12_n_6 ),
        .O(\tmp_5_reg_1720[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_5_reg_1720[0]_i_11 
       (.I0(add_ln30_fu_314_p2[18]),
        .I1(p_0_in),
        .I2(y_4_fu_326_p2[18]),
        .O(\tmp_5_reg_1720[0]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \tmp_5_reg_1720[0]_i_12 
       (.I0(\y_13_reg_1742_reg[20]_i_12_n_6 ),
        .O(\tmp_5_reg_1720[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \tmp_5_reg_1720[0]_i_13 
       (.I0(y_4_fu_326_p2[18]),
        .I1(add_ln30_fu_314_p2[18]),
        .I2(sext_ln27_fu_362_p1[18]),
        .I3(add_ln30_fu_314_p2[19]),
        .I4(p_0_in),
        .I5(y_4_fu_326_p2[19]),
        .O(\tmp_5_reg_1720[0]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_5_reg_1720[0]_i_14 
       (.I0(add_ln30_fu_314_p2[17]),
        .I1(p_0_in),
        .I2(y_4_fu_326_p2[17]),
        .O(\tmp_5_reg_1720[0]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_5_reg_1720[0]_i_15 
       (.I0(add_ln30_fu_314_p2[16]),
        .I1(p_0_in),
        .I2(y_4_fu_326_p2[16]),
        .O(\tmp_5_reg_1720[0]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_5_reg_1720[0]_i_16 
       (.I0(add_ln30_fu_314_p2[15]),
        .I1(p_0_in),
        .I2(y_4_fu_326_p2[15]),
        .O(\tmp_5_reg_1720[0]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_5_reg_1720[0]_i_17 
       (.I0(add_ln30_fu_314_p2[14]),
        .I1(p_0_in),
        .I2(y_4_fu_326_p2[14]),
        .O(\tmp_5_reg_1720[0]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_5_reg_1720[0]_i_18 
       (.I0(add_ln30_fu_314_p2[13]),
        .I1(p_0_in),
        .I2(y_4_fu_326_p2[13]),
        .O(\tmp_5_reg_1720[0]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_5_reg_1720[0]_i_19 
       (.I0(add_ln30_fu_314_p2[12]),
        .I1(p_0_in),
        .I2(y_4_fu_326_p2[12]),
        .O(\tmp_5_reg_1720[0]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_5_reg_1720[0]_i_20 
       (.I0(add_ln30_fu_314_p2[11]),
        .I1(p_0_in),
        .I2(y_4_fu_326_p2[11]),
        .O(\tmp_5_reg_1720[0]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_5_reg_1720[0]_i_21 
       (.I0(add_ln30_fu_314_p2[10]),
        .I1(p_0_in),
        .I2(y_4_fu_326_p2[10]),
        .O(\tmp_5_reg_1720[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \tmp_5_reg_1720[0]_i_22 
       (.I0(y_4_fu_326_p2[17]),
        .I1(add_ln30_fu_314_p2[17]),
        .I2(sext_ln27_fu_362_p1[17]),
        .I3(add_ln30_fu_314_p2[19]),
        .I4(p_0_in),
        .I5(y_4_fu_326_p2[19]),
        .O(\tmp_5_reg_1720[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \tmp_5_reg_1720[0]_i_23 
       (.I0(y_4_fu_326_p2[16]),
        .I1(add_ln30_fu_314_p2[16]),
        .I2(sext_ln27_fu_362_p1[16]),
        .I3(add_ln30_fu_314_p2[19]),
        .I4(p_0_in),
        .I5(y_4_fu_326_p2[19]),
        .O(\tmp_5_reg_1720[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \tmp_5_reg_1720[0]_i_24 
       (.I0(y_4_fu_326_p2[15]),
        .I1(add_ln30_fu_314_p2[15]),
        .I2(sext_ln27_fu_362_p1[15]),
        .I3(add_ln30_fu_314_p2[19]),
        .I4(p_0_in),
        .I5(y_4_fu_326_p2[19]),
        .O(\tmp_5_reg_1720[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \tmp_5_reg_1720[0]_i_25 
       (.I0(y_4_fu_326_p2[14]),
        .I1(add_ln30_fu_314_p2[14]),
        .I2(sext_ln27_fu_362_p1[14]),
        .I3(add_ln30_fu_314_p2[19]),
        .I4(p_0_in),
        .I5(y_4_fu_326_p2[19]),
        .O(\tmp_5_reg_1720[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \tmp_5_reg_1720[0]_i_26 
       (.I0(y_4_fu_326_p2[13]),
        .I1(add_ln30_fu_314_p2[13]),
        .I2(sext_ln27_fu_362_p1[13]),
        .I3(add_ln30_fu_314_p2[19]),
        .I4(p_0_in),
        .I5(y_4_fu_326_p2[19]),
        .O(\tmp_5_reg_1720[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \tmp_5_reg_1720[0]_i_27 
       (.I0(y_4_fu_326_p2[12]),
        .I1(add_ln30_fu_314_p2[12]),
        .I2(sext_ln27_fu_362_p1[12]),
        .I3(add_ln30_fu_314_p2[19]),
        .I4(p_0_in),
        .I5(y_4_fu_326_p2[19]),
        .O(\tmp_5_reg_1720[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \tmp_5_reg_1720[0]_i_28 
       (.I0(y_4_fu_326_p2[11]),
        .I1(add_ln30_fu_314_p2[11]),
        .I2(sext_ln27_fu_362_p1[11]),
        .I3(add_ln30_fu_314_p2[19]),
        .I4(p_0_in),
        .I5(y_4_fu_326_p2[19]),
        .O(\tmp_5_reg_1720[0]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \tmp_5_reg_1720[0]_i_29 
       (.I0(y_4_fu_326_p2[10]),
        .I1(add_ln30_fu_314_p2[10]),
        .I2(sext_ln27_fu_362_p1[10]),
        .I3(add_ln30_fu_314_p2[19]),
        .I4(p_0_in),
        .I5(y_4_fu_326_p2[19]),
        .O(\tmp_5_reg_1720[0]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tmp_5_reg_1720[0]_i_31 
       (.I0(\y_13_reg_1742[20]_i_57_n_0 ),
        .I1(sext_ln10_1_fu_276_p1[9]),
        .O(\tmp_5_reg_1720[0]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tmp_5_reg_1720[0]_i_32 
       (.I0(\y_13_reg_1742[20]_i_59_n_0 ),
        .I1(sext_ln10_1_fu_276_p1[8]),
        .O(\tmp_5_reg_1720[0]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tmp_5_reg_1720[0]_i_33 
       (.I0(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_46_n_0 ),
        .I1(sext_ln10_1_fu_276_p1[7]),
        .O(\tmp_5_reg_1720[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h000000005556AAAA)) 
    \tmp_5_reg_1720[0]_i_34 
       (.I0(y_in[3]),
        .I1(y_in[2]),
        .I2(y_in[1]),
        .I3(y_in[0]),
        .I4(x_in[15]),
        .I5(sext_ln10_1_fu_276_p1[6]),
        .O(\tmp_5_reg_1720[0]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h000056AA)) 
    \tmp_5_reg_1720[0]_i_35 
       (.I0(y_in[2]),
        .I1(y_in[0]),
        .I2(y_in[1]),
        .I3(x_in[15]),
        .I4(sext_ln10_1_fu_276_p1[5]),
        .O(\tmp_5_reg_1720[0]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h600A060A)) 
    \tmp_5_reg_1720[0]_i_36 
       (.I0(y_in[1]),
        .I1(y_in[0]),
        .I2(x_in[1]),
        .I3(x_in[15]),
        .I4(x_in[0]),
        .O(\tmp_5_reg_1720[0]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \tmp_5_reg_1720[0]_i_37 
       (.I0(y_in[0]),
        .I1(x_in[0]),
        .O(\tmp_5_reg_1720[0]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h366C9C9CC9936363)) 
    \tmp_5_reg_1720[0]_i_38 
       (.I0(sext_ln10_1_fu_276_p1[9]),
        .I1(y_in[7]),
        .I2(y_in[6]),
        .I3(\off_1_reg_1699[13]_i_4_n_0 ),
        .I4(x_in[15]),
        .I5(sext_ln10_1_fu_276_p1[10]),
        .O(\tmp_5_reg_1720[0]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h69CC396C9633C693)) 
    \tmp_5_reg_1720[0]_i_39 
       (.I0(sext_ln10_1_fu_276_p1[8]),
        .I1(sext_ln10_1_fu_276_p1[9]),
        .I2(x_in[15]),
        .I3(y_in[5]),
        .I4(\tmp_5_reg_1720[0]_i_46_n_0 ),
        .I5(y_in[6]),
        .O(\tmp_5_reg_1720[0]_i_39_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_5_reg_1720[0]_i_4 
       (.I0(\y_13_reg_1742_reg[20]_i_8_n_13 ),
        .O(\tmp_5_reg_1720[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h39696CCCC6969333)) 
    \tmp_5_reg_1720[0]_i_40 
       (.I0(sext_ln10_1_fu_276_p1[7]),
        .I1(sext_ln10_1_fu_276_p1[8]),
        .I2(x_in[15]),
        .I3(\tmp_5_reg_1720[0]_i_47_n_0 ),
        .I4(y_in[4]),
        .I5(y_in[5]),
        .O(\tmp_5_reg_1720[0]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \tmp_5_reg_1720[0]_i_41 
       (.I0(sext_ln10_1_fu_276_p1[6]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_47_n_0 ),
        .I2(sext_ln10_1_fu_276_p1[7]),
        .I3(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_46_n_0 ),
        .O(\tmp_5_reg_1720[0]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hEEEABBBF11154440)) 
    \tmp_5_reg_1720[0]_i_42 
       (.I0(sext_ln10_1_fu_276_p1[5]),
        .I1(x_in[15]),
        .I2(y_in[1]),
        .I3(y_in[0]),
        .I4(y_in[2]),
        .I5(\tmp_5_reg_1720[0]_i_48_n_0 ),
        .O(\tmp_5_reg_1720[0]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h396C69CCC6939633)) 
    \tmp_5_reg_1720[0]_i_43 
       (.I0(sext_ln10_1_fu_276_p1[4]),
        .I1(sext_ln10_1_fu_276_p1[5]),
        .I2(x_in[15]),
        .I3(y_in[1]),
        .I4(y_in[0]),
        .I5(y_in[2]),
        .O(\tmp_5_reg_1720[0]_i_43_n_0 ));
  LUT5 #(
    .INIT(32'h4B2DB4D2)) 
    \tmp_5_reg_1720[0]_i_44 
       (.I0(x_in[0]),
        .I1(x_in[15]),
        .I2(x_in[1]),
        .I3(y_in[0]),
        .I4(y_in[1]),
        .O(\tmp_5_reg_1720[0]_i_44_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_5_reg_1720[0]_i_45 
       (.I0(y_in[0]),
        .I1(x_in[0]),
        .O(\tmp_5_reg_1720[0]_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \tmp_5_reg_1720[0]_i_46 
       (.I0(y_in[0]),
        .I1(y_in[1]),
        .I2(y_in[2]),
        .I3(y_in[3]),
        .I4(y_in[4]),
        .O(\tmp_5_reg_1720[0]_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tmp_5_reg_1720[0]_i_47 
       (.I0(y_in[3]),
        .I1(y_in[2]),
        .I2(y_in[1]),
        .I3(y_in[0]),
        .O(\tmp_5_reg_1720[0]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h5556AAAAAAA95555)) 
    \tmp_5_reg_1720[0]_i_48 
       (.I0(y_in[3]),
        .I1(y_in[2]),
        .I2(y_in[1]),
        .I3(y_in[0]),
        .I4(x_in[15]),
        .I5(sext_ln10_1_fu_276_p1[6]),
        .O(\tmp_5_reg_1720[0]_i_48_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \tmp_5_reg_1720[0]_i_5 
       (.I0(A__0[19]),
        .I1(\y_13_reg_1742_reg[20]_i_8_n_13 ),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\tmp_5_reg_1720[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \tmp_5_reg_1720[0]_i_6 
       (.I0(A__0[18]),
        .I1(\y_13_reg_1742_reg[20]_i_8_n_13 ),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\tmp_5_reg_1720[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \tmp_5_reg_1720[0]_i_7 
       (.I0(A__0[17]),
        .I1(\y_13_reg_1742_reg[20]_i_8_n_14 ),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\tmp_5_reg_1720[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \tmp_5_reg_1720[0]_i_8 
       (.I0(A__0[16]),
        .I1(\y_13_reg_1742_reg[20]_i_8_n_15 ),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\tmp_5_reg_1720[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \tmp_5_reg_1720[0]_i_9 
       (.I0(A__0[15]),
        .I1(\y_13_reg_1742_reg[20]_i_9_n_8 ),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\tmp_5_reg_1720[0]_i_9_n_0 ));
  FDRE \tmp_5_reg_1720_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_5_reg_1720),
        .Q(tmp_5_reg_1720_pp0_iter1_reg),
        .R(1'b0));
  FDRE \tmp_5_reg_1720_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_5_reg_1720_pp0_iter1_reg),
        .Q(tmp_5_reg_1720_pp0_iter2_reg),
        .R(1'b0));
  FDRE \tmp_5_reg_1720_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sext_ln28_2_fu_528_p10),
        .Q(tmp_5_reg_1720),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_5_reg_1720_reg[0]_i_1 
       (.CI(\y_13_reg_1742_reg[15]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_5_reg_1720_reg[0]_i_1_CO_UNCONNECTED [7:5],\tmp_5_reg_1720_reg[0]_i_1_n_3 ,\tmp_5_reg_1720_reg[0]_i_1_n_4 ,\tmp_5_reg_1720_reg[0]_i_1_n_5 ,\tmp_5_reg_1720_reg[0]_i_1_n_6 ,\tmp_5_reg_1720_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,A__0[19:15]}),
        .O({\NLW_tmp_5_reg_1720_reg[0]_i_1_O_UNCONNECTED [7:6],sext_ln28_2_fu_528_p10,\tmp_5_reg_1720_reg[0]_i_1_n_11 ,\tmp_5_reg_1720_reg[0]_i_1_n_12 ,\tmp_5_reg_1720_reg[0]_i_1_n_13 ,\tmp_5_reg_1720_reg[0]_i_1_n_14 ,\tmp_5_reg_1720_reg[0]_i_1_n_15 }),
        .S({1'b0,1'b0,\tmp_5_reg_1720[0]_i_4_n_0 ,\tmp_5_reg_1720[0]_i_5_n_0 ,\tmp_5_reg_1720[0]_i_6_n_0 ,\tmp_5_reg_1720[0]_i_7_n_0 ,\tmp_5_reg_1720[0]_i_8_n_0 ,\tmp_5_reg_1720[0]_i_9_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_5_reg_1720_reg[0]_i_2 
       (.CI(\tmp_5_reg_1720_reg[0]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_5_reg_1720_reg[0]_i_2_CO_UNCONNECTED [7:3],\tmp_5_reg_1720_reg[0]_i_2_n_5 ,\NLW_tmp_5_reg_1720_reg[0]_i_2_CO_UNCONNECTED [1],\tmp_5_reg_1720_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\tmp_5_reg_1720[0]_i_10_n_0 ,\tmp_5_reg_1720[0]_i_11_n_0 }),
        .O({\NLW_tmp_5_reg_1720_reg[0]_i_2_O_UNCONNECTED [7:2],A__0[19:18]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,\tmp_5_reg_1720[0]_i_12_n_0 ,\tmp_5_reg_1720[0]_i_13_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_5_reg_1720_reg[0]_i_3 
       (.CI(\y_13_reg_1742_reg[15]_i_11_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tmp_5_reg_1720_reg[0]_i_3_n_0 ,\tmp_5_reg_1720_reg[0]_i_3_n_1 ,\tmp_5_reg_1720_reg[0]_i_3_n_2 ,\tmp_5_reg_1720_reg[0]_i_3_n_3 ,\tmp_5_reg_1720_reg[0]_i_3_n_4 ,\tmp_5_reg_1720_reg[0]_i_3_n_5 ,\tmp_5_reg_1720_reg[0]_i_3_n_6 ,\tmp_5_reg_1720_reg[0]_i_3_n_7 }),
        .DI({\tmp_5_reg_1720[0]_i_14_n_0 ,\tmp_5_reg_1720[0]_i_15_n_0 ,\tmp_5_reg_1720[0]_i_16_n_0 ,\tmp_5_reg_1720[0]_i_17_n_0 ,\tmp_5_reg_1720[0]_i_18_n_0 ,\tmp_5_reg_1720[0]_i_19_n_0 ,\tmp_5_reg_1720[0]_i_20_n_0 ,\tmp_5_reg_1720[0]_i_21_n_0 }),
        .O(A__0[17:10]),
        .S({\tmp_5_reg_1720[0]_i_22_n_0 ,\tmp_5_reg_1720[0]_i_23_n_0 ,\tmp_5_reg_1720[0]_i_24_n_0 ,\tmp_5_reg_1720[0]_i_25_n_0 ,\tmp_5_reg_1720[0]_i_26_n_0 ,\tmp_5_reg_1720[0]_i_27_n_0 ,\tmp_5_reg_1720[0]_i_28_n_0 ,\tmp_5_reg_1720[0]_i_29_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \tmp_5_reg_1720_reg[0]_i_30 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\tmp_5_reg_1720_reg[0]_i_30_n_0 ,\tmp_5_reg_1720_reg[0]_i_30_n_1 ,\tmp_5_reg_1720_reg[0]_i_30_n_2 ,\tmp_5_reg_1720_reg[0]_i_30_n_3 ,\tmp_5_reg_1720_reg[0]_i_30_n_4 ,\tmp_5_reg_1720_reg[0]_i_30_n_5 ,\tmp_5_reg_1720_reg[0]_i_30_n_6 ,\tmp_5_reg_1720_reg[0]_i_30_n_7 }),
        .DI({\tmp_5_reg_1720[0]_i_31_n_0 ,\tmp_5_reg_1720[0]_i_32_n_0 ,\tmp_5_reg_1720[0]_i_33_n_0 ,\tmp_5_reg_1720[0]_i_34_n_0 ,\tmp_5_reg_1720[0]_i_35_n_0 ,\tmp_5_reg_1720[0]_i_36_n_0 ,\tmp_5_reg_1720[0]_i_37_n_0 ,1'b0}),
        .O(y_4_fu_326_p2[10:3]),
        .S({\tmp_5_reg_1720[0]_i_38_n_0 ,\tmp_5_reg_1720[0]_i_39_n_0 ,\tmp_5_reg_1720[0]_i_40_n_0 ,\tmp_5_reg_1720[0]_i_41_n_0 ,\tmp_5_reg_1720[0]_i_42_n_0 ,\tmp_5_reg_1720[0]_i_43_n_0 ,\tmp_5_reg_1720[0]_i_44_n_0 ,\tmp_5_reg_1720[0]_i_45_n_0 }));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1747[0]_i_10 
       (.I0(\tmp_9_reg_1747_reg[0]_i_9_n_8 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_23_n_11 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\tmp_9_reg_1747[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1747[0]_i_11 
       (.I0(\tmp_9_reg_1747_reg[0]_i_9_n_9 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_23_n_11 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\tmp_9_reg_1747[0]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1747[0]_i_12 
       (.I0(\tmp_9_reg_1747_reg[0]_i_9_n_10 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_23_n_12 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\tmp_9_reg_1747[0]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1747[0]_i_13 
       (.I0(\tmp_9_reg_1747_reg[0]_i_9_n_11 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_23_n_13 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\tmp_9_reg_1747[0]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1747[0]_i_14 
       (.I0(\tmp_9_reg_1747_reg[0]_i_9_n_12 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_23_n_14 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\tmp_9_reg_1747[0]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1747[0]_i_15 
       (.I0(\tmp_9_reg_1747_reg[0]_i_9_n_13 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_23_n_15 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\tmp_9_reg_1747[0]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1747[0]_i_16 
       (.I0(\tmp_9_reg_1747_reg[0]_i_9_n_14 ),
        .I1(\xs_8_reg_1764_reg[0]_i_8_n_8 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\tmp_9_reg_1747[0]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1747[0]_i_17 
       (.I0(\tmp_9_reg_1747_reg[0]_i_9_n_15 ),
        .I1(\xs_8_reg_1764_reg[0]_i_8_n_9 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\tmp_9_reg_1747[0]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_9_reg_1747[0]_i_18 
       (.I0(\tmp_9_reg_1747_reg[0]_i_32_n_11 ),
        .O(\tmp_9_reg_1747[0]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1747[0]_i_19 
       (.I0(\add_ln43_9_reg_1781_reg[14]_i_9_n_12 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_32_n_11 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\tmp_9_reg_1747[0]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1747[0]_i_20 
       (.I0(\add_ln43_9_reg_1781_reg[14]_i_9_n_13 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_32_n_11 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\tmp_9_reg_1747[0]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1747[0]_i_21 
       (.I0(\add_ln43_9_reg_1781_reg[14]_i_9_n_14 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_32_n_11 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\tmp_9_reg_1747[0]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1747[0]_i_22 
       (.I0(\add_ln43_9_reg_1781_reg[14]_i_9_n_15 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_32_n_11 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\tmp_9_reg_1747[0]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1747[0]_i_24 
       (.I0(\add_ln43_9_reg_1781_reg[14]_i_11_n_8 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_32_n_11 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\tmp_9_reg_1747[0]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1747[0]_i_25 
       (.I0(\add_ln43_9_reg_1781_reg[14]_i_11_n_9 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_32_n_12 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\tmp_9_reg_1747[0]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1747[0]_i_26 
       (.I0(\add_ln43_9_reg_1781_reg[14]_i_11_n_10 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_32_n_13 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\tmp_9_reg_1747[0]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1747[0]_i_27 
       (.I0(\add_ln43_9_reg_1781_reg[14]_i_11_n_11 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_32_n_14 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\tmp_9_reg_1747[0]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1747[0]_i_28 
       (.I0(\add_ln43_9_reg_1781_reg[14]_i_11_n_12 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_32_n_15 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\tmp_9_reg_1747[0]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1747[0]_i_29 
       (.I0(\add_ln43_9_reg_1781_reg[14]_i_11_n_13 ),
        .I1(\xs_8_reg_1764_reg[0]_i_15_n_8 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\tmp_9_reg_1747[0]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1747[0]_i_30 
       (.I0(\add_ln43_9_reg_1781_reg[14]_i_11_n_14 ),
        .I1(\xs_8_reg_1764_reg[0]_i_15_n_9 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\tmp_9_reg_1747[0]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1747[0]_i_31 
       (.I0(\add_ln43_9_reg_1781_reg[14]_i_11_n_15 ),
        .I1(\xs_8_reg_1764_reg[0]_i_15_n_10 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\tmp_9_reg_1747[0]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_9_reg_1747[0]_i_33 
       (.I0(x_12_reg_1727[19]),
        .I1(x_13_reg_1737[19]),
        .I2(tmp_5_reg_1720),
        .O(x_14_fu_564_p3[19]));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_9_reg_1747[0]_i_34 
       (.I0(x_12_reg_1727[18]),
        .I1(x_13_reg_1737[18]),
        .I2(tmp_5_reg_1720),
        .O(x_14_fu_564_p3[18]));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_9_reg_1747[0]_i_35 
       (.I0(x_12_reg_1727[17]),
        .I1(x_13_reg_1737[17]),
        .I2(tmp_5_reg_1720),
        .O(x_14_fu_564_p3[17]));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_9_reg_1747[0]_i_36 
       (.I0(x_12_reg_1727[16]),
        .I1(x_13_reg_1737[16]),
        .I2(tmp_5_reg_1720),
        .O(x_14_fu_564_p3[16]));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_9_reg_1747[0]_i_37 
       (.I0(x_12_reg_1727[20]),
        .I1(x_13_reg_1737[20]),
        .I2(tmp_5_reg_1720),
        .O(x_14_fu_564_p3[20]));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_9_reg_1747[0]_i_38 
       (.I0(x_12_reg_1727[19]),
        .I1(x_13_reg_1737[19]),
        .I2(tmp_5_reg_1720),
        .O(\tmp_9_reg_1747[0]_i_38_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_9_reg_1747[0]_i_39 
       (.I0(x_12_reg_1727[18]),
        .I1(x_13_reg_1737[18]),
        .I2(tmp_5_reg_1720),
        .O(\tmp_9_reg_1747[0]_i_39_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_9_reg_1747[0]_i_4 
       (.I0(\tmp_9_reg_1747_reg[0]_i_23_n_11 ),
        .O(\tmp_9_reg_1747[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_9_reg_1747[0]_i_40 
       (.I0(x_12_reg_1727[17]),
        .I1(x_13_reg_1737[17]),
        .I2(tmp_5_reg_1720),
        .O(\tmp_9_reg_1747[0]_i_40_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_9_reg_1747[0]_i_41 
       (.I0(x_12_reg_1727[16]),
        .I1(x_13_reg_1737[16]),
        .I2(tmp_5_reg_1720),
        .O(\tmp_9_reg_1747[0]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1747[0]_i_5 
       (.I0(\tmp_9_reg_1747_reg[0]_i_3_n_12 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_23_n_11 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\tmp_9_reg_1747[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1747[0]_i_6 
       (.I0(\tmp_9_reg_1747_reg[0]_i_3_n_13 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_23_n_11 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\tmp_9_reg_1747[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1747[0]_i_7 
       (.I0(\tmp_9_reg_1747_reg[0]_i_3_n_14 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_23_n_11 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\tmp_9_reg_1747[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \tmp_9_reg_1747[0]_i_8 
       (.I0(\tmp_9_reg_1747_reg[0]_i_3_n_15 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_23_n_11 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\tmp_9_reg_1747[0]_i_8_n_0 ));
  FDRE \tmp_9_reg_1747_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_9_reg_1747),
        .Q(tmp_9_reg_1747_pp0_iter2_reg),
        .R(1'b0));
  FDRE \tmp_9_reg_1747_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_23_fu_810_p3),
        .Q(tmp_9_reg_1747),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_9_reg_1747_reg[0]_i_1 
       (.CI(\tmp_9_reg_1747_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_9_reg_1747_reg[0]_i_1_CO_UNCONNECTED [7:4],\tmp_9_reg_1747_reg[0]_i_1_n_4 ,\tmp_9_reg_1747_reg[0]_i_1_n_5 ,\tmp_9_reg_1747_reg[0]_i_1_n_6 ,\tmp_9_reg_1747_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\tmp_9_reg_1747_reg[0]_i_3_n_12 ,\tmp_9_reg_1747_reg[0]_i_3_n_13 ,\tmp_9_reg_1747_reg[0]_i_3_n_14 ,\tmp_9_reg_1747_reg[0]_i_3_n_15 }),
        .O({\NLW_tmp_9_reg_1747_reg[0]_i_1_O_UNCONNECTED [7:5],y_23_fu_810_p3,y_23_fu_810_p3__0[19:16]}),
        .S({1'b0,1'b0,1'b0,\tmp_9_reg_1747[0]_i_4_n_0 ,\tmp_9_reg_1747[0]_i_5_n_0 ,\tmp_9_reg_1747[0]_i_6_n_0 ,\tmp_9_reg_1747[0]_i_7_n_0 ,\tmp_9_reg_1747[0]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_9_reg_1747_reg[0]_i_2 
       (.CI(\y_26_reg_1758_reg[7]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tmp_9_reg_1747_reg[0]_i_2_n_0 ,\tmp_9_reg_1747_reg[0]_i_2_n_1 ,\tmp_9_reg_1747_reg[0]_i_2_n_2 ,\tmp_9_reg_1747_reg[0]_i_2_n_3 ,\tmp_9_reg_1747_reg[0]_i_2_n_4 ,\tmp_9_reg_1747_reg[0]_i_2_n_5 ,\tmp_9_reg_1747_reg[0]_i_2_n_6 ,\tmp_9_reg_1747_reg[0]_i_2_n_7 }),
        .DI({\tmp_9_reg_1747_reg[0]_i_9_n_8 ,\tmp_9_reg_1747_reg[0]_i_9_n_9 ,\tmp_9_reg_1747_reg[0]_i_9_n_10 ,\tmp_9_reg_1747_reg[0]_i_9_n_11 ,\tmp_9_reg_1747_reg[0]_i_9_n_12 ,\tmp_9_reg_1747_reg[0]_i_9_n_13 ,\tmp_9_reg_1747_reg[0]_i_9_n_14 ,\tmp_9_reg_1747_reg[0]_i_9_n_15 }),
        .O(y_23_fu_810_p3__0[15:8]),
        .S({\tmp_9_reg_1747[0]_i_10_n_0 ,\tmp_9_reg_1747[0]_i_11_n_0 ,\tmp_9_reg_1747[0]_i_12_n_0 ,\tmp_9_reg_1747[0]_i_13_n_0 ,\tmp_9_reg_1747[0]_i_14_n_0 ,\tmp_9_reg_1747[0]_i_15_n_0 ,\tmp_9_reg_1747[0]_i_16_n_0 ,\tmp_9_reg_1747[0]_i_17_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_9_reg_1747_reg[0]_i_23 
       (.CI(\xs_8_reg_1764_reg[0]_i_8_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_9_reg_1747_reg[0]_i_23_CO_UNCONNECTED [7:4],\tmp_9_reg_1747_reg[0]_i_23_n_4 ,\tmp_9_reg_1747_reg[0]_i_23_n_5 ,\tmp_9_reg_1747_reg[0]_i_23_n_6 ,\tmp_9_reg_1747_reg[0]_i_23_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\tmp_9_reg_1747_reg[0]_i_32_n_12 ,\tmp_9_reg_1747_reg[0]_i_32_n_13 ,\tmp_9_reg_1747_reg[0]_i_32_n_14 ,\tmp_9_reg_1747_reg[0]_i_32_n_15 }),
        .O({\NLW_tmp_9_reg_1747_reg[0]_i_23_O_UNCONNECTED [7:5],\tmp_9_reg_1747_reg[0]_i_23_n_11 ,\tmp_9_reg_1747_reg[0]_i_23_n_12 ,\tmp_9_reg_1747_reg[0]_i_23_n_13 ,\tmp_9_reg_1747_reg[0]_i_23_n_14 ,\tmp_9_reg_1747_reg[0]_i_23_n_15 }),
        .S({1'b0,1'b0,1'b0,\tmp_9_reg_1747_reg[0]_i_32_n_11 ,\tmp_9_reg_1747_reg[0]_i_32_n_12 ,\tmp_9_reg_1747_reg[0]_i_32_n_13 ,\tmp_9_reg_1747_reg[0]_i_32_n_14 ,\tmp_9_reg_1747_reg[0]_i_32_n_15 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_9_reg_1747_reg[0]_i_3 
       (.CI(\tmp_9_reg_1747_reg[0]_i_9_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_9_reg_1747_reg[0]_i_3_CO_UNCONNECTED [7:4],\tmp_9_reg_1747_reg[0]_i_3_n_4 ,\tmp_9_reg_1747_reg[0]_i_3_n_5 ,\tmp_9_reg_1747_reg[0]_i_3_n_6 ,\tmp_9_reg_1747_reg[0]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\add_ln43_9_reg_1781_reg[14]_i_9_n_12 ,\add_ln43_9_reg_1781_reg[14]_i_9_n_13 ,\add_ln43_9_reg_1781_reg[14]_i_9_n_14 ,\add_ln43_9_reg_1781_reg[14]_i_9_n_15 }),
        .O({\NLW_tmp_9_reg_1747_reg[0]_i_3_O_UNCONNECTED [7:5],\tmp_9_reg_1747_reg[0]_i_3_n_11 ,\tmp_9_reg_1747_reg[0]_i_3_n_12 ,\tmp_9_reg_1747_reg[0]_i_3_n_13 ,\tmp_9_reg_1747_reg[0]_i_3_n_14 ,\tmp_9_reg_1747_reg[0]_i_3_n_15 }),
        .S({1'b0,1'b0,1'b0,\tmp_9_reg_1747[0]_i_18_n_0 ,\tmp_9_reg_1747[0]_i_19_n_0 ,\tmp_9_reg_1747[0]_i_20_n_0 ,\tmp_9_reg_1747[0]_i_21_n_0 ,\tmp_9_reg_1747[0]_i_22_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_9_reg_1747_reg[0]_i_32 
       (.CI(\xs_8_reg_1764_reg[0]_i_15_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tmp_9_reg_1747_reg[0]_i_32_CO_UNCONNECTED [7:4],\tmp_9_reg_1747_reg[0]_i_32_n_4 ,\tmp_9_reg_1747_reg[0]_i_32_n_5 ,\tmp_9_reg_1747_reg[0]_i_32_n_6 ,\tmp_9_reg_1747_reg[0]_i_32_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,x_14_fu_564_p3[19:16]}),
        .O({\NLW_tmp_9_reg_1747_reg[0]_i_32_O_UNCONNECTED [7:5],\tmp_9_reg_1747_reg[0]_i_32_n_11 ,\tmp_9_reg_1747_reg[0]_i_32_n_12 ,\tmp_9_reg_1747_reg[0]_i_32_n_13 ,\tmp_9_reg_1747_reg[0]_i_32_n_14 ,\tmp_9_reg_1747_reg[0]_i_32_n_15 }),
        .S({1'b0,1'b0,1'b0,x_14_fu_564_p3[20],\tmp_9_reg_1747[0]_i_38_n_0 ,\tmp_9_reg_1747[0]_i_39_n_0 ,\tmp_9_reg_1747[0]_i_40_n_0 ,\tmp_9_reg_1747[0]_i_41_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \tmp_9_reg_1747_reg[0]_i_9 
       (.CI(\y_26_reg_1758_reg[7]_i_13_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tmp_9_reg_1747_reg[0]_i_9_n_0 ,\tmp_9_reg_1747_reg[0]_i_9_n_1 ,\tmp_9_reg_1747_reg[0]_i_9_n_2 ,\tmp_9_reg_1747_reg[0]_i_9_n_3 ,\tmp_9_reg_1747_reg[0]_i_9_n_4 ,\tmp_9_reg_1747_reg[0]_i_9_n_5 ,\tmp_9_reg_1747_reg[0]_i_9_n_6 ,\tmp_9_reg_1747_reg[0]_i_9_n_7 }),
        .DI({\add_ln43_9_reg_1781_reg[14]_i_11_n_8 ,\add_ln43_9_reg_1781_reg[14]_i_11_n_9 ,\add_ln43_9_reg_1781_reg[14]_i_11_n_10 ,\add_ln43_9_reg_1781_reg[14]_i_11_n_11 ,\add_ln43_9_reg_1781_reg[14]_i_11_n_12 ,\add_ln43_9_reg_1781_reg[14]_i_11_n_13 ,\add_ln43_9_reg_1781_reg[14]_i_11_n_14 ,\add_ln43_9_reg_1781_reg[14]_i_11_n_15 }),
        .O({\tmp_9_reg_1747_reg[0]_i_9_n_8 ,\tmp_9_reg_1747_reg[0]_i_9_n_9 ,\tmp_9_reg_1747_reg[0]_i_9_n_10 ,\tmp_9_reg_1747_reg[0]_i_9_n_11 ,\tmp_9_reg_1747_reg[0]_i_9_n_12 ,\tmp_9_reg_1747_reg[0]_i_9_n_13 ,\tmp_9_reg_1747_reg[0]_i_9_n_14 ,\tmp_9_reg_1747_reg[0]_i_9_n_15 }),
        .S({\tmp_9_reg_1747[0]_i_24_n_0 ,\tmp_9_reg_1747[0]_i_25_n_0 ,\tmp_9_reg_1747[0]_i_26_n_0 ,\tmp_9_reg_1747[0]_i_27_n_0 ,\tmp_9_reg_1747[0]_i_28_n_0 ,\tmp_9_reg_1747[0]_i_29_n_0 ,\tmp_9_reg_1747[0]_i_30_n_0 ,\tmp_9_reg_1747[0]_i_31_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \x_12_reg_1727[15]_i_2 
       (.I0(\tmp_5_reg_1720_reg[0]_i_1_n_12 ),
        .I1(sext_ln27_2_fu_514_p1[12]),
        .O(\x_12_reg_1727[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_12_reg_1727[15]_i_3 
       (.I0(\tmp_5_reg_1720_reg[0]_i_1_n_13 ),
        .I1(sext_ln27_2_fu_514_p1[11]),
        .O(\x_12_reg_1727[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_12_reg_1727[15]_i_4 
       (.I0(\tmp_5_reg_1720_reg[0]_i_1_n_14 ),
        .I1(sext_ln27_2_fu_514_p1[10]),
        .O(\x_12_reg_1727[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_12_reg_1727[15]_i_5 
       (.I0(\tmp_5_reg_1720_reg[0]_i_1_n_15 ),
        .I1(sext_ln27_2_fu_514_p1[9]),
        .O(\x_12_reg_1727[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_12_reg_1727[15]_i_6 
       (.I0(\y_13_reg_1742_reg[15]_i_2_n_8 ),
        .I1(sext_ln27_2_fu_514_p1[8]),
        .O(\x_12_reg_1727[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_12_reg_1727[15]_i_7 
       (.I0(\y_13_reg_1742_reg[15]_i_2_n_9 ),
        .I1(sext_ln27_2_fu_514_p1[7]),
        .O(\x_12_reg_1727[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_12_reg_1727[15]_i_8 
       (.I0(\y_13_reg_1742_reg[15]_i_2_n_10 ),
        .I1(sext_ln27_2_fu_514_p1[6]),
        .O(\x_12_reg_1727[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_12_reg_1727[15]_i_9 
       (.I0(\y_13_reg_1742_reg[15]_i_2_n_11 ),
        .I1(sext_ln27_2_fu_514_p1[5]),
        .O(\x_12_reg_1727[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_12_reg_1727[20]_i_2 
       (.I0(sext_ln27_2_fu_514_p1[16]),
        .I1(sext_ln27_2_fu_514_p1[17]),
        .O(\x_12_reg_1727[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_12_reg_1727[20]_i_3 
       (.I0(sext_ln27_2_fu_514_p1[15]),
        .I1(sext_ln27_2_fu_514_p1[16]),
        .O(\x_12_reg_1727[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_12_reg_1727[20]_i_4 
       (.I0(sext_ln27_2_fu_514_p1[15]),
        .I1(sext_ln28_2_fu_528_p10),
        .O(\x_12_reg_1727[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_12_reg_1727[20]_i_5 
       (.I0(sext_ln27_2_fu_514_p1[14]),
        .I1(sext_ln28_2_fu_528_p10),
        .O(\x_12_reg_1727[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_12_reg_1727[20]_i_6 
       (.I0(\tmp_5_reg_1720_reg[0]_i_1_n_11 ),
        .I1(sext_ln27_2_fu_514_p1[13]),
        .O(\x_12_reg_1727[20]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_12_reg_1727[7]_i_2 
       (.I0(\y_13_reg_1742_reg[15]_i_2_n_12 ),
        .I1(sext_ln27_2_fu_514_p1[4]),
        .O(\x_12_reg_1727[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_12_reg_1727[7]_i_3 
       (.I0(\y_13_reg_1742_reg[15]_i_2_n_13 ),
        .I1(sext_ln27_2_fu_514_p1[3]),
        .O(\x_12_reg_1727[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_12_reg_1727[7]_i_4 
       (.I0(\y_13_reg_1742_reg[15]_i_2_n_14 ),
        .I1(sext_ln27_2_fu_514_p1[2]),
        .O(\x_12_reg_1727[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_12_reg_1727[7]_i_5 
       (.I0(\y_13_reg_1742_reg[15]_i_2_n_15 ),
        .I1(sext_ln27_2_fu_514_p1[1]),
        .O(\x_12_reg_1727[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_12_reg_1727[7]_i_6 
       (.I0(\y_13_reg_1742_reg[7]_i_2_n_8 ),
        .I1(sext_ln27_2_fu_514_p1[0]),
        .O(\x_12_reg_1727[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_12_reg_1727[7]_i_7 
       (.I0(\y_13_reg_1742_reg[7]_i_2_n_9 ),
        .I1(\x_13_reg_1737_reg[7]_i_2_n_13 ),
        .O(\x_12_reg_1727[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_12_reg_1727[7]_i_8 
       (.I0(\y_13_reg_1742_reg[7]_i_2_n_10 ),
        .I1(\x_13_reg_1737_reg[7]_i_2_n_14 ),
        .O(\x_12_reg_1727[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_12_reg_1727[7]_i_9 
       (.I0(\y_13_reg_1742_reg[7]_i_2_n_11 ),
        .I1(\x_13_reg_1737_reg[7]_i_2_n_15 ),
        .O(\x_12_reg_1727[7]_i_9_n_0 ));
  FDRE \x_12_reg_1727_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_12_fu_540_p2[0]),
        .Q(x_12_reg_1727[0]),
        .R(1'b0));
  FDRE \x_12_reg_1727_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_12_fu_540_p2[10]),
        .Q(x_12_reg_1727[10]),
        .R(1'b0));
  FDRE \x_12_reg_1727_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_12_fu_540_p2[11]),
        .Q(x_12_reg_1727[11]),
        .R(1'b0));
  FDRE \x_12_reg_1727_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_12_fu_540_p2[12]),
        .Q(x_12_reg_1727[12]),
        .R(1'b0));
  FDRE \x_12_reg_1727_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_12_fu_540_p2[13]),
        .Q(x_12_reg_1727[13]),
        .R(1'b0));
  FDRE \x_12_reg_1727_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_12_fu_540_p2[14]),
        .Q(x_12_reg_1727[14]),
        .R(1'b0));
  FDRE \x_12_reg_1727_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_12_fu_540_p2[15]),
        .Q(x_12_reg_1727[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_12_reg_1727_reg[15]_i_1 
       (.CI(\x_12_reg_1727_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\x_12_reg_1727_reg[15]_i_1_n_0 ,\x_12_reg_1727_reg[15]_i_1_n_1 ,\x_12_reg_1727_reg[15]_i_1_n_2 ,\x_12_reg_1727_reg[15]_i_1_n_3 ,\x_12_reg_1727_reg[15]_i_1_n_4 ,\x_12_reg_1727_reg[15]_i_1_n_5 ,\x_12_reg_1727_reg[15]_i_1_n_6 ,\x_12_reg_1727_reg[15]_i_1_n_7 }),
        .DI(sext_ln27_2_fu_514_p1[12:5]),
        .O(x_12_fu_540_p2[15:8]),
        .S({\x_12_reg_1727[15]_i_2_n_0 ,\x_12_reg_1727[15]_i_3_n_0 ,\x_12_reg_1727[15]_i_4_n_0 ,\x_12_reg_1727[15]_i_5_n_0 ,\x_12_reg_1727[15]_i_6_n_0 ,\x_12_reg_1727[15]_i_7_n_0 ,\x_12_reg_1727[15]_i_8_n_0 ,\x_12_reg_1727[15]_i_9_n_0 }));
  FDRE \x_12_reg_1727_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_12_fu_540_p2[16]),
        .Q(x_12_reg_1727[16]),
        .R(1'b0));
  FDRE \x_12_reg_1727_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_12_fu_540_p2[17]),
        .Q(x_12_reg_1727[17]),
        .R(1'b0));
  FDRE \x_12_reg_1727_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_12_fu_540_p2[18]),
        .Q(x_12_reg_1727[18]),
        .R(1'b0));
  FDRE \x_12_reg_1727_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_12_fu_540_p2[19]),
        .Q(x_12_reg_1727[19]),
        .R(1'b0));
  FDRE \x_12_reg_1727_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_12_fu_540_p2[1]),
        .Q(x_12_reg_1727[1]),
        .R(1'b0));
  FDRE \x_12_reg_1727_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_12_fu_540_p2[20]),
        .Q(x_12_reg_1727[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_12_reg_1727_reg[20]_i_1 
       (.CI(\x_12_reg_1727_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_x_12_reg_1727_reg[20]_i_1_CO_UNCONNECTED [7:4],\x_12_reg_1727_reg[20]_i_1_n_4 ,\x_12_reg_1727_reg[20]_i_1_n_5 ,\x_12_reg_1727_reg[20]_i_1_n_6 ,\x_12_reg_1727_reg[20]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,sext_ln27_2_fu_514_p1[15],sext_ln28_2_fu_528_p10,sext_ln27_2_fu_514_p1[14:13]}),
        .O({\NLW_x_12_reg_1727_reg[20]_i_1_O_UNCONNECTED [7:5],x_12_fu_540_p2[20:16]}),
        .S({1'b0,1'b0,1'b0,\x_12_reg_1727[20]_i_2_n_0 ,\x_12_reg_1727[20]_i_3_n_0 ,\x_12_reg_1727[20]_i_4_n_0 ,\x_12_reg_1727[20]_i_5_n_0 ,\x_12_reg_1727[20]_i_6_n_0 }));
  FDRE \x_12_reg_1727_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_12_fu_540_p2[2]),
        .Q(x_12_reg_1727[2]),
        .R(1'b0));
  FDRE \x_12_reg_1727_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_12_fu_540_p2[3]),
        .Q(x_12_reg_1727[3]),
        .R(1'b0));
  FDRE \x_12_reg_1727_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_12_fu_540_p2[4]),
        .Q(x_12_reg_1727[4]),
        .R(1'b0));
  FDRE \x_12_reg_1727_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_12_fu_540_p2[5]),
        .Q(x_12_reg_1727[5]),
        .R(1'b0));
  FDRE \x_12_reg_1727_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_12_fu_540_p2[6]),
        .Q(x_12_reg_1727[6]),
        .R(1'b0));
  FDRE \x_12_reg_1727_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_12_fu_540_p2[7]),
        .Q(x_12_reg_1727[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_12_reg_1727_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\x_12_reg_1727_reg[7]_i_1_n_0 ,\x_12_reg_1727_reg[7]_i_1_n_1 ,\x_12_reg_1727_reg[7]_i_1_n_2 ,\x_12_reg_1727_reg[7]_i_1_n_3 ,\x_12_reg_1727_reg[7]_i_1_n_4 ,\x_12_reg_1727_reg[7]_i_1_n_5 ,\x_12_reg_1727_reg[7]_i_1_n_6 ,\x_12_reg_1727_reg[7]_i_1_n_7 }),
        .DI({sext_ln27_2_fu_514_p1[4:0],\x_13_reg_1737_reg[7]_i_2_n_13 ,\x_13_reg_1737_reg[7]_i_2_n_14 ,\x_13_reg_1737_reg[7]_i_2_n_15 }),
        .O(x_12_fu_540_p2[7:0]),
        .S({\x_12_reg_1727[7]_i_2_n_0 ,\x_12_reg_1727[7]_i_3_n_0 ,\x_12_reg_1727[7]_i_4_n_0 ,\x_12_reg_1727[7]_i_5_n_0 ,\x_12_reg_1727[7]_i_6_n_0 ,\x_12_reg_1727[7]_i_7_n_0 ,\x_12_reg_1727[7]_i_8_n_0 ,\x_12_reg_1727[7]_i_9_n_0 }));
  FDRE \x_12_reg_1727_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_12_fu_540_p2[8]),
        .Q(x_12_reg_1727[8]),
        .R(1'b0));
  FDRE \x_12_reg_1727_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_12_fu_540_p2[9]),
        .Q(x_12_reg_1727[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \x_13_reg_1737[15]_i_10 
       (.I0(sext_ln27_2_fu_514_p1[5]),
        .I1(\y_13_reg_1742_reg[15]_i_2_n_11 ),
        .O(\x_13_reg_1737[15]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \x_13_reg_1737[15]_i_12 
       (.I0(\y_13_reg_1742_reg[20]_i_9_n_10 ),
        .I1(A__0[17]),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\x_13_reg_1737[15]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \x_13_reg_1737[15]_i_13 
       (.I0(\y_13_reg_1742_reg[20]_i_9_n_11 ),
        .I1(A__0[16]),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\x_13_reg_1737[15]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \x_13_reg_1737[15]_i_14 
       (.I0(\y_13_reg_1742_reg[20]_i_9_n_12 ),
        .I1(A__0[15]),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\x_13_reg_1737[15]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \x_13_reg_1737[15]_i_15 
       (.I0(\y_13_reg_1742_reg[20]_i_9_n_13 ),
        .I1(A__0[14]),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\x_13_reg_1737[15]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \x_13_reg_1737[15]_i_16 
       (.I0(\y_13_reg_1742_reg[20]_i_9_n_14 ),
        .I1(A__0[13]),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\x_13_reg_1737[15]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \x_13_reg_1737[15]_i_17 
       (.I0(\y_13_reg_1742_reg[20]_i_9_n_15 ),
        .I1(A__0[12]),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\x_13_reg_1737[15]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \x_13_reg_1737[15]_i_18 
       (.I0(\x_13_reg_1737_reg[15]_i_11_n_8 ),
        .I1(A__0[11]),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\x_13_reg_1737[15]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \x_13_reg_1737[15]_i_19 
       (.I0(\x_13_reg_1737_reg[15]_i_11_n_9 ),
        .I1(A__0[10]),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\x_13_reg_1737[15]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \x_13_reg_1737[15]_i_20 
       (.I0(sext_ln27_fu_362_p1[8]),
        .I1(add_ln30_fu_314_p2[10]),
        .I2(p_0_in),
        .I3(y_4_fu_326_p2[10]),
        .I4(add_ln30_fu_314_p2[19]),
        .I5(y_4_fu_326_p2[19]),
        .O(\x_13_reg_1737[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \x_13_reg_1737[15]_i_21 
       (.I0(sext_ln27_fu_362_p1[7]),
        .I1(add_ln30_fu_314_p2[9]),
        .I2(p_0_in),
        .I3(y_4_fu_326_p2[9]),
        .I4(add_ln30_fu_314_p2[19]),
        .I5(y_4_fu_326_p2[19]),
        .O(\x_13_reg_1737[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \x_13_reg_1737[15]_i_22 
       (.I0(sext_ln27_fu_362_p1[6]),
        .I1(add_ln30_fu_314_p2[8]),
        .I2(p_0_in),
        .I3(y_4_fu_326_p2[8]),
        .I4(add_ln30_fu_314_p2[19]),
        .I5(y_4_fu_326_p2[19]),
        .O(\x_13_reg_1737[15]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \x_13_reg_1737[15]_i_23 
       (.I0(sext_ln27_fu_362_p1[5]),
        .I1(add_ln30_fu_314_p2[7]),
        .I2(p_0_in),
        .I3(y_4_fu_326_p2[7]),
        .I4(add_ln30_fu_314_p2[19]),
        .I5(y_4_fu_326_p2[19]),
        .O(\x_13_reg_1737[15]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \x_13_reg_1737[15]_i_24 
       (.I0(sext_ln27_fu_362_p1[4]),
        .I1(add_ln30_fu_314_p2[6]),
        .I2(p_0_in),
        .I3(y_4_fu_326_p2[6]),
        .I4(add_ln30_fu_314_p2[19]),
        .I5(y_4_fu_326_p2[19]),
        .O(\x_13_reg_1737[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \x_13_reg_1737[15]_i_25 
       (.I0(sext_ln27_fu_362_p1[3]),
        .I1(add_ln30_fu_314_p2[5]),
        .I2(p_0_in),
        .I3(y_4_fu_326_p2[5]),
        .I4(add_ln30_fu_314_p2[19]),
        .I5(y_4_fu_326_p2[19]),
        .O(\x_13_reg_1737[15]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \x_13_reg_1737[15]_i_26 
       (.I0(sext_ln27_fu_362_p1[2]),
        .I1(add_ln30_fu_314_p2[4]),
        .I2(p_0_in),
        .I3(y_4_fu_326_p2[4]),
        .I4(add_ln30_fu_314_p2[19]),
        .I5(y_4_fu_326_p2[19]),
        .O(\x_13_reg_1737[15]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x_13_reg_1737[15]_i_27 
       (.I0(y_4_fu_326_p2[19]),
        .I1(add_ln30_fu_314_p2[19]),
        .I2(y_4_fu_326_p2[3]),
        .I3(p_0_in),
        .I4(add_ln30_fu_314_p2[3]),
        .O(\x_13_reg_1737[15]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_13_reg_1737[15]_i_3 
       (.I0(sext_ln27_2_fu_514_p1[12]),
        .I1(\tmp_5_reg_1720_reg[0]_i_1_n_12 ),
        .O(\x_13_reg_1737[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_13_reg_1737[15]_i_4 
       (.I0(sext_ln27_2_fu_514_p1[11]),
        .I1(\tmp_5_reg_1720_reg[0]_i_1_n_13 ),
        .O(\x_13_reg_1737[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_13_reg_1737[15]_i_5 
       (.I0(sext_ln27_2_fu_514_p1[10]),
        .I1(\tmp_5_reg_1720_reg[0]_i_1_n_14 ),
        .O(\x_13_reg_1737[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_13_reg_1737[15]_i_6 
       (.I0(sext_ln27_2_fu_514_p1[9]),
        .I1(\tmp_5_reg_1720_reg[0]_i_1_n_15 ),
        .O(\x_13_reg_1737[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_13_reg_1737[15]_i_7 
       (.I0(sext_ln27_2_fu_514_p1[8]),
        .I1(\y_13_reg_1742_reg[15]_i_2_n_8 ),
        .O(\x_13_reg_1737[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_13_reg_1737[15]_i_8 
       (.I0(sext_ln27_2_fu_514_p1[7]),
        .I1(\y_13_reg_1742_reg[15]_i_2_n_9 ),
        .O(\x_13_reg_1737[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_13_reg_1737[15]_i_9 
       (.I0(sext_ln27_2_fu_514_p1[6]),
        .I1(\y_13_reg_1742_reg[15]_i_2_n_10 ),
        .O(\x_13_reg_1737[15]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_13_reg_1737[20]_i_2 
       (.I0(sext_ln28_2_fu_528_p10),
        .O(\x_13_reg_1737[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_13_reg_1737[20]_i_3 
       (.I0(sext_ln27_2_fu_514_p1[16]),
        .I1(sext_ln27_2_fu_514_p1[17]),
        .O(\x_13_reg_1737[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_13_reg_1737[20]_i_4 
       (.I0(sext_ln27_2_fu_514_p1[15]),
        .I1(sext_ln27_2_fu_514_p1[16]),
        .O(\x_13_reg_1737[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_13_reg_1737[20]_i_5 
       (.I0(sext_ln28_2_fu_528_p10),
        .I1(sext_ln27_2_fu_514_p1[15]),
        .O(\x_13_reg_1737[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_13_reg_1737[20]_i_6 
       (.I0(sext_ln28_2_fu_528_p10),
        .I1(sext_ln27_2_fu_514_p1[14]),
        .O(\x_13_reg_1737[20]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_13_reg_1737[20]_i_7 
       (.I0(sext_ln27_2_fu_514_p1[13]),
        .I1(\tmp_5_reg_1720_reg[0]_i_1_n_11 ),
        .O(\x_13_reg_1737[20]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_13_reg_1737[7]_i_10 
       (.I0(\x_13_reg_1737_reg[7]_i_2_n_15 ),
        .I1(\y_13_reg_1742_reg[7]_i_2_n_11 ),
        .O(\x_13_reg_1737[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \x_13_reg_1737[7]_i_11 
       (.I0(\x_13_reg_1737_reg[15]_i_11_n_10 ),
        .I1(A__0[9]),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\x_13_reg_1737[7]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \x_13_reg_1737[7]_i_12 
       (.I0(\x_13_reg_1737_reg[15]_i_11_n_11 ),
        .I1(A__0[8]),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\x_13_reg_1737[7]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \x_13_reg_1737[7]_i_13 
       (.I0(\x_13_reg_1737_reg[15]_i_11_n_12 ),
        .I1(A__0[7]),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\x_13_reg_1737[7]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \x_13_reg_1737[7]_i_14 
       (.I0(\x_13_reg_1737_reg[15]_i_11_n_13 ),
        .I1(A__0[6]),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\x_13_reg_1737[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \x_13_reg_1737[7]_i_15 
       (.I0(\x_13_reg_1737_reg[15]_i_11_n_14 ),
        .I1(A__0[5]),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\x_13_reg_1737[7]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \x_13_reg_1737[7]_i_16 
       (.I0(\x_13_reg_1737_reg[15]_i_11_n_15 ),
        .I1(A__0[4]),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\x_13_reg_1737[7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_13_reg_1737[7]_i_17 
       (.I0(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .I1(A__0[3]),
        .O(\x_13_reg_1737[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_13_reg_1737[7]_i_18 
       (.I0(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .I1(A__0[2]),
        .O(\x_13_reg_1737[7]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_13_reg_1737[7]_i_3 
       (.I0(sext_ln27_2_fu_514_p1[4]),
        .I1(\y_13_reg_1742_reg[15]_i_2_n_12 ),
        .O(\x_13_reg_1737[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_13_reg_1737[7]_i_4 
       (.I0(sext_ln27_2_fu_514_p1[3]),
        .I1(\y_13_reg_1742_reg[15]_i_2_n_13 ),
        .O(\x_13_reg_1737[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_13_reg_1737[7]_i_5 
       (.I0(sext_ln27_2_fu_514_p1[2]),
        .I1(\y_13_reg_1742_reg[15]_i_2_n_14 ),
        .O(\x_13_reg_1737[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_13_reg_1737[7]_i_6 
       (.I0(sext_ln27_2_fu_514_p1[1]),
        .I1(\y_13_reg_1742_reg[15]_i_2_n_15 ),
        .O(\x_13_reg_1737[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_13_reg_1737[7]_i_7 
       (.I0(sext_ln27_2_fu_514_p1[0]),
        .I1(\y_13_reg_1742_reg[7]_i_2_n_8 ),
        .O(\x_13_reg_1737[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_13_reg_1737[7]_i_8 
       (.I0(\x_13_reg_1737_reg[7]_i_2_n_13 ),
        .I1(\y_13_reg_1742_reg[7]_i_2_n_9 ),
        .O(\x_13_reg_1737[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_13_reg_1737[7]_i_9 
       (.I0(\x_13_reg_1737_reg[7]_i_2_n_14 ),
        .I1(\y_13_reg_1742_reg[7]_i_2_n_10 ),
        .O(\x_13_reg_1737[7]_i_9_n_0 ));
  FDRE \x_13_reg_1737_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_13_fu_552_p2[0]),
        .Q(x_13_reg_1737[0]),
        .R(1'b0));
  FDRE \x_13_reg_1737_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_13_fu_552_p2[10]),
        .Q(x_13_reg_1737[10]),
        .R(1'b0));
  FDRE \x_13_reg_1737_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_13_fu_552_p2[11]),
        .Q(x_13_reg_1737[11]),
        .R(1'b0));
  FDRE \x_13_reg_1737_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_13_fu_552_p2[12]),
        .Q(x_13_reg_1737[12]),
        .R(1'b0));
  FDRE \x_13_reg_1737_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_13_fu_552_p2[13]),
        .Q(x_13_reg_1737[13]),
        .R(1'b0));
  FDRE \x_13_reg_1737_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_13_fu_552_p2[14]),
        .Q(x_13_reg_1737[14]),
        .R(1'b0));
  FDRE \x_13_reg_1737_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_13_fu_552_p2[15]),
        .Q(x_13_reg_1737[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_13_reg_1737_reg[15]_i_1 
       (.CI(\x_13_reg_1737_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\x_13_reg_1737_reg[15]_i_1_n_0 ,\x_13_reg_1737_reg[15]_i_1_n_1 ,\x_13_reg_1737_reg[15]_i_1_n_2 ,\x_13_reg_1737_reg[15]_i_1_n_3 ,\x_13_reg_1737_reg[15]_i_1_n_4 ,\x_13_reg_1737_reg[15]_i_1_n_5 ,\x_13_reg_1737_reg[15]_i_1_n_6 ,\x_13_reg_1737_reg[15]_i_1_n_7 }),
        .DI(sext_ln27_2_fu_514_p1[12:5]),
        .O(x_13_fu_552_p2[15:8]),
        .S({\x_13_reg_1737[15]_i_3_n_0 ,\x_13_reg_1737[15]_i_4_n_0 ,\x_13_reg_1737[15]_i_5_n_0 ,\x_13_reg_1737[15]_i_6_n_0 ,\x_13_reg_1737[15]_i_7_n_0 ,\x_13_reg_1737[15]_i_8_n_0 ,\x_13_reg_1737[15]_i_9_n_0 ,\x_13_reg_1737[15]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_13_reg_1737_reg[15]_i_11 
       (.CI(B0),
        .CI_TOP(1'b0),
        .CO({\x_13_reg_1737_reg[15]_i_11_n_0 ,\x_13_reg_1737_reg[15]_i_11_n_1 ,\x_13_reg_1737_reg[15]_i_11_n_2 ,\x_13_reg_1737_reg[15]_i_11_n_3 ,\x_13_reg_1737_reg[15]_i_11_n_4 ,\x_13_reg_1737_reg[15]_i_11_n_5 ,\x_13_reg_1737_reg[15]_i_11_n_6 ,\x_13_reg_1737_reg[15]_i_11_n_7 }),
        .DI({sext_ln27_fu_362_p1[8:2],1'b0}),
        .O({\x_13_reg_1737_reg[15]_i_11_n_8 ,\x_13_reg_1737_reg[15]_i_11_n_9 ,\x_13_reg_1737_reg[15]_i_11_n_10 ,\x_13_reg_1737_reg[15]_i_11_n_11 ,\x_13_reg_1737_reg[15]_i_11_n_12 ,\x_13_reg_1737_reg[15]_i_11_n_13 ,\x_13_reg_1737_reg[15]_i_11_n_14 ,\x_13_reg_1737_reg[15]_i_11_n_15 }),
        .S({\x_13_reg_1737[15]_i_20_n_0 ,\x_13_reg_1737[15]_i_21_n_0 ,\x_13_reg_1737[15]_i_22_n_0 ,\x_13_reg_1737[15]_i_23_n_0 ,\x_13_reg_1737[15]_i_24_n_0 ,\x_13_reg_1737[15]_i_25_n_0 ,\x_13_reg_1737[15]_i_26_n_0 ,\x_13_reg_1737[15]_i_27_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_13_reg_1737_reg[15]_i_2 
       (.CI(\x_13_reg_1737_reg[7]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\x_13_reg_1737_reg[15]_i_2_n_0 ,\x_13_reg_1737_reg[15]_i_2_n_1 ,\x_13_reg_1737_reg[15]_i_2_n_2 ,\x_13_reg_1737_reg[15]_i_2_n_3 ,\x_13_reg_1737_reg[15]_i_2_n_4 ,\x_13_reg_1737_reg[15]_i_2_n_5 ,\x_13_reg_1737_reg[15]_i_2_n_6 ,\x_13_reg_1737_reg[15]_i_2_n_7 }),
        .DI({\y_13_reg_1742_reg[20]_i_9_n_10 ,\y_13_reg_1742_reg[20]_i_9_n_11 ,\y_13_reg_1742_reg[20]_i_9_n_12 ,\y_13_reg_1742_reg[20]_i_9_n_13 ,\y_13_reg_1742_reg[20]_i_9_n_14 ,\y_13_reg_1742_reg[20]_i_9_n_15 ,\x_13_reg_1737_reg[15]_i_11_n_8 ,\x_13_reg_1737_reg[15]_i_11_n_9 }),
        .O(sext_ln27_2_fu_514_p1[12:5]),
        .S({\x_13_reg_1737[15]_i_12_n_0 ,\x_13_reg_1737[15]_i_13_n_0 ,\x_13_reg_1737[15]_i_14_n_0 ,\x_13_reg_1737[15]_i_15_n_0 ,\x_13_reg_1737[15]_i_16_n_0 ,\x_13_reg_1737[15]_i_17_n_0 ,\x_13_reg_1737[15]_i_18_n_0 ,\x_13_reg_1737[15]_i_19_n_0 }));
  FDRE \x_13_reg_1737_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_13_fu_552_p2[16]),
        .Q(x_13_reg_1737[16]),
        .R(1'b0));
  FDRE \x_13_reg_1737_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_13_fu_552_p2[17]),
        .Q(x_13_reg_1737[17]),
        .R(1'b0));
  FDRE \x_13_reg_1737_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_13_fu_552_p2[18]),
        .Q(x_13_reg_1737[18]),
        .R(1'b0));
  FDRE \x_13_reg_1737_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_13_fu_552_p2[19]),
        .Q(x_13_reg_1737[19]),
        .R(1'b0));
  FDRE \x_13_reg_1737_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_13_fu_552_p2[1]),
        .Q(x_13_reg_1737[1]),
        .R(1'b0));
  FDRE \x_13_reg_1737_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_13_fu_552_p2[20]),
        .Q(x_13_reg_1737[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_13_reg_1737_reg[20]_i_1 
       (.CI(\x_13_reg_1737_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_x_13_reg_1737_reg[20]_i_1_CO_UNCONNECTED [7:4],\x_13_reg_1737_reg[20]_i_1_n_4 ,\x_13_reg_1737_reg[20]_i_1_n_5 ,\x_13_reg_1737_reg[20]_i_1_n_6 ,\x_13_reg_1737_reg[20]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,sext_ln27_2_fu_514_p1[15],\x_13_reg_1737[20]_i_2_n_0 ,sext_ln28_2_fu_528_p10,sext_ln27_2_fu_514_p1[13]}),
        .O({\NLW_x_13_reg_1737_reg[20]_i_1_O_UNCONNECTED [7:5],x_13_fu_552_p2[20:16]}),
        .S({1'b0,1'b0,1'b0,\x_13_reg_1737[20]_i_3_n_0 ,\x_13_reg_1737[20]_i_4_n_0 ,\x_13_reg_1737[20]_i_5_n_0 ,\x_13_reg_1737[20]_i_6_n_0 ,\x_13_reg_1737[20]_i_7_n_0 }));
  FDRE \x_13_reg_1737_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_13_fu_552_p2[2]),
        .Q(x_13_reg_1737[2]),
        .R(1'b0));
  FDRE \x_13_reg_1737_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_13_fu_552_p2[3]),
        .Q(x_13_reg_1737[3]),
        .R(1'b0));
  FDRE \x_13_reg_1737_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_13_fu_552_p2[4]),
        .Q(x_13_reg_1737[4]),
        .R(1'b0));
  FDRE \x_13_reg_1737_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_13_fu_552_p2[5]),
        .Q(x_13_reg_1737[5]),
        .R(1'b0));
  FDRE \x_13_reg_1737_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_13_fu_552_p2[6]),
        .Q(x_13_reg_1737[6]),
        .R(1'b0));
  FDRE \x_13_reg_1737_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_13_fu_552_p2[7]),
        .Q(x_13_reg_1737[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_13_reg_1737_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\x_13_reg_1737_reg[7]_i_1_n_0 ,\x_13_reg_1737_reg[7]_i_1_n_1 ,\x_13_reg_1737_reg[7]_i_1_n_2 ,\x_13_reg_1737_reg[7]_i_1_n_3 ,\x_13_reg_1737_reg[7]_i_1_n_4 ,\x_13_reg_1737_reg[7]_i_1_n_5 ,\x_13_reg_1737_reg[7]_i_1_n_6 ,\x_13_reg_1737_reg[7]_i_1_n_7 }),
        .DI({sext_ln27_2_fu_514_p1[4:0],\x_13_reg_1737_reg[7]_i_2_n_13 ,\x_13_reg_1737_reg[7]_i_2_n_14 ,\x_13_reg_1737_reg[7]_i_2_n_15 }),
        .O(x_13_fu_552_p2[7:0]),
        .S({\x_13_reg_1737[7]_i_3_n_0 ,\x_13_reg_1737[7]_i_4_n_0 ,\x_13_reg_1737[7]_i_5_n_0 ,\x_13_reg_1737[7]_i_6_n_0 ,\x_13_reg_1737[7]_i_7_n_0 ,\x_13_reg_1737[7]_i_8_n_0 ,\x_13_reg_1737[7]_i_9_n_0 ,\x_13_reg_1737[7]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_13_reg_1737_reg[7]_i_2 
       (.CI(A),
        .CI_TOP(1'b0),
        .CO({\x_13_reg_1737_reg[7]_i_2_n_0 ,\x_13_reg_1737_reg[7]_i_2_n_1 ,\x_13_reg_1737_reg[7]_i_2_n_2 ,\x_13_reg_1737_reg[7]_i_2_n_3 ,\x_13_reg_1737_reg[7]_i_2_n_4 ,\x_13_reg_1737_reg[7]_i_2_n_5 ,\x_13_reg_1737_reg[7]_i_2_n_6 ,\x_13_reg_1737_reg[7]_i_2_n_7 }),
        .DI({\x_13_reg_1737_reg[15]_i_11_n_10 ,\x_13_reg_1737_reg[15]_i_11_n_11 ,\x_13_reg_1737_reg[15]_i_11_n_12 ,\x_13_reg_1737_reg[15]_i_11_n_13 ,\x_13_reg_1737_reg[15]_i_11_n_14 ,\x_13_reg_1737_reg[15]_i_11_n_15 ,1'b0,1'b0}),
        .O({sext_ln27_2_fu_514_p1[4:0],\x_13_reg_1737_reg[7]_i_2_n_13 ,\x_13_reg_1737_reg[7]_i_2_n_14 ,\x_13_reg_1737_reg[7]_i_2_n_15 }),
        .S({\x_13_reg_1737[7]_i_11_n_0 ,\x_13_reg_1737[7]_i_12_n_0 ,\x_13_reg_1737[7]_i_13_n_0 ,\x_13_reg_1737[7]_i_14_n_0 ,\x_13_reg_1737[7]_i_15_n_0 ,\x_13_reg_1737[7]_i_16_n_0 ,\x_13_reg_1737[7]_i_17_n_0 ,\x_13_reg_1737[7]_i_18_n_0 }));
  FDRE \x_13_reg_1737_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_13_fu_552_p2[8]),
        .Q(x_13_reg_1737[8]),
        .R(1'b0));
  FDRE \x_13_reg_1737_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_13_fu_552_p2[9]),
        .Q(x_13_reg_1737[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \x_26_reg_1752[7]_i_10 
       (.I0(x_23_fu_802_p3[0]),
        .I1(y_23_fu_810_p3__0[7]),
        .I2(y_23_fu_810_p3),
        .O(\x_26_reg_1752[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_26_reg_1752[7]_i_12 
       (.I0(\x_26_reg_1752_reg[7]_i_11_n_8 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_9_n_10 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\x_26_reg_1752[7]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_26_reg_1752[7]_i_13 
       (.I0(\x_26_reg_1752_reg[7]_i_11_n_9 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_9_n_11 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\x_26_reg_1752[7]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_26_reg_1752[7]_i_14 
       (.I0(\x_26_reg_1752_reg[7]_i_11_n_10 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_9_n_12 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\x_26_reg_1752[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_26_reg_1752[7]_i_15 
       (.I0(\x_26_reg_1752_reg[7]_i_11_n_11 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_9_n_13 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\x_26_reg_1752[7]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_26_reg_1752[7]_i_16 
       (.I0(\x_26_reg_1752_reg[7]_i_11_n_12 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_9_n_14 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\x_26_reg_1752[7]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_26_reg_1752[7]_i_17 
       (.I0(\x_26_reg_1752_reg[7]_i_11_n_13 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_9_n_15 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\x_26_reg_1752[7]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_26_reg_1752[7]_i_18 
       (.I0(\x_26_reg_1752_reg[7]_i_11_n_14 ),
        .I1(\y_26_reg_1758_reg[7]_i_13_n_8 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\x_26_reg_1752[7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_26_reg_1752[7]_i_19 
       (.I0(\x_26_reg_1752_reg[7]_i_11_n_15 ),
        .I1(\y_26_reg_1758_reg[7]_i_13_n_9 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\x_26_reg_1752[7]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_26_reg_1752[7]_i_21 
       (.I0(\x_26_reg_1752_reg[7]_i_20_n_8 ),
        .I1(\add_ln43_9_reg_1781_reg[14]_i_11_n_11 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\x_26_reg_1752[7]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_26_reg_1752[7]_i_22 
       (.I0(\x_26_reg_1752_reg[7]_i_20_n_9 ),
        .I1(\add_ln43_9_reg_1781_reg[14]_i_11_n_12 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\x_26_reg_1752[7]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_26_reg_1752[7]_i_23 
       (.I0(\x_26_reg_1752_reg[7]_i_20_n_10 ),
        .I1(\add_ln43_9_reg_1781_reg[14]_i_11_n_13 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\x_26_reg_1752[7]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_26_reg_1752[7]_i_24 
       (.I0(\x_26_reg_1752_reg[7]_i_20_n_11 ),
        .I1(\add_ln43_9_reg_1781_reg[14]_i_11_n_14 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\x_26_reg_1752[7]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_26_reg_1752[7]_i_25 
       (.I0(\x_26_reg_1752_reg[7]_i_20_n_12 ),
        .I1(\add_ln43_9_reg_1781_reg[14]_i_11_n_15 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\x_26_reg_1752[7]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_26_reg_1752[7]_i_26 
       (.I0(\x_26_reg_1752_reg[7]_i_20_n_13 ),
        .I1(\y_26_reg_1758_reg[7]_i_23_n_8 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\x_26_reg_1752[7]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_26_reg_1752[7]_i_27 
       (.I0(\x_26_reg_1752_reg[7]_i_20_n_14 ),
        .I1(\y_26_reg_1758_reg[7]_i_23_n_9 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\x_26_reg_1752[7]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_26_reg_1752[7]_i_28 
       (.I0(\x_26_reg_1752_reg[7]_i_20_n_15 ),
        .I1(\y_26_reg_1758_reg[7]_i_23_n_10 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\x_26_reg_1752[7]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_26_reg_1752[7]_i_29 
       (.I0(x_12_reg_1727[7]),
        .I1(x_13_reg_1737[7]),
        .I2(tmp_5_reg_1720),
        .O(x_14_fu_564_p3[7]));
  LUT3 #(
    .INIT(8'h96)) 
    \x_26_reg_1752[7]_i_3 
       (.I0(x_23_fu_802_p3[7]),
        .I1(y_23_fu_810_p3__0[14]),
        .I2(y_23_fu_810_p3),
        .O(\x_26_reg_1752[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_26_reg_1752[7]_i_30 
       (.I0(x_12_reg_1727[6]),
        .I1(x_13_reg_1737[6]),
        .I2(tmp_5_reg_1720),
        .O(x_14_fu_564_p3[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_26_reg_1752[7]_i_31 
       (.I0(x_12_reg_1727[5]),
        .I1(x_13_reg_1737[5]),
        .I2(tmp_5_reg_1720),
        .O(x_14_fu_564_p3[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_26_reg_1752[7]_i_32 
       (.I0(x_12_reg_1727[4]),
        .I1(x_13_reg_1737[4]),
        .I2(tmp_5_reg_1720),
        .O(x_14_fu_564_p3[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_26_reg_1752[7]_i_33 
       (.I0(x_12_reg_1727[3]),
        .I1(x_13_reg_1737[3]),
        .I2(tmp_5_reg_1720),
        .O(x_14_fu_564_p3[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_26_reg_1752[7]_i_34 
       (.I0(x_12_reg_1727[2]),
        .I1(x_13_reg_1737[2]),
        .I2(tmp_5_reg_1720),
        .O(x_14_fu_564_p3[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_26_reg_1752[7]_i_35 
       (.I0(x_12_reg_1727[1]),
        .I1(x_13_reg_1737[1]),
        .I2(tmp_5_reg_1720),
        .O(x_14_fu_564_p3[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \x_26_reg_1752[7]_i_36 
       (.I0(x_12_reg_1727[0]),
        .I1(x_13_reg_1737[0]),
        .I2(tmp_5_reg_1720),
        .O(x_14_fu_564_p3[0]));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \x_26_reg_1752[7]_i_37 
       (.I0(x_13_reg_1737[7]),
        .I1(x_12_reg_1727[7]),
        .I2(y_12_reg_1732[11]),
        .I3(y_13_reg_1742[11]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\x_26_reg_1752[7]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \x_26_reg_1752[7]_i_38 
       (.I0(x_13_reg_1737[6]),
        .I1(x_12_reg_1727[6]),
        .I2(y_12_reg_1732[10]),
        .I3(y_13_reg_1742[10]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\x_26_reg_1752[7]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \x_26_reg_1752[7]_i_39 
       (.I0(x_13_reg_1737[5]),
        .I1(x_12_reg_1727[5]),
        .I2(y_12_reg_1732[9]),
        .I3(y_13_reg_1742[9]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\x_26_reg_1752[7]_i_39_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_26_reg_1752[7]_i_4 
       (.I0(x_23_fu_802_p3[6]),
        .I1(y_23_fu_810_p3__0[13]),
        .I2(y_23_fu_810_p3),
        .O(\x_26_reg_1752[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \x_26_reg_1752[7]_i_40 
       (.I0(x_13_reg_1737[4]),
        .I1(x_12_reg_1727[4]),
        .I2(y_12_reg_1732[8]),
        .I3(y_13_reg_1742[8]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\x_26_reg_1752[7]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \x_26_reg_1752[7]_i_41 
       (.I0(x_13_reg_1737[3]),
        .I1(x_12_reg_1727[3]),
        .I2(y_12_reg_1732[7]),
        .I3(y_13_reg_1742[7]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\x_26_reg_1752[7]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \x_26_reg_1752[7]_i_42 
       (.I0(x_13_reg_1737[2]),
        .I1(x_12_reg_1727[2]),
        .I2(y_12_reg_1732[6]),
        .I3(y_13_reg_1742[6]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\x_26_reg_1752[7]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \x_26_reg_1752[7]_i_43 
       (.I0(x_13_reg_1737[1]),
        .I1(x_12_reg_1727[1]),
        .I2(y_12_reg_1732[5]),
        .I3(y_13_reg_1742[5]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\x_26_reg_1752[7]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \x_26_reg_1752[7]_i_44 
       (.I0(x_13_reg_1737[0]),
        .I1(x_12_reg_1727[0]),
        .I2(y_12_reg_1732[4]),
        .I3(y_13_reg_1742[4]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\x_26_reg_1752[7]_i_44_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_26_reg_1752[7]_i_5 
       (.I0(x_23_fu_802_p3[5]),
        .I1(y_23_fu_810_p3__0[12]),
        .I2(y_23_fu_810_p3),
        .O(\x_26_reg_1752[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_26_reg_1752[7]_i_6 
       (.I0(x_23_fu_802_p3[4]),
        .I1(y_23_fu_810_p3__0[11]),
        .I2(y_23_fu_810_p3),
        .O(\x_26_reg_1752[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_26_reg_1752[7]_i_7 
       (.I0(x_23_fu_802_p3[3]),
        .I1(y_23_fu_810_p3__0[10]),
        .I2(y_23_fu_810_p3),
        .O(\x_26_reg_1752[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_26_reg_1752[7]_i_8 
       (.I0(x_23_fu_802_p3[2]),
        .I1(y_23_fu_810_p3__0[9]),
        .I2(y_23_fu_810_p3),
        .O(\x_26_reg_1752[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_26_reg_1752[7]_i_9 
       (.I0(x_23_fu_802_p3[1]),
        .I1(y_23_fu_810_p3__0[8]),
        .I2(y_23_fu_810_p3),
        .O(\x_26_reg_1752[7]_i_9_n_0 ));
  FDRE \x_26_reg_1752_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_886_p3[0]),
        .Q(x_26_reg_1752[0]),
        .R(1'b0));
  FDRE \x_26_reg_1752_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_886_p3[1]),
        .Q(x_26_reg_1752[1]),
        .R(1'b0));
  FDRE \x_26_reg_1752_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_886_p3[2]),
        .Q(x_26_reg_1752[2]),
        .R(1'b0));
  FDRE \x_26_reg_1752_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_886_p3[3]),
        .Q(x_26_reg_1752[3]),
        .R(1'b0));
  FDRE \x_26_reg_1752_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_886_p3[4]),
        .Q(x_26_reg_1752[4]),
        .R(1'b0));
  FDRE \x_26_reg_1752_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_886_p3[5]),
        .Q(x_26_reg_1752[5]),
        .R(1'b0));
  FDRE \x_26_reg_1752_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_886_p3[6]),
        .Q(x_26_reg_1752[6]),
        .R(1'b0));
  FDRE \x_26_reg_1752_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_886_p3[7]),
        .Q(x_26_reg_1752[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_26_reg_1752_reg[7]_i_1 
       (.CI(y_23_fu_810_p3),
        .CI_TOP(1'b0),
        .CO({\x_26_reg_1752_reg[7]_i_1_n_0 ,\x_26_reg_1752_reg[7]_i_1_n_1 ,\x_26_reg_1752_reg[7]_i_1_n_2 ,\x_26_reg_1752_reg[7]_i_1_n_3 ,\x_26_reg_1752_reg[7]_i_1_n_4 ,\x_26_reg_1752_reg[7]_i_1_n_5 ,\x_26_reg_1752_reg[7]_i_1_n_6 ,\x_26_reg_1752_reg[7]_i_1_n_7 }),
        .DI(x_23_fu_802_p3[7:0]),
        .O(x_26_fu_886_p3[7:0]),
        .S({\x_26_reg_1752[7]_i_3_n_0 ,\x_26_reg_1752[7]_i_4_n_0 ,\x_26_reg_1752[7]_i_5_n_0 ,\x_26_reg_1752[7]_i_6_n_0 ,\x_26_reg_1752[7]_i_7_n_0 ,\x_26_reg_1752[7]_i_8_n_0 ,\x_26_reg_1752[7]_i_9_n_0 ,\x_26_reg_1752[7]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_26_reg_1752_reg[7]_i_11 
       (.CI(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .CI_TOP(1'b0),
        .CO({\x_26_reg_1752_reg[7]_i_11_n_0 ,\x_26_reg_1752_reg[7]_i_11_n_1 ,\x_26_reg_1752_reg[7]_i_11_n_2 ,\x_26_reg_1752_reg[7]_i_11_n_3 ,\x_26_reg_1752_reg[7]_i_11_n_4 ,\x_26_reg_1752_reg[7]_i_11_n_5 ,\x_26_reg_1752_reg[7]_i_11_n_6 ,\x_26_reg_1752_reg[7]_i_11_n_7 }),
        .DI({\x_26_reg_1752_reg[7]_i_20_n_8 ,\x_26_reg_1752_reg[7]_i_20_n_9 ,\x_26_reg_1752_reg[7]_i_20_n_10 ,\x_26_reg_1752_reg[7]_i_20_n_11 ,\x_26_reg_1752_reg[7]_i_20_n_12 ,\x_26_reg_1752_reg[7]_i_20_n_13 ,\x_26_reg_1752_reg[7]_i_20_n_14 ,\x_26_reg_1752_reg[7]_i_20_n_15 }),
        .O({\x_26_reg_1752_reg[7]_i_11_n_8 ,\x_26_reg_1752_reg[7]_i_11_n_9 ,\x_26_reg_1752_reg[7]_i_11_n_10 ,\x_26_reg_1752_reg[7]_i_11_n_11 ,\x_26_reg_1752_reg[7]_i_11_n_12 ,\x_26_reg_1752_reg[7]_i_11_n_13 ,\x_26_reg_1752_reg[7]_i_11_n_14 ,\x_26_reg_1752_reg[7]_i_11_n_15 }),
        .S({\x_26_reg_1752[7]_i_21_n_0 ,\x_26_reg_1752[7]_i_22_n_0 ,\x_26_reg_1752[7]_i_23_n_0 ,\x_26_reg_1752[7]_i_24_n_0 ,\x_26_reg_1752[7]_i_25_n_0 ,\x_26_reg_1752[7]_i_26_n_0 ,\x_26_reg_1752[7]_i_27_n_0 ,\x_26_reg_1752[7]_i_28_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_26_reg_1752_reg[7]_i_2 
       (.CI(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .CI_TOP(1'b0),
        .CO({\x_26_reg_1752_reg[7]_i_2_n_0 ,\x_26_reg_1752_reg[7]_i_2_n_1 ,\x_26_reg_1752_reg[7]_i_2_n_2 ,\x_26_reg_1752_reg[7]_i_2_n_3 ,\x_26_reg_1752_reg[7]_i_2_n_4 ,\x_26_reg_1752_reg[7]_i_2_n_5 ,\x_26_reg_1752_reg[7]_i_2_n_6 ,\x_26_reg_1752_reg[7]_i_2_n_7 }),
        .DI({\x_26_reg_1752_reg[7]_i_11_n_8 ,\x_26_reg_1752_reg[7]_i_11_n_9 ,\x_26_reg_1752_reg[7]_i_11_n_10 ,\x_26_reg_1752_reg[7]_i_11_n_11 ,\x_26_reg_1752_reg[7]_i_11_n_12 ,\x_26_reg_1752_reg[7]_i_11_n_13 ,\x_26_reg_1752_reg[7]_i_11_n_14 ,\x_26_reg_1752_reg[7]_i_11_n_15 }),
        .O(x_23_fu_802_p3[7:0]),
        .S({\x_26_reg_1752[7]_i_12_n_0 ,\x_26_reg_1752[7]_i_13_n_0 ,\x_26_reg_1752[7]_i_14_n_0 ,\x_26_reg_1752[7]_i_15_n_0 ,\x_26_reg_1752[7]_i_16_n_0 ,\x_26_reg_1752[7]_i_17_n_0 ,\x_26_reg_1752[7]_i_18_n_0 ,\x_26_reg_1752[7]_i_19_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_26_reg_1752_reg[7]_i_20 
       (.CI(sel),
        .CI_TOP(1'b0),
        .CO({\x_26_reg_1752_reg[7]_i_20_n_0 ,\x_26_reg_1752_reg[7]_i_20_n_1 ,\x_26_reg_1752_reg[7]_i_20_n_2 ,\x_26_reg_1752_reg[7]_i_20_n_3 ,\x_26_reg_1752_reg[7]_i_20_n_4 ,\x_26_reg_1752_reg[7]_i_20_n_5 ,\x_26_reg_1752_reg[7]_i_20_n_6 ,\x_26_reg_1752_reg[7]_i_20_n_7 }),
        .DI(x_14_fu_564_p3[7:0]),
        .O({\x_26_reg_1752_reg[7]_i_20_n_8 ,\x_26_reg_1752_reg[7]_i_20_n_9 ,\x_26_reg_1752_reg[7]_i_20_n_10 ,\x_26_reg_1752_reg[7]_i_20_n_11 ,\x_26_reg_1752_reg[7]_i_20_n_12 ,\x_26_reg_1752_reg[7]_i_20_n_13 ,\x_26_reg_1752_reg[7]_i_20_n_14 ,\x_26_reg_1752_reg[7]_i_20_n_15 }),
        .S({\x_26_reg_1752[7]_i_37_n_0 ,\x_26_reg_1752[7]_i_38_n_0 ,\x_26_reg_1752[7]_i_39_n_0 ,\x_26_reg_1752[7]_i_40_n_0 ,\x_26_reg_1752[7]_i_41_n_0 ,\x_26_reg_1752[7]_i_42_n_0 ,\x_26_reg_1752[7]_i_43_n_0 ,\x_26_reg_1752[7]_i_44_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[11]_i_10 
       (.I0(x_29_fu_977_p3[8]),
        .I1(y_29_fu_984_p3__0[17]),
        .I2(y_29_fu_984_p3),
        .O(\x_38_reg_1801[11]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[11]_i_11 
       (.I0(xs_8_reg_1764[3]),
        .I1(y_26_reg_1758[19]),
        .I2(tmp_10_reg_1774),
        .O(\x_38_reg_1801[11]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[11]_i_12 
       (.I0(xs_8_reg_1764[2]),
        .I1(y_26_reg_1758[18]),
        .I2(tmp_10_reg_1774),
        .O(\x_38_reg_1801[11]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[11]_i_13 
       (.I0(xs_8_reg_1764[1]),
        .I1(y_26_reg_1758[17]),
        .I2(tmp_10_reg_1774),
        .O(\x_38_reg_1801[11]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[11]_i_14 
       (.I0(xs_8_reg_1764[0]),
        .I1(y_26_reg_1758[16]),
        .I2(tmp_10_reg_1774),
        .O(\x_38_reg_1801[11]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[11]_i_3 
       (.I0(x_35_fu_1127_p3[8]),
        .I1(y_35_fu_1135_p3__0[19]),
        .I2(y_35_fu_1135_p3),
        .O(\x_38_reg_1801[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[11]_i_5 
       (.I0(x_32_fu_1051_p3[9]),
        .I1(y_32_fu_1059_p3__0[19]),
        .I2(y_32_fu_1059_p3),
        .O(\x_38_reg_1801[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[11]_i_6 
       (.I0(x_32_fu_1051_p3[8]),
        .I1(y_32_fu_1059_p3__0[18]),
        .I2(y_32_fu_1059_p3),
        .O(\x_38_reg_1801[11]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[11]_i_8 
       (.I0(x_29_fu_977_p3[10]),
        .I1(y_29_fu_984_p3__0[19]),
        .I2(y_29_fu_984_p3),
        .O(\x_38_reg_1801[11]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[11]_i_9 
       (.I0(x_29_fu_977_p3[9]),
        .I1(y_29_fu_984_p3__0[18]),
        .I2(y_29_fu_984_p3),
        .O(\x_38_reg_1801[11]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_10 
       (.I0(x_35_fu_1127_p3[0]),
        .I1(y_35_fu_1135_p3__0[11]),
        .I2(y_35_fu_1135_p3),
        .O(\x_38_reg_1801[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_12 
       (.I0(x_32_fu_1051_p3[7]),
        .I1(y_32_fu_1059_p3__0[17]),
        .I2(y_32_fu_1059_p3),
        .O(\x_38_reg_1801[7]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_13 
       (.I0(x_32_fu_1051_p3[6]),
        .I1(y_32_fu_1059_p3__0[16]),
        .I2(y_32_fu_1059_p3),
        .O(\x_38_reg_1801[7]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_14 
       (.I0(x_32_fu_1051_p3[5]),
        .I1(y_32_fu_1059_p3__0[15]),
        .I2(y_32_fu_1059_p3),
        .O(\x_38_reg_1801[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_15 
       (.I0(x_32_fu_1051_p3[4]),
        .I1(y_32_fu_1059_p3__0[14]),
        .I2(y_32_fu_1059_p3),
        .O(\x_38_reg_1801[7]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_16 
       (.I0(x_32_fu_1051_p3[3]),
        .I1(y_32_fu_1059_p3__0[13]),
        .I2(y_32_fu_1059_p3),
        .O(\x_38_reg_1801[7]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_17 
       (.I0(x_32_fu_1051_p3[2]),
        .I1(y_32_fu_1059_p3__0[12]),
        .I2(y_32_fu_1059_p3),
        .O(\x_38_reg_1801[7]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_18 
       (.I0(x_32_fu_1051_p3[1]),
        .I1(y_32_fu_1059_p3__0[11]),
        .I2(y_32_fu_1059_p3),
        .O(\x_38_reg_1801[7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_19 
       (.I0(x_32_fu_1051_p3[0]),
        .I1(y_32_fu_1059_p3__0[10]),
        .I2(y_32_fu_1059_p3),
        .O(\x_38_reg_1801[7]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_21 
       (.I0(x_29_fu_977_p3[7]),
        .I1(y_29_fu_984_p3__0[16]),
        .I2(y_29_fu_984_p3),
        .O(\x_38_reg_1801[7]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_22 
       (.I0(x_29_fu_977_p3[6]),
        .I1(y_29_fu_984_p3__0[15]),
        .I2(y_29_fu_984_p3),
        .O(\x_38_reg_1801[7]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_23 
       (.I0(x_29_fu_977_p3[5]),
        .I1(y_29_fu_984_p3__0[14]),
        .I2(y_29_fu_984_p3),
        .O(\x_38_reg_1801[7]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_24 
       (.I0(x_29_fu_977_p3[4]),
        .I1(y_29_fu_984_p3__0[13]),
        .I2(y_29_fu_984_p3),
        .O(\x_38_reg_1801[7]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_25 
       (.I0(x_29_fu_977_p3[3]),
        .I1(y_29_fu_984_p3__0[12]),
        .I2(y_29_fu_984_p3),
        .O(\x_38_reg_1801[7]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_26 
       (.I0(x_29_fu_977_p3[2]),
        .I1(y_29_fu_984_p3__0[11]),
        .I2(y_29_fu_984_p3),
        .O(\x_38_reg_1801[7]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_27 
       (.I0(x_29_fu_977_p3[1]),
        .I1(y_29_fu_984_p3__0[10]),
        .I2(y_29_fu_984_p3),
        .O(\x_38_reg_1801[7]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_28 
       (.I0(x_29_fu_977_p3[0]),
        .I1(y_29_fu_984_p3__0[9]),
        .I2(y_29_fu_984_p3),
        .O(\x_38_reg_1801[7]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_29 
       (.I0(x_26_reg_1752[7]),
        .I1(y_26_reg_1758[15]),
        .I2(tmp_10_reg_1774),
        .O(\x_38_reg_1801[7]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_3 
       (.I0(x_35_fu_1127_p3[7]),
        .I1(y_35_fu_1135_p3__0[18]),
        .I2(y_35_fu_1135_p3),
        .O(\x_38_reg_1801[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_30 
       (.I0(x_26_reg_1752[6]),
        .I1(y_26_reg_1758[14]),
        .I2(tmp_10_reg_1774),
        .O(\x_38_reg_1801[7]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_31 
       (.I0(x_26_reg_1752[5]),
        .I1(y_26_reg_1758[13]),
        .I2(tmp_10_reg_1774),
        .O(\x_38_reg_1801[7]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_32 
       (.I0(x_26_reg_1752[4]),
        .I1(y_26_reg_1758[12]),
        .I2(tmp_10_reg_1774),
        .O(\x_38_reg_1801[7]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_33 
       (.I0(x_26_reg_1752[3]),
        .I1(y_26_reg_1758[11]),
        .I2(tmp_10_reg_1774),
        .O(\x_38_reg_1801[7]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_34 
       (.I0(x_26_reg_1752[2]),
        .I1(y_26_reg_1758[10]),
        .I2(tmp_10_reg_1774),
        .O(\x_38_reg_1801[7]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_35 
       (.I0(x_26_reg_1752[1]),
        .I1(y_26_reg_1758[9]),
        .I2(tmp_10_reg_1774),
        .O(\x_38_reg_1801[7]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_36 
       (.I0(x_26_reg_1752[0]),
        .I1(y_26_reg_1758[8]),
        .I2(tmp_10_reg_1774),
        .O(\x_38_reg_1801[7]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_4 
       (.I0(x_35_fu_1127_p3[6]),
        .I1(y_35_fu_1135_p3__0[17]),
        .I2(y_35_fu_1135_p3),
        .O(\x_38_reg_1801[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_5 
       (.I0(x_35_fu_1127_p3[5]),
        .I1(y_35_fu_1135_p3__0[16]),
        .I2(y_35_fu_1135_p3),
        .O(\x_38_reg_1801[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_6 
       (.I0(x_35_fu_1127_p3[4]),
        .I1(y_35_fu_1135_p3__0[15]),
        .I2(y_35_fu_1135_p3),
        .O(\x_38_reg_1801[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_7 
       (.I0(x_35_fu_1127_p3[3]),
        .I1(y_35_fu_1135_p3__0[14]),
        .I2(y_35_fu_1135_p3),
        .O(\x_38_reg_1801[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_8 
       (.I0(x_35_fu_1127_p3[2]),
        .I1(y_35_fu_1135_p3__0[13]),
        .I2(y_35_fu_1135_p3),
        .O(\x_38_reg_1801[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_38_reg_1801[7]_i_9 
       (.I0(x_35_fu_1127_p3[1]),
        .I1(y_35_fu_1135_p3__0[12]),
        .I2(y_35_fu_1135_p3),
        .O(\x_38_reg_1801[7]_i_9_n_0 ));
  FDRE \x_38_reg_1801_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_38_fu_1203_p3[0]),
        .Q(x_38_reg_1801[0]),
        .R(1'b0));
  FDRE \x_38_reg_1801_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_38_fu_1203_p3[10]),
        .Q(x_38_reg_1801[10]),
        .R(1'b0));
  FDRE \x_38_reg_1801_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_38_fu_1203_p3[11]),
        .Q(x_38_reg_1801[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_38_reg_1801_reg[11]_i_1 
       (.CI(\x_38_reg_1801_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\x_38_reg_1801_reg[11]_i_1_n_0 ,\x_38_reg_1801_reg[11]_i_1_n_1 ,\x_38_reg_1801_reg[11]_i_1_n_2 ,\x_38_reg_1801_reg[11]_i_1_n_3 ,\x_38_reg_1801_reg[11]_i_1_n_4 ,\x_38_reg_1801_reg[11]_i_1_n_5 ,\x_38_reg_1801_reg[11]_i_1_n_6 ,\x_38_reg_1801_reg[11]_i_1_n_7 }),
        .DI(x_35_fu_1127_p3[15:8]),
        .O(x_38_fu_1203_p3[15:8]),
        .S({x_35_fu_1127_p3[15:9],\x_38_reg_1801[11]_i_3_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_38_reg_1801_reg[11]_i_2 
       (.CI(\x_38_reg_1801_reg[7]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\x_38_reg_1801_reg[11]_i_2_n_0 ,\x_38_reg_1801_reg[11]_i_2_n_1 ,\x_38_reg_1801_reg[11]_i_2_n_2 ,\x_38_reg_1801_reg[11]_i_2_n_3 ,\x_38_reg_1801_reg[11]_i_2_n_4 ,\x_38_reg_1801_reg[11]_i_2_n_5 ,\x_38_reg_1801_reg[11]_i_2_n_6 ,\x_38_reg_1801_reg[11]_i_2_n_7 }),
        .DI(x_32_fu_1051_p3[15:8]),
        .O(x_35_fu_1127_p3[15:8]),
        .S({x_32_fu_1051_p3[15:10],\x_38_reg_1801[11]_i_5_n_0 ,\x_38_reg_1801[11]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_38_reg_1801_reg[11]_i_4 
       (.CI(\x_38_reg_1801_reg[7]_i_11_n_0 ),
        .CI_TOP(1'b0),
        .CO({\x_38_reg_1801_reg[11]_i_4_n_0 ,\x_38_reg_1801_reg[11]_i_4_n_1 ,\x_38_reg_1801_reg[11]_i_4_n_2 ,\x_38_reg_1801_reg[11]_i_4_n_3 ,\x_38_reg_1801_reg[11]_i_4_n_4 ,\x_38_reg_1801_reg[11]_i_4_n_5 ,\x_38_reg_1801_reg[11]_i_4_n_6 ,\x_38_reg_1801_reg[11]_i_4_n_7 }),
        .DI(x_29_fu_977_p3[15:8]),
        .O(x_32_fu_1051_p3[15:8]),
        .S({x_29_fu_977_p3[15:11],\x_38_reg_1801[11]_i_8_n_0 ,\x_38_reg_1801[11]_i_9_n_0 ,\x_38_reg_1801[11]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_38_reg_1801_reg[11]_i_7 
       (.CI(\x_38_reg_1801_reg[7]_i_20_n_0 ),
        .CI_TOP(1'b0),
        .CO({\x_38_reg_1801_reg[11]_i_7_n_0 ,\x_38_reg_1801_reg[11]_i_7_n_1 ,\x_38_reg_1801_reg[11]_i_7_n_2 ,\x_38_reg_1801_reg[11]_i_7_n_3 ,\x_38_reg_1801_reg[11]_i_7_n_4 ,\x_38_reg_1801_reg[11]_i_7_n_5 ,\x_38_reg_1801_reg[11]_i_7_n_6 ,\x_38_reg_1801_reg[11]_i_7_n_7 }),
        .DI(xs_8_reg_1764[7:0]),
        .O(x_29_fu_977_p3[15:8]),
        .S({xs_8_reg_1764[7:4],\x_38_reg_1801[11]_i_11_n_0 ,\x_38_reg_1801[11]_i_12_n_0 ,\x_38_reg_1801[11]_i_13_n_0 ,\x_38_reg_1801[11]_i_14_n_0 }));
  FDRE \x_38_reg_1801_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_38_fu_1203_p3[1]),
        .Q(x_38_reg_1801[1]),
        .R(1'b0));
  FDRE \x_38_reg_1801_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_38_fu_1203_p3[2]),
        .Q(x_38_reg_1801[2]),
        .R(1'b0));
  FDRE \x_38_reg_1801_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_38_fu_1203_p3[3]),
        .Q(x_38_reg_1801[3]),
        .R(1'b0));
  FDRE \x_38_reg_1801_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_38_fu_1203_p3[4]),
        .Q(x_38_reg_1801[4]),
        .R(1'b0));
  FDRE \x_38_reg_1801_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_38_fu_1203_p3[5]),
        .Q(x_38_reg_1801[5]),
        .R(1'b0));
  FDRE \x_38_reg_1801_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_38_fu_1203_p3[6]),
        .Q(x_38_reg_1801[6]),
        .R(1'b0));
  FDRE \x_38_reg_1801_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_38_fu_1203_p3[7]),
        .Q(x_38_reg_1801[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_38_reg_1801_reg[7]_i_1 
       (.CI(y_35_fu_1135_p3),
        .CI_TOP(1'b0),
        .CO({\x_38_reg_1801_reg[7]_i_1_n_0 ,\x_38_reg_1801_reg[7]_i_1_n_1 ,\x_38_reg_1801_reg[7]_i_1_n_2 ,\x_38_reg_1801_reg[7]_i_1_n_3 ,\x_38_reg_1801_reg[7]_i_1_n_4 ,\x_38_reg_1801_reg[7]_i_1_n_5 ,\x_38_reg_1801_reg[7]_i_1_n_6 ,\x_38_reg_1801_reg[7]_i_1_n_7 }),
        .DI(x_35_fu_1127_p3[7:0]),
        .O(x_38_fu_1203_p3[7:0]),
        .S({\x_38_reg_1801[7]_i_3_n_0 ,\x_38_reg_1801[7]_i_4_n_0 ,\x_38_reg_1801[7]_i_5_n_0 ,\x_38_reg_1801[7]_i_6_n_0 ,\x_38_reg_1801[7]_i_7_n_0 ,\x_38_reg_1801[7]_i_8_n_0 ,\x_38_reg_1801[7]_i_9_n_0 ,\x_38_reg_1801[7]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_38_reg_1801_reg[7]_i_11 
       (.CI(y_29_fu_984_p3),
        .CI_TOP(1'b0),
        .CO({\x_38_reg_1801_reg[7]_i_11_n_0 ,\x_38_reg_1801_reg[7]_i_11_n_1 ,\x_38_reg_1801_reg[7]_i_11_n_2 ,\x_38_reg_1801_reg[7]_i_11_n_3 ,\x_38_reg_1801_reg[7]_i_11_n_4 ,\x_38_reg_1801_reg[7]_i_11_n_5 ,\x_38_reg_1801_reg[7]_i_11_n_6 ,\x_38_reg_1801_reg[7]_i_11_n_7 }),
        .DI(x_29_fu_977_p3[7:0]),
        .O(x_32_fu_1051_p3[7:0]),
        .S({\x_38_reg_1801[7]_i_21_n_0 ,\x_38_reg_1801[7]_i_22_n_0 ,\x_38_reg_1801[7]_i_23_n_0 ,\x_38_reg_1801[7]_i_24_n_0 ,\x_38_reg_1801[7]_i_25_n_0 ,\x_38_reg_1801[7]_i_26_n_0 ,\x_38_reg_1801[7]_i_27_n_0 ,\x_38_reg_1801[7]_i_28_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_38_reg_1801_reg[7]_i_2 
       (.CI(y_32_fu_1059_p3),
        .CI_TOP(1'b0),
        .CO({\x_38_reg_1801_reg[7]_i_2_n_0 ,\x_38_reg_1801_reg[7]_i_2_n_1 ,\x_38_reg_1801_reg[7]_i_2_n_2 ,\x_38_reg_1801_reg[7]_i_2_n_3 ,\x_38_reg_1801_reg[7]_i_2_n_4 ,\x_38_reg_1801_reg[7]_i_2_n_5 ,\x_38_reg_1801_reg[7]_i_2_n_6 ,\x_38_reg_1801_reg[7]_i_2_n_7 }),
        .DI(x_32_fu_1051_p3[7:0]),
        .O(x_35_fu_1127_p3[7:0]),
        .S({\x_38_reg_1801[7]_i_12_n_0 ,\x_38_reg_1801[7]_i_13_n_0 ,\x_38_reg_1801[7]_i_14_n_0 ,\x_38_reg_1801[7]_i_15_n_0 ,\x_38_reg_1801[7]_i_16_n_0 ,\x_38_reg_1801[7]_i_17_n_0 ,\x_38_reg_1801[7]_i_18_n_0 ,\x_38_reg_1801[7]_i_19_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \x_38_reg_1801_reg[7]_i_20 
       (.CI(tmp_10_reg_1774),
        .CI_TOP(1'b0),
        .CO({\x_38_reg_1801_reg[7]_i_20_n_0 ,\x_38_reg_1801_reg[7]_i_20_n_1 ,\x_38_reg_1801_reg[7]_i_20_n_2 ,\x_38_reg_1801_reg[7]_i_20_n_3 ,\x_38_reg_1801_reg[7]_i_20_n_4 ,\x_38_reg_1801_reg[7]_i_20_n_5 ,\x_38_reg_1801_reg[7]_i_20_n_6 ,\x_38_reg_1801_reg[7]_i_20_n_7 }),
        .DI(x_26_reg_1752),
        .O(x_29_fu_977_p3[7:0]),
        .S({\x_38_reg_1801[7]_i_29_n_0 ,\x_38_reg_1801[7]_i_30_n_0 ,\x_38_reg_1801[7]_i_31_n_0 ,\x_38_reg_1801[7]_i_32_n_0 ,\x_38_reg_1801[7]_i_33_n_0 ,\x_38_reg_1801[7]_i_34_n_0 ,\x_38_reg_1801[7]_i_35_n_0 ,\x_38_reg_1801[7]_i_36_n_0 }));
  FDRE \x_38_reg_1801_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_38_fu_1203_p3[8]),
        .Q(x_38_reg_1801[8]),
        .R(1'b0));
  FDRE \x_38_reg_1801_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_38_fu_1203_p3[9]),
        .Q(x_38_reg_1801[9]),
        .R(1'b0));
  FDRE \xs_12_reg_1813_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_38_fu_1203_p3[12]),
        .Q(xs_12_reg_1813[0]),
        .R(1'b0));
  FDRE \xs_12_reg_1813_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_38_fu_1203_p3[13]),
        .Q(xs_12_reg_1813[1]),
        .R(1'b0));
  FDRE \xs_12_reg_1813_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_38_fu_1203_p3[14]),
        .Q(xs_12_reg_1813[2]),
        .R(1'b0));
  FDRE \xs_12_reg_1813_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_38_fu_1203_p3[15]),
        .Q(xs_12_reg_1813[3]),
        .R(1'b0));
  FDRE \xs_12_reg_1813_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_38_fu_1203_p3[16]),
        .Q(xs_12_reg_1813[4]),
        .R(1'b0));
  FDRE \xs_12_reg_1813_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_38_fu_1203_p3[17]),
        .Q(xs_12_reg_1813[5]),
        .R(1'b0));
  FDRE \xs_12_reg_1813_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_38_fu_1203_p3[18]),
        .Q(xs_12_reg_1813[6]),
        .R(1'b0));
  FDRE \xs_12_reg_1813_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_38_fu_1203_p3[19]),
        .Q(xs_12_reg_1813[7]),
        .R(1'b0));
  FDRE \xs_12_reg_1813_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_38_fu_1203_p3[20]),
        .Q(xs_12_reg_1813[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \xs_12_reg_1813_reg[8]_i_1 
       (.CI(\x_38_reg_1801_reg[11]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_xs_12_reg_1813_reg[8]_i_1_CO_UNCONNECTED [7:4],\xs_12_reg_1813_reg[8]_i_1_n_4 ,\xs_12_reg_1813_reg[8]_i_1_n_5 ,\xs_12_reg_1813_reg[8]_i_1_n_6 ,\xs_12_reg_1813_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,x_35_fu_1127_p3[19:16]}),
        .O({\NLW_xs_12_reg_1813_reg[8]_i_1_O_UNCONNECTED [7:5],x_38_fu_1203_p3[20:16]}),
        .S({1'b0,1'b0,1'b0,x_35_fu_1127_p3[20:16]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \xs_12_reg_1813_reg[8]_i_2 
       (.CI(\x_38_reg_1801_reg[11]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_xs_12_reg_1813_reg[8]_i_2_CO_UNCONNECTED [7:4],\xs_12_reg_1813_reg[8]_i_2_n_4 ,\xs_12_reg_1813_reg[8]_i_2_n_5 ,\xs_12_reg_1813_reg[8]_i_2_n_6 ,\xs_12_reg_1813_reg[8]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,x_32_fu_1051_p3[19:16]}),
        .O({\NLW_xs_12_reg_1813_reg[8]_i_2_O_UNCONNECTED [7:5],x_35_fu_1127_p3[20:16]}),
        .S({1'b0,1'b0,1'b0,x_32_fu_1051_p3[20:16]}));
  LUT3 #(
    .INIT(8'h96)) 
    \xs_8_reg_1764[0]_i_10 
       (.I0(\xs_8_reg_1764_reg[0]_i_8_n_11 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_3_n_13 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\xs_8_reg_1764[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \xs_8_reg_1764[0]_i_11 
       (.I0(\xs_8_reg_1764_reg[0]_i_8_n_12 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_3_n_14 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\xs_8_reg_1764[0]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \xs_8_reg_1764[0]_i_12 
       (.I0(\xs_8_reg_1764_reg[0]_i_8_n_13 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_3_n_15 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\xs_8_reg_1764[0]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \xs_8_reg_1764[0]_i_13 
       (.I0(\xs_8_reg_1764_reg[0]_i_8_n_14 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_9_n_8 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\xs_8_reg_1764[0]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \xs_8_reg_1764[0]_i_14 
       (.I0(\xs_8_reg_1764_reg[0]_i_8_n_15 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_9_n_9 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\xs_8_reg_1764[0]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \xs_8_reg_1764[0]_i_16 
       (.I0(\xs_8_reg_1764_reg[0]_i_15_n_9 ),
        .I1(\add_ln43_9_reg_1781_reg[14]_i_9_n_12 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\xs_8_reg_1764[0]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \xs_8_reg_1764[0]_i_17 
       (.I0(\xs_8_reg_1764_reg[0]_i_15_n_10 ),
        .I1(\add_ln43_9_reg_1781_reg[14]_i_9_n_13 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\xs_8_reg_1764[0]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \xs_8_reg_1764[0]_i_18 
       (.I0(\xs_8_reg_1764_reg[0]_i_15_n_11 ),
        .I1(\add_ln43_9_reg_1781_reg[14]_i_9_n_14 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\xs_8_reg_1764[0]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \xs_8_reg_1764[0]_i_19 
       (.I0(\xs_8_reg_1764_reg[0]_i_15_n_12 ),
        .I1(\add_ln43_9_reg_1781_reg[14]_i_9_n_15 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\xs_8_reg_1764[0]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \xs_8_reg_1764[0]_i_20 
       (.I0(\xs_8_reg_1764_reg[0]_i_15_n_13 ),
        .I1(\add_ln43_9_reg_1781_reg[14]_i_11_n_8 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\xs_8_reg_1764[0]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \xs_8_reg_1764[0]_i_21 
       (.I0(\xs_8_reg_1764_reg[0]_i_15_n_14 ),
        .I1(\add_ln43_9_reg_1781_reg[14]_i_11_n_9 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\xs_8_reg_1764[0]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \xs_8_reg_1764[0]_i_22 
       (.I0(\xs_8_reg_1764_reg[0]_i_15_n_15 ),
        .I1(\add_ln43_9_reg_1781_reg[14]_i_11_n_10 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\xs_8_reg_1764[0]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \xs_8_reg_1764[0]_i_23 
       (.I0(x_12_reg_1727[15]),
        .I1(x_13_reg_1737[15]),
        .I2(tmp_5_reg_1720),
        .O(x_14_fu_564_p3[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    \xs_8_reg_1764[0]_i_24 
       (.I0(x_12_reg_1727[14]),
        .I1(x_13_reg_1737[14]),
        .I2(tmp_5_reg_1720),
        .O(x_14_fu_564_p3[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \xs_8_reg_1764[0]_i_25 
       (.I0(x_12_reg_1727[13]),
        .I1(x_13_reg_1737[13]),
        .I2(tmp_5_reg_1720),
        .O(x_14_fu_564_p3[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \xs_8_reg_1764[0]_i_26 
       (.I0(x_12_reg_1727[12]),
        .I1(x_13_reg_1737[12]),
        .I2(tmp_5_reg_1720),
        .O(x_14_fu_564_p3[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    \xs_8_reg_1764[0]_i_27 
       (.I0(x_12_reg_1727[11]),
        .I1(x_13_reg_1737[11]),
        .I2(tmp_5_reg_1720),
        .O(x_14_fu_564_p3[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    \xs_8_reg_1764[0]_i_28 
       (.I0(x_12_reg_1727[10]),
        .I1(x_13_reg_1737[10]),
        .I2(tmp_5_reg_1720),
        .O(x_14_fu_564_p3[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \xs_8_reg_1764[0]_i_29 
       (.I0(x_12_reg_1727[9]),
        .I1(x_13_reg_1737[9]),
        .I2(tmp_5_reg_1720),
        .O(x_14_fu_564_p3[9]));
  LUT3 #(
    .INIT(8'h96)) 
    \xs_8_reg_1764[0]_i_3 
       (.I0(x_23_fu_802_p3[12]),
        .I1(y_23_fu_810_p3__0[19]),
        .I2(y_23_fu_810_p3),
        .O(\xs_8_reg_1764[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \xs_8_reg_1764[0]_i_30 
       (.I0(x_12_reg_1727[8]),
        .I1(x_13_reg_1737[8]),
        .I2(tmp_5_reg_1720),
        .O(x_14_fu_564_p3[8]));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \xs_8_reg_1764[0]_i_31 
       (.I0(x_13_reg_1737[15]),
        .I1(x_12_reg_1727[15]),
        .I2(y_12_reg_1732[19]),
        .I3(y_13_reg_1742[19]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\xs_8_reg_1764[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \xs_8_reg_1764[0]_i_32 
       (.I0(x_13_reg_1737[14]),
        .I1(x_12_reg_1727[14]),
        .I2(y_12_reg_1732[18]),
        .I3(y_13_reg_1742[18]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\xs_8_reg_1764[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \xs_8_reg_1764[0]_i_33 
       (.I0(x_13_reg_1737[13]),
        .I1(x_12_reg_1727[13]),
        .I2(y_12_reg_1732[17]),
        .I3(y_13_reg_1742[17]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\xs_8_reg_1764[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \xs_8_reg_1764[0]_i_34 
       (.I0(x_13_reg_1737[12]),
        .I1(x_12_reg_1727[12]),
        .I2(y_12_reg_1732[16]),
        .I3(y_13_reg_1742[16]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\xs_8_reg_1764[0]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \xs_8_reg_1764[0]_i_35 
       (.I0(x_13_reg_1737[11]),
        .I1(x_12_reg_1727[11]),
        .I2(y_12_reg_1732[15]),
        .I3(y_13_reg_1742[15]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\xs_8_reg_1764[0]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \xs_8_reg_1764[0]_i_36 
       (.I0(x_13_reg_1737[10]),
        .I1(x_12_reg_1727[10]),
        .I2(y_12_reg_1732[14]),
        .I3(y_13_reg_1742[14]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\xs_8_reg_1764[0]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \xs_8_reg_1764[0]_i_37 
       (.I0(x_13_reg_1737[9]),
        .I1(x_12_reg_1727[9]),
        .I2(y_12_reg_1732[13]),
        .I3(y_13_reg_1742[13]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\xs_8_reg_1764[0]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \xs_8_reg_1764[0]_i_38 
       (.I0(x_13_reg_1737[8]),
        .I1(x_12_reg_1727[8]),
        .I2(y_12_reg_1732[12]),
        .I3(y_13_reg_1742[12]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\xs_8_reg_1764[0]_i_38_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \xs_8_reg_1764[0]_i_4 
       (.I0(x_23_fu_802_p3[11]),
        .I1(y_23_fu_810_p3__0[18]),
        .I2(y_23_fu_810_p3),
        .O(\xs_8_reg_1764[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \xs_8_reg_1764[0]_i_5 
       (.I0(x_23_fu_802_p3[10]),
        .I1(y_23_fu_810_p3__0[17]),
        .I2(y_23_fu_810_p3),
        .O(\xs_8_reg_1764[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \xs_8_reg_1764[0]_i_6 
       (.I0(x_23_fu_802_p3[9]),
        .I1(y_23_fu_810_p3__0[16]),
        .I2(y_23_fu_810_p3),
        .O(\xs_8_reg_1764[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \xs_8_reg_1764[0]_i_7 
       (.I0(x_23_fu_802_p3[8]),
        .I1(y_23_fu_810_p3__0[15]),
        .I2(y_23_fu_810_p3),
        .O(\xs_8_reg_1764[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \xs_8_reg_1764[0]_i_9 
       (.I0(\xs_8_reg_1764_reg[0]_i_8_n_10 ),
        .I1(\tmp_9_reg_1747_reg[0]_i_3_n_12 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\xs_8_reg_1764[0]_i_9_n_0 ));
  FDRE \xs_8_reg_1764_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_886_p3[8]),
        .Q(xs_8_reg_1764[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \xs_8_reg_1764_reg[0]_i_1 
       (.CI(\x_26_reg_1752_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\xs_8_reg_1764_reg[0]_i_1_n_0 ,\xs_8_reg_1764_reg[0]_i_1_n_1 ,\xs_8_reg_1764_reg[0]_i_1_n_2 ,\xs_8_reg_1764_reg[0]_i_1_n_3 ,\xs_8_reg_1764_reg[0]_i_1_n_4 ,\xs_8_reg_1764_reg[0]_i_1_n_5 ,\xs_8_reg_1764_reg[0]_i_1_n_6 ,\xs_8_reg_1764_reg[0]_i_1_n_7 }),
        .DI(x_23_fu_802_p3[15:8]),
        .O(x_26_fu_886_p3[15:8]),
        .S({x_23_fu_802_p3[15:13],\xs_8_reg_1764[0]_i_3_n_0 ,\xs_8_reg_1764[0]_i_4_n_0 ,\xs_8_reg_1764[0]_i_5_n_0 ,\xs_8_reg_1764[0]_i_6_n_0 ,\xs_8_reg_1764[0]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \xs_8_reg_1764_reg[0]_i_15 
       (.CI(\x_26_reg_1752_reg[7]_i_20_n_0 ),
        .CI_TOP(1'b0),
        .CO({\xs_8_reg_1764_reg[0]_i_15_n_0 ,\xs_8_reg_1764_reg[0]_i_15_n_1 ,\xs_8_reg_1764_reg[0]_i_15_n_2 ,\xs_8_reg_1764_reg[0]_i_15_n_3 ,\xs_8_reg_1764_reg[0]_i_15_n_4 ,\xs_8_reg_1764_reg[0]_i_15_n_5 ,\xs_8_reg_1764_reg[0]_i_15_n_6 ,\xs_8_reg_1764_reg[0]_i_15_n_7 }),
        .DI(x_14_fu_564_p3[15:8]),
        .O({\xs_8_reg_1764_reg[0]_i_15_n_8 ,\xs_8_reg_1764_reg[0]_i_15_n_9 ,\xs_8_reg_1764_reg[0]_i_15_n_10 ,\xs_8_reg_1764_reg[0]_i_15_n_11 ,\xs_8_reg_1764_reg[0]_i_15_n_12 ,\xs_8_reg_1764_reg[0]_i_15_n_13 ,\xs_8_reg_1764_reg[0]_i_15_n_14 ,\xs_8_reg_1764_reg[0]_i_15_n_15 }),
        .S({\xs_8_reg_1764[0]_i_31_n_0 ,\xs_8_reg_1764[0]_i_32_n_0 ,\xs_8_reg_1764[0]_i_33_n_0 ,\xs_8_reg_1764[0]_i_34_n_0 ,\xs_8_reg_1764[0]_i_35_n_0 ,\xs_8_reg_1764[0]_i_36_n_0 ,\xs_8_reg_1764[0]_i_37_n_0 ,\xs_8_reg_1764[0]_i_38_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \xs_8_reg_1764_reg[0]_i_2 
       (.CI(\x_26_reg_1752_reg[7]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\xs_8_reg_1764_reg[0]_i_2_n_0 ,\xs_8_reg_1764_reg[0]_i_2_n_1 ,\xs_8_reg_1764_reg[0]_i_2_n_2 ,\xs_8_reg_1764_reg[0]_i_2_n_3 ,\xs_8_reg_1764_reg[0]_i_2_n_4 ,\xs_8_reg_1764_reg[0]_i_2_n_5 ,\xs_8_reg_1764_reg[0]_i_2_n_6 ,\xs_8_reg_1764_reg[0]_i_2_n_7 }),
        .DI({\xs_8_reg_1764_reg[0]_i_8_n_8 ,\xs_8_reg_1764_reg[0]_i_8_n_9 ,\xs_8_reg_1764_reg[0]_i_8_n_10 ,\xs_8_reg_1764_reg[0]_i_8_n_11 ,\xs_8_reg_1764_reg[0]_i_8_n_12 ,\xs_8_reg_1764_reg[0]_i_8_n_13 ,\xs_8_reg_1764_reg[0]_i_8_n_14 ,\xs_8_reg_1764_reg[0]_i_8_n_15 }),
        .O(x_23_fu_802_p3[15:8]),
        .S({\xs_8_reg_1764_reg[0]_i_8_n_8 ,\xs_8_reg_1764_reg[0]_i_8_n_9 ,\xs_8_reg_1764[0]_i_9_n_0 ,\xs_8_reg_1764[0]_i_10_n_0 ,\xs_8_reg_1764[0]_i_11_n_0 ,\xs_8_reg_1764[0]_i_12_n_0 ,\xs_8_reg_1764[0]_i_13_n_0 ,\xs_8_reg_1764[0]_i_14_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \xs_8_reg_1764_reg[0]_i_8 
       (.CI(\x_26_reg_1752_reg[7]_i_11_n_0 ),
        .CI_TOP(1'b0),
        .CO({\xs_8_reg_1764_reg[0]_i_8_n_0 ,\xs_8_reg_1764_reg[0]_i_8_n_1 ,\xs_8_reg_1764_reg[0]_i_8_n_2 ,\xs_8_reg_1764_reg[0]_i_8_n_3 ,\xs_8_reg_1764_reg[0]_i_8_n_4 ,\xs_8_reg_1764_reg[0]_i_8_n_5 ,\xs_8_reg_1764_reg[0]_i_8_n_6 ,\xs_8_reg_1764_reg[0]_i_8_n_7 }),
        .DI({\xs_8_reg_1764_reg[0]_i_15_n_8 ,\xs_8_reg_1764_reg[0]_i_15_n_9 ,\xs_8_reg_1764_reg[0]_i_15_n_10 ,\xs_8_reg_1764_reg[0]_i_15_n_11 ,\xs_8_reg_1764_reg[0]_i_15_n_12 ,\xs_8_reg_1764_reg[0]_i_15_n_13 ,\xs_8_reg_1764_reg[0]_i_15_n_14 ,\xs_8_reg_1764_reg[0]_i_15_n_15 }),
        .O({\xs_8_reg_1764_reg[0]_i_8_n_8 ,\xs_8_reg_1764_reg[0]_i_8_n_9 ,\xs_8_reg_1764_reg[0]_i_8_n_10 ,\xs_8_reg_1764_reg[0]_i_8_n_11 ,\xs_8_reg_1764_reg[0]_i_8_n_12 ,\xs_8_reg_1764_reg[0]_i_8_n_13 ,\xs_8_reg_1764_reg[0]_i_8_n_14 ,\xs_8_reg_1764_reg[0]_i_8_n_15 }),
        .S({\xs_8_reg_1764_reg[0]_i_15_n_8 ,\xs_8_reg_1764[0]_i_16_n_0 ,\xs_8_reg_1764[0]_i_17_n_0 ,\xs_8_reg_1764[0]_i_18_n_0 ,\xs_8_reg_1764[0]_i_19_n_0 ,\xs_8_reg_1764[0]_i_20_n_0 ,\xs_8_reg_1764[0]_i_21_n_0 ,\xs_8_reg_1764[0]_i_22_n_0 }));
  FDRE \xs_8_reg_1764_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_886_p3[18]),
        .Q(xs_8_reg_1764[10]),
        .R(1'b0));
  FDRE \xs_8_reg_1764_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_886_p3[19]),
        .Q(xs_8_reg_1764[11]),
        .R(1'b0));
  FDRE \xs_8_reg_1764_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_886_p3[20]),
        .Q(xs_8_reg_1764[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \xs_8_reg_1764_reg[12]_i_1 
       (.CI(\xs_8_reg_1764_reg[0]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_xs_8_reg_1764_reg[12]_i_1_CO_UNCONNECTED [7:4],\xs_8_reg_1764_reg[12]_i_1_n_4 ,\xs_8_reg_1764_reg[12]_i_1_n_5 ,\xs_8_reg_1764_reg[12]_i_1_n_6 ,\xs_8_reg_1764_reg[12]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,x_23_fu_802_p3[19:16]}),
        .O({\NLW_xs_8_reg_1764_reg[12]_i_1_O_UNCONNECTED [7:5],x_26_fu_886_p3[20:16]}),
        .S({1'b0,1'b0,1'b0,x_23_fu_802_p3[20:16]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \xs_8_reg_1764_reg[12]_i_2 
       (.CI(\xs_8_reg_1764_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_xs_8_reg_1764_reg[12]_i_2_CO_UNCONNECTED [7:4],\xs_8_reg_1764_reg[12]_i_2_n_4 ,\xs_8_reg_1764_reg[12]_i_2_n_5 ,\xs_8_reg_1764_reg[12]_i_2_n_6 ,\xs_8_reg_1764_reg[12]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\tmp_9_reg_1747_reg[0]_i_23_n_12 ,\tmp_9_reg_1747_reg[0]_i_23_n_13 ,\tmp_9_reg_1747_reg[0]_i_23_n_14 ,\tmp_9_reg_1747_reg[0]_i_23_n_15 }),
        .O({\NLW_xs_8_reg_1764_reg[12]_i_2_O_UNCONNECTED [7:5],x_23_fu_802_p3[20:16]}),
        .S({1'b0,1'b0,1'b0,\tmp_9_reg_1747_reg[0]_i_23_n_11 ,\tmp_9_reg_1747_reg[0]_i_23_n_12 ,\tmp_9_reg_1747_reg[0]_i_23_n_13 ,\tmp_9_reg_1747_reg[0]_i_23_n_14 ,\tmp_9_reg_1747_reg[0]_i_23_n_15 }));
  FDRE \xs_8_reg_1764_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_886_p3[9]),
        .Q(xs_8_reg_1764[1]),
        .R(1'b0));
  FDRE \xs_8_reg_1764_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_886_p3[10]),
        .Q(xs_8_reg_1764[2]),
        .R(1'b0));
  FDRE \xs_8_reg_1764_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_886_p3[11]),
        .Q(xs_8_reg_1764[3]),
        .R(1'b0));
  FDRE \xs_8_reg_1764_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_886_p3[12]),
        .Q(xs_8_reg_1764[4]),
        .R(1'b0));
  FDRE \xs_8_reg_1764_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_886_p3[13]),
        .Q(xs_8_reg_1764[5]),
        .R(1'b0));
  FDRE \xs_8_reg_1764_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_886_p3[14]),
        .Q(xs_8_reg_1764[6]),
        .R(1'b0));
  FDRE \xs_8_reg_1764_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_886_p3[15]),
        .Q(xs_8_reg_1764[7]),
        .R(1'b0));
  FDRE \xs_8_reg_1764_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_886_p3[16]),
        .Q(xs_8_reg_1764[8]),
        .R(1'b0));
  FDRE \xs_8_reg_1764_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_26_fu_886_p3[17]),
        .Q(xs_8_reg_1764[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \y_12_reg_1732[15]_i_2 
       (.I0(sext_ln27_2_fu_514_p1[15]),
        .I1(\tmp_5_reg_1720_reg[0]_i_1_n_15 ),
        .O(\y_12_reg_1732[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_12_reg_1732[15]_i_3 
       (.I0(sext_ln27_2_fu_514_p1[14]),
        .I1(\y_13_reg_1742_reg[15]_i_2_n_8 ),
        .O(\y_12_reg_1732[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_12_reg_1732[15]_i_4 
       (.I0(sext_ln27_2_fu_514_p1[13]),
        .I1(\y_13_reg_1742_reg[15]_i_2_n_9 ),
        .O(\y_12_reg_1732[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_12_reg_1732[15]_i_5 
       (.I0(sext_ln27_2_fu_514_p1[12]),
        .I1(\y_13_reg_1742_reg[15]_i_2_n_10 ),
        .O(\y_12_reg_1732[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_12_reg_1732[15]_i_6 
       (.I0(sext_ln27_2_fu_514_p1[11]),
        .I1(\y_13_reg_1742_reg[15]_i_2_n_11 ),
        .O(\y_12_reg_1732[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_12_reg_1732[15]_i_7 
       (.I0(sext_ln27_2_fu_514_p1[10]),
        .I1(\y_13_reg_1742_reg[15]_i_2_n_12 ),
        .O(\y_12_reg_1732[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_12_reg_1732[15]_i_8 
       (.I0(sext_ln27_2_fu_514_p1[9]),
        .I1(\y_13_reg_1742_reg[15]_i_2_n_13 ),
        .O(\y_12_reg_1732[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_12_reg_1732[15]_i_9 
       (.I0(sext_ln27_2_fu_514_p1[8]),
        .I1(\y_13_reg_1742_reg[15]_i_2_n_14 ),
        .O(\y_12_reg_1732[15]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y_12_reg_1732[20]_i_2 
       (.I0(sext_ln27_2_fu_514_p1[17]),
        .O(\y_12_reg_1732[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_12_reg_1732[20]_i_3 
       (.I0(\tmp_5_reg_1720_reg[0]_i_1_n_11 ),
        .I1(sext_ln28_2_fu_528_p10),
        .O(\y_12_reg_1732[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_12_reg_1732[20]_i_4 
       (.I0(\tmp_5_reg_1720_reg[0]_i_1_n_12 ),
        .I1(\tmp_5_reg_1720_reg[0]_i_1_n_11 ),
        .O(\y_12_reg_1732[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_12_reg_1732[20]_i_5 
       (.I0(\tmp_5_reg_1720_reg[0]_i_1_n_12 ),
        .I1(sext_ln27_2_fu_514_p1[17]),
        .O(\y_12_reg_1732[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_12_reg_1732[20]_i_6 
       (.I0(\tmp_5_reg_1720_reg[0]_i_1_n_13 ),
        .I1(sext_ln27_2_fu_514_p1[17]),
        .O(\y_12_reg_1732[20]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_12_reg_1732[20]_i_7 
       (.I0(sext_ln27_2_fu_514_p1[16]),
        .I1(\tmp_5_reg_1720_reg[0]_i_1_n_14 ),
        .O(\y_12_reg_1732[20]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_12_reg_1732[7]_i_2 
       (.I0(sext_ln27_2_fu_514_p1[7]),
        .I1(\y_13_reg_1742_reg[15]_i_2_n_15 ),
        .O(\y_12_reg_1732[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_12_reg_1732[7]_i_3 
       (.I0(sext_ln27_2_fu_514_p1[6]),
        .I1(\y_13_reg_1742_reg[7]_i_2_n_8 ),
        .O(\y_12_reg_1732[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_12_reg_1732[7]_i_4 
       (.I0(sext_ln27_2_fu_514_p1[5]),
        .I1(\y_13_reg_1742_reg[7]_i_2_n_9 ),
        .O(\y_12_reg_1732[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_12_reg_1732[7]_i_5 
       (.I0(sext_ln27_2_fu_514_p1[4]),
        .I1(\y_13_reg_1742_reg[7]_i_2_n_10 ),
        .O(\y_12_reg_1732[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_12_reg_1732[7]_i_6 
       (.I0(sext_ln27_2_fu_514_p1[3]),
        .I1(\y_13_reg_1742_reg[7]_i_2_n_11 ),
        .O(\y_12_reg_1732[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_12_reg_1732[7]_i_7 
       (.I0(sext_ln27_2_fu_514_p1[2]),
        .I1(\y_13_reg_1742_reg[7]_i_2_n_12 ),
        .O(\y_12_reg_1732[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_12_reg_1732[7]_i_8 
       (.I0(sext_ln27_2_fu_514_p1[1]),
        .I1(\y_13_reg_1742_reg[7]_i_2_n_13 ),
        .O(\y_12_reg_1732[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_12_reg_1732[7]_i_9 
       (.I0(sext_ln27_2_fu_514_p1[0]),
        .I1(\y_13_reg_1742_reg[7]_i_2_n_14 ),
        .O(\y_12_reg_1732[7]_i_9_n_0 ));
  FDRE \y_12_reg_1732_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_12_fu_546_p2[0]),
        .Q(y_12_reg_1732[0]),
        .R(1'b0));
  FDRE \y_12_reg_1732_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_12_fu_546_p2[10]),
        .Q(y_12_reg_1732[10]),
        .R(1'b0));
  FDRE \y_12_reg_1732_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_12_fu_546_p2[11]),
        .Q(y_12_reg_1732[11]),
        .R(1'b0));
  FDRE \y_12_reg_1732_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_12_fu_546_p2[12]),
        .Q(y_12_reg_1732[12]),
        .R(1'b0));
  FDRE \y_12_reg_1732_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_12_fu_546_p2[13]),
        .Q(y_12_reg_1732[13]),
        .R(1'b0));
  FDRE \y_12_reg_1732_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_12_fu_546_p2[14]),
        .Q(y_12_reg_1732[14]),
        .R(1'b0));
  FDRE \y_12_reg_1732_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_12_fu_546_p2[15]),
        .Q(y_12_reg_1732[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_12_reg_1732_reg[15]_i_1 
       (.CI(\y_12_reg_1732_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_12_reg_1732_reg[15]_i_1_n_0 ,\y_12_reg_1732_reg[15]_i_1_n_1 ,\y_12_reg_1732_reg[15]_i_1_n_2 ,\y_12_reg_1732_reg[15]_i_1_n_3 ,\y_12_reg_1732_reg[15]_i_1_n_4 ,\y_12_reg_1732_reg[15]_i_1_n_5 ,\y_12_reg_1732_reg[15]_i_1_n_6 ,\y_12_reg_1732_reg[15]_i_1_n_7 }),
        .DI({\tmp_5_reg_1720_reg[0]_i_1_n_15 ,\y_13_reg_1742_reg[15]_i_2_n_8 ,\y_13_reg_1742_reg[15]_i_2_n_9 ,\y_13_reg_1742_reg[15]_i_2_n_10 ,\y_13_reg_1742_reg[15]_i_2_n_11 ,\y_13_reg_1742_reg[15]_i_2_n_12 ,\y_13_reg_1742_reg[15]_i_2_n_13 ,\y_13_reg_1742_reg[15]_i_2_n_14 }),
        .O(y_12_fu_546_p2[15:8]),
        .S({\y_12_reg_1732[15]_i_2_n_0 ,\y_12_reg_1732[15]_i_3_n_0 ,\y_12_reg_1732[15]_i_4_n_0 ,\y_12_reg_1732[15]_i_5_n_0 ,\y_12_reg_1732[15]_i_6_n_0 ,\y_12_reg_1732[15]_i_7_n_0 ,\y_12_reg_1732[15]_i_8_n_0 ,\y_12_reg_1732[15]_i_9_n_0 }));
  FDRE \y_12_reg_1732_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_12_fu_546_p2[16]),
        .Q(y_12_reg_1732[16]),
        .R(1'b0));
  FDRE \y_12_reg_1732_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_12_fu_546_p2[17]),
        .Q(y_12_reg_1732[17]),
        .R(1'b0));
  FDRE \y_12_reg_1732_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_12_fu_546_p2[18]),
        .Q(y_12_reg_1732[18]),
        .R(1'b0));
  FDRE \y_12_reg_1732_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_12_fu_546_p2[19]),
        .Q(y_12_reg_1732[19]),
        .R(1'b0));
  FDRE \y_12_reg_1732_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_12_fu_546_p2[1]),
        .Q(y_12_reg_1732[1]),
        .R(1'b0));
  FDRE \y_12_reg_1732_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_12_fu_546_p2[20]),
        .Q(y_12_reg_1732[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_12_reg_1732_reg[20]_i_1 
       (.CI(\y_12_reg_1732_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_y_12_reg_1732_reg[20]_i_1_CO_UNCONNECTED [7:4],\y_12_reg_1732_reg[20]_i_1_n_4 ,\y_12_reg_1732_reg[20]_i_1_n_5 ,\y_12_reg_1732_reg[20]_i_1_n_6 ,\y_12_reg_1732_reg[20]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\tmp_5_reg_1720_reg[0]_i_1_n_12 ,\y_12_reg_1732[20]_i_2_n_0 ,sext_ln27_2_fu_514_p1[17],\tmp_5_reg_1720_reg[0]_i_1_n_14 }),
        .O({\NLW_y_12_reg_1732_reg[20]_i_1_O_UNCONNECTED [7:5],y_12_fu_546_p2[20:16]}),
        .S({1'b0,1'b0,1'b0,\y_12_reg_1732[20]_i_3_n_0 ,\y_12_reg_1732[20]_i_4_n_0 ,\y_12_reg_1732[20]_i_5_n_0 ,\y_12_reg_1732[20]_i_6_n_0 ,\y_12_reg_1732[20]_i_7_n_0 }));
  FDRE \y_12_reg_1732_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_12_fu_546_p2[2]),
        .Q(y_12_reg_1732[2]),
        .R(1'b0));
  FDRE \y_12_reg_1732_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_12_fu_546_p2[3]),
        .Q(y_12_reg_1732[3]),
        .R(1'b0));
  FDRE \y_12_reg_1732_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_12_fu_546_p2[4]),
        .Q(y_12_reg_1732[4]),
        .R(1'b0));
  FDRE \y_12_reg_1732_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_12_fu_546_p2[5]),
        .Q(y_12_reg_1732[5]),
        .R(1'b0));
  FDRE \y_12_reg_1732_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_12_fu_546_p2[6]),
        .Q(y_12_reg_1732[6]),
        .R(1'b0));
  FDRE \y_12_reg_1732_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_12_fu_546_p2[7]),
        .Q(y_12_reg_1732[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_12_reg_1732_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\y_12_reg_1732_reg[7]_i_1_n_0 ,\y_12_reg_1732_reg[7]_i_1_n_1 ,\y_12_reg_1732_reg[7]_i_1_n_2 ,\y_12_reg_1732_reg[7]_i_1_n_3 ,\y_12_reg_1732_reg[7]_i_1_n_4 ,\y_12_reg_1732_reg[7]_i_1_n_5 ,\y_12_reg_1732_reg[7]_i_1_n_6 ,\y_12_reg_1732_reg[7]_i_1_n_7 }),
        .DI({\y_13_reg_1742_reg[15]_i_2_n_15 ,\y_13_reg_1742_reg[7]_i_2_n_8 ,\y_13_reg_1742_reg[7]_i_2_n_9 ,\y_13_reg_1742_reg[7]_i_2_n_10 ,\y_13_reg_1742_reg[7]_i_2_n_11 ,\y_13_reg_1742_reg[7]_i_2_n_12 ,\y_13_reg_1742_reg[7]_i_2_n_13 ,\y_13_reg_1742_reg[7]_i_2_n_14 }),
        .O(y_12_fu_546_p2[7:0]),
        .S({\y_12_reg_1732[7]_i_2_n_0 ,\y_12_reg_1732[7]_i_3_n_0 ,\y_12_reg_1732[7]_i_4_n_0 ,\y_12_reg_1732[7]_i_5_n_0 ,\y_12_reg_1732[7]_i_6_n_0 ,\y_12_reg_1732[7]_i_7_n_0 ,\y_12_reg_1732[7]_i_8_n_0 ,\y_12_reg_1732[7]_i_9_n_0 }));
  FDRE \y_12_reg_1732_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_12_fu_546_p2[8]),
        .Q(y_12_reg_1732[8]),
        .R(1'b0));
  FDRE \y_12_reg_1732_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_12_fu_546_p2[9]),
        .Q(y_12_reg_1732[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \y_13_reg_1742[15]_i_10 
       (.I0(\y_13_reg_1742_reg[15]_i_2_n_14 ),
        .I1(sext_ln27_2_fu_514_p1[8]),
        .O(\y_13_reg_1742[15]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_13_reg_1742[15]_i_12 
       (.I0(A__0[14]),
        .I1(\y_13_reg_1742_reg[20]_i_9_n_9 ),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\y_13_reg_1742[15]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_13_reg_1742[15]_i_13 
       (.I0(A__0[13]),
        .I1(\y_13_reg_1742_reg[20]_i_9_n_10 ),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\y_13_reg_1742[15]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_13_reg_1742[15]_i_14 
       (.I0(A__0[12]),
        .I1(\y_13_reg_1742_reg[20]_i_9_n_11 ),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\y_13_reg_1742[15]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_13_reg_1742[15]_i_15 
       (.I0(A__0[11]),
        .I1(\y_13_reg_1742_reg[20]_i_9_n_12 ),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\y_13_reg_1742[15]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_13_reg_1742[15]_i_16 
       (.I0(A__0[10]),
        .I1(\y_13_reg_1742_reg[20]_i_9_n_13 ),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\y_13_reg_1742[15]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_13_reg_1742[15]_i_17 
       (.I0(A__0[9]),
        .I1(\y_13_reg_1742_reg[20]_i_9_n_14 ),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\y_13_reg_1742[15]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_13_reg_1742[15]_i_18 
       (.I0(A__0[8]),
        .I1(\y_13_reg_1742_reg[20]_i_9_n_15 ),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\y_13_reg_1742[15]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_13_reg_1742[15]_i_19 
       (.I0(A__0[7]),
        .I1(\x_13_reg_1737_reg[15]_i_11_n_8 ),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\y_13_reg_1742[15]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \y_13_reg_1742[15]_i_20 
       (.I0(y_4_fu_326_p2[19]),
        .I1(p_0_in),
        .I2(add_ln30_fu_314_p2[19]),
        .O(\y_13_reg_1742[15]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \y_13_reg_1742[15]_i_21 
       (.I0(add_ln30_fu_314_p2[9]),
        .I1(p_0_in),
        .I2(y_4_fu_326_p2[9]),
        .O(\y_13_reg_1742[15]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \y_13_reg_1742[15]_i_22 
       (.I0(add_ln30_fu_314_p2[8]),
        .I1(p_0_in),
        .I2(y_4_fu_326_p2[8]),
        .O(\y_13_reg_1742[15]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \y_13_reg_1742[15]_i_23 
       (.I0(add_ln30_fu_314_p2[7]),
        .I1(p_0_in),
        .I2(y_4_fu_326_p2[7]),
        .O(\y_13_reg_1742[15]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \y_13_reg_1742[15]_i_24 
       (.I0(add_ln30_fu_314_p2[6]),
        .I1(p_0_in),
        .I2(y_4_fu_326_p2[6]),
        .O(\y_13_reg_1742[15]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \y_13_reg_1742[15]_i_25 
       (.I0(add_ln30_fu_314_p2[5]),
        .I1(p_0_in),
        .I2(y_4_fu_326_p2[5]),
        .O(\y_13_reg_1742[15]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \y_13_reg_1742[15]_i_26 
       (.I0(add_ln30_fu_314_p2[4]),
        .I1(p_0_in),
        .I2(y_4_fu_326_p2[4]),
        .O(\y_13_reg_1742[15]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \y_13_reg_1742[15]_i_27 
       (.I0(y_4_fu_326_p2[3]),
        .I1(p_0_in),
        .I2(add_ln30_fu_314_p2[3]),
        .O(\y_13_reg_1742[15]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \y_13_reg_1742[15]_i_28 
       (.I0(y_4_fu_326_p2[9]),
        .I1(add_ln30_fu_314_p2[9]),
        .I2(sext_ln27_fu_362_p1[9]),
        .I3(add_ln30_fu_314_p2[19]),
        .I4(p_0_in),
        .I5(y_4_fu_326_p2[19]),
        .O(\y_13_reg_1742[15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \y_13_reg_1742[15]_i_29 
       (.I0(y_4_fu_326_p2[8]),
        .I1(add_ln30_fu_314_p2[8]),
        .I2(sext_ln27_fu_362_p1[8]),
        .I3(add_ln30_fu_314_p2[19]),
        .I4(p_0_in),
        .I5(y_4_fu_326_p2[19]),
        .O(\y_13_reg_1742[15]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_13_reg_1742[15]_i_3 
       (.I0(\tmp_5_reg_1720_reg[0]_i_1_n_15 ),
        .I1(sext_ln27_2_fu_514_p1[15]),
        .O(\y_13_reg_1742[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \y_13_reg_1742[15]_i_30 
       (.I0(y_4_fu_326_p2[7]),
        .I1(add_ln30_fu_314_p2[7]),
        .I2(sext_ln27_fu_362_p1[7]),
        .I3(add_ln30_fu_314_p2[19]),
        .I4(p_0_in),
        .I5(y_4_fu_326_p2[19]),
        .O(\y_13_reg_1742[15]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \y_13_reg_1742[15]_i_31 
       (.I0(y_4_fu_326_p2[6]),
        .I1(add_ln30_fu_314_p2[6]),
        .I2(sext_ln27_fu_362_p1[6]),
        .I3(add_ln30_fu_314_p2[19]),
        .I4(p_0_in),
        .I5(y_4_fu_326_p2[19]),
        .O(\y_13_reg_1742[15]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \y_13_reg_1742[15]_i_32 
       (.I0(y_4_fu_326_p2[5]),
        .I1(add_ln30_fu_314_p2[5]),
        .I2(sext_ln27_fu_362_p1[5]),
        .I3(add_ln30_fu_314_p2[19]),
        .I4(p_0_in),
        .I5(y_4_fu_326_p2[19]),
        .O(\y_13_reg_1742[15]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \y_13_reg_1742[15]_i_33 
       (.I0(y_4_fu_326_p2[4]),
        .I1(add_ln30_fu_314_p2[4]),
        .I2(sext_ln27_fu_362_p1[4]),
        .I3(add_ln30_fu_314_p2[19]),
        .I4(p_0_in),
        .I5(y_4_fu_326_p2[19]),
        .O(\y_13_reg_1742[15]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \y_13_reg_1742[15]_i_34 
       (.I0(y_4_fu_326_p2[3]),
        .I1(add_ln30_fu_314_p2[3]),
        .I2(sext_ln27_fu_362_p1[3]),
        .I3(add_ln30_fu_314_p2[19]),
        .I4(p_0_in),
        .I5(y_4_fu_326_p2[19]),
        .O(\y_13_reg_1742[15]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \y_13_reg_1742[15]_i_35 
       (.I0(y_4_fu_326_p2[19]),
        .I1(p_0_in),
        .I2(add_ln30_fu_314_p2[19]),
        .I3(sext_ln27_fu_362_p1[2]),
        .O(\y_13_reg_1742[15]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_13_reg_1742[15]_i_4 
       (.I0(\y_13_reg_1742_reg[15]_i_2_n_8 ),
        .I1(sext_ln27_2_fu_514_p1[14]),
        .O(\y_13_reg_1742[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_13_reg_1742[15]_i_5 
       (.I0(\y_13_reg_1742_reg[15]_i_2_n_9 ),
        .I1(sext_ln27_2_fu_514_p1[13]),
        .O(\y_13_reg_1742[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_13_reg_1742[15]_i_6 
       (.I0(\y_13_reg_1742_reg[15]_i_2_n_10 ),
        .I1(sext_ln27_2_fu_514_p1[12]),
        .O(\y_13_reg_1742[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_13_reg_1742[15]_i_7 
       (.I0(\y_13_reg_1742_reg[15]_i_2_n_11 ),
        .I1(sext_ln27_2_fu_514_p1[11]),
        .O(\y_13_reg_1742[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_13_reg_1742[15]_i_8 
       (.I0(\y_13_reg_1742_reg[15]_i_2_n_12 ),
        .I1(sext_ln27_2_fu_514_p1[10]),
        .O(\y_13_reg_1742[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_13_reg_1742[15]_i_9 
       (.I0(\y_13_reg_1742_reg[15]_i_2_n_13 ),
        .I1(sext_ln27_2_fu_514_p1[9]),
        .O(\y_13_reg_1742[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_13_reg_1742[20]_i_10 
       (.I0(\y_13_reg_1742_reg[20]_i_9_n_8 ),
        .I1(A__0[19]),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\y_13_reg_1742[20]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_13_reg_1742[20]_i_11 
       (.I0(\y_13_reg_1742_reg[20]_i_9_n_9 ),
        .I1(A__0[18]),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\y_13_reg_1742[20]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y_13_reg_1742[20]_i_14 
       (.I0(\y_13_reg_1742_reg[20]_i_12_n_6 ),
        .O(sext_ln27_fu_362_p1[19]));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \y_13_reg_1742[20]_i_16 
       (.I0(sext_ln27_fu_362_p1[16]),
        .I1(add_ln30_fu_314_p2[19]),
        .I2(p_0_in),
        .I3(y_4_fu_326_p2[19]),
        .I4(add_ln30_fu_314_p2[18]),
        .I5(y_4_fu_326_p2[18]),
        .O(\y_13_reg_1742[20]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \y_13_reg_1742[20]_i_17 
       (.I0(sext_ln27_fu_362_p1[15]),
        .I1(add_ln30_fu_314_p2[17]),
        .I2(p_0_in),
        .I3(y_4_fu_326_p2[17]),
        .I4(add_ln30_fu_314_p2[19]),
        .I5(y_4_fu_326_p2[19]),
        .O(\y_13_reg_1742[20]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \y_13_reg_1742[20]_i_18 
       (.I0(sext_ln27_fu_362_p1[14]),
        .I1(add_ln30_fu_314_p2[16]),
        .I2(p_0_in),
        .I3(y_4_fu_326_p2[16]),
        .I4(add_ln30_fu_314_p2[19]),
        .I5(y_4_fu_326_p2[19]),
        .O(\y_13_reg_1742[20]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \y_13_reg_1742[20]_i_19 
       (.I0(sext_ln27_fu_362_p1[13]),
        .I1(add_ln30_fu_314_p2[15]),
        .I2(p_0_in),
        .I3(y_4_fu_326_p2[15]),
        .I4(add_ln30_fu_314_p2[19]),
        .I5(y_4_fu_326_p2[19]),
        .O(\y_13_reg_1742[20]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \y_13_reg_1742[20]_i_20 
       (.I0(sext_ln27_fu_362_p1[12]),
        .I1(add_ln30_fu_314_p2[14]),
        .I2(p_0_in),
        .I3(y_4_fu_326_p2[14]),
        .I4(add_ln30_fu_314_p2[19]),
        .I5(y_4_fu_326_p2[19]),
        .O(\y_13_reg_1742[20]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \y_13_reg_1742[20]_i_21 
       (.I0(sext_ln27_fu_362_p1[11]),
        .I1(add_ln30_fu_314_p2[13]),
        .I2(p_0_in),
        .I3(y_4_fu_326_p2[13]),
        .I4(add_ln30_fu_314_p2[19]),
        .I5(y_4_fu_326_p2[19]),
        .O(\y_13_reg_1742[20]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \y_13_reg_1742[20]_i_22 
       (.I0(sext_ln27_fu_362_p1[10]),
        .I1(add_ln30_fu_314_p2[12]),
        .I2(p_0_in),
        .I3(y_4_fu_326_p2[12]),
        .I4(add_ln30_fu_314_p2[19]),
        .I5(y_4_fu_326_p2[19]),
        .O(\y_13_reg_1742[20]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \y_13_reg_1742[20]_i_23 
       (.I0(sext_ln27_fu_362_p1[9]),
        .I1(add_ln30_fu_314_p2[11]),
        .I2(p_0_in),
        .I3(y_4_fu_326_p2[11]),
        .I4(add_ln30_fu_314_p2[19]),
        .I5(y_4_fu_326_p2[19]),
        .O(\y_13_reg_1742[20]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h0096)) 
    \y_13_reg_1742[20]_i_24 
       (.I0(\off_1_reg_1699[12]_i_2_n_0 ),
        .I1(y_in[15]),
        .I2(p_0_in),
        .I3(sext_ln10_1_fu_276_p1[18]),
        .O(\y_13_reg_1742[20]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \y_13_reg_1742[20]_i_25 
       (.I0(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_11_n_0 ),
        .I1(p_0_in),
        .I2(sext_ln10_1_fu_276_p1[17]),
        .O(\y_13_reg_1742[20]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \y_13_reg_1742[20]_i_26 
       (.I0(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_12_n_0 ),
        .I1(p_0_in),
        .I2(sext_ln10_1_fu_276_p1[16]),
        .O(\y_13_reg_1742[20]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \y_13_reg_1742[20]_i_27 
       (.I0(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_13_n_0 ),
        .I1(p_0_in),
        .I2(sext_ln10_1_fu_276_p1[15]),
        .O(\y_13_reg_1742[20]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \y_13_reg_1742[20]_i_28 
       (.I0(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_62_n_0 ),
        .I1(p_0_in),
        .I2(sext_ln10_1_fu_276_p1[14]),
        .O(\y_13_reg_1742[20]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \y_13_reg_1742[20]_i_29 
       (.I0(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_64_n_0 ),
        .I1(p_0_in),
        .I2(sext_ln10_1_fu_276_p1[13]),
        .O(\y_13_reg_1742[20]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_13_reg_1742[20]_i_3 
       (.I0(\tmp_5_reg_1720_reg[0]_i_1_n_11 ),
        .I1(sext_ln28_2_fu_528_p10),
        .O(\y_13_reg_1742[20]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \y_13_reg_1742[20]_i_30 
       (.I0(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_16_n_0 ),
        .I1(p_0_in),
        .I2(sext_ln10_1_fu_276_p1[12]),
        .O(\y_13_reg_1742[20]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \y_13_reg_1742[20]_i_31 
       (.I0(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_17_n_0 ),
        .I1(p_0_in),
        .I2(sext_ln10_1_fu_276_p1[11]),
        .O(\y_13_reg_1742[20]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \y_13_reg_1742[20]_i_32 
       (.I0(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_18_n_0 ),
        .I1(p_0_in),
        .I2(sext_ln10_1_fu_276_p1[10]),
        .O(\y_13_reg_1742[20]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h9699696666699996)) 
    \y_13_reg_1742[20]_i_33 
       (.I0(\off_1_reg_1699[12]_i_2_n_0 ),
        .I1(y_in[15]),
        .I2(sext_ln10_1_fu_276_p1[17]),
        .I3(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_11_n_0 ),
        .I4(sext_ln10_1_fu_276_p1[18]),
        .I5(p_0_in),
        .O(\y_13_reg_1742[20]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'hB41E4BE1)) 
    \y_13_reg_1742[20]_i_34 
       (.I0(sext_ln10_1_fu_276_p1[16]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_12_n_0 ),
        .I2(sext_ln10_1_fu_276_p1[17]),
        .I3(p_0_in),
        .I4(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_11_n_0 ),
        .O(\y_13_reg_1742[20]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'hB41E4BE1)) 
    \y_13_reg_1742[20]_i_35 
       (.I0(sext_ln10_1_fu_276_p1[15]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_13_n_0 ),
        .I2(sext_ln10_1_fu_276_p1[16]),
        .I3(p_0_in),
        .I4(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_12_n_0 ),
        .O(\y_13_reg_1742[20]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'hB41E4BE1)) 
    \y_13_reg_1742[20]_i_36 
       (.I0(sext_ln10_1_fu_276_p1[14]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_62_n_0 ),
        .I2(sext_ln10_1_fu_276_p1[15]),
        .I3(p_0_in),
        .I4(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_13_n_0 ),
        .O(\y_13_reg_1742[20]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'hB41E4BE1)) 
    \y_13_reg_1742[20]_i_37 
       (.I0(sext_ln10_1_fu_276_p1[13]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_64_n_0 ),
        .I2(sext_ln10_1_fu_276_p1[14]),
        .I3(p_0_in),
        .I4(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_62_n_0 ),
        .O(\y_13_reg_1742[20]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'hB41E4BE1)) 
    \y_13_reg_1742[20]_i_38 
       (.I0(sext_ln10_1_fu_276_p1[12]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_16_n_0 ),
        .I2(sext_ln10_1_fu_276_p1[13]),
        .I3(p_0_in),
        .I4(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_64_n_0 ),
        .O(\y_13_reg_1742[20]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'hB41E4BE1)) 
    \y_13_reg_1742[20]_i_39 
       (.I0(sext_ln10_1_fu_276_p1[11]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_17_n_0 ),
        .I2(sext_ln10_1_fu_276_p1[12]),
        .I3(p_0_in),
        .I4(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_16_n_0 ),
        .O(\y_13_reg_1742[20]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_13_reg_1742[20]_i_4 
       (.I0(\tmp_5_reg_1720_reg[0]_i_1_n_12 ),
        .I1(\tmp_5_reg_1720_reg[0]_i_1_n_11 ),
        .O(\y_13_reg_1742[20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB41E4BE1)) 
    \y_13_reg_1742[20]_i_40 
       (.I0(sext_ln10_1_fu_276_p1[10]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_18_n_0 ),
        .I2(sext_ln10_1_fu_276_p1[11]),
        .I3(p_0_in),
        .I4(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_17_n_0 ),
        .O(\y_13_reg_1742[20]_i_40_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \y_13_reg_1742[20]_i_41 
       (.I0(\y_13_reg_1742[20]_i_57_n_0 ),
        .I1(p_0_in),
        .I2(sext_ln10_1_fu_276_p1[9]),
        .O(\y_13_reg_1742[20]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \y_13_reg_1742[20]_i_42 
       (.I0(\y_13_reg_1742[20]_i_59_n_0 ),
        .I1(p_0_in),
        .I2(sext_ln10_1_fu_276_p1[8]),
        .O(\y_13_reg_1742[20]_i_42_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \y_13_reg_1742[20]_i_43 
       (.I0(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_46_n_0 ),
        .I1(p_0_in),
        .I2(sext_ln10_1_fu_276_p1[7]),
        .O(\y_13_reg_1742[20]_i_43_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \y_13_reg_1742[20]_i_44 
       (.I0(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_47_n_0 ),
        .I1(p_0_in),
        .I2(sext_ln10_1_fu_276_p1[6]),
        .O(\y_13_reg_1742[20]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA85757A8)) 
    \y_13_reg_1742[20]_i_45 
       (.I0(x_in[15]),
        .I1(y_in[1]),
        .I2(y_in[0]),
        .I3(y_in[2]),
        .I4(p_0_in),
        .I5(sext_ln10_1_fu_276_p1[5]),
        .O(\y_13_reg_1742[20]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h96FFFF3CFF96FF3C)) 
    \y_13_reg_1742[20]_i_46 
       (.I0(y_in[0]),
        .I1(y_in[1]),
        .I2(p_0_in),
        .I3(x_in[1]),
        .I4(x_in[15]),
        .I5(x_in[0]),
        .O(\y_13_reg_1742[20]_i_46_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \y_13_reg_1742[20]_i_47 
       (.I0(p_0_in),
        .I1(y_in[0]),
        .I2(x_in[0]),
        .O(\y_13_reg_1742[20]_i_47_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \y_13_reg_1742[20]_i_48 
       (.I0(x_in[15]),
        .I1(y_in[15]),
        .I2(\off_1_reg_1699[12]_i_2_n_0 ),
        .O(\y_13_reg_1742[20]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'hB41E4BE1)) 
    \y_13_reg_1742[20]_i_49 
       (.I0(sext_ln10_1_fu_276_p1[9]),
        .I1(\y_13_reg_1742[20]_i_57_n_0 ),
        .I2(sext_ln10_1_fu_276_p1[10]),
        .I3(p_0_in),
        .I4(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_18_n_0 ),
        .O(\y_13_reg_1742[20]_i_49_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_13_reg_1742[20]_i_5 
       (.I0(sext_ln27_2_fu_514_p1[17]),
        .I1(\tmp_5_reg_1720_reg[0]_i_1_n_12 ),
        .O(\y_13_reg_1742[20]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB41E4BE1)) 
    \y_13_reg_1742[20]_i_50 
       (.I0(sext_ln10_1_fu_276_p1[8]),
        .I1(\y_13_reg_1742[20]_i_59_n_0 ),
        .I2(sext_ln10_1_fu_276_p1[9]),
        .I3(p_0_in),
        .I4(\y_13_reg_1742[20]_i_57_n_0 ),
        .O(\y_13_reg_1742[20]_i_50_n_0 ));
  LUT5 #(
    .INIT(32'hB41E4BE1)) 
    \y_13_reg_1742[20]_i_51 
       (.I0(sext_ln10_1_fu_276_p1[7]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_46_n_0 ),
        .I2(sext_ln10_1_fu_276_p1[8]),
        .I3(p_0_in),
        .I4(\y_13_reg_1742[20]_i_59_n_0 ),
        .O(\y_13_reg_1742[20]_i_51_n_0 ));
  LUT5 #(
    .INIT(32'hB41E4BE1)) 
    \y_13_reg_1742[20]_i_52 
       (.I0(sext_ln10_1_fu_276_p1[6]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_47_n_0 ),
        .I2(sext_ln10_1_fu_276_p1[7]),
        .I3(p_0_in),
        .I4(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_46_n_0 ),
        .O(\y_13_reg_1742[20]_i_52_n_0 ));
  LUT5 #(
    .INIT(32'hB41E4BE1)) 
    \y_13_reg_1742[20]_i_53 
       (.I0(sext_ln10_1_fu_276_p1[5]),
        .I1(\y_13_reg_1742[20]_i_64_n_0 ),
        .I2(sext_ln10_1_fu_276_p1[6]),
        .I3(p_0_in),
        .I4(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_47_n_0 ),
        .O(\y_13_reg_1742[20]_i_53_n_0 ));
  LUT5 #(
    .INIT(32'hB41E4BE1)) 
    \y_13_reg_1742[20]_i_54 
       (.I0(sext_ln10_1_fu_276_p1[4]),
        .I1(\y_13_reg_1742[20]_i_66_n_0 ),
        .I2(sext_ln10_1_fu_276_p1[5]),
        .I3(p_0_in),
        .I4(\y_13_reg_1742[20]_i_64_n_0 ),
        .O(\y_13_reg_1742[20]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hE14B1EB478D2872D)) 
    \y_13_reg_1742[20]_i_55 
       (.I0(x_in[0]),
        .I1(x_in[15]),
        .I2(x_in[1]),
        .I3(p_0_in),
        .I4(y_in[1]),
        .I5(y_in[0]),
        .O(\y_13_reg_1742[20]_i_55_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_13_reg_1742[20]_i_56 
       (.I0(x_in[0]),
        .I1(y_in[0]),
        .O(\y_13_reg_1742[20]_i_56_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \y_13_reg_1742[20]_i_57 
       (.I0(x_in[15]),
        .I1(\off_1_reg_1699[13]_i_4_n_0 ),
        .I2(y_in[6]),
        .O(\y_13_reg_1742[20]_i_57_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \y_13_reg_1742[20]_i_58 
       (.I0(x_in[15]),
        .I1(\tmp_3_reg_1710_pp0_iter1_reg_reg[0]_srl2_i_71_n_0 ),
        .I2(x_in[6]),
        .O(sext_ln10_1_fu_276_p1[9]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \y_13_reg_1742[20]_i_59 
       (.I0(x_in[15]),
        .I1(\tmp_5_reg_1720[0]_i_46_n_0 ),
        .I2(y_in[5]),
        .O(\y_13_reg_1742[20]_i_59_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_13_reg_1742[20]_i_6 
       (.I0(sext_ln27_2_fu_514_p1[17]),
        .I1(\tmp_5_reg_1720_reg[0]_i_1_n_13 ),
        .O(\y_13_reg_1742[20]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \y_13_reg_1742[20]_i_60 
       (.I0(x_in[15]),
        .I1(\y_13_reg_1742[20]_i_67_n_0 ),
        .I2(x_in[5]),
        .O(sext_ln10_1_fu_276_p1[8]));
  LUT6 #(
    .INIT(64'h55555557AAAAAAA8)) 
    \y_13_reg_1742[20]_i_61 
       (.I0(x_in[15]),
        .I1(x_in[3]),
        .I2(x_in[2]),
        .I3(x_in[1]),
        .I4(x_in[0]),
        .I5(x_in[4]),
        .O(sext_ln10_1_fu_276_p1[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h5557AAA8)) 
    \y_13_reg_1742[20]_i_62 
       (.I0(x_in[15]),
        .I1(x_in[0]),
        .I2(x_in[1]),
        .I3(x_in[2]),
        .I4(x_in[3]),
        .O(sext_ln10_1_fu_276_p1[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h57A8)) 
    \y_13_reg_1742[20]_i_63 
       (.I0(x_in[15]),
        .I1(x_in[1]),
        .I2(x_in[0]),
        .I3(x_in[2]),
        .O(sext_ln10_1_fu_276_p1[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h57A8)) 
    \y_13_reg_1742[20]_i_64 
       (.I0(x_in[15]),
        .I1(y_in[1]),
        .I2(y_in[0]),
        .I3(y_in[2]),
        .O(\y_13_reg_1742[20]_i_64_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \y_13_reg_1742[20]_i_65 
       (.I0(x_in[0]),
        .I1(x_in[15]),
        .I2(x_in[1]),
        .O(sext_ln10_1_fu_276_p1[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \y_13_reg_1742[20]_i_66 
       (.I0(y_in[0]),
        .I1(x_in[15]),
        .I2(y_in[1]),
        .O(\y_13_reg_1742[20]_i_66_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \y_13_reg_1742[20]_i_67 
       (.I0(x_in[0]),
        .I1(x_in[1]),
        .I2(x_in[2]),
        .I3(x_in[3]),
        .I4(x_in[4]),
        .O(\y_13_reg_1742[20]_i_67_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_13_reg_1742[20]_i_7 
       (.I0(\tmp_5_reg_1720_reg[0]_i_1_n_14 ),
        .I1(sext_ln27_2_fu_514_p1[16]),
        .O(\y_13_reg_1742[20]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_13_reg_1742[7]_i_10 
       (.I0(\y_13_reg_1742_reg[7]_i_2_n_14 ),
        .I1(sext_ln27_2_fu_514_p1[0]),
        .O(\y_13_reg_1742[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_13_reg_1742[7]_i_11 
       (.I0(A__0[6]),
        .I1(\x_13_reg_1737_reg[15]_i_11_n_9 ),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\y_13_reg_1742[7]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_13_reg_1742[7]_i_12 
       (.I0(A__0[5]),
        .I1(\x_13_reg_1737_reg[15]_i_11_n_10 ),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\y_13_reg_1742[7]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_13_reg_1742[7]_i_13 
       (.I0(A__0[4]),
        .I1(\x_13_reg_1737_reg[15]_i_11_n_11 ),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\y_13_reg_1742[7]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_13_reg_1742[7]_i_14 
       (.I0(A__0[3]),
        .I1(\x_13_reg_1737_reg[15]_i_11_n_12 ),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\y_13_reg_1742[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_13_reg_1742[7]_i_15 
       (.I0(A__0[2]),
        .I1(\x_13_reg_1737_reg[15]_i_11_n_13 ),
        .I2(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .O(\y_13_reg_1742[7]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_13_reg_1742[7]_i_16 
       (.I0(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .I1(\x_13_reg_1737_reg[15]_i_11_n_14 ),
        .O(\y_13_reg_1742[7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_13_reg_1742[7]_i_17 
       (.I0(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .I1(\x_13_reg_1737_reg[15]_i_11_n_15 ),
        .O(\y_13_reg_1742[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_13_reg_1742[7]_i_3 
       (.I0(\y_13_reg_1742_reg[15]_i_2_n_15 ),
        .I1(sext_ln27_2_fu_514_p1[7]),
        .O(\y_13_reg_1742[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_13_reg_1742[7]_i_4 
       (.I0(\y_13_reg_1742_reg[7]_i_2_n_8 ),
        .I1(sext_ln27_2_fu_514_p1[6]),
        .O(\y_13_reg_1742[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_13_reg_1742[7]_i_5 
       (.I0(\y_13_reg_1742_reg[7]_i_2_n_9 ),
        .I1(sext_ln27_2_fu_514_p1[5]),
        .O(\y_13_reg_1742[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_13_reg_1742[7]_i_6 
       (.I0(\y_13_reg_1742_reg[7]_i_2_n_10 ),
        .I1(sext_ln27_2_fu_514_p1[4]),
        .O(\y_13_reg_1742[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_13_reg_1742[7]_i_7 
       (.I0(\y_13_reg_1742_reg[7]_i_2_n_11 ),
        .I1(sext_ln27_2_fu_514_p1[3]),
        .O(\y_13_reg_1742[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_13_reg_1742[7]_i_8 
       (.I0(\y_13_reg_1742_reg[7]_i_2_n_12 ),
        .I1(sext_ln27_2_fu_514_p1[2]),
        .O(\y_13_reg_1742[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y_13_reg_1742[7]_i_9 
       (.I0(\y_13_reg_1742_reg[7]_i_2_n_13 ),
        .I1(sext_ln27_2_fu_514_p1[1]),
        .O(\y_13_reg_1742[7]_i_9_n_0 ));
  FDRE \y_13_reg_1742_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_558_p2[0]),
        .Q(y_13_reg_1742[0]),
        .R(1'b0));
  FDRE \y_13_reg_1742_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_558_p2[10]),
        .Q(y_13_reg_1742[10]),
        .R(1'b0));
  FDRE \y_13_reg_1742_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_558_p2[11]),
        .Q(y_13_reg_1742[11]),
        .R(1'b0));
  FDRE \y_13_reg_1742_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_558_p2[12]),
        .Q(y_13_reg_1742[12]),
        .R(1'b0));
  FDRE \y_13_reg_1742_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_558_p2[13]),
        .Q(y_13_reg_1742[13]),
        .R(1'b0));
  FDRE \y_13_reg_1742_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_558_p2[14]),
        .Q(y_13_reg_1742[14]),
        .R(1'b0));
  FDRE \y_13_reg_1742_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_558_p2[15]),
        .Q(y_13_reg_1742[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_13_reg_1742_reg[15]_i_1 
       (.CI(\y_13_reg_1742_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_13_reg_1742_reg[15]_i_1_n_0 ,\y_13_reg_1742_reg[15]_i_1_n_1 ,\y_13_reg_1742_reg[15]_i_1_n_2 ,\y_13_reg_1742_reg[15]_i_1_n_3 ,\y_13_reg_1742_reg[15]_i_1_n_4 ,\y_13_reg_1742_reg[15]_i_1_n_5 ,\y_13_reg_1742_reg[15]_i_1_n_6 ,\y_13_reg_1742_reg[15]_i_1_n_7 }),
        .DI({\tmp_5_reg_1720_reg[0]_i_1_n_15 ,\y_13_reg_1742_reg[15]_i_2_n_8 ,\y_13_reg_1742_reg[15]_i_2_n_9 ,\y_13_reg_1742_reg[15]_i_2_n_10 ,\y_13_reg_1742_reg[15]_i_2_n_11 ,\y_13_reg_1742_reg[15]_i_2_n_12 ,\y_13_reg_1742_reg[15]_i_2_n_13 ,\y_13_reg_1742_reg[15]_i_2_n_14 }),
        .O(y_13_fu_558_p2[15:8]),
        .S({\y_13_reg_1742[15]_i_3_n_0 ,\y_13_reg_1742[15]_i_4_n_0 ,\y_13_reg_1742[15]_i_5_n_0 ,\y_13_reg_1742[15]_i_6_n_0 ,\y_13_reg_1742[15]_i_7_n_0 ,\y_13_reg_1742[15]_i_8_n_0 ,\y_13_reg_1742[15]_i_9_n_0 ,\y_13_reg_1742[15]_i_10_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_13_reg_1742_reg[15]_i_11 
       (.CI(\y_13_reg_1742[15]_i_20_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_13_reg_1742_reg[15]_i_11_n_0 ,\y_13_reg_1742_reg[15]_i_11_n_1 ,\y_13_reg_1742_reg[15]_i_11_n_2 ,\y_13_reg_1742_reg[15]_i_11_n_3 ,\y_13_reg_1742_reg[15]_i_11_n_4 ,\y_13_reg_1742_reg[15]_i_11_n_5 ,\y_13_reg_1742_reg[15]_i_11_n_6 ,\y_13_reg_1742_reg[15]_i_11_n_7 }),
        .DI({\y_13_reg_1742[15]_i_21_n_0 ,\y_13_reg_1742[15]_i_22_n_0 ,\y_13_reg_1742[15]_i_23_n_0 ,\y_13_reg_1742[15]_i_24_n_0 ,\y_13_reg_1742[15]_i_25_n_0 ,\y_13_reg_1742[15]_i_26_n_0 ,\y_13_reg_1742[15]_i_27_n_0 ,1'b0}),
        .O(A__0[9:2]),
        .S({\y_13_reg_1742[15]_i_28_n_0 ,\y_13_reg_1742[15]_i_29_n_0 ,\y_13_reg_1742[15]_i_30_n_0 ,\y_13_reg_1742[15]_i_31_n_0 ,\y_13_reg_1742[15]_i_32_n_0 ,\y_13_reg_1742[15]_i_33_n_0 ,\y_13_reg_1742[15]_i_34_n_0 ,\y_13_reg_1742[15]_i_35_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_13_reg_1742_reg[15]_i_2 
       (.CI(\y_13_reg_1742_reg[7]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_13_reg_1742_reg[15]_i_2_n_0 ,\y_13_reg_1742_reg[15]_i_2_n_1 ,\y_13_reg_1742_reg[15]_i_2_n_2 ,\y_13_reg_1742_reg[15]_i_2_n_3 ,\y_13_reg_1742_reg[15]_i_2_n_4 ,\y_13_reg_1742_reg[15]_i_2_n_5 ,\y_13_reg_1742_reg[15]_i_2_n_6 ,\y_13_reg_1742_reg[15]_i_2_n_7 }),
        .DI(A__0[14:7]),
        .O({\y_13_reg_1742_reg[15]_i_2_n_8 ,\y_13_reg_1742_reg[15]_i_2_n_9 ,\y_13_reg_1742_reg[15]_i_2_n_10 ,\y_13_reg_1742_reg[15]_i_2_n_11 ,\y_13_reg_1742_reg[15]_i_2_n_12 ,\y_13_reg_1742_reg[15]_i_2_n_13 ,\y_13_reg_1742_reg[15]_i_2_n_14 ,\y_13_reg_1742_reg[15]_i_2_n_15 }),
        .S({\y_13_reg_1742[15]_i_12_n_0 ,\y_13_reg_1742[15]_i_13_n_0 ,\y_13_reg_1742[15]_i_14_n_0 ,\y_13_reg_1742[15]_i_15_n_0 ,\y_13_reg_1742[15]_i_16_n_0 ,\y_13_reg_1742[15]_i_17_n_0 ,\y_13_reg_1742[15]_i_18_n_0 ,\y_13_reg_1742[15]_i_19_n_0 }));
  FDRE \y_13_reg_1742_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_558_p2[16]),
        .Q(y_13_reg_1742[16]),
        .R(1'b0));
  FDRE \y_13_reg_1742_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_558_p2[17]),
        .Q(y_13_reg_1742[17]),
        .R(1'b0));
  FDRE \y_13_reg_1742_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_558_p2[18]),
        .Q(y_13_reg_1742[18]),
        .R(1'b0));
  FDRE \y_13_reg_1742_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_558_p2[19]),
        .Q(y_13_reg_1742[19]),
        .R(1'b0));
  FDRE \y_13_reg_1742_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_558_p2[1]),
        .Q(y_13_reg_1742[1]),
        .R(1'b0));
  FDRE \y_13_reg_1742_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_558_p2[20]),
        .Q(y_13_reg_1742[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_13_reg_1742_reg[20]_i_1 
       (.CI(\y_13_reg_1742_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_y_13_reg_1742_reg[20]_i_1_CO_UNCONNECTED [7:4],\y_13_reg_1742_reg[20]_i_1_n_4 ,\y_13_reg_1742_reg[20]_i_1_n_5 ,\y_13_reg_1742_reg[20]_i_1_n_6 ,\y_13_reg_1742_reg[20]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\tmp_5_reg_1720_reg[0]_i_1_n_12 ,sext_ln27_2_fu_514_p1[17],\tmp_5_reg_1720_reg[0]_i_1_n_13 ,\tmp_5_reg_1720_reg[0]_i_1_n_14 }),
        .O({\NLW_y_13_reg_1742_reg[20]_i_1_O_UNCONNECTED [7:5],y_13_fu_558_p2[20:16]}),
        .S({1'b0,1'b0,1'b0,\y_13_reg_1742[20]_i_3_n_0 ,\y_13_reg_1742[20]_i_4_n_0 ,\y_13_reg_1742[20]_i_5_n_0 ,\y_13_reg_1742[20]_i_6_n_0 ,\y_13_reg_1742[20]_i_7_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_13_reg_1742_reg[20]_i_12 
       (.CI(\y_13_reg_1742_reg[20]_i_13_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_y_13_reg_1742_reg[20]_i_12_CO_UNCONNECTED [7:2],\y_13_reg_1742_reg[20]_i_12_n_6 ,\NLW_y_13_reg_1742_reg[20]_i_12_CO_UNCONNECTED [0]}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\NLW_y_13_reg_1742_reg[20]_i_12_O_UNCONNECTED [7:1],sext_ln27_fu_362_p1[18]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,\y_13_reg_1742[20]_i_24_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_13_reg_1742_reg[20]_i_13 
       (.CI(\y_13_reg_1742_reg[20]_i_15_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_13_reg_1742_reg[20]_i_13_n_0 ,\y_13_reg_1742_reg[20]_i_13_n_1 ,\y_13_reg_1742_reg[20]_i_13_n_2 ,\y_13_reg_1742_reg[20]_i_13_n_3 ,\y_13_reg_1742_reg[20]_i_13_n_4 ,\y_13_reg_1742_reg[20]_i_13_n_5 ,\y_13_reg_1742_reg[20]_i_13_n_6 ,\y_13_reg_1742_reg[20]_i_13_n_7 }),
        .DI({\y_13_reg_1742[20]_i_25_n_0 ,\y_13_reg_1742[20]_i_26_n_0 ,\y_13_reg_1742[20]_i_27_n_0 ,\y_13_reg_1742[20]_i_28_n_0 ,\y_13_reg_1742[20]_i_29_n_0 ,\y_13_reg_1742[20]_i_30_n_0 ,\y_13_reg_1742[20]_i_31_n_0 ,\y_13_reg_1742[20]_i_32_n_0 }),
        .O(sext_ln27_fu_362_p1[17:10]),
        .S({\y_13_reg_1742[20]_i_33_n_0 ,\y_13_reg_1742[20]_i_34_n_0 ,\y_13_reg_1742[20]_i_35_n_0 ,\y_13_reg_1742[20]_i_36_n_0 ,\y_13_reg_1742[20]_i_37_n_0 ,\y_13_reg_1742[20]_i_38_n_0 ,\y_13_reg_1742[20]_i_39_n_0 ,\y_13_reg_1742[20]_i_40_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_13_reg_1742_reg[20]_i_15 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\y_13_reg_1742_reg[20]_i_15_n_0 ,\y_13_reg_1742_reg[20]_i_15_n_1 ,\y_13_reg_1742_reg[20]_i_15_n_2 ,\y_13_reg_1742_reg[20]_i_15_n_3 ,\y_13_reg_1742_reg[20]_i_15_n_4 ,\y_13_reg_1742_reg[20]_i_15_n_5 ,\y_13_reg_1742_reg[20]_i_15_n_6 ,\y_13_reg_1742_reg[20]_i_15_n_7 }),
        .DI({\y_13_reg_1742[20]_i_41_n_0 ,\y_13_reg_1742[20]_i_42_n_0 ,\y_13_reg_1742[20]_i_43_n_0 ,\y_13_reg_1742[20]_i_44_n_0 ,\y_13_reg_1742[20]_i_45_n_0 ,\y_13_reg_1742[20]_i_46_n_0 ,\y_13_reg_1742[20]_i_47_n_0 ,\y_13_reg_1742[20]_i_48_n_0 }),
        .O(sext_ln27_fu_362_p1[9:2]),
        .S({\y_13_reg_1742[20]_i_49_n_0 ,\y_13_reg_1742[20]_i_50_n_0 ,\y_13_reg_1742[20]_i_51_n_0 ,\y_13_reg_1742[20]_i_52_n_0 ,\y_13_reg_1742[20]_i_53_n_0 ,\y_13_reg_1742[20]_i_54_n_0 ,\y_13_reg_1742[20]_i_55_n_0 ,\y_13_reg_1742[20]_i_56_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_13_reg_1742_reg[20]_i_2 
       (.CI(\x_13_reg_1737_reg[15]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_y_13_reg_1742_reg[20]_i_2_CO_UNCONNECTED [7:4],\y_13_reg_1742_reg[20]_i_2_n_4 ,\y_13_reg_1742_reg[20]_i_2_n_5 ,\y_13_reg_1742_reg[20]_i_2_n_6 ,\y_13_reg_1742_reg[20]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\y_13_reg_1742_reg[20]_i_8_n_14 ,\y_13_reg_1742_reg[20]_i_8_n_15 ,\y_13_reg_1742_reg[20]_i_9_n_8 ,\y_13_reg_1742_reg[20]_i_9_n_9 }),
        .O({\NLW_y_13_reg_1742_reg[20]_i_2_O_UNCONNECTED [7:5],sext_ln27_2_fu_514_p1[17:13]}),
        .S({1'b0,1'b0,1'b0,\y_13_reg_1742_reg[20]_i_8_n_13 ,\y_13_reg_1742_reg[20]_i_8_n_14 ,\y_13_reg_1742_reg[20]_i_8_n_15 ,\y_13_reg_1742[20]_i_10_n_0 ,\y_13_reg_1742[20]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_13_reg_1742_reg[20]_i_8 
       (.CI(\y_13_reg_1742_reg[20]_i_9_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_y_13_reg_1742_reg[20]_i_8_CO_UNCONNECTED [7:2],\y_13_reg_1742_reg[20]_i_8_n_6 ,\y_13_reg_1742_reg[20]_i_8_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,sext_ln27_fu_362_p1[18:17]}),
        .O({\NLW_y_13_reg_1742_reg[20]_i_8_O_UNCONNECTED [7:3],\y_13_reg_1742_reg[20]_i_8_n_13 ,\y_13_reg_1742_reg[20]_i_8_n_14 ,\y_13_reg_1742_reg[20]_i_8_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,sext_ln27_fu_362_p1[19:17]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_13_reg_1742_reg[20]_i_9 
       (.CI(\x_13_reg_1737_reg[15]_i_11_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_13_reg_1742_reg[20]_i_9_n_0 ,\y_13_reg_1742_reg[20]_i_9_n_1 ,\y_13_reg_1742_reg[20]_i_9_n_2 ,\y_13_reg_1742_reg[20]_i_9_n_3 ,\y_13_reg_1742_reg[20]_i_9_n_4 ,\y_13_reg_1742_reg[20]_i_9_n_5 ,\y_13_reg_1742_reg[20]_i_9_n_6 ,\y_13_reg_1742_reg[20]_i_9_n_7 }),
        .DI(sext_ln27_fu_362_p1[16:9]),
        .O({\y_13_reg_1742_reg[20]_i_9_n_8 ,\y_13_reg_1742_reg[20]_i_9_n_9 ,\y_13_reg_1742_reg[20]_i_9_n_10 ,\y_13_reg_1742_reg[20]_i_9_n_11 ,\y_13_reg_1742_reg[20]_i_9_n_12 ,\y_13_reg_1742_reg[20]_i_9_n_13 ,\y_13_reg_1742_reg[20]_i_9_n_14 ,\y_13_reg_1742_reg[20]_i_9_n_15 }),
        .S({\y_13_reg_1742[20]_i_16_n_0 ,\y_13_reg_1742[20]_i_17_n_0 ,\y_13_reg_1742[20]_i_18_n_0 ,\y_13_reg_1742[20]_i_19_n_0 ,\y_13_reg_1742[20]_i_20_n_0 ,\y_13_reg_1742[20]_i_21_n_0 ,\y_13_reg_1742[20]_i_22_n_0 ,\y_13_reg_1742[20]_i_23_n_0 }));
  FDRE \y_13_reg_1742_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_558_p2[2]),
        .Q(y_13_reg_1742[2]),
        .R(1'b0));
  FDRE \y_13_reg_1742_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_558_p2[3]),
        .Q(y_13_reg_1742[3]),
        .R(1'b0));
  FDRE \y_13_reg_1742_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_558_p2[4]),
        .Q(y_13_reg_1742[4]),
        .R(1'b0));
  FDRE \y_13_reg_1742_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_558_p2[5]),
        .Q(y_13_reg_1742[5]),
        .R(1'b0));
  FDRE \y_13_reg_1742_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_558_p2[6]),
        .Q(y_13_reg_1742[6]),
        .R(1'b0));
  FDRE \y_13_reg_1742_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_558_p2[7]),
        .Q(y_13_reg_1742[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_13_reg_1742_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\y_13_reg_1742_reg[7]_i_1_n_0 ,\y_13_reg_1742_reg[7]_i_1_n_1 ,\y_13_reg_1742_reg[7]_i_1_n_2 ,\y_13_reg_1742_reg[7]_i_1_n_3 ,\y_13_reg_1742_reg[7]_i_1_n_4 ,\y_13_reg_1742_reg[7]_i_1_n_5 ,\y_13_reg_1742_reg[7]_i_1_n_6 ,\y_13_reg_1742_reg[7]_i_1_n_7 }),
        .DI({\y_13_reg_1742_reg[15]_i_2_n_15 ,\y_13_reg_1742_reg[7]_i_2_n_8 ,\y_13_reg_1742_reg[7]_i_2_n_9 ,\y_13_reg_1742_reg[7]_i_2_n_10 ,\y_13_reg_1742_reg[7]_i_2_n_11 ,\y_13_reg_1742_reg[7]_i_2_n_12 ,\y_13_reg_1742_reg[7]_i_2_n_13 ,\y_13_reg_1742_reg[7]_i_2_n_14 }),
        .O(y_13_fu_558_p2[7:0]),
        .S({\y_13_reg_1742[7]_i_3_n_0 ,\y_13_reg_1742[7]_i_4_n_0 ,\y_13_reg_1742[7]_i_5_n_0 ,\y_13_reg_1742[7]_i_6_n_0 ,\y_13_reg_1742[7]_i_7_n_0 ,\y_13_reg_1742[7]_i_8_n_0 ,\y_13_reg_1742[7]_i_9_n_0 ,\y_13_reg_1742[7]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_13_reg_1742_reg[7]_i_2 
       (.CI(\tmp_5_reg_1720_reg[0]_i_2_n_5 ),
        .CI_TOP(1'b0),
        .CO({\y_13_reg_1742_reg[7]_i_2_n_0 ,\y_13_reg_1742_reg[7]_i_2_n_1 ,\y_13_reg_1742_reg[7]_i_2_n_2 ,\y_13_reg_1742_reg[7]_i_2_n_3 ,\y_13_reg_1742_reg[7]_i_2_n_4 ,\y_13_reg_1742_reg[7]_i_2_n_5 ,\y_13_reg_1742_reg[7]_i_2_n_6 ,\y_13_reg_1742_reg[7]_i_2_n_7 }),
        .DI({A__0[6:2],1'b0,1'b0,1'b0}),
        .O({\y_13_reg_1742_reg[7]_i_2_n_8 ,\y_13_reg_1742_reg[7]_i_2_n_9 ,\y_13_reg_1742_reg[7]_i_2_n_10 ,\y_13_reg_1742_reg[7]_i_2_n_11 ,\y_13_reg_1742_reg[7]_i_2_n_12 ,\y_13_reg_1742_reg[7]_i_2_n_13 ,\y_13_reg_1742_reg[7]_i_2_n_14 ,\NLW_y_13_reg_1742_reg[7]_i_2_O_UNCONNECTED [0]}),
        .S({\y_13_reg_1742[7]_i_11_n_0 ,\y_13_reg_1742[7]_i_12_n_0 ,\y_13_reg_1742[7]_i_13_n_0 ,\y_13_reg_1742[7]_i_14_n_0 ,\y_13_reg_1742[7]_i_15_n_0 ,\y_13_reg_1742[7]_i_16_n_0 ,\y_13_reg_1742[7]_i_17_n_0 ,1'b1}));
  FDRE \y_13_reg_1742_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_558_p2[8]),
        .Q(y_13_reg_1742[8]),
        .R(1'b0));
  FDRE \y_13_reg_1742_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_13_fu_558_p2[9]),
        .Q(y_13_reg_1742[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[7]_i_10 
       (.I0(y_23_fu_810_p3__0[1]),
        .I1(x_23_fu_802_p3[8]),
        .I2(y_23_fu_810_p3),
        .O(\y_26_reg_1758[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[7]_i_11 
       (.I0(y_23_fu_810_p3__0[0]),
        .I1(x_23_fu_802_p3[7]),
        .I2(y_23_fu_810_p3),
        .O(\y_26_reg_1758[7]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y_26_reg_1758[7]_i_12 
       (.I0(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\y_26_reg_1758[7]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[7]_i_14 
       (.I0(\y_26_reg_1758_reg[7]_i_13_n_8 ),
        .I1(\xs_8_reg_1764_reg[0]_i_8_n_10 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\y_26_reg_1758[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[7]_i_15 
       (.I0(\y_26_reg_1758_reg[7]_i_13_n_9 ),
        .I1(\xs_8_reg_1764_reg[0]_i_8_n_11 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\y_26_reg_1758[7]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[7]_i_16 
       (.I0(\y_26_reg_1758_reg[7]_i_13_n_10 ),
        .I1(\xs_8_reg_1764_reg[0]_i_8_n_12 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\y_26_reg_1758[7]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[7]_i_17 
       (.I0(\y_26_reg_1758_reg[7]_i_13_n_11 ),
        .I1(\xs_8_reg_1764_reg[0]_i_8_n_13 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\y_26_reg_1758[7]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[7]_i_18 
       (.I0(\y_26_reg_1758_reg[7]_i_13_n_12 ),
        .I1(\xs_8_reg_1764_reg[0]_i_8_n_14 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\y_26_reg_1758[7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[7]_i_19 
       (.I0(\y_26_reg_1758_reg[7]_i_13_n_13 ),
        .I1(\xs_8_reg_1764_reg[0]_i_8_n_15 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\y_26_reg_1758[7]_i_19_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y_26_reg_1758[7]_i_2 
       (.I0(y_23_fu_810_p3),
        .O(\y_26_reg_1758[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[7]_i_20 
       (.I0(\y_26_reg_1758_reg[7]_i_13_n_14 ),
        .I1(\x_26_reg_1752_reg[7]_i_11_n_8 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\y_26_reg_1758[7]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[7]_i_21 
       (.I0(\y_26_reg_1758_reg[7]_i_13_n_15 ),
        .I1(\x_26_reg_1752_reg[7]_i_11_n_9 ),
        .I2(\tmp_9_reg_1747_reg[0]_i_3_n_11 ),
        .O(\y_26_reg_1758[7]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y_26_reg_1758[7]_i_22 
       (.I0(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\y_26_reg_1758[7]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[7]_i_24 
       (.I0(\y_26_reg_1758_reg[7]_i_23_n_8 ),
        .I1(\xs_8_reg_1764_reg[0]_i_15_n_11 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\y_26_reg_1758[7]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[7]_i_25 
       (.I0(\y_26_reg_1758_reg[7]_i_23_n_9 ),
        .I1(\xs_8_reg_1764_reg[0]_i_15_n_12 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\y_26_reg_1758[7]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[7]_i_26 
       (.I0(\y_26_reg_1758_reg[7]_i_23_n_10 ),
        .I1(\xs_8_reg_1764_reg[0]_i_15_n_13 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\y_26_reg_1758[7]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[7]_i_27 
       (.I0(\y_26_reg_1758_reg[7]_i_23_n_11 ),
        .I1(\xs_8_reg_1764_reg[0]_i_15_n_14 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\y_26_reg_1758[7]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[7]_i_28 
       (.I0(\y_26_reg_1758_reg[7]_i_23_n_12 ),
        .I1(\xs_8_reg_1764_reg[0]_i_15_n_15 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\y_26_reg_1758[7]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[7]_i_29 
       (.I0(\y_26_reg_1758_reg[7]_i_23_n_13 ),
        .I1(\x_26_reg_1752_reg[7]_i_20_n_8 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\y_26_reg_1758[7]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[7]_i_30 
       (.I0(\y_26_reg_1758_reg[7]_i_23_n_14 ),
        .I1(\x_26_reg_1752_reg[7]_i_20_n_9 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\y_26_reg_1758[7]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[7]_i_31 
       (.I0(\y_26_reg_1758_reg[7]_i_23_n_15 ),
        .I1(\x_26_reg_1752_reg[7]_i_20_n_10 ),
        .I2(\add_ln43_9_reg_1781_reg[14]_i_9_n_11 ),
        .O(\y_26_reg_1758[7]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h1B)) 
    \y_26_reg_1758[7]_i_32 
       (.I0(tmp_5_reg_1720),
        .I1(y_13_reg_1742[20]),
        .I2(y_12_reg_1732[20]),
        .O(\y_26_reg_1758[7]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \y_26_reg_1758[7]_i_33 
       (.I0(y_12_reg_1732[7]),
        .I1(y_13_reg_1742[7]),
        .I2(tmp_5_reg_1720),
        .O(\y_26_reg_1758[7]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \y_26_reg_1758[7]_i_34 
       (.I0(y_12_reg_1732[6]),
        .I1(y_13_reg_1742[6]),
        .I2(tmp_5_reg_1720),
        .O(\y_26_reg_1758[7]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \y_26_reg_1758[7]_i_35 
       (.I0(y_12_reg_1732[5]),
        .I1(y_13_reg_1742[5]),
        .I2(tmp_5_reg_1720),
        .O(\y_26_reg_1758[7]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \y_26_reg_1758[7]_i_36 
       (.I0(y_12_reg_1732[4]),
        .I1(y_13_reg_1742[4]),
        .I2(tmp_5_reg_1720),
        .O(\y_26_reg_1758[7]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \y_26_reg_1758[7]_i_37 
       (.I0(y_12_reg_1732[3]),
        .I1(y_13_reg_1742[3]),
        .I2(tmp_5_reg_1720),
        .O(\y_26_reg_1758[7]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \y_26_reg_1758[7]_i_38 
       (.I0(y_12_reg_1732[2]),
        .I1(y_13_reg_1742[2]),
        .I2(tmp_5_reg_1720),
        .O(\y_26_reg_1758[7]_i_38_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \y_26_reg_1758[7]_i_39 
       (.I0(y_12_reg_1732[1]),
        .I1(y_13_reg_1742[1]),
        .I2(tmp_5_reg_1720),
        .O(\y_26_reg_1758[7]_i_39_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[7]_i_4 
       (.I0(y_23_fu_810_p3__0[7]),
        .I1(x_23_fu_802_p3[14]),
        .I2(y_23_fu_810_p3),
        .O(\y_26_reg_1758[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \y_26_reg_1758[7]_i_40 
       (.I0(y_12_reg_1732[0]),
        .I1(y_13_reg_1742[0]),
        .I2(tmp_5_reg_1720),
        .O(\y_26_reg_1758[7]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \y_26_reg_1758[7]_i_41 
       (.I0(y_13_reg_1742[7]),
        .I1(y_12_reg_1732[7]),
        .I2(x_12_reg_1727[11]),
        .I3(x_13_reg_1737[11]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\y_26_reg_1758[7]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \y_26_reg_1758[7]_i_42 
       (.I0(y_13_reg_1742[6]),
        .I1(y_12_reg_1732[6]),
        .I2(x_12_reg_1727[10]),
        .I3(x_13_reg_1737[10]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\y_26_reg_1758[7]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \y_26_reg_1758[7]_i_43 
       (.I0(y_13_reg_1742[5]),
        .I1(y_12_reg_1732[5]),
        .I2(x_12_reg_1727[9]),
        .I3(x_13_reg_1737[9]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\y_26_reg_1758[7]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \y_26_reg_1758[7]_i_44 
       (.I0(y_13_reg_1742[4]),
        .I1(y_12_reg_1732[4]),
        .I2(x_12_reg_1727[8]),
        .I3(x_13_reg_1737[8]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\y_26_reg_1758[7]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \y_26_reg_1758[7]_i_45 
       (.I0(y_13_reg_1742[3]),
        .I1(y_12_reg_1732[3]),
        .I2(x_12_reg_1727[7]),
        .I3(x_13_reg_1737[7]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\y_26_reg_1758[7]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \y_26_reg_1758[7]_i_46 
       (.I0(y_13_reg_1742[2]),
        .I1(y_12_reg_1732[2]),
        .I2(x_12_reg_1727[6]),
        .I3(x_13_reg_1737[6]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\y_26_reg_1758[7]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \y_26_reg_1758[7]_i_47 
       (.I0(y_13_reg_1742[1]),
        .I1(y_12_reg_1732[1]),
        .I2(x_12_reg_1727[5]),
        .I3(x_13_reg_1737[5]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\y_26_reg_1758[7]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    \y_26_reg_1758[7]_i_48 
       (.I0(y_13_reg_1742[0]),
        .I1(y_12_reg_1732[0]),
        .I2(x_12_reg_1727[4]),
        .I3(x_13_reg_1737[4]),
        .I4(tmp_5_reg_1720),
        .I5(sel),
        .O(\y_26_reg_1758[7]_i_48_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[7]_i_5 
       (.I0(y_23_fu_810_p3__0[6]),
        .I1(x_23_fu_802_p3[13]),
        .I2(y_23_fu_810_p3),
        .O(\y_26_reg_1758[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[7]_i_6 
       (.I0(y_23_fu_810_p3__0[5]),
        .I1(x_23_fu_802_p3[12]),
        .I2(y_23_fu_810_p3),
        .O(\y_26_reg_1758[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[7]_i_7 
       (.I0(y_23_fu_810_p3__0[4]),
        .I1(x_23_fu_802_p3[11]),
        .I2(y_23_fu_810_p3),
        .O(\y_26_reg_1758[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[7]_i_8 
       (.I0(y_23_fu_810_p3__0[3]),
        .I1(x_23_fu_802_p3[10]),
        .I2(y_23_fu_810_p3),
        .O(\y_26_reg_1758[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[7]_i_9 
       (.I0(y_23_fu_810_p3__0[2]),
        .I1(x_23_fu_802_p3[9]),
        .I2(y_23_fu_810_p3),
        .O(\y_26_reg_1758[7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[8]_i_2 
       (.I0(y_23_fu_810_p3__0[15]),
        .I1(x_23_fu_802_p3[20]),
        .I2(y_23_fu_810_p3),
        .O(\y_26_reg_1758[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[8]_i_3 
       (.I0(y_23_fu_810_p3__0[14]),
        .I1(x_23_fu_802_p3[20]),
        .I2(y_23_fu_810_p3),
        .O(\y_26_reg_1758[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[8]_i_4 
       (.I0(y_23_fu_810_p3__0[13]),
        .I1(x_23_fu_802_p3[20]),
        .I2(y_23_fu_810_p3),
        .O(\y_26_reg_1758[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[8]_i_5 
       (.I0(y_23_fu_810_p3__0[12]),
        .I1(x_23_fu_802_p3[19]),
        .I2(y_23_fu_810_p3),
        .O(\y_26_reg_1758[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[8]_i_6 
       (.I0(y_23_fu_810_p3__0[11]),
        .I1(x_23_fu_802_p3[18]),
        .I2(y_23_fu_810_p3),
        .O(\y_26_reg_1758[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[8]_i_7 
       (.I0(y_23_fu_810_p3__0[10]),
        .I1(x_23_fu_802_p3[17]),
        .I2(y_23_fu_810_p3),
        .O(\y_26_reg_1758[8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[8]_i_8 
       (.I0(y_23_fu_810_p3__0[9]),
        .I1(x_23_fu_802_p3[16]),
        .I2(y_23_fu_810_p3),
        .O(\y_26_reg_1758[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_26_reg_1758[8]_i_9 
       (.I0(y_23_fu_810_p3__0[8]),
        .I1(x_23_fu_802_p3[15]),
        .I2(y_23_fu_810_p3),
        .O(\y_26_reg_1758[8]_i_9_n_0 ));
  FDRE \y_26_reg_1758_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_894_p3[0]),
        .Q(y_26_reg_1758[0]),
        .R(1'b0));
  FDRE \y_26_reg_1758_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_894_p3[10]),
        .Q(y_26_reg_1758[10]),
        .R(1'b0));
  FDRE \y_26_reg_1758_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_894_p3[11]),
        .Q(y_26_reg_1758[11]),
        .R(1'b0));
  FDRE \y_26_reg_1758_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_894_p3[12]),
        .Q(y_26_reg_1758[12]),
        .R(1'b0));
  FDRE \y_26_reg_1758_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_894_p3[13]),
        .Q(y_26_reg_1758[13]),
        .R(1'b0));
  FDRE \y_26_reg_1758_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_894_p3[14]),
        .Q(y_26_reg_1758[14]),
        .R(1'b0));
  FDRE \y_26_reg_1758_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_894_p3[15]),
        .Q(y_26_reg_1758[15]),
        .R(1'b0));
  FDRE \y_26_reg_1758_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_894_p3[16]),
        .Q(y_26_reg_1758[16]),
        .R(1'b0));
  FDRE \y_26_reg_1758_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_894_p3[17]),
        .Q(y_26_reg_1758[17]),
        .R(1'b0));
  FDRE \y_26_reg_1758_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_894_p3[18]),
        .Q(y_26_reg_1758[18]),
        .R(1'b0));
  FDRE \y_26_reg_1758_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_894_p3[19]),
        .Q(y_26_reg_1758[19]),
        .R(1'b0));
  FDRE \y_26_reg_1758_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_894_p3[1]),
        .Q(y_26_reg_1758[1]),
        .R(1'b0));
  FDRE \y_26_reg_1758_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_894_p3[2]),
        .Q(y_26_reg_1758[2]),
        .R(1'b0));
  FDRE \y_26_reg_1758_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_894_p3[3]),
        .Q(y_26_reg_1758[3]),
        .R(1'b0));
  FDRE \y_26_reg_1758_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_894_p3[4]),
        .Q(y_26_reg_1758[4]),
        .R(1'b0));
  FDRE \y_26_reg_1758_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_894_p3[5]),
        .Q(y_26_reg_1758[5]),
        .R(1'b0));
  FDRE \y_26_reg_1758_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_894_p3[6]),
        .Q(y_26_reg_1758[6]),
        .R(1'b0));
  FDRE \y_26_reg_1758_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_894_p3[7]),
        .Q(y_26_reg_1758[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_26_reg_1758_reg[7]_i_1 
       (.CI(\y_26_reg_1758[7]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_26_reg_1758_reg[7]_i_1_n_0 ,\y_26_reg_1758_reg[7]_i_1_n_1 ,\y_26_reg_1758_reg[7]_i_1_n_2 ,\y_26_reg_1758_reg[7]_i_1_n_3 ,\y_26_reg_1758_reg[7]_i_1_n_4 ,\y_26_reg_1758_reg[7]_i_1_n_5 ,\y_26_reg_1758_reg[7]_i_1_n_6 ,\y_26_reg_1758_reg[7]_i_1_n_7 }),
        .DI(y_23_fu_810_p3__0[7:0]),
        .O(y_26_fu_894_p3[7:0]),
        .S({\y_26_reg_1758[7]_i_4_n_0 ,\y_26_reg_1758[7]_i_5_n_0 ,\y_26_reg_1758[7]_i_6_n_0 ,\y_26_reg_1758[7]_i_7_n_0 ,\y_26_reg_1758[7]_i_8_n_0 ,\y_26_reg_1758[7]_i_9_n_0 ,\y_26_reg_1758[7]_i_10_n_0 ,\y_26_reg_1758[7]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_26_reg_1758_reg[7]_i_13 
       (.CI(\y_26_reg_1758[7]_i_22_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_26_reg_1758_reg[7]_i_13_n_0 ,\y_26_reg_1758_reg[7]_i_13_n_1 ,\y_26_reg_1758_reg[7]_i_13_n_2 ,\y_26_reg_1758_reg[7]_i_13_n_3 ,\y_26_reg_1758_reg[7]_i_13_n_4 ,\y_26_reg_1758_reg[7]_i_13_n_5 ,\y_26_reg_1758_reg[7]_i_13_n_6 ,\y_26_reg_1758_reg[7]_i_13_n_7 }),
        .DI({\y_26_reg_1758_reg[7]_i_23_n_8 ,\y_26_reg_1758_reg[7]_i_23_n_9 ,\y_26_reg_1758_reg[7]_i_23_n_10 ,\y_26_reg_1758_reg[7]_i_23_n_11 ,\y_26_reg_1758_reg[7]_i_23_n_12 ,\y_26_reg_1758_reg[7]_i_23_n_13 ,\y_26_reg_1758_reg[7]_i_23_n_14 ,\y_26_reg_1758_reg[7]_i_23_n_15 }),
        .O({\y_26_reg_1758_reg[7]_i_13_n_8 ,\y_26_reg_1758_reg[7]_i_13_n_9 ,\y_26_reg_1758_reg[7]_i_13_n_10 ,\y_26_reg_1758_reg[7]_i_13_n_11 ,\y_26_reg_1758_reg[7]_i_13_n_12 ,\y_26_reg_1758_reg[7]_i_13_n_13 ,\y_26_reg_1758_reg[7]_i_13_n_14 ,\y_26_reg_1758_reg[7]_i_13_n_15 }),
        .S({\y_26_reg_1758[7]_i_24_n_0 ,\y_26_reg_1758[7]_i_25_n_0 ,\y_26_reg_1758[7]_i_26_n_0 ,\y_26_reg_1758[7]_i_27_n_0 ,\y_26_reg_1758[7]_i_28_n_0 ,\y_26_reg_1758[7]_i_29_n_0 ,\y_26_reg_1758[7]_i_30_n_0 ,\y_26_reg_1758[7]_i_31_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_26_reg_1758_reg[7]_i_23 
       (.CI(\y_26_reg_1758[7]_i_32_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_26_reg_1758_reg[7]_i_23_n_0 ,\y_26_reg_1758_reg[7]_i_23_n_1 ,\y_26_reg_1758_reg[7]_i_23_n_2 ,\y_26_reg_1758_reg[7]_i_23_n_3 ,\y_26_reg_1758_reg[7]_i_23_n_4 ,\y_26_reg_1758_reg[7]_i_23_n_5 ,\y_26_reg_1758_reg[7]_i_23_n_6 ,\y_26_reg_1758_reg[7]_i_23_n_7 }),
        .DI({\y_26_reg_1758[7]_i_33_n_0 ,\y_26_reg_1758[7]_i_34_n_0 ,\y_26_reg_1758[7]_i_35_n_0 ,\y_26_reg_1758[7]_i_36_n_0 ,\y_26_reg_1758[7]_i_37_n_0 ,\y_26_reg_1758[7]_i_38_n_0 ,\y_26_reg_1758[7]_i_39_n_0 ,\y_26_reg_1758[7]_i_40_n_0 }),
        .O({\y_26_reg_1758_reg[7]_i_23_n_8 ,\y_26_reg_1758_reg[7]_i_23_n_9 ,\y_26_reg_1758_reg[7]_i_23_n_10 ,\y_26_reg_1758_reg[7]_i_23_n_11 ,\y_26_reg_1758_reg[7]_i_23_n_12 ,\y_26_reg_1758_reg[7]_i_23_n_13 ,\y_26_reg_1758_reg[7]_i_23_n_14 ,\y_26_reg_1758_reg[7]_i_23_n_15 }),
        .S({\y_26_reg_1758[7]_i_41_n_0 ,\y_26_reg_1758[7]_i_42_n_0 ,\y_26_reg_1758[7]_i_43_n_0 ,\y_26_reg_1758[7]_i_44_n_0 ,\y_26_reg_1758[7]_i_45_n_0 ,\y_26_reg_1758[7]_i_46_n_0 ,\y_26_reg_1758[7]_i_47_n_0 ,\y_26_reg_1758[7]_i_48_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_26_reg_1758_reg[7]_i_3 
       (.CI(\y_26_reg_1758[7]_i_12_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_26_reg_1758_reg[7]_i_3_n_0 ,\y_26_reg_1758_reg[7]_i_3_n_1 ,\y_26_reg_1758_reg[7]_i_3_n_2 ,\y_26_reg_1758_reg[7]_i_3_n_3 ,\y_26_reg_1758_reg[7]_i_3_n_4 ,\y_26_reg_1758_reg[7]_i_3_n_5 ,\y_26_reg_1758_reg[7]_i_3_n_6 ,\y_26_reg_1758_reg[7]_i_3_n_7 }),
        .DI({\y_26_reg_1758_reg[7]_i_13_n_8 ,\y_26_reg_1758_reg[7]_i_13_n_9 ,\y_26_reg_1758_reg[7]_i_13_n_10 ,\y_26_reg_1758_reg[7]_i_13_n_11 ,\y_26_reg_1758_reg[7]_i_13_n_12 ,\y_26_reg_1758_reg[7]_i_13_n_13 ,\y_26_reg_1758_reg[7]_i_13_n_14 ,\y_26_reg_1758_reg[7]_i_13_n_15 }),
        .O(y_23_fu_810_p3__0[7:0]),
        .S({\y_26_reg_1758[7]_i_14_n_0 ,\y_26_reg_1758[7]_i_15_n_0 ,\y_26_reg_1758[7]_i_16_n_0 ,\y_26_reg_1758[7]_i_17_n_0 ,\y_26_reg_1758[7]_i_18_n_0 ,\y_26_reg_1758[7]_i_19_n_0 ,\y_26_reg_1758[7]_i_20_n_0 ,\y_26_reg_1758[7]_i_21_n_0 }));
  FDRE \y_26_reg_1758_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_894_p3[8]),
        .Q(y_26_reg_1758[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_26_reg_1758_reg[8]_i_1 
       (.CI(\y_26_reg_1758_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_26_reg_1758_reg[8]_i_1_n_0 ,\y_26_reg_1758_reg[8]_i_1_n_1 ,\y_26_reg_1758_reg[8]_i_1_n_2 ,\y_26_reg_1758_reg[8]_i_1_n_3 ,\y_26_reg_1758_reg[8]_i_1_n_4 ,\y_26_reg_1758_reg[8]_i_1_n_5 ,\y_26_reg_1758_reg[8]_i_1_n_6 ,\y_26_reg_1758_reg[8]_i_1_n_7 }),
        .DI(y_23_fu_810_p3__0[15:8]),
        .O(y_26_fu_894_p3[15:8]),
        .S({\y_26_reg_1758[8]_i_2_n_0 ,\y_26_reg_1758[8]_i_3_n_0 ,\y_26_reg_1758[8]_i_4_n_0 ,\y_26_reg_1758[8]_i_5_n_0 ,\y_26_reg_1758[8]_i_6_n_0 ,\y_26_reg_1758[8]_i_7_n_0 ,\y_26_reg_1758[8]_i_8_n_0 ,\y_26_reg_1758[8]_i_9_n_0 }));
  FDRE \y_26_reg_1758_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_26_fu_894_p3[9]),
        .Q(y_26_reg_1758[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[11]_i_10 
       (.I0(y_35_fu_1135_p3__0[8]),
        .I1(x_35_fu_1127_p3[19]),
        .I2(y_35_fu_1135_p3),
        .O(\y_38_reg_1807[11]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[11]_i_11 
       (.I0(y_32_fu_1059_p3__0[15]),
        .I1(x_32_fu_1051_p3[20]),
        .I2(y_32_fu_1059_p3),
        .O(\y_38_reg_1807[11]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[11]_i_12 
       (.I0(y_32_fu_1059_p3__0[14]),
        .I1(x_32_fu_1051_p3[20]),
        .I2(y_32_fu_1059_p3),
        .O(\y_38_reg_1807[11]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[11]_i_13 
       (.I0(y_32_fu_1059_p3__0[13]),
        .I1(x_32_fu_1051_p3[20]),
        .I2(y_32_fu_1059_p3),
        .O(\y_38_reg_1807[11]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[11]_i_14 
       (.I0(y_32_fu_1059_p3__0[12]),
        .I1(x_32_fu_1051_p3[20]),
        .I2(y_32_fu_1059_p3),
        .O(\y_38_reg_1807[11]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[11]_i_15 
       (.I0(y_32_fu_1059_p3__0[11]),
        .I1(x_32_fu_1051_p3[20]),
        .I2(y_32_fu_1059_p3),
        .O(\y_38_reg_1807[11]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[11]_i_16 
       (.I0(y_32_fu_1059_p3__0[10]),
        .I1(x_32_fu_1051_p3[20]),
        .I2(y_32_fu_1059_p3),
        .O(\y_38_reg_1807[11]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[11]_i_17 
       (.I0(y_32_fu_1059_p3__0[9]),
        .I1(x_32_fu_1051_p3[19]),
        .I2(y_32_fu_1059_p3),
        .O(\y_38_reg_1807[11]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[11]_i_18 
       (.I0(y_32_fu_1059_p3__0[8]),
        .I1(x_32_fu_1051_p3[18]),
        .I2(y_32_fu_1059_p3),
        .O(\y_38_reg_1807[11]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[11]_i_3 
       (.I0(y_35_fu_1135_p3__0[15]),
        .I1(x_35_fu_1127_p3[20]),
        .I2(y_35_fu_1135_p3),
        .O(\y_38_reg_1807[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[11]_i_4 
       (.I0(y_35_fu_1135_p3__0[14]),
        .I1(x_35_fu_1127_p3[20]),
        .I2(y_35_fu_1135_p3),
        .O(\y_38_reg_1807[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[11]_i_5 
       (.I0(y_35_fu_1135_p3__0[13]),
        .I1(x_35_fu_1127_p3[20]),
        .I2(y_35_fu_1135_p3),
        .O(\y_38_reg_1807[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[11]_i_6 
       (.I0(y_35_fu_1135_p3__0[12]),
        .I1(x_35_fu_1127_p3[20]),
        .I2(y_35_fu_1135_p3),
        .O(\y_38_reg_1807[11]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[11]_i_7 
       (.I0(y_35_fu_1135_p3__0[11]),
        .I1(x_35_fu_1127_p3[20]),
        .I2(y_35_fu_1135_p3),
        .O(\y_38_reg_1807[11]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[11]_i_8 
       (.I0(y_35_fu_1135_p3__0[10]),
        .I1(x_35_fu_1127_p3[20]),
        .I2(y_35_fu_1135_p3),
        .O(\y_38_reg_1807[11]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[11]_i_9 
       (.I0(y_35_fu_1135_p3__0[9]),
        .I1(x_35_fu_1127_p3[20]),
        .I2(y_35_fu_1135_p3),
        .O(\y_38_reg_1807[11]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[7]_i_10 
       (.I0(y_35_fu_1135_p3__0[1]),
        .I1(x_35_fu_1127_p3[12]),
        .I2(y_35_fu_1135_p3),
        .O(\y_38_reg_1807[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[7]_i_11 
       (.I0(y_35_fu_1135_p3__0[0]),
        .I1(x_35_fu_1127_p3[11]),
        .I2(y_35_fu_1135_p3),
        .O(\y_38_reg_1807[7]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y_38_reg_1807[7]_i_12 
       (.I0(y_32_fu_1059_p3),
        .O(\y_38_reg_1807[7]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[7]_i_14 
       (.I0(y_32_fu_1059_p3__0[7]),
        .I1(x_32_fu_1051_p3[17]),
        .I2(y_32_fu_1059_p3),
        .O(\y_38_reg_1807[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[7]_i_15 
       (.I0(y_32_fu_1059_p3__0[6]),
        .I1(x_32_fu_1051_p3[16]),
        .I2(y_32_fu_1059_p3),
        .O(\y_38_reg_1807[7]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[7]_i_16 
       (.I0(y_32_fu_1059_p3__0[5]),
        .I1(x_32_fu_1051_p3[15]),
        .I2(y_32_fu_1059_p3),
        .O(\y_38_reg_1807[7]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[7]_i_17 
       (.I0(y_32_fu_1059_p3__0[4]),
        .I1(x_32_fu_1051_p3[14]),
        .I2(y_32_fu_1059_p3),
        .O(\y_38_reg_1807[7]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[7]_i_18 
       (.I0(y_32_fu_1059_p3__0[3]),
        .I1(x_32_fu_1051_p3[13]),
        .I2(y_32_fu_1059_p3),
        .O(\y_38_reg_1807[7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[7]_i_19 
       (.I0(y_32_fu_1059_p3__0[2]),
        .I1(x_32_fu_1051_p3[12]),
        .I2(y_32_fu_1059_p3),
        .O(\y_38_reg_1807[7]_i_19_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y_38_reg_1807[7]_i_2 
       (.I0(y_35_fu_1135_p3),
        .O(\y_38_reg_1807[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[7]_i_20 
       (.I0(y_32_fu_1059_p3__0[1]),
        .I1(x_32_fu_1051_p3[11]),
        .I2(y_32_fu_1059_p3),
        .O(\y_38_reg_1807[7]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[7]_i_21 
       (.I0(y_32_fu_1059_p3__0[0]),
        .I1(x_32_fu_1051_p3[10]),
        .I2(y_32_fu_1059_p3),
        .O(\y_38_reg_1807[7]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y_38_reg_1807[7]_i_22 
       (.I0(y_29_fu_984_p3),
        .O(\y_38_reg_1807[7]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[7]_i_23 
       (.I0(y_29_fu_984_p3__0[7]),
        .I1(x_29_fu_977_p3[16]),
        .I2(y_29_fu_984_p3),
        .O(\y_38_reg_1807[7]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[7]_i_24 
       (.I0(y_29_fu_984_p3__0[6]),
        .I1(x_29_fu_977_p3[15]),
        .I2(y_29_fu_984_p3),
        .O(\y_38_reg_1807[7]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[7]_i_25 
       (.I0(y_29_fu_984_p3__0[5]),
        .I1(x_29_fu_977_p3[14]),
        .I2(y_29_fu_984_p3),
        .O(\y_38_reg_1807[7]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[7]_i_26 
       (.I0(y_29_fu_984_p3__0[4]),
        .I1(x_29_fu_977_p3[13]),
        .I2(y_29_fu_984_p3),
        .O(\y_38_reg_1807[7]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[7]_i_27 
       (.I0(y_29_fu_984_p3__0[3]),
        .I1(x_29_fu_977_p3[12]),
        .I2(y_29_fu_984_p3),
        .O(\y_38_reg_1807[7]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[7]_i_28 
       (.I0(y_29_fu_984_p3__0[2]),
        .I1(x_29_fu_977_p3[11]),
        .I2(y_29_fu_984_p3),
        .O(\y_38_reg_1807[7]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[7]_i_29 
       (.I0(y_29_fu_984_p3__0[1]),
        .I1(x_29_fu_977_p3[10]),
        .I2(y_29_fu_984_p3),
        .O(\y_38_reg_1807[7]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[7]_i_30 
       (.I0(y_29_fu_984_p3__0[0]),
        .I1(x_29_fu_977_p3[9]),
        .I2(y_29_fu_984_p3),
        .O(\y_38_reg_1807[7]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[7]_i_4 
       (.I0(y_35_fu_1135_p3__0[7]),
        .I1(x_35_fu_1127_p3[18]),
        .I2(y_35_fu_1135_p3),
        .O(\y_38_reg_1807[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[7]_i_5 
       (.I0(y_35_fu_1135_p3__0[6]),
        .I1(x_35_fu_1127_p3[17]),
        .I2(y_35_fu_1135_p3),
        .O(\y_38_reg_1807[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[7]_i_6 
       (.I0(y_35_fu_1135_p3__0[5]),
        .I1(x_35_fu_1127_p3[16]),
        .I2(y_35_fu_1135_p3),
        .O(\y_38_reg_1807[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[7]_i_7 
       (.I0(y_35_fu_1135_p3__0[4]),
        .I1(x_35_fu_1127_p3[15]),
        .I2(y_35_fu_1135_p3),
        .O(\y_38_reg_1807[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[7]_i_8 
       (.I0(y_35_fu_1135_p3__0[3]),
        .I1(x_35_fu_1127_p3[14]),
        .I2(y_35_fu_1135_p3),
        .O(\y_38_reg_1807[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_38_reg_1807[7]_i_9 
       (.I0(y_35_fu_1135_p3__0[2]),
        .I1(x_35_fu_1127_p3[13]),
        .I2(y_35_fu_1135_p3),
        .O(\y_38_reg_1807[7]_i_9_n_0 ));
  FDRE \y_38_reg_1807_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_38_fu_1211_p3[0]),
        .Q(y_38_reg_1807[0]),
        .R(1'b0));
  FDRE \y_38_reg_1807_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_38_fu_1211_p3[10]),
        .Q(y_38_reg_1807[10]),
        .R(1'b0));
  FDRE \y_38_reg_1807_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_38_fu_1211_p3[11]),
        .Q(y_38_reg_1807[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_38_reg_1807_reg[11]_i_1 
       (.CI(\y_38_reg_1807_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_38_reg_1807_reg[11]_i_1_n_0 ,\y_38_reg_1807_reg[11]_i_1_n_1 ,\y_38_reg_1807_reg[11]_i_1_n_2 ,\y_38_reg_1807_reg[11]_i_1_n_3 ,\y_38_reg_1807_reg[11]_i_1_n_4 ,\y_38_reg_1807_reg[11]_i_1_n_5 ,\y_38_reg_1807_reg[11]_i_1_n_6 ,\y_38_reg_1807_reg[11]_i_1_n_7 }),
        .DI(y_35_fu_1135_p3__0[15:8]),
        .O(y_38_fu_1211_p3[15:8]),
        .S({\y_38_reg_1807[11]_i_3_n_0 ,\y_38_reg_1807[11]_i_4_n_0 ,\y_38_reg_1807[11]_i_5_n_0 ,\y_38_reg_1807[11]_i_6_n_0 ,\y_38_reg_1807[11]_i_7_n_0 ,\y_38_reg_1807[11]_i_8_n_0 ,\y_38_reg_1807[11]_i_9_n_0 ,\y_38_reg_1807[11]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_38_reg_1807_reg[11]_i_2 
       (.CI(\y_38_reg_1807_reg[7]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_38_reg_1807_reg[11]_i_2_n_0 ,\y_38_reg_1807_reg[11]_i_2_n_1 ,\y_38_reg_1807_reg[11]_i_2_n_2 ,\y_38_reg_1807_reg[11]_i_2_n_3 ,\y_38_reg_1807_reg[11]_i_2_n_4 ,\y_38_reg_1807_reg[11]_i_2_n_5 ,\y_38_reg_1807_reg[11]_i_2_n_6 ,\y_38_reg_1807_reg[11]_i_2_n_7 }),
        .DI(y_32_fu_1059_p3__0[15:8]),
        .O(y_35_fu_1135_p3__0[15:8]),
        .S({\y_38_reg_1807[11]_i_11_n_0 ,\y_38_reg_1807[11]_i_12_n_0 ,\y_38_reg_1807[11]_i_13_n_0 ,\y_38_reg_1807[11]_i_14_n_0 ,\y_38_reg_1807[11]_i_15_n_0 ,\y_38_reg_1807[11]_i_16_n_0 ,\y_38_reg_1807[11]_i_17_n_0 ,\y_38_reg_1807[11]_i_18_n_0 }));
  FDRE \y_38_reg_1807_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_38_fu_1211_p3[12]),
        .Q(y_38_reg_1807[12]),
        .R(1'b0));
  FDRE \y_38_reg_1807_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_38_fu_1211_p3[13]),
        .Q(y_38_reg_1807[13]),
        .R(1'b0));
  FDRE \y_38_reg_1807_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_38_fu_1211_p3[14]),
        .Q(y_38_reg_1807[14]),
        .R(1'b0));
  FDRE \y_38_reg_1807_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_38_fu_1211_p3[15]),
        .Q(y_38_reg_1807[15]),
        .R(1'b0));
  FDRE \y_38_reg_1807_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_38_fu_1211_p3[16]),
        .Q(y_38_reg_1807[16]),
        .R(1'b0));
  FDRE \y_38_reg_1807_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_38_fu_1211_p3[17]),
        .Q(y_38_reg_1807[17]),
        .R(1'b0));
  FDRE \y_38_reg_1807_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_38_fu_1211_p3[18]),
        .Q(y_38_reg_1807[18]),
        .R(1'b0));
  FDRE \y_38_reg_1807_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_38_fu_1211_p3[19]),
        .Q(y_38_reg_1807[19]),
        .R(1'b0));
  FDRE \y_38_reg_1807_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_38_fu_1211_p3[1]),
        .Q(y_38_reg_1807[1]),
        .R(1'b0));
  FDRE \y_38_reg_1807_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_38_fu_1211_p3[2]),
        .Q(y_38_reg_1807[2]),
        .R(1'b0));
  FDRE \y_38_reg_1807_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_38_fu_1211_p3[3]),
        .Q(y_38_reg_1807[3]),
        .R(1'b0));
  FDRE \y_38_reg_1807_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_38_fu_1211_p3[4]),
        .Q(y_38_reg_1807[4]),
        .R(1'b0));
  FDRE \y_38_reg_1807_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_38_fu_1211_p3[5]),
        .Q(y_38_reg_1807[5]),
        .R(1'b0));
  FDRE \y_38_reg_1807_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_38_fu_1211_p3[6]),
        .Q(y_38_reg_1807[6]),
        .R(1'b0));
  FDRE \y_38_reg_1807_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_38_fu_1211_p3[7]),
        .Q(y_38_reg_1807[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_38_reg_1807_reg[7]_i_1 
       (.CI(\y_38_reg_1807[7]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_38_reg_1807_reg[7]_i_1_n_0 ,\y_38_reg_1807_reg[7]_i_1_n_1 ,\y_38_reg_1807_reg[7]_i_1_n_2 ,\y_38_reg_1807_reg[7]_i_1_n_3 ,\y_38_reg_1807_reg[7]_i_1_n_4 ,\y_38_reg_1807_reg[7]_i_1_n_5 ,\y_38_reg_1807_reg[7]_i_1_n_6 ,\y_38_reg_1807_reg[7]_i_1_n_7 }),
        .DI(y_35_fu_1135_p3__0[7:0]),
        .O(y_38_fu_1211_p3[7:0]),
        .S({\y_38_reg_1807[7]_i_4_n_0 ,\y_38_reg_1807[7]_i_5_n_0 ,\y_38_reg_1807[7]_i_6_n_0 ,\y_38_reg_1807[7]_i_7_n_0 ,\y_38_reg_1807[7]_i_8_n_0 ,\y_38_reg_1807[7]_i_9_n_0 ,\y_38_reg_1807[7]_i_10_n_0 ,\y_38_reg_1807[7]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_38_reg_1807_reg[7]_i_13 
       (.CI(\y_38_reg_1807[7]_i_22_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_38_reg_1807_reg[7]_i_13_n_0 ,\y_38_reg_1807_reg[7]_i_13_n_1 ,\y_38_reg_1807_reg[7]_i_13_n_2 ,\y_38_reg_1807_reg[7]_i_13_n_3 ,\y_38_reg_1807_reg[7]_i_13_n_4 ,\y_38_reg_1807_reg[7]_i_13_n_5 ,\y_38_reg_1807_reg[7]_i_13_n_6 ,\y_38_reg_1807_reg[7]_i_13_n_7 }),
        .DI(y_29_fu_984_p3__0[7:0]),
        .O(y_32_fu_1059_p3__0[7:0]),
        .S({\y_38_reg_1807[7]_i_23_n_0 ,\y_38_reg_1807[7]_i_24_n_0 ,\y_38_reg_1807[7]_i_25_n_0 ,\y_38_reg_1807[7]_i_26_n_0 ,\y_38_reg_1807[7]_i_27_n_0 ,\y_38_reg_1807[7]_i_28_n_0 ,\y_38_reg_1807[7]_i_29_n_0 ,\y_38_reg_1807[7]_i_30_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \y_38_reg_1807_reg[7]_i_3 
       (.CI(\y_38_reg_1807[7]_i_12_n_0 ),
        .CI_TOP(1'b0),
        .CO({\y_38_reg_1807_reg[7]_i_3_n_0 ,\y_38_reg_1807_reg[7]_i_3_n_1 ,\y_38_reg_1807_reg[7]_i_3_n_2 ,\y_38_reg_1807_reg[7]_i_3_n_3 ,\y_38_reg_1807_reg[7]_i_3_n_4 ,\y_38_reg_1807_reg[7]_i_3_n_5 ,\y_38_reg_1807_reg[7]_i_3_n_6 ,\y_38_reg_1807_reg[7]_i_3_n_7 }),
        .DI(y_32_fu_1059_p3__0[7:0]),
        .O(y_35_fu_1135_p3__0[7:0]),
        .S({\y_38_reg_1807[7]_i_14_n_0 ,\y_38_reg_1807[7]_i_15_n_0 ,\y_38_reg_1807[7]_i_16_n_0 ,\y_38_reg_1807[7]_i_17_n_0 ,\y_38_reg_1807[7]_i_18_n_0 ,\y_38_reg_1807[7]_i_19_n_0 ,\y_38_reg_1807[7]_i_20_n_0 ,\y_38_reg_1807[7]_i_21_n_0 }));
  FDRE \y_38_reg_1807_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_38_fu_1211_p3[8]),
        .Q(y_38_reg_1807[8]),
        .R(1'b0));
  FDRE \y_38_reg_1807_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_38_fu_1211_p3[9]),
        .Q(y_38_reg_1807[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cordic_vectoring_mul_20ns_14ns_32_1_1" *) 
module bd_0_hls_inst_0_cordic_vectoring_mul_20ns_14ns_32_1_1
   (mag_out,
    ap_clk,
    tmp_14_reg_1823,
    xs_12_reg_1813,
    y_38_reg_1807,
    Q);
  output [15:0]mag_out;
  input ap_clk;
  input tmp_14_reg_1823;
  input [8:0]xs_12_reg_1813;
  input [19:0]y_38_reg_1807;
  input [11:0]Q;

  wire [11:0]Q;
  wire ap_clk;
  wire [15:0]mag_out;
  wire p_0_in0_in;
  wire p_0_in1_in;
  wire p_0_in3_in;
  wire [4:2]p_2_in;
  wire tmp_14_reg_1823;
  wire tmp_product_i_100_n_0;
  wire tmp_product_i_101_n_0;
  wire tmp_product_i_102_n_0;
  wire tmp_product_i_103_n_0;
  wire tmp_product_i_104_n_0;
  wire tmp_product_i_105_n_0;
  wire tmp_product_i_106_n_0;
  wire tmp_product_i_107_n_0;
  wire tmp_product_i_108_n_0;
  wire tmp_product_i_109_n_0;
  wire tmp_product_i_10_n_0;
  wire tmp_product_i_110_n_0;
  wire tmp_product_i_111_n_0;
  wire tmp_product_i_112_n_0;
  wire tmp_product_i_113_n_0;
  wire tmp_product_i_114_n_0;
  wire tmp_product_i_115_n_0;
  wire tmp_product_i_116_n_0;
  wire tmp_product_i_117_n_0;
  wire tmp_product_i_118_n_0;
  wire tmp_product_i_11_n_0;
  wire tmp_product_i_12_n_0;
  wire tmp_product_i_13_n_0;
  wire tmp_product_i_14_n_0;
  wire tmp_product_i_15_n_0;
  wire tmp_product_i_16_n_0;
  wire tmp_product_i_17_n_0;
  wire tmp_product_i_18_n_0;
  wire tmp_product_i_19_n_4;
  wire tmp_product_i_19_n_5;
  wire tmp_product_i_19_n_6;
  wire tmp_product_i_19_n_7;
  wire tmp_product_i_1_n_5;
  wire tmp_product_i_1_n_6;
  wire tmp_product_i_1_n_7;
  wire tmp_product_i_20_n_0;
  wire tmp_product_i_20_n_1;
  wire tmp_product_i_20_n_2;
  wire tmp_product_i_20_n_3;
  wire tmp_product_i_20_n_4;
  wire tmp_product_i_20_n_5;
  wire tmp_product_i_20_n_6;
  wire tmp_product_i_20_n_7;
  wire tmp_product_i_21_n_12;
  wire tmp_product_i_21_n_13;
  wire tmp_product_i_21_n_14;
  wire tmp_product_i_21_n_15;
  wire tmp_product_i_21_n_4;
  wire tmp_product_i_21_n_5;
  wire tmp_product_i_21_n_6;
  wire tmp_product_i_21_n_7;
  wire tmp_product_i_22_n_0;
  wire tmp_product_i_22_n_1;
  wire tmp_product_i_22_n_2;
  wire tmp_product_i_22_n_3;
  wire tmp_product_i_22_n_4;
  wire tmp_product_i_22_n_5;
  wire tmp_product_i_22_n_6;
  wire tmp_product_i_22_n_7;
  wire tmp_product_i_23_n_0;
  wire tmp_product_i_24_n_0;
  wire tmp_product_i_25_n_0;
  wire tmp_product_i_26_n_0;
  wire tmp_product_i_27_n_0;
  wire tmp_product_i_28_n_0;
  wire tmp_product_i_29_n_0;
  wire tmp_product_i_2_n_0;
  wire tmp_product_i_2_n_1;
  wire tmp_product_i_2_n_2;
  wire tmp_product_i_2_n_3;
  wire tmp_product_i_2_n_4;
  wire tmp_product_i_2_n_5;
  wire tmp_product_i_2_n_6;
  wire tmp_product_i_2_n_7;
  wire tmp_product_i_30_n_11;
  wire tmp_product_i_30_n_12;
  wire tmp_product_i_30_n_13;
  wire tmp_product_i_30_n_14;
  wire tmp_product_i_30_n_15;
  wire tmp_product_i_30_n_2;
  wire tmp_product_i_30_n_4;
  wire tmp_product_i_30_n_5;
  wire tmp_product_i_30_n_6;
  wire tmp_product_i_30_n_7;
  wire tmp_product_i_31_n_12;
  wire tmp_product_i_31_n_13;
  wire tmp_product_i_31_n_14;
  wire tmp_product_i_31_n_15;
  wire tmp_product_i_31_n_4;
  wire tmp_product_i_31_n_5;
  wire tmp_product_i_31_n_6;
  wire tmp_product_i_31_n_7;
  wire tmp_product_i_32_n_0;
  wire tmp_product_i_32_n_1;
  wire tmp_product_i_32_n_10;
  wire tmp_product_i_32_n_11;
  wire tmp_product_i_32_n_12;
  wire tmp_product_i_32_n_13;
  wire tmp_product_i_32_n_14;
  wire tmp_product_i_32_n_15;
  wire tmp_product_i_32_n_2;
  wire tmp_product_i_32_n_3;
  wire tmp_product_i_32_n_4;
  wire tmp_product_i_32_n_5;
  wire tmp_product_i_32_n_6;
  wire tmp_product_i_32_n_7;
  wire tmp_product_i_32_n_8;
  wire tmp_product_i_32_n_9;
  wire tmp_product_i_33_n_0;
  wire tmp_product_i_33_n_1;
  wire tmp_product_i_33_n_10;
  wire tmp_product_i_33_n_11;
  wire tmp_product_i_33_n_12;
  wire tmp_product_i_33_n_13;
  wire tmp_product_i_33_n_14;
  wire tmp_product_i_33_n_15;
  wire tmp_product_i_33_n_2;
  wire tmp_product_i_33_n_3;
  wire tmp_product_i_33_n_4;
  wire tmp_product_i_33_n_5;
  wire tmp_product_i_33_n_6;
  wire tmp_product_i_33_n_7;
  wire tmp_product_i_33_n_8;
  wire tmp_product_i_33_n_9;
  wire tmp_product_i_34_n_0;
  wire tmp_product_i_35_n_0;
  wire tmp_product_i_36_n_0;
  wire tmp_product_i_37_n_0;
  wire tmp_product_i_38_n_0;
  wire tmp_product_i_39_n_0;
  wire tmp_product_i_3_n_0;
  wire tmp_product_i_3_n_1;
  wire tmp_product_i_3_n_2;
  wire tmp_product_i_3_n_3;
  wire tmp_product_i_3_n_4;
  wire tmp_product_i_3_n_5;
  wire tmp_product_i_3_n_6;
  wire tmp_product_i_3_n_7;
  wire tmp_product_i_40_n_0;
  wire tmp_product_i_41_n_0;
  wire tmp_product_i_42_n_0;
  wire tmp_product_i_43_n_0;
  wire tmp_product_i_44_n_0;
  wire tmp_product_i_45_n_0;
  wire tmp_product_i_46_n_0;
  wire tmp_product_i_47_n_0;
  wire tmp_product_i_4_n_11;
  wire tmp_product_i_4_n_12;
  wire tmp_product_i_4_n_13;
  wire tmp_product_i_4_n_14;
  wire tmp_product_i_4_n_15;
  wire tmp_product_i_4_n_4;
  wire tmp_product_i_4_n_5;
  wire tmp_product_i_4_n_6;
  wire tmp_product_i_4_n_7;
  wire tmp_product_i_51_n_0;
  wire tmp_product_i_52_n_0;
  wire tmp_product_i_53_n_0;
  wire tmp_product_i_54_n_0;
  wire tmp_product_i_55_n_0;
  wire tmp_product_i_56_n_0;
  wire tmp_product_i_57_n_0;
  wire tmp_product_i_58_n_0;
  wire tmp_product_i_58_n_1;
  wire tmp_product_i_58_n_10;
  wire tmp_product_i_58_n_11;
  wire tmp_product_i_58_n_12;
  wire tmp_product_i_58_n_13;
  wire tmp_product_i_58_n_14;
  wire tmp_product_i_58_n_15;
  wire tmp_product_i_58_n_2;
  wire tmp_product_i_58_n_3;
  wire tmp_product_i_58_n_4;
  wire tmp_product_i_58_n_5;
  wire tmp_product_i_58_n_6;
  wire tmp_product_i_58_n_7;
  wire tmp_product_i_58_n_8;
  wire tmp_product_i_58_n_9;
  wire tmp_product_i_59_n_0;
  wire tmp_product_i_5_n_0;
  wire tmp_product_i_5_n_1;
  wire tmp_product_i_5_n_10;
  wire tmp_product_i_5_n_11;
  wire tmp_product_i_5_n_12;
  wire tmp_product_i_5_n_13;
  wire tmp_product_i_5_n_14;
  wire tmp_product_i_5_n_15;
  wire tmp_product_i_5_n_2;
  wire tmp_product_i_5_n_3;
  wire tmp_product_i_5_n_4;
  wire tmp_product_i_5_n_5;
  wire tmp_product_i_5_n_6;
  wire tmp_product_i_5_n_7;
  wire tmp_product_i_5_n_8;
  wire tmp_product_i_5_n_9;
  wire tmp_product_i_60_n_0;
  wire tmp_product_i_61_n_0;
  wire tmp_product_i_62_n_0;
  wire tmp_product_i_63_n_0;
  wire tmp_product_i_64_n_0;
  wire tmp_product_i_65_n_0;
  wire tmp_product_i_66_n_0;
  wire tmp_product_i_67_n_0;
  wire tmp_product_i_67_n_1;
  wire tmp_product_i_67_n_10;
  wire tmp_product_i_67_n_11;
  wire tmp_product_i_67_n_12;
  wire tmp_product_i_67_n_13;
  wire tmp_product_i_67_n_14;
  wire tmp_product_i_67_n_15;
  wire tmp_product_i_67_n_2;
  wire tmp_product_i_67_n_3;
  wire tmp_product_i_67_n_4;
  wire tmp_product_i_67_n_5;
  wire tmp_product_i_67_n_6;
  wire tmp_product_i_67_n_7;
  wire tmp_product_i_67_n_8;
  wire tmp_product_i_67_n_9;
  wire tmp_product_i_68_n_0;
  wire tmp_product_i_69_n_0;
  wire tmp_product_i_6_n_0;
  wire tmp_product_i_6_n_1;
  wire tmp_product_i_6_n_10;
  wire tmp_product_i_6_n_11;
  wire tmp_product_i_6_n_12;
  wire tmp_product_i_6_n_13;
  wire tmp_product_i_6_n_14;
  wire tmp_product_i_6_n_15;
  wire tmp_product_i_6_n_2;
  wire tmp_product_i_6_n_3;
  wire tmp_product_i_6_n_4;
  wire tmp_product_i_6_n_5;
  wire tmp_product_i_6_n_6;
  wire tmp_product_i_6_n_7;
  wire tmp_product_i_6_n_8;
  wire tmp_product_i_6_n_9;
  wire tmp_product_i_70_n_0;
  wire tmp_product_i_71_n_0;
  wire tmp_product_i_72_n_0;
  wire tmp_product_i_73_n_0;
  wire tmp_product_i_74_n_0;
  wire tmp_product_i_75_n_0;
  wire tmp_product_i_76_n_0;
  wire tmp_product_i_76_n_1;
  wire tmp_product_i_76_n_2;
  wire tmp_product_i_76_n_3;
  wire tmp_product_i_76_n_4;
  wire tmp_product_i_76_n_5;
  wire tmp_product_i_76_n_6;
  wire tmp_product_i_76_n_7;
  wire tmp_product_i_76_n_8;
  wire tmp_product_i_77_n_12;
  wire tmp_product_i_77_n_13;
  wire tmp_product_i_77_n_14;
  wire tmp_product_i_77_n_15;
  wire tmp_product_i_77_n_4;
  wire tmp_product_i_77_n_5;
  wire tmp_product_i_77_n_6;
  wire tmp_product_i_77_n_7;
  wire tmp_product_i_78_n_0;
  wire tmp_product_i_79_n_0;
  wire tmp_product_i_7_n_0;
  wire tmp_product_i_80_n_0;
  wire tmp_product_i_81_n_0;
  wire tmp_product_i_82_n_0;
  wire tmp_product_i_83_n_0;
  wire tmp_product_i_84_n_0;
  wire tmp_product_i_85_n_0;
  wire tmp_product_i_86_n_0;
  wire tmp_product_i_87_n_0;
  wire tmp_product_i_88_n_0;
  wire tmp_product_i_89_n_0;
  wire tmp_product_i_8_n_0;
  wire tmp_product_i_90_n_0;
  wire tmp_product_i_91_n_0;
  wire tmp_product_i_92_n_0;
  wire tmp_product_i_93_n_0;
  wire tmp_product_i_94_n_0;
  wire tmp_product_i_95_n_0;
  wire tmp_product_i_96_n_0;
  wire tmp_product_i_96_n_1;
  wire tmp_product_i_96_n_2;
  wire tmp_product_i_96_n_3;
  wire tmp_product_i_96_n_4;
  wire tmp_product_i_96_n_5;
  wire tmp_product_i_96_n_6;
  wire tmp_product_i_96_n_7;
  wire tmp_product_i_97_n_0;
  wire tmp_product_i_98_n_0;
  wire tmp_product_i_99_n_0;
  wire tmp_product_i_9_n_0;
  wire tmp_product_n_100;
  wire tmp_product_n_101;
  wire tmp_product_n_102;
  wire tmp_product_n_103;
  wire tmp_product_n_104;
  wire tmp_product_n_105;
  wire tmp_product_n_71;
  wire tmp_product_n_72;
  wire tmp_product_n_73;
  wire tmp_product_n_90;
  wire tmp_product_n_91;
  wire tmp_product_n_92;
  wire tmp_product_n_93;
  wire tmp_product_n_94;
  wire tmp_product_n_95;
  wire tmp_product_n_96;
  wire tmp_product_n_97;
  wire tmp_product_n_98;
  wire tmp_product_n_99;
  wire [20:0]x_41_fu_1343_p3;
  wire [8:0]xs_12_reg_1813;
  wire [19:0]xu_fu_1554_p3;
  wire [19:0]y_38_reg_1807;
  wire NLW_tmp_product_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_product_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_product_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_product_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_product_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_product_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_product_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_product_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_product_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_tmp_product_P_UNCONNECTED;
  wire [47:0]NLW_tmp_product_PCOUT_UNCONNECTED;
  wire [7:0]NLW_tmp_product_XOROUT_UNCONNECTED;
  wire [7:3]NLW_tmp_product_i_1_CO_UNCONNECTED;
  wire [7:4]NLW_tmp_product_i_1_O_UNCONNECTED;
  wire [7:4]NLW_tmp_product_i_19_CO_UNCONNECTED;
  wire [7:5]NLW_tmp_product_i_19_O_UNCONNECTED;
  wire [7:4]NLW_tmp_product_i_21_CO_UNCONNECTED;
  wire [7:5]NLW_tmp_product_i_21_O_UNCONNECTED;
  wire [7:4]NLW_tmp_product_i_30_CO_UNCONNECTED;
  wire [7:5]NLW_tmp_product_i_30_O_UNCONNECTED;
  wire [7:4]NLW_tmp_product_i_31_CO_UNCONNECTED;
  wire [7:5]NLW_tmp_product_i_31_O_UNCONNECTED;
  wire [7:4]NLW_tmp_product_i_4_CO_UNCONNECTED;
  wire [7:5]NLW_tmp_product_i_4_O_UNCONNECTED;
  wire [6:0]NLW_tmp_product_i_76_O_UNCONNECTED;
  wire [7:4]NLW_tmp_product_i_77_CO_UNCONNECTED;
  wire [7:5]NLW_tmp_product_i_77_O_UNCONNECTED;
  wire [7:0]NLW_tmp_product_i_96_O_UNCONNECTED;

  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xu_fu_1554_p3}),
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
        .CEA2(1'b1),
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
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_product_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_product_OVERFLOW_UNCONNECTED),
        .P({NLW_tmp_product_P_UNCONNECTED[47:35],tmp_product_n_71,tmp_product_n_72,tmp_product_n_73,mag_out,tmp_product_n_90,tmp_product_n_91,tmp_product_n_92,tmp_product_n_93,tmp_product_n_94,tmp_product_n_95,tmp_product_n_96,tmp_product_n_97,tmp_product_n_98,tmp_product_n_99,tmp_product_n_100,tmp_product_n_101,tmp_product_n_102,tmp_product_n_103,tmp_product_n_104,tmp_product_n_105}),
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
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product_i_1
       (.CI(tmp_product_i_2_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_tmp_product_i_1_CO_UNCONNECTED[7:3],tmp_product_i_1_n_5,tmp_product_i_1_n_6,tmp_product_i_1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_tmp_product_i_1_O_UNCONNECTED[7:4],xu_fu_1554_p3[19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,tmp_product_i_4_n_12,tmp_product_i_4_n_13,tmp_product_i_4_n_14,tmp_product_i_4_n_15}));
  LUT4 #(
    .INIT(16'h8EE8)) 
    tmp_product_i_10
       (.I0(tmp_product_i_30_n_14),
        .I1(tmp_product_i_6_n_14),
        .I2(tmp_product_i_32_n_8),
        .I3(p_0_in1_in),
        .O(tmp_product_i_10_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_100
       (.I0(tmp_product_i_32_n_11),
        .I1(tmp_product_i_4_n_11),
        .I2(p_0_in1_in),
        .O(tmp_product_i_100_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_101
       (.I0(tmp_product_i_32_n_12),
        .I1(tmp_product_i_4_n_11),
        .I2(p_0_in1_in),
        .O(tmp_product_i_101_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_102
       (.I0(tmp_product_i_32_n_13),
        .I1(tmp_product_i_4_n_11),
        .I2(p_0_in1_in),
        .O(tmp_product_i_102_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_103
       (.I0(tmp_product_i_32_n_14),
        .I1(tmp_product_i_4_n_11),
        .I2(p_0_in1_in),
        .O(tmp_product_i_103_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_104
       (.I0(tmp_product_i_32_n_15),
        .I1(tmp_product_i_4_n_11),
        .I2(p_0_in1_in),
        .O(tmp_product_i_104_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_product_i_105
       (.I0(tmp_product_i_4_n_11),
        .O(tmp_product_i_105_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_106
       (.I0(tmp_product_i_31_n_12),
        .I1(tmp_product_i_4_n_11),
        .I2(p_0_in1_in),
        .O(tmp_product_i_106_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_107
       (.I0(tmp_product_i_31_n_13),
        .I1(tmp_product_i_4_n_11),
        .I2(p_0_in1_in),
        .O(tmp_product_i_107_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_108
       (.I0(tmp_product_i_31_n_14),
        .I1(tmp_product_i_4_n_11),
        .I2(p_0_in1_in),
        .O(tmp_product_i_108_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_109
       (.I0(tmp_product_i_31_n_15),
        .I1(tmp_product_i_4_n_11),
        .I2(p_0_in1_in),
        .O(tmp_product_i_109_n_0));
  LUT4 #(
    .INIT(16'h8EE8)) 
    tmp_product_i_11
       (.I0(tmp_product_i_30_n_15),
        .I1(tmp_product_i_6_n_15),
        .I2(p_0_in1_in),
        .I3(tmp_product_i_32_n_9),
        .O(tmp_product_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_product_i_110
       (.I0(p_0_in1_in),
        .O(tmp_product_i_110_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_111
       (.I0(tmp_product_i_58_n_8),
        .I1(tmp_product_i_4_n_11),
        .I2(p_0_in1_in),
        .O(tmp_product_i_111_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_112
       (.I0(tmp_product_i_58_n_9),
        .I1(tmp_product_i_4_n_11),
        .I2(p_0_in1_in),
        .O(tmp_product_i_112_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_113
       (.I0(tmp_product_i_58_n_10),
        .I1(tmp_product_i_4_n_12),
        .I2(p_0_in1_in),
        .O(tmp_product_i_113_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_114
       (.I0(tmp_product_i_58_n_11),
        .I1(tmp_product_i_4_n_13),
        .I2(p_0_in1_in),
        .O(tmp_product_i_114_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_115
       (.I0(tmp_product_i_58_n_12),
        .I1(tmp_product_i_4_n_14),
        .I2(p_0_in1_in),
        .O(tmp_product_i_115_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_116
       (.I0(tmp_product_i_58_n_13),
        .I1(tmp_product_i_4_n_15),
        .I2(p_0_in1_in),
        .O(tmp_product_i_116_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_117
       (.I0(tmp_product_i_58_n_14),
        .I1(tmp_product_i_5_n_8),
        .I2(p_0_in1_in),
        .O(tmp_product_i_117_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_118
       (.I0(tmp_product_i_58_n_15),
        .I1(tmp_product_i_5_n_9),
        .I2(p_0_in1_in),
        .O(tmp_product_i_118_n_0));
  LUT5 #(
    .INIT(32'h099FF660)) 
    tmp_product_i_12
       (.I0(p_0_in1_in),
        .I1(tmp_product_i_31_n_12),
        .I2(tmp_product_i_6_n_10),
        .I3(tmp_product_i_30_n_2),
        .I4(tmp_product_i_6_n_9),
        .O(tmp_product_i_12_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    tmp_product_i_13
       (.I0(tmp_product_i_7_n_0),
        .I1(tmp_product_i_30_n_2),
        .I2(tmp_product_i_6_n_10),
        .I3(p_0_in1_in),
        .I4(tmp_product_i_31_n_12),
        .O(tmp_product_i_13_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    tmp_product_i_14
       (.I0(tmp_product_i_30_n_11),
        .I1(tmp_product_i_6_n_11),
        .I2(tmp_product_i_31_n_13),
        .I3(p_0_in1_in),
        .I4(tmp_product_i_8_n_0),
        .O(tmp_product_i_14_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    tmp_product_i_15
       (.I0(tmp_product_i_30_n_12),
        .I1(tmp_product_i_6_n_12),
        .I2(tmp_product_i_31_n_14),
        .I3(p_0_in1_in),
        .I4(tmp_product_i_9_n_0),
        .O(tmp_product_i_15_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    tmp_product_i_16
       (.I0(tmp_product_i_30_n_13),
        .I1(tmp_product_i_6_n_13),
        .I2(tmp_product_i_31_n_15),
        .I3(p_0_in1_in),
        .I4(tmp_product_i_10_n_0),
        .O(tmp_product_i_16_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    tmp_product_i_17
       (.I0(tmp_product_i_30_n_14),
        .I1(tmp_product_i_6_n_14),
        .I2(tmp_product_i_32_n_8),
        .I3(p_0_in1_in),
        .I4(tmp_product_i_11_n_0),
        .O(tmp_product_i_17_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    tmp_product_i_18
       (.I0(tmp_product_i_30_n_15),
        .I1(tmp_product_i_6_n_15),
        .I2(p_0_in1_in),
        .I3(tmp_product_i_32_n_9),
        .O(tmp_product_i_18_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product_i_19
       (.CI(tmp_product_i_20_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_tmp_product_i_19_CO_UNCONNECTED[7:4],tmp_product_i_19_n_4,tmp_product_i_19_n_5,tmp_product_i_19_n_6,tmp_product_i_19_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,xs_12_reg_1813[7:4]}),
        .O({NLW_tmp_product_i_19_O_UNCONNECTED[7:5],x_41_fu_1343_p3[20:16]}),
        .S({1'b0,1'b0,1'b0,xs_12_reg_1813[8:4]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product_i_2
       (.CI(tmp_product_i_3_n_0),
        .CI_TOP(1'b0),
        .CO({tmp_product_i_2_n_0,tmp_product_i_2_n_1,tmp_product_i_2_n_2,tmp_product_i_2_n_3,tmp_product_i_2_n_4,tmp_product_i_2_n_5,tmp_product_i_2_n_6,tmp_product_i_2_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(xu_fu_1554_p3[15:8]),
        .S({tmp_product_i_5_n_8,tmp_product_i_5_n_9,tmp_product_i_5_n_10,tmp_product_i_5_n_11,tmp_product_i_5_n_12,tmp_product_i_5_n_13,tmp_product_i_5_n_14,tmp_product_i_5_n_15}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product_i_20
       (.CI(tmp_product_i_22_n_0),
        .CI_TOP(1'b0),
        .CO({tmp_product_i_20_n_0,tmp_product_i_20_n_1,tmp_product_i_20_n_2,tmp_product_i_20_n_3,tmp_product_i_20_n_4,tmp_product_i_20_n_5,tmp_product_i_20_n_6,tmp_product_i_20_n_7}),
        .DI({xs_12_reg_1813[3:0],Q[11:8]}),
        .O(x_41_fu_1343_p3[15:8]),
        .S({xs_12_reg_1813[3:0],Q[11:8]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product_i_21
       (.CI(tmp_product_i_33_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_tmp_product_i_21_CO_UNCONNECTED[7:4],tmp_product_i_21_n_4,tmp_product_i_21_n_5,tmp_product_i_21_n_6,tmp_product_i_21_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,y_38_reg_1807[19:16]}),
        .O({NLW_tmp_product_i_21_O_UNCONNECTED[7:5],p_0_in0_in,tmp_product_i_21_n_12,tmp_product_i_21_n_13,tmp_product_i_21_n_14,tmp_product_i_21_n_15}),
        .S({1'b0,1'b0,1'b0,tmp_product_i_34_n_0,tmp_product_i_35_n_0,tmp_product_i_36_n_0,tmp_product_i_37_n_0,tmp_product_i_38_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product_i_22
       (.CI(tmp_14_reg_1823),
        .CI_TOP(1'b0),
        .CO({tmp_product_i_22_n_0,tmp_product_i_22_n_1,tmp_product_i_22_n_2,tmp_product_i_22_n_3,tmp_product_i_22_n_4,tmp_product_i_22_n_5,tmp_product_i_22_n_6,tmp_product_i_22_n_7}),
        .DI(Q[7:0]),
        .O(x_41_fu_1343_p3[7:0]),
        .S({tmp_product_i_39_n_0,tmp_product_i_40_n_0,tmp_product_i_41_n_0,tmp_product_i_42_n_0,tmp_product_i_43_n_0,tmp_product_i_44_n_0,tmp_product_i_45_n_0,tmp_product_i_46_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    tmp_product_i_23
       (.I0(x_41_fu_1343_p3[6]),
        .I1(tmp_product_i_21_n_12),
        .I2(p_0_in0_in),
        .O(tmp_product_i_23_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tmp_product_i_24
       (.I0(x_41_fu_1343_p3[5]),
        .I1(tmp_product_i_21_n_13),
        .I2(p_0_in0_in),
        .O(tmp_product_i_24_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tmp_product_i_25
       (.I0(x_41_fu_1343_p3[4]),
        .I1(tmp_product_i_21_n_14),
        .I2(p_0_in0_in),
        .O(tmp_product_i_25_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tmp_product_i_26
       (.I0(x_41_fu_1343_p3[3]),
        .I1(tmp_product_i_21_n_15),
        .I2(p_0_in0_in),
        .O(tmp_product_i_26_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tmp_product_i_27
       (.I0(x_41_fu_1343_p3[2]),
        .I1(tmp_product_i_33_n_8),
        .I2(p_0_in0_in),
        .O(tmp_product_i_27_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tmp_product_i_28
       (.I0(x_41_fu_1343_p3[1]),
        .I1(tmp_product_i_33_n_9),
        .I2(p_0_in0_in),
        .O(tmp_product_i_28_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tmp_product_i_29
       (.I0(x_41_fu_1343_p3[0]),
        .I1(tmp_product_i_33_n_10),
        .I2(p_0_in0_in),
        .O(tmp_product_i_29_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product_i_3
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({tmp_product_i_3_n_0,tmp_product_i_3_n_1,tmp_product_i_3_n_2,tmp_product_i_3_n_3,tmp_product_i_3_n_4,tmp_product_i_3_n_5,tmp_product_i_3_n_6,tmp_product_i_3_n_7}),
        .DI({1'b0,tmp_product_i_6_n_9,tmp_product_i_7_n_0,tmp_product_i_8_n_0,tmp_product_i_9_n_0,tmp_product_i_10_n_0,tmp_product_i_11_n_0,1'b0}),
        .O(xu_fu_1554_p3[7:0]),
        .S({tmp_product_i_6_n_8,tmp_product_i_12_n_0,tmp_product_i_13_n_0,tmp_product_i_14_n_0,tmp_product_i_15_n_0,tmp_product_i_16_n_0,tmp_product_i_17_n_0,tmp_product_i_18_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product_i_30
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_tmp_product_i_30_CO_UNCONNECTED[7:6],tmp_product_i_30_n_2,NLW_tmp_product_i_30_CO_UNCONNECTED[4],tmp_product_i_30_n_4,tmp_product_i_30_n_5,tmp_product_i_30_n_6,tmp_product_i_30_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,tmp_product_i_47_n_0,1'b0}),
        .O({NLW_tmp_product_i_30_O_UNCONNECTED[7:5],tmp_product_i_30_n_11,tmp_product_i_30_n_12,tmp_product_i_30_n_13,tmp_product_i_30_n_14,tmp_product_i_30_n_15}),
        .S({1'b0,1'b0,1'b1,p_2_in,tmp_product_i_51_n_0,tmp_product_i_52_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product_i_31
       (.CI(tmp_product_i_32_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_tmp_product_i_31_CO_UNCONNECTED[7:4],tmp_product_i_31_n_4,tmp_product_i_31_n_5,tmp_product_i_31_n_6,tmp_product_i_31_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,tmp_product_i_21_n_12,tmp_product_i_21_n_13,tmp_product_i_21_n_14,tmp_product_i_21_n_15}),
        .O({NLW_tmp_product_i_31_O_UNCONNECTED[7:5],p_0_in1_in,tmp_product_i_31_n_12,tmp_product_i_31_n_13,tmp_product_i_31_n_14,tmp_product_i_31_n_15}),
        .S({1'b0,1'b0,1'b0,tmp_product_i_53_n_0,tmp_product_i_54_n_0,tmp_product_i_55_n_0,tmp_product_i_56_n_0,tmp_product_i_57_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product_i_32
       (.CI(tmp_product_i_58_n_0),
        .CI_TOP(1'b0),
        .CO({tmp_product_i_32_n_0,tmp_product_i_32_n_1,tmp_product_i_32_n_2,tmp_product_i_32_n_3,tmp_product_i_32_n_4,tmp_product_i_32_n_5,tmp_product_i_32_n_6,tmp_product_i_32_n_7}),
        .DI({tmp_product_i_33_n_8,tmp_product_i_33_n_9,tmp_product_i_33_n_10,tmp_product_i_33_n_11,tmp_product_i_33_n_12,tmp_product_i_33_n_13,tmp_product_i_33_n_14,tmp_product_i_33_n_15}),
        .O({tmp_product_i_32_n_8,tmp_product_i_32_n_9,tmp_product_i_32_n_10,tmp_product_i_32_n_11,tmp_product_i_32_n_12,tmp_product_i_32_n_13,tmp_product_i_32_n_14,tmp_product_i_32_n_15}),
        .S({tmp_product_i_59_n_0,tmp_product_i_60_n_0,tmp_product_i_61_n_0,tmp_product_i_62_n_0,tmp_product_i_63_n_0,tmp_product_i_64_n_0,tmp_product_i_65_n_0,tmp_product_i_66_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product_i_33
       (.CI(tmp_product_i_67_n_0),
        .CI_TOP(1'b0),
        .CO({tmp_product_i_33_n_0,tmp_product_i_33_n_1,tmp_product_i_33_n_2,tmp_product_i_33_n_3,tmp_product_i_33_n_4,tmp_product_i_33_n_5,tmp_product_i_33_n_6,tmp_product_i_33_n_7}),
        .DI(y_38_reg_1807[15:8]),
        .O({tmp_product_i_33_n_8,tmp_product_i_33_n_9,tmp_product_i_33_n_10,tmp_product_i_33_n_11,tmp_product_i_33_n_12,tmp_product_i_33_n_13,tmp_product_i_33_n_14,tmp_product_i_33_n_15}),
        .S({tmp_product_i_68_n_0,tmp_product_i_69_n_0,tmp_product_i_70_n_0,tmp_product_i_71_n_0,tmp_product_i_72_n_0,tmp_product_i_73_n_0,tmp_product_i_74_n_0,tmp_product_i_75_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_product_i_34
       (.I0(xs_12_reg_1813[8]),
        .O(tmp_product_i_34_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_35
       (.I0(y_38_reg_1807[19]),
        .I1(xs_12_reg_1813[8]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_35_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_36
       (.I0(y_38_reg_1807[18]),
        .I1(xs_12_reg_1813[8]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_36_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_37
       (.I0(y_38_reg_1807[17]),
        .I1(xs_12_reg_1813[8]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_37_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_38
       (.I0(y_38_reg_1807[16]),
        .I1(xs_12_reg_1813[8]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_38_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tmp_product_i_39
       (.I0(Q[7]),
        .I1(y_38_reg_1807[19]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_39_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product_i_4
       (.CI(tmp_product_i_5_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_tmp_product_i_4_CO_UNCONNECTED[7:4],tmp_product_i_4_n_4,tmp_product_i_4_n_5,tmp_product_i_4_n_6,tmp_product_i_4_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,x_41_fu_1343_p3[19:16]}),
        .O({NLW_tmp_product_i_4_O_UNCONNECTED[7:5],tmp_product_i_4_n_11,tmp_product_i_4_n_12,tmp_product_i_4_n_13,tmp_product_i_4_n_14,tmp_product_i_4_n_15}),
        .S({1'b0,1'b0,1'b0,x_41_fu_1343_p3[20:16]}));
  LUT3 #(
    .INIT(8'h96)) 
    tmp_product_i_40
       (.I0(Q[6]),
        .I1(y_38_reg_1807[18]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_40_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tmp_product_i_41
       (.I0(Q[5]),
        .I1(y_38_reg_1807[17]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_41_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tmp_product_i_42
       (.I0(Q[4]),
        .I1(y_38_reg_1807[16]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_42_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tmp_product_i_43
       (.I0(Q[3]),
        .I1(y_38_reg_1807[15]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_43_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tmp_product_i_44
       (.I0(Q[2]),
        .I1(y_38_reg_1807[14]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_44_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tmp_product_i_45
       (.I0(Q[1]),
        .I1(y_38_reg_1807[13]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_45_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tmp_product_i_46
       (.I0(Q[0]),
        .I1(y_38_reg_1807[12]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_46_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    tmp_product_i_47
       (.I0(p_0_in1_in),
        .I1(tmp_product_i_76_n_8),
        .I2(p_0_in3_in),
        .O(tmp_product_i_47_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_i_48
       (.I0(p_0_in3_in),
        .I1(tmp_product_i_77_n_12),
        .O(p_2_in[4]));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_i_49
       (.I0(p_0_in3_in),
        .I1(tmp_product_i_77_n_13),
        .O(p_2_in[3]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product_i_5
       (.CI(tmp_product_i_6_n_0),
        .CI_TOP(1'b0),
        .CO({tmp_product_i_5_n_0,tmp_product_i_5_n_1,tmp_product_i_5_n_2,tmp_product_i_5_n_3,tmp_product_i_5_n_4,tmp_product_i_5_n_5,tmp_product_i_5_n_6,tmp_product_i_5_n_7}),
        .DI(x_41_fu_1343_p3[15:8]),
        .O({tmp_product_i_5_n_8,tmp_product_i_5_n_9,tmp_product_i_5_n_10,tmp_product_i_5_n_11,tmp_product_i_5_n_12,tmp_product_i_5_n_13,tmp_product_i_5_n_14,tmp_product_i_5_n_15}),
        .S(x_41_fu_1343_p3[15:8]));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_i_50
       (.I0(p_0_in3_in),
        .I1(tmp_product_i_77_n_14),
        .O(p_2_in[2]));
  LUT4 #(
    .INIT(16'hD728)) 
    tmp_product_i_51
       (.I0(tmp_product_i_76_n_8),
        .I1(p_0_in1_in),
        .I2(p_0_in3_in),
        .I3(tmp_product_i_77_n_15),
        .O(tmp_product_i_51_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_i_52
       (.I0(tmp_product_i_76_n_8),
        .I1(p_0_in1_in),
        .O(tmp_product_i_52_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_product_i_53
       (.I0(x_41_fu_1343_p3[20]),
        .O(tmp_product_i_53_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_54
       (.I0(tmp_product_i_21_n_12),
        .I1(x_41_fu_1343_p3[20]),
        .I2(p_0_in0_in),
        .O(tmp_product_i_54_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_55
       (.I0(tmp_product_i_21_n_13),
        .I1(x_41_fu_1343_p3[20]),
        .I2(p_0_in0_in),
        .O(tmp_product_i_55_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_56
       (.I0(tmp_product_i_21_n_14),
        .I1(x_41_fu_1343_p3[20]),
        .I2(p_0_in0_in),
        .O(tmp_product_i_56_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_57
       (.I0(tmp_product_i_21_n_15),
        .I1(x_41_fu_1343_p3[20]),
        .I2(p_0_in0_in),
        .O(tmp_product_i_57_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product_i_58
       (.CI(tmp_product_i_78_n_0),
        .CI_TOP(1'b0),
        .CO({tmp_product_i_58_n_0,tmp_product_i_58_n_1,tmp_product_i_58_n_2,tmp_product_i_58_n_3,tmp_product_i_58_n_4,tmp_product_i_58_n_5,tmp_product_i_58_n_6,tmp_product_i_58_n_7}),
        .DI({tmp_product_i_67_n_8,tmp_product_i_67_n_9,tmp_product_i_67_n_10,tmp_product_i_67_n_11,tmp_product_i_67_n_12,tmp_product_i_67_n_13,tmp_product_i_67_n_14,tmp_product_i_67_n_15}),
        .O({tmp_product_i_58_n_8,tmp_product_i_58_n_9,tmp_product_i_58_n_10,tmp_product_i_58_n_11,tmp_product_i_58_n_12,tmp_product_i_58_n_13,tmp_product_i_58_n_14,tmp_product_i_58_n_15}),
        .S({tmp_product_i_79_n_0,tmp_product_i_80_n_0,tmp_product_i_81_n_0,tmp_product_i_82_n_0,tmp_product_i_83_n_0,tmp_product_i_84_n_0,tmp_product_i_85_n_0,tmp_product_i_86_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_59
       (.I0(tmp_product_i_33_n_8),
        .I1(x_41_fu_1343_p3[20]),
        .I2(p_0_in0_in),
        .O(tmp_product_i_59_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product_i_6
       (.CI(p_0_in0_in),
        .CI_TOP(1'b0),
        .CO({tmp_product_i_6_n_0,tmp_product_i_6_n_1,tmp_product_i_6_n_2,tmp_product_i_6_n_3,tmp_product_i_6_n_4,tmp_product_i_6_n_5,tmp_product_i_6_n_6,tmp_product_i_6_n_7}),
        .DI(x_41_fu_1343_p3[7:0]),
        .O({tmp_product_i_6_n_8,tmp_product_i_6_n_9,tmp_product_i_6_n_10,tmp_product_i_6_n_11,tmp_product_i_6_n_12,tmp_product_i_6_n_13,tmp_product_i_6_n_14,tmp_product_i_6_n_15}),
        .S({x_41_fu_1343_p3[7],tmp_product_i_23_n_0,tmp_product_i_24_n_0,tmp_product_i_25_n_0,tmp_product_i_26_n_0,tmp_product_i_27_n_0,tmp_product_i_28_n_0,tmp_product_i_29_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_60
       (.I0(tmp_product_i_33_n_9),
        .I1(x_41_fu_1343_p3[20]),
        .I2(p_0_in0_in),
        .O(tmp_product_i_60_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_61
       (.I0(tmp_product_i_33_n_10),
        .I1(x_41_fu_1343_p3[20]),
        .I2(p_0_in0_in),
        .O(tmp_product_i_61_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_62
       (.I0(tmp_product_i_33_n_11),
        .I1(x_41_fu_1343_p3[20]),
        .I2(p_0_in0_in),
        .O(tmp_product_i_62_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_63
       (.I0(tmp_product_i_33_n_12),
        .I1(x_41_fu_1343_p3[20]),
        .I2(p_0_in0_in),
        .O(tmp_product_i_63_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_64
       (.I0(tmp_product_i_33_n_13),
        .I1(x_41_fu_1343_p3[20]),
        .I2(p_0_in0_in),
        .O(tmp_product_i_64_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_65
       (.I0(tmp_product_i_33_n_14),
        .I1(x_41_fu_1343_p3[20]),
        .I2(p_0_in0_in),
        .O(tmp_product_i_65_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_66
       (.I0(tmp_product_i_33_n_15),
        .I1(x_41_fu_1343_p3[20]),
        .I2(p_0_in0_in),
        .O(tmp_product_i_66_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product_i_67
       (.CI(tmp_product_i_87_n_0),
        .CI_TOP(1'b0),
        .CO({tmp_product_i_67_n_0,tmp_product_i_67_n_1,tmp_product_i_67_n_2,tmp_product_i_67_n_3,tmp_product_i_67_n_4,tmp_product_i_67_n_5,tmp_product_i_67_n_6,tmp_product_i_67_n_7}),
        .DI(y_38_reg_1807[7:0]),
        .O({tmp_product_i_67_n_8,tmp_product_i_67_n_9,tmp_product_i_67_n_10,tmp_product_i_67_n_11,tmp_product_i_67_n_12,tmp_product_i_67_n_13,tmp_product_i_67_n_14,tmp_product_i_67_n_15}),
        .S({tmp_product_i_88_n_0,tmp_product_i_89_n_0,tmp_product_i_90_n_0,tmp_product_i_91_n_0,tmp_product_i_92_n_0,tmp_product_i_93_n_0,tmp_product_i_94_n_0,tmp_product_i_95_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_68
       (.I0(y_38_reg_1807[15]),
        .I1(xs_12_reg_1813[8]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_68_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_69
       (.I0(y_38_reg_1807[14]),
        .I1(xs_12_reg_1813[8]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_69_n_0));
  LUT4 #(
    .INIT(16'h8EE8)) 
    tmp_product_i_7
       (.I0(tmp_product_i_30_n_11),
        .I1(tmp_product_i_6_n_11),
        .I2(tmp_product_i_31_n_13),
        .I3(p_0_in1_in),
        .O(tmp_product_i_7_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_70
       (.I0(y_38_reg_1807[13]),
        .I1(xs_12_reg_1813[8]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_70_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_71
       (.I0(y_38_reg_1807[12]),
        .I1(xs_12_reg_1813[8]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_71_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_72
       (.I0(y_38_reg_1807[11]),
        .I1(xs_12_reg_1813[8]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_72_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_73
       (.I0(y_38_reg_1807[10]),
        .I1(xs_12_reg_1813[8]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_73_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_74
       (.I0(y_38_reg_1807[9]),
        .I1(xs_12_reg_1813[8]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_74_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_75
       (.I0(y_38_reg_1807[8]),
        .I1(xs_12_reg_1813[8]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_75_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product_i_76
       (.CI(tmp_product_i_96_n_0),
        .CI_TOP(1'b0),
        .CO({tmp_product_i_76_n_0,tmp_product_i_76_n_1,tmp_product_i_76_n_2,tmp_product_i_76_n_3,tmp_product_i_76_n_4,tmp_product_i_76_n_5,tmp_product_i_76_n_6,tmp_product_i_76_n_7}),
        .DI({tmp_product_i_32_n_8,tmp_product_i_32_n_9,tmp_product_i_32_n_10,tmp_product_i_32_n_11,tmp_product_i_32_n_12,tmp_product_i_32_n_13,tmp_product_i_32_n_14,tmp_product_i_32_n_15}),
        .O({tmp_product_i_76_n_8,NLW_tmp_product_i_76_O_UNCONNECTED[6:0]}),
        .S({tmp_product_i_97_n_0,tmp_product_i_98_n_0,tmp_product_i_99_n_0,tmp_product_i_100_n_0,tmp_product_i_101_n_0,tmp_product_i_102_n_0,tmp_product_i_103_n_0,tmp_product_i_104_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product_i_77
       (.CI(tmp_product_i_76_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_tmp_product_i_77_CO_UNCONNECTED[7:4],tmp_product_i_77_n_4,tmp_product_i_77_n_5,tmp_product_i_77_n_6,tmp_product_i_77_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,tmp_product_i_31_n_12,tmp_product_i_31_n_13,tmp_product_i_31_n_14,tmp_product_i_31_n_15}),
        .O({NLW_tmp_product_i_77_O_UNCONNECTED[7:5],p_0_in3_in,tmp_product_i_77_n_12,tmp_product_i_77_n_13,tmp_product_i_77_n_14,tmp_product_i_77_n_15}),
        .S({1'b0,1'b0,1'b0,tmp_product_i_105_n_0,tmp_product_i_106_n_0,tmp_product_i_107_n_0,tmp_product_i_108_n_0,tmp_product_i_109_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_product_i_78
       (.I0(p_0_in0_in),
        .O(tmp_product_i_78_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_79
       (.I0(tmp_product_i_67_n_8),
        .I1(x_41_fu_1343_p3[20]),
        .I2(p_0_in0_in),
        .O(tmp_product_i_79_n_0));
  LUT4 #(
    .INIT(16'h8EE8)) 
    tmp_product_i_8
       (.I0(tmp_product_i_30_n_12),
        .I1(tmp_product_i_6_n_12),
        .I2(tmp_product_i_31_n_14),
        .I3(p_0_in1_in),
        .O(tmp_product_i_8_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_80
       (.I0(tmp_product_i_67_n_9),
        .I1(x_41_fu_1343_p3[19]),
        .I2(p_0_in0_in),
        .O(tmp_product_i_80_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_81
       (.I0(tmp_product_i_67_n_10),
        .I1(x_41_fu_1343_p3[18]),
        .I2(p_0_in0_in),
        .O(tmp_product_i_81_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_82
       (.I0(tmp_product_i_67_n_11),
        .I1(x_41_fu_1343_p3[17]),
        .I2(p_0_in0_in),
        .O(tmp_product_i_82_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_83
       (.I0(tmp_product_i_67_n_12),
        .I1(x_41_fu_1343_p3[16]),
        .I2(p_0_in0_in),
        .O(tmp_product_i_83_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_84
       (.I0(tmp_product_i_67_n_13),
        .I1(x_41_fu_1343_p3[15]),
        .I2(p_0_in0_in),
        .O(tmp_product_i_84_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_85
       (.I0(tmp_product_i_67_n_14),
        .I1(x_41_fu_1343_p3[14]),
        .I2(p_0_in0_in),
        .O(tmp_product_i_85_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_86
       (.I0(tmp_product_i_67_n_15),
        .I1(x_41_fu_1343_p3[13]),
        .I2(p_0_in0_in),
        .O(tmp_product_i_86_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_product_i_87
       (.I0(tmp_14_reg_1823),
        .O(tmp_product_i_87_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_88
       (.I0(y_38_reg_1807[7]),
        .I1(xs_12_reg_1813[7]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_88_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_89
       (.I0(y_38_reg_1807[6]),
        .I1(xs_12_reg_1813[6]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_89_n_0));
  LUT4 #(
    .INIT(16'h8EE8)) 
    tmp_product_i_9
       (.I0(tmp_product_i_30_n_13),
        .I1(tmp_product_i_6_n_13),
        .I2(tmp_product_i_31_n_15),
        .I3(p_0_in1_in),
        .O(tmp_product_i_9_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_90
       (.I0(y_38_reg_1807[5]),
        .I1(xs_12_reg_1813[5]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_90_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_91
       (.I0(y_38_reg_1807[4]),
        .I1(xs_12_reg_1813[4]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_91_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_92
       (.I0(y_38_reg_1807[3]),
        .I1(xs_12_reg_1813[3]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_92_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_93
       (.I0(y_38_reg_1807[2]),
        .I1(xs_12_reg_1813[2]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_93_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_94
       (.I0(y_38_reg_1807[1]),
        .I1(xs_12_reg_1813[1]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_94_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_95
       (.I0(y_38_reg_1807[0]),
        .I1(xs_12_reg_1813[0]),
        .I2(tmp_14_reg_1823),
        .O(tmp_product_i_95_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 tmp_product_i_96
       (.CI(tmp_product_i_110_n_0),
        .CI_TOP(1'b0),
        .CO({tmp_product_i_96_n_0,tmp_product_i_96_n_1,tmp_product_i_96_n_2,tmp_product_i_96_n_3,tmp_product_i_96_n_4,tmp_product_i_96_n_5,tmp_product_i_96_n_6,tmp_product_i_96_n_7}),
        .DI({tmp_product_i_58_n_8,tmp_product_i_58_n_9,tmp_product_i_58_n_10,tmp_product_i_58_n_11,tmp_product_i_58_n_12,tmp_product_i_58_n_13,tmp_product_i_58_n_14,tmp_product_i_58_n_15}),
        .O(NLW_tmp_product_i_96_O_UNCONNECTED[7:0]),
        .S({tmp_product_i_111_n_0,tmp_product_i_112_n_0,tmp_product_i_113_n_0,tmp_product_i_114_n_0,tmp_product_i_115_n_0,tmp_product_i_116_n_0,tmp_product_i_117_n_0,tmp_product_i_118_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_97
       (.I0(tmp_product_i_32_n_8),
        .I1(tmp_product_i_4_n_11),
        .I2(p_0_in1_in),
        .O(tmp_product_i_97_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_98
       (.I0(tmp_product_i_32_n_9),
        .I1(tmp_product_i_4_n_11),
        .I2(p_0_in1_in),
        .O(tmp_product_i_98_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_99
       (.I0(tmp_product_i_32_n_10),
        .I1(tmp_product_i_4_n_11),
        .I2(p_0_in1_in),
        .O(tmp_product_i_99_n_0));
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
