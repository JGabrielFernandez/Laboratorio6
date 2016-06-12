-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "06/12/2016 19:04:42"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Laboratorio6 IS
    PORT (
	RESET : IN std_logic;
	CLK : IN std_logic;
	BOTONES : IN std_logic_vector(2 DOWNTO 0);
	LED_WRITE : BUFFER std_logic;
	LED_READ : BUFFER std_logic;
	LED_ERROR : BUFFER std_logic;
	WE : BUFFER std_logic;
	RDWR : BUFFER std_logic;
	CE : BUFFER std_logic;
	OE : BUFFER std_logic;
	LB : BUFFER std_logic;
	UB : BUFFER std_logic;
	DATA_BUS : BUFFER std_logic_vector(15 DOWNTO 0);
	ADDRESS : BUFFER std_logic_vector(19 DOWNTO 0);
	DISP0 : BUFFER std_logic_vector(6 DOWNTO 0);
	DISP1 : BUFFER std_logic_vector(6 DOWNTO 0);
	DISP2 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Laboratorio6;

-- Design Ports Information
-- LED_WRITE	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_READ	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_ERROR	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WE	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDWR	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CE	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OE	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LB	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UB	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[0]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[1]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[2]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[3]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[4]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[5]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[6]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[7]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[8]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[9]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[10]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[11]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[12]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[13]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[14]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[15]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[16]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[17]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[18]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[19]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP0[0]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP0[1]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP0[2]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP0[3]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP0[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP0[5]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP0[6]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP1[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP1[1]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP1[2]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP1[3]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP1[4]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP1[5]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP1[6]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP2[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP2[1]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP2[2]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP2[3]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP2[4]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP2[5]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP2[6]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[0]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[1]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[2]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[3]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[4]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[5]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[6]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[7]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[8]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[9]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[10]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[11]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[12]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[13]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[14]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[15]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTONES[0]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTONES[1]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTONES[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Laboratorio6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_BOTONES : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LED_WRITE : std_logic;
SIGNAL ww_LED_READ : std_logic;
SIGNAL ww_LED_ERROR : std_logic;
SIGNAL ww_WE : std_logic;
SIGNAL ww_RDWR : std_logic;
SIGNAL ww_CE : std_logic;
SIGNAL ww_OE : std_logic;
SIGNAL ww_LB : std_logic;
SIGNAL ww_UB : std_logic;
SIGNAL ww_DATA_BUS : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ADDRESS : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_DISP0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DISP1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DISP2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gral_FSM|Selector46~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DATA_BUS[0]~output_o\ : std_logic;
SIGNAL \DATA_BUS[1]~output_o\ : std_logic;
SIGNAL \DATA_BUS[2]~output_o\ : std_logic;
SIGNAL \DATA_BUS[3]~output_o\ : std_logic;
SIGNAL \DATA_BUS[4]~output_o\ : std_logic;
SIGNAL \DATA_BUS[5]~output_o\ : std_logic;
SIGNAL \DATA_BUS[6]~output_o\ : std_logic;
SIGNAL \DATA_BUS[7]~output_o\ : std_logic;
SIGNAL \DATA_BUS[8]~output_o\ : std_logic;
SIGNAL \DATA_BUS[9]~output_o\ : std_logic;
SIGNAL \DATA_BUS[10]~output_o\ : std_logic;
SIGNAL \DATA_BUS[11]~output_o\ : std_logic;
SIGNAL \DATA_BUS[12]~output_o\ : std_logic;
SIGNAL \DATA_BUS[13]~output_o\ : std_logic;
SIGNAL \DATA_BUS[14]~output_o\ : std_logic;
SIGNAL \DATA_BUS[15]~output_o\ : std_logic;
SIGNAL \LED_WRITE~output_o\ : std_logic;
SIGNAL \LED_READ~output_o\ : std_logic;
SIGNAL \LED_ERROR~output_o\ : std_logic;
SIGNAL \WE~output_o\ : std_logic;
SIGNAL \RDWR~output_o\ : std_logic;
SIGNAL \CE~output_o\ : std_logic;
SIGNAL \OE~output_o\ : std_logic;
SIGNAL \LB~output_o\ : std_logic;
SIGNAL \UB~output_o\ : std_logic;
SIGNAL \ADDRESS[0]~output_o\ : std_logic;
SIGNAL \ADDRESS[1]~output_o\ : std_logic;
SIGNAL \ADDRESS[2]~output_o\ : std_logic;
SIGNAL \ADDRESS[3]~output_o\ : std_logic;
SIGNAL \ADDRESS[4]~output_o\ : std_logic;
SIGNAL \ADDRESS[5]~output_o\ : std_logic;
SIGNAL \ADDRESS[6]~output_o\ : std_logic;
SIGNAL \ADDRESS[7]~output_o\ : std_logic;
SIGNAL \ADDRESS[8]~output_o\ : std_logic;
SIGNAL \ADDRESS[9]~output_o\ : std_logic;
SIGNAL \ADDRESS[10]~output_o\ : std_logic;
SIGNAL \ADDRESS[11]~output_o\ : std_logic;
SIGNAL \ADDRESS[12]~output_o\ : std_logic;
SIGNAL \ADDRESS[13]~output_o\ : std_logic;
SIGNAL \ADDRESS[14]~output_o\ : std_logic;
SIGNAL \ADDRESS[15]~output_o\ : std_logic;
SIGNAL \ADDRESS[16]~output_o\ : std_logic;
SIGNAL \ADDRESS[17]~output_o\ : std_logic;
SIGNAL \ADDRESS[18]~output_o\ : std_logic;
SIGNAL \ADDRESS[19]~output_o\ : std_logic;
SIGNAL \DISP0[0]~output_o\ : std_logic;
SIGNAL \DISP0[1]~output_o\ : std_logic;
SIGNAL \DISP0[2]~output_o\ : std_logic;
SIGNAL \DISP0[3]~output_o\ : std_logic;
SIGNAL \DISP0[4]~output_o\ : std_logic;
SIGNAL \DISP0[5]~output_o\ : std_logic;
SIGNAL \DISP0[6]~output_o\ : std_logic;
SIGNAL \DISP1[0]~output_o\ : std_logic;
SIGNAL \DISP1[1]~output_o\ : std_logic;
SIGNAL \DISP1[2]~output_o\ : std_logic;
SIGNAL \DISP1[3]~output_o\ : std_logic;
SIGNAL \DISP1[4]~output_o\ : std_logic;
SIGNAL \DISP1[5]~output_o\ : std_logic;
SIGNAL \DISP1[6]~output_o\ : std_logic;
SIGNAL \DISP2[0]~output_o\ : std_logic;
SIGNAL \DISP2[1]~output_o\ : std_logic;
SIGNAL \DISP2[2]~output_o\ : std_logic;
SIGNAL \DISP2[3]~output_o\ : std_logic;
SIGNAL \DISP2[4]~output_o\ : std_logic;
SIGNAL \DISP2[5]~output_o\ : std_logic;
SIGNAL \DISP2[6]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Gral_FSM|direccion[0]~20_combout\ : std_logic;
SIGNAL \BOTONES[1]~input_o\ : std_logic;
SIGNAL \RISING_BTS:1:BT|Q~feeder_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[0]~21\ : std_logic;
SIGNAL \Gral_FSM|direccion[1]~22_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector18~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \Gral_FSM|direccion[1]~23\ : std_logic;
SIGNAL \Gral_FSM|direccion[2]~24_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector17~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[2]~25\ : std_logic;
SIGNAL \Gral_FSM|direccion[3]~26_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector16~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[3]~27\ : std_logic;
SIGNAL \Gral_FSM|direccion[4]~28_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector15~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[4]~29\ : std_logic;
SIGNAL \Gral_FSM|direccion[5]~30_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector14~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[5]~31\ : std_logic;
SIGNAL \Gral_FSM|direccion[6]~32_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector13~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[6]~33\ : std_logic;
SIGNAL \Gral_FSM|direccion[7]~34_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector12~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[7]~35\ : std_logic;
SIGNAL \Gral_FSM|direccion[8]~36_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector11~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[8]~37\ : std_logic;
SIGNAL \Gral_FSM|direccion[9]~38_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector10~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[9]~39\ : std_logic;
SIGNAL \Gral_FSM|direccion[10]~40_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[10]~feeder_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector9~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[10]~41\ : std_logic;
SIGNAL \Gral_FSM|direccion[11]~42_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector8~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[11]~43\ : std_logic;
SIGNAL \Gral_FSM|direccion[12]~44_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector7~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[12]~45\ : std_logic;
SIGNAL \Gral_FSM|direccion[13]~46_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[13]~feeder_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector6~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[13]~47\ : std_logic;
SIGNAL \Gral_FSM|direccion[14]~48_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector5~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[14]~49\ : std_logic;
SIGNAL \Gral_FSM|direccion[15]~50_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector4~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[15]~51\ : std_logic;
SIGNAL \Gral_FSM|direccion[16]~52_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector3~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[16]~53\ : std_logic;
SIGNAL \Gral_FSM|direccion[17]~54_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector2~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[17]~55\ : std_logic;
SIGNAL \Gral_FSM|direccion[18]~56_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector1~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[18]~57\ : std_logic;
SIGNAL \Gral_FSM|direccion[19]~58_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector0~0_combout\ : std_logic;
SIGNAL \Gral_FSM|Equal2~0_combout\ : std_logic;
SIGNAL \BOTONES[0]~input_o\ : std_logic;
SIGNAL \RISING_BTS:0:BT|Q~feeder_combout\ : std_logic;
SIGNAL \RISING_BTS:0:BT|Q~q\ : std_logic;
SIGNAL \BOTONES[2]~input_o\ : std_logic;
SIGNAL \RISING_BTS:2:BT|Q~feeder_combout\ : std_logic;
SIGNAL \RISING_BTS:2:BT|Q~q\ : std_logic;
SIGNAL \Gral_FSM|Selector44~0_combout\ : std_logic;
SIGNAL \Gral_FSM|WideOr19~0_combout\ : std_logic;
SIGNAL \LFSR|LFSR:2:i32:bit32|Q~feeder_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector37~0_combout\ : std_logic;
SIGNAL \Gral_FSM|next_state.INITRD_776~combout\ : std_logic;
SIGNAL \Gral_FSM|current_state.INITRD~q\ : std_logic;
SIGNAL \Gral_FSM|LOADDIR~0_combout\ : std_logic;
SIGNAL \Gral_FSM|LOADDIR~q\ : std_logic;
SIGNAL \Gral_FSM|Equal2~3_combout\ : std_logic;
SIGNAL \Gral_FSM|Equal2~4_combout\ : std_logic;
SIGNAL \Gral_FSM|Equal2~2_combout\ : std_logic;
SIGNAL \Gral_FSM|Equal2~1_combout\ : std_logic;
SIGNAL \Gral_FSM|Equal2~5_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector28~0_combout\ : std_logic;
SIGNAL \Gral_FSM|next_state.BLINK_LED_721~combout\ : std_logic;
SIGNAL \Gral_FSM|current_state.BLINK_LED~feeder_combout\ : std_logic;
SIGNAL \Gral_FSM|current_state.BLINK_LED~q\ : std_logic;
SIGNAL \Gral_FSM|Selector21~0_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector25~0_combout\ : std_logic;
SIGNAL \Gral_FSM|EN_LFSR~q\ : std_logic;
SIGNAL \LFSR|LFSR:0:i0:bit0|Q~2_combout\ : std_logic;
SIGNAL \LFSR|LFSR:2:i32:bit32|Q~q\ : std_logic;
SIGNAL \LFSR|LFSR:3:i32:bit32|Q~feeder_combout\ : std_logic;
SIGNAL \LFSR|LFSR:3:i32:bit32|Q~q\ : std_logic;
SIGNAL \LFSR|LFSR:4:i32:bit32|Q~feeder_combout\ : std_logic;
SIGNAL \LFSR|LFSR:4:i32:bit32|Q~q\ : std_logic;
SIGNAL \LFSR|LFSR:5:i32:bit32|Q~feeder_combout\ : std_logic;
SIGNAL \LFSR|LFSR:5:i32:bit32|Q~q\ : std_logic;
SIGNAL \LFSR|LFSR:6:i32:bit32|Q~feeder_combout\ : std_logic;
SIGNAL \LFSR|LFSR:6:i32:bit32|Q~q\ : std_logic;
SIGNAL \LFSR|LFSR:7:i32:bit32|Q~feeder_combout\ : std_logic;
SIGNAL \LFSR|LFSR:7:i32:bit32|Q~q\ : std_logic;
SIGNAL \LFSR|LFSR:8:i32:bit32|Q~feeder_combout\ : std_logic;
SIGNAL \LFSR|LFSR:8:i32:bit32|Q~q\ : std_logic;
SIGNAL \LFSR|LFSR:9:i32:bit32|Q~feeder_combout\ : std_logic;
SIGNAL \LFSR|LFSR:9:i32:bit32|Q~q\ : std_logic;
SIGNAL \LFSR|LFSR:10:i32:bit32|Q~q\ : std_logic;
SIGNAL \LFSR|LFSR:11:i32:bit32|Q~q\ : std_logic;
SIGNAL \LFSR|LFSR:0:i0:bit0|Q~0_combout\ : std_logic;
SIGNAL \LFSR|LFSR:0:i0:bit0|Q~1_combout\ : std_logic;
SIGNAL \LFSR|LFSR:0:i0:bit0|Q~q\ : std_logic;
SIGNAL \LFSR|LFSR:1:i32:bit32|Q~feeder_combout\ : std_logic;
SIGNAL \LFSR|LFSR:1:i32:bit32|Q~q\ : std_logic;
SIGNAL \Gral_FSM|Selector39~3_combout\ : std_logic;
SIGNAL \Gral_FSM|next_state.PRENDERLED_787~combout\ : std_logic;
SIGNAL \Gral_FSM|current_state.PRENDERLED~q\ : std_logic;
SIGNAL \Gral_FSM|WideOr19~combout\ : std_logic;
SIGNAL \Gral_FSM|ADDR_SEL~q\ : std_logic;
SIGNAL \REG_ADDR:1:MUX_ADDR|Mux0~0_combout\ : std_logic;
SIGNAL \REG_ADDR:2:MUX_ADDR|Mux0~0_combout\ : std_logic;
SIGNAL \REG_ADDR:3:MUX_ADDR|Mux0~0_combout\ : std_logic;
SIGNAL \REG_ADDR:4:MUX_ADDR|Mux0~0_combout\ : std_logic;
SIGNAL \REG_ADDR:5:MUX_ADDR|Mux0~0_combout\ : std_logic;
SIGNAL \REG_ADDR:6:MUX_ADDR|Mux0~0_combout\ : std_logic;
SIGNAL \REG_ADDR:7:MUX_ADDR|Mux0~0_combout\ : std_logic;
SIGNAL \REG_ADDR:8:MUX_ADDR|Mux0~0_combout\ : std_logic;
SIGNAL \REG_ADDR:9:MUX_ADDR|Mux0~0_combout\ : std_logic;
SIGNAL \REG_ADDR:10:MUX_ADDR|Mux0~0_combout\ : std_logic;
SIGNAL \REG_ADDR:11:MUX_ADDR|Mux0~0_combout\ : std_logic;
SIGNAL \DATA_BUS[12]~input_o\ : std_logic;
SIGNAL \DATA_BUS[13]~input_o\ : std_logic;
SIGNAL \COMP|Equal0~7_combout\ : std_logic;
SIGNAL \DATA_BUS[14]~input_o\ : std_logic;
SIGNAL \DATA_BUS[15]~input_o\ : std_logic;
SIGNAL \COMP|Equal0~8_combout\ : std_logic;
SIGNAL \DATA_BUS[11]~input_o\ : std_logic;
SIGNAL \DATA_BUS[10]~input_o\ : std_logic;
SIGNAL \COMP|Equal0~6_combout\ : std_logic;
SIGNAL \DATA_BUS[8]~input_o\ : std_logic;
SIGNAL \DATA_BUS[9]~input_o\ : std_logic;
SIGNAL \COMP|Equal0~5_combout\ : std_logic;
SIGNAL \COMP|Equal0~9_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector30~0_combout\ : std_logic;
SIGNAL \DATA_BUS[2]~input_o\ : std_logic;
SIGNAL \DATA_BUS[3]~input_o\ : std_logic;
SIGNAL \COMP|Equal0~1_combout\ : std_logic;
SIGNAL \DATA_BUS[7]~input_o\ : std_logic;
SIGNAL \DATA_BUS[6]~input_o\ : std_logic;
SIGNAL \COMP|Equal0~3_combout\ : std_logic;
SIGNAL \DATA_BUS[1]~input_o\ : std_logic;
SIGNAL \DATA_BUS[0]~input_o\ : std_logic;
SIGNAL \COMP|Equal0~0_combout\ : std_logic;
SIGNAL \DATA_BUS[5]~input_o\ : std_logic;
SIGNAL \DATA_BUS[4]~input_o\ : std_logic;
SIGNAL \COMP|Equal0~2_combout\ : std_logic;
SIGNAL \COMP|Equal0~4_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector30~1_combout\ : std_logic;
SIGNAL \Gral_FSM|next_state.ERROR_DATO_732~combout\ : std_logic;
SIGNAL \Gral_FSM|current_state.ERROR_DATO~q\ : std_logic;
SIGNAL \Gral_FSM|Selector32~0_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector32~1_combout\ : std_logic;
SIGNAL \Gral_FSM|next_state.FINRD_743~combout\ : std_logic;
SIGNAL \Gral_FSM|current_state.FINRD~q\ : std_logic;
SIGNAL \Gral_FSM|Selector35~0_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector35~1_combout\ : std_logic;
SIGNAL \Gral_FSM|next_state.ESPERARD_765~combout\ : std_logic;
SIGNAL \Gral_FSM|current_state.ESPERARD~q\ : std_logic;
SIGNAL \Gral_FSM|Selector33~0_combout\ : std_logic;
SIGNAL \Gral_FSM|next_state.COMPARE_754~combout\ : std_logic;
SIGNAL \Gral_FSM|current_state.COMPARE~q\ : std_logic;
SIGNAL \Gral_FSM|WideOr11~0_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector21~1_combout\ : std_logic;
SIGNAL \Gral_FSM|ENRD_WR~q\ : std_logic;
SIGNAL \Gral_FSM|Selector22~0_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector22~1_combout\ : std_logic;
SIGNAL \Gral_FSM|Ext_ready~q\ : std_logic;
SIGNAL \Gral_FSM|Selector20~0_combout\ : std_logic;
SIGNAL \Gral_FSM|RD_WR~q\ : std_logic;
SIGNAL \RAM_FSM|Selector9~0_combout\ : std_logic;
SIGNAL \RAM_FSM|Selector8~0_combout\ : std_logic;
SIGNAL \RAM_FSM|Add0~0_combout\ : std_logic;
SIGNAL \RAM_FSM|Selector6~0_combout\ : std_logic;
SIGNAL \RAM_FSM|Selector5~0_combout\ : std_logic;
SIGNAL \RAM_FSM|Selector5~1_combout\ : std_logic;
SIGNAL \RAM_FSM|current_state.WAIT_WR~q\ : std_logic;
SIGNAL \RAM_FSM|contador[0]~0_combout\ : std_logic;
SIGNAL \RAM_FSM|Selector7~0_combout\ : std_logic;
SIGNAL \RAM_FSM|Equal1~0_combout\ : std_logic;
SIGNAL \RAM_FSM|Selector1~0_combout\ : std_logic;
SIGNAL \RAM_FSM|current_state.INIT_RD~q\ : std_logic;
SIGNAL \RAM_FSM|Selector3~0_combout\ : std_logic;
SIGNAL \RAM_FSM|current_state.END_RD~q\ : std_logic;
SIGNAL \RAM_FSM|Selector0~0_combout\ : std_logic;
SIGNAL \RAM_FSM|Selector4~0_combout\ : std_logic;
SIGNAL \RAM_FSM|current_state.END_WR~q\ : std_logic;
SIGNAL \RAM_FSM|Selector0~1_combout\ : std_logic;
SIGNAL \RAM_FSM|current_state.IDLE~q\ : std_logic;
SIGNAL \RAM_FSM|Selector2~0_combout\ : std_logic;
SIGNAL \RAM_FSM|Selector2~1_combout\ : std_logic;
SIGNAL \RAM_FSM|current_state.INIT_WR~q\ : std_logic;
SIGNAL \RAM_FSM|WideOr7~combout\ : std_logic;
SIGNAL \RAM_FSM|Ready~q\ : std_logic;
SIGNAL \Gral_FSM|Selector42~0_combout\ : std_logic;
SIGNAL \Gral_FSM|next_state.ESPERAWR_809~combout\ : std_logic;
SIGNAL \Gral_FSM|current_state.ESPERAWR~q\ : std_logic;
SIGNAL \Gral_FSM|Selector41~0_combout\ : std_logic;
SIGNAL \Gral_FSM|next_state.LOADDATA_798~combout\ : std_logic;
SIGNAL \Gral_FSM|current_state.LOADDATA~q\ : std_logic;
SIGNAL \Gral_FSM|Selector39~2_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector44~1_combout\ : std_logic;
SIGNAL \Gral_FSM|next_state.INITWR_820~combout\ : std_logic;
SIGNAL \Gral_FSM|current_state.INITWR~q\ : std_logic;
SIGNAL \Gral_FSM|Selector24~1_combout\ : std_logic;
SIGNAL \Gral_FSM|SetBotones~feeder_combout\ : std_logic;
SIGNAL \Gral_FSM|SetBotones~q\ : std_logic;
SIGNAL \RISING_BTS:1:BT|Q~q\ : std_logic;
SIGNAL \Gral_FSM|Selector46~0_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector46~0clkctrl_outclk\ : std_logic;
SIGNAL \Gral_FSM|next_state~2_combout\ : std_logic;
SIGNAL \Gral_FSM|next_state.IDLE_831~combout\ : std_logic;
SIGNAL \Gral_FSM|current_state.IDLE~0_combout\ : std_logic;
SIGNAL \Gral_FSM|current_state.IDLE~q\ : std_logic;
SIGNAL \Gral_FSM|Selector19~0_combout\ : std_logic;
SIGNAL \REG_ADDR:0:MUX_ADDR|Mux0~0_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector23~0_combout\ : std_logic;
SIGNAL \Gral_FSM|LED_FinWR~q\ : std_logic;
SIGNAL \Gen1HZ|Add0~0_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~1\ : std_logic;
SIGNAL \Gen1HZ|Add0~2_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~3\ : std_logic;
SIGNAL \Gen1HZ|Add0~4_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~5\ : std_logic;
SIGNAL \Gen1HZ|Add0~6_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~7\ : std_logic;
SIGNAL \Gen1HZ|Add0~8_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~9\ : std_logic;
SIGNAL \Gen1HZ|Add0~10_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~11\ : std_logic;
SIGNAL \Gen1HZ|Add0~12_combout\ : std_logic;
SIGNAL \Gen1HZ|count~7_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~13\ : std_logic;
SIGNAL \Gen1HZ|Add0~14_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~15\ : std_logic;
SIGNAL \Gen1HZ|Add0~16_combout\ : std_logic;
SIGNAL \Gen1HZ|count~6_combout\ : std_logic;
SIGNAL \Gen1HZ|Equal0~6_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~17\ : std_logic;
SIGNAL \Gen1HZ|Add0~18_combout\ : std_logic;
SIGNAL \Gen1HZ|count~5_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~19\ : std_logic;
SIGNAL \Gen1HZ|Add0~20_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~21\ : std_logic;
SIGNAL \Gen1HZ|Add0~22_combout\ : std_logic;
SIGNAL \Gen1HZ|count~4_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~23\ : std_logic;
SIGNAL \Gen1HZ|Add0~24_combout\ : std_logic;
SIGNAL \Gen1HZ|Equal0~5_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~25\ : std_logic;
SIGNAL \Gen1HZ|Add0~26_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~27\ : std_logic;
SIGNAL \Gen1HZ|Add0~28_combout\ : std_logic;
SIGNAL \Gen1HZ|count~3_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~29\ : std_logic;
SIGNAL \Gen1HZ|Add0~30_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~31\ : std_logic;
SIGNAL \Gen1HZ|Add0~32_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~33\ : std_logic;
SIGNAL \Gen1HZ|Add0~34_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~35\ : std_logic;
SIGNAL \Gen1HZ|Add0~36_combout\ : std_logic;
SIGNAL \Gen1HZ|count~2_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~37\ : std_logic;
SIGNAL \Gen1HZ|Add0~38_combout\ : std_logic;
SIGNAL \Gen1HZ|count~1_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~39\ : std_logic;
SIGNAL \Gen1HZ|Add0~40_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~41\ : std_logic;
SIGNAL \Gen1HZ|Add0~42_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~43\ : std_logic;
SIGNAL \Gen1HZ|Add0~44_combout\ : std_logic;
SIGNAL \Gen1HZ|count~0_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~45\ : std_logic;
SIGNAL \Gen1HZ|Add0~46_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~47\ : std_logic;
SIGNAL \Gen1HZ|Add0~48_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~49\ : std_logic;
SIGNAL \Gen1HZ|Add0~50_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~51\ : std_logic;
SIGNAL \Gen1HZ|Add0~52_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~53\ : std_logic;
SIGNAL \Gen1HZ|Add0~54_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~55\ : std_logic;
SIGNAL \Gen1HZ|Add0~56_combout\ : std_logic;
SIGNAL \Gen1HZ|Equal0~0_combout\ : std_logic;
SIGNAL \Gen1HZ|Equal0~2_combout\ : std_logic;
SIGNAL \Gen1HZ|Equal0~1_combout\ : std_logic;
SIGNAL \Gen1HZ|Equal0~3_combout\ : std_logic;
SIGNAL \Gen1HZ|Equal0~4_combout\ : std_logic;
SIGNAL \Gen1HZ|Equal0~7_combout\ : std_logic;
SIGNAL \Gen1HZ|Equal0~8_combout\ : std_logic;
SIGNAL \Gen1HZ|Equal0~9_combout\ : std_logic;
SIGNAL \Gen1HZ|Clk_aux~0_combout\ : std_logic;
SIGNAL \Gen1HZ|Clk_aux~q\ : std_logic;
SIGNAL \Gral_FSM|Selector24~0_combout\ : std_logic;
SIGNAL \Gral_FSM|LED_RD~q\ : std_logic;
SIGNAL \LEDRD|Q~q\ : std_logic;
SIGNAL \Gral_FSM|Selector27~0_combout\ : std_logic;
SIGNAL \Gral_FSM|EN_7Segm~q\ : std_logic;
SIGNAL \RAM_FSM|WideOr6~combout\ : std_logic;
SIGNAL \RAM_FSM|WE~q\ : std_logic;
SIGNAL \RAM_FSM|CE~feeder_combout\ : std_logic;
SIGNAL \RAM_FSM|CE~q\ : std_logic;
SIGNAL \RAM_FSM|OE~0_combout\ : std_logic;
SIGNAL \RAM_FSM|OE~q\ : std_logic;
SIGNAL \ADDR_TO_7SEG|DATAOUT[0]~feeder_combout\ : std_logic;
SIGNAL \DISP0OUT|Mux6~0_combout\ : std_logic;
SIGNAL \DISP0OUT|Mux5~0_combout\ : std_logic;
SIGNAL \DISP0OUT|Mux4~0_combout\ : std_logic;
SIGNAL \DISP0OUT|Mux3~0_combout\ : std_logic;
SIGNAL \DISP0OUT|Mux2~0_combout\ : std_logic;
SIGNAL \DISP0OUT|Mux1~0_combout\ : std_logic;
SIGNAL \DISP0OUT|Mux0~0_combout\ : std_logic;
SIGNAL \ADDR_TO_7SEG|DATAOUT[6]~feeder_combout\ : std_logic;
SIGNAL \ADDR_TO_7SEG|DATAOUT[7]~feeder_combout\ : std_logic;
SIGNAL \DISP1OUT|Mux6~0_combout\ : std_logic;
SIGNAL \DISP1OUT|Mux5~0_combout\ : std_logic;
SIGNAL \DISP1OUT|Mux4~0_combout\ : std_logic;
SIGNAL \DISP1OUT|Mux3~0_combout\ : std_logic;
SIGNAL \DISP1OUT|Mux2~0_combout\ : std_logic;
SIGNAL \DISP1OUT|Mux1~0_combout\ : std_logic;
SIGNAL \DISP1OUT|Mux0~0_combout\ : std_logic;
SIGNAL \ADDR_TO_7SEG|DATAOUT[9]~feeder_combout\ : std_logic;
SIGNAL \ADDR_TO_7SEG|DATAOUT[11]~feeder_combout\ : std_logic;
SIGNAL \ADDR_TO_7SEG|DATAOUT[10]~feeder_combout\ : std_logic;
SIGNAL \DISP2OUT|Mux6~0_combout\ : std_logic;
SIGNAL \DISP2OUT|Mux5~0_combout\ : std_logic;
SIGNAL \DISP2OUT|Mux4~0_combout\ : std_logic;
SIGNAL \DISP2OUT|Mux3~0_combout\ : std_logic;
SIGNAL \DISP2OUT|Mux2~0_combout\ : std_logic;
SIGNAL \DISP2OUT|Mux1~0_combout\ : std_logic;
SIGNAL \DISP2OUT|Mux0~0_combout\ : std_logic;
SIGNAL \RAM_FSM|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gral_FSM|direccion\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Gen1HZ|count\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \ADDR_TO_7SEG|DATAOUT\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_BOTONES[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_BOTONES[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_BOTONES[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_RESET~input_o\ : std_logic;
SIGNAL \Gral_FSM|ALT_INV_SetBotones~q\ : std_logic;
SIGNAL \LFSR|LFSR:0:i0:bit0|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \Gral_FSM|ALT_INV_LED_RD~q\ : std_logic;
SIGNAL \Gral_FSM|ALT_INV_current_state.INITWR~q\ : std_logic;
SIGNAL \DISP2OUT|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \DISP1OUT|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \DISP0OUT|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \RAM_FSM|ALT_INV_OE~q\ : std_logic;
SIGNAL \RAM_FSM|ALT_INV_CE~q\ : std_logic;
SIGNAL \RAM_FSM|ALT_INV_WE~q\ : std_logic;

BEGIN

ww_RESET <= RESET;
ww_CLK <= CLK;
ww_BOTONES <= BOTONES;
LED_WRITE <= ww_LED_WRITE;
LED_READ <= ww_LED_READ;
LED_ERROR <= ww_LED_ERROR;
WE <= ww_WE;
RDWR <= ww_RDWR;
CE <= ww_CE;
OE <= ww_OE;
LB <= ww_LB;
UB <= ww_UB;
DATA_BUS <= ww_DATA_BUS;
ADDRESS <= ww_ADDRESS;
DISP0 <= ww_DISP0;
DISP1 <= ww_DISP1;
DISP2 <= ww_DISP2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\REG_ADDR:11:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:10:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:9:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:8:MUX_ADDR|Mux0~0_combout\ & 
\REG_ADDR:7:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:6:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:5:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:4:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:3:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:2:MUX_ADDR|Mux0~0_combout\ & 
\REG_ADDR:1:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:0:MUX_ADDR|Mux0~0_combout\);

\ROM1|altsyncram_component|auto_generated|q_a\(0) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\ROM1|altsyncram_component|auto_generated|q_a\(1) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\ROM1|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\REG_ADDR:11:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:10:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:9:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:8:MUX_ADDR|Mux0~0_combout\ & 
\REG_ADDR:7:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:6:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:5:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:4:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:3:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:2:MUX_ADDR|Mux0~0_combout\ & 
\REG_ADDR:1:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:0:MUX_ADDR|Mux0~0_combout\);

\ROM1|altsyncram_component|auto_generated|q_a\(2) <= \ROM1|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\ROM1|altsyncram_component|auto_generated|q_a\(3) <= \ROM1|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\ROM1|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\REG_ADDR:11:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:10:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:9:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:8:MUX_ADDR|Mux0~0_combout\ & 
\REG_ADDR:7:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:6:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:5:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:4:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:3:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:2:MUX_ADDR|Mux0~0_combout\ & 
\REG_ADDR:1:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:0:MUX_ADDR|Mux0~0_combout\);

\ROM1|altsyncram_component|auto_generated|q_a\(4) <= \ROM1|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\ROM1|altsyncram_component|auto_generated|q_a\(5) <= \ROM1|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\ROM1|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\REG_ADDR:11:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:10:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:9:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:8:MUX_ADDR|Mux0~0_combout\ & 
\REG_ADDR:7:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:6:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:5:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:4:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:3:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:2:MUX_ADDR|Mux0~0_combout\ & 
\REG_ADDR:1:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:0:MUX_ADDR|Mux0~0_combout\);

\ROM1|altsyncram_component|auto_generated|q_a\(6) <= \ROM1|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\ROM1|altsyncram_component|auto_generated|q_a\(7) <= \ROM1|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\ROM1|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\REG_ADDR:11:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:10:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:9:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:8:MUX_ADDR|Mux0~0_combout\ & 
\REG_ADDR:7:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:6:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:5:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:4:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:3:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:2:MUX_ADDR|Mux0~0_combout\ & 
\REG_ADDR:1:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:0:MUX_ADDR|Mux0~0_combout\);

\ROM1|altsyncram_component|auto_generated|q_a\(8) <= \ROM1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\ROM1|altsyncram_component|auto_generated|q_a\(9) <= \ROM1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);

\ROM1|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\REG_ADDR:11:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:10:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:9:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:8:MUX_ADDR|Mux0~0_combout\ & 
\REG_ADDR:7:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:6:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:5:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:4:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:3:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:2:MUX_ADDR|Mux0~0_combout\ & 
\REG_ADDR:1:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:0:MUX_ADDR|Mux0~0_combout\);

\ROM1|altsyncram_component|auto_generated|q_a\(10) <= \ROM1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\ROM1|altsyncram_component|auto_generated|q_a\(11) <= \ROM1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);

