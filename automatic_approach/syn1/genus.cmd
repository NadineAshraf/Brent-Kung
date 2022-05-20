# Cadence Genus(TM) Synthesis Solution, Version GENUS15.20 - 15.20-p004_1, built Nov 14 2015

# Date: Wed May 18 12:39:44 2022
# Host: berkeley (x86_64 w/Linux 3.16.0-4-amd64) (1*Intel(R) Core(TM) i7-8565U CPU @ 1.80GHz 8192KB)
# OS:   Red Hat Enterprise Linux Server release 7.3

read_hdl ../src/adder.v
read_libs typical.lib
elaborate
set_max_delay -from cin -to cout 5
syn_generic
syn_map
syn_opt
report_timing
set_max_delay -from cin -to cout 0.1
syn_opt
report_timing
report_area
write_hdl > adder.v
write_sdc
write_sdc >constraints.sdc
write_sdc > constraints.sdc
report_area
set_max_delay -from cin -to cout 2
syn_opt
report_timing
write_hdl > adder1.v
write_sdc
write_sdc > constraints1.sdc
set_max_delay -from cin -to cout 1
syn_opt
report_timing
write_hdl > adder1.v
write_sdc
write_sdc > constraints1.sdc
report_timing
report_area
