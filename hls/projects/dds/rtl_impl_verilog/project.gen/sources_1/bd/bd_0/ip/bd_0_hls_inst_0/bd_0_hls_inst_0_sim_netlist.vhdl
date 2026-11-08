-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Thu Oct 15 02:43:45 2026
-- Host        : SUS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/adith/OneDrive/Desktop/College/FPGA/vitis/dds/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_sim_netlist.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu5eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_dds_sincos_DDS_SINE_ROM_ROM_AUTO_1R is
  port (
    cos_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sin_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    rst_r : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_dds_sincos_DDS_SINE_ROM_ROM_AUTO_1R : entity is "dds_sincos_DDS_SINE_ROM_ROM_AUTO_1R";
end bd_0_hls_inst_0_dds_sincos_DDS_SINE_ROM_ROM_AUTO_1R;

architecture STRUCTURE of bd_0_hls_inst_0_dds_sincos_DDS_SINE_ROM_ROM_AUTO_1R is
  signal DDS_SINE_ROM_address1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal q0_reg_i_12_n_0 : STD_LOGIC;
  signal q0_reg_i_13_n_0 : STD_LOGIC;
  signal q0_reg_i_14_n_0 : STD_LOGIC;
  signal q0_reg_i_1_n_6 : STD_LOGIC;
  signal q0_reg_i_1_n_7 : STD_LOGIC;
  signal sel : STD_LOGIC_VECTOR ( 9 downto 7 );
  signal NLW_q0_reg_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_q0_reg_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_q0_reg_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_q0_reg_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_q0_reg_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_q0_reg_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_q0_reg_i_1_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_q0_reg_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 3 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of q0_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of q0_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of q0_reg : label is "MLO";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of q0_reg : label is "PERFORMANCE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of q0_reg : label is 16384;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of q0_reg : label is "inst/DDS_SINE_ROM_U/q0_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of q0_reg : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of q0_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of q0_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of q0_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of q0_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of q0_reg : label is 15;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of q0_reg_i_1 : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of q0_reg_i_10 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of q0_reg_i_11 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of q0_reg_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of q0_reg_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of q0_reg_i_4 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of q0_reg_i_5 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of q0_reg_i_6 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of q0_reg_i_7 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of q0_reg_i_8 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of q0_reg_i_9 : label is "soft_lutpair0";
begin
q0_reg: unisim.vcomponents.RAMB18E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0BC40AFB0A33096A08A207D907110648057F04B603ED0324025B019200C90000",
      INIT_01 => X"1833176E16A815E2151C1455138F12C81201113A10720FAB0EE30E1C0D540C8C",
      INIT_02 => X"246723A622E522232161209F1FDD1F1A1E571D931CCF1C0B1B471A8219BE18F9",
      INIT_03 => X"30412F872ECC2E112D552C992BDC2B1F2A6129A328E52826276726A825E82528",
      INIT_04 => X"3BA53AF23A40398C38D93824376F36BA3604354D349633DF3326326E31B530FB",
      INIT_05 => X"467545CD4524447A43D04325427A41CE412140733FC53F173E683DB83D073C56",
      INIT_06 => X"50974FFB4F5D4EBF4E204D814CE04C3F4B9D4AFB4A5849B4490F486947C3471C",
      INIT_07 => X"59F3596458D3584257B0571D568A55F5556054C95432539B5302526851CE5133",
      INIT_08 => X"627161F0616E60EB60685FE35F5D5ED75E4F5DC75D3E5CB35C285B9C5B0F5A82",
      INIT_09 => X"69FD698B691968A6683267BC674666CF665665DD656364E8646C63EE637062F1",
      INIT_0A => X"708370226FC16F5E6EFB6E966E306DC96D616CF86C8E6C236BB76B4A6ADC6A6D",
      INIT_0B => X"75F375A57555750474B2745F740A73B5735E730772AE725471F9719D714070E2",
      INIT_0C => X"7A417A0579C87989794A790978C77884783F77FA77B3776B772276D8768D7641",
      INIT_0D => X"7D627D397D0E7CE37CB67C887C597C297BF87BC57B917B5C7B267AEE7AB67A7C",
      INIT_0E => X"7F4D7F377F217F097EEF7ED57EB97E9C7E7E7E5F7E3E7E1D7DFA7DD57DB07D89",
      INIT_0F => X"7FFE7FFD7FF97FF57FF07FE97FE17FD87FCD7FC17FB47FA67F977F867F747F61",
      INIT_10 => X"7F747F867F977FA67FB47FC17FCD7FD87FE17FE97FF07FF57FF97FFD7FFE7FFF",
      INIT_11 => X"7DB07DD57DFA7E1D7E3E7E5F7E7E7E9C7EB97ED57EEF7F097F217F377F4D7F61",
      INIT_12 => X"7AB67AEE7B267B5C7B917BC57BF87C297C597C887CB67CE37D0E7D397D627D89",
      INIT_13 => X"768D76D87722776B77B377FA783F788478C77909794A798979C87A057A417A7C",
      INIT_14 => X"7140719D71F9725472AE7307735E73B5740A745F74B27504755575A575F37641",
      INIT_15 => X"6ADC6B4A6BB76C236C8E6CF86D616DC96E306E966EFB6F5E6FC17022708370E2",
      INIT_16 => X"637063EE646C64E8656365DD665666CF674667BC683268A66919698B69FD6A6D",
      INIT_17 => X"5B0F5B9C5C285CB35D3E5DC75E4F5ED75F5D5FE3606860EB616E61F0627162F1",
      INIT_18 => X"51CE52685302539B543254C9556055F5568A571D57B0584258D3596459F35A82",
      INIT_19 => X"47C34869490F49B44A584AFB4B9D4C3F4CE04D814E204EBF4F5D4FFB50975133",
      INIT_1A => X"3D073DB83E683F173FC54073412141CE427A432543D0447A452445CD4675471C",
      INIT_1B => X"31B5326E332633DF3496354D360436BA376F382438D9398C3A403AF23BA53C56",
      INIT_1C => X"25E826A82767282628E529A32A612B1F2BDC2C992D552E112ECC2F87304130FB",
      INIT_1D => X"19BE1A821B471C0B1CCF1D931E571F1A1FDD209F2161222322E523A624672528",
      INIT_1E => X"0D540E1C0EE30FAB1072113A120112C8138F1455151C15E216A8176E183318F9",
      INIT_1F => X"00C90192025B032403ED04B6057F0648071107D908A2096A0A330AFB0BC40C8C",
      INIT_20 => X"F43CF505F5CDF696F75EF827F8EFF9B8FA81FB4AFC13FCDCFDA5FE6EFF370000",
      INIT_21 => X"E7CDE892E958EA1EEAE4EBABEC71ED38EDFFEEC6EF8EF055F11DF1E4F2ACF374",
      INIT_22 => X"DB99DC5ADD1BDDDDDE9FDF61E023E0E6E1A9E26DE331E3F5E4B9E57EE642E707",
      INIT_23 => X"CFBFD079D134D1EFD2ABD367D424D4E1D59FD65DD71BD7DAD899D958DA18DAD8",
      INIT_24 => X"C45BC50EC5C0C674C727C7DCC891C946C9FCCAB3CB6ACC21CCDACD92CE4BCF05",
      INIT_25 => X"B98BBA33BADCBB86BC30BCDBBD86BE32BEDFBF8DC03BC0E9C198C248C2F9C3AA",
      INIT_26 => X"AF69B005B0A3B141B1E0B27FB320B3C1B463B505B5A8B64CB6F1B797B83DB8E4",
      INIT_27 => X"A60DA69CA72DA7BEA850A8E3A976AA0BAAA0AB37ABCEAC65ACFEAD98AE32AECD",
      INIT_28 => X"9D8F9E109E929F159F98A01DA0A3A129A1B1A239A2C2A34DA3D8A464A4F1A57E",
      INIT_29 => X"9603967596E7975A97CE984498BA993199AA9A239A9D9B189B949C129C909D0F",
      INIT_2A => X"8F7D8FDE903F90A29105916A91D09237929F9308937293DD944994B695249593",
      INIT_2B => X"8A0D8A5B8AAB8AFC8B4E8BA18BF68C4B8CA28CF98D528DAC8E078E638EC08F1E",
      INIT_2C => X"85BF85FB8638867786B686F78739877C87C18806884D889588DE8928897389BF",
      INIT_2D => X"829E82C782F2831D834A837883A783D78408843B846F84A484DA8512854A8584",
      INIT_2E => X"80B380C980DF80F78111812B81478164818281A181C281E38206822B82508277",
      INIT_2F => X"800280038007800B80108017801F80288033803F804C805A8069807A808C809F",
      INIT_30 => X"808C807A8069805A804C803F80338028801F80178010800B8007800380028001",
      INIT_31 => X"8250822B820681E381C281A1818281648147812B811180F780DF80C980B3809F",
      INIT_32 => X"854A851284DA84A4846F843B840883D783A78378834A831D82F282C7829E8277",
      INIT_33 => X"8973892888DE8895884D880687C1877C873986F786B68677863885FB85BF8584",
      INIT_34 => X"8EC08E638E078DAC8D528CF98CA28C4B8BF68BA18B4E8AFC8AAB8A5B8A0D89BF",
      INIT_35 => X"952494B6944993DD93729308929F923791D0916A910590A2903F8FDE8F7D8F1E",
      INIT_36 => X"9C909C129B949B189A9D9A2399AA993198BA984497CE975A96E7967596039593",
      INIT_37 => X"A4F1A464A3D8A34DA2C2A239A1B1A129A0A3A01D9F989F159E929E109D8F9D0F",
      INIT_38 => X"AE32AD98ACFEAC65ABCEAB37AAA0AA0BA976A8E3A850A7BEA72DA69CA60DA57E",
      INIT_39 => X"B83DB797B6F1B64CB5A8B505B463B3C1B320B27FB1E0B141B0A3B005AF69AECD",
      INIT_3A => X"C2F9C248C198C0E9C03BBF8DBEDFBE32BD86BCDBBC30BB86BADCBA33B98BB8E4",
      INIT_3B => X"CE4BCD92CCDACC21CB6ACAB3C9FCC946C891C7DCC727C674C5C0C50EC45BC3AA",
      INIT_3C => X"DA18D958D899D7DAD71BD65DD59FD4E1D424D367D2ABD1EFD134D079CFBFCF05",
      INIT_3D => X"E642E57EE4B9E3F5E331E26DE1A9E0E6E023DF61DE9FDDDDDD1BDC5ADB99DAD8",
      INIT_3E => X"F2ACF1E4F11DF055EF8EEEC6EDFFED38EC71EBABEAE4EA1EE958E892E7CDE707",
      INIT_3F => X"FF37FE6EFDA5FCDCFC13FB4AFA81F9B8F8EFF827F75EF696F5CDF505F43CF374",
      INIT_A => B"00" & X"0000",
      INIT_B => B"00" & X"0000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => B"00" & X"0000",
      SRVAL_B => B"00" & X"0000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 11) => sel(9 downto 7),
      ADDRARDADDR(10 downto 4) => DDS_SINE_ROM_address1(6 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 4) => DDS_SINE_ROM_address1(9 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(15 downto 0) => B"0000000000000000",
      CASDINB(15 downto 0) => B"0000000000000000",
      CASDINPA(1 downto 0) => B"00",
      CASDINPB(1 downto 0) => B"00",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(15 downto 0) => NLW_q0_reg_CASDOUTA_UNCONNECTED(15 downto 0),
      CASDOUTB(15 downto 0) => NLW_q0_reg_CASDOUTB_UNCONNECTED(15 downto 0),
      CASDOUTPA(1 downto 0) => NLW_q0_reg_CASDOUTPA_UNCONNECTED(1 downto 0),
      CASDOUTPB(1 downto 0) => NLW_q0_reg_CASDOUTPB_UNCONNECTED(1 downto 0),
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CLKARDCLK => ap_clk,
      CLKBWRCLK => ap_clk,
      DINADIN(15 downto 0) => B"1111111111111111",
      DINBDIN(15 downto 0) => B"1111111111111111",
      DINPADINP(1 downto 0) => B"00",
      DINPBDINP(1 downto 0) => B"11",
      DOUTADOUT(15 downto 0) => cos_out(15 downto 0),
      DOUTBDOUT(15 downto 0) => sin_out(15 downto 0),
      DOUTPADOUTP(1 downto 0) => NLW_q0_reg_DOUTPADOUTP_UNCONNECTED(1 downto 0),
      DOUTPBDOUTP(1 downto 0) => NLW_q0_reg_DOUTPBDOUTP_UNCONNECTED(1 downto 0),
      ENARDEN => ap_start,
      ENBWREN => ap_start,
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SLEEP => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
q0_reg_i_1: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 2) => NLW_q0_reg_i_1_CO_UNCONNECTED(7 downto 2),
      CO(1) => q0_reg_i_1_n_6,
      CO(0) => q0_reg_i_1_n_7,
      DI(7 downto 0) => B"00000010",
      O(7 downto 3) => NLW_q0_reg_i_1_O_UNCONNECTED(7 downto 3),
      O(2 downto 0) => sel(9 downto 7),
      S(7 downto 3) => B"00000",
      S(2) => q0_reg_i_12_n_0,
      S(1) => q0_reg_i_13_n_0,
      S(0) => q0_reg_i_14_n_0
    );
