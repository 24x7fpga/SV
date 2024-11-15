puts "Run Simulation TCL!"
# run_simulation.tcl

# Check if the correct number of arguments are passed
if { [llength $argv] != 2 } {
    puts "Usage: vivado -mode batch -source sv_cstrs.tcl -tclargs <project_name> <project_location>"
    exit 1
}

# Get the project name and location from the arguments
set project_name [lindex $argv 0]
set project_location [lindex $argv 1]

# Print the received arguments
puts "Project Name: $project_name"
puts "Project Location: $project_location"

# Create a new Vivado project
create_project $project_name $project_location/verif -part xc7z020clg400-1 -force

# Add Source files
add_files [glob $project_location/*.sv]
#add_files [glob $project_location/../../testbench.sv]

set_property top tb_$project_name [get_filesets sim_1]
set_property top_lib xil_defaultlib [get_filesets sim_1]

# default simulation runtime is removed; by default it is set to 1000ns
set_property -name {xsim.simulate.runtime} -value {} -objects [get_filesets sim_1]

# Start Simulation
launch_simulation
# rull all
run all
