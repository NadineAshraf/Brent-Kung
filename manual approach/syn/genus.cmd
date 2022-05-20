# Cadence Genus(TM) Synthesis Solution, Version GENUS15.20 - 15.20-p004_1, built Nov 14 2015

# Date: Wed May 18 18:26:33 2022
# Host: berkeley (x86_64 w/Linux 3.16.0-4-amd64) (1*Intel(R) Core(TM) i7-8565U CPU @ 1.80GHz 8192KB)
# OS:   Red Hat Enterprise Linux Server release 7.3

read_hdl KoggeStoneAdder.v BlackCell.v GrayCell.v PgCell.v SumCell.v
read_libs typical.lib
set_attribute auto_ungroup none
elaborate
set_max_delay -from Ci -to Co  10
syn_generic
write_hdl > adder_1.v
syn_map
syn_opt
write_hdl > adder.v
report_timing
report_timing > timing.v
write_sdc > constraints.sdc
set_max_delay -from Ci -to Co  5
syn_opt
write_hdl > adder.v
write_sdc > constraints.sdc
report_timing > timing.v
set_max_delay -from Ci -to Co  1
syn_opt
write_hdl > adder.v
write_sdc > constraints.sdc
report_timing > timing.v
report_timing 
report_area
report_timing 
