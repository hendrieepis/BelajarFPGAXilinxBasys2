
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name singleSevenSegment -dir "/home/hendri/Documents/workspaceXilinxBasys2/singleSevenSegment/planAhead_run_1" -part xc3s250ecp132-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/hendri/Documents/workspaceXilinxBasys2/singleSevenSegment/sevenSegment.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/hendri/Documents/workspaceXilinxBasys2/singleSevenSegment} }
set_property target_constrs_file "pinout.ucf" [current_fileset -constrset]
add_files [list {pinout.ucf}] -fileset [get_property constrset [current_run]]
link_design
