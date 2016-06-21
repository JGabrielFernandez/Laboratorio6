## Generated SDC file "Laboratorio6.out.sdc"

## Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, the Altera Quartus Prime License Agreement,
## the Altera MegaCore Function License Agreement, or other 
## applicable license agreement, including, without limitation, 
## that your use is for the sole purpose of programming logic 
## devices manufactured by Altera and sold by Altera or its 
## authorized distributors.  Please refer to the applicable 
## agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

## DATE    "Tue Jun 14 01:53:31 2016"

##
## DEVICE  "EP4CE115F29C7"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {CLK} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLK}]


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {PLL1|altpll_component|auto_generated|pll1|clk[0]} -source [get_pins {PLL1|altpll_component|auto_generated|pll1|inclk[0]}] -duty_cycle 50.000 -multiply_by 20 -master_clock {CLK} [get_pins {PLL1|altpll_component|auto_generated|pll1|clk[0]}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {PLL1|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {PLL1|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {PLL1|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {PLL1|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {PLL1|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {CLK}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {PLL1|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {CLK}] -hold 0.070  
set_clock_uncertainty -rise_from [get_clocks {PLL1|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {CLK}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {PLL1|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {CLK}] -hold 0.070  
set_clock_uncertainty -fall_from [get_clocks {PLL1|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {PLL1|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {PLL1|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {PLL1|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {PLL1|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {CLK}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {PLL1|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {CLK}] -hold 0.070  
set_clock_uncertainty -fall_from [get_clocks {PLL1|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {CLK}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {PLL1|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {CLK}] -hold 0.070  
set_clock_uncertainty -rise_from [get_clocks {CLK}] -rise_to [get_clocks {CLK}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {CLK}] -fall_to [get_clocks {CLK}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {CLK}] -rise_to [get_clocks {CLK}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {CLK}] -fall_to [get_clocks {CLK}]  0.020  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay -fall -max -clock [get_clocks {PLL1|altpll_component|auto_generated|pll1|clk[0]}]  0.500 [get_ports {CE}]
set_output_delay -add_delay -fall -max -clock [get_clocks {PLL1|altpll_component|auto_generated|pll1|clk[0]}]  0.500 [get_ports {OE}]
set_output_delay -add_delay -fall -max -clock [get_clocks {PLL1|altpll_component|auto_generated|pll1|clk[0]}]  0.500 [get_ports {RDWR}]
set_output_delay -add_delay -fall -max -clock [get_clocks {PLL1|altpll_component|auto_generated|pll1|clk[0]}]  0.500 [get_ports {WE}]


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