q0_reg_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(8),
      I1 => rst_r(0),
      O => DDS_SINE_ROM_address1(8)
    );
q0_reg_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(7),
      I1 => rst_r(0),
      O => DDS_SINE_ROM_address1(7)
    );
q0_reg_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(9),
      I1 => rst_r(0),
      O => q0_reg_i_12_n_0
    );
q0_reg_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rst_r(0),
      I1 => Q(8),
      O => q0_reg_i_13_n_0
    );
q0_reg_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(7),
      I1 => rst_r(0),
      O => q0_reg_i_14_n_0
    );
q0_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(6),
      I1 => rst_r(0),
      O => DDS_SINE_ROM_address1(6)
    );
q0_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(5),
      I1 => rst_r(0),
      O => DDS_SINE_ROM_address1(5)
    );
q0_reg_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(4),
      I1 => rst_r(0),
      O => DDS_SINE_ROM_address1(4)
    );
q0_reg_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(3),
      I1 => rst_r(0),
      O => DDS_SINE_ROM_address1(3)
    );
q0_reg_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(2),
      I1 => rst_r(0),
      O => DDS_SINE_ROM_address1(2)
    );
q0_reg_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(1),
      I1 => rst_r(0),
      O => DDS_SINE_ROM_address1(1)
    );
