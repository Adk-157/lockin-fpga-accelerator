############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project mixer
set_top mixer
add_files ../files/mixer_hls.cpp
add_files ../files/mixer_hls.h
add_files ../files/mixer_params.h
add_files -tb ../files/tb_mixer.cpp
open_solution "solution1" -flow_target vivado
set_part {xczu5eg-sfvc784-1-e}
create_clock -period 10ns -name default
config_cosim -argv C:/Users/adith/OneDrive/Desktop/College/FPGA/golden_vectors/mixer_small.csv -tool xsim
config_export -format ip_catalog -output C:/hls_out/mixer.zip -rtl verilog -vivado_clock 10ns
#source "./mixer/solution1/directives.tcl"
csim_design -argv {C:/Users/adith/OneDrive/Desktop/College/FPGA/golden_vectors/mixer_full.csv}
csynth_design
cosim_design -argv {C:/Users/adith/OneDrive/Desktop/College/FPGA/golden_vectors/mixer_small.csv}
export_design -flow impl -rtl verilog -format ip_catalog -output C:/hls_out/mixer.zip
