# vivado -mode batch -source report_hier.tcl      (post-implementation resource use per sub-block)
open_project [pwd]/vivado_top/lockin_top_hw.xpr
open_run impl_1
report_utilization -hierarchical -hierarchical_depth 6 -file [pwd]/utilization_hier.rpt
report_power -file [pwd]/power.rpt
report_timing_summary -max_paths 5 -file [pwd]/timing_top5.rpt
puts "HIER REPORT DONE"
exit