q0_reg_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => rst_r(0),
      O => DDS_SINE_ROM_address1(0)
    );
q0_reg_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(9),
      I1 => rst_r(0),
      O => DDS_SINE_ROM_address1(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_dds_sincos is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    rst_r : in STD_LOGIC_VECTOR ( 0 to 0 );
    phase_inc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sin_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sin_out_ap_vld : out STD_LOGIC;
    cos_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cos_out_ap_vld : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_dds_sincos : entity is "dds_sincos";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of bd_0_hls_inst_0_dds_sincos : entity is "1'b1";
  attribute hls_module : string;
  attribute hls_module of bd_0_hls_inst_0_dds_sincos : entity is "yes";
end bd_0_hls_inst_0_dds_sincos;

architecture STRUCTURE of bd_0_hls_inst_0_dds_sincos is
  signal add_ln18_fu_149_p2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ap_enable_reg_pp0_iter1_i_1_n_0 : STD_LOGIC;
  signal \^ap_start\ : STD_LOGIC;
  signal \^cos_out_ap_vld\ : STD_LOGIC;
  signal phase : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \phase[15]_i_2_n_0\ : STD_LOGIC;
  signal \phase[15]_i_3_n_0\ : STD_LOGIC;
  signal \phase[15]_i_4_n_0\ : STD_LOGIC;
  signal \phase[15]_i_5_n_0\ : STD_LOGIC;
  signal \phase[15]_i_6_n_0\ : STD_LOGIC;
  signal \phase[15]_i_7_n_0\ : STD_LOGIC;
  signal \phase[15]_i_8_n_0\ : STD_LOGIC;
  signal \phase[15]_i_9_n_0\ : STD_LOGIC;
  signal \phase[23]_i_2_n_0\ : STD_LOGIC;
  signal \phase[23]_i_3_n_0\ : STD_LOGIC;
  signal \phase[23]_i_4_n_0\ : STD_LOGIC;
  signal \phase[23]_i_5_n_0\ : STD_LOGIC;
  signal \phase[23]_i_6_n_0\ : STD_LOGIC;
  signal \phase[23]_i_7_n_0\ : STD_LOGIC;
  signal \phase[23]_i_8_n_0\ : STD_LOGIC;
  signal \phase[23]_i_9_n_0\ : STD_LOGIC;
  signal \phase[31]_i_2_n_0\ : STD_LOGIC;
  signal \phase[31]_i_3_n_0\ : STD_LOGIC;
  signal \phase[31]_i_4_n_0\ : STD_LOGIC;
  signal \phase[31]_i_5_n_0\ : STD_LOGIC;
  signal \phase[31]_i_6_n_0\ : STD_LOGIC;
  signal \phase[31]_i_7_n_0\ : STD_LOGIC;
  signal \phase[31]_i_8_n_0\ : STD_LOGIC;
  signal \phase[31]_i_9_n_0\ : STD_LOGIC;
  signal \phase[7]_i_2_n_0\ : STD_LOGIC;
  signal \phase[7]_i_3_n_0\ : STD_LOGIC;
  signal \phase[7]_i_4_n_0\ : STD_LOGIC;
  signal \phase[7]_i_5_n_0\ : STD_LOGIC;
  signal \phase[7]_i_6_n_0\ : STD_LOGIC;
  signal \phase[7]_i_7_n_0\ : STD_LOGIC;
  signal \phase[7]_i_8_n_0\ : STD_LOGIC;
  signal \phase[7]_i_9_n_0\ : STD_LOGIC;
  signal \phase_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \phase_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \phase_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \phase_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \phase_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \phase_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \phase_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \phase_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \phase_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \phase_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \phase_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \phase_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \phase_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \phase_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \phase_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \phase_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \phase_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \phase_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \phase_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \phase_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \phase_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \phase_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \phase_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \phase_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \phase_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \phase_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \phase_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \phase_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \phase_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \phase_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \phase_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_phase_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter1_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of ap_idle_INST_0 : label is "soft_lutpair5";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \phase_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_reg[23]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_reg[31]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_reg[7]_i_1\ : label is 35;
begin
  \^ap_start\ <= ap_start;
  ap_done <= \^cos_out_ap_vld\;
  ap_ready <= \^ap_start\;
  cos_out_ap_vld <= \^cos_out_ap_vld\;
  sin_out_ap_vld <= \^cos_out_ap_vld\;
DDS_SINE_ROM_U: entity work.bd_0_hls_inst_0_dds_sincos_DDS_SINE_ROM_ROM_AUTO_1R
     port map (
      Q(9 downto 0) => phase(31 downto 22),
      ap_clk => ap_clk,
      ap_start => \^ap_start\,
      cos_out(15 downto 0) => cos_out(15 downto 0),
      rst_r(0) => rst_r(0),
      sin_out(15 downto 0) => sin_out(15 downto 0)
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ap_start\,
      I1 => ap_rst,
      O => ap_enable_reg_pp0_iter1_i_1_n_0
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1_i_1_n_0,
      Q => \^cos_out_ap_vld\,
      R => '0'
    );
ap_idle_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ap_start\,
      I1 => \^cos_out_ap_vld\,
      O => ap_idle
    );
