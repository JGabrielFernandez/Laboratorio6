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

-- DATE "06/21/2016 12:48:00"

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
	LLAVE : IN std_logic;
	LED_WRITE : BUFFER std_logic;
	LED_READ : BUFFER std_logic;
	LED_ERROR : BUFFER std_logic;
	WE : BUFFER std_logic;
	CE : BUFFER std_logic;
	OE : BUFFER std_logic;
	LB : BUFFER std_logic;
	UB : BUFFER std_logic;
	DATA_BUS : BUFFER std_logic_vector(15 DOWNTO 0);
	DATA_BUS2 : BUFFER std_logic_vector(15 DOWNTO 0);
	\GND\ : BUFFER std_logic;
	ADDRESS : BUFFER std_logic_vector(19 DOWNTO 0);
	DISP0 : BUFFER std_logic_vector(6 DOWNTO 0);
	DISP1 : BUFFER std_logic_vector(6 DOWNTO 0);
	DISP2 : BUFFER std_logic_vector(6 DOWNTO 0);
	RAM_STATE : BUFFER std_logic_vector(5 DOWNTO 0);
	TOP_STATE : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END Laboratorio6;

-- Design Ports Information
-- LED_WRITE	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_READ	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_ERROR	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WE	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CE	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OE	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LB	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UB	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS2[0]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS2[1]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS2[2]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS2[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS2[4]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS2[5]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS2[6]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS2[7]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS2[8]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS2[9]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS2[10]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS2[11]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS2[12]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS2[13]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS2[14]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS2[15]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GND	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[1]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[2]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[3]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[5]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[6]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[7]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[8]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[9]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[10]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[11]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[12]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[13]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[14]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[15]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[16]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[17]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[18]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[19]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_STATE[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_STATE[1]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_STATE[2]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_STATE[3]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_STATE[4]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_STATE[5]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_STATE[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_STATE[1]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_STATE[2]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_STATE[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_STATE[4]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_STATE[5]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_STATE[6]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_STATE[7]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_STATE[8]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_STATE[9]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[0]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[1]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[2]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[3]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[4]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[5]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[6]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[7]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[8]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[9]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[10]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[11]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[12]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[13]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[14]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[15]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LLAVE	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTONES[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTONES[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_LLAVE : std_logic;
SIGNAL ww_LED_WRITE : std_logic;
SIGNAL ww_LED_READ : std_logic;
SIGNAL ww_LED_ERROR : std_logic;
SIGNAL ww_WE : std_logic;
SIGNAL ww_CE : std_logic;
SIGNAL ww_OE : std_logic;
SIGNAL ww_LB : std_logic;
SIGNAL ww_UB : std_logic;
SIGNAL ww_DATA_BUS : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DATA_BUS2 : std_logic_vector(15 DOWNTO 0);
SIGNAL \ww_GND\ : std_logic;
SIGNAL ww_ADDRESS : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_DISP0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DISP1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DISP2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_RAM_STATE : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_TOP_STATE : std_logic_vector(9 DOWNTO 0);
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
SIGNAL \CE~output_o\ : std_logic;
SIGNAL \OE~output_o\ : std_logic;
SIGNAL \LB~output_o\ : std_logic;
SIGNAL \UB~output_o\ : std_logic;
SIGNAL \DATA_BUS2[0]~output_o\ : std_logic;
SIGNAL \DATA_BUS2[1]~output_o\ : std_logic;
SIGNAL \DATA_BUS2[2]~output_o\ : std_logic;
SIGNAL \DATA_BUS2[3]~output_o\ : std_logic;
SIGNAL \DATA_BUS2[4]~output_o\ : std_logic;
SIGNAL \DATA_BUS2[5]~output_o\ : std_logic;
SIGNAL \DATA_BUS2[6]~output_o\ : std_logic;
SIGNAL \DATA_BUS2[7]~output_o\ : std_logic;
SIGNAL \DATA_BUS2[8]~output_o\ : std_logic;
SIGNAL \DATA_BUS2[9]~output_o\ : std_logic;
SIGNAL \DATA_BUS2[10]~output_o\ : std_logic;
SIGNAL \DATA_BUS2[11]~output_o\ : std_logic;
SIGNAL \DATA_BUS2[12]~output_o\ : std_logic;
SIGNAL \DATA_BUS2[13]~output_o\ : std_logic;
SIGNAL \DATA_BUS2[14]~output_o\ : std_logic;
SIGNAL \DATA_BUS2[15]~output_o\ : std_logic;
SIGNAL \GND~output_o\ : std_logic;
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
SIGNAL \RAM_STATE[0]~output_o\ : std_logic;
SIGNAL \RAM_STATE[1]~output_o\ : std_logic;
SIGNAL \RAM_STATE[2]~output_o\ : std_logic;
SIGNAL \RAM_STATE[3]~output_o\ : std_logic;
SIGNAL \RAM_STATE[4]~output_o\ : std_logic;
SIGNAL \RAM_STATE[5]~output_o\ : std_logic;
SIGNAL \TOP_STATE[0]~output_o\ : std_logic;
SIGNAL \TOP_STATE[1]~output_o\ : std_logic;
SIGNAL \TOP_STATE[2]~output_o\ : std_logic;
SIGNAL \TOP_STATE[3]~output_o\ : std_logic;
SIGNAL \TOP_STATE[4]~output_o\ : std_logic;
SIGNAL \TOP_STATE[5]~output_o\ : std_logic;
SIGNAL \TOP_STATE[6]~output_o\ : std_logic;
SIGNAL \TOP_STATE[7]~output_o\ : std_logic;
SIGNAL \TOP_STATE[8]~output_o\ : std_logic;
SIGNAL \TOP_STATE[9]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Gral_FSM|direccion[0]~20_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[0]~21\ : std_logic;
SIGNAL \Gral_FSM|direccion[1]~22_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector24~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \Gral_FSM|direccion[1]~23\ : std_logic;
SIGNAL \Gral_FSM|direccion[2]~24_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector23~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[2]~25\ : std_logic;
SIGNAL \Gral_FSM|direccion[3]~26_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector22~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[3]~27\ : std_logic;
SIGNAL \Gral_FSM|direccion[4]~28_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector21~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[4]~29\ : std_logic;
SIGNAL \Gral_FSM|direccion[5]~30_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector20~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[5]~31\ : std_logic;
SIGNAL \Gral_FSM|direccion[6]~32_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector19~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[6]~33\ : std_logic;
SIGNAL \Gral_FSM|direccion[7]~34_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector18~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[7]~35\ : std_logic;
SIGNAL \Gral_FSM|direccion[8]~36_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector17~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[8]~37\ : std_logic;
SIGNAL \Gral_FSM|direccion[9]~38_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector16~0_combout\ : std_logic;
SIGNAL \Gral_FSM|Equal0~1_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[9]~39\ : std_logic;
SIGNAL \Gral_FSM|direccion[10]~40_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector15~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[10]~41\ : std_logic;
SIGNAL \Gral_FSM|direccion[11]~42_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector14~0_combout\ : std_logic;
SIGNAL \Gral_FSM|Equal0~2_combout\ : std_logic;
SIGNAL \Gral_FSM|Equal0~3_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector1~0_combout\ : std_logic;
SIGNAL \BOTONES[0]~input_o\ : std_logic;
SIGNAL \RISING_BTS:0:BT|Q~feeder_combout\ : std_logic;
SIGNAL \BOTONES[1]~input_o\ : std_logic;
SIGNAL \RISING_BTS:1:BT|Q~feeder_combout\ : std_logic;
SIGNAL \RISING_BTS:1:BT|Q~q\ : std_logic;
SIGNAL \Gral_FSM|next_state.INITRD~0_combout\ : std_logic;
SIGNAL \Gral_FSM|current_state.INITRD~feeder_combout\ : std_logic;
SIGNAL \Gral_FSM|current_state.INITRD~q\ : std_logic;
SIGNAL \Gral_FSM|WideOr10~combout\ : std_logic;
SIGNAL \Gral_FSM|SetBotones~q\ : std_logic;
SIGNAL \RISING_BTS:0:BT|Q~q\ : std_logic;
SIGNAL \Gral_FSM|Selector1~1_combout\ : std_logic;
SIGNAL \Gral_FSM|current_state.INITWR~q\ : std_logic;
SIGNAL \Gral_FSM|Selector2~0_combout\ : std_logic;
SIGNAL \Gral_FSM|current_state.ESPERAWR~q\ : std_logic;
SIGNAL \Gral_FSM|next_state.LOADDATA~0_combout\ : std_logic;
SIGNAL \Gral_FSM|current_state.LOADDATA~q\ : std_logic;
SIGNAL \Gral_FSM|next_state.PRENDERLED~2_combout\ : std_logic;
SIGNAL \Gral_FSM|current_state.PRENDERLED~q\ : std_logic;
SIGNAL \Gral_FSM|WideOr6~0_combout\ : std_logic;
SIGNAL \Gral_FSM|RD_WR~q\ : std_logic;
SIGNAL \Gral_FSM|next_state~2_combout\ : std_logic;
SIGNAL \Gral_FSM|WideOr7~combout\ : std_logic;
SIGNAL \Gral_FSM|ENRD_WR~q\ : std_logic;
SIGNAL \RAM_FSM|next_state.INIT_WR~0_combout\ : std_logic;
SIGNAL \RAM_FSM|current_state.INIT_WR~q\ : std_logic;
SIGNAL \Gral_FSM|Ext_ready~0_combout\ : std_logic;
SIGNAL \Gral_FSM|Ext_ready~q\ : std_logic;
SIGNAL \RAM_FSM|Selector2~0_combout\ : std_logic;
SIGNAL \RAM_FSM|current_state.WAIT_WR~q\ : std_logic;
SIGNAL \RAM_FSM|next_state.END_WR~0_combout\ : std_logic;
SIGNAL \RAM_FSM|current_state.END_WR~q\ : std_logic;
SIGNAL \RAM_FSM|Selector0~0_combout\ : std_logic;
SIGNAL \RAM_FSM|Selector0~1_combout\ : std_logic;
SIGNAL \RAM_FSM|current_state.IDLE~q\ : std_logic;
SIGNAL \RAM_FSM|next_state.INIT_RD~0_combout\ : std_logic;
SIGNAL \RAM_FSM|current_state.INIT_RD~q\ : std_logic;
SIGNAL \RAM_FSM|Selector1~0_combout\ : std_logic;
SIGNAL \RAM_FSM|current_state.END_RD~q\ : std_logic;
SIGNAL \RAM_FSM|Ready~0_combout\ : std_logic;
SIGNAL \RAM_FSM|Ready~q\ : std_logic;
SIGNAL \Gral_FSM|Selector3~0_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector3~1_combout\ : std_logic;
SIGNAL \Gral_FSM|current_state.ESPERARD~q\ : std_logic;
SIGNAL \Gral_FSM|next_state.COMPARE~0_combout\ : std_logic;
SIGNAL \Gral_FSM|current_state.COMPARE~q\ : std_logic;
SIGNAL \BOTONES[2]~input_o\ : std_logic;
SIGNAL \RISING_BTS:2:BT|Q~feeder_combout\ : std_logic;
SIGNAL \RISING_BTS:2:BT|Q~q\ : std_logic;
SIGNAL \DATA_BUS[7]~input_o\ : std_logic;
SIGNAL \DATA_BUS[6]~input_o\ : std_logic;
SIGNAL \Gral_FSM|WideOr12~combout\ : std_logic;
SIGNAL \Gral_FSM|ADDR_SEL~q\ : std_logic;
SIGNAL \LFSR|LFSR:1:i32:bit32|Q~feeder_combout\ : std_logic;
SIGNAL \Gral_FSM|LOADDIR~0_combout\ : std_logic;
SIGNAL \Gral_FSM|LOADDIR~q\ : std_logic;
SIGNAL \Gral_FSM|EN_LFSR~feeder_combout\ : std_logic;
SIGNAL \Gral_FSM|EN_LFSR~q\ : std_logic;
SIGNAL \LFSR|LFSR:1:i32:bit32|Q~q\ : std_logic;
SIGNAL \LFSR|LFSR:2:i32:bit32|Q~feeder_combout\ : std_logic;
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
SIGNAL \LFSR|LFSR:10:i32:bit32|Q~feeder_combout\ : std_logic;
SIGNAL \LFSR|LFSR:10:i32:bit32|Q~q\ : std_logic;
SIGNAL \LFSR|LFSR:11:i32:bit32|Q~q\ : std_logic;
SIGNAL \LFSR|LFSR:0:i0:bit0|Q~0_combout\ : std_logic;
SIGNAL \LFSR|LFSR:0:i0:bit0|Q~1_combout\ : std_logic;
SIGNAL \LFSR|LFSR:0:i0:bit0|Q~q\ : std_logic;
SIGNAL \REG_ADDR:0:MUX_ADDR|Mux0~0_combout\ : std_logic;
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
SIGNAL \COMP|Equal0~3_combout\ : std_logic;
SIGNAL \DATA_BUS[5]~input_o\ : std_logic;
SIGNAL \DATA_BUS[4]~input_o\ : std_logic;
SIGNAL \COMP|Equal0~2_combout\ : std_logic;
SIGNAL \DATA_BUS[3]~input_o\ : std_logic;
SIGNAL \DATA_BUS[2]~input_o\ : std_logic;
SIGNAL \COMP|Equal0~1_combout\ : std_logic;
SIGNAL \DATA_BUS[0]~input_o\ : std_logic;
SIGNAL \DATA_BUS[1]~input_o\ : std_logic;
SIGNAL \COMP|Equal0~0_combout\ : std_logic;
SIGNAL \COMP|Equal0~4_combout\ : std_logic;
SIGNAL \DATA_BUS[12]~input_o\ : std_logic;
SIGNAL \DATA_BUS[13]~input_o\ : std_logic;
SIGNAL \COMP|Equal0~7_combout\ : std_logic;
SIGNAL \DATA_BUS[10]~input_o\ : std_logic;
SIGNAL \DATA_BUS[11]~input_o\ : std_logic;
SIGNAL \COMP|Equal0~6_combout\ : std_logic;
SIGNAL \DATA_BUS[8]~input_o\ : std_logic;
SIGNAL \DATA_BUS[9]~input_o\ : std_logic;
SIGNAL \COMP|Equal0~5_combout\ : std_logic;
SIGNAL \DATA_BUS[15]~input_o\ : std_logic;
SIGNAL \DATA_BUS[14]~input_o\ : std_logic;
SIGNAL \COMP|Equal0~8_combout\ : std_logic;
SIGNAL \COMP|Equal0~9_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector5~0_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector5~1_combout\ : std_logic;
SIGNAL \Gral_FSM|current_state.ERROR_DATO~q\ : std_logic;
SIGNAL \Gral_FSM|Selector4~0_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector4~1_combout\ : std_logic;
SIGNAL \Gral_FSM|current_state.FINRD~q\ : std_logic;
SIGNAL \Gral_FSM|next_state.BLINK_LED~0_combout\ : std_logic;
SIGNAL \Gral_FSM|current_state.BLINK_LED~q\ : std_logic;
SIGNAL \Gral_FSM|Selector0~0_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector0~1_combout\ : std_logic;
SIGNAL \Gral_FSM|current_state.IDLE~q\ : std_logic;
SIGNAL \Gral_FSM|Selector25~0_combout\ : std_logic;
SIGNAL \Gral_FSM|Equal0~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[11]~43\ : std_logic;
SIGNAL \Gral_FSM|direccion[12]~44_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector13~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[12]~45\ : std_logic;
SIGNAL \Gral_FSM|direccion[13]~46_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector12~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[13]~47\ : std_logic;
SIGNAL \Gral_FSM|direccion[14]~48_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector11~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[14]~49\ : std_logic;
SIGNAL \Gral_FSM|direccion[15]~50_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector10~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[15]~51\ : std_logic;
SIGNAL \Gral_FSM|direccion[16]~52_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector9~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[16]~53\ : std_logic;
SIGNAL \Gral_FSM|direccion[17]~54_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector8~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[17]~55\ : std_logic;
SIGNAL \Gral_FSM|direccion[18]~56_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector7~0_combout\ : std_logic;
SIGNAL \Gral_FSM|direccion[18]~57\ : std_logic;
SIGNAL \Gral_FSM|direccion[19]~58_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector6~0_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector28~3_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector28~2_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector28~4_combout\ : std_logic;
SIGNAL \LLAVE~input_o\ : std_logic;
SIGNAL \Gral_FSM|Selector28~0_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector28~1_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector28~5_combout\ : std_logic;
SIGNAL \Gral_FSM|DATA_SEL~q\ : std_logic;
SIGNAL \REG_DATA:0:MUX_DATA|Mux0~0_combout\ : std_logic;
SIGNAL \REG_DATA:1:MUX_DATA|Mux0~0_combout\ : std_logic;
SIGNAL \REG_DATA:2:MUX_DATA|Mux0~0_combout\ : std_logic;
SIGNAL \REG_DATA:3:MUX_DATA|Mux0~0_combout\ : std_logic;
SIGNAL \REG_DATA:4:MUX_DATA|Mux0~0_combout\ : std_logic;
SIGNAL \REG_DATA:5:MUX_DATA|Mux0~0_combout\ : std_logic;
SIGNAL \REG_DATA:6:MUX_DATA|Mux0~0_combout\ : std_logic;
SIGNAL \REG_DATA:7:MUX_DATA|Mux0~0_combout\ : std_logic;
SIGNAL \REG_DATA:8:MUX_DATA|Mux0~0_combout\ : std_logic;
SIGNAL \REG_DATA:9:MUX_DATA|Mux0~0_combout\ : std_logic;
SIGNAL \REG_DATA:10:MUX_DATA|Mux0~0_combout\ : std_logic;
SIGNAL \REG_DATA:11:MUX_DATA|Mux0~0_combout\ : std_logic;
SIGNAL \REG_DATA:12:MUX_DATA|Mux0~0_combout\ : std_logic;
SIGNAL \REG_DATA:13:MUX_DATA|Mux0~0_combout\ : std_logic;
SIGNAL \REG_DATA:14:MUX_DATA|Mux0~0_combout\ : std_logic;
SIGNAL \REG_DATA:15:MUX_DATA|Mux0~0_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector26~0_combout\ : std_logic;
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
SIGNAL \Gen1HZ|Equal0~1_combout\ : std_logic;
SIGNAL \Gen1HZ|Equal0~2_combout\ : std_logic;
SIGNAL \Gen1HZ|Equal0~3_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~49\ : std_logic;
SIGNAL \Gen1HZ|Add0~50_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~51\ : std_logic;
SIGNAL \Gen1HZ|Add0~52_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~53\ : std_logic;
SIGNAL \Gen1HZ|Add0~54_combout\ : std_logic;
SIGNAL \Gen1HZ|Add0~55\ : std_logic;
SIGNAL \Gen1HZ|Add0~56_combout\ : std_logic;
SIGNAL \Gen1HZ|Equal0~0_combout\ : std_logic;
SIGNAL \Gen1HZ|Equal0~4_combout\ : std_logic;
SIGNAL \Gen1HZ|Equal0~7_combout\ : std_logic;
SIGNAL \Gen1HZ|Equal0~8_combout\ : std_logic;
SIGNAL \Gen1HZ|Equal0~9_combout\ : std_logic;
SIGNAL \Gen1HZ|Clk_aux~0_combout\ : std_logic;
SIGNAL \Gen1HZ|Clk_aux~q\ : std_logic;
SIGNAL \LEDRD|Q~feeder_combout\ : std_logic;
SIGNAL \Gral_FSM|Selector27~0_combout\ : std_logic;
SIGNAL \Gral_FSM|LED_RD~q\ : std_logic;
SIGNAL \LEDRD|Q~q\ : std_logic;
SIGNAL \Gral_FSM|Selector29~0_combout\ : std_logic;
SIGNAL \Gral_FSM|Led_error~q\ : std_logic;
SIGNAL \RAM_FSM|WideOr3~combout\ : std_logic;
SIGNAL \RAM_FSM|WE~q\ : std_logic;
SIGNAL \RAM_FSM|CE~feeder_combout\ : std_logic;
SIGNAL \RAM_FSM|CE~q\ : std_logic;
SIGNAL \RAM_FSM|OE~0_combout\ : std_logic;
SIGNAL \RAM_FSM|OE~q\ : std_logic;
SIGNAL \Gral_FSM|EN_7Segm~feeder_combout\ : std_logic;
SIGNAL \Gral_FSM|EN_7Segm~q\ : std_logic;
SIGNAL \DISP0OUT|Mux6~0_combout\ : std_logic;
SIGNAL \DISP0OUT|Mux5~0_combout\ : std_logic;
SIGNAL \DISP0OUT|Mux4~0_combout\ : std_logic;
SIGNAL \DISP0OUT|Mux3~0_combout\ : std_logic;
SIGNAL \DISP0OUT|Mux2~0_combout\ : std_logic;
SIGNAL \DISP0OUT|Mux1~0_combout\ : std_logic;
SIGNAL \DISP0OUT|Mux0~0_combout\ : std_logic;
SIGNAL \DISP1OUT|Mux6~0_combout\ : std_logic;
SIGNAL \DISP1OUT|Mux5~0_combout\ : std_logic;
SIGNAL \DISP1OUT|Mux4~0_combout\ : std_logic;
SIGNAL \DISP1OUT|Mux3~0_combout\ : std_logic;
SIGNAL \DISP1OUT|Mux2~0_combout\ : std_logic;
SIGNAL \DISP1OUT|Mux1~0_combout\ : std_logic;
SIGNAL \DISP1OUT|Mux0~0_combout\ : std_logic;
SIGNAL \ADDR_TO_7SEG|DATAOUT[8]~feeder_combout\ : std_logic;
SIGNAL \DISP2OUT|Mux6~0_combout\ : std_logic;
SIGNAL \DISP2OUT|Mux5~0_combout\ : std_logic;
SIGNAL \DISP2OUT|Mux4~0_combout\ : std_logic;
SIGNAL \DISP2OUT|Mux3~0_combout\ : std_logic;
SIGNAL \DISP2OUT|Mux2~0_combout\ : std_logic;
SIGNAL \DISP2OUT|Mux1~0_combout\ : std_logic;
SIGNAL \DISP2OUT|Mux0~0_combout\ : std_logic;
SIGNAL \RAM_FSM|STATE[0]~0_combout\ : std_logic;
SIGNAL \RAM_FSM|STATE[1]~feeder_combout\ : std_logic;
SIGNAL \RAM_FSM|STATE[3]~feeder_combout\ : std_logic;
SIGNAL \RAM_FSM|STATE[4]~feeder_combout\ : std_logic;
SIGNAL \RAM_FSM|STATE[5]~feeder_combout\ : std_logic;
SIGNAL \Gral_FSM|STATE~0_combout\ : std_logic;
SIGNAL \Gral_FSM|STATE[1]~feeder_combout\ : std_logic;
SIGNAL \Gral_FSM|STATE[3]~feeder_combout\ : std_logic;
SIGNAL \Gral_FSM|STATE[5]~feeder_combout\ : std_logic;
SIGNAL \Gral_FSM|STATE[6]~feeder_combout\ : std_logic;
SIGNAL \Gral_FSM|STATE[7]~feeder_combout\ : std_logic;
SIGNAL \Gral_FSM|STATE[8]~feeder_combout\ : std_logic;
SIGNAL \Gral_FSM|STATE[9]~feeder_combout\ : std_logic;
SIGNAL \ROM1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RAM_FSM|STATE\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Gral_FSM|direccion\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \Gen1HZ|count\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \ADDR_TO_7SEG|DATAOUT\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Gral_FSM|STATE\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Gral_FSM|ALT_INV_current_state.INITWR~q\ : std_logic;
SIGNAL \DISP2OUT|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \DISP1OUT|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \DISP0OUT|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \RAM_FSM|ALT_INV_OE~q\ : std_logic;
SIGNAL \RAM_FSM|ALT_INV_CE~q\ : std_logic;
SIGNAL \RAM_FSM|ALT_INV_WE~q\ : std_logic;
SIGNAL \ALT_INV_BOTONES[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_BOTONES[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_BOTONES[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_RESET~input_o\ : std_logic;

BEGIN

ww_RESET <= RESET;
ww_CLK <= CLK;
ww_BOTONES <= BOTONES;
ww_LLAVE <= LLAVE;
LED_WRITE <= ww_LED_WRITE;
LED_READ <= ww_LED_READ;
LED_ERROR <= ww_LED_ERROR;
WE <= ww_WE;
CE <= ww_CE;
OE <= ww_OE;
LB <= ww_LB;
UB <= ww_UB;
DATA_BUS <= ww_DATA_BUS;
DATA_BUS2 <= ww_DATA_BUS2;
\GND\ <= \ww_GND\;
ADDRESS <= ww_ADDRESS;
DISP0 <= ww_DISP0;
DISP1 <= ww_DISP1;
DISP2 <= ww_DISP2;
RAM_STATE <= ww_RAM_STATE;
TOP_STATE <= ww_TOP_STATE;
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

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\Gral_FSM|ALT_INV_current_state.INITWR~q\ <= NOT \Gral_FSM|current_state.INITWR~q\;
\DISP2OUT|ALT_INV_Mux0~0_combout\ <= NOT \DISP2OUT|Mux0~0_combout\;
\DISP1OUT|ALT_INV_Mux0~0_combout\ <= NOT \DISP1OUT|Mux0~0_combout\;
\DISP0OUT|ALT_INV_Mux0~0_combout\ <= NOT \DISP0OUT|Mux0~0_combout\;
\RAM_FSM|ALT_INV_OE~q\ <= NOT \RAM_FSM|OE~q\;
\RAM_FSM|ALT_INV_CE~q\ <= NOT \RAM_FSM|CE~q\;
\RAM_FSM|ALT_INV_WE~q\ <= NOT \RAM_FSM|WE~q\;
\ALT_INV_BOTONES[2]~input_o\ <= NOT \BOTONES[2]~input_o\;
\ALT_INV_BOTONES[1]~input_o\ <= NOT \BOTONES[1]~input_o\;
\ALT_INV_BOTONES[0]~input_o\ <= NOT \BOTONES[0]~input_o\;
\ALT_INV_RESET~input_o\ <= NOT \RESET~input_o\;

-- Location: IOOBUF_X5_Y0_N9
\DATA_BUS[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:0:MUX_DATA|Mux0~0_combout\,
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\DATA_BUS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:1:MUX_DATA|Mux0~0_combout\,
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\DATA_BUS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:2:MUX_DATA|Mux0~0_combout\,
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\DATA_BUS[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:3:MUX_DATA|Mux0~0_combout\,
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\DATA_BUS[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:4:MUX_DATA|Mux0~0_combout\,
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\DATA_BUS[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:5:MUX_DATA|Mux0~0_combout\,
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\DATA_BUS[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:6:MUX_DATA|Mux0~0_combout\,
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\DATA_BUS[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:7:MUX_DATA|Mux0~0_combout\,
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[7]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\DATA_BUS[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:8:MUX_DATA|Mux0~0_combout\,
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[8]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\DATA_BUS[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:9:MUX_DATA|Mux0~0_combout\,
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[9]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\DATA_BUS[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:10:MUX_DATA|Mux0~0_combout\,
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[10]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\DATA_BUS[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:11:MUX_DATA|Mux0~0_combout\,
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[11]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\DATA_BUS[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:12:MUX_DATA|Mux0~0_combout\,
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[12]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\DATA_BUS[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:13:MUX_DATA|Mux0~0_combout\,
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[13]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\DATA_BUS[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:14:MUX_DATA|Mux0~0_combout\,
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[14]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\DATA_BUS[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:15:MUX_DATA|Mux0~0_combout\,
	oe => \Gral_FSM|RD_WR~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[15]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
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

-- Location: IOOBUF_X107_Y73_N9
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

-- Location: IOOBUF_X69_Y73_N16
\LED_ERROR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Gral_FSM|Led_error~q\,
	devoe => ww_devoe,
	o => \LED_ERROR~output_o\);

-- Location: IOOBUF_X23_Y0_N23
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

-- Location: IOOBUF_X23_Y0_N16
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

-- Location: IOOBUF_X1_Y0_N23
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

-- Location: IOOBUF_X1_Y0_N9
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

-- Location: IOOBUF_X0_Y4_N2
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

-- Location: IOOBUF_X107_Y0_N2
\DATA_BUS2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:0:MUX_DATA|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS2[0]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\DATA_BUS2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:1:MUX_DATA|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS2[1]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\DATA_BUS2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:2:MUX_DATA|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS2[2]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\DATA_BUS2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:3:MUX_DATA|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS2[3]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\DATA_BUS2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:4:MUX_DATA|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS2[4]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\DATA_BUS2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:5:MUX_DATA|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS2[5]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\DATA_BUS2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:6:MUX_DATA|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS2[6]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\DATA_BUS2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:7:MUX_DATA|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS2[7]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\DATA_BUS2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:8:MUX_DATA|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS2[8]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\DATA_BUS2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:9:MUX_DATA|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS2[9]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\DATA_BUS2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:10:MUX_DATA|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS2[10]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\DATA_BUS2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:11:MUX_DATA|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS2[11]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\DATA_BUS2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:12:MUX_DATA|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS2[12]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\DATA_BUS2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:13:MUX_DATA|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS2[13]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\DATA_BUS2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:14:MUX_DATA|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS2[14]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\DATA_BUS2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_DATA:15:MUX_DATA|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS2[15]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\GND~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GND~output_o\);

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X3_Y0_N2
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

-- Location: IOOBUF_X20_Y0_N16
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

-- Location: IOOBUF_X9_Y0_N2
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

-- Location: IOOBUF_X0_Y4_N9
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

-- Location: IOOBUF_X1_Y0_N16
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

-- Location: IOOBUF_X0_Y4_N23
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

-- Location: IOOBUF_X0_Y5_N16
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

-- Location: IOOBUF_X5_Y0_N16
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

-- Location: IOOBUF_X0_Y31_N16
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

-- Location: IOOBUF_X0_Y6_N2
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

-- Location: IOOBUF_X0_Y22_N16
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

-- Location: IOOBUF_X0_Y8_N23
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

-- Location: IOOBUF_X0_Y23_N23
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

-- Location: IOOBUF_X0_Y19_N2
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

-- Location: IOOBUF_X27_Y0_N9
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

-- Location: IOOBUF_X49_Y0_N9
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

-- Location: IOOBUF_X11_Y0_N9
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

-- Location: IOOBUF_X11_Y0_N2
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

-- Location: IOOBUF_X0_Y20_N16
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

-- Location: IOOBUF_X69_Y73_N23
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

-- Location: IOOBUF_X107_Y73_N23
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

-- Location: IOOBUF_X67_Y73_N23
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

-- Location: IOOBUF_X115_Y50_N2
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

-- Location: IOOBUF_X115_Y54_N16
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

-- Location: IOOBUF_X115_Y67_N16
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

-- Location: IOOBUF_X115_Y69_N2
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

-- Location: IOOBUF_X115_Y41_N2
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

-- Location: IOOBUF_X115_Y30_N9
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

-- Location: IOOBUF_X115_Y25_N23
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

-- Location: IOOBUF_X115_Y30_N2
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

-- Location: IOOBUF_X115_Y20_N9
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

-- Location: IOOBUF_X115_Y22_N2
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

-- Location: IOOBUF_X115_Y28_N9
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

-- Location: IOOBUF_X115_Y17_N9
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

-- Location: IOOBUF_X115_Y16_N2
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

-- Location: IOOBUF_X115_Y19_N9
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

-- Location: IOOBUF_X115_Y19_N2
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

-- Location: IOOBUF_X115_Y18_N2
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

-- Location: IOOBUF_X115_Y20_N2
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

-- Location: IOOBUF_X115_Y21_N16
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

-- Location: IOOBUF_X38_Y0_N9
\RAM_STATE[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_FSM|STATE\(0),
	devoe => ww_devoe,
	o => \RAM_STATE[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\RAM_STATE[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_FSM|STATE\(1),
	devoe => ww_devoe,
	o => \RAM_STATE[1]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\RAM_STATE[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_FSM|STATE\(2),
	devoe => ww_devoe,
	o => \RAM_STATE[2]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\RAM_STATE[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_FSM|STATE\(3),
	devoe => ww_devoe,
	o => \RAM_STATE[3]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\RAM_STATE[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_FSM|STATE\(4),
	devoe => ww_devoe,
	o => \RAM_STATE[4]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\RAM_STATE[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_FSM|STATE\(5),
	devoe => ww_devoe,
	o => \RAM_STATE[5]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\TOP_STATE[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Gral_FSM|STATE\(0),
	devoe => ww_devoe,
	o => \TOP_STATE[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\TOP_STATE[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Gral_FSM|STATE\(1),
	devoe => ww_devoe,
	o => \TOP_STATE[1]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\TOP_STATE[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Gral_FSM|STATE\(2),
	devoe => ww_devoe,
	o => \TOP_STATE[2]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\TOP_STATE[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Gral_FSM|STATE\(3),
	devoe => ww_devoe,
	o => \TOP_STATE[3]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\TOP_STATE[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Gral_FSM|STATE\(4),
	devoe => ww_devoe,
	o => \TOP_STATE[4]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\TOP_STATE[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Gral_FSM|STATE\(5),
	devoe => ww_devoe,
	o => \TOP_STATE[5]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\TOP_STATE[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Gral_FSM|STATE\(6),
	devoe => ww_devoe,
	o => \TOP_STATE[6]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\TOP_STATE[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Gral_FSM|STATE\(7),
	devoe => ww_devoe,
	o => \TOP_STATE[7]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\TOP_STATE[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Gral_FSM|STATE\(8),
	devoe => ww_devoe,
	o => \TOP_STATE[8]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\TOP_STATE[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Gral_FSM|STATE\(9),
	devoe => ww_devoe,
	o => \TOP_STATE[9]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X42_Y7_N12
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

-- Location: LCCOMB_X42_Y7_N14
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

-- Location: LCCOMB_X43_Y7_N30
\Gral_FSM|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector24~0_combout\ = (\Gral_FSM|direccion\(1) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(1),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector24~0_combout\);

-- Location: IOIBUF_X115_Y14_N1
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: FF_X42_Y7_N15
\Gral_FSM|direccion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[1]~22_combout\,
	asdata => \Gral_FSM|Selector24~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(1));

-- Location: LCCOMB_X42_Y7_N16
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

-- Location: LCCOMB_X42_Y7_N8
\Gral_FSM|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector23~0_combout\ = (\Gral_FSM|direccion\(2) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(2),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector23~0_combout\);

-- Location: FF_X42_Y7_N17
\Gral_FSM|direccion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[2]~24_combout\,
	asdata => \Gral_FSM|Selector23~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(2));

-- Location: LCCOMB_X42_Y7_N18
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

-- Location: LCCOMB_X41_Y7_N6
\Gral_FSM|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector22~0_combout\ = (\Gral_FSM|direccion\(3) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gral_FSM|direccion\(3),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector22~0_combout\);

-- Location: FF_X42_Y7_N19
\Gral_FSM|direccion[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[3]~26_combout\,
	asdata => \Gral_FSM|Selector22~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(3));

-- Location: LCCOMB_X42_Y7_N20
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

-- Location: LCCOMB_X41_Y7_N4
\Gral_FSM|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector21~0_combout\ = (\Gral_FSM|direccion\(4) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gral_FSM|direccion\(4),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector21~0_combout\);

-- Location: FF_X42_Y7_N21
\Gral_FSM|direccion[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[4]~28_combout\,
	asdata => \Gral_FSM|Selector21~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(4));

-- Location: LCCOMB_X42_Y7_N22
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

-- Location: LCCOMB_X42_Y7_N2
\Gral_FSM|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector20~0_combout\ = (\Gral_FSM|direccion\(5) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(5),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector20~0_combout\);

-- Location: FF_X42_Y7_N23
\Gral_FSM|direccion[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[5]~30_combout\,
	asdata => \Gral_FSM|Selector20~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(5));

-- Location: LCCOMB_X42_Y7_N24
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

-- Location: LCCOMB_X41_Y7_N26
\Gral_FSM|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector19~0_combout\ = (\Gral_FSM|direccion\(6) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(6),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector19~0_combout\);

-- Location: FF_X42_Y7_N25
\Gral_FSM|direccion[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[6]~32_combout\,
	asdata => \Gral_FSM|Selector19~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(6));

-- Location: LCCOMB_X42_Y7_N26
\Gral_FSM|direccion[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|direccion[7]~34_combout\ = (\Gral_FSM|direccion\(7) & (!\Gral_FSM|direccion[6]~33\)) # (!\Gral_FSM|direccion\(7) & ((\Gral_FSM|direccion[6]~33\) # (GND)))
-- \Gral_FSM|direccion[7]~35\ = CARRY((!\Gral_FSM|direccion[6]~33\) # (!\Gral_FSM|direccion\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(7),
	datad => VCC,
	cin => \Gral_FSM|direccion[6]~33\,
	combout => \Gral_FSM|direccion[7]~34_combout\,
	cout => \Gral_FSM|direccion[7]~35\);

-- Location: LCCOMB_X42_Y7_N4
\Gral_FSM|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector18~0_combout\ = (\Gral_FSM|direccion\(7) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(7),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector18~0_combout\);

-- Location: FF_X42_Y7_N27
\Gral_FSM|direccion[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[7]~34_combout\,
	asdata => \Gral_FSM|Selector18~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(7));

-- Location: LCCOMB_X42_Y7_N28
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

-- Location: LCCOMB_X43_Y7_N22
\Gral_FSM|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector17~0_combout\ = (\Gral_FSM|direccion\(8) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(8),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector17~0_combout\);

-- Location: FF_X42_Y7_N29
\Gral_FSM|direccion[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[8]~36_combout\,
	asdata => \Gral_FSM|Selector17~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(8));

-- Location: LCCOMB_X42_Y7_N30
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

-- Location: LCCOMB_X43_Y7_N14
\Gral_FSM|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector16~0_combout\ = (\Gral_FSM|current_state.IDLE~q\ & \Gral_FSM|direccion\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|current_state.IDLE~q\,
	datad => \Gral_FSM|direccion\(9),
	combout => \Gral_FSM|Selector16~0_combout\);

-- Location: FF_X42_Y7_N31
\Gral_FSM|direccion[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[9]~38_combout\,
	asdata => \Gral_FSM|Selector16~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(9));

-- Location: LCCOMB_X42_Y7_N6
\Gral_FSM|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Equal0~1_combout\ = (\Gral_FSM|direccion\(7) & (\Gral_FSM|direccion\(2) & (\Gral_FSM|direccion\(1) & \Gral_FSM|direccion\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(7),
	datab => \Gral_FSM|direccion\(2),
	datac => \Gral_FSM|direccion\(1),
	datad => \Gral_FSM|direccion\(4),
	combout => \Gral_FSM|Equal0~1_combout\);

-- Location: LCCOMB_X42_Y6_N0
\Gral_FSM|direccion[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|direccion[10]~40_combout\ = (\Gral_FSM|direccion\(10) & (\Gral_FSM|direccion[9]~39\ $ (GND))) # (!\Gral_FSM|direccion\(10) & (!\Gral_FSM|direccion[9]~39\ & VCC))
-- \Gral_FSM|direccion[10]~41\ = CARRY((\Gral_FSM|direccion\(10) & !\Gral_FSM|direccion[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(10),
	datad => VCC,
	cin => \Gral_FSM|direccion[9]~39\,
	combout => \Gral_FSM|direccion[10]~40_combout\,
	cout => \Gral_FSM|direccion[10]~41\);

-- Location: LCCOMB_X42_Y6_N28
\Gral_FSM|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector15~0_combout\ = (\Gral_FSM|direccion\(10) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(10),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector15~0_combout\);

-- Location: FF_X42_Y6_N1
\Gral_FSM|direccion[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[10]~40_combout\,
	asdata => \Gral_FSM|Selector15~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(10));

-- Location: LCCOMB_X42_Y6_N2
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

-- Location: LCCOMB_X42_Y6_N22
\Gral_FSM|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector14~0_combout\ = (\Gral_FSM|direccion\(11) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(11),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector14~0_combout\);

-- Location: FF_X42_Y6_N3
\Gral_FSM|direccion[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[11]~42_combout\,
	asdata => \Gral_FSM|Selector14~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(11));

-- Location: LCCOMB_X43_Y7_N0
\Gral_FSM|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Equal0~2_combout\ = (\Gral_FSM|direccion\(8) & (\Gral_FSM|direccion\(10) & \Gral_FSM|direccion\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(8),
	datac => \Gral_FSM|direccion\(10),
	datad => \Gral_FSM|direccion\(11),
	combout => \Gral_FSM|Equal0~2_combout\);

-- Location: LCCOMB_X43_Y7_N12
\Gral_FSM|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Equal0~3_combout\ = (\Gral_FSM|Equal0~0_combout\ & (\Gral_FSM|direccion\(9) & (\Gral_FSM|Equal0~1_combout\ & \Gral_FSM|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|Equal0~0_combout\,
	datab => \Gral_FSM|direccion\(9),
	datac => \Gral_FSM|Equal0~1_combout\,
	datad => \Gral_FSM|Equal0~2_combout\,
	combout => \Gral_FSM|Equal0~3_combout\);

-- Location: LCCOMB_X43_Y7_N26
\Gral_FSM|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector1~0_combout\ = (!\RAM_FSM|Ready~q\ & \Gral_FSM|current_state.LOADDATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAM_FSM|Ready~q\,
	datad => \Gral_FSM|current_state.LOADDATA~q\,
	combout => \Gral_FSM|Selector1~0_combout\);

-- Location: IOIBUF_X115_Y40_N8
\BOTONES[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTONES(0),
	o => \BOTONES[0]~input_o\);

-- Location: LCCOMB_X47_Y7_N28
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

-- Location: IOIBUF_X115_Y53_N15
\BOTONES[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTONES(1),
	o => \BOTONES[1]~input_o\);

-- Location: LCCOMB_X46_Y7_N22
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

-- Location: FF_X46_Y7_N23
\RISING_BTS:1:BT|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_BOTONES[1]~input_o\,
	d => \RISING_BTS:1:BT|Q~feeder_combout\,
	clrn => \Gral_FSM|SetBotones~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RISING_BTS:1:BT|Q~q\);

-- Location: LCCOMB_X46_Y7_N28
\Gral_FSM|next_state.INITRD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|next_state.INITRD~0_combout\ = (!\Gral_FSM|current_state.IDLE~q\ & (!\RISING_BTS:0:BT|Q~q\ & \RISING_BTS:1:BT|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.IDLE~q\,
	datab => \RISING_BTS:0:BT|Q~q\,
	datac => \RISING_BTS:1:BT|Q~q\,
	combout => \Gral_FSM|next_state.INITRD~0_combout\);

-- Location: LCCOMB_X46_Y7_N10
\Gral_FSM|current_state.INITRD~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|current_state.INITRD~feeder_combout\ = \Gral_FSM|next_state.INITRD~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gral_FSM|next_state.INITRD~0_combout\,
	combout => \Gral_FSM|current_state.INITRD~feeder_combout\);

-- Location: FF_X46_Y7_N11
\Gral_FSM|current_state.INITRD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|current_state.INITRD~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|current_state.INITRD~q\);

-- Location: LCCOMB_X46_Y7_N0
\Gral_FSM|WideOr10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|WideOr10~combout\ = (!\Gral_FSM|current_state.INITRD~q\ & (!\Gral_FSM|current_state.INITWR~q\ & !\Gral_FSM|current_state.FINRD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.INITRD~q\,
	datac => \Gral_FSM|current_state.INITWR~q\,
	datad => \Gral_FSM|current_state.FINRD~q\,
	combout => \Gral_FSM|WideOr10~combout\);

-- Location: FF_X46_Y7_N1
\Gral_FSM|SetBotones\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|WideOr10~combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|SetBotones~q\);

-- Location: FF_X47_Y7_N29
\RISING_BTS:0:BT|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_BOTONES[0]~input_o\,
	d => \RISING_BTS:0:BT|Q~feeder_combout\,
	clrn => \Gral_FSM|SetBotones~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RISING_BTS:0:BT|Q~q\);

-- Location: LCCOMB_X43_Y7_N16
\Gral_FSM|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector1~1_combout\ = (\Gral_FSM|Equal0~3_combout\ & (!\Gral_FSM|current_state.IDLE~q\ & ((\RISING_BTS:0:BT|Q~q\)))) # (!\Gral_FSM|Equal0~3_combout\ & ((\Gral_FSM|Selector1~0_combout\) # ((!\Gral_FSM|current_state.IDLE~q\ & 
-- \RISING_BTS:0:BT|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|Equal0~3_combout\,
	datab => \Gral_FSM|current_state.IDLE~q\,
	datac => \Gral_FSM|Selector1~0_combout\,
	datad => \RISING_BTS:0:BT|Q~q\,
	combout => \Gral_FSM|Selector1~1_combout\);

-- Location: FF_X43_Y7_N17
\Gral_FSM|current_state.INITWR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|Selector1~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|current_state.INITWR~q\);

-- Location: LCCOMB_X45_Y7_N18
\Gral_FSM|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector2~0_combout\ = (\Gral_FSM|current_state.INITWR~q\) # ((!\RAM_FSM|Ready~q\ & \Gral_FSM|current_state.ESPERAWR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_FSM|Ready~q\,
	datac => \Gral_FSM|current_state.ESPERAWR~q\,
	datad => \Gral_FSM|current_state.INITWR~q\,
	combout => \Gral_FSM|Selector2~0_combout\);

-- Location: FF_X45_Y7_N19
\Gral_FSM|current_state.ESPERAWR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|Selector2~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|current_state.ESPERAWR~q\);

-- Location: LCCOMB_X45_Y7_N16
\Gral_FSM|next_state.LOADDATA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|next_state.LOADDATA~0_combout\ = (\RAM_FSM|Ready~q\ & ((\Gral_FSM|current_state.ESPERAWR~q\) # (\Gral_FSM|current_state.LOADDATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|current_state.ESPERAWR~q\,
	datac => \Gral_FSM|current_state.LOADDATA~q\,
	datad => \RAM_FSM|Ready~q\,
	combout => \Gral_FSM|next_state.LOADDATA~0_combout\);

-- Location: FF_X45_Y7_N17
\Gral_FSM|current_state.LOADDATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|next_state.LOADDATA~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|current_state.LOADDATA~q\);

-- Location: LCCOMB_X43_Y7_N2
\Gral_FSM|next_state.PRENDERLED~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|next_state.PRENDERLED~2_combout\ = (\Gral_FSM|current_state.LOADDATA~q\ & (!\RAM_FSM|Ready~q\ & \Gral_FSM|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|current_state.LOADDATA~q\,
	datac => \RAM_FSM|Ready~q\,
	datad => \Gral_FSM|Equal0~3_combout\,
	combout => \Gral_FSM|next_state.PRENDERLED~2_combout\);

-- Location: FF_X43_Y7_N3
\Gral_FSM|current_state.PRENDERLED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|next_state.PRENDERLED~2_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|current_state.PRENDERLED~q\);

-- Location: LCCOMB_X43_Y7_N24
\Gral_FSM|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|WideOr6~0_combout\ = (\Gral_FSM|current_state.LOADDATA~q\) # ((\Gral_FSM|current_state.INITWR~q\) # ((\Gral_FSM|current_state.ESPERAWR~q\) # (\Gral_FSM|current_state.PRENDERLED~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.LOADDATA~q\,
	datab => \Gral_FSM|current_state.INITWR~q\,
	datac => \Gral_FSM|current_state.ESPERAWR~q\,
	datad => \Gral_FSM|current_state.PRENDERLED~q\,
	combout => \Gral_FSM|WideOr6~0_combout\);

-- Location: FF_X43_Y7_N25
\Gral_FSM|RD_WR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|WideOr6~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|RD_WR~q\);

-- Location: LCCOMB_X45_Y7_N6
\Gral_FSM|next_state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|next_state~2_combout\ = (!\Gral_FSM|current_state.LOADDATA~q\ & !\Gral_FSM|current_state.ESPERAWR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|current_state.LOADDATA~q\,
	datad => \Gral_FSM|current_state.ESPERAWR~q\,
	combout => \Gral_FSM|next_state~2_combout\);

-- Location: LCCOMB_X43_Y7_N4
\Gral_FSM|WideOr7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|WideOr7~combout\ = (\Gral_FSM|current_state.INITRD~q\) # ((\Gral_FSM|current_state.INITWR~q\) # ((\Gral_FSM|current_state.ESPERARD~q\) # (!\Gral_FSM|next_state~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.INITRD~q\,
	datab => \Gral_FSM|current_state.INITWR~q\,
	datac => \Gral_FSM|next_state~2_combout\,
	datad => \Gral_FSM|current_state.ESPERARD~q\,
	combout => \Gral_FSM|WideOr7~combout\);

-- Location: FF_X43_Y7_N5
\Gral_FSM|ENRD_WR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|WideOr7~combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|ENRD_WR~q\);

-- Location: LCCOMB_X39_Y4_N10
\RAM_FSM|next_state.INIT_WR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|next_state.INIT_WR~0_combout\ = (!\RAM_FSM|current_state.IDLE~q\ & (\Gral_FSM|RD_WR~q\ & \Gral_FSM|ENRD_WR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_FSM|current_state.IDLE~q\,
	datac => \Gral_FSM|RD_WR~q\,
	datad => \Gral_FSM|ENRD_WR~q\,
	combout => \RAM_FSM|next_state.INIT_WR~0_combout\);

-- Location: FF_X39_Y4_N11
\RAM_FSM|current_state.INIT_WR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|next_state.INIT_WR~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|current_state.INIT_WR~q\);

-- Location: LCCOMB_X40_Y7_N20
\Gral_FSM|Ext_ready~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Ext_ready~0_combout\ = (\Gral_FSM|current_state.LOADDATA~q\) # (\Gral_FSM|current_state.FINRD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gral_FSM|current_state.LOADDATA~q\,
	datad => \Gral_FSM|current_state.FINRD~q\,
	combout => \Gral_FSM|Ext_ready~0_combout\);

-- Location: FF_X40_Y7_N21
\Gral_FSM|Ext_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|Ext_ready~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|Ext_ready~q\);

-- Location: LCCOMB_X39_Y4_N2
\RAM_FSM|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|Selector2~0_combout\ = (\RAM_FSM|current_state.INIT_WR~q\) # ((\RAM_FSM|current_state.WAIT_WR~q\ & !\Gral_FSM|Ext_ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_FSM|current_state.INIT_WR~q\,
	datac => \RAM_FSM|current_state.WAIT_WR~q\,
	datad => \Gral_FSM|Ext_ready~q\,
	combout => \RAM_FSM|Selector2~0_combout\);

-- Location: FF_X39_Y4_N3
\RAM_FSM|current_state.WAIT_WR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|Selector2~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|current_state.WAIT_WR~q\);

-- Location: LCCOMB_X39_Y4_N28
\RAM_FSM|next_state.END_WR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|next_state.END_WR~0_combout\ = (\RAM_FSM|current_state.WAIT_WR~q\ & \Gral_FSM|Ext_ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_FSM|current_state.WAIT_WR~q\,
	datad => \Gral_FSM|Ext_ready~q\,
	combout => \RAM_FSM|next_state.END_WR~0_combout\);

-- Location: FF_X39_Y4_N29
\RAM_FSM|current_state.END_WR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|next_state.END_WR~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|current_state.END_WR~q\);

-- Location: LCCOMB_X39_Y4_N0
\RAM_FSM|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|Selector0~0_combout\ = (\RAM_FSM|current_state.IDLE~q\ & (\Gral_FSM|Ext_ready~q\ & (\RAM_FSM|current_state.END_RD~q\))) # (!\RAM_FSM|current_state.IDLE~q\ & (((\Gral_FSM|Ext_ready~q\ & \RAM_FSM|current_state.END_RD~q\)) # 
-- (!\Gral_FSM|ENRD_WR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_FSM|current_state.IDLE~q\,
	datab => \Gral_FSM|Ext_ready~q\,
	datac => \RAM_FSM|current_state.END_RD~q\,
	datad => \Gral_FSM|ENRD_WR~q\,
	combout => \RAM_FSM|Selector0~0_combout\);

-- Location: LCCOMB_X39_Y4_N12
\RAM_FSM|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|Selector0~1_combout\ = (!\RAM_FSM|current_state.END_WR~q\ & !\RAM_FSM|Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_FSM|current_state.END_WR~q\,
	datad => \RAM_FSM|Selector0~0_combout\,
	combout => \RAM_FSM|Selector0~1_combout\);

-- Location: FF_X39_Y4_N13
\RAM_FSM|current_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|Selector0~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|current_state.IDLE~q\);

-- Location: LCCOMB_X39_Y4_N4
\RAM_FSM|next_state.INIT_RD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|next_state.INIT_RD~0_combout\ = (!\RAM_FSM|current_state.IDLE~q\ & (!\Gral_FSM|RD_WR~q\ & \Gral_FSM|ENRD_WR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_FSM|current_state.IDLE~q\,
	datac => \Gral_FSM|RD_WR~q\,
	datad => \Gral_FSM|ENRD_WR~q\,
	combout => \RAM_FSM|next_state.INIT_RD~0_combout\);

-- Location: FF_X39_Y4_N5
\RAM_FSM|current_state.INIT_RD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|next_state.INIT_RD~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|current_state.INIT_RD~q\);

-- Location: LCCOMB_X39_Y4_N8
\RAM_FSM|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|Selector1~0_combout\ = (\RAM_FSM|current_state.INIT_RD~q\) # ((\RAM_FSM|current_state.END_RD~q\ & !\Gral_FSM|Ext_ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_FSM|current_state.INIT_RD~q\,
	datac => \RAM_FSM|current_state.END_RD~q\,
	datad => \Gral_FSM|Ext_ready~q\,
	combout => \RAM_FSM|Selector1~0_combout\);

-- Location: FF_X39_Y4_N9
\RAM_FSM|current_state.END_RD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|Selector1~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|current_state.END_RD~q\);

-- Location: LCCOMB_X39_Y4_N24
\RAM_FSM|Ready~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|Ready~0_combout\ = (\RAM_FSM|current_state.END_RD~q\) # (\RAM_FSM|current_state.WAIT_WR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_FSM|current_state.END_RD~q\,
	datad => \RAM_FSM|current_state.WAIT_WR~q\,
	combout => \RAM_FSM|Ready~0_combout\);

-- Location: FF_X43_Y7_N27
\RAM_FSM|Ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RAM_FSM|Ready~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|Ready~q\);

-- Location: LCCOMB_X43_Y7_N8
\Gral_FSM|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector3~0_combout\ = (\Gral_FSM|current_state.INITRD~q\) # ((\Gral_FSM|current_state.ESPERARD~q\ & !\RAM_FSM|Ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|current_state.ESPERARD~q\,
	datac => \RAM_FSM|Ready~q\,
	datad => \Gral_FSM|current_state.INITRD~q\,
	combout => \Gral_FSM|Selector3~0_combout\);

-- Location: LCCOMB_X43_Y7_N18
\Gral_FSM|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector3~1_combout\ = (\Gral_FSM|Selector3~0_combout\) # ((\Gral_FSM|current_state.FINRD~q\ & !\Gral_FSM|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.FINRD~q\,
	datac => \Gral_FSM|Selector3~0_combout\,
	datad => \Gral_FSM|Equal0~3_combout\,
	combout => \Gral_FSM|Selector3~1_combout\);

-- Location: FF_X43_Y7_N19
\Gral_FSM|current_state.ESPERARD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|Selector3~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|current_state.ESPERARD~q\);

-- Location: LCCOMB_X45_Y7_N12
\Gral_FSM|next_state.COMPARE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|next_state.COMPARE~0_combout\ = (\Gral_FSM|current_state.ESPERARD~q\ & \RAM_FSM|Ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|current_state.ESPERARD~q\,
	datad => \RAM_FSM|Ready~q\,
	combout => \Gral_FSM|next_state.COMPARE~0_combout\);

-- Location: FF_X45_Y7_N13
\Gral_FSM|current_state.COMPARE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|next_state.COMPARE~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|current_state.COMPARE~q\);

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

-- Location: LCCOMB_X38_Y7_N2
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

-- Location: FF_X38_Y7_N3
\RISING_BTS:2:BT|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_BOTONES[2]~input_o\,
	d => \RISING_BTS:2:BT|Q~feeder_combout\,
	clrn => \Gral_FSM|SetBotones~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RISING_BTS:2:BT|Q~q\);

-- Location: IOIBUF_X20_Y0_N8
\DATA_BUS[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(7),
	o => \DATA_BUS[7]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\DATA_BUS[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(6),
	o => \DATA_BUS[6]~input_o\);

-- Location: LCCOMB_X43_Y7_N6
\Gral_FSM|WideOr12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|WideOr12~combout\ = (\Gral_FSM|current_state.IDLE~q\ & (!\Gral_FSM|current_state.INITWR~q\ & (\Gral_FSM|next_state~2_combout\ & !\Gral_FSM|current_state.PRENDERLED~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.IDLE~q\,
	datab => \Gral_FSM|current_state.INITWR~q\,
	datac => \Gral_FSM|next_state~2_combout\,
	datad => \Gral_FSM|current_state.PRENDERLED~q\,
	combout => \Gral_FSM|WideOr12~combout\);

-- Location: FF_X43_Y7_N7
\Gral_FSM|ADDR_SEL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|WideOr12~combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|ADDR_SEL~q\);

-- Location: LCCOMB_X40_Y7_N22
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

-- Location: LCCOMB_X40_Y7_N18
\Gral_FSM|LOADDIR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|LOADDIR~0_combout\ = !\Gral_FSM|current_state.INITRD~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gral_FSM|current_state.INITRD~q\,
	combout => \Gral_FSM|LOADDIR~0_combout\);

-- Location: FF_X40_Y7_N19
\Gral_FSM|LOADDIR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|LOADDIR~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|LOADDIR~q\);

-- Location: LCCOMB_X40_Y7_N24
\Gral_FSM|EN_LFSR~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|EN_LFSR~feeder_combout\ = \Gral_FSM|current_state.FINRD~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gral_FSM|current_state.FINRD~q\,
	combout => \Gral_FSM|EN_LFSR~feeder_combout\);

-- Location: FF_X40_Y7_N25
\Gral_FSM|EN_LFSR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|EN_LFSR~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|EN_LFSR~q\);

-- Location: FF_X40_Y7_N23
\LFSR|LFSR:1:i32:bit32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LFSR|LFSR:1:i32:bit32|Q~feeder_combout\,
	clrn => \Gral_FSM|LOADDIR~q\,
	ena => \Gral_FSM|EN_LFSR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|LFSR:1:i32:bit32|Q~q\);

-- Location: LCCOMB_X40_Y7_N0
\LFSR|LFSR:2:i32:bit32|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR|LFSR:2:i32:bit32|Q~feeder_combout\ = \LFSR|LFSR:1:i32:bit32|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LFSR|LFSR:1:i32:bit32|Q~q\,
	combout => \LFSR|LFSR:2:i32:bit32|Q~feeder_combout\);

-- Location: FF_X40_Y7_N1
\LFSR|LFSR:2:i32:bit32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LFSR|LFSR:2:i32:bit32|Q~feeder_combout\,
	clrn => \Gral_FSM|LOADDIR~q\,
	ena => \Gral_FSM|EN_LFSR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|LFSR:2:i32:bit32|Q~q\);

-- Location: LCCOMB_X40_Y7_N2
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

-- Location: FF_X40_Y7_N3
\LFSR|LFSR:3:i32:bit32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LFSR|LFSR:3:i32:bit32|Q~feeder_combout\,
	clrn => \Gral_FSM|LOADDIR~q\,
	ena => \Gral_FSM|EN_LFSR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|LFSR:3:i32:bit32|Q~q\);

-- Location: LCCOMB_X40_Y7_N28
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

-- Location: FF_X40_Y7_N29
\LFSR|LFSR:4:i32:bit32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LFSR|LFSR:4:i32:bit32|Q~feeder_combout\,
	clrn => \Gral_FSM|LOADDIR~q\,
	ena => \Gral_FSM|EN_LFSR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|LFSR:4:i32:bit32|Q~q\);

-- Location: LCCOMB_X40_Y7_N14
\LFSR|LFSR:5:i32:bit32|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR|LFSR:5:i32:bit32|Q~feeder_combout\ = \LFSR|LFSR:4:i32:bit32|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LFSR|LFSR:4:i32:bit32|Q~q\,
	combout => \LFSR|LFSR:5:i32:bit32|Q~feeder_combout\);

-- Location: FF_X40_Y7_N15
\LFSR|LFSR:5:i32:bit32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LFSR|LFSR:5:i32:bit32|Q~feeder_combout\,
	clrn => \Gral_FSM|LOADDIR~q\,
	ena => \Gral_FSM|EN_LFSR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|LFSR:5:i32:bit32|Q~q\);

-- Location: LCCOMB_X40_Y7_N4
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

-- Location: FF_X40_Y7_N5
\LFSR|LFSR:6:i32:bit32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LFSR|LFSR:6:i32:bit32|Q~feeder_combout\,
	clrn => \Gral_FSM|LOADDIR~q\,
	ena => \Gral_FSM|EN_LFSR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|LFSR:6:i32:bit32|Q~q\);

-- Location: LCCOMB_X40_Y7_N30
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

-- Location: FF_X40_Y7_N31
\LFSR|LFSR:7:i32:bit32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LFSR|LFSR:7:i32:bit32|Q~feeder_combout\,
	clrn => \Gral_FSM|LOADDIR~q\,
	ena => \Gral_FSM|EN_LFSR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|LFSR:7:i32:bit32|Q~q\);

-- Location: LCCOMB_X40_Y7_N16
\LFSR|LFSR:8:i32:bit32|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR|LFSR:8:i32:bit32|Q~feeder_combout\ = \LFSR|LFSR:7:i32:bit32|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LFSR|LFSR:7:i32:bit32|Q~q\,
	combout => \LFSR|LFSR:8:i32:bit32|Q~feeder_combout\);

-- Location: FF_X40_Y7_N17
\LFSR|LFSR:8:i32:bit32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LFSR|LFSR:8:i32:bit32|Q~feeder_combout\,
	clrn => \Gral_FSM|LOADDIR~q\,
	ena => \Gral_FSM|EN_LFSR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|LFSR:8:i32:bit32|Q~q\);

-- Location: LCCOMB_X40_Y7_N10
\LFSR|LFSR:9:i32:bit32|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR|LFSR:9:i32:bit32|Q~feeder_combout\ = \LFSR|LFSR:8:i32:bit32|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LFSR|LFSR:8:i32:bit32|Q~q\,
	combout => \LFSR|LFSR:9:i32:bit32|Q~feeder_combout\);

-- Location: FF_X40_Y7_N11
\LFSR|LFSR:9:i32:bit32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LFSR|LFSR:9:i32:bit32|Q~feeder_combout\,
	clrn => \Gral_FSM|LOADDIR~q\,
	ena => \Gral_FSM|EN_LFSR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|LFSR:9:i32:bit32|Q~q\);

-- Location: LCCOMB_X40_Y7_N8
\LFSR|LFSR:10:i32:bit32|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR|LFSR:10:i32:bit32|Q~feeder_combout\ = \LFSR|LFSR:9:i32:bit32|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LFSR|LFSR:9:i32:bit32|Q~q\,
	combout => \LFSR|LFSR:10:i32:bit32|Q~feeder_combout\);

-- Location: FF_X40_Y7_N9
\LFSR|LFSR:10:i32:bit32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LFSR|LFSR:10:i32:bit32|Q~feeder_combout\,
	clrn => \Gral_FSM|LOADDIR~q\,
	ena => \Gral_FSM|EN_LFSR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|LFSR:10:i32:bit32|Q~q\);

-- Location: FF_X40_Y7_N7
\LFSR|LFSR:11:i32:bit32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \LFSR|LFSR:10:i32:bit32|Q~q\,
	clrn => \Gral_FSM|LOADDIR~q\,
	sload => VCC,
	ena => \Gral_FSM|EN_LFSR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|LFSR:11:i32:bit32|Q~q\);

-- Location: LCCOMB_X40_Y7_N6
\LFSR|LFSR:0:i0:bit0|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR|LFSR:0:i0:bit0|Q~0_combout\ = (\Gral_FSM|EN_LFSR~q\ & (\LFSR|LFSR:3:i32:bit32|Q~q\ $ (\LFSR|LFSR:5:i32:bit32|Q~q\ $ (!\LFSR|LFSR:11:i32:bit32|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR|LFSR:3:i32:bit32|Q~q\,
	datab => \LFSR|LFSR:5:i32:bit32|Q~q\,
	datac => \LFSR|LFSR:11:i32:bit32|Q~q\,
	datad => \Gral_FSM|EN_LFSR~q\,
	combout => \LFSR|LFSR:0:i0:bit0|Q~0_combout\);

-- Location: LCCOMB_X40_Y7_N12
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

-- Location: FF_X40_Y7_N13
\LFSR|LFSR:0:i0:bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LFSR|LFSR:0:i0:bit0|Q~1_combout\,
	clrn => \Gral_FSM|LOADDIR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|LFSR:0:i0:bit0|Q~q\);

-- Location: LCCOMB_X39_Y7_N0
\REG_ADDR:0:MUX_ADDR|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_ADDR:0:MUX_ADDR|Mux0~0_combout\ = (\Gral_FSM|ADDR_SEL~q\ & ((!\LFSR|LFSR:0:i0:bit0|Q~q\))) # (!\Gral_FSM|ADDR_SEL~q\ & (\Gral_FSM|direccion\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(0),
	datab => \Gral_FSM|ADDR_SEL~q\,
	datac => \LFSR|LFSR:0:i0:bit0|Q~q\,
	combout => \REG_ADDR:0:MUX_ADDR|Mux0~0_combout\);

-- Location: LCCOMB_X39_Y7_N22
\REG_ADDR:1:MUX_ADDR|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_ADDR:1:MUX_ADDR|Mux0~0_combout\ = (\Gral_FSM|ADDR_SEL~q\ & ((!\LFSR|LFSR:1:i32:bit32|Q~q\))) # (!\Gral_FSM|ADDR_SEL~q\ & (\Gral_FSM|direccion\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(1),
	datab => \LFSR|LFSR:1:i32:bit32|Q~q\,
	datac => \Gral_FSM|ADDR_SEL~q\,
	combout => \REG_ADDR:1:MUX_ADDR|Mux0~0_combout\);

-- Location: LCCOMB_X39_Y7_N20
\REG_ADDR:2:MUX_ADDR|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_ADDR:2:MUX_ADDR|Mux0~0_combout\ = (\Gral_FSM|ADDR_SEL~q\ & ((!\LFSR|LFSR:2:i32:bit32|Q~q\))) # (!\Gral_FSM|ADDR_SEL~q\ & (\Gral_FSM|direccion\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(2),
	datab => \Gral_FSM|ADDR_SEL~q\,
	datac => \LFSR|LFSR:2:i32:bit32|Q~q\,
	combout => \REG_ADDR:2:MUX_ADDR|Mux0~0_combout\);

-- Location: LCCOMB_X39_Y7_N10
\REG_ADDR:3:MUX_ADDR|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_ADDR:3:MUX_ADDR|Mux0~0_combout\ = (\Gral_FSM|ADDR_SEL~q\ & (!\LFSR|LFSR:3:i32:bit32|Q~q\)) # (!\Gral_FSM|ADDR_SEL~q\ & ((\Gral_FSM|direccion\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR|LFSR:3:i32:bit32|Q~q\,
	datab => \Gral_FSM|ADDR_SEL~q\,
	datac => \Gral_FSM|direccion\(3),
	combout => \REG_ADDR:3:MUX_ADDR|Mux0~0_combout\);

