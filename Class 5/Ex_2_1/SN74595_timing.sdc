## Generated SDC file "SN74595_timing.sdc"

## Copyright (C) 2020  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and any partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details, at
## https://fpgasoftware.intel.com/eula.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

## DATE    "Tue Sep 07 20:44:40 2021"

##
## DEVICE  "EP4CE6E22C8"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {rclk_s} -period 1.000 -waveform { 0.000 0.500 } [get_registers {rclk_s}]
create_clock -name {srclk_s} -period 1.000 -waveform { 0.000 0.500 } [get_registers {srclk_s}]
create_clock -name {master_clk_i} -period 50.000 -waveform { 0.000 25.000 } [get_ports {srclk_i rclk_i}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {master_clk_i}] -rise_to [get_clocks {srclk_s}]  0.010  
set_clock_uncertainty -rise_from [get_clocks {master_clk_i}] -fall_to [get_clocks {srclk_s}]  0.010  
set_clock_uncertainty -rise_from [get_clocks {master_clk_i}] -rise_to [get_clocks {rclk_s}]  0.010  
set_clock_uncertainty -rise_from [get_clocks {master_clk_i}] -fall_to [get_clocks {rclk_s}]  0.010  
set_clock_uncertainty -fall_from [get_clocks {master_clk_i}] -rise_to [get_clocks {srclk_s}]  0.010  
set_clock_uncertainty -fall_from [get_clocks {master_clk_i}] -fall_to [get_clocks {srclk_s}]  0.010  
set_clock_uncertainty -fall_from [get_clocks {master_clk_i}] -rise_to [get_clocks {rclk_s}]  0.010  
set_clock_uncertainty -fall_from [get_clocks {master_clk_i}] -fall_to [get_clocks {rclk_s}]  0.010  
set_clock_uncertainty -rise_from [get_clocks {srclk_s}] -rise_to [get_clocks {srclk_s}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {srclk_s}] -fall_to [get_clocks {srclk_s}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {srclk_s}] -rise_to [get_clocks {rclk_s}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {srclk_s}] -fall_to [get_clocks {rclk_s}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {srclk_s}] -rise_to [get_clocks {srclk_s}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {srclk_s}] -fall_to [get_clocks {srclk_s}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {srclk_s}] -rise_to [get_clocks {rclk_s}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {srclk_s}] -fall_to [get_clocks {rclk_s}]  0.020  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