\phase[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(15),
      I2 => phase_inc(15),
      O => \phase[15]_i_2_n_0\
    );
\phase[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(14),
      I2 => phase_inc(14),
      O => \phase[15]_i_3_n_0\
    );
\phase[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(13),
      I2 => phase_inc(13),
      O => \phase[15]_i_4_n_0\
    );
\phase[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(12),
      I2 => phase_inc(12),
      O => \phase[15]_i_5_n_0\
    );
\phase[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(11),
      I2 => phase_inc(11),
      O => \phase[15]_i_6_n_0\
    );
\phase[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(10),
      I2 => phase_inc(10),
      O => \phase[15]_i_7_n_0\
    );
\phase[15]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(9),
      I2 => phase_inc(9),
      O => \phase[15]_i_8_n_0\
    );
\phase[15]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(8),
      I2 => phase_inc(8),
      O => \phase[15]_i_9_n_0\
    );
\phase[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(23),
      I2 => phase_inc(23),
      O => \phase[23]_i_2_n_0\
    );
\phase[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(22),
      I2 => phase_inc(22),
      O => \phase[23]_i_3_n_0\
    );
\phase[23]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(21),
      I2 => phase_inc(21),
      O => \phase[23]_i_4_n_0\
    );
\phase[23]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(20),
      I2 => phase_inc(20),
      O => \phase[23]_i_5_n_0\
    );