-- Location: LCCOMB_X39_Y7_N24
\REG_ADDR:4:MUX_ADDR|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_ADDR:4:MUX_ADDR|Mux0~0_combout\ = (\Gral_FSM|ADDR_SEL~q\ & ((!\LFSR|LFSR:4:i32:bit32|Q~q\))) # (!\Gral_FSM|ADDR_SEL~q\ & (\Gral_FSM|direccion\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(4),
	datab => \LFSR|LFSR:4:i32:bit32|Q~q\,
	datac => \Gral_FSM|ADDR_SEL~q\,
	combout => \REG_ADDR:4:MUX_ADDR|Mux0~0_combout\);

-- Location: LCCOMB_X39_Y7_N14
\REG_ADDR:5:MUX_ADDR|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_ADDR:5:MUX_ADDR|Mux0~0_combout\ = (\Gral_FSM|ADDR_SEL~q\ & (!\LFSR|LFSR:5:i32:bit32|Q~q\)) # (!\Gral_FSM|ADDR_SEL~q\ & ((\Gral_FSM|direccion\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LFSR|LFSR:5:i32:bit32|Q~q\,
	datac => \Gral_FSM|ADDR_SEL~q\,
	datad => \Gral_FSM|direccion\(5),
	combout => \REG_ADDR:5:MUX_ADDR|Mux0~0_combout\);

