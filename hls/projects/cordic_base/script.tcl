############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project cordic_base
set_top cordic_vectoring
add_files ../../../../OneDrive/Desktop/College/FPGA/vitishls/cordic_hls.cpp
add_files ../../../../OneDrive/Desktop/College/FPGA/vitishls/cordic_hls.h
add_files ../../../../OneDrive/Desktop/College/FPGA/vitishls/lockin_golden_params.h
add_files -tb ../../../../OneDrive/Desktop/College/FPGA/vitishls/tb_cordic.cpp
open_solution "solution1" -flow_target vivado
set_part {xczu5eg-sfvc784-1-e}
create_clock -period 10ns -name default
config_cosim -argv C:/Users/adith/OneDrive/Desktop/College/FPGA/golden_vectors/cordic_full.csv -tool xsim
config_export -description {CORDIC vectoring, baseline} -display_name cordic_base -flow impl -format ip_catalog -library hls -output C:/hls_out -rtl verilog -vendor user.org -version 1.0 -vivado_clock 10ns
#source "./cordic_base/solution1/directives.tcl"
csim_design -argv {C:/Users/adith/OneDrive/Desktop/College/FPGA/golden_vectors/cordic_full.csv}
csynth_design
cosim_design -argv {C:/Users/adith/OneDrive/Desktop/College/FPGA/golden_vectors/cordic_full.csv}
export_design -flow impl -rtl verilog -format ip_catalog -output C:/hls_out