\phase[23]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(19),
      I2 => phase_inc(19),
      O => \phase[23]_i_6_n_0\
    );
\phase[23]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(18),
      I2 => phase_inc(18),
      O => \phase[23]_i_7_n_0\
    );
\phase[23]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(17),
      I2 => phase_inc(17),
      O => \phase[23]_i_8_n_0\
    );
\phase[23]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(16),
      I2 => phase_inc(16),
      O => \phase[23]_i_9_n_0\
    );
\phase[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(31),
      I2 => phase_inc(31),
      O => \phase[31]_i_2_n_0\
    );
\phase[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(30),
      I2 => phase_inc(30),
      O => \phase[31]_i_3_n_0\
    );
\phase[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(29),
      I2 => phase_inc(29),
      O => \phase[31]_i_4_n_0\
    );
\phase[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(28),
      I2 => phase_inc(28),
      O => \phase[31]_i_5_n_0\
    );
\phase[31]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(27),
      I2 => phase_inc(27),
      O => \phase[31]_i_6_n_0\
    );
\phase[31]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(26),
      I2 => phase_inc(26),
      O => \phase[31]_i_7_n_0\
    );
\phase[31]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(25),
      I2 => phase_inc(25),
      O => \phase[31]_i_8_n_0\
    );
\phase[31]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(24),
      I2 => phase_inc(24),
      O => \phase[31]_i_9_n_0\
    );
