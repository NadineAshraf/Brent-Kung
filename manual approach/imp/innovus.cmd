#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed May 18 19:11:27 2022                
#                                                     
#######################################################

#@(#)CDS: Innovus v15.20-p005_1 (64bit) 11/11/2015 11:16 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 15.20-p005_1 NR151028-1715/15_20-UB (database version 2.30, 298.6.1) {superthreading v1.26}
#@(#)CDS: AAE 15.20-p002 (64bit) 11/11/2015 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 15.20-p001_1 () Oct 29 2015 01:50:39 ( )
#@(#)CDS: SYNTECH 15.20-b002_1 () Oct 20 2015 02:35:29 ( )
#@(#)CDS: CPE v15.20-p002
#@(#)CDS: IQRC/TQRC 15.1.2-s269 (64bit) Mon Aug 24 18:22:18 PDT 2015 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getDrawView
loadWorkspace -name Physical
win
set init_gnd_net GND!
set init_abstract_view abstract
set init_verilog ../syn/adder.v
set init_mmmc_file Default.view
set init_layout_view layout
set init_oa_ref_lib {tsmc18 tsmc18rf}
set init_pwr_net VDD!
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -coreMarginsBy die -site tsm3site -s 60 60 10 10 10 10
uiSetTool select
getIoFlowFlag
fit
set sprCreateIeRingNets {}
set sprCreateIeRingLayers {}
set sprCreateIeRingWidth 1.0
set sprCreateIeRingSpacing 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
addRing -skip_via_on_wire_shape Noshape -skip_via_on_pin Standardcell -center 1 -stacked_via_top_layer METAL6 -type core_rings -jog_distance 1.5 -threshold 1.5 -nets {VDD! GND!} -follow core -stacked_via_bottom_layer METAL1 -layer {bottom METAL1 top METAL1 right METAL2 left METAL2} -width 0.44 -spacing 0.46 -offset 1.5
setViaGenMode -symmetrical_via_only true
setViaGenMode -parameterized_via_only true
editPushUndo
addRing -skip_via_on_wire_shape Noshape -skip_via_on_pin Standardcell -center 1 -stacked_via_top_layer METAL6 -type core_rings -jog_distance 1.5 -threshold 1.5 -nets {VDD! GND!} -follow core -stacked_via_bottom_layer METAL1 -layer {bottom METAL1 top METAL1 right METAL2 left METAL2} -width 0.44 -spacing 0.46 -offset 1.5
set sprCreateIeStripeNets {}
set sprCreateIeStripeLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeSpacing 2.0
set sprCreateIeStripeThreshold 1.0
addStripe -skip_via_on_wire_shape Noshape -block_ring_top_layer_limit METAL3 -max_same_layer_jog_length 0.88 -padcore_ring_bottom_layer_limit METAL1 -number_of_sets 5 -skip_via_on_pin Standardcell -stacked_via_top_layer METAL6 -padcore_ring_top_layer_limit METAL3 -spacing 0.46 -merge_stripes_value 1.5 -layer METAL2 -block_ring_bottom_layer_limit METAL1 -width 0.44 -nets {VDD! GND!} -stacked_via_bottom_layer METAL1
editPushUndo
addStripe -skip_via_on_wire_shape Noshape -block_ring_top_layer_limit METAL2 -max_same_layer_jog_length 0.88 -padcore_ring_bottom_layer_limit METAL1 -number_of_sets 5 -skip_via_on_pin Standardcell -stacked_via_top_layer METAL6 -padcore_ring_top_layer_limit METAL2 -spacing 0.46 -merge_stripes_value 1.5 -direction horizontal -layer METAL1 -block_ring_bottom_layer_limit METAL1 -width 0.44 -nets {VDD! GND!} -stacked_via_bottom_layer METAL1
editPushUndo
addStripe -skip_via_on_wire_shape Noshape -block_ring_top_layer_limit METAL2 -max_same_layer_jog_length 0.88 -padcore_ring_bottom_layer_limit METAL1 -number_of_sets 5 -skip_via_on_pin Standardcell -stacked_via_top_layer METAL6 -padcore_ring_top_layer_limit METAL2 -spacing 0.46 -merge_stripes_value 1.5 -direction horizontal -layer METAL1 -block_ring_bottom_layer_limit METAL1 -width 0.44 -nets {VDD! GND!} -stacked_via_bottom_layer METAL1
setPlaceMode -fp false
placeDesign
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
set_analysis_view -setup {typical} -hold {typical}
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix KoggeStoneAdder_postRoute -outDir timingReports
setAnalysisMode -analysisType onChipVariation
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix KoggeStoneAdder_postRoute -outDir timingReports
report_timing
save_global KoggeStoneAdder.globals
init_design
saveFPlan KoggeStoneAdder.fp
savePlace KoggeStoneAdder.place.gz
saveIoFile -locations KoggeStoneAdder.save.io
saveDesign KoggeStoneAdder
fit