\ROM1|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\REG_ADDR:11:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:10:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:9:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:8:MUX_ADDR|Mux0~0_combout\ & 
\REG_ADDR:7:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:6:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:5:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:4:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:3:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:2:MUX_ADDR|Mux0~0_combout\ & 
\REG_ADDR:1:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:0:MUX_ADDR|Mux0~0_combout\);

\ROM1|altsyncram_component|auto_generated|q_a\(12) <= \ROM1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);
\ROM1|altsyncram_component|auto_generated|q_a\(13) <= \ROM1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(1);

\ROM1|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\REG_ADDR:11:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:10:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:9:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:8:MUX_ADDR|Mux0~0_combout\ & 
\REG_ADDR:7:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:6:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:5:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:4:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:3:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:2:MUX_ADDR|Mux0~0_combout\ & 
\REG_ADDR:1:MUX_ADDR|Mux0~0_combout\ & \REG_ADDR:0:MUX_ADDR|Mux0~0_combout\);

\ROM1|altsyncram_component|auto_generated|q_a\(14) <= \ROM1|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);
\ROM1|altsyncram_component|auto_generated|q_a\(15) <= \ROM1|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(1);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\Gral_FSM|Selector46~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Gral_FSM|Selector46~0_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RESET~inputclkctrl_outclk\ <= NOT \RESET~inputclkctrl_outclk\;
\ALT_INV_BOTONES[2]~input_o\ <= NOT \BOTONES[2]~input_o\;
\ALT_INV_BOTONES[1]~input_o\ <= NOT \BOTONES[1]~input_o\;
\ALT_INV_BOTONES[0]~input_o\ <= NOT \BOTONES[0]~input_o\;
\ALT_INV_RESET~input_o\ <= NOT \RESET~input_o\;
\Gral_FSM|ALT_INV_SetBotones~q\ <= NOT \Gral_FSM|SetBotones~q\;
\LFSR|LFSR:0:i0:bit0|ALT_INV_Q~2_combout\ <= NOT \LFSR|LFSR:0:i0:bit0|Q~2_combout\;
\Gral_FSM|ALT_INV_LED_RD~q\ <= NOT \Gral_FSM|LED_RD~q\;
\Gral_FSM|ALT_INV_current_state.INITWR~q\ <= NOT \Gral_FSM|current_state.INITWR~q\;
\DISP2OUT|ALT_INV_Mux0~0_combout\ <= NOT \DISP2OUT|Mux0~0_combout\;
\DISP1OUT|ALT_INV_Mux0~0_combout\ <= NOT \DISP1OUT|Mux0~0_combout\;
\DISP0OUT|ALT_INV_Mux0~0_combout\ <= NOT \DISP0OUT|Mux0~0_combout\;
\RAM_FSM|ALT_INV_OE~q\ <= NOT \RAM_FSM|OE~q\;
\RAM_FSM|ALT_INV_CE~q\ <= NOT \RAM_FSM|CE~q\;
\RAM_FSM|ALT_INV_WE~q\ <= NOT \RAM_FSM|WE~q\;

