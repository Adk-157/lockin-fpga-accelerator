# Vitis HLS 2023.1:  vitis_hls -f run_hls.tcl   (run from this folder)
open_project -reset lockin_top_prj
set_top lockin_top
foreach f {lockin_top.cpp ctrl_x.cpp cordic_hls.cpp lut_hls.cpp poly_hls.cpp} { add_files src/$f }
open_solution -reset sol1
set_part {xczu5eg-sfvc784-1-e}
create_clock -period 10 -name default
csynth_design
export_design -format ip_catalog -output [pwd]/lockin_top_ip.zip
exit
