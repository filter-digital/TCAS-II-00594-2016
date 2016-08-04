#**************************************************************
# Time Information
#**************************************************************
set_time_format -unit ns -decimal_places 3

#**************************************************************
# Create Clock
#**************************************************************
create_clock -name {sysclk} -period 2.500 -waveform { 0.000 1.250 } [get_ports {sysclk}]

#**************************************************************
# Set Clock Uncertainty
#**************************************************************
derive_clock_uncertainty

#**************************************************************
# Set Output Delay
#**************************************************************
## dont care about timing of output signals
##set_output_delay -add_delay -clock [get_clocks {sysclk}]  0.000 [get_ports {fpga_awake}]