-- Location: LCCOMB_X41_Y7_N20
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

-- Location: LCCOMB_X39_Y7_N28
\REG_ADDR:7:MUX_ADDR|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_ADDR:7:MUX_ADDR|Mux0~0_combout\ = (\Gral_FSM|ADDR_SEL~q\ & (!\LFSR|LFSR:7:i32:bit32|Q~q\)) # (!\Gral_FSM|ADDR_SEL~q\ & ((\Gral_FSM|direccion\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR|LFSR:7:i32:bit32|Q~q\,
	datab => \Gral_FSM|ADDR_SEL~q\,
	datac => \Gral_FSM|direccion\(7),
	combout => \REG_ADDR:7:MUX_ADDR|Mux0~0_combout\);

-- Location: LCCOMB_X41_Y7_N14
\REG_ADDR:8:MUX_ADDR|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_ADDR:8:MUX_ADDR|Mux0~0_combout\ = (\Gral_FSM|ADDR_SEL~q\ & (!\LFSR|LFSR:8:i32:bit32|Q~q\)) # (!\Gral_FSM|ADDR_SEL~q\ & ((\Gral_FSM|direccion\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR|LFSR:8:i32:bit32|Q~q\,
	datab => \Gral_FSM|direccion\(8),
	datad => \Gral_FSM|ADDR_SEL~q\,
	combout => \REG_ADDR:8:MUX_ADDR|Mux0~0_combout\);

