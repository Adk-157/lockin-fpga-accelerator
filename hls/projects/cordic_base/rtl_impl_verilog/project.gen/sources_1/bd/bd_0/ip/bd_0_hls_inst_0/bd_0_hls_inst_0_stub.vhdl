-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Oct  6 00:43:22 2026
-- Host        : SUS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/adith/AppData/Roaming/Xilinx/Vitis/cordic_base/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu5eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_0_hls_inst_0 is
  Port ( 
    mag_out_ap_vld : out STD_LOGIC;
    ang_out_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    x_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    y_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mag_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ang_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end bd_0_hls_inst_0;

architecture stub of bd_0_hls_inst_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "mag_out_ap_vld,ang_out_ap_vld,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,x_in[15:0],y_in[15:0],mag_out[15:0],ang_out[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "cordic_vectoring,Vivado 2023.1";
begin
end;
