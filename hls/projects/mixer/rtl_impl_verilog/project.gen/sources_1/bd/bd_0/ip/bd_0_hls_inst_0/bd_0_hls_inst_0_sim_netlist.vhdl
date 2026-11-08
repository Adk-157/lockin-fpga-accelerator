-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Oct 31 23:11:10 2026
-- Host        : SUS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/adith/OneDrive/Desktop/College/FPGA/vitis/mixer/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_sim_netlist.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu5eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_mixer_mac_muladd_16s_16s_15ns_32_4_1_DSP48_0 is
  port (
    i_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    x : in STD_LOGIC_VECTOR ( 15 downto 0 );
    c : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_mixer_mac_muladd_16s_16s_15ns_32_4_1_DSP48_0 : entity is "mixer_mac_muladd_16s_16s_15ns_32_4_1_DSP48_0";
end bd_0_hls_inst_0_mixer_mac_muladd_16s_16s_15ns_32_4_1_DSP48_0;

architecture STRUCTURE of bd_0_hls_inst_0_mixer_mac_muladd_16s_16s_15ns_32_4_1_DSP48_0 is
  signal p_reg_reg_n_100 : STD_LOGIC;
  signal p_reg_reg_n_101 : STD_LOGIC;
  signal p_reg_reg_n_102 : STD_LOGIC;
  signal p_reg_reg_n_103 : STD_LOGIC;
  signal p_reg_reg_n_104 : STD_LOGIC;
  signal p_reg_reg_n_105 : STD_LOGIC;
  signal p_reg_reg_n_74 : STD_LOGIC;
  signal p_reg_reg_n_75 : STD_LOGIC;
  signal p_reg_reg_n_76 : STD_LOGIC;
  signal p_reg_reg_n_77 : STD_LOGIC;
  signal p_reg_reg_n_78 : STD_LOGIC;
  signal p_reg_reg_n_79 : STD_LOGIC;
  signal p_reg_reg_n_80 : STD_LOGIC;
  signal p_reg_reg_n_81 : STD_LOGIC;
  signal p_reg_reg_n_82 : STD_LOGIC;
  signal p_reg_reg_n_83 : STD_LOGIC;
  signal p_reg_reg_n_84 : STD_LOGIC;
  signal p_reg_reg_n_85 : STD_LOGIC;
  signal p_reg_reg_n_86 : STD_LOGIC;
  signal p_reg_reg_n_87 : STD_LOGIC;
  signal p_reg_reg_n_88 : STD_LOGIC;
  signal p_reg_reg_n_89 : STD_LOGIC;
  signal p_reg_reg_n_90 : STD_LOGIC;
  signal p_reg_reg_n_91 : STD_LOGIC;
  signal p_reg_reg_n_92 : STD_LOGIC;
  signal p_reg_reg_n_93 : STD_LOGIC;
  signal p_reg_reg_n_94 : STD_LOGIC;
  signal p_reg_reg_n_95 : STD_LOGIC;
  signal p_reg_reg_n_96 : STD_LOGIC;
  signal p_reg_reg_n_97 : STD_LOGIC;
  signal p_reg_reg_n_98 : STD_LOGIC;
  signal p_reg_reg_n_99 : STD_LOGIC;
  signal NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_p_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_p_reg_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i_out[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i_out[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i_out[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i_out[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i_out[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i_out[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i_out[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i_out[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i_out[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_out[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_out[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i_out[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i_out[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i_out[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i_out[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i_out[9]_INST_0\ : label is "soft_lutpair4";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of p_reg_reg : label is "yes";
begin
\i_out[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => p_reg_reg_n_74,
      I1 => p_reg_reg_n_75,
      I2 => p_reg_reg_n_90,
      O => i_out(0)
    );
\i_out[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => p_reg_reg_n_74,
      I1 => p_reg_reg_n_75,
      I2 => p_reg_reg_n_80,
      O => i_out(10)
    );
\i_out[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => p_reg_reg_n_74,
      I1 => p_reg_reg_n_75,
      I2 => p_reg_reg_n_79,
      O => i_out(11)
    );
\i_out[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => p_reg_reg_n_74,
      I1 => p_reg_reg_n_75,
      I2 => p_reg_reg_n_78,
      O => i_out(12)
    );
\i_out[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => p_reg_reg_n_74,
      I1 => p_reg_reg_n_75,
      I2 => p_reg_reg_n_77,
      O => i_out(13)
    );
\i_out[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => p_reg_reg_n_74,
      I1 => p_reg_reg_n_75,
      I2 => p_reg_reg_n_76,
      O => i_out(14)
    );
\i_out[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_reg_reg_n_74,
      I1 => p_reg_reg_n_75,
      O => i_out(15)
    );
\i_out[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => p_reg_reg_n_74,
      I1 => p_reg_reg_n_75,
      I2 => p_reg_reg_n_89,
      O => i_out(1)
    );
\i_out[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => p_reg_reg_n_74,
      I1 => p_reg_reg_n_75,
      I2 => p_reg_reg_n_88,
      O => i_out(2)
    );
\i_out[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => p_reg_reg_n_74,
      I1 => p_reg_reg_n_75,
      I2 => p_reg_reg_n_87,
      O => i_out(3)
    );
\i_out[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => p_reg_reg_n_74,
      I1 => p_reg_reg_n_75,
      I2 => p_reg_reg_n_86,
      O => i_out(4)
    );
\i_out[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => p_reg_reg_n_74,
      I1 => p_reg_reg_n_75,
      I2 => p_reg_reg_n_85,
      O => i_out(5)
    );
\i_out[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => p_reg_reg_n_74,
      I1 => p_reg_reg_n_75,
      I2 => p_reg_reg_n_84,
      O => i_out(6)
    );
\i_out[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => p_reg_reg_n_74,
      I1 => p_reg_reg_n_75,
      I2 => p_reg_reg_n_83,
      O => i_out(7)
    );
\i_out[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => p_reg_reg_n_74,
      I1 => p_reg_reg_n_75,
      I2 => p_reg_reg_n_82,
      O => i_out(8)
    );
\i_out[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => p_reg_reg_n_74,
      I1 => p_reg_reg_n_75,
      I2 => p_reg_reg_n_81,
      O => i_out(9)
    );
p_reg_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => c(15),
      A(28) => c(15),
      A(27) => c(15),
      A(26) => c(15),
      A(25) => c(15),
      A(24) => c(15),
      A(23) => c(15),
      A(22) => c(15),
      A(21) => c(15),
      A(20) => c(15),
      A(19) => c(15),
      A(18) => c(15),
      A(17) => c(15),
      A(16) => c(15),
      A(15 downto 0) => c(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => x(15),
      B(16) => x(15),
      B(15 downto 0) => x(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000100000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => NLW_p_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_p_reg_reg_P_UNCONNECTED(47 downto 32),
      P(31) => p_reg_reg_n_74,
      P(30) => p_reg_reg_n_75,
      P(29) => p_reg_reg_n_76,
      P(28) => p_reg_reg_n_77,
      P(27) => p_reg_reg_n_78,
      P(26) => p_reg_reg_n_79,
      P(25) => p_reg_reg_n_80,
      P(24) => p_reg_reg_n_81,
      P(23) => p_reg_reg_n_82,
      P(22) => p_reg_reg_n_83,
      P(21) => p_reg_reg_n_84,
      P(20) => p_reg_reg_n_85,
      P(19) => p_reg_reg_n_86,
      P(18) => p_reg_reg_n_87,
      P(17) => p_reg_reg_n_88,
      P(16) => p_reg_reg_n_89,
      P(15) => p_reg_reg_n_90,
      P(14) => p_reg_reg_n_91,
      P(13) => p_reg_reg_n_92,
      P(12) => p_reg_reg_n_93,
      P(11) => p_reg_reg_n_94,
      P(10) => p_reg_reg_n_95,
      P(9) => p_reg_reg_n_96,
      P(8) => p_reg_reg_n_97,
      P(7) => p_reg_reg_n_98,
      P(6) => p_reg_reg_n_99,
      P(5) => p_reg_reg_n_100,
      P(4) => p_reg_reg_n_101,
      P(3) => p_reg_reg_n_102,
      P(2) => p_reg_reg_n_103,
      P(1) => p_reg_reg_n_104,
      P(0) => p_reg_reg_n_105,
      PATTERNBDETECT => NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_reg_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_p_reg_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_mixer_mac_mulsub_16s_16s_15ns_31_4_1_DSP48_1 is
  port (
    q_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    x : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_mixer_mac_mulsub_16s_16s_15ns_31_4_1_DSP48_1 : entity is "mixer_mac_mulsub_16s_16s_15ns_31_4_1_DSP48_1";
end bd_0_hls_inst_0_mixer_mac_mulsub_16s_16s_15ns_31_4_1_DSP48_1;

architecture STRUCTURE of bd_0_hls_inst_0_mixer_mac_mulsub_16s_16s_15ns_31_4_1_DSP48_1 is
  signal p_reg_reg_n_100 : STD_LOGIC;
  signal p_reg_reg_n_101 : STD_LOGIC;
  signal p_reg_reg_n_102 : STD_LOGIC;
  signal p_reg_reg_n_103 : STD_LOGIC;
  signal p_reg_reg_n_104 : STD_LOGIC;
  signal p_reg_reg_n_105 : STD_LOGIC;
  signal p_reg_reg_n_91 : STD_LOGIC;
  signal p_reg_reg_n_92 : STD_LOGIC;
  signal p_reg_reg_n_93 : STD_LOGIC;
  signal p_reg_reg_n_94 : STD_LOGIC;
  signal p_reg_reg_n_95 : STD_LOGIC;
  signal p_reg_reg_n_96 : STD_LOGIC;
  signal p_reg_reg_n_97 : STD_LOGIC;
  signal p_reg_reg_n_98 : STD_LOGIC;
  signal p_reg_reg_n_99 : STD_LOGIC;
  signal NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 31 );
  signal NLW_p_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_p_reg_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of p_reg_reg : label is "yes";
begin
p_reg_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => s(15),
      A(28) => s(15),
      A(27) => s(15),
      A(26) => s(15),
      A(25) => s(15),
      A(24) => s(15),
      A(23) => s(15),
      A(22) => s(15),
      A(21) => s(15),
      A(20) => s(15),
      A(19) => s(15),
      A(18) => s(15),
      A(17) => s(15),
      A(16) => s(15),
      A(15 downto 0) => s(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0011",
      B(17) => x(15),
      B(16) => x(15),
      B(15 downto 0) => x(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000100000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => NLW_p_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 31) => NLW_p_reg_reg_P_UNCONNECTED(47 downto 31),
      P(30 downto 15) => q_out(15 downto 0),
      P(14) => p_reg_reg_n_91,
      P(13) => p_reg_reg_n_92,
      P(12) => p_reg_reg_n_93,
      P(11) => p_reg_reg_n_94,
      P(10) => p_reg_reg_n_95,
      P(9) => p_reg_reg_n_96,
      P(8) => p_reg_reg_n_97,
      P(7) => p_reg_reg_n_98,
      P(6) => p_reg_reg_n_99,
      P(5) => p_reg_reg_n_100,
      P(4) => p_reg_reg_n_101,
      P(3) => p_reg_reg_n_102,
      P(2) => p_reg_reg_n_103,
      P(1) => p_reg_reg_n_104,
      P(0) => p_reg_reg_n_105,
      PATTERNBDETECT => NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_reg_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_p_reg_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_mixer_mac_muladd_16s_16s_15ns_32_4_1 is
  port (
    i_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    x : in STD_LOGIC_VECTOR ( 15 downto 0 );
    c : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_mixer_mac_muladd_16s_16s_15ns_32_4_1 : entity is "mixer_mac_muladd_16s_16s_15ns_32_4_1";
end bd_0_hls_inst_0_mixer_mac_muladd_16s_16s_15ns_32_4_1;

architecture STRUCTURE of bd_0_hls_inst_0_mixer_mac_muladd_16s_16s_15ns_32_4_1 is
begin
mixer_mac_muladd_16s_16s_15ns_32_4_1_DSP48_0_U: entity work.bd_0_hls_inst_0_mixer_mac_muladd_16s_16s_15ns_32_4_1_DSP48_0
     port map (
      ap_clk => ap_clk,
      c(15 downto 0) => c(15 downto 0),
      i_out(15 downto 0) => i_out(15 downto 0),
      x(15 downto 0) => x(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_mixer_mac_mulsub_16s_16s_15ns_31_4_1 is
  port (
    q_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    x : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_mixer_mac_mulsub_16s_16s_15ns_31_4_1 : entity is "mixer_mac_mulsub_16s_16s_15ns_31_4_1";
end bd_0_hls_inst_0_mixer_mac_mulsub_16s_16s_15ns_31_4_1;

architecture STRUCTURE of bd_0_hls_inst_0_mixer_mac_mulsub_16s_16s_15ns_31_4_1 is
begin
mixer_mac_mulsub_16s_16s_15ns_31_4_1_DSP48_1_U: entity work.bd_0_hls_inst_0_mixer_mac_mulsub_16s_16s_15ns_31_4_1_DSP48_1
     port map (
      ap_clk => ap_clk,
      q_out(15 downto 0) => q_out(15 downto 0),
      s(15 downto 0) => s(15 downto 0),
      x(15 downto 0) => x(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_mixer is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    valid_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    x : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s : in STD_LOGIC_VECTOR ( 15 downto 0 );
    c : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    valid_out_ap_vld : out STD_LOGIC;
    i_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    i_out_ap_vld : out STD_LOGIC;
    q_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    q_out_ap_vld : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_mixer : entity is "mixer";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of bd_0_hls_inst_0_mixer : entity is "1'b1";
  attribute hls_module : string;
  attribute hls_module of bd_0_hls_inst_0_mixer : entity is "yes";
end bd_0_hls_inst_0_mixer;

architecture STRUCTURE of bd_0_hls_inst_0_mixer is
  signal \^ap_done\ : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2 : STD_LOGIC;
  signal \^ap_start\ : STD_LOGIC;
  signal valid_in_read_reg_185 : STD_LOGIC;
  signal valid_in_read_reg_185_pp0_iter1_reg : STD_LOGIC;
begin
  \^ap_start\ <= ap_start;
  ap_done <= \^ap_done\;
  ap_ready <= \^ap_start\;
  i_out_ap_vld <= \^ap_done\;
  q_out_ap_vld <= \^ap_done\;
  valid_out_ap_vld <= \^ap_done\;
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_start\,
      Q => ap_enable_reg_pp0_iter1,
      R => ap_rst
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1,
      Q => ap_enable_reg_pp0_iter2,
      R => ap_rst
    );
ap_enable_reg_pp0_iter3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter2,
      Q => \^ap_done\,
      R => ap_rst
    );
ap_idle_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => ap_enable_reg_pp0_iter2,
      I2 => \^ap_done\,
      I3 => \^ap_start\,
      O => ap_idle
    );
mac_muladd_16s_16s_15ns_32_4_1_U1: entity work.bd_0_hls_inst_0_mixer_mac_muladd_16s_16s_15ns_32_4_1
     port map (
      ap_clk => ap_clk,
      c(15 downto 0) => c(15 downto 0),
      i_out(15 downto 0) => i_out(15 downto 0),
      x(15 downto 0) => x(15 downto 0)
    );
mac_mulsub_16s_16s_15ns_31_4_1_U2: entity work.bd_0_hls_inst_0_mixer_mac_mulsub_16s_16s_15ns_31_4_1
     port map (
      ap_clk => ap_clk,
      q_out(15 downto 0) => q_out(15 downto 0),
      s(15 downto 0) => s(15 downto 0),
      x(15 downto 0) => x(15 downto 0)
    );
\valid_in_read_reg_185_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => valid_in_read_reg_185,
      Q => valid_in_read_reg_185_pp0_iter1_reg,
      R => '0'
    );
\valid_in_read_reg_185_pp0_iter2_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => valid_in_read_reg_185_pp0_iter1_reg,
      Q => valid_out(0),
      R => '0'
    );
\valid_in_read_reg_185_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => valid_in(0),
      Q => valid_in_read_reg_185,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0 is
  port (
    valid_out_ap_vld : out STD_LOGIC;
    i_out_ap_vld : out STD_LOGIC;
    q_out_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    valid_in : in STD_LOGIC;
    x : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s : in STD_LOGIC_VECTOR ( 15 downto 0 );
    c : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_out : out STD_LOGIC;
    i_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    q_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_0_hls_inst_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_0_hls_inst_0 : entity is "bd_0_hls_inst_0,mixer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_0_hls_inst_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of bd_0_hls_inst_0 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_0_hls_inst_0 : entity is "mixer,Vivado 2023.1";
  attribute hls_module : string;
  attribute hls_module of bd_0_hls_inst_0 : entity is "yes";
end bd_0_hls_inst_0;

architecture STRUCTURE of bd_0_hls_inst_0 is
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of inst : label is "1'b1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 ap_rst RST";
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute X_INTERFACE_INFO of valid_in : signal is "xilinx.com:signal:data:1.0 valid_in DATA";
  attribute X_INTERFACE_PARAMETER of valid_in : signal is "XIL_INTERFACENAME valid_in, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of valid_out : signal is "xilinx.com:signal:data:1.0 valid_out DATA";
  attribute X_INTERFACE_PARAMETER of valid_out : signal is "XIL_INTERFACENAME valid_out, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of c : signal is "xilinx.com:signal:data:1.0 c DATA";
  attribute X_INTERFACE_PARAMETER of c : signal is "XIL_INTERFACENAME c, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of i_out : signal is "xilinx.com:signal:data:1.0 i_out DATA";
  attribute X_INTERFACE_PARAMETER of i_out : signal is "XIL_INTERFACENAME i_out, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of q_out : signal is "xilinx.com:signal:data:1.0 q_out DATA";
  attribute X_INTERFACE_PARAMETER of q_out : signal is "XIL_INTERFACENAME q_out, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s : signal is "xilinx.com:signal:data:1.0 s DATA";
  attribute X_INTERFACE_PARAMETER of s : signal is "XIL_INTERFACENAME s, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of x : signal is "xilinx.com:signal:data:1.0 x DATA";
  attribute X_INTERFACE_PARAMETER of x : signal is "XIL_INTERFACENAME x, LAYERED_METADATA undef";
begin
inst: entity work.bd_0_hls_inst_0_mixer
     port map (
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst => ap_rst,
      ap_start => ap_start,
      c(15 downto 0) => c(15 downto 0),
      i_out(15 downto 0) => i_out(15 downto 0),
      i_out_ap_vld => i_out_ap_vld,
      q_out(15 downto 0) => q_out(15 downto 0),
      q_out_ap_vld => q_out_ap_vld,
      s(15 downto 0) => s(15 downto 0),
      valid_in(0) => valid_in,
      valid_out(0) => valid_out,
      valid_out_ap_vld => valid_out_ap_vld,
      x(15 downto 0) => x(15 downto 0)
    );
end STRUCTURE;
