// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Oct 15 02:43:45 2026
// Host        : SUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/adith/OneDrive/Desktop/College/FPGA/vitis/dds/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_sim_netlist.v
// Design      : bd_0_hls_inst_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu5eg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,dds_sincos,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "dds_sincos,Vivado 2023.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module bd_0_hls_inst_0
   (sin_out_ap_vld,
    cos_out_ap_vld,
    ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    rst_r,
    phase_inc,
    sin_out,
    cos_out);
  output sin_out_ap_vld;
  output cos_out_ap_vld;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 rst_r DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_r, LAYERED_METADATA undef" *) input rst_r;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 phase_inc DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME phase_inc, LAYERED_METADATA undef" *) input [31:0]phase_inc;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 sin_out DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sin_out, LAYERED_METADATA undef" *) output [15:0]sin_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 cos_out DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cos_out, LAYERED_METADATA undef" *) output [15:0]cos_out;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [15:0]cos_out;
  wire cos_out_ap_vld;
  wire [31:0]phase_inc;
  wire rst_r;
  wire [15:0]sin_out;
  wire sin_out_ap_vld;

  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_pp0_stage0 = "1'b1" *) 
  bd_0_hls_inst_0_dds_sincos inst
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .cos_out(cos_out),
        .cos_out_ap_vld(cos_out_ap_vld),
        .phase_inc(phase_inc),
        .rst_r(rst_r),
        .sin_out(sin_out),
        .sin_out_ap_vld(sin_out_ap_vld));
endmodule