\phase[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(7),
      I2 => phase_inc(7),
      O => \phase[7]_i_2_n_0\
    );
\phase[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(6),
      I2 => phase_inc(6),
      O => \phase[7]_i_3_n_0\
    );
\phase[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(5),
      I2 => phase_inc(5),
      O => \phase[7]_i_4_n_0\
    );
\phase[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(4),
      I2 => phase_inc(4),
      O => \phase[7]_i_5_n_0\
    );
\phase[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(3),
      I2 => phase_inc(3),
      O => \phase[7]_i_6_n_0\
    );
\phase[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(2),
      I2 => phase_inc(2),
      O => \phase[7]_i_7_n_0\
    );
\phase[7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(1),
      I2 => phase_inc(1),
      O => \phase[7]_i_8_n_0\
    );
\phase[7]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst_r(0),
      I1 => phase(0),
      I2 => phase_inc(0),
      O => \phase[7]_i_9_n_0\
    );
\phase_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(0),
      Q => phase(0),
      R => '0'
    );
\phase_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(10),
      Q => phase(10),
      R => '0'
    );
\phase_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(11),
      Q => phase(11),
      R => '0'
    );
\phase_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(12),
      Q => phase(12),
      R => '0'
    );
\phase_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(13),
      Q => phase(13),
      R => '0'
    );
\phase_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(14),
      Q => phase(14),
      R => '0'
    );
\phase_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(15),
      Q => phase(15),
      R => '0'
    );