-- Location: IOOBUF_X115_Y46_N2
\DATA_BUS[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(0),
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[0]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\DATA_BUS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(1),
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[1]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\DATA_BUS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(2),
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[2]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\DATA_BUS[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(3),
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[3]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\DATA_BUS[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(4),
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[4]~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\DATA_BUS[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(5),
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[5]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\DATA_BUS[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(6),
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[6]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\DATA_BUS[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(7),
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[7]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\DATA_BUS[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(8),
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[8]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\DATA_BUS[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(9),
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[9]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\DATA_BUS[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(10),
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[10]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\DATA_BUS[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(11),
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[11]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\DATA_BUS[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(12),
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[12]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\DATA_BUS[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(13),
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[13]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\DATA_BUS[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(14),
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[14]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\DATA_BUS[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|altsyncram_component|auto_generated|q_a\(15),
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[15]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\LED_WRITE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Gral_FSM|LED_FinWR~q\,
	devoe => ww_devoe,
	o => \LED_WRITE~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\LED_READ~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDRD|Q~q\,
	devoe => ww_devoe,
	o => \LED_READ~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\LED_ERROR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Gral_FSM|EN_7Segm~q\,
	devoe => ww_devoe,
	o => \LED_ERROR~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\WE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_FSM|ALT_INV_WE~q\,
	devoe => ww_devoe,
	o => \WE~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\RDWR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \RDWR~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\CE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_FSM|ALT_INV_CE~q\,
	devoe => ww_devoe,
	o => \CE~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\OE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_FSM|ALT_INV_OE~q\,
	devoe => ww_devoe,
	o => \OE~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\LB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LB~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\UB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UB~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\ADDRESS[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ADDR:0:MUX_ADDR|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ADDRESS[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\ADDRESS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ADDR:1:MUX_ADDR|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ADDRESS[1]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\ADDRESS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ADDR:2:MUX_ADDR|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ADDRESS[2]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\ADDRESS[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ADDR:3:MUX_ADDR|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ADDRESS[3]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\ADDRESS[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ADDR:4:MUX_ADDR|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ADDRESS[4]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\ADDRESS[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ADDR:5:MUX_ADDR|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ADDRESS[5]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\ADDRESS[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ADDR:6:MUX_ADDR|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ADDRESS[6]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\ADDRESS[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ADDR:7:MUX_ADDR|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ADDRESS[7]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\ADDRESS[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ADDR:8:MUX_ADDR|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ADDRESS[8]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\ADDRESS[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ADDR:9:MUX_ADDR|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ADDRESS[9]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\ADDRESS[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ADDR:10:MUX_ADDR|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ADDRESS[10]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\ADDRESS[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ADDR:11:MUX_ADDR|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ADDRESS[11]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\ADDRESS[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDRESS[12]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\ADDRESS[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDRESS[13]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\ADDRESS[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDRESS[14]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\ADDRESS[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDRESS[15]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\ADDRESS[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDRESS[16]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\ADDRESS[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDRESS[17]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\ADDRESS[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDRESS[18]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\ADDRESS[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDRESS[19]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\DISP0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP0OUT|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DISP0[0]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\DISP0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP0OUT|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DISP0[1]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\DISP0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP0OUT|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DISP0[2]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\DISP0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP0OUT|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DISP0[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\DISP0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP0OUT|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DISP0[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\DISP0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP0OUT|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DISP0[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\DISP0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP0OUT|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DISP0[6]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\DISP1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP1OUT|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DISP1[0]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\DISP1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP1OUT|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DISP1[1]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\DISP1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP1OUT|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DISP1[2]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\DISP1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP1OUT|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DISP1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\DISP1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP1OUT|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DISP1[4]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\DISP1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP1OUT|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DISP1[5]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\DISP1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP1OUT|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DISP1[6]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\DISP2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP2OUT|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DISP2[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\DISP2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP2OUT|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DISP2[1]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\DISP2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP2OUT|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DISP2[2]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\DISP2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP2OUT|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DISP2[3]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\DISP2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP2OUT|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DISP2[4]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\DISP2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP2OUT|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DISP2[5]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\DISP2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP2OUT|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DISP2[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X110_Y38_N12
\Gral_FSM|direccion[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|direccion[0]~20_combout\ = \Gral_FSM|direccion\(0) $ (VCC)
-- \Gral_FSM|direccion[0]~21\ = CARRY(\Gral_FSM|direccion\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(0),
	datad => VCC,
	combout => \Gral_FSM|direccion[0]~20_combout\,
	cout => \Gral_FSM|direccion[0]~21\);

-- Location: IOIBUF_X115_Y37_N1
\BOTONES[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTONES(1),
	o => \BOTONES[1]~input_o\);

-- Location: LCCOMB_X107_Y38_N6
\RISING_BTS:1:BT|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RISING_BTS:1:BT|Q~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RISING_BTS:1:BT|Q~feeder_combout\);

-- Location: LCCOMB_X110_Y38_N14
\Gral_FSM|direccion[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|direccion[1]~22_combout\ = (\Gral_FSM|direccion\(1) & (!\Gral_FSM|direccion[0]~21\)) # (!\Gral_FSM|direccion\(1) & ((\Gral_FSM|direccion[0]~21\) # (GND)))
-- \Gral_FSM|direccion[1]~23\ = CARRY((!\Gral_FSM|direccion[0]~21\) # (!\Gral_FSM|direccion\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(1),
	datad => VCC,
	cin => \Gral_FSM|direccion[0]~21\,
	combout => \Gral_FSM|direccion[1]~22_combout\,
	cout => \Gral_FSM|direccion[1]~23\);

-- Location: LCCOMB_X110_Y38_N2
\Gral_FSM|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector18~0_combout\ = (\Gral_FSM|direccion\(1) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(1),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector18~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G4
\RESET~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: FF_X110_Y38_N15
\Gral_FSM|direccion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[1]~22_combout\,
	asdata => \Gral_FSM|Selector18~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(1));

-- Location: LCCOMB_X110_Y38_N16
\Gral_FSM|direccion[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|direccion[2]~24_combout\ = (\Gral_FSM|direccion\(2) & (\Gral_FSM|direccion[1]~23\ $ (GND))) # (!\Gral_FSM|direccion\(2) & (!\Gral_FSM|direccion[1]~23\ & VCC))
-- \Gral_FSM|direccion[2]~25\ = CARRY((\Gral_FSM|direccion\(2) & !\Gral_FSM|direccion[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(2),
	datad => VCC,
	cin => \Gral_FSM|direccion[1]~23\,
	combout => \Gral_FSM|direccion[2]~24_combout\,
	cout => \Gral_FSM|direccion[2]~25\);

-- Location: LCCOMB_X109_Y38_N6
\Gral_FSM|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector17~0_combout\ = (\Gral_FSM|direccion\(2) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gral_FSM|direccion\(2),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector17~0_combout\);

-- Location: FF_X110_Y38_N17
\Gral_FSM|direccion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[2]~24_combout\,
	asdata => \Gral_FSM|Selector17~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(2));

-- Location: LCCOMB_X110_Y38_N18
\Gral_FSM|direccion[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|direccion[3]~26_combout\ = (\Gral_FSM|direccion\(3) & (!\Gral_FSM|direccion[2]~25\)) # (!\Gral_FSM|direccion\(3) & ((\Gral_FSM|direccion[2]~25\) # (GND)))
-- \Gral_FSM|direccion[3]~27\ = CARRY((!\Gral_FSM|direccion[2]~25\) # (!\Gral_FSM|direccion\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(3),
	datad => VCC,
	cin => \Gral_FSM|direccion[2]~25\,
	combout => \Gral_FSM|direccion[3]~26_combout\,
	cout => \Gral_FSM|direccion[3]~27\);

-- Location: LCCOMB_X110_Y38_N4
\Gral_FSM|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector16~0_combout\ = (\Gral_FSM|direccion\(3) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gral_FSM|direccion\(3),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector16~0_combout\);

-- Location: FF_X110_Y38_N19
\Gral_FSM|direccion[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[3]~26_combout\,
	asdata => \Gral_FSM|Selector16~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(3));

-- Location: LCCOMB_X110_Y38_N20
\Gral_FSM|direccion[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|direccion[4]~28_combout\ = (\Gral_FSM|direccion\(4) & (\Gral_FSM|direccion[3]~27\ $ (GND))) # (!\Gral_FSM|direccion\(4) & (!\Gral_FSM|direccion[3]~27\ & VCC))
-- \Gral_FSM|direccion[4]~29\ = CARRY((\Gral_FSM|direccion\(4) & !\Gral_FSM|direccion[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(4),
	datad => VCC,
	cin => \Gral_FSM|direccion[3]~27\,
	combout => \Gral_FSM|direccion[4]~28_combout\,
	cout => \Gral_FSM|direccion[4]~29\);

-- Location: LCCOMB_X110_Y38_N10
\Gral_FSM|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector15~0_combout\ = (\Gral_FSM|direccion\(4) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gral_FSM|direccion\(4),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector15~0_combout\);

-- Location: FF_X110_Y38_N21
\Gral_FSM|direccion[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[4]~28_combout\,
	asdata => \Gral_FSM|Selector15~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(4));

-- Location: LCCOMB_X110_Y38_N22
\Gral_FSM|direccion[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|direccion[5]~30_combout\ = (\Gral_FSM|direccion\(5) & (!\Gral_FSM|direccion[4]~29\)) # (!\Gral_FSM|direccion\(5) & ((\Gral_FSM|direccion[4]~29\) # (GND)))
-- \Gral_FSM|direccion[5]~31\ = CARRY((!\Gral_FSM|direccion[4]~29\) # (!\Gral_FSM|direccion\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(5),
	datad => VCC,
	cin => \Gral_FSM|direccion[4]~29\,
	combout => \Gral_FSM|direccion[5]~30_combout\,
	cout => \Gral_FSM|direccion[5]~31\);

-- Location: LCCOMB_X109_Y38_N26
\Gral_FSM|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector14~0_combout\ = (\Gral_FSM|direccion\(5) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gral_FSM|direccion\(5),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector14~0_combout\);

-- Location: FF_X110_Y38_N23
\Gral_FSM|direccion[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[5]~30_combout\,
	asdata => \Gral_FSM|Selector14~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(5));

-- Location: LCCOMB_X110_Y38_N24
\Gral_FSM|direccion[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|direccion[6]~32_combout\ = (\Gral_FSM|direccion\(6) & (\Gral_FSM|direccion[5]~31\ $ (GND))) # (!\Gral_FSM|direccion\(6) & (!\Gral_FSM|direccion[5]~31\ & VCC))
-- \Gral_FSM|direccion[6]~33\ = CARRY((\Gral_FSM|direccion\(6) & !\Gral_FSM|direccion[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(6),
	datad => VCC,
	cin => \Gral_FSM|direccion[5]~31\,
	combout => \Gral_FSM|direccion[6]~32_combout\,
	cout => \Gral_FSM|direccion[6]~33\);

-- Location: LCCOMB_X109_Y38_N16
\Gral_FSM|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector13~0_combout\ = (\Gral_FSM|direccion\(6) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gral_FSM|direccion\(6),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector13~0_combout\);

-- Location: FF_X110_Y38_N25
\Gral_FSM|direccion[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[6]~32_combout\,
	asdata => \Gral_FSM|Selector13~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(6));

-- Location: LCCOMB_X110_Y38_N26
\Gral_FSM|direccion[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|direccion[7]~34_combout\ = (\Gral_FSM|direccion\(7) & (!\Gral_FSM|direccion[6]~33\)) # (!\Gral_FSM|direccion\(7) & ((\Gral_FSM|direccion[6]~33\) # (GND)))
-- \Gral_FSM|direccion[7]~35\ = CARRY((!\Gral_FSM|direccion[6]~33\) # (!\Gral_FSM|direccion\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(7),
	datad => VCC,
	cin => \Gral_FSM|direccion[6]~33\,
	combout => \Gral_FSM|direccion[7]~34_combout\,
	cout => \Gral_FSM|direccion[7]~35\);

-- Location: LCCOMB_X109_Y38_N4
\Gral_FSM|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector12~0_combout\ = (\Gral_FSM|direccion\(7) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(7),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector12~0_combout\);

-- Location: FF_X110_Y38_N27
\Gral_FSM|direccion[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[7]~34_combout\,
	asdata => \Gral_FSM|Selector12~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(7));

-- Location: LCCOMB_X110_Y38_N28
\Gral_FSM|direccion[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|direccion[8]~36_combout\ = (\Gral_FSM|direccion\(8) & (\Gral_FSM|direccion[7]~35\ $ (GND))) # (!\Gral_FSM|direccion\(8) & (!\Gral_FSM|direccion[7]~35\ & VCC))
-- \Gral_FSM|direccion[8]~37\ = CARRY((\Gral_FSM|direccion\(8) & !\Gral_FSM|direccion[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(8),
	datad => VCC,
	cin => \Gral_FSM|direccion[7]~35\,
	combout => \Gral_FSM|direccion[8]~36_combout\,
	cout => \Gral_FSM|direccion[8]~37\);

-- Location: LCCOMB_X109_Y38_N0
\Gral_FSM|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector11~0_combout\ = (\Gral_FSM|direccion\(8) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(8),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector11~0_combout\);

-- Location: FF_X110_Y38_N29
\Gral_FSM|direccion[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[8]~36_combout\,
	asdata => \Gral_FSM|Selector11~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(8));

-- Location: LCCOMB_X110_Y38_N30
\Gral_FSM|direccion[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|direccion[9]~38_combout\ = (\Gral_FSM|direccion\(9) & (!\Gral_FSM|direccion[8]~37\)) # (!\Gral_FSM|direccion\(9) & ((\Gral_FSM|direccion[8]~37\) # (GND)))
-- \Gral_FSM|direccion[9]~39\ = CARRY((!\Gral_FSM|direccion[8]~37\) # (!\Gral_FSM|direccion\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(9),
	datad => VCC,
	cin => \Gral_FSM|direccion[8]~37\,
	combout => \Gral_FSM|direccion[9]~38_combout\,
	cout => \Gral_FSM|direccion[9]~39\);

-- Location: LCCOMB_X109_Y38_N28
\Gral_FSM|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector10~0_combout\ = (\Gral_FSM|direccion\(9) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gral_FSM|direccion\(9),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector10~0_combout\);

-- Location: FF_X110_Y38_N31
\Gral_FSM|direccion[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[9]~38_combout\,
	asdata => \Gral_FSM|Selector10~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(9));

-- Location: LCCOMB_X110_Y37_N0
\Gral_FSM|direccion[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|direccion[10]~40_combout\ = (\Gral_FSM|direccion\(10) & (\Gral_FSM|direccion[9]~39\ $ (GND))) # (!\Gral_FSM|direccion\(10) & (!\Gral_FSM|direccion[9]~39\ & VCC))
-- \Gral_FSM|direccion[10]~41\ = CARRY((\Gral_FSM|direccion\(10) & !\Gral_FSM|direccion[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(10),
	datad => VCC,
	cin => \Gral_FSM|direccion[9]~39\,
	combout => \Gral_FSM|direccion[10]~40_combout\,
	cout => \Gral_FSM|direccion[10]~41\);

-- Location: LCCOMB_X109_Y37_N16
\Gral_FSM|direccion[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|direccion[10]~feeder_combout\ = \Gral_FSM|direccion[10]~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion[10]~40_combout\,
	combout => \Gral_FSM|direccion[10]~feeder_combout\);

-- Location: LCCOMB_X109_Y37_N22
\Gral_FSM|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector9~0_combout\ = (\Gral_FSM|current_state.IDLE~q\ & \Gral_FSM|direccion\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gral_FSM|current_state.IDLE~q\,
	datad => \Gral_FSM|direccion\(10),
	combout => \Gral_FSM|Selector9~0_combout\);

-- Location: FF_X109_Y37_N17
\Gral_FSM|direccion[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[10]~feeder_combout\,
	asdata => \Gral_FSM|Selector9~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(10));

-- Location: LCCOMB_X110_Y37_N2
\Gral_FSM|direccion[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|direccion[11]~42_combout\ = (\Gral_FSM|direccion\(11) & (!\Gral_FSM|direccion[10]~41\)) # (!\Gral_FSM|direccion\(11) & ((\Gral_FSM|direccion[10]~41\) # (GND)))
-- \Gral_FSM|direccion[11]~43\ = CARRY((!\Gral_FSM|direccion[10]~41\) # (!\Gral_FSM|direccion\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(11),
	datad => VCC,
	cin => \Gral_FSM|direccion[10]~41\,
	combout => \Gral_FSM|direccion[11]~42_combout\,
	cout => \Gral_FSM|direccion[11]~43\);

-- Location: LCCOMB_X109_Y37_N8
\Gral_FSM|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector8~0_combout\ = (\Gral_FSM|direccion\(11) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(11),
	datac => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector8~0_combout\);

-- Location: FF_X110_Y37_N3
\Gral_FSM|direccion[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[11]~42_combout\,
	asdata => \Gral_FSM|Selector8~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(11));

-- Location: LCCOMB_X110_Y37_N4
\Gral_FSM|direccion[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|direccion[12]~44_combout\ = (\Gral_FSM|direccion\(12) & (\Gral_FSM|direccion[11]~43\ $ (GND))) # (!\Gral_FSM|direccion\(12) & (!\Gral_FSM|direccion[11]~43\ & VCC))
-- \Gral_FSM|direccion[12]~45\ = CARRY((\Gral_FSM|direccion\(12) & !\Gral_FSM|direccion[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(12),
	datad => VCC,
	cin => \Gral_FSM|direccion[11]~43\,
	combout => \Gral_FSM|direccion[12]~44_combout\,
	cout => \Gral_FSM|direccion[12]~45\);

-- Location: LCCOMB_X110_Y37_N26
\Gral_FSM|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector7~0_combout\ = (\Gral_FSM|direccion\(12) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(12),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector7~0_combout\);

-- Location: FF_X110_Y37_N5
\Gral_FSM|direccion[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[12]~44_combout\,
	asdata => \Gral_FSM|Selector7~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(12));

-- Location: LCCOMB_X110_Y37_N6
\Gral_FSM|direccion[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|direccion[13]~46_combout\ = (\Gral_FSM|direccion\(13) & (!\Gral_FSM|direccion[12]~45\)) # (!\Gral_FSM|direccion\(13) & ((\Gral_FSM|direccion[12]~45\) # (GND)))
-- \Gral_FSM|direccion[13]~47\ = CARRY((!\Gral_FSM|direccion[12]~45\) # (!\Gral_FSM|direccion\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(13),
	datad => VCC,
	cin => \Gral_FSM|direccion[12]~45\,
	combout => \Gral_FSM|direccion[13]~46_combout\,
	cout => \Gral_FSM|direccion[13]~47\);

-- Location: LCCOMB_X109_Y37_N30
\Gral_FSM|direccion[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|direccion[13]~feeder_combout\ = \Gral_FSM|direccion[13]~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gral_FSM|direccion[13]~46_combout\,
	combout => \Gral_FSM|direccion[13]~feeder_combout\);

-- Location: LCCOMB_X109_Y37_N26
\Gral_FSM|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector6~0_combout\ = (\Gral_FSM|direccion\(13) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(13),
	datac => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector6~0_combout\);

-- Location: FF_X109_Y37_N31
\Gral_FSM|direccion[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[13]~feeder_combout\,
	asdata => \Gral_FSM|Selector6~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(13));

-- Location: LCCOMB_X110_Y37_N8
\Gral_FSM|direccion[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|direccion[14]~48_combout\ = (\Gral_FSM|direccion\(14) & (\Gral_FSM|direccion[13]~47\ $ (GND))) # (!\Gral_FSM|direccion\(14) & (!\Gral_FSM|direccion[13]~47\ & VCC))
-- \Gral_FSM|direccion[14]~49\ = CARRY((\Gral_FSM|direccion\(14) & !\Gral_FSM|direccion[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(14),
	datad => VCC,
	cin => \Gral_FSM|direccion[13]~47\,
	combout => \Gral_FSM|direccion[14]~48_combout\,
	cout => \Gral_FSM|direccion[14]~49\);

-- Location: LCCOMB_X110_Y37_N28
\Gral_FSM|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector5~0_combout\ = (\Gral_FSM|direccion\(14) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(14),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector5~0_combout\);

-- Location: FF_X110_Y37_N9
\Gral_FSM|direccion[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[14]~48_combout\,
	asdata => \Gral_FSM|Selector5~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(14));

-- Location: LCCOMB_X110_Y37_N10
\Gral_FSM|direccion[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|direccion[15]~50_combout\ = (\Gral_FSM|direccion\(15) & (!\Gral_FSM|direccion[14]~49\)) # (!\Gral_FSM|direccion\(15) & ((\Gral_FSM|direccion[14]~49\) # (GND)))
-- \Gral_FSM|direccion[15]~51\ = CARRY((!\Gral_FSM|direccion[14]~49\) # (!\Gral_FSM|direccion\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(15),
	datad => VCC,
	cin => \Gral_FSM|direccion[14]~49\,
	combout => \Gral_FSM|direccion[15]~50_combout\,
	cout => \Gral_FSM|direccion[15]~51\);

-- Location: LCCOMB_X110_Y37_N30
\Gral_FSM|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector4~0_combout\ = (\Gral_FSM|direccion\(15) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(15),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector4~0_combout\);

-- Location: FF_X110_Y37_N11
\Gral_FSM|direccion[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[15]~50_combout\,
	asdata => \Gral_FSM|Selector4~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(15));

-- Location: LCCOMB_X110_Y37_N12
\Gral_FSM|direccion[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|direccion[16]~52_combout\ = (\Gral_FSM|direccion\(16) & (\Gral_FSM|direccion[15]~51\ $ (GND))) # (!\Gral_FSM|direccion\(16) & (!\Gral_FSM|direccion[15]~51\ & VCC))
-- \Gral_FSM|direccion[16]~53\ = CARRY((\Gral_FSM|direccion\(16) & !\Gral_FSM|direccion[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(16),
	datad => VCC,
	cin => \Gral_FSM|direccion[15]~51\,
	combout => \Gral_FSM|direccion[16]~52_combout\,
	cout => \Gral_FSM|direccion[16]~53\);

-- Location: LCCOMB_X109_Y37_N4
\Gral_FSM|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector3~0_combout\ = (\Gral_FSM|direccion\(16) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(16),
	datac => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector3~0_combout\);

-- Location: FF_X110_Y37_N13
\Gral_FSM|direccion[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[16]~52_combout\,
	asdata => \Gral_FSM|Selector3~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(16));

-- Location: LCCOMB_X110_Y37_N14
\Gral_FSM|direccion[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|direccion[17]~54_combout\ = (\Gral_FSM|direccion\(17) & (!\Gral_FSM|direccion[16]~53\)) # (!\Gral_FSM|direccion\(17) & ((\Gral_FSM|direccion[16]~53\) # (GND)))
-- \Gral_FSM|direccion[17]~55\ = CARRY((!\Gral_FSM|direccion[16]~53\) # (!\Gral_FSM|direccion\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(17),
	datad => VCC,
	cin => \Gral_FSM|direccion[16]~53\,
	combout => \Gral_FSM|direccion[17]~54_combout\,
	cout => \Gral_FSM|direccion[17]~55\);

-- Location: LCCOMB_X110_Y37_N24
\Gral_FSM|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector2~0_combout\ = (\Gral_FSM|direccion\(17) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(17),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector2~0_combout\);

-- Location: FF_X110_Y37_N15
\Gral_FSM|direccion[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[17]~54_combout\,
	asdata => \Gral_FSM|Selector2~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(17));

-- Location: LCCOMB_X110_Y37_N16
\Gral_FSM|direccion[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|direccion[18]~56_combout\ = (\Gral_FSM|direccion\(18) & (\Gral_FSM|direccion[17]~55\ $ (GND))) # (!\Gral_FSM|direccion\(18) & (!\Gral_FSM|direccion[17]~55\ & VCC))
-- \Gral_FSM|direccion[18]~57\ = CARRY((\Gral_FSM|direccion\(18) & !\Gral_FSM|direccion[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(18),
	datad => VCC,
	cin => \Gral_FSM|direccion[17]~55\,
	combout => \Gral_FSM|direccion[18]~56_combout\,
	cout => \Gral_FSM|direccion[18]~57\);

-- Location: LCCOMB_X110_Y37_N22
\Gral_FSM|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector1~0_combout\ = (\Gral_FSM|direccion\(18) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(18),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector1~0_combout\);

-- Location: FF_X110_Y37_N17
\Gral_FSM|direccion[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[18]~56_combout\,
	asdata => \Gral_FSM|Selector1~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(18));

-- Location: LCCOMB_X110_Y37_N18
\Gral_FSM|direccion[19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|direccion[19]~58_combout\ = \Gral_FSM|direccion[18]~57\ $ (\Gral_FSM|direccion\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Gral_FSM|direccion\(19),
	cin => \Gral_FSM|direccion[18]~57\,
	combout => \Gral_FSM|direccion[19]~58_combout\);

-- Location: LCCOMB_X110_Y37_N20
\Gral_FSM|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector0~0_combout\ = (\Gral_FSM|direccion\(19) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(19),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector0~0_combout\);

-- Location: FF_X110_Y37_N19
\Gral_FSM|direccion[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[19]~58_combout\,
	asdata => \Gral_FSM|Selector0~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(19));

-- Location: LCCOMB_X109_Y37_N0
\Gral_FSM|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Equal2~0_combout\ = (\Gral_FSM|direccion\(18) & (\Gral_FSM|direccion\(17) & (\Gral_FSM|direccion\(16) & \Gral_FSM|direccion\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(18),
	datab => \Gral_FSM|direccion\(17),
	datac => \Gral_FSM|direccion\(16),
	datad => \Gral_FSM|direccion\(19),
	combout => \Gral_FSM|Equal2~0_combout\);

-- Location: IOIBUF_X115_Y37_N8
\BOTONES[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTONES(0),
	o => \BOTONES[0]~input_o\);

-- Location: LCCOMB_X106_Y38_N24
\RISING_BTS:0:BT|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RISING_BTS:0:BT|Q~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RISING_BTS:0:BT|Q~feeder_combout\);

-- Location: FF_X106_Y38_N25
\RISING_BTS:0:BT|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_BOTONES[0]~input_o\,
	d => \RISING_BTS:0:BT|Q~feeder_combout\,
	clrn => \Gral_FSM|ALT_INV_SetBotones~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RISING_BTS:0:BT|Q~q\);

-- Location: IOIBUF_X115_Y42_N15
\BOTONES[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTONES(2),
	o => \BOTONES[2]~input_o\);

-- Location: LCCOMB_X107_Y38_N14
\RISING_BTS:2:BT|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RISING_BTS:2:BT|Q~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RISING_BTS:2:BT|Q~feeder_combout\);

-- Location: FF_X107_Y38_N15
\RISING_BTS:2:BT|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_BOTONES[2]~input_o\,
	d => \RISING_BTS:2:BT|Q~feeder_combout\,
	clrn => \Gral_FSM|ALT_INV_SetBotones~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RISING_BTS:2:BT|Q~q\);

-- Location: LCCOMB_X108_Y38_N6
\Gral_FSM|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector44~0_combout\ = (\RISING_BTS:0:BT|Q~q\ & (!\Gral_FSM|current_state.IDLE~q\ & (!\RISING_BTS:1:BT|Q~q\ & !\RISING_BTS:2:BT|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RISING_BTS:0:BT|Q~q\,
	datab => \Gral_FSM|current_state.IDLE~q\,
	datac => \RISING_BTS:1:BT|Q~q\,
	datad => \RISING_BTS:2:BT|Q~q\,
	combout => \Gral_FSM|Selector44~0_combout\);

-- Location: LCCOMB_X109_Y38_N22
\Gral_FSM|WideOr19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|WideOr19~0_combout\ = (!\Gral_FSM|current_state.ESPERAWR~q\ & (!\Gral_FSM|current_state.INITWR~q\ & !\Gral_FSM|current_state.LOADDATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.ESPERAWR~q\,
	datac => \Gral_FSM|current_state.INITWR~q\,
	datad => \Gral_FSM|current_state.LOADDATA~q\,
	combout => \Gral_FSM|WideOr19~0_combout\);

-- Location: LCCOMB_X109_Y36_N20
\LFSR|LFSR:2:i32:bit32|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR|LFSR:2:i32:bit32|Q~feeder_combout\ = \LFSR|LFSR:1:i32:bit32|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LFSR|LFSR:1:i32:bit32|Q~q\,
	combout => \LFSR|LFSR:2:i32:bit32|Q~feeder_combout\);

-- Location: LCCOMB_X107_Y38_N24
\Gral_FSM|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector37~0_combout\ = (\Gral_FSM|current_state.IDLE~q\) # ((\RISING_BTS:0:BT|Q~q\ & (!\RISING_BTS:2:BT|Q~q\ & !\RISING_BTS:1:BT|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.IDLE~q\,
	datab => \RISING_BTS:0:BT|Q~q\,
	datac => \RISING_BTS:2:BT|Q~q\,
	datad => \RISING_BTS:1:BT|Q~q\,
	combout => \Gral_FSM|Selector37~0_combout\);

-- Location: LCCOMB_X108_Y38_N14
\Gral_FSM|next_state.INITRD_776\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|next_state.INITRD_776~combout\ = (GLOBAL(\Gral_FSM|Selector46~0clkctrl_outclk\) & (!\Gral_FSM|Selector37~0_combout\)) # (!GLOBAL(\Gral_FSM|Selector46~0clkctrl_outclk\) & ((\Gral_FSM|next_state.INITRD_776~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|Selector37~0_combout\,
	datac => \Gral_FSM|next_state.INITRD_776~combout\,
	datad => \Gral_FSM|Selector46~0clkctrl_outclk\,
	combout => \Gral_FSM|next_state.INITRD_776~combout\);

-- Location: FF_X108_Y38_N19
\Gral_FSM|current_state.INITRD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Gral_FSM|next_state.INITRD_776~combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|current_state.INITRD~q\);

-- Location: LCCOMB_X109_Y36_N4
\Gral_FSM|LOADDIR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|LOADDIR~0_combout\ = (\Gral_FSM|LOADDIR~q\) # (\Gral_FSM|current_state.INITRD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gral_FSM|LOADDIR~q\,
	datad => \Gral_FSM|current_state.INITRD~q\,
	combout => \Gral_FSM|LOADDIR~0_combout\);

-- Location: FF_X109_Y36_N5
\Gral_FSM|LOADDIR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|LOADDIR~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|LOADDIR~q\);

-- Location: LCCOMB_X109_Y37_N6
\Gral_FSM|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Equal2~3_combout\ = (\Gral_FSM|direccion\(11) & (\Gral_FSM|direccion\(10) & (\Gral_FSM|direccion\(9) & \Gral_FSM|direccion\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(11),
	datab => \Gral_FSM|direccion\(10),
	datac => \Gral_FSM|direccion\(9),
	datad => \Gral_FSM|direccion\(8),
	combout => \Gral_FSM|Equal2~3_combout\);

-- Location: LCCOMB_X109_Y37_N28
\Gral_FSM|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Equal2~4_combout\ = (\Gral_FSM|direccion\(13) & (\Gral_FSM|direccion\(14) & (\Gral_FSM|direccion\(15) & \Gral_FSM|direccion\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(13),
	datab => \Gral_FSM|direccion\(14),
	datac => \Gral_FSM|direccion\(15),
	datad => \Gral_FSM|direccion\(12),
	combout => \Gral_FSM|Equal2~4_combout\);

-- Location: LCCOMB_X110_Y38_N6
\Gral_FSM|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Equal2~2_combout\ = (\Gral_FSM|direccion\(5) & (\Gral_FSM|direccion\(4) & (\Gral_FSM|direccion\(7) & \Gral_FSM|direccion\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(5),
	datab => \Gral_FSM|direccion\(4),
	datac => \Gral_FSM|direccion\(7),
	datad => \Gral_FSM|direccion\(6),
	combout => \Gral_FSM|Equal2~2_combout\);

-- Location: LCCOMB_X110_Y38_N8
\Gral_FSM|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Equal2~1_combout\ = (\Gral_FSM|direccion\(0) & (\Gral_FSM|direccion\(3) & (\Gral_FSM|direccion\(1) & \Gral_FSM|direccion\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(0),
	datab => \Gral_FSM|direccion\(3),
	datac => \Gral_FSM|direccion\(1),
	datad => \Gral_FSM|direccion\(2),
	combout => \Gral_FSM|Equal2~1_combout\);

-- Location: LCCOMB_X109_Y37_N10
\Gral_FSM|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Equal2~5_combout\ = (\Gral_FSM|Equal2~3_combout\ & (\Gral_FSM|Equal2~4_combout\ & (\Gral_FSM|Equal2~2_combout\ & \Gral_FSM|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|Equal2~3_combout\,
	datab => \Gral_FSM|Equal2~4_combout\,
	datac => \Gral_FSM|Equal2~2_combout\,
	datad => \Gral_FSM|Equal2~1_combout\,
	combout => \Gral_FSM|Equal2~5_combout\);

-- Location: LCCOMB_X108_Y37_N14
\Gral_FSM|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector28~0_combout\ = (\Gral_FSM|current_state.FINRD~q\ & (\Gral_FSM|Equal2~5_combout\ & \Gral_FSM|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.FINRD~q\,
	datab => \Gral_FSM|Equal2~5_combout\,
	datac => \Gral_FSM|Equal2~0_combout\,
	combout => \Gral_FSM|Selector28~0_combout\);

-- Location: LCCOMB_X108_Y37_N6
\Gral_FSM|next_state.BLINK_LED_721\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|next_state.BLINK_LED_721~combout\ = (GLOBAL(\Gral_FSM|Selector46~0clkctrl_outclk\) & ((\Gral_FSM|Selector28~0_combout\))) # (!GLOBAL(\Gral_FSM|Selector46~0clkctrl_outclk\) & (\Gral_FSM|next_state.BLINK_LED_721~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|next_state.BLINK_LED_721~combout\,
	datac => \Gral_FSM|Selector28~0_combout\,
	datad => \Gral_FSM|Selector46~0clkctrl_outclk\,
	combout => \Gral_FSM|next_state.BLINK_LED_721~combout\);

-- Location: LCCOMB_X108_Y37_N22
\Gral_FSM|current_state.BLINK_LED~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|current_state.BLINK_LED~feeder_combout\ = \Gral_FSM|next_state.BLINK_LED_721~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gral_FSM|next_state.BLINK_LED_721~combout\,
	combout => \Gral_FSM|current_state.BLINK_LED~feeder_combout\);

-- Location: FF_X108_Y37_N23
\Gral_FSM|current_state.BLINK_LED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|current_state.BLINK_LED~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|current_state.BLINK_LED~q\);

-- Location: LCCOMB_X108_Y37_N28
\Gral_FSM|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector21~0_combout\ = (!\Gral_FSM|current_state.INITRD~q\ & !\Gral_FSM|current_state.ESPERARD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gral_FSM|current_state.INITRD~q\,
	datad => \Gral_FSM|current_state.ESPERARD~q\,
	combout => \Gral_FSM|Selector21~0_combout\);

-- Location: LCCOMB_X109_Y36_N18
\Gral_FSM|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector25~0_combout\ = (\Gral_FSM|current_state.FINRD~q\) # ((!\Gral_FSM|current_state.BLINK_LED~q\ & (\Gral_FSM|EN_LFSR~q\ & \Gral_FSM|Selector21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.BLINK_LED~q\,
	datab => \Gral_FSM|current_state.FINRD~q\,
	datac => \Gral_FSM|EN_LFSR~q\,
	datad => \Gral_FSM|Selector21~0_combout\,
	combout => \Gral_FSM|Selector25~0_combout\);

-- Location: FF_X109_Y36_N19
\Gral_FSM|EN_LFSR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|Selector25~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|EN_LFSR~q\);

-- Location: LCCOMB_X109_Y36_N28
\LFSR|LFSR:0:i0:bit0|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR|LFSR:0:i0:bit0|Q~2_combout\ = (\Gral_FSM|LOADDIR~q\ & \Gral_FSM|EN_LFSR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|LOADDIR~q\,
	datad => \Gral_FSM|EN_LFSR~q\,
	combout => \LFSR|LFSR:0:i0:bit0|Q~2_combout\);

-- Location: FF_X109_Y36_N21
\LFSR|LFSR:2:i32:bit32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LFSR|LFSR:2:i32:bit32|Q~feeder_combout\,
	clrn => \LFSR|LFSR:0:i0:bit0|ALT_INV_Q~2_combout\,
	ena => \Gral_FSM|EN_LFSR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|LFSR:2:i32:bit32|Q~q\);

-- Location: LCCOMB_X109_Y36_N14
\LFSR|LFSR:3:i32:bit32|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR|LFSR:3:i32:bit32|Q~feeder_combout\ = \LFSR|LFSR:2:i32:bit32|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LFSR|LFSR:2:i32:bit32|Q~q\,
	combout => \LFSR|LFSR:3:i32:bit32|Q~feeder_combout\);

-- Location: FF_X109_Y36_N15
\LFSR|LFSR:3:i32:bit32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LFSR|LFSR:3:i32:bit32|Q~feeder_combout\,
	clrn => \LFSR|LFSR:0:i0:bit0|ALT_INV_Q~2_combout\,
	ena => \Gral_FSM|EN_LFSR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|LFSR:3:i32:bit32|Q~q\);

-- Location: LCCOMB_X109_Y36_N12
\LFSR|LFSR:4:i32:bit32|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR|LFSR:4:i32:bit32|Q~feeder_combout\ = \LFSR|LFSR:3:i32:bit32|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LFSR|LFSR:3:i32:bit32|Q~q\,
	combout => \LFSR|LFSR:4:i32:bit32|Q~feeder_combout\);

-- Location: FF_X109_Y36_N13
\LFSR|LFSR:4:i32:bit32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LFSR|LFSR:4:i32:bit32|Q~feeder_combout\,
	clrn => \LFSR|LFSR:0:i0:bit0|ALT_INV_Q~2_combout\,
	ena => \Gral_FSM|EN_LFSR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|LFSR:4:i32:bit32|Q~q\);

-- Location: LCCOMB_X109_Y36_N26
\LFSR|LFSR:5:i32:bit32|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR|LFSR:5:i32:bit32|Q~feeder_combout\ = \LFSR|LFSR:4:i32:bit32|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LFSR|LFSR:4:i32:bit32|Q~q\,
	combout => \LFSR|LFSR:5:i32:bit32|Q~feeder_combout\);

-- Location: FF_X109_Y36_N27
\LFSR|LFSR:5:i32:bit32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LFSR|LFSR:5:i32:bit32|Q~feeder_combout\,
	clrn => \LFSR|LFSR:0:i0:bit0|ALT_INV_Q~2_combout\,
	ena => \Gral_FSM|EN_LFSR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|LFSR:5:i32:bit32|Q~q\);

-- Location: LCCOMB_X109_Y36_N16
\LFSR|LFSR:6:i32:bit32|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR|LFSR:6:i32:bit32|Q~feeder_combout\ = \LFSR|LFSR:5:i32:bit32|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LFSR|LFSR:5:i32:bit32|Q~q\,
	combout => \LFSR|LFSR:6:i32:bit32|Q~feeder_combout\);

-- Location: FF_X109_Y36_N17
\LFSR|LFSR:6:i32:bit32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LFSR|LFSR:6:i32:bit32|Q~feeder_combout\,
	clrn => \LFSR|LFSR:0:i0:bit0|ALT_INV_Q~2_combout\,
	ena => \Gral_FSM|EN_LFSR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|LFSR:6:i32:bit32|Q~q\);

-- Location: LCCOMB_X109_Y36_N2
\LFSR|LFSR:7:i32:bit32|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR|LFSR:7:i32:bit32|Q~feeder_combout\ = \LFSR|LFSR:6:i32:bit32|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LFSR|LFSR:6:i32:bit32|Q~q\,
	combout => \LFSR|LFSR:7:i32:bit32|Q~feeder_combout\);

-- Location: FF_X109_Y36_N3
\LFSR|LFSR:7:i32:bit32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LFSR|LFSR:7:i32:bit32|Q~feeder_combout\,
	clrn => \LFSR|LFSR:0:i0:bit0|ALT_INV_Q~2_combout\,
	ena => \Gral_FSM|EN_LFSR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|LFSR:7:i32:bit32|Q~q\);

-- Location: LCCOMB_X109_Y36_N8
\LFSR|LFSR:8:i32:bit32|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR|LFSR:8:i32:bit32|Q~feeder_combout\ = \LFSR|LFSR:7:i32:bit32|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LFSR|LFSR:7:i32:bit32|Q~q\,
	combout => \LFSR|LFSR:8:i32:bit32|Q~feeder_combout\);

-- Location: FF_X109_Y36_N9
\LFSR|LFSR:8:i32:bit32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LFSR|LFSR:8:i32:bit32|Q~feeder_combout\,
	clrn => \LFSR|LFSR:0:i0:bit0|ALT_INV_Q~2_combout\,
	ena => \Gral_FSM|EN_LFSR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|LFSR:8:i32:bit32|Q~q\);

-- Location: LCCOMB_X109_Y36_N22
\LFSR|LFSR:9:i32:bit32|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR|LFSR:9:i32:bit32|Q~feeder_combout\ = \LFSR|LFSR:8:i32:bit32|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LFSR|LFSR:8:i32:bit32|Q~q\,
	combout => \LFSR|LFSR:9:i32:bit32|Q~feeder_combout\);

-- Location: FF_X109_Y36_N23
\LFSR|LFSR:9:i32:bit32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LFSR|LFSR:9:i32:bit32|Q~feeder_combout\,
	clrn => \LFSR|LFSR:0:i0:bit0|ALT_INV_Q~2_combout\,
	ena => \Gral_FSM|EN_LFSR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|LFSR:9:i32:bit32|Q~q\);

-- Location: FF_X109_Y36_N29
\LFSR|LFSR:10:i32:bit32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \LFSR|LFSR:9:i32:bit32|Q~q\,
	clrn => \LFSR|LFSR:0:i0:bit0|ALT_INV_Q~2_combout\,
	sload => VCC,
	ena => \Gral_FSM|EN_LFSR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|LFSR:10:i32:bit32|Q~q\);

-- Location: FF_X109_Y36_N25
\LFSR|LFSR:11:i32:bit32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \LFSR|LFSR:10:i32:bit32|Q~q\,
	clrn => \LFSR|LFSR:0:i0:bit0|ALT_INV_Q~2_combout\,
	sload => VCC,
	ena => \Gral_FSM|EN_LFSR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|LFSR:11:i32:bit32|Q~q\);

-- Location: LCCOMB_X109_Y36_N24
\LFSR|LFSR:0:i0:bit0|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR|LFSR:0:i0:bit0|Q~0_combout\ = (\Gral_FSM|EN_LFSR~q\ & (\LFSR|LFSR:5:i32:bit32|Q~q\ $ (\LFSR|LFSR:3:i32:bit32|Q~q\ $ (!\LFSR|LFSR:11:i32:bit32|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR|LFSR:5:i32:bit32|Q~q\,
	datab => \LFSR|LFSR:3:i32:bit32|Q~q\,
	datac => \LFSR|LFSR:11:i32:bit32|Q~q\,
	datad => \Gral_FSM|EN_LFSR~q\,
	combout => \LFSR|LFSR:0:i0:bit0|Q~0_combout\);

-- Location: LCCOMB_X109_Y36_N0
\LFSR|LFSR:0:i0:bit0|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR|LFSR:0:i0:bit0|Q~1_combout\ = \LFSR|LFSR:0:i0:bit0|Q~q\ $ (\LFSR|LFSR:0:i0:bit0|Q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LFSR|LFSR:0:i0:bit0|Q~q\,
	datad => \LFSR|LFSR:0:i0:bit0|Q~0_combout\,
	combout => \LFSR|LFSR:0:i0:bit0|Q~1_combout\);

-- Location: FF_X109_Y36_N1
\LFSR|LFSR:0:i0:bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LFSR|LFSR:0:i0:bit0|Q~1_combout\,
	clrn => \LFSR|LFSR:0:i0:bit0|ALT_INV_Q~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|LFSR:0:i0:bit0|Q~q\);

-- Location: LCCOMB_X109_Y36_N6
\LFSR|LFSR:1:i32:bit32|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR|LFSR:1:i32:bit32|Q~feeder_combout\ = \LFSR|LFSR:0:i0:bit0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LFSR|LFSR:0:i0:bit0|Q~q\,
	combout => \LFSR|LFSR:1:i32:bit32|Q~feeder_combout\);

-- Location: FF_X109_Y36_N7
\LFSR|LFSR:1:i32:bit32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LFSR|LFSR:1:i32:bit32|Q~feeder_combout\,
	clrn => \LFSR|LFSR:0:i0:bit0|ALT_INV_Q~2_combout\,
	ena => \Gral_FSM|EN_LFSR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|LFSR:1:i32:bit32|Q~q\);

-- Location: LCCOMB_X109_Y37_N20
\Gral_FSM|Selector39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector39~3_combout\ = (\Gral_FSM|current_state.LOADDATA~q\ & (\Gral_FSM|Equal2~0_combout\ & (!\RAM_FSM|Ready~q\ & \Gral_FSM|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.LOADDATA~q\,
	datab => \Gral_FSM|Equal2~0_combout\,
	datac => \RAM_FSM|Ready~q\,
	datad => \Gral_FSM|Equal2~5_combout\,
	combout => \Gral_FSM|Selector39~3_combout\);

-- Location: LCCOMB_X108_Y37_N10
\Gral_FSM|next_state.PRENDERLED_787\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|next_state.PRENDERLED_787~combout\ = (GLOBAL(\Gral_FSM|Selector46~0clkctrl_outclk\) & ((\Gral_FSM|Selector39~3_combout\))) # (!GLOBAL(\Gral_FSM|Selector46~0clkctrl_outclk\) & (\Gral_FSM|next_state.PRENDERLED_787~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|next_state.PRENDERLED_787~combout\,
	datac => \Gral_FSM|Selector39~3_combout\,
	datad => \Gral_FSM|Selector46~0clkctrl_outclk\,
	combout => \Gral_FSM|next_state.PRENDERLED_787~combout\);

-- Location: FF_X108_Y37_N11
\Gral_FSM|current_state.PRENDERLED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|next_state.PRENDERLED_787~combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|current_state.PRENDERLED~q\);

-- Location: LCCOMB_X109_Y38_N20
\Gral_FSM|WideOr19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|WideOr19~combout\ = (\Gral_FSM|current_state.IDLE~q\ & (!\Gral_FSM|current_state.PRENDERLED~q\ & \Gral_FSM|WideOr19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|current_state.IDLE~q\,
	datac => \Gral_FSM|current_state.PRENDERLED~q\,
	datad => \Gral_FSM|WideOr19~0_combout\,
	combout => \Gral_FSM|WideOr19~combout\);

-- Location: FF_X109_Y38_N21
\Gral_FSM|ADDR_SEL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|WideOr19~combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|ADDR_SEL~q\);

-- Location: LCCOMB_X110_Y36_N14
\REG_ADDR:1:MUX_ADDR|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_ADDR:1:MUX_ADDR|Mux0~0_combout\ = (\Gral_FSM|ADDR_SEL~q\ & ((!\LFSR|LFSR:1:i32:bit32|Q~q\))) # (!\Gral_FSM|ADDR_SEL~q\ & (\Gral_FSM|direccion\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(1),
	datac => \LFSR|LFSR:1:i32:bit32|Q~q\,
	datad => \Gral_FSM|ADDR_SEL~q\,
	combout => \REG_ADDR:1:MUX_ADDR|Mux0~0_combout\);

-- Location: LCCOMB_X110_Y36_N0
\REG_ADDR:2:MUX_ADDR|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_ADDR:2:MUX_ADDR|Mux0~0_combout\ = (\Gral_FSM|ADDR_SEL~q\ & ((!\LFSR|LFSR:2:i32:bit32|Q~q\))) # (!\Gral_FSM|ADDR_SEL~q\ & (\Gral_FSM|direccion\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(2),
	datab => \LFSR|LFSR:2:i32:bit32|Q~q\,
	datad => \Gral_FSM|ADDR_SEL~q\,
	combout => \REG_ADDR:2:MUX_ADDR|Mux0~0_combout\);

-- Location: LCCOMB_X110_Y36_N6
\REG_ADDR:3:MUX_ADDR|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_ADDR:3:MUX_ADDR|Mux0~0_combout\ = (\Gral_FSM|ADDR_SEL~q\ & (!\LFSR|LFSR:3:i32:bit32|Q~q\)) # (!\Gral_FSM|ADDR_SEL~q\ & ((\Gral_FSM|direccion\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR|LFSR:3:i32:bit32|Q~q\,
	datac => \Gral_FSM|direccion\(3),
	datad => \Gral_FSM|ADDR_SEL~q\,
	combout => \REG_ADDR:3:MUX_ADDR|Mux0~0_combout\);

-- Location: LCCOMB_X110_Y36_N28
\REG_ADDR:4:MUX_ADDR|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_ADDR:4:MUX_ADDR|Mux0~0_combout\ = (\Gral_FSM|ADDR_SEL~q\ & (!\LFSR|LFSR:4:i32:bit32|Q~q\)) # (!\Gral_FSM|ADDR_SEL~q\ & ((\Gral_FSM|direccion\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR|LFSR:4:i32:bit32|Q~q\,
	datac => \Gral_FSM|direccion\(4),
	datad => \Gral_FSM|ADDR_SEL~q\,
	combout => \REG_ADDR:4:MUX_ADDR|Mux0~0_combout\);

-- Location: LCCOMB_X108_Y36_N22
\REG_ADDR:5:MUX_ADDR|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_ADDR:5:MUX_ADDR|Mux0~0_combout\ = (\Gral_FSM|ADDR_SEL~q\ & ((!\LFSR|LFSR:5:i32:bit32|Q~q\))) # (!\Gral_FSM|ADDR_SEL~q\ & (\Gral_FSM|direccion\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(5),
	datac => \Gral_FSM|ADDR_SEL~q\,
	datad => \LFSR|LFSR:5:i32:bit32|Q~q\,
	combout => \REG_ADDR:5:MUX_ADDR|Mux0~0_combout\);

-- Location: LCCOMB_X110_Y36_N10
\REG_ADDR:6:MUX_ADDR|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_ADDR:6:MUX_ADDR|Mux0~0_combout\ = (\Gral_FSM|ADDR_SEL~q\ & ((!\LFSR|LFSR:6:i32:bit32|Q~q\))) # (!\Gral_FSM|ADDR_SEL~q\ & (\Gral_FSM|direccion\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(6),
	datac => \LFSR|LFSR:6:i32:bit32|Q~q\,
	datad => \Gral_FSM|ADDR_SEL~q\,
	combout => \REG_ADDR:6:MUX_ADDR|Mux0~0_combout\);

-- Location: LCCOMB_X108_Y36_N28
\REG_ADDR:7:MUX_ADDR|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_ADDR:7:MUX_ADDR|Mux0~0_combout\ = (\Gral_FSM|ADDR_SEL~q\ & (!\LFSR|LFSR:7:i32:bit32|Q~q\)) # (!\Gral_FSM|ADDR_SEL~q\ & ((\Gral_FSM|direccion\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR|LFSR:7:i32:bit32|Q~q\,
	datac => \Gral_FSM|ADDR_SEL~q\,
	datad => \Gral_FSM|direccion\(7),
	combout => \REG_ADDR:7:MUX_ADDR|Mux0~0_combout\);

-- Location: LCCOMB_X110_Y36_N12
\REG_ADDR:8:MUX_ADDR|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_ADDR:8:MUX_ADDR|Mux0~0_combout\ = (\Gral_FSM|ADDR_SEL~q\ & (!\LFSR|LFSR:8:i32:bit32|Q~q\)) # (!\Gral_FSM|ADDR_SEL~q\ & ((\Gral_FSM|direccion\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR|LFSR:8:i32:bit32|Q~q\,
	datac => \Gral_FSM|direccion\(8),
	datad => \Gral_FSM|ADDR_SEL~q\,
	combout => \REG_ADDR:8:MUX_ADDR|Mux0~0_combout\);

-- Location: LCCOMB_X108_Y36_N30
\REG_ADDR:9:MUX_ADDR|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_ADDR:9:MUX_ADDR|Mux0~0_combout\ = (\Gral_FSM|ADDR_SEL~q\ & (!\LFSR|LFSR:9:i32:bit32|Q~q\)) # (!\Gral_FSM|ADDR_SEL~q\ & ((\Gral_FSM|direccion\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LFSR|LFSR:9:i32:bit32|Q~q\,
	datac => \Gral_FSM|ADDR_SEL~q\,
	datad => \Gral_FSM|direccion\(9),
	combout => \REG_ADDR:9:MUX_ADDR|Mux0~0_combout\);

-- Location: LCCOMB_X109_Y36_N10
\REG_ADDR:10:MUX_ADDR|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_ADDR:10:MUX_ADDR|Mux0~0_combout\ = (\Gral_FSM|ADDR_SEL~q\ & (!\LFSR|LFSR:10:i32:bit32|Q~q\)) # (!\Gral_FSM|ADDR_SEL~q\ & ((\Gral_FSM|direccion\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR|LFSR:10:i32:bit32|Q~q\,
	datab => \Gral_FSM|direccion\(10),
	datac => \Gral_FSM|ADDR_SEL~q\,
	combout => \REG_ADDR:10:MUX_ADDR|Mux0~0_combout\);

-- Location: LCCOMB_X109_Y37_N24
\REG_ADDR:11:MUX_ADDR|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_ADDR:11:MUX_ADDR|Mux0~0_combout\ = (\Gral_FSM|ADDR_SEL~q\ & ((!\LFSR|LFSR:11:i32:bit32|Q~q\))) # (!\Gral_FSM|ADDR_SEL~q\ & (\Gral_FSM|direccion\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(11),
	datac => \Gral_FSM|ADDR_SEL~q\,
	datad => \LFSR|LFSR:11:i32:bit32|Q~q\,
	combout => \REG_ADDR:11:MUX_ADDR|Mux0~0_combout\);

-- Location: M9K_X104_Y36_N0
\ROM1|altsyncram_component|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD55555555555555",
	mem_init2 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555540000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA95555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ROM.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:ROM1|altsyncram:altsyncram_component|altsyncram_9sq3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	portaaddr => \ROM1|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: IOIBUF_X115_Y36_N15
\DATA_BUS[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(12),
	o => \DATA_BUS[12]~input_o\);

-- Location: IOIBUF_X115_Y36_N8
\DATA_BUS[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(13),
	o => \DATA_BUS[13]~input_o\);

-- Location: LCCOMB_X108_Y38_N26
\COMP|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP|Equal0~7_combout\ = (\ROM1|altsyncram_component|auto_generated|q_a\(12) & (\DATA_BUS[12]~input_o\ & (\DATA_BUS[13]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(13))))) # (!\ROM1|altsyncram_component|auto_generated|q_a\(12) & 
-- (!\DATA_BUS[12]~input_o\ & (\DATA_BUS[13]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|altsyncram_component|auto_generated|q_a\(12),
	datab => \DATA_BUS[12]~input_o\,
	datac => \DATA_BUS[13]~input_o\,
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(13),
	combout => \COMP|Equal0~7_combout\);

-- Location: IOIBUF_X115_Y35_N15
\DATA_BUS[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(14),
	o => \DATA_BUS[14]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\DATA_BUS[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(15),
	o => \DATA_BUS[15]~input_o\);

-- Location: M9K_X104_Y35_N0
\ROM1|altsyncram_component|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	mem_init2 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	mem_init1 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555554000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ROM.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:ROM1|altsyncram:altsyncram_component|altsyncram_9sq3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	portaaddr => \ROM1|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM1|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X108_Y38_N24
\COMP|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP|Equal0~8_combout\ = (\DATA_BUS[14]~input_o\ & (\ROM1|altsyncram_component|auto_generated|q_a\(14) & (\DATA_BUS[15]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(15))))) # (!\DATA_BUS[14]~input_o\ & 
-- (!\ROM1|altsyncram_component|auto_generated|q_a\(14) & (\DATA_BUS[15]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_BUS[14]~input_o\,
	datab => \DATA_BUS[15]~input_o\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(15),
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(14),
	combout => \COMP|Equal0~8_combout\);

-- Location: IOIBUF_X115_Y41_N1
\DATA_BUS[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(11),
	o => \DATA_BUS[11]~input_o\);

-- Location: IOIBUF_X115_Y41_N8
\DATA_BUS[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(10),
	o => \DATA_BUS[10]~input_o\);

-- Location: M9K_X104_Y40_N0
\ROM1|altsyncram_component|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	mem_init2 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	mem_init1 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555554000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ROM.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:ROM1|altsyncram:altsyncram_component|altsyncram_9sq3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	portaaddr => \ROM1|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X108_Y38_N8
\COMP|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP|Equal0~6_combout\ = (\DATA_BUS[11]~input_o\ & (\ROM1|altsyncram_component|auto_generated|q_a\(11) & (\DATA_BUS[10]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(10))))) # (!\DATA_BUS[11]~input_o\ & 
-- (!\ROM1|altsyncram_component|auto_generated|q_a\(11) & (\DATA_BUS[10]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_BUS[11]~input_o\,
	datab => \DATA_BUS[10]~input_o\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(10),
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(11),
	combout => \COMP|Equal0~6_combout\);

-- Location: IOIBUF_X115_Y34_N15
\DATA_BUS[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(8),
	o => \DATA_BUS[8]~input_o\);

-- Location: IOIBUF_X115_Y34_N22
\DATA_BUS[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(9),
	o => \DATA_BUS[9]~input_o\);

-- Location: M9K_X104_Y34_N0
\ROM1|altsyncram_component|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD55555555555555",
	mem_init2 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555540000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA95555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ROM.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:ROM1|altsyncram:altsyncram_component|altsyncram_9sq3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	portaaddr => \ROM1|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X108_Y38_N2
\COMP|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP|Equal0~5_combout\ = (\DATA_BUS[8]~input_o\ & (\ROM1|altsyncram_component|auto_generated|q_a\(8) & (\DATA_BUS[9]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(9))))) # (!\DATA_BUS[8]~input_o\ & 
-- (!\ROM1|altsyncram_component|auto_generated|q_a\(8) & (\DATA_BUS[9]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_BUS[8]~input_o\,
	datab => \DATA_BUS[9]~input_o\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(8),
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(9),
	combout => \COMP|Equal0~5_combout\);

-- Location: LCCOMB_X108_Y38_N30
\COMP|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP|Equal0~9_combout\ = (\COMP|Equal0~7_combout\ & (\COMP|Equal0~8_combout\ & (\COMP|Equal0~6_combout\ & \COMP|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP|Equal0~7_combout\,
	datab => \COMP|Equal0~8_combout\,
	datac => \COMP|Equal0~6_combout\,
	datad => \COMP|Equal0~5_combout\,
	combout => \COMP|Equal0~9_combout\);

-- Location: LCCOMB_X107_Y38_N10
\Gral_FSM|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector30~0_combout\ = (\Gral_FSM|current_state.ERROR_DATO~q\ & ((\RISING_BTS:0:BT|Q~q\) # ((\RISING_BTS:1:BT|Q~q\) # (!\RISING_BTS:2:BT|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.ERROR_DATO~q\,
	datab => \RISING_BTS:0:BT|Q~q\,
	datac => \RISING_BTS:2:BT|Q~q\,
	datad => \RISING_BTS:1:BT|Q~q\,
	combout => \Gral_FSM|Selector30~0_combout\);

-- Location: IOIBUF_X115_Y40_N1
\DATA_BUS[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(2),
	o => \DATA_BUS[2]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\DATA_BUS[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(3),
	o => \DATA_BUS[3]~input_o\);

-- Location: M9K_X104_Y37_N0
\ROM1|altsyncram_component|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	mem_init2 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	mem_init1 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555554000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ROM.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:ROM1|altsyncram:altsyncram_component|altsyncram_9sq3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	portaaddr => \ROM1|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM1|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X105_Y38_N22
\COMP|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP|Equal0~1_combout\ = (\DATA_BUS[2]~input_o\ & (\ROM1|altsyncram_component|auto_generated|q_a\(2) & (\DATA_BUS[3]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(3))))) # (!\DATA_BUS[2]~input_o\ & 
-- (!\ROM1|altsyncram_component|auto_generated|q_a\(2) & (\DATA_BUS[3]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_BUS[2]~input_o\,
	datab => \DATA_BUS[3]~input_o\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(2),
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(3),
	combout => \COMP|Equal0~1_combout\);

-- Location: IOIBUF_X115_Y46_N8
\DATA_BUS[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(7),
	o => \DATA_BUS[7]~input_o\);

-- Location: IOIBUF_X115_Y45_N15
\DATA_BUS[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(6),
	o => \DATA_BUS[6]~input_o\);

-- Location: M9K_X104_Y38_N0
\ROM1|altsyncram_component|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	mem_init2 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	mem_init1 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555554000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ROM.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:ROM1|altsyncram:altsyncram_component|altsyncram_9sq3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	portaaddr => \ROM1|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM1|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X105_Y38_N14
\COMP|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP|Equal0~3_combout\ = (\DATA_BUS[7]~input_o\ & (\ROM1|altsyncram_component|auto_generated|q_a\(7) & (\DATA_BUS[6]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(6))))) # (!\DATA_BUS[7]~input_o\ & 
-- (!\ROM1|altsyncram_component|auto_generated|q_a\(7) & (\DATA_BUS[6]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_BUS[7]~input_o\,
	datab => \DATA_BUS[6]~input_o\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(7),
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(6),
	combout => \COMP|Equal0~3_combout\);

-- Location: IOIBUF_X115_Y45_N22
\DATA_BUS[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(1),
	o => \DATA_BUS[1]~input_o\);

-- Location: IOIBUF_X115_Y46_N1
\DATA_BUS[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(0),
	o => \DATA_BUS[0]~input_o\);

-- Location: M9K_X104_Y41_N0
\ROM1|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD55555555555555",
	mem_init2 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555540000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA95555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ROM.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:ROM1|altsyncram:altsyncram_component|altsyncram_9sq3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	portaaddr => \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X105_Y38_N8
\COMP|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP|Equal0~0_combout\ = (\DATA_BUS[1]~input_o\ & (\ROM1|altsyncram_component|auto_generated|q_a\(1) & (\DATA_BUS[0]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(0))))) # (!\DATA_BUS[1]~input_o\ & 
-- (!\ROM1|altsyncram_component|auto_generated|q_a\(1) & (\DATA_BUS[0]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_BUS[1]~input_o\,
	datab => \DATA_BUS[0]~input_o\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(0),
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(1),
	combout => \COMP|Equal0~0_combout\);

-- Location: IOIBUF_X115_Y44_N1
\DATA_BUS[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(5),
	o => \DATA_BUS[5]~input_o\);

-- Location: IOIBUF_X115_Y44_N8
\DATA_BUS[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(4),
	o => \DATA_BUS[4]~input_o\);

-- Location: M9K_X104_Y39_N0
\ROM1|altsyncram_component|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD55555555555555",
	mem_init2 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555540000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA95555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ROM.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:ROM1|altsyncram:altsyncram_component|altsyncram_9sq3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	portaaddr => \ROM1|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM1|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X105_Y38_N12
\COMP|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP|Equal0~2_combout\ = (\DATA_BUS[5]~input_o\ & (\ROM1|altsyncram_component|auto_generated|q_a\(5) & (\DATA_BUS[4]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(4))))) # (!\DATA_BUS[5]~input_o\ & 
-- (!\ROM1|altsyncram_component|auto_generated|q_a\(5) & (\DATA_BUS[4]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_BUS[5]~input_o\,
	datab => \DATA_BUS[4]~input_o\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(4),
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(5),
	combout => \COMP|Equal0~2_combout\);

-- Location: LCCOMB_X105_Y38_N28
\COMP|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP|Equal0~4_combout\ = (\COMP|Equal0~1_combout\ & (\COMP|Equal0~3_combout\ & (\COMP|Equal0~0_combout\ & \COMP|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP|Equal0~1_combout\,
	datab => \COMP|Equal0~3_combout\,
	datac => \COMP|Equal0~0_combout\,
	datad => \COMP|Equal0~2_combout\,
	combout => \COMP|Equal0~4_combout\);

-- Location: LCCOMB_X108_Y38_N16
\Gral_FSM|Selector30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector30~1_combout\ = (\Gral_FSM|Selector30~0_combout\) # ((\Gral_FSM|current_state.COMPARE~q\ & ((!\COMP|Equal0~4_combout\) # (!\COMP|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP|Equal0~9_combout\,
	datab => \Gral_FSM|current_state.COMPARE~q\,
	datac => \Gral_FSM|Selector30~0_combout\,
	datad => \COMP|Equal0~4_combout\,
	combout => \Gral_FSM|Selector30~1_combout\);

-- Location: LCCOMB_X108_Y38_N20
\Gral_FSM|next_state.ERROR_DATO_732\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|next_state.ERROR_DATO_732~combout\ = (GLOBAL(\Gral_FSM|Selector46~0clkctrl_outclk\) & (\Gral_FSM|Selector30~1_combout\)) # (!GLOBAL(\Gral_FSM|Selector46~0clkctrl_outclk\) & ((\Gral_FSM|next_state.ERROR_DATO_732~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|Selector30~1_combout\,
	datab => \Gral_FSM|next_state.ERROR_DATO_732~combout\,
	datad => \Gral_FSM|Selector46~0clkctrl_outclk\,
	combout => \Gral_FSM|next_state.ERROR_DATO_732~combout\);

-- Location: FF_X108_Y38_N21
\Gral_FSM|current_state.ERROR_DATO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|next_state.ERROR_DATO_732~combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|current_state.ERROR_DATO~q\);

-- Location: LCCOMB_X107_Y38_N8
\Gral_FSM|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector32~0_combout\ = (\Gral_FSM|current_state.ERROR_DATO~q\ & (!\RISING_BTS:0:BT|Q~q\ & (\RISING_BTS:2:BT|Q~q\ & !\RISING_BTS:1:BT|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.ERROR_DATO~q\,
	datab => \RISING_BTS:0:BT|Q~q\,
	datac => \RISING_BTS:2:BT|Q~q\,
	datad => \RISING_BTS:1:BT|Q~q\,
	combout => \Gral_FSM|Selector32~0_combout\);

-- Location: LCCOMB_X108_Y38_N22
\Gral_FSM|Selector32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector32~1_combout\ = (\Gral_FSM|Selector32~0_combout\) # ((\Gral_FSM|current_state.COMPARE~q\ & (\COMP|Equal0~9_combout\ & \COMP|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|Selector32~0_combout\,
	datab => \Gral_FSM|current_state.COMPARE~q\,
	datac => \COMP|Equal0~9_combout\,
	datad => \COMP|Equal0~4_combout\,
	combout => \Gral_FSM|Selector32~1_combout\);

-- Location: LCCOMB_X108_Y38_N10
\Gral_FSM|next_state.FINRD_743\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|next_state.FINRD_743~combout\ = (GLOBAL(\Gral_FSM|Selector46~0clkctrl_outclk\) & ((\Gral_FSM|Selector32~1_combout\))) # (!GLOBAL(\Gral_FSM|Selector46~0clkctrl_outclk\) & (\Gral_FSM|next_state.FINRD_743~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|next_state.FINRD_743~combout\,
	datab => \Gral_FSM|Selector32~1_combout\,
	datad => \Gral_FSM|Selector46~0clkctrl_outclk\,
	combout => \Gral_FSM|next_state.FINRD_743~combout\);

-- Location: FF_X108_Y38_N11
\Gral_FSM|current_state.FINRD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|next_state.FINRD_743~combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|current_state.FINRD~q\);

-- Location: LCCOMB_X108_Y38_N18
\Gral_FSM|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector35~0_combout\ = (\Gral_FSM|current_state.INITRD~q\) # ((\Gral_FSM|current_state.ESPERARD~q\ & !\RAM_FSM|Ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|current_state.ESPERARD~q\,
	datac => \Gral_FSM|current_state.INITRD~q\,
	datad => \RAM_FSM|Ready~q\,
	combout => \Gral_FSM|Selector35~0_combout\);

-- Location: LCCOMB_X108_Y38_N28
\Gral_FSM|Selector35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector35~1_combout\ = (\Gral_FSM|Selector35~0_combout\) # ((\Gral_FSM|current_state.FINRD~q\ & ((!\Gral_FSM|Equal2~5_combout\) # (!\Gral_FSM|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.FINRD~q\,
	datab => \Gral_FSM|Selector35~0_combout\,
	datac => \Gral_FSM|Equal2~0_combout\,
	datad => \Gral_FSM|Equal2~5_combout\,
	combout => \Gral_FSM|Selector35~1_combout\);

-- Location: LCCOMB_X108_Y38_N4
\Gral_FSM|next_state.ESPERARD_765\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|next_state.ESPERARD_765~combout\ = (GLOBAL(\Gral_FSM|Selector46~0clkctrl_outclk\) & ((\Gral_FSM|Selector35~1_combout\))) # (!GLOBAL(\Gral_FSM|Selector46~0clkctrl_outclk\) & (\Gral_FSM|next_state.ESPERARD_765~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|next_state.ESPERARD_765~combout\,
	datac => \Gral_FSM|Selector46~0clkctrl_outclk\,
	datad => \Gral_FSM|Selector35~1_combout\,
	combout => \Gral_FSM|next_state.ESPERARD_765~combout\);

-- Location: FF_X108_Y38_N5
\Gral_FSM|current_state.ESPERARD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|next_state.ESPERARD_765~combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|current_state.ESPERARD~q\);

-- Location: LCCOMB_X108_Y37_N20
\Gral_FSM|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector33~0_combout\ = (\Gral_FSM|current_state.ESPERARD~q\ & \RAM_FSM|Ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|current_state.ESPERARD~q\,
	datad => \RAM_FSM|Ready~q\,
	combout => \Gral_FSM|Selector33~0_combout\);

-- Location: LCCOMB_X108_Y37_N8
\Gral_FSM|next_state.COMPARE_754\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|next_state.COMPARE_754~combout\ = (GLOBAL(\Gral_FSM|Selector46~0clkctrl_outclk\) & (\Gral_FSM|Selector33~0_combout\)) # (!GLOBAL(\Gral_FSM|Selector46~0clkctrl_outclk\) & ((\Gral_FSM|next_state.COMPARE_754~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|Selector33~0_combout\,
	datac => \Gral_FSM|next_state.COMPARE_754~combout\,
	datad => \Gral_FSM|Selector46~0clkctrl_outclk\,
	combout => \Gral_FSM|next_state.COMPARE_754~combout\);

-- Location: FF_X108_Y37_N9
\Gral_FSM|current_state.COMPARE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|next_state.COMPARE_754~combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|current_state.COMPARE~q\);

-- Location: LCCOMB_X108_Y37_N16
\Gral_FSM|WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|WideOr11~0_combout\ = (\Gral_FSM|current_state.COMPARE~q\) # ((\Gral_FSM|current_state.BLINK_LED~q\) # ((\Gral_FSM|current_state.FINRD~q\) # (\Gral_FSM|current_state.ERROR_DATO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.COMPARE~q\,
	datab => \Gral_FSM|current_state.BLINK_LED~q\,
	datac => \Gral_FSM|current_state.FINRD~q\,
	datad => \Gral_FSM|current_state.ERROR_DATO~q\,
	combout => \Gral_FSM|WideOr11~0_combout\);

-- Location: LCCOMB_X108_Y37_N30
\Gral_FSM|Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector21~1_combout\ = (((\Gral_FSM|WideOr11~0_combout\ & \Gral_FSM|ENRD_WR~q\)) # (!\Gral_FSM|Selector21~0_combout\)) # (!\Gral_FSM|WideOr19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|WideOr19~0_combout\,
	datab => \Gral_FSM|WideOr11~0_combout\,
	datac => \Gral_FSM|ENRD_WR~q\,
	datad => \Gral_FSM|Selector21~0_combout\,
	combout => \Gral_FSM|Selector21~1_combout\);

-- Location: FF_X108_Y37_N31
\Gral_FSM|ENRD_WR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|Selector21~1_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|ENRD_WR~q\);

-- Location: LCCOMB_X108_Y37_N18
\Gral_FSM|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector22~0_combout\ = (\Gral_FSM|current_state.ERROR_DATO~q\) # ((\Gral_FSM|current_state.BLINK_LED~q\) # ((\Gral_FSM|current_state.INITRD~q\) # (\Gral_FSM|current_state.ESPERARD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.ERROR_DATO~q\,
	datab => \Gral_FSM|current_state.BLINK_LED~q\,
	datac => \Gral_FSM|current_state.INITRD~q\,
	datad => \Gral_FSM|current_state.ESPERARD~q\,
	combout => \Gral_FSM|Selector22~0_combout\);

-- Location: LCCOMB_X109_Y37_N14
\Gral_FSM|Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector22~1_combout\ = (\Gral_FSM|current_state.LOADDATA~q\) # ((\Gral_FSM|current_state.FINRD~q\) # ((\Gral_FSM|Ext_ready~q\ & \Gral_FSM|Selector22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.LOADDATA~q\,
	datab => \Gral_FSM|current_state.FINRD~q\,
	datac => \Gral_FSM|Ext_ready~q\,
	datad => \Gral_FSM|Selector22~0_combout\,
	combout => \Gral_FSM|Selector22~1_combout\);

-- Location: FF_X109_Y37_N15
\Gral_FSM|Ext_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|Selector22~1_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|Ext_ready~q\);

-- Location: LCCOMB_X108_Y37_N24
\Gral_FSM|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector20~0_combout\ = (\Gral_FSM|current_state.PRENDERLED~q\) # (((\Gral_FSM|WideOr11~0_combout\ & \Gral_FSM|RD_WR~q\)) # (!\Gral_FSM|WideOr19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.PRENDERLED~q\,
	datab => \Gral_FSM|WideOr11~0_combout\,
	datac => \Gral_FSM|RD_WR~q\,
	datad => \Gral_FSM|WideOr19~0_combout\,
	combout => \Gral_FSM|Selector20~0_combout\);

-- Location: FF_X108_Y37_N25
\Gral_FSM|RD_WR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|Selector20~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|RD_WR~q\);

-- Location: LCCOMB_X112_Y37_N22
\RAM_FSM|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|Selector9~0_combout\ = (!\RAM_FSM|contador\(0) & \RAM_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAM_FSM|contador\(0),
	datad => \RAM_FSM|current_state.IDLE~q\,
	combout => \RAM_FSM|Selector9~0_combout\);

-- Location: LCCOMB_X112_Y37_N20
\RAM_FSM|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|Selector8~0_combout\ = (\RAM_FSM|current_state.IDLE~q\ & (\RAM_FSM|contador\(0) $ (\RAM_FSM|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_FSM|contador\(0),
	datab => \RAM_FSM|current_state.IDLE~q\,
	datac => \RAM_FSM|contador\(1),
	combout => \RAM_FSM|Selector8~0_combout\);

-- Location: FF_X112_Y37_N21
\RAM_FSM|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|Selector8~0_combout\,
	ena => \RAM_FSM|contador[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|contador\(1));

-- Location: LCCOMB_X112_Y37_N28
\RAM_FSM|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|Add0~0_combout\ = \RAM_FSM|contador\(3) $ (((\RAM_FSM|contador\(2) & (\RAM_FSM|contador\(1) & \RAM_FSM|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_FSM|contador\(2),
	datab => \RAM_FSM|contador\(1),
	datac => \RAM_FSM|contador\(0),
	datad => \RAM_FSM|contador\(3),
	combout => \RAM_FSM|Add0~0_combout\);

-- Location: LCCOMB_X112_Y37_N10
\RAM_FSM|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|Selector6~0_combout\ = (\RAM_FSM|current_state.IDLE~q\ & \RAM_FSM|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_FSM|current_state.IDLE~q\,
	datad => \RAM_FSM|Add0~0_combout\,
	combout => \RAM_FSM|Selector6~0_combout\);

-- Location: FF_X112_Y37_N11
\RAM_FSM|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|Selector6~0_combout\,
	ena => \RAM_FSM|contador[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|contador\(3));

-- Location: LCCOMB_X112_Y37_N18
\RAM_FSM|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|Selector5~0_combout\ = (\RAM_FSM|contador\(2) & (!\RAM_FSM|contador\(1) & (\RAM_FSM|contador\(0) & !\RAM_FSM|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_FSM|contador\(2),
	datab => \RAM_FSM|contador\(1),
	datac => \RAM_FSM|contador\(0),
	datad => \RAM_FSM|contador\(3),
	combout => \RAM_FSM|Selector5~0_combout\);

-- Location: LCCOMB_X111_Y37_N20
\RAM_FSM|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|Selector5~1_combout\ = (\Gral_FSM|Ext_ready~q\ & (\RAM_FSM|Selector5~0_combout\ & ((\RAM_FSM|current_state.INIT_WR~q\)))) # (!\Gral_FSM|Ext_ready~q\ & ((\RAM_FSM|current_state.WAIT_WR~q\) # ((\RAM_FSM|Selector5~0_combout\ & 
-- \RAM_FSM|current_state.INIT_WR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|Ext_ready~q\,
	datab => \RAM_FSM|Selector5~0_combout\,
	datac => \RAM_FSM|current_state.WAIT_WR~q\,
	datad => \RAM_FSM|current_state.INIT_WR~q\,
	combout => \RAM_FSM|Selector5~1_combout\);

-- Location: FF_X111_Y37_N21
\RAM_FSM|current_state.WAIT_WR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|Selector5~1_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|current_state.WAIT_WR~q\);

-- Location: LCCOMB_X111_Y37_N6
\RAM_FSM|contador[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|contador[0]~0_combout\ = (!\RESET~input_o\ & (!\RAM_FSM|current_state.END_RD~q\ & !\RAM_FSM|current_state.WAIT_WR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \RAM_FSM|current_state.END_RD~q\,
	datad => \RAM_FSM|current_state.WAIT_WR~q\,
	combout => \RAM_FSM|contador[0]~0_combout\);

-- Location: FF_X112_Y37_N23
\RAM_FSM|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|Selector9~0_combout\,
	ena => \RAM_FSM|contador[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|contador\(0));

-- Location: LCCOMB_X112_Y37_N12
\RAM_FSM|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|Selector7~0_combout\ = (\RAM_FSM|current_state.IDLE~q\ & (\RAM_FSM|contador\(2) $ (((\RAM_FSM|contador\(0) & \RAM_FSM|contador\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_FSM|contador\(0),
	datab => \RAM_FSM|current_state.IDLE~q\,
	datac => \RAM_FSM|contador\(2),
	datad => \RAM_FSM|contador\(1),
	combout => \RAM_FSM|Selector7~0_combout\);

-- Location: FF_X112_Y37_N13
\RAM_FSM|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|Selector7~0_combout\,
	ena => \RAM_FSM|contador[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|contador\(2));

-- Location: LCCOMB_X112_Y37_N26
\RAM_FSM|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|Equal1~0_combout\ = (!\RAM_FSM|contador\(2) & (\RAM_FSM|contador\(1) & (!\RAM_FSM|contador\(0) & \RAM_FSM|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_FSM|contador\(2),
	datab => \RAM_FSM|contador\(1),
	datac => \RAM_FSM|contador\(0),
	datad => \RAM_FSM|contador\(3),
	combout => \RAM_FSM|Equal1~0_combout\);

-- Location: LCCOMB_X111_Y37_N26
\RAM_FSM|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|Selector1~0_combout\ = (\RAM_FSM|Selector2~0_combout\ & (((\RAM_FSM|current_state.INIT_RD~q\ & !\RAM_FSM|Equal1~0_combout\)) # (!\Gral_FSM|RD_WR~q\))) # (!\RAM_FSM|Selector2~0_combout\ & (((\RAM_FSM|current_state.INIT_RD~q\ & 
-- !\RAM_FSM|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_FSM|Selector2~0_combout\,
	datab => \Gral_FSM|RD_WR~q\,
	datac => \RAM_FSM|current_state.INIT_RD~q\,
	datad => \RAM_FSM|Equal1~0_combout\,
	combout => \RAM_FSM|Selector1~0_combout\);

-- Location: FF_X111_Y37_N27
\RAM_FSM|current_state.INIT_RD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|Selector1~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|current_state.INIT_RD~q\);

-- Location: LCCOMB_X111_Y37_N4
\RAM_FSM|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|Selector3~0_combout\ = (\Gral_FSM|Ext_ready~q\ & (\RAM_FSM|current_state.INIT_RD~q\ & ((\RAM_FSM|Equal1~0_combout\)))) # (!\Gral_FSM|Ext_ready~q\ & ((\RAM_FSM|current_state.END_RD~q\) # ((\RAM_FSM|current_state.INIT_RD~q\ & 
-- \RAM_FSM|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|Ext_ready~q\,
	datab => \RAM_FSM|current_state.INIT_RD~q\,
	datac => \RAM_FSM|current_state.END_RD~q\,
	datad => \RAM_FSM|Equal1~0_combout\,
	combout => \RAM_FSM|Selector3~0_combout\);

-- Location: FF_X111_Y37_N5
\RAM_FSM|current_state.END_RD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|Selector3~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|current_state.END_RD~q\);

-- Location: LCCOMB_X111_Y37_N28
\RAM_FSM|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|Selector0~0_combout\ = (\Gral_FSM|Ext_ready~q\ & ((\RAM_FSM|current_state.END_RD~q\) # ((!\Gral_FSM|ENRD_WR~q\ & !\RAM_FSM|current_state.IDLE~q\)))) # (!\Gral_FSM|Ext_ready~q\ & (((!\Gral_FSM|ENRD_WR~q\ & !\RAM_FSM|current_state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|Ext_ready~q\,
	datab => \RAM_FSM|current_state.END_RD~q\,
	datac => \Gral_FSM|ENRD_WR~q\,
	datad => \RAM_FSM|current_state.IDLE~q\,
	combout => \RAM_FSM|Selector0~0_combout\);

-- Location: LCCOMB_X111_Y37_N22
\RAM_FSM|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|Selector4~0_combout\ = (\Gral_FSM|Ext_ready~q\ & ((\RAM_FSM|current_state.WAIT_WR~q\) # ((\RAM_FSM|current_state.END_WR~q\ & !\RAM_FSM|Equal1~0_combout\)))) # (!\Gral_FSM|Ext_ready~q\ & (((\RAM_FSM|current_state.END_WR~q\ & 
-- !\RAM_FSM|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|Ext_ready~q\,
	datab => \RAM_FSM|current_state.WAIT_WR~q\,
	datac => \RAM_FSM|current_state.END_WR~q\,
	datad => \RAM_FSM|Equal1~0_combout\,
	combout => \RAM_FSM|Selector4~0_combout\);

-- Location: FF_X111_Y37_N23
\RAM_FSM|current_state.END_WR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|Selector4~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|current_state.END_WR~q\);

-- Location: LCCOMB_X111_Y37_N24
\RAM_FSM|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|Selector0~1_combout\ = (!\RAM_FSM|Selector0~0_combout\ & ((!\RAM_FSM|Equal1~0_combout\) # (!\RAM_FSM|current_state.END_WR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_FSM|Selector0~0_combout\,
	datac => \RAM_FSM|current_state.END_WR~q\,
	datad => \RAM_FSM|Equal1~0_combout\,
	combout => \RAM_FSM|Selector0~1_combout\);

-- Location: FF_X111_Y37_N25
\RAM_FSM|current_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|Selector0~1_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|current_state.IDLE~q\);

-- Location: LCCOMB_X111_Y37_N10
\RAM_FSM|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|Selector2~0_combout\ = (\Gral_FSM|ENRD_WR~q\ & !\RAM_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gral_FSM|ENRD_WR~q\,
	datad => \RAM_FSM|current_state.IDLE~q\,
	combout => \RAM_FSM|Selector2~0_combout\);

-- Location: LCCOMB_X111_Y37_N12
\RAM_FSM|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|Selector2~1_combout\ = (\RAM_FSM|Selector2~0_combout\ & ((\Gral_FSM|RD_WR~q\) # ((\RAM_FSM|current_state.INIT_WR~q\ & !\RAM_FSM|Selector5~0_combout\)))) # (!\RAM_FSM|Selector2~0_combout\ & (((\RAM_FSM|current_state.INIT_WR~q\ & 
-- !\RAM_FSM|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_FSM|Selector2~0_combout\,
	datab => \Gral_FSM|RD_WR~q\,
	datac => \RAM_FSM|current_state.INIT_WR~q\,
	datad => \RAM_FSM|Selector5~0_combout\,
	combout => \RAM_FSM|Selector2~1_combout\);

-- Location: FF_X111_Y37_N13
\RAM_FSM|current_state.INIT_WR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|Selector2~1_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|current_state.INIT_WR~q\);

-- Location: LCCOMB_X111_Y37_N14
\RAM_FSM|WideOr7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|WideOr7~combout\ = (!\RAM_FSM|current_state.INIT_WR~q\ & (!\RAM_FSM|current_state.INIT_RD~q\ & \RAM_FSM|current_state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_FSM|current_state.INIT_WR~q\,
	datac => \RAM_FSM|current_state.INIT_RD~q\,
	datad => \RAM_FSM|current_state.IDLE~q\,
	combout => \RAM_FSM|WideOr7~combout\);

-- Location: FF_X109_Y38_N19
\RAM_FSM|Ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RAM_FSM|WideOr7~combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|Ready~q\);

-- Location: LCCOMB_X109_Y38_N12
\Gral_FSM|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector42~0_combout\ = (\Gral_FSM|current_state.INITWR~q\) # ((\Gral_FSM|current_state.ESPERAWR~q\ & !\RAM_FSM|Ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.ESPERAWR~q\,
	datab => \RAM_FSM|Ready~q\,
	datac => \Gral_FSM|current_state.INITWR~q\,
	combout => \Gral_FSM|Selector42~0_combout\);

-- Location: LCCOMB_X109_Y38_N8
\Gral_FSM|next_state.ESPERAWR_809\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|next_state.ESPERAWR_809~combout\ = (GLOBAL(\Gral_FSM|Selector46~0clkctrl_outclk\) & (\Gral_FSM|Selector42~0_combout\)) # (!GLOBAL(\Gral_FSM|Selector46~0clkctrl_outclk\) & ((\Gral_FSM|next_state.ESPERAWR_809~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|Selector42~0_combout\,
	datac => \Gral_FSM|next_state.ESPERAWR_809~combout\,
	datad => \Gral_FSM|Selector46~0clkctrl_outclk\,
	combout => \Gral_FSM|next_state.ESPERAWR_809~combout\);

-- Location: FF_X109_Y38_N9
\Gral_FSM|current_state.ESPERAWR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|next_state.ESPERAWR_809~combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|current_state.ESPERAWR~q\);

-- Location: LCCOMB_X109_Y38_N18
\Gral_FSM|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector41~0_combout\ = (\RAM_FSM|Ready~q\ & ((\Gral_FSM|current_state.ESPERAWR~q\) # (\Gral_FSM|current_state.LOADDATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.ESPERAWR~q\,
	datac => \RAM_FSM|Ready~q\,
	datad => \Gral_FSM|current_state.LOADDATA~q\,
	combout => \Gral_FSM|Selector41~0_combout\);

-- Location: LCCOMB_X109_Y38_N30
\Gral_FSM|next_state.LOADDATA_798\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|next_state.LOADDATA_798~combout\ = (GLOBAL(\Gral_FSM|Selector46~0clkctrl_outclk\) & (\Gral_FSM|Selector41~0_combout\)) # (!GLOBAL(\Gral_FSM|Selector46~0clkctrl_outclk\) & ((\Gral_FSM|next_state.LOADDATA_798~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|Selector41~0_combout\,
	datac => \Gral_FSM|next_state.LOADDATA_798~combout\,
	datad => \Gral_FSM|Selector46~0clkctrl_outclk\,
	combout => \Gral_FSM|next_state.LOADDATA_798~combout\);

-- Location: FF_X109_Y38_N31
\Gral_FSM|current_state.LOADDATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|next_state.LOADDATA_798~combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|current_state.LOADDATA~q\);

-- Location: LCCOMB_X109_Y38_N14
\Gral_FSM|Selector39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector39~2_combout\ = (\Gral_FSM|current_state.LOADDATA~q\ & !\RAM_FSM|Ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|current_state.LOADDATA~q\,
	datad => \RAM_FSM|Ready~q\,
	combout => \Gral_FSM|Selector39~2_combout\);

-- Location: LCCOMB_X108_Y38_N0
\Gral_FSM|Selector44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector44~1_combout\ = (\Gral_FSM|Selector44~0_combout\) # ((\Gral_FSM|Selector39~2_combout\ & ((!\Gral_FSM|Equal2~5_combout\) # (!\Gral_FSM|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|Equal2~0_combout\,
	datab => \Gral_FSM|Selector44~0_combout\,
	datac => \Gral_FSM|Selector39~2_combout\,
	datad => \Gral_FSM|Equal2~5_combout\,
	combout => \Gral_FSM|Selector44~1_combout\);

-- Location: LCCOMB_X108_Y38_N12
\Gral_FSM|next_state.INITWR_820\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|next_state.INITWR_820~combout\ = (GLOBAL(\Gral_FSM|Selector46~0clkctrl_outclk\) & ((\Gral_FSM|Selector44~1_combout\))) # (!GLOBAL(\Gral_FSM|Selector46~0clkctrl_outclk\) & (\Gral_FSM|next_state.INITWR_820~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|next_state.INITWR_820~combout\,
	datab => \Gral_FSM|Selector44~1_combout\,
	datad => \Gral_FSM|Selector46~0clkctrl_outclk\,
	combout => \Gral_FSM|next_state.INITWR_820~combout\);

-- Location: FF_X108_Y38_N13
\Gral_FSM|current_state.INITWR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|next_state.INITWR_820~combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|current_state.INITWR~q\);

-- Location: LCCOMB_X107_Y38_N2
\Gral_FSM|Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector24~1_combout\ = (\Gral_FSM|current_state.INITWR~q\) # (\Gral_FSM|current_state.INITRD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gral_FSM|current_state.INITWR~q\,
	datad => \Gral_FSM|current_state.INITRD~q\,
	combout => \Gral_FSM|Selector24~1_combout\);

-- Location: LCCOMB_X106_Y38_N6
\Gral_FSM|SetBotones~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|SetBotones~feeder_combout\ = \Gral_FSM|Selector24~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gral_FSM|Selector24~1_combout\,
	combout => \Gral_FSM|SetBotones~feeder_combout\);

-- Location: FF_X106_Y38_N7
\Gral_FSM|SetBotones\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|SetBotones~feeder_combout\,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|SetBotones~q\);

-- Location: FF_X107_Y38_N7
\RISING_BTS:1:BT|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_BOTONES[1]~input_o\,
	d => \RISING_BTS:1:BT|Q~feeder_combout\,
	clrn => \Gral_FSM|ALT_INV_SetBotones~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RISING_BTS:1:BT|Q~q\);

-- Location: LCCOMB_X107_Y38_N30
\Gral_FSM|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector46~0_combout\ = (\Gral_FSM|current_state.IDLE~q\) # ((!\RISING_BTS:2:BT|Q~q\ & (\RISING_BTS:1:BT|Q~q\ $ (\RISING_BTS:0:BT|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RISING_BTS:1:BT|Q~q\,
	datab => \Gral_FSM|current_state.IDLE~q\,
	datac => \RISING_BTS:2:BT|Q~q\,
	datad => \RISING_BTS:0:BT|Q~q\,
	combout => \Gral_FSM|Selector46~0_combout\);

-- Location: CLKCTRL_G8
\Gral_FSM|Selector46~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Gral_FSM|Selector46~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Gral_FSM|Selector46~0clkctrl_outclk\);

-- Location: LCCOMB_X108_Y37_N12
\Gral_FSM|next_state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|next_state~2_combout\ = (\Gral_FSM|current_state.BLINK_LED~q\) # (\Gral_FSM|current_state.PRENDERLED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gral_FSM|current_state.BLINK_LED~q\,
	datad => \Gral_FSM|current_state.PRENDERLED~q\,
	combout => \Gral_FSM|next_state~2_combout\);

-- Location: LCCOMB_X108_Y37_N0
\Gral_FSM|next_state.IDLE_831\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|next_state.IDLE_831~combout\ = (GLOBAL(\Gral_FSM|Selector46~0clkctrl_outclk\) & ((\Gral_FSM|next_state~2_combout\))) # (!GLOBAL(\Gral_FSM|Selector46~0clkctrl_outclk\) & (\Gral_FSM|next_state.IDLE_831~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|next_state.IDLE_831~combout\,
	datac => \Gral_FSM|Selector46~0clkctrl_outclk\,
	datad => \Gral_FSM|next_state~2_combout\,
	combout => \Gral_FSM|next_state.IDLE_831~combout\);

-- Location: LCCOMB_X109_Y38_N24
\Gral_FSM|current_state.IDLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|current_state.IDLE~0_combout\ = !\Gral_FSM|next_state.IDLE_831~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gral_FSM|next_state.IDLE_831~combout\,
	combout => \Gral_FSM|current_state.IDLE~0_combout\);

-- Location: FF_X109_Y38_N25
\Gral_FSM|current_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Gral_FSM|current_state.IDLE~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|current_state.IDLE~q\);

-- Location: LCCOMB_X110_Y38_N0
\Gral_FSM|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector19~0_combout\ = (\Gral_FSM|direccion\(0) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gral_FSM|direccion\(0),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector19~0_combout\);

-- Location: FF_X110_Y38_N13
\Gral_FSM|direccion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[0]~20_combout\,
	asdata => \Gral_FSM|Selector19~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(0));

-- Location: LCCOMB_X110_Y36_N24
\REG_ADDR:0:MUX_ADDR|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_ADDR:0:MUX_ADDR|Mux0~0_combout\ = (\Gral_FSM|ADDR_SEL~q\ & ((!\LFSR|LFSR:0:i0:bit0|Q~q\))) # (!\Gral_FSM|ADDR_SEL~q\ & (\Gral_FSM|direccion\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(0),
	datac => \LFSR|LFSR:0:i0:bit0|Q~q\,
	datad => \Gral_FSM|ADDR_SEL~q\,
	combout => \REG_ADDR:0:MUX_ADDR|Mux0~0_combout\);

-- Location: LCCOMB_X109_Y38_N2
\Gral_FSM|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector23~0_combout\ = (\Gral_FSM|current_state.PRENDERLED~q\) # ((!\Gral_FSM|current_state.INITRD~q\ & (\Gral_FSM|LED_FinWR~q\ & !\Gral_FSM|current_state.INITWR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.INITRD~q\,
	datab => \Gral_FSM|current_state.PRENDERLED~q\,
	datac => \Gral_FSM|LED_FinWR~q\,
	datad => \Gral_FSM|current_state.INITWR~q\,
	combout => \Gral_FSM|Selector23~0_combout\);

-- Location: FF_X109_Y38_N3
\Gral_FSM|LED_FinWR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|Selector23~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|LED_FinWR~q\);

-- Location: LCCOMB_X89_Y35_N4
\Gen1HZ|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~0_combout\ = \Gen1HZ|count\(0) $ (VCC)
-- \Gen1HZ|Add0~1\ = CARRY(\Gen1HZ|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gen1HZ|count\(0),
	datad => VCC,
	combout => \Gen1HZ|Add0~0_combout\,
	cout => \Gen1HZ|Add0~1\);

-- Location: FF_X89_Y35_N5
\Gen1HZ|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(0));

-- Location: LCCOMB_X89_Y35_N6
\Gen1HZ|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~2_combout\ = (\Gen1HZ|count\(1) & (!\Gen1HZ|Add0~1\)) # (!\Gen1HZ|count\(1) & ((\Gen1HZ|Add0~1\) # (GND)))
-- \Gen1HZ|Add0~3\ = CARRY((!\Gen1HZ|Add0~1\) # (!\Gen1HZ|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(1),
	datad => VCC,
	cin => \Gen1HZ|Add0~1\,
	combout => \Gen1HZ|Add0~2_combout\,
	cout => \Gen1HZ|Add0~3\);

-- Location: FF_X89_Y35_N7
\Gen1HZ|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(1));

-- Location: LCCOMB_X89_Y35_N8
\Gen1HZ|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~4_combout\ = (\Gen1HZ|count\(2) & (\Gen1HZ|Add0~3\ $ (GND))) # (!\Gen1HZ|count\(2) & (!\Gen1HZ|Add0~3\ & VCC))
-- \Gen1HZ|Add0~5\ = CARRY((\Gen1HZ|count\(2) & !\Gen1HZ|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gen1HZ|count\(2),
	datad => VCC,
	cin => \Gen1HZ|Add0~3\,
	combout => \Gen1HZ|Add0~4_combout\,
	cout => \Gen1HZ|Add0~5\);

-- Location: FF_X89_Y35_N9
\Gen1HZ|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(2));

-- Location: LCCOMB_X89_Y35_N10
\Gen1HZ|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~6_combout\ = (\Gen1HZ|count\(3) & (!\Gen1HZ|Add0~5\)) # (!\Gen1HZ|count\(3) & ((\Gen1HZ|Add0~5\) # (GND)))
-- \Gen1HZ|Add0~7\ = CARRY((!\Gen1HZ|Add0~5\) # (!\Gen1HZ|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(3),
	datad => VCC,
	cin => \Gen1HZ|Add0~5\,
	combout => \Gen1HZ|Add0~6_combout\,
	cout => \Gen1HZ|Add0~7\);

-- Location: FF_X89_Y35_N11
\Gen1HZ|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~6_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(3));

-- Location: LCCOMB_X89_Y35_N12
\Gen1HZ|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~8_combout\ = (\Gen1HZ|count\(4) & (\Gen1HZ|Add0~7\ $ (GND))) # (!\Gen1HZ|count\(4) & (!\Gen1HZ|Add0~7\ & VCC))
-- \Gen1HZ|Add0~9\ = CARRY((\Gen1HZ|count\(4) & !\Gen1HZ|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(4),
	datad => VCC,
	cin => \Gen1HZ|Add0~7\,
	combout => \Gen1HZ|Add0~8_combout\,
	cout => \Gen1HZ|Add0~9\);

-- Location: FF_X89_Y35_N13
\Gen1HZ|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~8_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(4));

-- Location: LCCOMB_X89_Y35_N14
\Gen1HZ|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~10_combout\ = (\Gen1HZ|count\(5) & (!\Gen1HZ|Add0~9\)) # (!\Gen1HZ|count\(5) & ((\Gen1HZ|Add0~9\) # (GND)))
-- \Gen1HZ|Add0~11\ = CARRY((!\Gen1HZ|Add0~9\) # (!\Gen1HZ|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gen1HZ|count\(5),
	datad => VCC,
	cin => \Gen1HZ|Add0~9\,
	combout => \Gen1HZ|Add0~10_combout\,
	cout => \Gen1HZ|Add0~11\);

-- Location: FF_X89_Y35_N15
\Gen1HZ|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~10_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(5));

-- Location: LCCOMB_X89_Y35_N16
\Gen1HZ|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~12_combout\ = (\Gen1HZ|count\(6) & (\Gen1HZ|Add0~11\ $ (GND))) # (!\Gen1HZ|count\(6) & (!\Gen1HZ|Add0~11\ & VCC))
-- \Gen1HZ|Add0~13\ = CARRY((\Gen1HZ|count\(6) & !\Gen1HZ|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(6),
	datad => VCC,
	cin => \Gen1HZ|Add0~11\,
	combout => \Gen1HZ|Add0~12_combout\,
	cout => \Gen1HZ|Add0~13\);

-- Location: LCCOMB_X90_Y34_N14
\Gen1HZ|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|count~7_combout\ = (\Gen1HZ|Add0~12_combout\ & !\Gen1HZ|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gen1HZ|Add0~12_combout\,
	datad => \Gen1HZ|Equal0~9_combout\,
	combout => \Gen1HZ|count~7_combout\);

-- Location: FF_X90_Y34_N15
\Gen1HZ|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|count~7_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(6));

-- Location: LCCOMB_X89_Y35_N18
\Gen1HZ|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~14_combout\ = (\Gen1HZ|count\(7) & (!\Gen1HZ|Add0~13\)) # (!\Gen1HZ|count\(7) & ((\Gen1HZ|Add0~13\) # (GND)))
-- \Gen1HZ|Add0~15\ = CARRY((!\Gen1HZ|Add0~13\) # (!\Gen1HZ|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gen1HZ|count\(7),
	datad => VCC,
	cin => \Gen1HZ|Add0~13\,
	combout => \Gen1HZ|Add0~14_combout\,
	cout => \Gen1HZ|Add0~15\);

-- Location: FF_X89_Y35_N19
\Gen1HZ|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~14_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(7));

-- Location: LCCOMB_X89_Y35_N20
\Gen1HZ|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~16_combout\ = (\Gen1HZ|count\(8) & (\Gen1HZ|Add0~15\ $ (GND))) # (!\Gen1HZ|count\(8) & (!\Gen1HZ|Add0~15\ & VCC))
-- \Gen1HZ|Add0~17\ = CARRY((\Gen1HZ|count\(8) & !\Gen1HZ|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gen1HZ|count\(8),
	datad => VCC,
	cin => \Gen1HZ|Add0~15\,
	combout => \Gen1HZ|Add0~16_combout\,
	cout => \Gen1HZ|Add0~17\);

-- Location: LCCOMB_X89_Y35_N2
\Gen1HZ|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|count~6_combout\ = (\Gen1HZ|Add0~16_combout\ & !\Gen1HZ|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gen1HZ|Add0~16_combout\,
	datad => \Gen1HZ|Equal0~9_combout\,
	combout => \Gen1HZ|count~6_combout\);

-- Location: FF_X89_Y35_N3
\Gen1HZ|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|count~6_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(8));

-- Location: LCCOMB_X90_Y34_N12
\Gen1HZ|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Equal0~6_combout\ = (\Gen1HZ|count\(5) & (!\Gen1HZ|count\(6) & (!\Gen1HZ|count\(7) & \Gen1HZ|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(5),
	datab => \Gen1HZ|count\(6),
	datac => \Gen1HZ|count\(7),
	datad => \Gen1HZ|count\(8),
	combout => \Gen1HZ|Equal0~6_combout\);

-- Location: LCCOMB_X89_Y35_N22
\Gen1HZ|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~18_combout\ = (\Gen1HZ|count\(9) & (!\Gen1HZ|Add0~17\)) # (!\Gen1HZ|count\(9) & ((\Gen1HZ|Add0~17\) # (GND)))
-- \Gen1HZ|Add0~19\ = CARRY((!\Gen1HZ|Add0~17\) # (!\Gen1HZ|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gen1HZ|count\(9),
	datad => VCC,
	cin => \Gen1HZ|Add0~17\,
	combout => \Gen1HZ|Add0~18_combout\,
	cout => \Gen1HZ|Add0~19\);

-- Location: LCCOMB_X90_Y34_N6
\Gen1HZ|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|count~5_combout\ = (\Gen1HZ|Add0~18_combout\ & !\Gen1HZ|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gen1HZ|Add0~18_combout\,
	datad => \Gen1HZ|Equal0~9_combout\,
	combout => \Gen1HZ|count~5_combout\);

-- Location: FF_X90_Y34_N7
\Gen1HZ|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|count~5_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(9));

-- Location: LCCOMB_X89_Y35_N24
\Gen1HZ|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~20_combout\ = (\Gen1HZ|count\(10) & (\Gen1HZ|Add0~19\ $ (GND))) # (!\Gen1HZ|count\(10) & (!\Gen1HZ|Add0~19\ & VCC))
-- \Gen1HZ|Add0~21\ = CARRY((\Gen1HZ|count\(10) & !\Gen1HZ|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gen1HZ|count\(10),
	datad => VCC,
	cin => \Gen1HZ|Add0~19\,
	combout => \Gen1HZ|Add0~20_combout\,
	cout => \Gen1HZ|Add0~21\);

-- Location: FF_X89_Y35_N25
\Gen1HZ|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~20_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(10));

-- Location: LCCOMB_X89_Y35_N26
\Gen1HZ|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~22_combout\ = (\Gen1HZ|count\(11) & (!\Gen1HZ|Add0~21\)) # (!\Gen1HZ|count\(11) & ((\Gen1HZ|Add0~21\) # (GND)))
-- \Gen1HZ|Add0~23\ = CARRY((!\Gen1HZ|Add0~21\) # (!\Gen1HZ|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gen1HZ|count\(11),
	datad => VCC,
	cin => \Gen1HZ|Add0~21\,
	combout => \Gen1HZ|Add0~22_combout\,
	cout => \Gen1HZ|Add0~23\);

-- Location: LCCOMB_X89_Y35_N0
\Gen1HZ|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|count~4_combout\ = (\Gen1HZ|Add0~22_combout\ & !\Gen1HZ|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gen1HZ|Add0~22_combout\,
	datad => \Gen1HZ|Equal0~9_combout\,
	combout => \Gen1HZ|count~4_combout\);

-- Location: FF_X89_Y35_N1
\Gen1HZ|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|count~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(11));

-- Location: LCCOMB_X89_Y35_N28
\Gen1HZ|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~24_combout\ = (\Gen1HZ|count\(12) & (\Gen1HZ|Add0~23\ $ (GND))) # (!\Gen1HZ|count\(12) & (!\Gen1HZ|Add0~23\ & VCC))
-- \Gen1HZ|Add0~25\ = CARRY((\Gen1HZ|count\(12) & !\Gen1HZ|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gen1HZ|count\(12),
	datad => VCC,
	cin => \Gen1HZ|Add0~23\,
	combout => \Gen1HZ|Add0~24_combout\,
	cout => \Gen1HZ|Add0~25\);

-- Location: FF_X89_Y35_N29
\Gen1HZ|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~24_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(12));

-- Location: LCCOMB_X90_Y34_N16
\Gen1HZ|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Equal0~5_combout\ = (\Gen1HZ|count\(9) & (!\Gen1HZ|count\(12) & (\Gen1HZ|count\(11) & !\Gen1HZ|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(9),
	datab => \Gen1HZ|count\(12),
	datac => \Gen1HZ|count\(11),
	datad => \Gen1HZ|count\(10),
	combout => \Gen1HZ|Equal0~5_combout\);

-- Location: LCCOMB_X89_Y35_N30
\Gen1HZ|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~26_combout\ = (\Gen1HZ|count\(13) & (!\Gen1HZ|Add0~25\)) # (!\Gen1HZ|count\(13) & ((\Gen1HZ|Add0~25\) # (GND)))
-- \Gen1HZ|Add0~27\ = CARRY((!\Gen1HZ|Add0~25\) # (!\Gen1HZ|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(13),
	datad => VCC,
	cin => \Gen1HZ|Add0~25\,
	combout => \Gen1HZ|Add0~26_combout\,
	cout => \Gen1HZ|Add0~27\);

-- Location: FF_X89_Y35_N31
\Gen1HZ|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~26_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(13));

-- Location: LCCOMB_X89_Y34_N0
\Gen1HZ|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~28_combout\ = (\Gen1HZ|count\(14) & (\Gen1HZ|Add0~27\ $ (GND))) # (!\Gen1HZ|count\(14) & (!\Gen1HZ|Add0~27\ & VCC))
-- \Gen1HZ|Add0~29\ = CARRY((\Gen1HZ|count\(14) & !\Gen1HZ|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(14),
	datad => VCC,
	cin => \Gen1HZ|Add0~27\,
	combout => \Gen1HZ|Add0~28_combout\,
	cout => \Gen1HZ|Add0~29\);

-- Location: LCCOMB_X90_Y34_N4
\Gen1HZ|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|count~3_combout\ = (\Gen1HZ|Add0~28_combout\ & !\Gen1HZ|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gen1HZ|Add0~28_combout\,
	datad => \Gen1HZ|Equal0~9_combout\,
	combout => \Gen1HZ|count~3_combout\);

-- Location: FF_X90_Y34_N5
\Gen1HZ|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|count~3_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(14));

-- Location: LCCOMB_X89_Y34_N2
\Gen1HZ|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~30_combout\ = (\Gen1HZ|count\(15) & (!\Gen1HZ|Add0~29\)) # (!\Gen1HZ|count\(15) & ((\Gen1HZ|Add0~29\) # (GND)))
-- \Gen1HZ|Add0~31\ = CARRY((!\Gen1HZ|Add0~29\) # (!\Gen1HZ|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gen1HZ|count\(15),
	datad => VCC,
	cin => \Gen1HZ|Add0~29\,
	combout => \Gen1HZ|Add0~30_combout\,
	cout => \Gen1HZ|Add0~31\);

-- Location: FF_X89_Y34_N3
\Gen1HZ|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~30_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(15));

-- Location: LCCOMB_X89_Y34_N4
\Gen1HZ|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~32_combout\ = (\Gen1HZ|count\(16) & (\Gen1HZ|Add0~31\ $ (GND))) # (!\Gen1HZ|count\(16) & (!\Gen1HZ|Add0~31\ & VCC))
-- \Gen1HZ|Add0~33\ = CARRY((\Gen1HZ|count\(16) & !\Gen1HZ|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gen1HZ|count\(16),
	datad => VCC,
	cin => \Gen1HZ|Add0~31\,
	combout => \Gen1HZ|Add0~32_combout\,
	cout => \Gen1HZ|Add0~33\);

-- Location: FF_X89_Y34_N5
\Gen1HZ|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~32_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(16));

-- Location: LCCOMB_X89_Y34_N6
\Gen1HZ|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~34_combout\ = (\Gen1HZ|count\(17) & (!\Gen1HZ|Add0~33\)) # (!\Gen1HZ|count\(17) & ((\Gen1HZ|Add0~33\) # (GND)))
-- \Gen1HZ|Add0~35\ = CARRY((!\Gen1HZ|Add0~33\) # (!\Gen1HZ|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(17),
	datad => VCC,
	cin => \Gen1HZ|Add0~33\,
	combout => \Gen1HZ|Add0~34_combout\,
	cout => \Gen1HZ|Add0~35\);

-- Location: FF_X89_Y34_N7
\Gen1HZ|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~34_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(17));

-- Location: LCCOMB_X89_Y34_N8
\Gen1HZ|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~36_combout\ = (\Gen1HZ|count\(18) & (\Gen1HZ|Add0~35\ $ (GND))) # (!\Gen1HZ|count\(18) & (!\Gen1HZ|Add0~35\ & VCC))
-- \Gen1HZ|Add0~37\ = CARRY((\Gen1HZ|count\(18) & !\Gen1HZ|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gen1HZ|count\(18),
	datad => VCC,
	cin => \Gen1HZ|Add0~35\,
	combout => \Gen1HZ|Add0~36_combout\,
	cout => \Gen1HZ|Add0~37\);

-- Location: LCCOMB_X90_Y34_N0
\Gen1HZ|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|count~2_combout\ = (!\Gen1HZ|Equal0~9_combout\ & \Gen1HZ|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gen1HZ|Equal0~9_combout\,
	datad => \Gen1HZ|Add0~36_combout\,
	combout => \Gen1HZ|count~2_combout\);

-- Location: FF_X90_Y34_N1
\Gen1HZ|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|count~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(18));

-- Location: LCCOMB_X89_Y34_N10
\Gen1HZ|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~38_combout\ = (\Gen1HZ|count\(19) & (!\Gen1HZ|Add0~37\)) # (!\Gen1HZ|count\(19) & ((\Gen1HZ|Add0~37\) # (GND)))
-- \Gen1HZ|Add0~39\ = CARRY((!\Gen1HZ|Add0~37\) # (!\Gen1HZ|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(19),
	datad => VCC,
	cin => \Gen1HZ|Add0~37\,
	combout => \Gen1HZ|Add0~38_combout\,
	cout => \Gen1HZ|Add0~39\);

-- Location: LCCOMB_X89_Y34_N30
\Gen1HZ|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|count~1_combout\ = (!\Gen1HZ|Equal0~9_combout\ & \Gen1HZ|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gen1HZ|Equal0~9_combout\,
	datad => \Gen1HZ|Add0~38_combout\,
	combout => \Gen1HZ|count~1_combout\);

-- Location: FF_X89_Y34_N31
\Gen1HZ|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|count~1_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(19));

-- Location: LCCOMB_X89_Y34_N12
\Gen1HZ|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~40_combout\ = (\Gen1HZ|count\(20) & (\Gen1HZ|Add0~39\ $ (GND))) # (!\Gen1HZ|count\(20) & (!\Gen1HZ|Add0~39\ & VCC))
-- \Gen1HZ|Add0~41\ = CARRY((\Gen1HZ|count\(20) & !\Gen1HZ|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(20),
	datad => VCC,
	cin => \Gen1HZ|Add0~39\,
	combout => \Gen1HZ|Add0~40_combout\,
	cout => \Gen1HZ|Add0~41\);

-- Location: FF_X89_Y34_N13
\Gen1HZ|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~40_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(20));

-- Location: LCCOMB_X89_Y34_N14
\Gen1HZ|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~42_combout\ = (\Gen1HZ|count\(21) & (!\Gen1HZ|Add0~41\)) # (!\Gen1HZ|count\(21) & ((\Gen1HZ|Add0~41\) # (GND)))
-- \Gen1HZ|Add0~43\ = CARRY((!\Gen1HZ|Add0~41\) # (!\Gen1HZ|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gen1HZ|count\(21),
	datad => VCC,
	cin => \Gen1HZ|Add0~41\,
	combout => \Gen1HZ|Add0~42_combout\,
	cout => \Gen1HZ|Add0~43\);

-- Location: FF_X89_Y34_N15
\Gen1HZ|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~42_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(21));

-- Location: LCCOMB_X89_Y34_N16
\Gen1HZ|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~44_combout\ = (\Gen1HZ|count\(22) & (\Gen1HZ|Add0~43\ $ (GND))) # (!\Gen1HZ|count\(22) & (!\Gen1HZ|Add0~43\ & VCC))
-- \Gen1HZ|Add0~45\ = CARRY((\Gen1HZ|count\(22) & !\Gen1HZ|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gen1HZ|count\(22),
	datad => VCC,
	cin => \Gen1HZ|Add0~43\,
	combout => \Gen1HZ|Add0~44_combout\,
	cout => \Gen1HZ|Add0~45\);

-- Location: LCCOMB_X90_Y34_N24
\Gen1HZ|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|count~0_combout\ = (\Gen1HZ|Add0~44_combout\ & !\Gen1HZ|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gen1HZ|Add0~44_combout\,
	datad => \Gen1HZ|Equal0~9_combout\,
	combout => \Gen1HZ|count~0_combout\);

-- Location: FF_X90_Y34_N25
\Gen1HZ|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|count~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(22));

-- Location: LCCOMB_X89_Y34_N18
\Gen1HZ|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~46_combout\ = (\Gen1HZ|count\(23) & (!\Gen1HZ|Add0~45\)) # (!\Gen1HZ|count\(23) & ((\Gen1HZ|Add0~45\) # (GND)))
-- \Gen1HZ|Add0~47\ = CARRY((!\Gen1HZ|Add0~45\) # (!\Gen1HZ|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gen1HZ|count\(23),
	datad => VCC,
	cin => \Gen1HZ|Add0~45\,
	combout => \Gen1HZ|Add0~46_combout\,
	cout => \Gen1HZ|Add0~47\);

-- Location: FF_X89_Y34_N19
\Gen1HZ|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~46_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(23));

-- Location: LCCOMB_X89_Y34_N20
\Gen1HZ|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~48_combout\ = (\Gen1HZ|count\(24) & (\Gen1HZ|Add0~47\ $ (GND))) # (!\Gen1HZ|count\(24) & (!\Gen1HZ|Add0~47\ & VCC))
-- \Gen1HZ|Add0~49\ = CARRY((\Gen1HZ|count\(24) & !\Gen1HZ|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gen1HZ|count\(24),
	datad => VCC,
	cin => \Gen1HZ|Add0~47\,
	combout => \Gen1HZ|Add0~48_combout\,
	cout => \Gen1HZ|Add0~49\);

-- Location: FF_X89_Y34_N21
\Gen1HZ|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~48_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(24));

-- Location: LCCOMB_X89_Y34_N22
\Gen1HZ|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~50_combout\ = (\Gen1HZ|count\(25) & (!\Gen1HZ|Add0~49\)) # (!\Gen1HZ|count\(25) & ((\Gen1HZ|Add0~49\) # (GND)))
-- \Gen1HZ|Add0~51\ = CARRY((!\Gen1HZ|Add0~49\) # (!\Gen1HZ|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(25),
	datad => VCC,
	cin => \Gen1HZ|Add0~49\,
	combout => \Gen1HZ|Add0~50_combout\,
	cout => \Gen1HZ|Add0~51\);

-- Location: FF_X89_Y34_N23
\Gen1HZ|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~50_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(25));

-- Location: LCCOMB_X89_Y34_N24
\Gen1HZ|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~52_combout\ = (\Gen1HZ|count\(26) & (\Gen1HZ|Add0~51\ $ (GND))) # (!\Gen1HZ|count\(26) & (!\Gen1HZ|Add0~51\ & VCC))
-- \Gen1HZ|Add0~53\ = CARRY((\Gen1HZ|count\(26) & !\Gen1HZ|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gen1HZ|count\(26),
	datad => VCC,
	cin => \Gen1HZ|Add0~51\,
	combout => \Gen1HZ|Add0~52_combout\,
	cout => \Gen1HZ|Add0~53\);

-- Location: FF_X89_Y34_N25
\Gen1HZ|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~52_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(26));

-- Location: LCCOMB_X89_Y34_N26
\Gen1HZ|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~54_combout\ = (\Gen1HZ|count\(27) & (!\Gen1HZ|Add0~53\)) # (!\Gen1HZ|count\(27) & ((\Gen1HZ|Add0~53\) # (GND)))
-- \Gen1HZ|Add0~55\ = CARRY((!\Gen1HZ|Add0~53\) # (!\Gen1HZ|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(27),
	datad => VCC,
	cin => \Gen1HZ|Add0~53\,
	combout => \Gen1HZ|Add0~54_combout\,
	cout => \Gen1HZ|Add0~55\);

-- Location: FF_X89_Y34_N27
\Gen1HZ|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~54_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(27));

-- Location: LCCOMB_X89_Y34_N28
\Gen1HZ|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~56_combout\ = \Gen1HZ|Add0~55\ $ (!\Gen1HZ|count\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Gen1HZ|count\(28),
	cin => \Gen1HZ|Add0~55\,
	combout => \Gen1HZ|Add0~56_combout\);

-- Location: FF_X89_Y34_N29
\Gen1HZ|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~56_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(28));

-- Location: LCCOMB_X90_Y34_N22
\Gen1HZ|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Equal0~0_combout\ = (!\Gen1HZ|count\(28) & (!\Gen1HZ|count\(26) & (!\Gen1HZ|count\(27) & !\Gen1HZ|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(28),
	datab => \Gen1HZ|count\(26),
	datac => \Gen1HZ|count\(27),
	datad => \Gen1HZ|count\(25),
	combout => \Gen1HZ|Equal0~0_combout\);

-- Location: LCCOMB_X90_Y34_N18
\Gen1HZ|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Equal0~2_combout\ = (!\Gen1HZ|count\(20) & (\Gen1HZ|count\(19) & (!\Gen1HZ|count\(17) & \Gen1HZ|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(20),
	datab => \Gen1HZ|count\(19),
	datac => \Gen1HZ|count\(17),
	datad => \Gen1HZ|count\(18),
	combout => \Gen1HZ|Equal0~2_combout\);

-- Location: LCCOMB_X90_Y34_N30
\Gen1HZ|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Equal0~1_combout\ = (!\Gen1HZ|count\(21) & (\Gen1HZ|count\(22) & (!\Gen1HZ|count\(23) & !\Gen1HZ|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(21),
	datab => \Gen1HZ|count\(22),
	datac => \Gen1HZ|count\(23),
	datad => \Gen1HZ|count\(24),
	combout => \Gen1HZ|Equal0~1_combout\);

-- Location: LCCOMB_X90_Y34_N2
\Gen1HZ|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Equal0~3_combout\ = (!\Gen1HZ|count\(15) & (!\Gen1HZ|count\(16) & (\Gen1HZ|count\(14) & !\Gen1HZ|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(15),
	datab => \Gen1HZ|count\(16),
	datac => \Gen1HZ|count\(14),
	datad => \Gen1HZ|count\(13),
	combout => \Gen1HZ|Equal0~3_combout\);

-- Location: LCCOMB_X90_Y34_N8
\Gen1HZ|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Equal0~4_combout\ = (\Gen1HZ|Equal0~0_combout\ & (\Gen1HZ|Equal0~2_combout\ & (\Gen1HZ|Equal0~1_combout\ & \Gen1HZ|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|Equal0~0_combout\,
	datab => \Gen1HZ|Equal0~2_combout\,
	datac => \Gen1HZ|Equal0~1_combout\,
	datad => \Gen1HZ|Equal0~3_combout\,
	combout => \Gen1HZ|Equal0~4_combout\);

-- Location: LCCOMB_X90_Y35_N8
\Gen1HZ|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Equal0~7_combout\ = (\Gen1HZ|count\(1) & \Gen1HZ|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gen1HZ|count\(1),
	datad => \Gen1HZ|count\(2),
	combout => \Gen1HZ|Equal0~7_combout\);

-- Location: LCCOMB_X90_Y34_N10
\Gen1HZ|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Equal0~8_combout\ = (\Gen1HZ|count\(3) & (\Gen1HZ|count\(0) & (\Gen1HZ|count\(4) & \Gen1HZ|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(3),
	datab => \Gen1HZ|count\(0),
	datac => \Gen1HZ|count\(4),
	datad => \Gen1HZ|Equal0~7_combout\,
	combout => \Gen1HZ|Equal0~8_combout\);

-- Location: LCCOMB_X90_Y34_N20
\Gen1HZ|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Equal0~9_combout\ = (\Gen1HZ|Equal0~6_combout\ & (\Gen1HZ|Equal0~5_combout\ & (\Gen1HZ|Equal0~4_combout\ & \Gen1HZ|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|Equal0~6_combout\,
	datab => \Gen1HZ|Equal0~5_combout\,
	datac => \Gen1HZ|Equal0~4_combout\,
	datad => \Gen1HZ|Equal0~8_combout\,
	combout => \Gen1HZ|Equal0~9_combout\);

-- Location: LCCOMB_X90_Y34_N28
\Gen1HZ|Clk_aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Clk_aux~0_combout\ = \Gen1HZ|Clk_aux~q\ $ (\Gen1HZ|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gen1HZ|Clk_aux~q\,
	datad => \Gen1HZ|Equal0~9_combout\,
	combout => \Gen1HZ|Clk_aux~0_combout\);

-- Location: FF_X90_Y34_N29
\Gen1HZ|Clk_aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Clk_aux~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|Clk_aux~q\);

-- Location: LCCOMB_X109_Y38_N10
\Gral_FSM|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector24~0_combout\ = (\Gral_FSM|current_state.BLINK_LED~q\) # ((!\Gral_FSM|current_state.INITRD~q\ & (!\Gral_FSM|current_state.INITWR~q\ & \Gral_FSM|LED_RD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.INITRD~q\,
	datab => \Gral_FSM|current_state.INITWR~q\,
	datac => \Gral_FSM|LED_RD~q\,
	datad => \Gral_FSM|current_state.BLINK_LED~q\,
	combout => \Gral_FSM|Selector24~0_combout\);

-- Location: FF_X109_Y38_N11
\Gral_FSM|LED_RD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|Selector24~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|LED_RD~q\);

-- Location: FF_X109_Y38_N1
\LEDRD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Gen1HZ|Clk_aux~q\,
	clrn => \Gral_FSM|ALT_INV_LED_RD~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDRD|Q~q\);

-- Location: LCCOMB_X108_Y36_N20
\Gral_FSM|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector27~0_combout\ = (\Gral_FSM|current_state.ERROR_DATO~q\) # ((\Gral_FSM|EN_7Segm~q\ & !\Gral_FSM|current_state.FINRD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.ERROR_DATO~q\,
	datac => \Gral_FSM|EN_7Segm~q\,
	datad => \Gral_FSM|current_state.FINRD~q\,
	combout => \Gral_FSM|Selector27~0_combout\);

-- Location: FF_X108_Y36_N21
\Gral_FSM|EN_7Segm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|Selector27~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|EN_7Segm~q\);

-- Location: LCCOMB_X111_Y37_N16
\RAM_FSM|WideOr6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|WideOr6~combout\ = (\RAM_FSM|current_state.IDLE~q\ & (!\RAM_FSM|current_state.END_RD~q\ & !\RAM_FSM|current_state.INIT_RD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_FSM|current_state.IDLE~q\,
	datac => \RAM_FSM|current_state.END_RD~q\,
	datad => \RAM_FSM|current_state.INIT_RD~q\,
	combout => \RAM_FSM|WideOr6~combout\);

-- Location: FF_X111_Y37_N17
\RAM_FSM|WE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|WideOr6~combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|WE~q\);

-- Location: LCCOMB_X112_Y37_N4
\RAM_FSM|CE~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|CE~feeder_combout\ = \RAM_FSM|current_state.IDLE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RAM_FSM|current_state.IDLE~q\,
	combout => \RAM_FSM|CE~feeder_combout\);

-- Location: FF_X112_Y37_N5
\RAM_FSM|CE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|CE~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|CE~q\);

-- Location: LCCOMB_X111_Y37_N18
\RAM_FSM|OE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|OE~0_combout\ = (\RAM_FSM|current_state.END_RD~q\) # (\RAM_FSM|current_state.INIT_RD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_FSM|current_state.END_RD~q\,
	datac => \RAM_FSM|current_state.INIT_RD~q\,
	combout => \RAM_FSM|OE~0_combout\);

-- Location: FF_X111_Y37_N19
\RAM_FSM|OE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|OE~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|OE~q\);

-- Location: FF_X110_Y36_N7
\ADDR_TO_7SEG|DATAOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_ADDR:3:MUX_ADDR|Mux0~0_combout\,
	ena => \Gral_FSM|EN_7Segm~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADDR_TO_7SEG|DATAOUT\(3));

-- Location: FF_X110_Y36_N1
\ADDR_TO_7SEG|DATAOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_ADDR:2:MUX_ADDR|Mux0~0_combout\,
	ena => \Gral_FSM|EN_7Segm~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADDR_TO_7SEG|DATAOUT\(2));

-- Location: FF_X110_Y36_N15
\ADDR_TO_7SEG|DATAOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_ADDR:1:MUX_ADDR|Mux0~0_combout\,
	ena => \Gral_FSM|EN_7Segm~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADDR_TO_7SEG|DATAOUT\(1));

-- Location: LCCOMB_X110_Y36_N18
\ADDR_TO_7SEG|DATAOUT[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADDR_TO_7SEG|DATAOUT[0]~feeder_combout\ = \REG_ADDR:0:MUX_ADDR|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \REG_ADDR:0:MUX_ADDR|Mux0~0_combout\,
	combout => \ADDR_TO_7SEG|DATAOUT[0]~feeder_combout\);

-- Location: FF_X110_Y36_N19
\ADDR_TO_7SEG|DATAOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ADDR_TO_7SEG|DATAOUT[0]~feeder_combout\,
	ena => \Gral_FSM|EN_7Segm~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADDR_TO_7SEG|DATAOUT\(0));

-- Location: LCCOMB_X110_Y36_N20
\DISP0OUT|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP0OUT|Mux6~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(3) & (\ADDR_TO_7SEG|DATAOUT\(0) & (\ADDR_TO_7SEG|DATAOUT\(2) $ (\ADDR_TO_7SEG|DATAOUT\(1))))) # (!\ADDR_TO_7SEG|DATAOUT\(3) & (!\ADDR_TO_7SEG|DATAOUT\(1) & (\ADDR_TO_7SEG|DATAOUT\(2) $ 
-- (\ADDR_TO_7SEG|DATAOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(3),
	datab => \ADDR_TO_7SEG|DATAOUT\(2),
	datac => \ADDR_TO_7SEG|DATAOUT\(1),
	datad => \ADDR_TO_7SEG|DATAOUT\(0),
	combout => \DISP0OUT|Mux6~0_combout\);

-- Location: LCCOMB_X110_Y36_N2
\DISP0OUT|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP0OUT|Mux5~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(3) & ((\ADDR_TO_7SEG|DATAOUT\(0) & ((\ADDR_TO_7SEG|DATAOUT\(1)))) # (!\ADDR_TO_7SEG|DATAOUT\(0) & (\ADDR_TO_7SEG|DATAOUT\(2))))) # (!\ADDR_TO_7SEG|DATAOUT\(3) & (\ADDR_TO_7SEG|DATAOUT\(2) & 
-- (\ADDR_TO_7SEG|DATAOUT\(1) $ (\ADDR_TO_7SEG|DATAOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(3),
	datab => \ADDR_TO_7SEG|DATAOUT\(2),
	datac => \ADDR_TO_7SEG|DATAOUT\(1),
	datad => \ADDR_TO_7SEG|DATAOUT\(0),
	combout => \DISP0OUT|Mux5~0_combout\);

-- Location: LCCOMB_X110_Y36_N4
\DISP0OUT|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP0OUT|Mux4~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(3) & (\ADDR_TO_7SEG|DATAOUT\(2) & ((\ADDR_TO_7SEG|DATAOUT\(1)) # (!\ADDR_TO_7SEG|DATAOUT\(0))))) # (!\ADDR_TO_7SEG|DATAOUT\(3) & (!\ADDR_TO_7SEG|DATAOUT\(2) & (\ADDR_TO_7SEG|DATAOUT\(1) & 
-- !\ADDR_TO_7SEG|DATAOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(3),
	datab => \ADDR_TO_7SEG|DATAOUT\(2),
	datac => \ADDR_TO_7SEG|DATAOUT\(1),
	datad => \ADDR_TO_7SEG|DATAOUT\(0),
	combout => \DISP0OUT|Mux4~0_combout\);

-- Location: LCCOMB_X110_Y36_N22
\DISP0OUT|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP0OUT|Mux3~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(0) & ((\ADDR_TO_7SEG|DATAOUT\(2) $ (!\ADDR_TO_7SEG|DATAOUT\(1))))) # (!\ADDR_TO_7SEG|DATAOUT\(0) & ((\ADDR_TO_7SEG|DATAOUT\(3) & (!\ADDR_TO_7SEG|DATAOUT\(2) & \ADDR_TO_7SEG|DATAOUT\(1))) # 
-- (!\ADDR_TO_7SEG|DATAOUT\(3) & (\ADDR_TO_7SEG|DATAOUT\(2) & !\ADDR_TO_7SEG|DATAOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(3),
	datab => \ADDR_TO_7SEG|DATAOUT\(2),
	datac => \ADDR_TO_7SEG|DATAOUT\(1),
	datad => \ADDR_TO_7SEG|DATAOUT\(0),
	combout => \DISP0OUT|Mux3~0_combout\);

-- Location: LCCOMB_X110_Y36_N16
\DISP0OUT|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP0OUT|Mux2~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(1) & (!\ADDR_TO_7SEG|DATAOUT\(3) & ((\ADDR_TO_7SEG|DATAOUT\(0))))) # (!\ADDR_TO_7SEG|DATAOUT\(1) & ((\ADDR_TO_7SEG|DATAOUT\(2) & (!\ADDR_TO_7SEG|DATAOUT\(3))) # (!\ADDR_TO_7SEG|DATAOUT\(2) & 
-- ((\ADDR_TO_7SEG|DATAOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(3),
	datab => \ADDR_TO_7SEG|DATAOUT\(2),
	datac => \ADDR_TO_7SEG|DATAOUT\(1),
	datad => \ADDR_TO_7SEG|DATAOUT\(0),
	combout => \DISP0OUT|Mux2~0_combout\);

-- Location: LCCOMB_X110_Y36_N30
\DISP0OUT|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP0OUT|Mux1~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(2) & (\ADDR_TO_7SEG|DATAOUT\(0) & (\ADDR_TO_7SEG|DATAOUT\(3) $ (\ADDR_TO_7SEG|DATAOUT\(1))))) # (!\ADDR_TO_7SEG|DATAOUT\(2) & (!\ADDR_TO_7SEG|DATAOUT\(3) & ((\ADDR_TO_7SEG|DATAOUT\(1)) # 
-- (\ADDR_TO_7SEG|DATAOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(3),
	datab => \ADDR_TO_7SEG|DATAOUT\(2),
	datac => \ADDR_TO_7SEG|DATAOUT\(1),
	datad => \ADDR_TO_7SEG|DATAOUT\(0),
	combout => \DISP0OUT|Mux1~0_combout\);

-- Location: LCCOMB_X110_Y36_N8
\DISP0OUT|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP0OUT|Mux0~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(0) & ((\ADDR_TO_7SEG|DATAOUT\(3)) # (\ADDR_TO_7SEG|DATAOUT\(2) $ (\ADDR_TO_7SEG|DATAOUT\(1))))) # (!\ADDR_TO_7SEG|DATAOUT\(0) & ((\ADDR_TO_7SEG|DATAOUT\(1)) # (\ADDR_TO_7SEG|DATAOUT\(3) $ 
-- (\ADDR_TO_7SEG|DATAOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(3),
	datab => \ADDR_TO_7SEG|DATAOUT\(2),
	datac => \ADDR_TO_7SEG|DATAOUT\(1),
	datad => \ADDR_TO_7SEG|DATAOUT\(0),
	combout => \DISP0OUT|Mux0~0_combout\);

-- Location: LCCOMB_X110_Y36_N26
\ADDR_TO_7SEG|DATAOUT[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADDR_TO_7SEG|DATAOUT[6]~feeder_combout\ = \REG_ADDR:6:MUX_ADDR|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \REG_ADDR:6:MUX_ADDR|Mux0~0_combout\,
	combout => \ADDR_TO_7SEG|DATAOUT[6]~feeder_combout\);

-- Location: FF_X110_Y36_N27
\ADDR_TO_7SEG|DATAOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ADDR_TO_7SEG|DATAOUT[6]~feeder_combout\,
	ena => \Gral_FSM|EN_7Segm~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADDR_TO_7SEG|DATAOUT\(6));

-- Location: LCCOMB_X108_Y36_N24
\ADDR_TO_7SEG|DATAOUT[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADDR_TO_7SEG|DATAOUT[7]~feeder_combout\ = \REG_ADDR:7:MUX_ADDR|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \REG_ADDR:7:MUX_ADDR|Mux0~0_combout\,
	combout => \ADDR_TO_7SEG|DATAOUT[7]~feeder_combout\);

-- Location: FF_X108_Y36_N25
\ADDR_TO_7SEG|DATAOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ADDR_TO_7SEG|DATAOUT[7]~feeder_combout\,
	ena => \Gral_FSM|EN_7Segm~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADDR_TO_7SEG|DATAOUT\(7));

-- Location: FF_X108_Y36_N23
\ADDR_TO_7SEG|DATAOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_ADDR:5:MUX_ADDR|Mux0~0_combout\,
	ena => \Gral_FSM|EN_7Segm~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADDR_TO_7SEG|DATAOUT\(5));

-- Location: FF_X110_Y36_N29
\ADDR_TO_7SEG|DATAOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_ADDR:4:MUX_ADDR|Mux0~0_combout\,
	ena => \Gral_FSM|EN_7Segm~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADDR_TO_7SEG|DATAOUT\(4));

-- Location: LCCOMB_X112_Y32_N12
\DISP1OUT|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP1OUT|Mux6~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(6) & (!\ADDR_TO_7SEG|DATAOUT\(5) & (\ADDR_TO_7SEG|DATAOUT\(7) $ (!\ADDR_TO_7SEG|DATAOUT\(4))))) # (!\ADDR_TO_7SEG|DATAOUT\(6) & (\ADDR_TO_7SEG|DATAOUT\(4) & (\ADDR_TO_7SEG|DATAOUT\(7) $ 
-- (!\ADDR_TO_7SEG|DATAOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(6),
	datab => \ADDR_TO_7SEG|DATAOUT\(7),
	datac => \ADDR_TO_7SEG|DATAOUT\(5),
	datad => \ADDR_TO_7SEG|DATAOUT\(4),
	combout => \DISP1OUT|Mux6~0_combout\);

-- Location: LCCOMB_X112_Y32_N10
\DISP1OUT|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP1OUT|Mux5~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(7) & ((\ADDR_TO_7SEG|DATAOUT\(4) & ((\ADDR_TO_7SEG|DATAOUT\(5)))) # (!\ADDR_TO_7SEG|DATAOUT\(4) & (\ADDR_TO_7SEG|DATAOUT\(6))))) # (!\ADDR_TO_7SEG|DATAOUT\(7) & (\ADDR_TO_7SEG|DATAOUT\(6) & 
-- (\ADDR_TO_7SEG|DATAOUT\(5) $ (\ADDR_TO_7SEG|DATAOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(6),
	datab => \ADDR_TO_7SEG|DATAOUT\(7),
	datac => \ADDR_TO_7SEG|DATAOUT\(5),
	datad => \ADDR_TO_7SEG|DATAOUT\(4),
	combout => \DISP1OUT|Mux5~0_combout\);

-- Location: LCCOMB_X112_Y32_N4
\DISP1OUT|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP1OUT|Mux4~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(6) & (\ADDR_TO_7SEG|DATAOUT\(7) & ((\ADDR_TO_7SEG|DATAOUT\(5)) # (!\ADDR_TO_7SEG|DATAOUT\(4))))) # (!\ADDR_TO_7SEG|DATAOUT\(6) & (!\ADDR_TO_7SEG|DATAOUT\(7) & (\ADDR_TO_7SEG|DATAOUT\(5) & 
-- !\ADDR_TO_7SEG|DATAOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(6),
	datab => \ADDR_TO_7SEG|DATAOUT\(7),
	datac => \ADDR_TO_7SEG|DATAOUT\(5),
	datad => \ADDR_TO_7SEG|DATAOUT\(4),
	combout => \DISP1OUT|Mux4~0_combout\);

-- Location: LCCOMB_X112_Y32_N6
\DISP1OUT|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP1OUT|Mux3~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(4) & (\ADDR_TO_7SEG|DATAOUT\(6) $ (((!\ADDR_TO_7SEG|DATAOUT\(5)))))) # (!\ADDR_TO_7SEG|DATAOUT\(4) & ((\ADDR_TO_7SEG|DATAOUT\(6) & (!\ADDR_TO_7SEG|DATAOUT\(7) & !\ADDR_TO_7SEG|DATAOUT\(5))) # 
-- (!\ADDR_TO_7SEG|DATAOUT\(6) & (\ADDR_TO_7SEG|DATAOUT\(7) & \ADDR_TO_7SEG|DATAOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(6),
	datab => \ADDR_TO_7SEG|DATAOUT\(7),
	datac => \ADDR_TO_7SEG|DATAOUT\(5),
	datad => \ADDR_TO_7SEG|DATAOUT\(4),
	combout => \DISP1OUT|Mux3~0_combout\);

-- Location: LCCOMB_X112_Y32_N16
\DISP1OUT|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP1OUT|Mux2~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(5) & (((!\ADDR_TO_7SEG|DATAOUT\(7) & \ADDR_TO_7SEG|DATAOUT\(4))))) # (!\ADDR_TO_7SEG|DATAOUT\(5) & ((\ADDR_TO_7SEG|DATAOUT\(6) & (!\ADDR_TO_7SEG|DATAOUT\(7))) # (!\ADDR_TO_7SEG|DATAOUT\(6) & 
-- ((\ADDR_TO_7SEG|DATAOUT\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(6),
	datab => \ADDR_TO_7SEG|DATAOUT\(7),
	datac => \ADDR_TO_7SEG|DATAOUT\(5),
	datad => \ADDR_TO_7SEG|DATAOUT\(4),
	combout => \DISP1OUT|Mux2~0_combout\);

-- Location: LCCOMB_X112_Y32_N30
\DISP1OUT|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP1OUT|Mux1~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(6) & (\ADDR_TO_7SEG|DATAOUT\(4) & (\ADDR_TO_7SEG|DATAOUT\(7) $ (\ADDR_TO_7SEG|DATAOUT\(5))))) # (!\ADDR_TO_7SEG|DATAOUT\(6) & (!\ADDR_TO_7SEG|DATAOUT\(7) & ((\ADDR_TO_7SEG|DATAOUT\(5)) # 
-- (\ADDR_TO_7SEG|DATAOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(6),
	datab => \ADDR_TO_7SEG|DATAOUT\(7),
	datac => \ADDR_TO_7SEG|DATAOUT\(5),
	datad => \ADDR_TO_7SEG|DATAOUT\(4),
	combout => \DISP1OUT|Mux1~0_combout\);

-- Location: LCCOMB_X112_Y32_N20
\DISP1OUT|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP1OUT|Mux0~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(4) & ((\ADDR_TO_7SEG|DATAOUT\(7)) # (\ADDR_TO_7SEG|DATAOUT\(6) $ (\ADDR_TO_7SEG|DATAOUT\(5))))) # (!\ADDR_TO_7SEG|DATAOUT\(4) & ((\ADDR_TO_7SEG|DATAOUT\(5)) # (\ADDR_TO_7SEG|DATAOUT\(6) $ 
-- (\ADDR_TO_7SEG|DATAOUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(6),
	datab => \ADDR_TO_7SEG|DATAOUT\(7),
	datac => \ADDR_TO_7SEG|DATAOUT\(5),
	datad => \ADDR_TO_7SEG|DATAOUT\(4),
	combout => \DISP1OUT|Mux0~0_combout\);

-- Location: LCCOMB_X113_Y36_N20
\ADDR_TO_7SEG|DATAOUT[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADDR_TO_7SEG|DATAOUT[9]~feeder_combout\ = \REG_ADDR:9:MUX_ADDR|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REG_ADDR:9:MUX_ADDR|Mux0~0_combout\,
	combout => \ADDR_TO_7SEG|DATAOUT[9]~feeder_combout\);

-- Location: FF_X113_Y36_N21
\ADDR_TO_7SEG|DATAOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ADDR_TO_7SEG|DATAOUT[9]~feeder_combout\,
	ena => \Gral_FSM|EN_7Segm~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADDR_TO_7SEG|DATAOUT\(9));

-- Location: LCCOMB_X113_Y36_N4
\ADDR_TO_7SEG|DATAOUT[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADDR_TO_7SEG|DATAOUT[11]~feeder_combout\ = \REG_ADDR:11:MUX_ADDR|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \REG_ADDR:11:MUX_ADDR|Mux0~0_combout\,
	combout => \ADDR_TO_7SEG|DATAOUT[11]~feeder_combout\);

-- Location: FF_X113_Y36_N5
\ADDR_TO_7SEG|DATAOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ADDR_TO_7SEG|DATAOUT[11]~feeder_combout\,
	ena => \Gral_FSM|EN_7Segm~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADDR_TO_7SEG|DATAOUT\(11));

-- Location: FF_X110_Y36_N13
\ADDR_TO_7SEG|DATAOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_ADDR:8:MUX_ADDR|Mux0~0_combout\,
	ena => \Gral_FSM|EN_7Segm~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADDR_TO_7SEG|DATAOUT\(8));

-- Location: LCCOMB_X113_Y36_N2
\ADDR_TO_7SEG|DATAOUT[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADDR_TO_7SEG|DATAOUT[10]~feeder_combout\ = \REG_ADDR:10:MUX_ADDR|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \REG_ADDR:10:MUX_ADDR|Mux0~0_combout\,
	combout => \ADDR_TO_7SEG|DATAOUT[10]~feeder_combout\);

-- Location: FF_X113_Y36_N3
\ADDR_TO_7SEG|DATAOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ADDR_TO_7SEG|DATAOUT[10]~feeder_combout\,
	ena => \Gral_FSM|EN_7Segm~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADDR_TO_7SEG|DATAOUT\(10));

-- Location: LCCOMB_X114_Y28_N12
\DISP2OUT|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP2OUT|Mux6~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(11) & (\ADDR_TO_7SEG|DATAOUT\(8) & (\ADDR_TO_7SEG|DATAOUT\(9) $ (\ADDR_TO_7SEG|DATAOUT\(10))))) # (!\ADDR_TO_7SEG|DATAOUT\(11) & (!\ADDR_TO_7SEG|DATAOUT\(9) & (\ADDR_TO_7SEG|DATAOUT\(8) $ 
-- (\ADDR_TO_7SEG|DATAOUT\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(9),
	datab => \ADDR_TO_7SEG|DATAOUT\(11),
	datac => \ADDR_TO_7SEG|DATAOUT\(8),
	datad => \ADDR_TO_7SEG|DATAOUT\(10),
	combout => \DISP2OUT|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y28_N2
\DISP2OUT|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP2OUT|Mux5~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(9) & ((\ADDR_TO_7SEG|DATAOUT\(8) & (\ADDR_TO_7SEG|DATAOUT\(11))) # (!\ADDR_TO_7SEG|DATAOUT\(8) & ((\ADDR_TO_7SEG|DATAOUT\(10)))))) # (!\ADDR_TO_7SEG|DATAOUT\(9) & (\ADDR_TO_7SEG|DATAOUT\(10) & 
-- (\ADDR_TO_7SEG|DATAOUT\(11) $ (\ADDR_TO_7SEG|DATAOUT\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(9),
	datab => \ADDR_TO_7SEG|DATAOUT\(11),
	datac => \ADDR_TO_7SEG|DATAOUT\(8),
	datad => \ADDR_TO_7SEG|DATAOUT\(10),
	combout => \DISP2OUT|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y28_N28
\DISP2OUT|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP2OUT|Mux4~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(11) & (\ADDR_TO_7SEG|DATAOUT\(10) & ((\ADDR_TO_7SEG|DATAOUT\(9)) # (!\ADDR_TO_7SEG|DATAOUT\(8))))) # (!\ADDR_TO_7SEG|DATAOUT\(11) & (\ADDR_TO_7SEG|DATAOUT\(9) & (!\ADDR_TO_7SEG|DATAOUT\(8) & 
-- !\ADDR_TO_7SEG|DATAOUT\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(9),
	datab => \ADDR_TO_7SEG|DATAOUT\(11),
	datac => \ADDR_TO_7SEG|DATAOUT\(8),
	datad => \ADDR_TO_7SEG|DATAOUT\(10),
	combout => \DISP2OUT|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y28_N14
\DISP2OUT|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP2OUT|Mux3~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(8) & (\ADDR_TO_7SEG|DATAOUT\(9) $ (((!\ADDR_TO_7SEG|DATAOUT\(10)))))) # (!\ADDR_TO_7SEG|DATAOUT\(8) & ((\ADDR_TO_7SEG|DATAOUT\(9) & (\ADDR_TO_7SEG|DATAOUT\(11) & !\ADDR_TO_7SEG|DATAOUT\(10))) # 
-- (!\ADDR_TO_7SEG|DATAOUT\(9) & (!\ADDR_TO_7SEG|DATAOUT\(11) & \ADDR_TO_7SEG|DATAOUT\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(9),
	datab => \ADDR_TO_7SEG|DATAOUT\(11),
	datac => \ADDR_TO_7SEG|DATAOUT\(8),
	datad => \ADDR_TO_7SEG|DATAOUT\(10),
	combout => \DISP2OUT|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y28_N4
\DISP2OUT|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP2OUT|Mux2~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(9) & (!\ADDR_TO_7SEG|DATAOUT\(11) & (\ADDR_TO_7SEG|DATAOUT\(8)))) # (!\ADDR_TO_7SEG|DATAOUT\(9) & ((\ADDR_TO_7SEG|DATAOUT\(10) & (!\ADDR_TO_7SEG|DATAOUT\(11))) # (!\ADDR_TO_7SEG|DATAOUT\(10) & 
-- ((\ADDR_TO_7SEG|DATAOUT\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(9),
	datab => \ADDR_TO_7SEG|DATAOUT\(11),
	datac => \ADDR_TO_7SEG|DATAOUT\(8),
	datad => \ADDR_TO_7SEG|DATAOUT\(10),
	combout => \DISP2OUT|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y28_N6
\DISP2OUT|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP2OUT|Mux1~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(9) & (!\ADDR_TO_7SEG|DATAOUT\(11) & ((\ADDR_TO_7SEG|DATAOUT\(8)) # (!\ADDR_TO_7SEG|DATAOUT\(10))))) # (!\ADDR_TO_7SEG|DATAOUT\(9) & (\ADDR_TO_7SEG|DATAOUT\(8) & (\ADDR_TO_7SEG|DATAOUT\(11) $ 
-- (!\ADDR_TO_7SEG|DATAOUT\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(9),
	datab => \ADDR_TO_7SEG|DATAOUT\(11),
	datac => \ADDR_TO_7SEG|DATAOUT\(8),
	datad => \ADDR_TO_7SEG|DATAOUT\(10),
	combout => \DISP2OUT|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y28_N8
\DISP2OUT|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP2OUT|Mux0~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(8) & ((\ADDR_TO_7SEG|DATAOUT\(11)) # (\ADDR_TO_7SEG|DATAOUT\(9) $ (\ADDR_TO_7SEG|DATAOUT\(10))))) # (!\ADDR_TO_7SEG|DATAOUT\(8) & ((\ADDR_TO_7SEG|DATAOUT\(9)) # (\ADDR_TO_7SEG|DATAOUT\(11) $ 
-- (\ADDR_TO_7SEG|DATAOUT\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(9),
	datab => \ADDR_TO_7SEG|DATAOUT\(11),
	datac => \ADDR_TO_7SEG|DATAOUT\(8),
	datad => \ADDR_TO_7SEG|DATAOUT\(10),
	combout => \DISP2OUT|Mux0~0_combout\);

ww_LED_WRITE <= \LED_WRITE~output_o\;

ww_LED_READ <= \LED_READ~output_o\;

ww_LED_ERROR <= \LED_ERROR~output_o\;

ww_WE <= \WE~output_o\;

ww_RDWR <= \RDWR~output_o\;

ww_CE <= \CE~output_o\;

ww_OE <= \OE~output_o\;

ww_LB <= \LB~output_o\;

ww_UB <= \UB~output_o\;

ww_ADDRESS(0) <= \ADDRESS[0]~output_o\;

ww_ADDRESS(1) <= \ADDRESS[1]~output_o\;

ww_ADDRESS(2) <= \ADDRESS[2]~output_o\;

ww_ADDRESS(3) <= \ADDRESS[3]~output_o\;

ww_ADDRESS(4) <= \ADDRESS[4]~output_o\;

ww_ADDRESS(5) <= \ADDRESS[5]~output_o\;

ww_ADDRESS(6) <= \ADDRESS[6]~output_o\;

ww_ADDRESS(7) <= \ADDRESS[7]~output_o\;

ww_ADDRESS(8) <= \ADDRESS[8]~output_o\;

ww_ADDRESS(9) <= \ADDRESS[9]~output_o\;

ww_ADDRESS(10) <= \ADDRESS[10]~output_o\;

ww_ADDRESS(11) <= \ADDRESS[11]~output_o\;

ww_ADDRESS(12) <= \ADDRESS[12]~output_o\;

ww_ADDRESS(13) <= \ADDRESS[13]~output_o\;

ww_ADDRESS(14) <= \ADDRESS[14]~output_o\;

ww_ADDRESS(15) <= \ADDRESS[15]~output_o\;

ww_ADDRESS(16) <= \ADDRESS[16]~output_o\;

ww_ADDRESS(17) <= \ADDRESS[17]~output_o\;

ww_ADDRESS(18) <= \ADDRESS[18]~output_o\;

ww_ADDRESS(19) <= \ADDRESS[19]~output_o\;

ww_DISP0(0) <= \DISP0[0]~output_o\;

ww_DISP0(1) <= \DISP0[1]~output_o\;

ww_DISP0(2) <= \DISP0[2]~output_o\;

ww_DISP0(3) <= \DISP0[3]~output_o\;

ww_DISP0(4) <= \DISP0[4]~output_o\;

ww_DISP0(5) <= \DISP0[5]~output_o\;

ww_DISP0(6) <= \DISP0[6]~output_o\;

ww_DISP1(0) <= \DISP1[0]~output_o\;

ww_DISP1(1) <= \DISP1[1]~output_o\;

ww_DISP1(2) <= \DISP1[2]~output_o\;

ww_DISP1(3) <= \DISP1[3]~output_o\;

ww_DISP1(4) <= \DISP1[4]~output_o\;

ww_DISP1(5) <= \DISP1[5]~output_o\;

ww_DISP1(6) <= \DISP1[6]~output_o\;

ww_DISP2(0) <= \DISP2[0]~output_o\;

ww_DISP2(1) <= \DISP2[1]~output_o\;

ww_DISP2(2) <= \DISP2[2]~output_o\;

ww_DISP2(3) <= \DISP2[3]~output_o\;

ww_DISP2(4) <= \DISP2[4]~output_o\;

ww_DISP2(5) <= \DISP2[5]~output_o\;

ww_DISP2(6) <= \DISP2[6]~output_o\;

DATA_BUS(0) <= \DATA_BUS[0]~output_o\;

DATA_BUS(1) <= \DATA_BUS[1]~output_o\;

DATA_BUS(2) <= \DATA_BUS[2]~output_o\;

DATA_BUS(3) <= \DATA_BUS[3]~output_o\;

DATA_BUS(4) <= \DATA_BUS[4]~output_o\;

DATA_BUS(5) <= \DATA_BUS[5]~output_o\;

DATA_BUS(6) <= \DATA_BUS[6]~output_o\;

DATA_BUS(7) <= \DATA_BUS[7]~output_o\;

DATA_BUS(8) <= \DATA_BUS[8]~output_o\;

DATA_BUS(9) <= \DATA_BUS[9]~output_o\;

DATA_BUS(10) <= \DATA_BUS[10]~output_o\;

DATA_BUS(11) <= \DATA_BUS[11]~output_o\;

DATA_BUS(12) <= \DATA_BUS[12]~output_o\;

DATA_BUS(13) <= \DATA_BUS[13]~output_o\;

DATA_BUS(14) <= \DATA_BUS[14]~output_o\;

DATA_BUS(15) <= \DATA_BUS[15]~output_o\;
END structure;


