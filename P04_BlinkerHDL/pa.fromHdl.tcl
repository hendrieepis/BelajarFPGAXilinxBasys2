
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name blinkerHDL -dir "/home/hendri/Documents/workspaceXilinxBasys2/blinkerHDL/planAhead_run_4" -part xc3s250ecp132-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "blink.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {blink.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top blink $srcset
add_files [list {blink.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s250ecp132-4
