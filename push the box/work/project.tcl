set projDir "C:/Users/LENOVO/Desktop/push the box/work/planAhead"
set projName "push the box"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/LENOVO/Desktop/push the box/work/verilog/mojo_top_0.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/logic_1.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/display_2.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/reset_conditioner_3.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/button_conditioner_4.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/button_conditioner_4.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/button_conditioner_4.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/button_conditioner_4.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/button_conditioner_4.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/edge_detector_9.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/edge_detector_9.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/edge_detector_9.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/edge_detector_9.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/edge_detector_9.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/map_14.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/number_15.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/timer_16.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/animation_17.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/alu_18.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/counter_19.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/counter_20.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/pipeline_21.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/pipeline_21.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/pipeline_21.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/pipeline_21.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/pipeline_21.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/counter_26.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/counter_27.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/adder_28.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/boolean_29.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/comparator_30.v" "C:/Users/LENOVO/Desktop/push the box/work/verilog/shifter_31.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "C:/Users/LENOVO/Desktop/push\ the\ box/constraint/game.ucf" "D:/Mojo\ IDE/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