-- Location: LCCOMB_X39_Y7_N26
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

-- Location: LCCOMB_X41_Y7_N28
\REG_ADDR:10:MUX_ADDR|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_ADDR:10:MUX_ADDR|Mux0~0_combout\ = (\Gral_FSM|ADDR_SEL~q\ & (!\LFSR|LFSR:10:i32:bit32|Q~q\)) # (!\Gral_FSM|ADDR_SEL~q\ & ((\Gral_FSM|direccion\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR|LFSR:10:i32:bit32|Q~q\,
	datac => \Gral_FSM|direccion\(10),
	datad => \Gral_FSM|ADDR_SEL~q\,
	combout => \REG_ADDR:10:MUX_ADDR|Mux0~0_combout\);

-- Location: LCCOMB_X41_Y7_N10
\REG_ADDR:11:MUX_ADDR|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_ADDR:11:MUX_ADDR|Mux0~0_combout\ = (\Gral_FSM|ADDR_SEL~q\ & ((!\LFSR|LFSR:11:i32:bit32|Q~q\))) # (!\Gral_FSM|ADDR_SEL~q\ & (\Gral_FSM|direccion\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(11),
	datac => \LFSR|LFSR:11:i32:bit32|Q~q\,
	datad => \Gral_FSM|ADDR_SEL~q\,
	combout => \REG_ADDR:11:MUX_ADDR|Mux0~0_combout\);