(* ORIG_REF_NAME = "dds_sincos" *) (* ap_ST_fsm_pp0_stage0 = "1'b1" *) (* hls_module = "yes" *) 
module bd_0_hls_inst_0_dds_sincos
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    rst_r,
    phase_inc,
    sin_out,
    sin_out_ap_vld,
    cos_out,
    cos_out_ap_vld);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [0:0]rst_r;
  input [31:0]phase_inc;
  output [15:0]sin_out;
  output sin_out_ap_vld;
  output [15:0]cos_out;
  output cos_out_ap_vld;

  wire [31:0]add_ln18_fu_149_p2;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_idle;
  wire ap_rst;
  wire ap_start;
  wire [15:0]cos_out;
  wire cos_out_ap_vld;
  wire [31:0]phase;
  wire \phase[15]_i_2_n_0 ;
  wire \phase[15]_i_3_n_0 ;
  wire \phase[15]_i_4_n_0 ;
  wire \phase[15]_i_5_n_0 ;
  wire \phase[15]_i_6_n_0 ;
  wire \phase[15]_i_7_n_0 ;
  wire \phase[15]_i_8_n_0 ;
  wire \phase[15]_i_9_n_0 ;
  wire \phase[23]_i_2_n_0 ;
  wire \phase[23]_i_3_n_0 ;
  wire \phase[23]_i_4_n_0 ;
  wire \phase[23]_i_5_n_0 ;
  wire \phase[23]_i_6_n_0 ;
  wire \phase[23]_i_7_n_0 ;
  wire \phase[23]_i_8_n_0 ;
  wire \phase[23]_i_9_n_0 ;
  wire \phase[31]_i_2_n_0 ;
  wire \phase[31]_i_3_n_0 ;
  wire \phase[31]_i_4_n_0 ;
  wire \phase[31]_i_5_n_0 ;
  wire \phase[31]_i_6_n_0 ;
  wire \phase[31]_i_7_n_0 ;
  wire \phase[31]_i_8_n_0 ;
  wire \phase[31]_i_9_n_0 ;
  wire \phase[7]_i_2_n_0 ;
  wire \phase[7]_i_3_n_0 ;
  wire \phase[7]_i_4_n_0 ;
  wire \phase[7]_i_5_n_0 ;
  wire \phase[7]_i_6_n_0 ;
  wire \phase[7]_i_7_n_0 ;
  wire \phase[7]_i_8_n_0 ;
  wire \phase[7]_i_9_n_0 ;
  wire [31:0]phase_inc;
  wire \phase_reg[15]_i_1_n_0 ;
  wire \phase_reg[15]_i_1_n_1 ;
  wire \phase_reg[15]_i_1_n_2 ;
  wire \phase_reg[15]_i_1_n_3 ;
  wire \phase_reg[15]_i_1_n_4 ;
  wire \phase_reg[15]_i_1_n_5 ;
  wire \phase_reg[15]_i_1_n_6 ;
  wire \phase_reg[15]_i_1_n_7 ;
  wire \phase_reg[23]_i_1_n_0 ;
  wire \phase_reg[23]_i_1_n_1 ;
  wire \phase_reg[23]_i_1_n_2 ;
  wire \phase_reg[23]_i_1_n_3 ;
  wire \phase_reg[23]_i_1_n_4 ;
  wire \phase_reg[23]_i_1_n_5 ;
  wire \phase_reg[23]_i_1_n_6 ;
  wire \phase_reg[23]_i_1_n_7 ;
  wire \phase_reg[31]_i_1_n_1 ;
  wire \phase_reg[31]_i_1_n_2 ;
  wire \phase_reg[31]_i_1_n_3 ;
  wire \phase_reg[31]_i_1_n_4 ;
  wire \phase_reg[31]_i_1_n_5 ;
  wire \phase_reg[31]_i_1_n_6 ;
  wire \phase_reg[31]_i_1_n_7 ;
  wire \phase_reg[7]_i_1_n_0 ;
  wire \phase_reg[7]_i_1_n_1 ;
  wire \phase_reg[7]_i_1_n_2 ;
  wire \phase_reg[7]_i_1_n_3 ;
  wire \phase_reg[7]_i_1_n_4 ;
  wire \phase_reg[7]_i_1_n_5 ;
  wire \phase_reg[7]_i_1_n_6 ;
  wire \phase_reg[7]_i_1_n_7 ;
  wire [0:0]rst_r;
  wire [15:0]sin_out;
  wire [7:7]\NLW_phase_reg[31]_i_1_CO_UNCONNECTED ;

  assign ap_done = cos_out_ap_vld;
  assign ap_ready = ap_start;
  assign sin_out_ap_vld = cos_out_ap_vld;
  bd_0_hls_inst_0_dds_sincos_DDS_SINE_ROM_ROM_AUTO_1R DDS_SINE_ROM_U
       (.Q(phase[31:22]),
        .ap_clk(ap_clk),
        .ap_start(ap_start),
        .cos_out(cos_out),
        .rst_r(rst_r),
        .sin_out(sin_out));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_start),
        .I1(ap_rst),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(cos_out_ap_vld),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    ap_idle_INST_0
       (.I0(ap_start),
        .I1(cos_out_ap_vld),
        .O(ap_idle));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[15]_i_2 
       (.I0(rst_r),
        .I1(phase[15]),
        .I2(phase_inc[15]),
        .O(\phase[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[15]_i_3 
       (.I0(rst_r),
        .I1(phase[14]),
        .I2(phase_inc[14]),
        .O(\phase[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[15]_i_4 
       (.I0(rst_r),
        .I1(phase[13]),
        .I2(phase_inc[13]),
        .O(\phase[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[15]_i_5 
       (.I0(rst_r),
        .I1(phase[12]),
        .I2(phase_inc[12]),
        .O(\phase[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[15]_i_6 
       (.I0(rst_r),
        .I1(phase[11]),
        .I2(phase_inc[11]),
        .O(\phase[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[15]_i_7 
       (.I0(rst_r),
        .I1(phase[10]),
        .I2(phase_inc[10]),
        .O(\phase[15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[15]_i_8 
       (.I0(rst_r),
        .I1(phase[9]),
        .I2(phase_inc[9]),
        .O(\phase[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[15]_i_9 
       (.I0(rst_r),
        .I1(phase[8]),
        .I2(phase_inc[8]),
        .O(\phase[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[23]_i_2 
       (.I0(rst_r),
        .I1(phase[23]),
        .I2(phase_inc[23]),
        .O(\phase[23]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[23]_i_3 
       (.I0(rst_r),
        .I1(phase[22]),
        .I2(phase_inc[22]),
        .O(\phase[23]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[23]_i_4 
       (.I0(rst_r),
        .I1(phase[21]),
        .I2(phase_inc[21]),
        .O(\phase[23]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[23]_i_5 
       (.I0(rst_r),
        .I1(phase[20]),
        .I2(phase_inc[20]),
        .O(\phase[23]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[23]_i_6 
       (.I0(rst_r),
        .I1(phase[19]),
        .I2(phase_inc[19]),
        .O(\phase[23]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[23]_i_7 
       (.I0(rst_r),
        .I1(phase[18]),
        .I2(phase_inc[18]),
        .O(\phase[23]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[23]_i_8 
       (.I0(rst_r),
        .I1(phase[17]),
        .I2(phase_inc[17]),
        .O(\phase[23]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[23]_i_9 
       (.I0(rst_r),
        .I1(phase[16]),
        .I2(phase_inc[16]),
        .O(\phase[23]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[31]_i_2 
       (.I0(rst_r),
        .I1(phase[31]),
        .I2(phase_inc[31]),
        .O(\phase[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[31]_i_3 
       (.I0(rst_r),
        .I1(phase[30]),
        .I2(phase_inc[30]),
        .O(\phase[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[31]_i_4 
       (.I0(rst_r),
        .I1(phase[29]),
        .I2(phase_inc[29]),
        .O(\phase[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[31]_i_5 
       (.I0(rst_r),
        .I1(phase[28]),
        .I2(phase_inc[28]),
        .O(\phase[31]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[31]_i_6 
       (.I0(rst_r),
        .I1(phase[27]),
        .I2(phase_inc[27]),
        .O(\phase[31]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[31]_i_7 
       (.I0(rst_r),
        .I1(phase[26]),
        .I2(phase_inc[26]),
        .O(\phase[31]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[31]_i_8 
       (.I0(rst_r),
        .I1(phase[25]),
        .I2(phase_inc[25]),
        .O(\phase[31]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[31]_i_9 
       (.I0(rst_r),
        .I1(phase[24]),
        .I2(phase_inc[24]),
        .O(\phase[31]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[7]_i_2 
       (.I0(rst_r),
        .I1(phase[7]),
        .I2(phase_inc[7]),
        .O(\phase[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[7]_i_3 
       (.I0(rst_r),
        .I1(phase[6]),
        .I2(phase_inc[6]),
        .O(\phase[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[7]_i_4 
       (.I0(rst_r),
        .I1(phase[5]),
        .I2(phase_inc[5]),
        .O(\phase[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[7]_i_5 
       (.I0(rst_r),
        .I1(phase[4]),
        .I2(phase_inc[4]),
        .O(\phase[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[7]_i_6 
       (.I0(rst_r),
        .I1(phase[3]),
        .I2(phase_inc[3]),
        .O(\phase[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[7]_i_7 
       (.I0(rst_r),
        .I1(phase[2]),
        .I2(phase_inc[2]),
        .O(\phase[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[7]_i_8 
       (.I0(rst_r),
        .I1(phase[1]),
        .I2(phase_inc[1]),
        .O(\phase[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \phase[7]_i_9 
       (.I0(rst_r),
        .I1(phase[0]),
        .I2(phase_inc[0]),
        .O(\phase[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[0] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[0]),
        .Q(phase[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[10] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[10]),
        .Q(phase[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[11] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[11]),
        .Q(phase[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[12] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[12]),
        .Q(phase[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[13] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[13]),
        .Q(phase[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[14] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[14]),
        .Q(phase[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[15] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[15]),
        .Q(phase[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \phase_reg[15]_i_1 
       (.CI(\phase_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\phase_reg[15]_i_1_n_0 ,\phase_reg[15]_i_1_n_1 ,\phase_reg[15]_i_1_n_2 ,\phase_reg[15]_i_1_n_3 ,\phase_reg[15]_i_1_n_4 ,\phase_reg[15]_i_1_n_5 ,\phase_reg[15]_i_1_n_6 ,\phase_reg[15]_i_1_n_7 }),
        .DI(phase_inc[15:8]),
        .O(add_ln18_fu_149_p2[15:8]),
        .S({\phase[15]_i_2_n_0 ,\phase[15]_i_3_n_0 ,\phase[15]_i_4_n_0 ,\phase[15]_i_5_n_0 ,\phase[15]_i_6_n_0 ,\phase[15]_i_7_n_0 ,\phase[15]_i_8_n_0 ,\phase[15]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[16] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[16]),
        .Q(phase[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[17] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[17]),
        .Q(phase[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[18] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[18]),
        .Q(phase[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[19] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[19]),
        .Q(phase[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[1] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[1]),
        .Q(phase[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[20] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[20]),
        .Q(phase[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[21] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[21]),
        .Q(phase[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[22] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[22]),
        .Q(phase[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[23] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[23]),
        .Q(phase[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \phase_reg[23]_i_1 
       (.CI(\phase_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\phase_reg[23]_i_1_n_0 ,\phase_reg[23]_i_1_n_1 ,\phase_reg[23]_i_1_n_2 ,\phase_reg[23]_i_1_n_3 ,\phase_reg[23]_i_1_n_4 ,\phase_reg[23]_i_1_n_5 ,\phase_reg[23]_i_1_n_6 ,\phase_reg[23]_i_1_n_7 }),
        .DI(phase_inc[23:16]),
        .O(add_ln18_fu_149_p2[23:16]),
        .S({\phase[23]_i_2_n_0 ,\phase[23]_i_3_n_0 ,\phase[23]_i_4_n_0 ,\phase[23]_i_5_n_0 ,\phase[23]_i_6_n_0 ,\phase[23]_i_7_n_0 ,\phase[23]_i_8_n_0 ,\phase[23]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[24] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[24]),
        .Q(phase[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[25] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[25]),
        .Q(phase[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[26] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[26]),
        .Q(phase[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[27] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[27]),
        .Q(phase[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[28] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[28]),
        .Q(phase[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[29] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[29]),
        .Q(phase[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[2] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[2]),
        .Q(phase[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[30] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[30]),
        .Q(phase[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[31] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[31]),
        .Q(phase[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \phase_reg[31]_i_1 
       (.CI(\phase_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_phase_reg[31]_i_1_CO_UNCONNECTED [7],\phase_reg[31]_i_1_n_1 ,\phase_reg[31]_i_1_n_2 ,\phase_reg[31]_i_1_n_3 ,\phase_reg[31]_i_1_n_4 ,\phase_reg[31]_i_1_n_5 ,\phase_reg[31]_i_1_n_6 ,\phase_reg[31]_i_1_n_7 }),
        .DI({1'b0,phase_inc[30:24]}),
        .O(add_ln18_fu_149_p2[31:24]),
        .S({\phase[31]_i_2_n_0 ,\phase[31]_i_3_n_0 ,\phase[31]_i_4_n_0 ,\phase[31]_i_5_n_0 ,\phase[31]_i_6_n_0 ,\phase[31]_i_7_n_0 ,\phase[31]_i_8_n_0 ,\phase[31]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[3] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[3]),
        .Q(phase[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[4] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[4]),
        .Q(phase[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[5] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[5]),
        .Q(phase[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[6] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[6]),
        .Q(phase[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[7] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[7]),
        .Q(phase[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \phase_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\phase_reg[7]_i_1_n_0 ,\phase_reg[7]_i_1_n_1 ,\phase_reg[7]_i_1_n_2 ,\phase_reg[7]_i_1_n_3 ,\phase_reg[7]_i_1_n_4 ,\phase_reg[7]_i_1_n_5 ,\phase_reg[7]_i_1_n_6 ,\phase_reg[7]_i_1_n_7 }),
        .DI(phase_inc[7:0]),
        .O(add_ln18_fu_149_p2[7:0]),
        .S({\phase[7]_i_2_n_0 ,\phase[7]_i_3_n_0 ,\phase[7]_i_4_n_0 ,\phase[7]_i_5_n_0 ,\phase[7]_i_6_n_0 ,\phase[7]_i_7_n_0 ,\phase[7]_i_8_n_0 ,\phase[7]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[8] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[8]),
        .Q(phase[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[9] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln18_fu_149_p2[9]),
        .Q(phase[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dds_sincos_DDS_SINE_ROM_ROM_AUTO_1R" *) 
module bd_0_hls_inst_0_dds_sincos_DDS_SINE_ROM_ROM_AUTO_1R
   (cos_out,
    sin_out,
    ap_clk,
    ap_start,
    rst_r,
    Q);
  output [15:0]cos_out;
  output [15:0]sin_out;
  input ap_clk;
  input ap_start;
  input [0:0]rst_r;
  input [9:0]Q;

  wire [9:0]DDS_SINE_ROM_address1;
  wire [9:0]Q;
  wire ap_clk;
  wire ap_start;
  wire [15:0]cos_out;
  wire q0_reg_i_12_n_0;
  wire q0_reg_i_13_n_0;
  wire q0_reg_i_14_n_0;
  wire q0_reg_i_1_n_6;
  wire q0_reg_i_1_n_7;
  wire [0:0]rst_r;
  wire [9:7]sel;
  wire [15:0]sin_out;
  wire [15:0]NLW_q0_reg_CASDOUTA_UNCONNECTED;
  wire [15:0]NLW_q0_reg_CASDOUTB_UNCONNECTED;
  wire [1:0]NLW_q0_reg_CASDOUTPA_UNCONNECTED;
  wire [1:0]NLW_q0_reg_CASDOUTPB_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOUTPADOUTP_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOUTPBDOUTP_UNCONNECTED;
  wire [7:2]NLW_q0_reg_i_1_CO_UNCONNECTED;
  wire [7:3]NLW_q0_reg_i_1_O_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "inst/DDS_SINE_ROM_U/q0_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0BC40AFB0A33096A08A207D907110648057F04B603ED0324025B019200C90000),
    .INIT_01(256'h1833176E16A815E2151C1455138F12C81201113A10720FAB0EE30E1C0D540C8C),
    .INIT_02(256'h246723A622E522232161209F1FDD1F1A1E571D931CCF1C0B1B471A8219BE18F9),
    .INIT_03(256'h30412F872ECC2E112D552C992BDC2B1F2A6129A328E52826276726A825E82528),
    .INIT_04(256'h3BA53AF23A40398C38D93824376F36BA3604354D349633DF3326326E31B530FB),
    .INIT_05(256'h467545CD4524447A43D04325427A41CE412140733FC53F173E683DB83D073C56),
    .INIT_06(256'h50974FFB4F5D4EBF4E204D814CE04C3F4B9D4AFB4A5849B4490F486947C3471C),
    .INIT_07(256'h59F3596458D3584257B0571D568A55F5556054C95432539B5302526851CE5133),
    .INIT_08(256'h627161F0616E60EB60685FE35F5D5ED75E4F5DC75D3E5CB35C285B9C5B0F5A82),
    .INIT_09(256'h69FD698B691968A6683267BC674666CF665665DD656364E8646C63EE637062F1),
    .INIT_0A(256'h708370226FC16F5E6EFB6E966E306DC96D616CF86C8E6C236BB76B4A6ADC6A6D),
    .INIT_0B(256'h75F375A57555750474B2745F740A73B5735E730772AE725471F9719D714070E2),
    .INIT_0C(256'h7A417A0579C87989794A790978C77884783F77FA77B3776B772276D8768D7641),
    .INIT_0D(256'h7D627D397D0E7CE37CB67C887C597C297BF87BC57B917B5C7B267AEE7AB67A7C),
    .INIT_0E(256'h7F4D7F377F217F097EEF7ED57EB97E9C7E7E7E5F7E3E7E1D7DFA7DD57DB07D89),
    .INIT_0F(256'h7FFE7FFD7FF97FF57FF07FE97FE17FD87FCD7FC17FB47FA67F977F867F747F61),
    .INIT_10(256'h7F747F867F977FA67FB47FC17FCD7FD87FE17FE97FF07FF57FF97FFD7FFE7FFF),
    .INIT_11(256'h7DB07DD57DFA7E1D7E3E7E5F7E7E7E9C7EB97ED57EEF7F097F217F377F4D7F61),
    .INIT_12(256'h7AB67AEE7B267B5C7B917BC57BF87C297C597C887CB67CE37D0E7D397D627D89),
    .INIT_13(256'h768D76D87722776B77B377FA783F788478C77909794A798979C87A057A417A7C),
    .INIT_14(256'h7140719D71F9725472AE7307735E73B5740A745F74B27504755575A575F37641),
    .INIT_15(256'h6ADC6B4A6BB76C236C8E6CF86D616DC96E306E966EFB6F5E6FC17022708370E2),
    .INIT_16(256'h637063EE646C64E8656365DD665666CF674667BC683268A66919698B69FD6A6D),
    .INIT_17(256'h5B0F5B9C5C285CB35D3E5DC75E4F5ED75F5D5FE3606860EB616E61F0627162F1),
    .INIT_18(256'h51CE52685302539B543254C9556055F5568A571D57B0584258D3596459F35A82),
    .INIT_19(256'h47C34869490F49B44A584AFB4B9D4C3F4CE04D814E204EBF4F5D4FFB50975133),
    .INIT_1A(256'h3D073DB83E683F173FC54073412141CE427A432543D0447A452445CD4675471C),
    .INIT_1B(256'h31B5326E332633DF3496354D360436BA376F382438D9398C3A403AF23BA53C56),
    .INIT_1C(256'h25E826A82767282628E529A32A612B1F2BDC2C992D552E112ECC2F87304130FB),
    .INIT_1D(256'h19BE1A821B471C0B1CCF1D931E571F1A1FDD209F2161222322E523A624672528),
    .INIT_1E(256'h0D540E1C0EE30FAB1072113A120112C8138F1455151C15E216A8176E183318F9),
    .INIT_1F(256'h00C90192025B032403ED04B6057F0648071107D908A2096A0A330AFB0BC40C8C),
    .INIT_20(256'hF43CF505F5CDF696F75EF827F8EFF9B8FA81FB4AFC13FCDCFDA5FE6EFF370000),
    .INIT_21(256'hE7CDE892E958EA1EEAE4EBABEC71ED38EDFFEEC6EF8EF055F11DF1E4F2ACF374),
    .INIT_22(256'hDB99DC5ADD1BDDDDDE9FDF61E023E0E6E1A9E26DE331E3F5E4B9E57EE642E707),
    .INIT_23(256'hCFBFD079D134D1EFD2ABD367D424D4E1D59FD65DD71BD7DAD899D958DA18DAD8),
    .INIT_24(256'hC45BC50EC5C0C674C727C7DCC891C946C9FCCAB3CB6ACC21CCDACD92CE4BCF05),
    .INIT_25(256'hB98BBA33BADCBB86BC30BCDBBD86BE32BEDFBF8DC03BC0E9C198C248C2F9C3AA),
    .INIT_26(256'hAF69B005B0A3B141B1E0B27FB320B3C1B463B505B5A8B64CB6F1B797B83DB8E4),
    .INIT_27(256'hA60DA69CA72DA7BEA850A8E3A976AA0BAAA0AB37ABCEAC65ACFEAD98AE32AECD),
    .INIT_28(256'h9D8F9E109E929F159F98A01DA0A3A129A1B1A239A2C2A34DA3D8A464A4F1A57E),
    .INIT_29(256'h9603967596E7975A97CE984498BA993199AA9A239A9D9B189B949C129C909D0F),
    .INIT_2A(256'h8F7D8FDE903F90A29105916A91D09237929F9308937293DD944994B695249593),
    .INIT_2B(256'h8A0D8A5B8AAB8AFC8B4E8BA18BF68C4B8CA28CF98D528DAC8E078E638EC08F1E),
    .INIT_2C(256'h85BF85FB8638867786B686F78739877C87C18806884D889588DE8928897389BF),
    .INIT_2D(256'h829E82C782F2831D834A837883A783D78408843B846F84A484DA8512854A8584),
    .INIT_2E(256'h80B380C980DF80F78111812B81478164818281A181C281E38206822B82508277),
    .INIT_2F(256'h800280038007800B80108017801F80288033803F804C805A8069807A808C809F),
    .INIT_30(256'h808C807A8069805A804C803F80338028801F80178010800B8007800380028001),
    .INIT_31(256'h8250822B820681E381C281A1818281648147812B811180F780DF80C980B3809F),
    .INIT_32(256'h854A851284DA84A4846F843B840883D783A78378834A831D82F282C7829E8277),
    .INIT_33(256'h8973892888DE8895884D880687C1877C873986F786B68677863885FB85BF8584),
    .INIT_34(256'h8EC08E638E078DAC8D528CF98CA28C4B8BF68BA18B4E8AFC8AAB8A5B8A0D89BF),
    .INIT_35(256'h952494B6944993DD93729308929F923791D0916A910590A2903F8FDE8F7D8F1E),
    .INIT_36(256'h9C909C129B949B189A9D9A2399AA993198BA984497CE975A96E7967596039593),
    .INIT_37(256'hA4F1A464A3D8A34DA2C2A239A1B1A129A0A3A01D9F989F159E929E109D8F9D0F),
    .INIT_38(256'hAE32AD98ACFEAC65ABCEAB37AAA0AA0BA976A8E3A850A7BEA72DA69CA60DA57E),
    .INIT_39(256'hB83DB797B6F1B64CB5A8B505B463B3C1B320B27FB1E0B141B0A3B005AF69AECD),
    .INIT_3A(256'hC2F9C248C198C0E9C03BBF8DBEDFBE32BD86BCDBBC30BB86BADCBA33B98BB8E4),
    .INIT_3B(256'hCE4BCD92CCDACC21CB6ACAB3C9FCC946C891C7DCC727C674C5C0C50EC45BC3AA),
    .INIT_3C(256'hDA18D958D899D7DAD71BD65DD59FD4E1D424D367D2ABD1EFD134D079CFBFCF05),
    .INIT_3D(256'hE642E57EE4B9E3F5E331E26DE1A9E0E6E023DF61DE9FDDDDDD1BDC5ADB99DAD8),
    .INIT_3E(256'hF2ACF1E4F11DF055EF8EEEC6EDFFED38EC71EBABEAE4EA1EE958E892E7CDE707),
    .INIT_3F(256'hFF37FE6EFDA5FCDCFC13FB4AFA81F9B8F8EFF827F75EF696F5CDF505F43CF374),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    q0_reg
       (.ADDRARDADDR({sel,DDS_SINE_ROM_address1[6:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({DDS_SINE_ROM_address1,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(NLW_q0_reg_CASDOUTA_UNCONNECTED[15:0]),
        .CASDOUTB(NLW_q0_reg_CASDOUTB_UNCONNECTED[15:0]),
        .CASDOUTPA(NLW_q0_reg_CASDOUTPA_UNCONNECTED[1:0]),
        .CASDOUTPB(NLW_q0_reg_CASDOUTPB_UNCONNECTED[1:0]),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DINADIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0}),
        .DINPBDINP({1'b1,1'b1}),
        .DOUTADOUT(cos_out),
        .DOUTBDOUT(sin_out),
        .DOUTPADOUTP(NLW_q0_reg_DOUTPADOUTP_UNCONNECTED[1:0]),
        .DOUTPBDOUTP(NLW_q0_reg_DOUTPBDOUTP_UNCONNECTED[1:0]),
        .ENARDEN(ap_start),
        .ENBWREN(ap_start),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 q0_reg_i_1
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_q0_reg_i_1_CO_UNCONNECTED[7:2],q0_reg_i_1_n_6,q0_reg_i_1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0}),
        .O({NLW_q0_reg_i_1_O_UNCONNECTED[7:3],sel}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,q0_reg_i_12_n_0,q0_reg_i_13_n_0,q0_reg_i_14_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    q0_reg_i_10
       (.I0(Q[8]),
        .I1(rst_r),
        .O(DDS_SINE_ROM_address1[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    q0_reg_i_11
       (.I0(Q[7]),
        .I1(rst_r),
        .O(DDS_SINE_ROM_address1[7]));
  LUT2 #(
    .INIT(4'h2)) 
    q0_reg_i_12
       (.I0(Q[9]),
        .I1(rst_r),
        .O(q0_reg_i_12_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    q0_reg_i_13
       (.I0(rst_r),
        .I1(Q[8]),
        .O(q0_reg_i_13_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    q0_reg_i_14
       (.I0(Q[7]),
        .I1(rst_r),
        .O(q0_reg_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    q0_reg_i_2
       (.I0(Q[6]),
        .I1(rst_r),
        .O(DDS_SINE_ROM_address1[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    q0_reg_i_3
       (.I0(Q[5]),
        .I1(rst_r),
        .O(DDS_SINE_ROM_address1[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    q0_reg_i_4
       (.I0(Q[4]),
        .I1(rst_r),
        .O(DDS_SINE_ROM_address1[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    q0_reg_i_5
       (.I0(Q[3]),
        .I1(rst_r),
        .O(DDS_SINE_ROM_address1[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    q0_reg_i_6
       (.I0(Q[2]),
        .I1(rst_r),
        .O(DDS_SINE_ROM_address1[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    q0_reg_i_7
       (.I0(Q[1]),
        .I1(rst_r),
        .O(DDS_SINE_ROM_address1[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    q0_reg_i_8
       (.I0(Q[0]),
        .I1(rst_r),
        .O(DDS_SINE_ROM_address1[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    q0_reg_i_9
       (.I0(Q[9]),
        .I1(rst_r),
        .O(DDS_SINE_ROM_address1[9]));
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