\phase_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \phase_reg[15]_i_1_n_0\,
      CO(6) => \phase_reg[15]_i_1_n_1\,
      CO(5) => \phase_reg[15]_i_1_n_2\,
      CO(4) => \phase_reg[15]_i_1_n_3\,
      CO(3) => \phase_reg[15]_i_1_n_4\,
      CO(2) => \phase_reg[15]_i_1_n_5\,
      CO(1) => \phase_reg[15]_i_1_n_6\,
      CO(0) => \phase_reg[15]_i_1_n_7\,
      DI(7 downto 0) => phase_inc(15 downto 8),
      O(7 downto 0) => add_ln18_fu_149_p2(15 downto 8),
      S(7) => \phase[15]_i_2_n_0\,
      S(6) => \phase[15]_i_3_n_0\,
      S(5) => \phase[15]_i_4_n_0\,
      S(4) => \phase[15]_i_5_n_0\,
      S(3) => \phase[15]_i_6_n_0\,
      S(2) => \phase[15]_i_7_n_0\,
      S(1) => \phase[15]_i_8_n_0\,
      S(0) => \phase[15]_i_9_n_0\
    );
\phase_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(16),
      Q => phase(16),
      R => '0'
    );
\phase_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(17),
      Q => phase(17),
      R => '0'
    );
\phase_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(18),
      Q => phase(18),
      R => '0'
    );
\phase_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(19),
      Q => phase(19),
      R => '0'
    );
\phase_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(1),
      Q => phase(1),
      R => '0'
    );
\phase_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(20),
      Q => phase(20),
      R => '0'
    );
\phase_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(21),
      Q => phase(21),
      R => '0'
    );
\phase_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(22),
      Q => phase(22),
      R => '0'
    );
\phase_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(23),
      Q => phase(23),
      R => '0'
    );
\phase_reg[23]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \phase_reg[23]_i_1_n_0\,
      CO(6) => \phase_reg[23]_i_1_n_1\,
      CO(5) => \phase_reg[23]_i_1_n_2\,
      CO(4) => \phase_reg[23]_i_1_n_3\,
      CO(3) => \phase_reg[23]_i_1_n_4\,
      CO(2) => \phase_reg[23]_i_1_n_5\,
      CO(1) => \phase_reg[23]_i_1_n_6\,
      CO(0) => \phase_reg[23]_i_1_n_7\,
      DI(7 downto 0) => phase_inc(23 downto 16),
      O(7 downto 0) => add_ln18_fu_149_p2(23 downto 16),
      S(7) => \phase[23]_i_2_n_0\,
      S(6) => \phase[23]_i_3_n_0\,
      S(5) => \phase[23]_i_4_n_0\,
      S(4) => \phase[23]_i_5_n_0\,
      S(3) => \phase[23]_i_6_n_0\,
      S(2) => \phase[23]_i_7_n_0\,
      S(1) => \phase[23]_i_8_n_0\,
      S(0) => \phase[23]_i_9_n_0\
    );
\phase_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(24),
      Q => phase(24),
      R => '0'
    );
\phase_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(25),
      Q => phase(25),
      R => '0'
    );
\phase_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(26),
      Q => phase(26),
      R => '0'
    );
\phase_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(27),
      Q => phase(27),
      R => '0'
    );
\phase_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(28),
      Q => phase(28),
      R => '0'
    );
\phase_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(29),
      Q => phase(29),
      R => '0'
    );
\phase_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(2),
      Q => phase(2),
      R => '0'
    );
\phase_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(30),
      Q => phase(30),
      R => '0'
    );
\phase_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(31),
      Q => phase(31),
      R => '0'
    );
\phase_reg[31]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_reg[23]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_phase_reg[31]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \phase_reg[31]_i_1_n_1\,
      CO(5) => \phase_reg[31]_i_1_n_2\,
      CO(4) => \phase_reg[31]_i_1_n_3\,
      CO(3) => \phase_reg[31]_i_1_n_4\,
      CO(2) => \phase_reg[31]_i_1_n_5\,
      CO(1) => \phase_reg[31]_i_1_n_6\,
      CO(0) => \phase_reg[31]_i_1_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => phase_inc(30 downto 24),
      O(7 downto 0) => add_ln18_fu_149_p2(31 downto 24),
      S(7) => \phase[31]_i_2_n_0\,
      S(6) => \phase[31]_i_3_n_0\,
      S(5) => \phase[31]_i_4_n_0\,
      S(4) => \phase[31]_i_5_n_0\,
      S(3) => \phase[31]_i_6_n_0\,
      S(2) => \phase[31]_i_7_n_0\,
      S(1) => \phase[31]_i_8_n_0\,
      S(0) => \phase[31]_i_9_n_0\
    );
