
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name P2_BlinkerSCH -dir "/home/hendri/Documents/workspaceXilinxBasys2/P2_BlinkerSCH/planAhead_run_3" -part xc3s250ecp132-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/hendri/Documents/workspaceXilinxBasys2/P2_BlinkerSCH/Blinker.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/hendri/Documents/workspaceXilinxBasys2/P2_BlinkerSCH} {ipcore_dir} }
add_files [list {ipcore_dir/counter.ncf}] -fileset [get_property constrset [current_run]]
set_param project.pinAheadLayout  yes
set_property target_constrs_file "pinout.ucf" [current_fileset -constrset]
add_files [list {pinout.ucf}] -fileset [get_property constrset [current_run]]
link_design