-- Location: M9K_X37_Y6_N0
\ROM1|altsyncram_component|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	mem_init2 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	mem_init1 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init0 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
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

-- Location: LCCOMB_X38_Y7_N26
\COMP|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP|Equal0~3_combout\ = (\DATA_BUS[7]~input_o\ & (\ROM1|altsyncram_component|auto_generated|q_a\(7) & (\DATA_BUS[6]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(6))))) # (!\DATA_BUS[7]~input_o\ & 
-- (!\ROM1|altsyncram_component|auto_generated|q_a\(7) & (\DATA_BUS[6]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_BUS[7]~input_o\,
	datab => \DATA_BUS[6]~input_o\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(6),
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(7),
	combout => \COMP|Equal0~3_combout\);

-- Location: IOIBUF_X11_Y0_N22
\DATA_BUS[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(5),
	o => \DATA_BUS[5]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\DATA_BUS[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(4),
	o => \DATA_BUS[4]~input_o\);

-- Location: M9K_X37_Y8_N0
\ROM1|altsyncram_component|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555AAAAAAAA",
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

-- Location: LCCOMB_X38_Y7_N28
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

-- Location: IOIBUF_X9_Y0_N15
\DATA_BUS[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(3),
	o => \DATA_BUS[3]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\DATA_BUS[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(2),
	o => \DATA_BUS[2]~input_o\);

-- Location: M9K_X37_Y10_N0
\ROM1|altsyncram_component|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	mem_init0 => X"555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA00000000",
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

-- Location: LCCOMB_X38_Y7_N22
\COMP|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP|Equal0~1_combout\ = (\DATA_BUS[3]~input_o\ & (\ROM1|altsyncram_component|auto_generated|q_a\(3) & (\DATA_BUS[2]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(2))))) # (!\DATA_BUS[3]~input_o\ & 
-- (!\ROM1|altsyncram_component|auto_generated|q_a\(3) & (\DATA_BUS[2]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_BUS[3]~input_o\,
	datab => \DATA_BUS[2]~input_o\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(3),
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(2),
	combout => \COMP|Equal0~1_combout\);

-- Location: IOIBUF_X5_Y0_N8
\DATA_BUS[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(0),
	o => \DATA_BUS[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\DATA_BUS[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(1),
	o => \DATA_BUS[1]~input_o\);

-- Location: M9K_X37_Y4_N0
\ROM1|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init2 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555",
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

-- Location: LCCOMB_X38_Y7_N20
\COMP|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP|Equal0~0_combout\ = (\DATA_BUS[0]~input_o\ & (\ROM1|altsyncram_component|auto_generated|q_a\(0) & (\DATA_BUS[1]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(1))))) # (!\DATA_BUS[0]~input_o\ & 
-- (!\ROM1|altsyncram_component|auto_generated|q_a\(0) & (\DATA_BUS[1]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_BUS[0]~input_o\,
	datab => \DATA_BUS[1]~input_o\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(1),
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(0),
	combout => \COMP|Equal0~0_combout\);

-- Location: LCCOMB_X38_Y7_N8
\COMP|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP|Equal0~4_combout\ = (\COMP|Equal0~3_combout\ & (\COMP|Equal0~2_combout\ & (\COMP|Equal0~1_combout\ & \COMP|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP|Equal0~3_combout\,
	datab => \COMP|Equal0~2_combout\,
	datac => \COMP|Equal0~1_combout\,
	datad => \COMP|Equal0~0_combout\,
	combout => \COMP|Equal0~4_combout\);

-- Location: IOIBUF_X0_Y7_N8
\DATA_BUS[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(12),
	o => \DATA_BUS[12]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\DATA_BUS[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(13),
	o => \DATA_BUS[13]~input_o\);

-- Location: M9K_X37_Y7_N0
\ROM1|altsyncram_component|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	mem_init2 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	mem_init1 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init0 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
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

-- Location: LCCOMB_X38_Y7_N6
\COMP|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP|Equal0~7_combout\ = (\DATA_BUS[12]~input_o\ & (\ROM1|altsyncram_component|auto_generated|q_a\(12) & (\DATA_BUS[13]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(13))))) # (!\DATA_BUS[12]~input_o\ & 
-- (!\ROM1|altsyncram_component|auto_generated|q_a\(12) & (\DATA_BUS[13]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_BUS[12]~input_o\,
	datab => \DATA_BUS[13]~input_o\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(12),
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(13),
	combout => \COMP|Equal0~7_combout\);

-- Location: IOIBUF_X0_Y17_N15
\DATA_BUS[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(10),
	o => \DATA_BUS[10]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\DATA_BUS[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(11),
	o => \DATA_BUS[11]~input_o\);

-- Location: M9K_X37_Y5_N0
\ROM1|altsyncram_component|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init2 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555",
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

-- Location: LCCOMB_X38_Y7_N4
\COMP|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP|Equal0~6_combout\ = (\DATA_BUS[10]~input_o\ & (\ROM1|altsyncram_component|auto_generated|q_a\(10) & (\DATA_BUS[11]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(11))))) # (!\DATA_BUS[10]~input_o\ & 
-- (!\ROM1|altsyncram_component|auto_generated|q_a\(10) & (\DATA_BUS[11]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_BUS[10]~input_o\,
	datab => \DATA_BUS[11]~input_o\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(11),
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(10),
	combout => \COMP|Equal0~6_combout\);

-- Location: M9K_X37_Y3_N0
\ROM1|altsyncram_component|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	mem_init0 => X"555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA00000000",
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

-- Location: IOIBUF_X0_Y21_N15
\DATA_BUS[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(8),
	o => \DATA_BUS[8]~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\DATA_BUS[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(9),
	o => \DATA_BUS[9]~input_o\);

-- Location: LCCOMB_X38_Y7_N30
\COMP|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP|Equal0~5_combout\ = (\ROM1|altsyncram_component|auto_generated|q_a\(9) & (\DATA_BUS[9]~input_o\ & (\DATA_BUS[8]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(8))))) # (!\ROM1|altsyncram_component|auto_generated|q_a\(9) & 
-- (!\DATA_BUS[9]~input_o\ & (\DATA_BUS[8]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|altsyncram_component|auto_generated|q_a\(9),
	datab => \DATA_BUS[8]~input_o\,
	datac => \DATA_BUS[9]~input_o\,
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(8),
	combout => \COMP|Equal0~5_combout\);

-- Location: IOIBUF_X3_Y0_N15
\DATA_BUS[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(15),
	o => \DATA_BUS[15]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\DATA_BUS[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(14),
	o => \DATA_BUS[14]~input_o\);

-- Location: M9K_X37_Y9_N0
\ROM1|altsyncram_component|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555AAAAAAAA",
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

-- Location: LCCOMB_X38_Y7_N12
\COMP|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP|Equal0~8_combout\ = (\DATA_BUS[15]~input_o\ & (\ROM1|altsyncram_component|auto_generated|q_a\(15) & (\DATA_BUS[14]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(14))))) # (!\DATA_BUS[15]~input_o\ & 
-- (!\ROM1|altsyncram_component|auto_generated|q_a\(15) & (\DATA_BUS[14]~input_o\ $ (!\ROM1|altsyncram_component|auto_generated|q_a\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_BUS[15]~input_o\,
	datab => \DATA_BUS[14]~input_o\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(15),
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(14),
	combout => \COMP|Equal0~8_combout\);

-- Location: LCCOMB_X38_Y7_N10
\COMP|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP|Equal0~9_combout\ = (\COMP|Equal0~7_combout\ & (\COMP|Equal0~6_combout\ & (\COMP|Equal0~5_combout\ & \COMP|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP|Equal0~7_combout\,
	datab => \COMP|Equal0~6_combout\,
	datac => \COMP|Equal0~5_combout\,
	datad => \COMP|Equal0~8_combout\,
	combout => \COMP|Equal0~9_combout\);

-- Location: LCCOMB_X38_Y7_N16
\Gral_FSM|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector5~0_combout\ = (!\COMP|Equal0~9_combout\) # (!\COMP|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP|Equal0~4_combout\,
	datad => \COMP|Equal0~9_combout\,
	combout => \Gral_FSM|Selector5~0_combout\);

-- Location: LCCOMB_X38_Y7_N24
\Gral_FSM|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector5~1_combout\ = (\Gral_FSM|current_state.COMPARE~q\ & ((\Gral_FSM|Selector5~0_combout\) # ((!\RISING_BTS:2:BT|Q~q\ & \Gral_FSM|current_state.ERROR_DATO~q\)))) # (!\Gral_FSM|current_state.COMPARE~q\ & (!\RISING_BTS:2:BT|Q~q\ & 
-- (\Gral_FSM|current_state.ERROR_DATO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.COMPARE~q\,
	datab => \RISING_BTS:2:BT|Q~q\,
	datac => \Gral_FSM|current_state.ERROR_DATO~q\,
	datad => \Gral_FSM|Selector5~0_combout\,
	combout => \Gral_FSM|Selector5~1_combout\);

-- Location: FF_X38_Y7_N25
\Gral_FSM|current_state.ERROR_DATO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|Selector5~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|current_state.ERROR_DATO~q\);

-- Location: LCCOMB_X38_Y7_N14
\Gral_FSM|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector4~0_combout\ = (\Gral_FSM|current_state.COMPARE~q\ & \COMP|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gral_FSM|current_state.COMPARE~q\,
	datad => \COMP|Equal0~9_combout\,
	combout => \Gral_FSM|Selector4~0_combout\);

-- Location: LCCOMB_X38_Y7_N18
\Gral_FSM|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector4~1_combout\ = (\Gral_FSM|current_state.ERROR_DATO~q\ & ((\RISING_BTS:2:BT|Q~q\) # ((\COMP|Equal0~4_combout\ & \Gral_FSM|Selector4~0_combout\)))) # (!\Gral_FSM|current_state.ERROR_DATO~q\ & (\COMP|Equal0~4_combout\ & 
-- (\Gral_FSM|Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.ERROR_DATO~q\,
	datab => \COMP|Equal0~4_combout\,
	datac => \Gral_FSM|Selector4~0_combout\,
	datad => \RISING_BTS:2:BT|Q~q\,
	combout => \Gral_FSM|Selector4~1_combout\);

-- Location: FF_X38_Y7_N19
\Gral_FSM|current_state.FINRD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|Selector4~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|current_state.FINRD~q\);

-- Location: LCCOMB_X43_Y7_N20
\Gral_FSM|next_state.BLINK_LED~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|next_state.BLINK_LED~0_combout\ = (\Gral_FSM|current_state.FINRD~q\ & \Gral_FSM|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.FINRD~q\,
	datad => \Gral_FSM|Equal0~3_combout\,
	combout => \Gral_FSM|next_state.BLINK_LED~0_combout\);

-- Location: FF_X43_Y7_N21
\Gral_FSM|current_state.BLINK_LED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|next_state.BLINK_LED~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|current_state.BLINK_LED~q\);

-- Location: LCCOMB_X46_Y7_N6
\Gral_FSM|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector0~0_combout\ = (\Gral_FSM|current_state.PRENDERLED~q\) # ((!\Gral_FSM|current_state.IDLE~q\ & (!\RISING_BTS:1:BT|Q~q\ & !\RISING_BTS:0:BT|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.IDLE~q\,
	datab => \Gral_FSM|current_state.PRENDERLED~q\,
	datac => \RISING_BTS:1:BT|Q~q\,
	datad => \RISING_BTS:0:BT|Q~q\,
	combout => \Gral_FSM|Selector0~0_combout\);

-- Location: LCCOMB_X46_Y7_N20
\Gral_FSM|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector0~1_combout\ = (!\Gral_FSM|current_state.BLINK_LED~q\ & !\Gral_FSM|Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gral_FSM|current_state.BLINK_LED~q\,
	datad => \Gral_FSM|Selector0~0_combout\,
	combout => \Gral_FSM|Selector0~1_combout\);

-- Location: FF_X46_Y7_N21
\Gral_FSM|current_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|Selector0~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|current_state.IDLE~q\);

-- Location: LCCOMB_X41_Y7_N0
\Gral_FSM|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector25~0_combout\ = (\Gral_FSM|direccion\(0) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gral_FSM|direccion\(0),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector25~0_combout\);

-- Location: FF_X42_Y7_N13
\Gral_FSM|direccion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[0]~20_combout\,
	asdata => \Gral_FSM|Selector25~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(0));

-- Location: LCCOMB_X42_Y7_N0
\Gral_FSM|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Equal0~0_combout\ = (\Gral_FSM|direccion\(0) & (\Gral_FSM|direccion\(6) & (\Gral_FSM|direccion\(5) & \Gral_FSM|direccion\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(0),
	datab => \Gral_FSM|direccion\(6),
	datac => \Gral_FSM|direccion\(5),
	datad => \Gral_FSM|direccion\(3),
	combout => \Gral_FSM|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y6_N4
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

-- Location: LCCOMB_X42_Y6_N24
\Gral_FSM|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector13~0_combout\ = (\Gral_FSM|direccion\(12) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(12),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector13~0_combout\);

-- Location: FF_X42_Y6_N5
\Gral_FSM|direccion[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[12]~44_combout\,
	asdata => \Gral_FSM|Selector13~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(12));

-- Location: LCCOMB_X42_Y6_N6
\Gral_FSM|direccion[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|direccion[13]~46_combout\ = (\Gral_FSM|direccion\(13) & (!\Gral_FSM|direccion[12]~45\)) # (!\Gral_FSM|direccion\(13) & ((\Gral_FSM|direccion[12]~45\) # (GND)))
-- \Gral_FSM|direccion[13]~47\ = CARRY((!\Gral_FSM|direccion[12]~45\) # (!\Gral_FSM|direccion\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(13),
	datad => VCC,
	cin => \Gral_FSM|direccion[12]~45\,
	combout => \Gral_FSM|direccion[13]~46_combout\,
	cout => \Gral_FSM|direccion[13]~47\);

-- Location: LCCOMB_X42_Y6_N30
\Gral_FSM|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector12~0_combout\ = (\Gral_FSM|direccion\(13) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(13),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector12~0_combout\);

-- Location: FF_X42_Y6_N7
\Gral_FSM|direccion[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[13]~46_combout\,
	asdata => \Gral_FSM|Selector12~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(13));

-- Location: LCCOMB_X42_Y6_N8
\Gral_FSM|direccion[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|direccion[14]~48_combout\ = (\Gral_FSM|direccion\(14) & (\Gral_FSM|direccion[13]~47\ $ (GND))) # (!\Gral_FSM|direccion\(14) & (!\Gral_FSM|direccion[13]~47\ & VCC))
-- \Gral_FSM|direccion[14]~49\ = CARRY((\Gral_FSM|direccion\(14) & !\Gral_FSM|direccion[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(14),
	datad => VCC,
	cin => \Gral_FSM|direccion[13]~47\,
	combout => \Gral_FSM|direccion[14]~48_combout\,
	cout => \Gral_FSM|direccion[14]~49\);

-- Location: LCCOMB_X43_Y6_N30
\Gral_FSM|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector11~0_combout\ = (\Gral_FSM|direccion\(14) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(14),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector11~0_combout\);

-- Location: FF_X42_Y6_N9
\Gral_FSM|direccion[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[14]~48_combout\,
	asdata => \Gral_FSM|Selector11~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(14));

-- Location: LCCOMB_X42_Y6_N10
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

-- Location: LCCOMB_X43_Y6_N20
\Gral_FSM|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector10~0_combout\ = (\Gral_FSM|direccion\(15) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(15),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector10~0_combout\);

-- Location: FF_X42_Y6_N11
\Gral_FSM|direccion[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[15]~50_combout\,
	asdata => \Gral_FSM|Selector10~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(15));

-- Location: LCCOMB_X42_Y6_N12
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

-- Location: LCCOMB_X43_Y6_N14
\Gral_FSM|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector9~0_combout\ = (\Gral_FSM|direccion\(16) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(16),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector9~0_combout\);

-- Location: FF_X42_Y6_N13
\Gral_FSM|direccion[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[16]~52_combout\,
	asdata => \Gral_FSM|Selector9~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(16));

-- Location: LCCOMB_X42_Y6_N14
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

-- Location: LCCOMB_X43_Y6_N12
\Gral_FSM|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector8~0_combout\ = (\Gral_FSM|direccion\(17) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(17),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector8~0_combout\);

-- Location: FF_X42_Y6_N15
\Gral_FSM|direccion[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[17]~54_combout\,
	asdata => \Gral_FSM|Selector8~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(17));

-- Location: LCCOMB_X42_Y6_N16
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

-- Location: LCCOMB_X43_Y6_N10
\Gral_FSM|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector7~0_combout\ = (\Gral_FSM|direccion\(18) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gral_FSM|direccion\(18),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector7~0_combout\);

-- Location: FF_X42_Y6_N17
\Gral_FSM|direccion[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[18]~56_combout\,
	asdata => \Gral_FSM|Selector7~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(18));

-- Location: LCCOMB_X42_Y6_N18
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

-- Location: LCCOMB_X43_Y6_N8
\Gral_FSM|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector6~0_combout\ = (\Gral_FSM|direccion\(19) & \Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|direccion\(19),
	datad => \Gral_FSM|current_state.IDLE~q\,
	combout => \Gral_FSM|Selector6~0_combout\);

-- Location: FF_X42_Y6_N19
\Gral_FSM|direccion[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|direccion[19]~58_combout\,
	asdata => \Gral_FSM|Selector6~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \Gral_FSM|ALT_INV_current_state.INITWR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|direccion\(19));

-- Location: LCCOMB_X42_Y6_N26
\Gral_FSM|Selector28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector28~3_combout\ = (!\Gral_FSM|direccion\(16) & (!\Gral_FSM|direccion\(17) & (!\Gral_FSM|direccion\(14) & !\Gral_FSM|direccion\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(16),
	datab => \Gral_FSM|direccion\(17),
	datac => \Gral_FSM|direccion\(14),
	datad => \Gral_FSM|direccion\(15),
	combout => \Gral_FSM|Selector28~3_combout\);

-- Location: LCCOMB_X42_Y6_N20
\Gral_FSM|Selector28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector28~2_combout\ = (!\Gral_FSM|direccion\(13) & (!\Gral_FSM|direccion\(11) & (!\Gral_FSM|direccion\(12) & !\Gral_FSM|direccion\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(13),
	datab => \Gral_FSM|direccion\(11),
	datac => \Gral_FSM|direccion\(12),
	datad => \Gral_FSM|direccion\(10),
	combout => \Gral_FSM|Selector28~2_combout\);

-- Location: LCCOMB_X43_Y6_N4
\Gral_FSM|Selector28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector28~4_combout\ = (!\Gral_FSM|direccion\(18) & (!\Gral_FSM|direccion\(19) & (\Gral_FSM|Selector28~3_combout\ & \Gral_FSM|Selector28~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(18),
	datab => \Gral_FSM|direccion\(19),
	datac => \Gral_FSM|Selector28~3_combout\,
	datad => \Gral_FSM|Selector28~2_combout\,
	combout => \Gral_FSM|Selector28~4_combout\);

-- Location: IOIBUF_X115_Y17_N1
\LLAVE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LLAVE,
	o => \LLAVE~input_o\);

-- Location: LCCOMB_X42_Y7_N10
\Gral_FSM|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector28~0_combout\ = (!\Gral_FSM|direccion\(4) & (!\Gral_FSM|direccion\(8) & (!\Gral_FSM|direccion\(7) & !\Gral_FSM|direccion\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(4),
	datab => \Gral_FSM|direccion\(8),
	datac => \Gral_FSM|direccion\(7),
	datad => \Gral_FSM|direccion\(2),
	combout => \Gral_FSM|Selector28~0_combout\);

-- Location: LCCOMB_X43_Y7_N28
\Gral_FSM|Selector28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector28~1_combout\ = (!\Gral_FSM|direccion\(1) & (\LLAVE~input_o\ & (!\Gral_FSM|next_state~2_combout\ & \Gral_FSM|Selector28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|direccion\(1),
	datab => \LLAVE~input_o\,
	datac => \Gral_FSM|next_state~2_combout\,
	datad => \Gral_FSM|Selector28~0_combout\,
	combout => \Gral_FSM|Selector28~1_combout\);

-- Location: LCCOMB_X43_Y7_N10
\Gral_FSM|Selector28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector28~5_combout\ = (\Gral_FSM|Equal0~0_combout\ & (\Gral_FSM|direccion\(9) & (\Gral_FSM|Selector28~4_combout\ & \Gral_FSM|Selector28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|Equal0~0_combout\,
	datab => \Gral_FSM|direccion\(9),
	datac => \Gral_FSM|Selector28~4_combout\,
	datad => \Gral_FSM|Selector28~1_combout\,
	combout => \Gral_FSM|Selector28~5_combout\);

-- Location: FF_X43_Y7_N11
\Gral_FSM|DATA_SEL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|Selector28~5_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|DATA_SEL~q\);

-- Location: LCCOMB_X38_Y4_N20
\REG_DATA:0:MUX_DATA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_DATA:0:MUX_DATA|Mux0~0_combout\ = (!\Gral_FSM|DATA_SEL~q\ & \ROM1|altsyncram_component|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|DATA_SEL~q\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(0),
	combout => \REG_DATA:0:MUX_DATA|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y4_N18
\REG_DATA:1:MUX_DATA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_DATA:1:MUX_DATA|Mux0~0_combout\ = (\ROM1|altsyncram_component|auto_generated|q_a\(1) & !\Gral_FSM|DATA_SEL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|altsyncram_component|auto_generated|q_a\(1),
	datac => \Gral_FSM|DATA_SEL~q\,
	combout => \REG_DATA:1:MUX_DATA|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y4_N8
\REG_DATA:2:MUX_DATA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_DATA:2:MUX_DATA|Mux0~0_combout\ = (!\Gral_FSM|DATA_SEL~q\ & \ROM1|altsyncram_component|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gral_FSM|DATA_SEL~q\,
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(2),
	combout => \REG_DATA:2:MUX_DATA|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y4_N26
\REG_DATA:3:MUX_DATA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_DATA:3:MUX_DATA|Mux0~0_combout\ = (\ROM1|altsyncram_component|auto_generated|q_a\(3) & !\Gral_FSM|DATA_SEL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|altsyncram_component|auto_generated|q_a\(3),
	datac => \Gral_FSM|DATA_SEL~q\,
	combout => \REG_DATA:3:MUX_DATA|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y4_N12
\REG_DATA:4:MUX_DATA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_DATA:4:MUX_DATA|Mux0~0_combout\ = (!\Gral_FSM|DATA_SEL~q\ & \ROM1|altsyncram_component|auto_generated|q_a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gral_FSM|DATA_SEL~q\,
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(4),
	combout => \REG_DATA:4:MUX_DATA|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y4_N6
\REG_DATA:5:MUX_DATA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_DATA:5:MUX_DATA|Mux0~0_combout\ = (!\Gral_FSM|DATA_SEL~q\ & \ROM1|altsyncram_component|auto_generated|q_a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|DATA_SEL~q\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(5),
	combout => \REG_DATA:5:MUX_DATA|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y4_N24
\REG_DATA:6:MUX_DATA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_DATA:6:MUX_DATA|Mux0~0_combout\ = (!\Gral_FSM|DATA_SEL~q\ & \ROM1|altsyncram_component|auto_generated|q_a\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|DATA_SEL~q\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(6),
	combout => \REG_DATA:6:MUX_DATA|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y4_N22
\REG_DATA:7:MUX_DATA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_DATA:7:MUX_DATA|Mux0~0_combout\ = (!\Gral_FSM|DATA_SEL~q\ & \ROM1|altsyncram_component|auto_generated|q_a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gral_FSM|DATA_SEL~q\,
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(7),
	combout => \REG_DATA:7:MUX_DATA|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y4_N0
\REG_DATA:8:MUX_DATA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_DATA:8:MUX_DATA|Mux0~0_combout\ = (!\Gral_FSM|DATA_SEL~q\ & \ROM1|altsyncram_component|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|DATA_SEL~q\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(8),
	combout => \REG_DATA:8:MUX_DATA|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y4_N14
\REG_DATA:9:MUX_DATA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_DATA:9:MUX_DATA|Mux0~0_combout\ = (!\Gral_FSM|DATA_SEL~q\ & \ROM1|altsyncram_component|auto_generated|q_a\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|DATA_SEL~q\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(9),
	combout => \REG_DATA:9:MUX_DATA|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y4_N4
\REG_DATA:10:MUX_DATA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_DATA:10:MUX_DATA|Mux0~0_combout\ = (!\Gral_FSM|DATA_SEL~q\ & \ROM1|altsyncram_component|auto_generated|q_a\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gral_FSM|DATA_SEL~q\,
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(10),
	combout => \REG_DATA:10:MUX_DATA|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y4_N2
\REG_DATA:11:MUX_DATA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_DATA:11:MUX_DATA|Mux0~0_combout\ = (!\Gral_FSM|DATA_SEL~q\ & \ROM1|altsyncram_component|auto_generated|q_a\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gral_FSM|DATA_SEL~q\,
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(11),
	combout => \REG_DATA:11:MUX_DATA|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y4_N28
\REG_DATA:12:MUX_DATA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_DATA:12:MUX_DATA|Mux0~0_combout\ = (!\Gral_FSM|DATA_SEL~q\ & \ROM1|altsyncram_component|auto_generated|q_a\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gral_FSM|DATA_SEL~q\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(12),
	combout => \REG_DATA:12:MUX_DATA|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y4_N30
\REG_DATA:13:MUX_DATA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_DATA:13:MUX_DATA|Mux0~0_combout\ = (\ROM1|altsyncram_component|auto_generated|q_a\(13) & !\Gral_FSM|DATA_SEL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|altsyncram_component|auto_generated|q_a\(13),
	datac => \Gral_FSM|DATA_SEL~q\,
	combout => \REG_DATA:13:MUX_DATA|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y4_N16
\REG_DATA:14:MUX_DATA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_DATA:14:MUX_DATA|Mux0~0_combout\ = (\ROM1|altsyncram_component|auto_generated|q_a\(14) & !\Gral_FSM|DATA_SEL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|altsyncram_component|auto_generated|q_a\(14),
	datac => \Gral_FSM|DATA_SEL~q\,
	combout => \REG_DATA:14:MUX_DATA|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y4_N10
\REG_DATA:15:MUX_DATA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_DATA:15:MUX_DATA|Mux0~0_combout\ = (\ROM1|altsyncram_component|auto_generated|q_a\(15) & !\Gral_FSM|DATA_SEL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|altsyncram_component|auto_generated|q_a\(15),
	datac => \Gral_FSM|DATA_SEL~q\,
	combout => \REG_DATA:15:MUX_DATA|Mux0~0_combout\);

-- Location: LCCOMB_X46_Y7_N24
\Gral_FSM|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector26~0_combout\ = (\Gral_FSM|current_state.PRENDERLED~q\) # ((!\Gral_FSM|current_state.INITRD~q\ & (\Gral_FSM|LED_FinWR~q\ & !\Gral_FSM|current_state.INITWR~q\)))

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
	combout => \Gral_FSM|Selector26~0_combout\);

-- Location: FF_X46_Y7_N25
\Gral_FSM|LED_FinWR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|Selector26~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|LED_FinWR~q\);

-- Location: LCCOMB_X87_Y17_N4
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

-- Location: FF_X87_Y17_N5
\Gen1HZ|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(0));

-- Location: LCCOMB_X87_Y17_N6
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

-- Location: FF_X87_Y17_N7
\Gen1HZ|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~2_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(1));

-- Location: LCCOMB_X87_Y17_N8
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

-- Location: FF_X87_Y17_N9
\Gen1HZ|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~4_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(2));

-- Location: LCCOMB_X87_Y17_N10
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

-- Location: FF_X87_Y17_N11
\Gen1HZ|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~6_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(3));

-- Location: LCCOMB_X87_Y17_N12
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

-- Location: FF_X87_Y17_N13
\Gen1HZ|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~8_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(4));

-- Location: LCCOMB_X87_Y17_N14
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

-- Location: FF_X87_Y17_N15
\Gen1HZ|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~10_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(5));

-- Location: LCCOMB_X87_Y17_N16
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

-- Location: LCCOMB_X86_Y16_N6
\Gen1HZ|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|count~7_combout\ = (!\Gen1HZ|Equal0~9_combout\ & \Gen1HZ|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gen1HZ|Equal0~9_combout\,
	datad => \Gen1HZ|Add0~12_combout\,
	combout => \Gen1HZ|count~7_combout\);

-- Location: FF_X86_Y16_N7
\Gen1HZ|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|count~7_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(6));

-- Location: LCCOMB_X87_Y17_N18
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

-- Location: FF_X87_Y17_N19
\Gen1HZ|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~14_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(7));

-- Location: LCCOMB_X87_Y17_N20
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

-- Location: LCCOMB_X87_Y17_N2
\Gen1HZ|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|count~6_combout\ = (\Gen1HZ|Add0~16_combout\ & !\Gen1HZ|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gen1HZ|Add0~16_combout\,
	datac => \Gen1HZ|Equal0~9_combout\,
	combout => \Gen1HZ|count~6_combout\);

-- Location: FF_X87_Y17_N3
\Gen1HZ|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|count~6_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(8));

-- Location: LCCOMB_X86_Y16_N12
\Gen1HZ|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Equal0~6_combout\ = (!\Gen1HZ|count\(6) & (!\Gen1HZ|count\(7) & (\Gen1HZ|count\(8) & \Gen1HZ|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(6),
	datab => \Gen1HZ|count\(7),
	datac => \Gen1HZ|count\(8),
	datad => \Gen1HZ|count\(5),
	combout => \Gen1HZ|Equal0~6_combout\);

-- Location: LCCOMB_X87_Y17_N22
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

-- Location: LCCOMB_X87_Y17_N0
\Gen1HZ|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|count~5_combout\ = (\Gen1HZ|Add0~18_combout\ & !\Gen1HZ|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|Add0~18_combout\,
	datac => \Gen1HZ|Equal0~9_combout\,
	combout => \Gen1HZ|count~5_combout\);

-- Location: FF_X87_Y17_N1
\Gen1HZ|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|count~5_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(9));

-- Location: LCCOMB_X87_Y17_N24
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

-- Location: FF_X87_Y17_N25
\Gen1HZ|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~20_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(10));

-- Location: LCCOMB_X87_Y17_N26
\Gen1HZ|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~22_combout\ = (\Gen1HZ|count\(11) & (!\Gen1HZ|Add0~21\)) # (!\Gen1HZ|count\(11) & ((\Gen1HZ|Add0~21\) # (GND)))
-- \Gen1HZ|Add0~23\ = CARRY((!\Gen1HZ|Add0~21\) # (!\Gen1HZ|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(11),
	datad => VCC,
	cin => \Gen1HZ|Add0~21\,
	combout => \Gen1HZ|Add0~22_combout\,
	cout => \Gen1HZ|Add0~23\);

-- Location: LCCOMB_X86_Y16_N14
\Gen1HZ|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|count~4_combout\ = (!\Gen1HZ|Equal0~9_combout\ & \Gen1HZ|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gen1HZ|Equal0~9_combout\,
	datad => \Gen1HZ|Add0~22_combout\,
	combout => \Gen1HZ|count~4_combout\);

-- Location: FF_X86_Y16_N15
\Gen1HZ|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|count~4_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(11));

-- Location: LCCOMB_X87_Y17_N28
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

-- Location: FF_X87_Y17_N29
\Gen1HZ|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~24_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(12));

-- Location: LCCOMB_X86_Y16_N24
\Gen1HZ|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Equal0~5_combout\ = (!\Gen1HZ|count\(10) & (\Gen1HZ|count\(11) & (!\Gen1HZ|count\(12) & \Gen1HZ|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(10),
	datab => \Gen1HZ|count\(11),
	datac => \Gen1HZ|count\(12),
	datad => \Gen1HZ|count\(9),
	combout => \Gen1HZ|Equal0~5_combout\);

-- Location: LCCOMB_X87_Y17_N30
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

-- Location: FF_X87_Y17_N31
\Gen1HZ|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~26_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(13));

-- Location: LCCOMB_X87_Y16_N0
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

-- Location: LCCOMB_X86_Y16_N16
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

-- Location: FF_X86_Y16_N17
\Gen1HZ|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|count~3_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(14));

-- Location: LCCOMB_X87_Y16_N2
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

-- Location: FF_X87_Y16_N3
\Gen1HZ|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~30_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(15));

-- Location: LCCOMB_X87_Y16_N4
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

-- Location: FF_X87_Y16_N5
\Gen1HZ|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~32_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(16));

-- Location: LCCOMB_X87_Y16_N6
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

-- Location: FF_X87_Y16_N7
\Gen1HZ|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~34_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(17));

-- Location: LCCOMB_X87_Y16_N8
\Gen1HZ|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~36_combout\ = (\Gen1HZ|count\(18) & (\Gen1HZ|Add0~35\ $ (GND))) # (!\Gen1HZ|count\(18) & (!\Gen1HZ|Add0~35\ & VCC))
-- \Gen1HZ|Add0~37\ = CARRY((\Gen1HZ|count\(18) & !\Gen1HZ|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(18),
	datad => VCC,
	cin => \Gen1HZ|Add0~35\,
	combout => \Gen1HZ|Add0~36_combout\,
	cout => \Gen1HZ|Add0~37\);

-- Location: LCCOMB_X87_Y16_N30
\Gen1HZ|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|count~2_combout\ = (\Gen1HZ|Add0~36_combout\ & !\Gen1HZ|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gen1HZ|Add0~36_combout\,
	datad => \Gen1HZ|Equal0~9_combout\,
	combout => \Gen1HZ|count~2_combout\);

-- Location: FF_X87_Y16_N31
\Gen1HZ|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|count~2_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(18));

-- Location: LCCOMB_X87_Y16_N10
\Gen1HZ|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~38_combout\ = (\Gen1HZ|count\(19) & (!\Gen1HZ|Add0~37\)) # (!\Gen1HZ|count\(19) & ((\Gen1HZ|Add0~37\) # (GND)))
-- \Gen1HZ|Add0~39\ = CARRY((!\Gen1HZ|Add0~37\) # (!\Gen1HZ|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Gen1HZ|count\(19),
	datad => VCC,
	cin => \Gen1HZ|Add0~37\,
	combout => \Gen1HZ|Add0~38_combout\,
	cout => \Gen1HZ|Add0~39\);

-- Location: LCCOMB_X86_Y16_N20
\Gen1HZ|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|count~1_combout\ = (\Gen1HZ|Add0~38_combout\ & !\Gen1HZ|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gen1HZ|Add0~38_combout\,
	datad => \Gen1HZ|Equal0~9_combout\,
	combout => \Gen1HZ|count~1_combout\);

-- Location: FF_X86_Y16_N21
\Gen1HZ|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|count~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(19));

-- Location: LCCOMB_X87_Y16_N12
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

-- Location: FF_X87_Y16_N13
\Gen1HZ|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~40_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(20));

-- Location: LCCOMB_X87_Y16_N14
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

-- Location: FF_X87_Y16_N15
\Gen1HZ|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~42_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(21));

-- Location: LCCOMB_X87_Y16_N16
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

-- Location: LCCOMB_X86_Y16_N28
\Gen1HZ|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|count~0_combout\ = (!\Gen1HZ|Equal0~9_combout\ & \Gen1HZ|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gen1HZ|Equal0~9_combout\,
	datad => \Gen1HZ|Add0~44_combout\,
	combout => \Gen1HZ|count~0_combout\);

-- Location: FF_X86_Y16_N29
\Gen1HZ|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|count~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(22));

-- Location: LCCOMB_X87_Y16_N18
\Gen1HZ|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Add0~46_combout\ = (\Gen1HZ|count\(23) & (!\Gen1HZ|Add0~45\)) # (!\Gen1HZ|count\(23) & ((\Gen1HZ|Add0~45\) # (GND)))
-- \Gen1HZ|Add0~47\ = CARRY((!\Gen1HZ|Add0~45\) # (!\Gen1HZ|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(23),
	datad => VCC,
	cin => \Gen1HZ|Add0~45\,
	combout => \Gen1HZ|Add0~46_combout\,
	cout => \Gen1HZ|Add0~47\);

-- Location: FF_X87_Y16_N19
\Gen1HZ|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~46_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(23));

-- Location: LCCOMB_X87_Y16_N20
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

-- Location: FF_X87_Y16_N21
\Gen1HZ|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~48_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(24));

-- Location: LCCOMB_X86_Y16_N30
\Gen1HZ|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Equal0~1_combout\ = (!\Gen1HZ|count\(24) & (\Gen1HZ|count\(22) & (!\Gen1HZ|count\(21) & !\Gen1HZ|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(24),
	datab => \Gen1HZ|count\(22),
	datac => \Gen1HZ|count\(21),
	datad => \Gen1HZ|count\(23),
	combout => \Gen1HZ|Equal0~1_combout\);

-- Location: LCCOMB_X86_Y16_N2
\Gen1HZ|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Equal0~2_combout\ = (\Gen1HZ|count\(18) & (\Gen1HZ|count\(19) & (!\Gen1HZ|count\(20) & !\Gen1HZ|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(18),
	datab => \Gen1HZ|count\(19),
	datac => \Gen1HZ|count\(20),
	datad => \Gen1HZ|count\(17),
	combout => \Gen1HZ|Equal0~2_combout\);

-- Location: LCCOMB_X86_Y16_N22
\Gen1HZ|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Equal0~3_combout\ = (!\Gen1HZ|count\(13) & (\Gen1HZ|count\(14) & (!\Gen1HZ|count\(15) & !\Gen1HZ|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(13),
	datab => \Gen1HZ|count\(14),
	datac => \Gen1HZ|count\(15),
	datad => \Gen1HZ|count\(16),
	combout => \Gen1HZ|Equal0~3_combout\);

-- Location: LCCOMB_X87_Y16_N22
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

-- Location: FF_X87_Y16_N23
\Gen1HZ|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~50_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(25));

-- Location: LCCOMB_X87_Y16_N24
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

-- Location: FF_X87_Y16_N25
\Gen1HZ|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~52_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(26));

-- Location: LCCOMB_X87_Y16_N26
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

-- Location: FF_X87_Y16_N27
\Gen1HZ|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~54_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(27));

-- Location: LCCOMB_X87_Y16_N28
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

-- Location: FF_X87_Y16_N29
\Gen1HZ|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Add0~56_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|count\(28));

-- Location: LCCOMB_X86_Y16_N18
\Gen1HZ|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Equal0~0_combout\ = (!\Gen1HZ|count\(25) & (!\Gen1HZ|count\(28) & (!\Gen1HZ|count\(26) & !\Gen1HZ|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(25),
	datab => \Gen1HZ|count\(28),
	datac => \Gen1HZ|count\(26),
	datad => \Gen1HZ|count\(27),
	combout => \Gen1HZ|Equal0~0_combout\);

-- Location: LCCOMB_X86_Y16_N8
\Gen1HZ|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Equal0~4_combout\ = (\Gen1HZ|Equal0~1_combout\ & (\Gen1HZ|Equal0~2_combout\ & (\Gen1HZ|Equal0~3_combout\ & \Gen1HZ|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|Equal0~1_combout\,
	datab => \Gen1HZ|Equal0~2_combout\,
	datac => \Gen1HZ|Equal0~3_combout\,
	datad => \Gen1HZ|Equal0~0_combout\,
	combout => \Gen1HZ|Equal0~4_combout\);

-- Location: LCCOMB_X86_Y17_N4
\Gen1HZ|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Equal0~7_combout\ = (\Gen1HZ|count\(4) & \Gen1HZ|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gen1HZ|count\(4),
	datad => \Gen1HZ|count\(3),
	combout => \Gen1HZ|Equal0~7_combout\);

-- Location: LCCOMB_X86_Y16_N10
\Gen1HZ|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gen1HZ|Equal0~8_combout\ = (\Gen1HZ|count\(1) & (\Gen1HZ|count\(2) & (\Gen1HZ|count\(0) & \Gen1HZ|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gen1HZ|count\(1),
	datab => \Gen1HZ|count\(2),
	datac => \Gen1HZ|count\(0),
	datad => \Gen1HZ|Equal0~7_combout\,
	combout => \Gen1HZ|Equal0~8_combout\);

-- Location: LCCOMB_X86_Y16_N0
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

-- Location: LCCOMB_X86_Y16_N4
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

-- Location: FF_X86_Y16_N5
\Gen1HZ|Clk_aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen1HZ|Clk_aux~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gen1HZ|Clk_aux~q\);

-- Location: LCCOMB_X45_Y7_N24
\LEDRD|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDRD|Q~feeder_combout\ = \Gen1HZ|Clk_aux~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gen1HZ|Clk_aux~q\,
	combout => \LEDRD|Q~feeder_combout\);

-- Location: LCCOMB_X45_Y7_N4
\Gral_FSM|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector27~0_combout\ = (!\Gral_FSM|current_state.INITRD~q\ & (!\Gral_FSM|current_state.INITWR~q\ & ((\Gral_FSM|current_state.BLINK_LED~q\) # (\Gral_FSM|LED_RD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.BLINK_LED~q\,
	datab => \Gral_FSM|current_state.INITRD~q\,
	datac => \Gral_FSM|LED_RD~q\,
	datad => \Gral_FSM|current_state.INITWR~q\,
	combout => \Gral_FSM|Selector27~0_combout\);

-- Location: FF_X45_Y7_N5
\Gral_FSM|LED_RD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|Selector27~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|LED_RD~q\);

-- Location: FF_X45_Y7_N25
\LEDRD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LEDRD|Q~feeder_combout\,
	clrn => \Gral_FSM|LED_RD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDRD|Q~q\);

-- Location: LCCOMB_X46_Y7_N30
\Gral_FSM|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|Selector29~0_combout\ = (\Gral_FSM|current_state.ERROR_DATO~q\) # ((\Gral_FSM|Led_error~q\ & !\Gral_FSM|current_state.FINRD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.ERROR_DATO~q\,
	datac => \Gral_FSM|Led_error~q\,
	datad => \Gral_FSM|current_state.FINRD~q\,
	combout => \Gral_FSM|Selector29~0_combout\);

-- Location: FF_X46_Y7_N31
\Gral_FSM|Led_error\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|Selector29~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|Led_error~q\);

-- Location: LCCOMB_X39_Y4_N22
\RAM_FSM|WideOr3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|WideOr3~combout\ = (\RAM_FSM|current_state.IDLE~q\ & (!\RAM_FSM|current_state.INIT_RD~q\ & !\RAM_FSM|current_state.END_RD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_FSM|current_state.IDLE~q\,
	datac => \RAM_FSM|current_state.INIT_RD~q\,
	datad => \RAM_FSM|current_state.END_RD~q\,
	combout => \RAM_FSM|WideOr3~combout\);

-- Location: FF_X39_Y4_N23
\RAM_FSM|WE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|WideOr3~combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|WE~q\);

-- Location: LCCOMB_X39_Y4_N6
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

-- Location: FF_X39_Y4_N7
\RAM_FSM|CE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|CE~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|CE~q\);

-- Location: LCCOMB_X39_Y4_N14
\RAM_FSM|OE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|OE~0_combout\ = (\RAM_FSM|current_state.INIT_RD~q\) # (\RAM_FSM|current_state.END_RD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_FSM|current_state.INIT_RD~q\,
	datac => \RAM_FSM|current_state.END_RD~q\,
	combout => \RAM_FSM|OE~0_combout\);

-- Location: FF_X39_Y4_N15
\RAM_FSM|OE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|OE~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|OE~q\);

-- Location: LCCOMB_X38_Y7_N0
\Gral_FSM|EN_7Segm~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|EN_7Segm~feeder_combout\ = \Gral_FSM|current_state.ERROR_DATO~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gral_FSM|current_state.ERROR_DATO~q\,
	combout => \Gral_FSM|EN_7Segm~feeder_combout\);

-- Location: FF_X38_Y7_N1
\Gral_FSM|EN_7Segm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|EN_7Segm~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|EN_7Segm~q\);

-- Location: FF_X39_Y7_N11
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

-- Location: FF_X39_Y7_N21
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

-- Location: FF_X39_Y7_N23
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

-- Location: FF_X39_Y7_N1
\ADDR_TO_7SEG|DATAOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_ADDR:0:MUX_ADDR|Mux0~0_combout\,
	ena => \Gral_FSM|EN_7Segm~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADDR_TO_7SEG|DATAOUT\(0));

-- Location: LCCOMB_X70_Y54_N16
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

-- Location: LCCOMB_X70_Y54_N26
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

-- Location: LCCOMB_X70_Y54_N8
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

-- Location: LCCOMB_X70_Y54_N14
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

-- Location: LCCOMB_X70_Y54_N12
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

-- Location: LCCOMB_X70_Y54_N10
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

-- Location: LCCOMB_X70_Y54_N4
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

-- Location: FF_X39_Y7_N15
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

-- Location: FF_X39_Y7_N25
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

-- Location: FF_X39_Y7_N29
\ADDR_TO_7SEG|DATAOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_ADDR:7:MUX_ADDR|Mux0~0_combout\,
	ena => \Gral_FSM|EN_7Segm~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADDR_TO_7SEG|DATAOUT\(7));

-- Location: FF_X41_Y7_N21
\ADDR_TO_7SEG|DATAOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_ADDR:6:MUX_ADDR|Mux0~0_combout\,
	ena => \Gral_FSM|EN_7Segm~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADDR_TO_7SEG|DATAOUT\(6));

-- Location: LCCOMB_X114_Y23_N12
\DISP1OUT|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP1OUT|Mux6~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(7) & (\ADDR_TO_7SEG|DATAOUT\(4) & (\ADDR_TO_7SEG|DATAOUT\(5) $ (\ADDR_TO_7SEG|DATAOUT\(6))))) # (!\ADDR_TO_7SEG|DATAOUT\(7) & (!\ADDR_TO_7SEG|DATAOUT\(5) & (\ADDR_TO_7SEG|DATAOUT\(4) $ 
-- (\ADDR_TO_7SEG|DATAOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(5),
	datab => \ADDR_TO_7SEG|DATAOUT\(4),
	datac => \ADDR_TO_7SEG|DATAOUT\(7),
	datad => \ADDR_TO_7SEG|DATAOUT\(6),
	combout => \DISP1OUT|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y23_N26
\DISP1OUT|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP1OUT|Mux5~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(5) & ((\ADDR_TO_7SEG|DATAOUT\(4) & (\ADDR_TO_7SEG|DATAOUT\(7))) # (!\ADDR_TO_7SEG|DATAOUT\(4) & ((\ADDR_TO_7SEG|DATAOUT\(6)))))) # (!\ADDR_TO_7SEG|DATAOUT\(5) & (\ADDR_TO_7SEG|DATAOUT\(6) & 
-- (\ADDR_TO_7SEG|DATAOUT\(4) $ (\ADDR_TO_7SEG|DATAOUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(5),
	datab => \ADDR_TO_7SEG|DATAOUT\(4),
	datac => \ADDR_TO_7SEG|DATAOUT\(7),
	datad => \ADDR_TO_7SEG|DATAOUT\(6),
	combout => \DISP1OUT|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y23_N28
\DISP1OUT|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP1OUT|Mux4~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(7) & (\ADDR_TO_7SEG|DATAOUT\(6) & ((\ADDR_TO_7SEG|DATAOUT\(5)) # (!\ADDR_TO_7SEG|DATAOUT\(4))))) # (!\ADDR_TO_7SEG|DATAOUT\(7) & (\ADDR_TO_7SEG|DATAOUT\(5) & (!\ADDR_TO_7SEG|DATAOUT\(4) & 
-- !\ADDR_TO_7SEG|DATAOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(5),
	datab => \ADDR_TO_7SEG|DATAOUT\(4),
	datac => \ADDR_TO_7SEG|DATAOUT\(7),
	datad => \ADDR_TO_7SEG|DATAOUT\(6),
	combout => \DISP1OUT|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y23_N10
\DISP1OUT|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP1OUT|Mux3~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(4) & (\ADDR_TO_7SEG|DATAOUT\(5) $ (((!\ADDR_TO_7SEG|DATAOUT\(6)))))) # (!\ADDR_TO_7SEG|DATAOUT\(4) & ((\ADDR_TO_7SEG|DATAOUT\(5) & (\ADDR_TO_7SEG|DATAOUT\(7) & !\ADDR_TO_7SEG|DATAOUT\(6))) # 
-- (!\ADDR_TO_7SEG|DATAOUT\(5) & (!\ADDR_TO_7SEG|DATAOUT\(7) & \ADDR_TO_7SEG|DATAOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(5),
	datab => \ADDR_TO_7SEG|DATAOUT\(4),
	datac => \ADDR_TO_7SEG|DATAOUT\(7),
	datad => \ADDR_TO_7SEG|DATAOUT\(6),
	combout => \DISP1OUT|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y23_N4
\DISP1OUT|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP1OUT|Mux2~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(5) & (\ADDR_TO_7SEG|DATAOUT\(4) & (!\ADDR_TO_7SEG|DATAOUT\(7)))) # (!\ADDR_TO_7SEG|DATAOUT\(5) & ((\ADDR_TO_7SEG|DATAOUT\(6) & ((!\ADDR_TO_7SEG|DATAOUT\(7)))) # (!\ADDR_TO_7SEG|DATAOUT\(6) & 
-- (\ADDR_TO_7SEG|DATAOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(5),
	datab => \ADDR_TO_7SEG|DATAOUT\(4),
	datac => \ADDR_TO_7SEG|DATAOUT\(7),
	datad => \ADDR_TO_7SEG|DATAOUT\(6),
	combout => \DISP1OUT|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y23_N30
\DISP1OUT|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP1OUT|Mux1~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(5) & (!\ADDR_TO_7SEG|DATAOUT\(7) & ((\ADDR_TO_7SEG|DATAOUT\(4)) # (!\ADDR_TO_7SEG|DATAOUT\(6))))) # (!\ADDR_TO_7SEG|DATAOUT\(5) & (\ADDR_TO_7SEG|DATAOUT\(4) & (\ADDR_TO_7SEG|DATAOUT\(7) $ 
-- (!\ADDR_TO_7SEG|DATAOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(5),
	datab => \ADDR_TO_7SEG|DATAOUT\(4),
	datac => \ADDR_TO_7SEG|DATAOUT\(7),
	datad => \ADDR_TO_7SEG|DATAOUT\(6),
	combout => \DISP1OUT|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y23_N0
\DISP1OUT|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP1OUT|Mux0~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(4) & ((\ADDR_TO_7SEG|DATAOUT\(7)) # (\ADDR_TO_7SEG|DATAOUT\(5) $ (\ADDR_TO_7SEG|DATAOUT\(6))))) # (!\ADDR_TO_7SEG|DATAOUT\(4) & ((\ADDR_TO_7SEG|DATAOUT\(5)) # (\ADDR_TO_7SEG|DATAOUT\(7) $ 
-- (\ADDR_TO_7SEG|DATAOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(5),
	datab => \ADDR_TO_7SEG|DATAOUT\(4),
	datac => \ADDR_TO_7SEG|DATAOUT\(7),
	datad => \ADDR_TO_7SEG|DATAOUT\(6),
	combout => \DISP1OUT|Mux0~0_combout\);

-- Location: FF_X41_Y7_N11
\ADDR_TO_7SEG|DATAOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_ADDR:11:MUX_ADDR|Mux0~0_combout\,
	ena => \Gral_FSM|EN_7Segm~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADDR_TO_7SEG|DATAOUT\(11));

-- Location: FF_X41_Y7_N29
\ADDR_TO_7SEG|DATAOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_ADDR:10:MUX_ADDR|Mux0~0_combout\,
	ena => \Gral_FSM|EN_7Segm~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADDR_TO_7SEG|DATAOUT\(10));

-- Location: FF_X39_Y7_N27
\ADDR_TO_7SEG|DATAOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_ADDR:9:MUX_ADDR|Mux0~0_combout\,
	ena => \Gral_FSM|EN_7Segm~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADDR_TO_7SEG|DATAOUT\(9));

-- Location: LCCOMB_X41_Y7_N16
\ADDR_TO_7SEG|DATAOUT[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADDR_TO_7SEG|DATAOUT[8]~feeder_combout\ = \REG_ADDR:8:MUX_ADDR|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REG_ADDR:8:MUX_ADDR|Mux0~0_combout\,
	combout => \ADDR_TO_7SEG|DATAOUT[8]~feeder_combout\);

-- Location: FF_X41_Y7_N17
\ADDR_TO_7SEG|DATAOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ADDR_TO_7SEG|DATAOUT[8]~feeder_combout\,
	ena => \Gral_FSM|EN_7Segm~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADDR_TO_7SEG|DATAOUT\(8));

-- Location: LCCOMB_X41_Y7_N2
\DISP2OUT|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP2OUT|Mux6~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(11) & (\ADDR_TO_7SEG|DATAOUT\(8) & (\ADDR_TO_7SEG|DATAOUT\(10) $ (\ADDR_TO_7SEG|DATAOUT\(9))))) # (!\ADDR_TO_7SEG|DATAOUT\(11) & (!\ADDR_TO_7SEG|DATAOUT\(9) & (\ADDR_TO_7SEG|DATAOUT\(10) $ 
-- (\ADDR_TO_7SEG|DATAOUT\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(11),
	datab => \ADDR_TO_7SEG|DATAOUT\(10),
	datac => \ADDR_TO_7SEG|DATAOUT\(9),
	datad => \ADDR_TO_7SEG|DATAOUT\(8),
	combout => \DISP2OUT|Mux6~0_combout\);

-- Location: LCCOMB_X41_Y7_N12
\DISP2OUT|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP2OUT|Mux5~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(11) & ((\ADDR_TO_7SEG|DATAOUT\(8) & ((\ADDR_TO_7SEG|DATAOUT\(9)))) # (!\ADDR_TO_7SEG|DATAOUT\(8) & (\ADDR_TO_7SEG|DATAOUT\(10))))) # (!\ADDR_TO_7SEG|DATAOUT\(11) & (\ADDR_TO_7SEG|DATAOUT\(10) & 
-- (\ADDR_TO_7SEG|DATAOUT\(9) $ (\ADDR_TO_7SEG|DATAOUT\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(11),
	datab => \ADDR_TO_7SEG|DATAOUT\(10),
	datac => \ADDR_TO_7SEG|DATAOUT\(9),
	datad => \ADDR_TO_7SEG|DATAOUT\(8),
	combout => \DISP2OUT|Mux5~0_combout\);

-- Location: LCCOMB_X41_Y7_N18
\DISP2OUT|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP2OUT|Mux4~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(11) & (\ADDR_TO_7SEG|DATAOUT\(10) & ((\ADDR_TO_7SEG|DATAOUT\(9)) # (!\ADDR_TO_7SEG|DATAOUT\(8))))) # (!\ADDR_TO_7SEG|DATAOUT\(11) & (!\ADDR_TO_7SEG|DATAOUT\(10) & (\ADDR_TO_7SEG|DATAOUT\(9) & 
-- !\ADDR_TO_7SEG|DATAOUT\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(11),
	datab => \ADDR_TO_7SEG|DATAOUT\(10),
	datac => \ADDR_TO_7SEG|DATAOUT\(9),
	datad => \ADDR_TO_7SEG|DATAOUT\(8),
	combout => \DISP2OUT|Mux4~0_combout\);

-- Location: LCCOMB_X41_Y7_N8
\DISP2OUT|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP2OUT|Mux3~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(8) & ((\ADDR_TO_7SEG|DATAOUT\(10) $ (!\ADDR_TO_7SEG|DATAOUT\(9))))) # (!\ADDR_TO_7SEG|DATAOUT\(8) & ((\ADDR_TO_7SEG|DATAOUT\(11) & (!\ADDR_TO_7SEG|DATAOUT\(10) & \ADDR_TO_7SEG|DATAOUT\(9))) # 
-- (!\ADDR_TO_7SEG|DATAOUT\(11) & (\ADDR_TO_7SEG|DATAOUT\(10) & !\ADDR_TO_7SEG|DATAOUT\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(11),
	datab => \ADDR_TO_7SEG|DATAOUT\(10),
	datac => \ADDR_TO_7SEG|DATAOUT\(9),
	datad => \ADDR_TO_7SEG|DATAOUT\(8),
	combout => \DISP2OUT|Mux3~0_combout\);

-- Location: LCCOMB_X41_Y7_N30
\DISP2OUT|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP2OUT|Mux2~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(9) & (!\ADDR_TO_7SEG|DATAOUT\(11) & ((\ADDR_TO_7SEG|DATAOUT\(8))))) # (!\ADDR_TO_7SEG|DATAOUT\(9) & ((\ADDR_TO_7SEG|DATAOUT\(10) & (!\ADDR_TO_7SEG|DATAOUT\(11))) # (!\ADDR_TO_7SEG|DATAOUT\(10) & 
-- ((\ADDR_TO_7SEG|DATAOUT\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(11),
	datab => \ADDR_TO_7SEG|DATAOUT\(10),
	datac => \ADDR_TO_7SEG|DATAOUT\(9),
	datad => \ADDR_TO_7SEG|DATAOUT\(8),
	combout => \DISP2OUT|Mux2~0_combout\);

-- Location: LCCOMB_X41_Y7_N24
\DISP2OUT|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP2OUT|Mux1~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(10) & (\ADDR_TO_7SEG|DATAOUT\(8) & (\ADDR_TO_7SEG|DATAOUT\(11) $ (\ADDR_TO_7SEG|DATAOUT\(9))))) # (!\ADDR_TO_7SEG|DATAOUT\(10) & (!\ADDR_TO_7SEG|DATAOUT\(11) & ((\ADDR_TO_7SEG|DATAOUT\(9)) # 
-- (\ADDR_TO_7SEG|DATAOUT\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(11),
	datab => \ADDR_TO_7SEG|DATAOUT\(10),
	datac => \ADDR_TO_7SEG|DATAOUT\(9),
	datad => \ADDR_TO_7SEG|DATAOUT\(8),
	combout => \DISP2OUT|Mux1~0_combout\);

-- Location: LCCOMB_X41_Y7_N22
\DISP2OUT|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISP2OUT|Mux0~0_combout\ = (\ADDR_TO_7SEG|DATAOUT\(8) & ((\ADDR_TO_7SEG|DATAOUT\(11)) # (\ADDR_TO_7SEG|DATAOUT\(10) $ (\ADDR_TO_7SEG|DATAOUT\(9))))) # (!\ADDR_TO_7SEG|DATAOUT\(8) & ((\ADDR_TO_7SEG|DATAOUT\(9)) # (\ADDR_TO_7SEG|DATAOUT\(11) $ 
-- (\ADDR_TO_7SEG|DATAOUT\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR_TO_7SEG|DATAOUT\(11),
	datab => \ADDR_TO_7SEG|DATAOUT\(10),
	datac => \ADDR_TO_7SEG|DATAOUT\(9),
	datad => \ADDR_TO_7SEG|DATAOUT\(8),
	combout => \DISP2OUT|Mux0~0_combout\);

-- Location: LCCOMB_X39_Y4_N20
\RAM_FSM|STATE[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|STATE[0]~0_combout\ = !\RAM_FSM|current_state.IDLE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RAM_FSM|current_state.IDLE~q\,
	combout => \RAM_FSM|STATE[0]~0_combout\);

-- Location: FF_X39_Y4_N21
\RAM_FSM|STATE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|STATE[0]~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|STATE\(0));

-- Location: LCCOMB_X39_Y4_N18
\RAM_FSM|STATE[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|STATE[1]~feeder_combout\ = \RAM_FSM|current_state.INIT_RD~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAM_FSM|current_state.INIT_RD~q\,
	combout => \RAM_FSM|STATE[1]~feeder_combout\);

-- Location: FF_X39_Y4_N19
\RAM_FSM|STATE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|STATE[1]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|STATE\(1));

-- Location: FF_X39_Y4_N25
\RAM_FSM|STATE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RAM_FSM|current_state.INIT_WR~q\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|STATE\(2));

-- Location: LCCOMB_X39_Y4_N30
\RAM_FSM|STATE[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|STATE[3]~feeder_combout\ = \RAM_FSM|current_state.WAIT_WR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RAM_FSM|current_state.WAIT_WR~q\,
	combout => \RAM_FSM|STATE[3]~feeder_combout\);

-- Location: FF_X39_Y4_N31
\RAM_FSM|STATE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|STATE[3]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|STATE\(3));

-- Location: LCCOMB_X39_Y4_N16
\RAM_FSM|STATE[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|STATE[4]~feeder_combout\ = \RAM_FSM|current_state.END_RD~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAM_FSM|current_state.END_RD~q\,
	combout => \RAM_FSM|STATE[4]~feeder_combout\);

-- Location: FF_X39_Y4_N17
\RAM_FSM|STATE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|STATE[4]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|STATE\(4));

-- Location: LCCOMB_X39_Y4_N26
\RAM_FSM|STATE[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_FSM|STATE[5]~feeder_combout\ = \RAM_FSM|current_state.END_WR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RAM_FSM|current_state.END_WR~q\,
	combout => \RAM_FSM|STATE[5]~feeder_combout\);

-- Location: FF_X39_Y4_N27
\RAM_FSM|STATE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_FSM|STATE[5]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_FSM|STATE\(5));

-- Location: LCCOMB_X46_Y7_N16
\Gral_FSM|STATE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|STATE~0_combout\ = (\Gral_FSM|current_state.BLINK_LED~q\) # (!\Gral_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gral_FSM|current_state.IDLE~q\,
	datac => \Gral_FSM|current_state.BLINK_LED~q\,
	combout => \Gral_FSM|STATE~0_combout\);

-- Location: FF_X46_Y7_N17
\Gral_FSM|STATE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|STATE~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|STATE\(0));

-- Location: LCCOMB_X46_Y7_N26
\Gral_FSM|STATE[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|STATE[1]~feeder_combout\ = \Gral_FSM|current_state.INITWR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gral_FSM|current_state.INITWR~q\,
	combout => \Gral_FSM|STATE[1]~feeder_combout\);

-- Location: FF_X46_Y7_N27
\Gral_FSM|STATE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|STATE[1]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|STATE\(1));

-- Location: FF_X43_Y7_N15
\Gral_FSM|STATE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Gral_FSM|current_state.ESPERAWR~q\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|STATE\(2));

-- Location: LCCOMB_X45_Y7_N26
\Gral_FSM|STATE[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|STATE[3]~feeder_combout\ = \Gral_FSM|current_state.LOADDATA~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gral_FSM|current_state.LOADDATA~q\,
	combout => \Gral_FSM|STATE[3]~feeder_combout\);

-- Location: FF_X45_Y7_N27
\Gral_FSM|STATE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|STATE[3]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|STATE\(3));

-- Location: FF_X43_Y7_N23
\Gral_FSM|STATE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Gral_FSM|current_state.PRENDERLED~q\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|STATE\(4));

-- Location: LCCOMB_X46_Y7_N8
\Gral_FSM|STATE[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|STATE[5]~feeder_combout\ = \Gral_FSM|current_state.INITRD~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gral_FSM|current_state.INITRD~q\,
	combout => \Gral_FSM|STATE[5]~feeder_combout\);

-- Location: FF_X46_Y7_N9
\Gral_FSM|STATE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|STATE[5]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|STATE\(5));

-- Location: LCCOMB_X45_Y7_N20
\Gral_FSM|STATE[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|STATE[6]~feeder_combout\ = \Gral_FSM|current_state.ESPERARD~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gral_FSM|current_state.ESPERARD~q\,
	combout => \Gral_FSM|STATE[6]~feeder_combout\);

-- Location: FF_X45_Y7_N21
\Gral_FSM|STATE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|STATE[6]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|STATE\(6));

-- Location: LCCOMB_X45_Y7_N22
\Gral_FSM|STATE[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|STATE[7]~feeder_combout\ = \Gral_FSM|current_state.COMPARE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gral_FSM|current_state.COMPARE~q\,
	combout => \Gral_FSM|STATE[7]~feeder_combout\);

-- Location: FF_X45_Y7_N23
\Gral_FSM|STATE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|STATE[7]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|STATE\(7));

-- Location: LCCOMB_X46_Y7_N18
\Gral_FSM|STATE[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|STATE[8]~feeder_combout\ = \Gral_FSM|current_state.FINRD~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gral_FSM|current_state.FINRD~q\,
	combout => \Gral_FSM|STATE[8]~feeder_combout\);

-- Location: FF_X46_Y7_N19
\Gral_FSM|STATE[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|STATE[8]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|STATE\(8));

-- Location: LCCOMB_X46_Y7_N12
\Gral_FSM|STATE[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gral_FSM|STATE[9]~feeder_combout\ = \Gral_FSM|current_state.ERROR_DATO~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gral_FSM|current_state.ERROR_DATO~q\,
	combout => \Gral_FSM|STATE[9]~feeder_combout\);

-- Location: FF_X46_Y7_N13
\Gral_FSM|STATE[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gral_FSM|STATE[9]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gral_FSM|STATE\(9));

ww_LED_WRITE <= \LED_WRITE~output_o\;

ww_LED_READ <= \LED_READ~output_o\;

ww_LED_ERROR <= \LED_ERROR~output_o\;

ww_WE <= \WE~output_o\;

ww_CE <= \CE~output_o\;

ww_OE <= \OE~output_o\;

ww_LB <= \LB~output_o\;

ww_UB <= \UB~output_o\;

ww_DATA_BUS2(0) <= \DATA_BUS2[0]~output_o\;

ww_DATA_BUS2(1) <= \DATA_BUS2[1]~output_o\;

ww_DATA_BUS2(2) <= \DATA_BUS2[2]~output_o\;

ww_DATA_BUS2(3) <= \DATA_BUS2[3]~output_o\;

ww_DATA_BUS2(4) <= \DATA_BUS2[4]~output_o\;

ww_DATA_BUS2(5) <= \DATA_BUS2[5]~output_o\;

ww_DATA_BUS2(6) <= \DATA_BUS2[6]~output_o\;

ww_DATA_BUS2(7) <= \DATA_BUS2[7]~output_o\;

ww_DATA_BUS2(8) <= \DATA_BUS2[8]~output_o\;

ww_DATA_BUS2(9) <= \DATA_BUS2[9]~output_o\;

ww_DATA_BUS2(10) <= \DATA_BUS2[10]~output_o\;

ww_DATA_BUS2(11) <= \DATA_BUS2[11]~output_o\;

ww_DATA_BUS2(12) <= \DATA_BUS2[12]~output_o\;

ww_DATA_BUS2(13) <= \DATA_BUS2[13]~output_o\;

ww_DATA_BUS2(14) <= \DATA_BUS2[14]~output_o\;

ww_DATA_BUS2(15) <= \DATA_BUS2[15]~output_o\;

\ww_GND\ <= \GND~output_o\;

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

ww_RAM_STATE(0) <= \RAM_STATE[0]~output_o\;

ww_RAM_STATE(1) <= \RAM_STATE[1]~output_o\;

ww_RAM_STATE(2) <= \RAM_STATE[2]~output_o\;

ww_RAM_STATE(3) <= \RAM_STATE[3]~output_o\;

ww_RAM_STATE(4) <= \RAM_STATE[4]~output_o\;

ww_RAM_STATE(5) <= \RAM_STATE[5]~output_o\;

ww_TOP_STATE(0) <= \TOP_STATE[0]~output_o\;

ww_TOP_STATE(1) <= \TOP_STATE[1]~output_o\;

ww_TOP_STATE(2) <= \TOP_STATE[2]~output_o\;

ww_TOP_STATE(3) <= \TOP_STATE[3]~output_o\;

ww_TOP_STATE(4) <= \TOP_STATE[4]~output_o\;

ww_TOP_STATE(5) <= \TOP_STATE[5]~output_o\;

ww_TOP_STATE(6) <= \TOP_STATE[6]~output_o\;

ww_TOP_STATE(7) <= \TOP_STATE[7]~output_o\;

ww_TOP_STATE(8) <= \TOP_STATE[8]~output_o\;

ww_TOP_STATE(9) <= \TOP_STATE[9]~output_o\;

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