\phase_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(3),
      Q => phase(3),
      R => '0'
    );
\phase_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(4),
      Q => phase(4),
      R => '0'
    );
\phase_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(5),
      Q => phase(5),
      R => '0'
    );
\phase_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(6),
      Q => phase(6),
      R => '0'
    );
\phase_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(7),
      Q => phase(7),
      R => '0'
    );
\phase_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \phase_reg[7]_i_1_n_0\,
      CO(6) => \phase_reg[7]_i_1_n_1\,
      CO(5) => \phase_reg[7]_i_1_n_2\,
      CO(4) => \phase_reg[7]_i_1_n_3\,
      CO(3) => \phase_reg[7]_i_1_n_4\,
      CO(2) => \phase_reg[7]_i_1_n_5\,
      CO(1) => \phase_reg[7]_i_1_n_6\,
      CO(0) => \phase_reg[7]_i_1_n_7\,
      DI(7 downto 0) => phase_inc(7 downto 0),
      O(7 downto 0) => add_ln18_fu_149_p2(7 downto 0),
      S(7) => \phase[7]_i_2_n_0\,
      S(6) => \phase[7]_i_3_n_0\,
      S(5) => \phase[7]_i_4_n_0\,
      S(4) => \phase[7]_i_5_n_0\,
      S(3) => \phase[7]_i_6_n_0\,
      S(2) => \phase[7]_i_7_n_0\,
      S(1) => \phase[7]_i_8_n_0\,
      S(0) => \phase[7]_i_9_n_0\
    );
\phase_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(8),
      Q => phase(8),
      R => '0'
    );
\phase_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln18_fu_149_p2(9),
      Q => phase(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0 is
  port (
    sin_out_ap_vld : out STD_LOGIC;
    cos_out_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    rst_r : in STD_LOGIC;
    phase_inc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sin_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cos_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_0_hls_inst_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_0_hls_inst_0 : entity is "bd_0_hls_inst_0,dds_sincos,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_0_hls_inst_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of bd_0_hls_inst_0 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_0_hls_inst_0 : entity is "dds_sincos,Vivado 2023.1";
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
  attribute X_INTERFACE_INFO of rst_r : signal is "xilinx.com:signal:data:1.0 rst_r DATA";
  attribute X_INTERFACE_PARAMETER of rst_r : signal is "XIL_INTERFACENAME rst_r, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of cos_out : signal is "xilinx.com:signal:data:1.0 cos_out DATA";
  attribute X_INTERFACE_PARAMETER of cos_out : signal is "XIL_INTERFACENAME cos_out, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of phase_inc : signal is "xilinx.com:signal:data:1.0 phase_inc DATA";
  attribute X_INTERFACE_PARAMETER of phase_inc : signal is "XIL_INTERFACENAME phase_inc, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of sin_out : signal is "xilinx.com:signal:data:1.0 sin_out DATA";
  attribute X_INTERFACE_PARAMETER of sin_out : signal is "XIL_INTERFACENAME sin_out, LAYERED_METADATA undef";
begin
inst: entity work.bd_0_hls_inst_0_dds_sincos
     port map (
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst => ap_rst,
      ap_start => ap_start,
      cos_out(15 downto 0) => cos_out(15 downto 0),
      cos_out_ap_vld => cos_out_ap_vld,
      phase_inc(31 downto 0) => phase_inc(31 downto 0),
      rst_r(0) => rst_r,
      sin_out(15 downto 0) => sin_out(15 downto 0),
      sin_out_ap_vld => sin_out_ap_vld
    );
end STRUCTURE;
