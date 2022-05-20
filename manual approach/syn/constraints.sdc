# ####################################################################

#  Created by Genus(TM) Synthesis Solution GENUS15.20 - 15.20-p004_1 on Wed May 18 18:59:24 -0400 2022

# ####################################################################

set sdc_version 1.7

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design KoggeStoneAdder


set_max_delay 1 -from [get_ports Ci] -to [get_ports Co]
set_clock_gating_check -setup 0.0 
set_wire_load_mode "enclosed"
set_dont_use [get_lib_cells typical/RF1R1WX2]
set_dont_use [get_lib_cells typical/RF2R1WX2]
set_dont_use [get_lib_cells typical/RFRDX1]
set_dont_use [get_lib_cells typical/RFRDX2]
set_dont_use [get_lib_cells typical/RFRDX4]
set_dont_use [get_lib_cells typical/TIEHI]
set_dont_use [get_lib_cells typical/TIELO]
set_dont_use [get_lib_cells typical/TTLATXL]
