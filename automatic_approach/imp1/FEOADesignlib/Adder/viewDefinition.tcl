create_library_set -name fast\
   -timing\
    [list fast.lib]
create_library_set -name slow\
   -timing\
    [list slow.lib]
create_library_set -name typical\
   -timing\
    [list typical.lib]
create_rc_corner -name default_rc_corner\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0
create_delay_corner -name fast\
   -library_set fast
create_delay_corner -name slow\
   -library_set slow
create_delay_corner -name typical\
   -library_set typical
create_constraint_mode -name constraints1\
   -sdc_files\
    [list ../syn1/constraints1.sdc]
create_analysis_view -name typical -constraint_mode constraints1 -delay_corner typical
set_analysis_view -setup [list typical] -hold [list typical]
