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

-- DATE "06/07/2016 12:00:31"

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

ENTITY 	Control_RAM_FSM IS
    PORT (
	Clk : IN std_logic;
	Ext_ready : IN std_logic;
	Reset : IN std_logic;
	Rd_Wr : IN std_logic;
	En : IN std_logic;
	CE : BUFFER std_logic;
	OE : BUFFER std_logic;
	WE : BUFFER std_logic;
	UB : BUFFER std_logic;
	LB : BUFFER std_logic;
	Ready : BUFFER std_logic
	);
END Control_RAM_FSM;

-- Design Ports Information
-- CE	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OE	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WE	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UB	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LB	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ready	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ext_ready	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- En	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rd_Wr	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Control_RAM_FSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Ext_ready : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Rd_Wr : std_logic;
SIGNAL ww_En : std_logic;
SIGNAL ww_CE : std_logic;
SIGNAL ww_OE : std_logic;
SIGNAL ww_WE : std_logic;
SIGNAL ww_UB : std_logic;
SIGNAL ww_LB : std_logic;
SIGNAL ww_Ready : std_logic;
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CE~output_o\ : std_logic;
SIGNAL \OE~output_o\ : std_logic;
SIGNAL \WE~output_o\ : std_logic;
SIGNAL \UB~output_o\ : std_logic;
SIGNAL \LB~output_o\ : std_logic;
SIGNAL \Ready~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Ext_ready~input_o\ : std_logic;
SIGNAL \En~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Rd_Wr~input_o\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.INIT_RD~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \current_state.END_RD~q\ : std_logic;
SIGNAL \contador[0]~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \current_state.INIT_WR~q\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \current_state.WAIT_WR~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \current_state.END_WR~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \current_state.IDLE~q\ : std_logic;
SIGNAL \CE~reg0feeder_combout\ : std_logic;
SIGNAL \CE~reg0_q\ : std_logic;
SIGNAL \OE~reg0feeder_combout\ : std_logic;
SIGNAL \OE~reg0_q\ : std_logic;
SIGNAL \WideOr6~combout\ : std_logic;
SIGNAL \WE~reg0_q\ : std_logic;
SIGNAL \WideOr7~combout\ : std_logic;
SIGNAL \Ready~reg0_q\ : std_logic;
SIGNAL contador : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Ready~reg0_q\ : std_logic;
SIGNAL \ALT_INV_WE~reg0_q\ : std_logic;
SIGNAL \ALT_INV_OE~reg0_q\ : std_logic;
SIGNAL \ALT_INV_CE~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_Ext_ready <= Ext_ready;
ww_Reset <= Reset;
ww_Rd_Wr <= Rd_Wr;
ww_En <= En;
CE <= ww_CE;
OE <= ww_OE;
WE <= ww_WE;
UB <= ww_UB;
LB <= ww_LB;
Ready <= ww_Ready;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\ALT_INV_Ready~reg0_q\ <= NOT \Ready~reg0_q\;
\ALT_INV_WE~reg0_q\ <= NOT \WE~reg0_q\;
\ALT_INV_OE~reg0_q\ <= NOT \OE~reg0_q\;
\ALT_INV_CE~reg0_q\ <= NOT \CE~reg0_q\;
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y43_N16
\CE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_CE~reg0_q\,
	devoe => ww_devoe,
	o => \CE~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\OE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_OE~reg0_q\,
	devoe => ww_devoe,
	o => \OE~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\WE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WE~reg0_q\,
	devoe => ww_devoe,
	o => \WE~output_o\);

-- Location: IOOBUF_X115_Y68_N23
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

-- Location: IOOBUF_X25_Y73_N16
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

-- Location: IOOBUF_X0_Y44_N23
\Ready~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Ready~reg0_q\,
	devoe => ww_devoe,
	o => \Ready~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\Clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G2
\Clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y42_N1
\Ext_ready~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ext_ready,
	o => \Ext_ready~input_o\);

-- Location: IOIBUF_X0_Y42_N8
\En~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_En,
	o => \En~input_o\);

-- Location: LCCOMB_X2_Y43_N26
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\En~input_o\ & !\current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \En~input_o\,
	datad => \current_state.IDLE~q\,
	combout => \Selector2~0_combout\);

-- Location: IOIBUF_X0_Y44_N8
\Rd_Wr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rd_Wr,
	o => \Rd_Wr~input_o\);

-- Location: LCCOMB_X2_Y43_N12
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (!contador(0) & \current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(0),
	datad => \current_state.IDLE~q\,
	combout => \Selector9~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\Reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: LCCOMB_X2_Y43_N22
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\current_state.IDLE~q\ & (contador(0) $ (contador(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datac => contador(1),
	datad => \current_state.IDLE~q\,
	combout => \Selector8~0_combout\);

-- Location: FF_X2_Y43_N23
\contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	ena => \contador[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(1));

-- Location: LCCOMB_X2_Y43_N2
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\current_state.IDLE~q\ & (contador(2) $ (((contador(1) & contador(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datab => \current_state.IDLE~q\,
	datac => contador(2),
	datad => contador(0),
	combout => \Selector7~0_combout\);

-- Location: FF_X2_Y43_N3
\contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	ena => \contador[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(2));

-- Location: LCCOMB_X2_Y43_N4
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = contador(3) $ (((contador(0) & (contador(2) & contador(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(2),
	datac => contador(1),
	datad => contador(3),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X2_Y43_N16
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Add0~0_combout\ & \current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \current_state.IDLE~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X2_Y43_N17
\contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	ena => \contador[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(3));

-- Location: LCCOMB_X2_Y43_N20
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!contador(0) & (!contador(2) & (contador(1) & contador(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(2),
	datac => contador(1),
	datad => contador(3),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X2_Y43_N24
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\Selector2~0_combout\ & (((\current_state.INIT_RD~q\ & !\Equal1~0_combout\)) # (!\Rd_Wr~input_o\))) # (!\Selector2~0_combout\ & (((\current_state.INIT_RD~q\ & !\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \Rd_Wr~input_o\,
	datac => \current_state.INIT_RD~q\,
	datad => \Equal1~0_combout\,
	combout => \Selector1~0_combout\);

-- Location: CLKCTRL_G4
\Reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~inputclkctrl_outclk\);

-- Location: FF_X2_Y43_N25
\current_state.INIT_RD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.INIT_RD~q\);

-- Location: LCCOMB_X2_Y43_N30
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\current_state.INIT_RD~q\ & ((\Equal1~0_combout\) # ((!\Ext_ready~input_o\ & \current_state.END_RD~q\)))) # (!\current_state.INIT_RD~q\ & (!\Ext_ready~input_o\ & (\current_state.END_RD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.INIT_RD~q\,
	datab => \Ext_ready~input_o\,
	datac => \current_state.END_RD~q\,
	datad => \Equal1~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X2_Y43_N31
\current_state.END_RD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.END_RD~q\);

-- Location: LCCOMB_X2_Y43_N14
\contador[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[0]~0_combout\ = (!\Reset~input_o\ & (!\current_state.END_RD~q\ & !\current_state.WAIT_WR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset~input_o\,
	datac => \current_state.END_RD~q\,
	datad => \current_state.WAIT_WR~q\,
	combout => \contador[0]~0_combout\);

-- Location: FF_X2_Y43_N13
\contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	ena => \contador[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(0));

-- Location: LCCOMB_X2_Y43_N0
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (contador(0) & (contador(2) & (!contador(1) & !contador(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(2),
	datac => contador(1),
	datad => contador(3),
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X2_Y43_N10
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\ & ((\Rd_Wr~input_o\) # ((\current_state.INIT_WR~q\ & !\Selector5~0_combout\)))) # (!\Selector2~0_combout\ & (((\current_state.INIT_WR~q\ & !\Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \Rd_Wr~input_o\,
	datac => \current_state.INIT_WR~q\,
	datad => \Selector5~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X2_Y43_N11
\current_state.INIT_WR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.INIT_WR~q\);

-- Location: LCCOMB_X2_Y43_N6
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Ext_ready~input_o\ & (\current_state.INIT_WR~q\ & ((\Selector5~0_combout\)))) # (!\Ext_ready~input_o\ & ((\current_state.WAIT_WR~q\) # ((\current_state.INIT_WR~q\ & \Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ext_ready~input_o\,
	datab => \current_state.INIT_WR~q\,
	datac => \current_state.WAIT_WR~q\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: FF_X2_Y43_N7
\current_state.WAIT_WR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector5~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.WAIT_WR~q\);

-- Location: LCCOMB_X2_Y43_N18
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\current_state.WAIT_WR~q\ & ((\Ext_ready~input_o\) # ((\current_state.END_WR~q\ & !\Equal1~0_combout\)))) # (!\current_state.WAIT_WR~q\ & (((\current_state.END_WR~q\ & !\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WAIT_WR~q\,
	datab => \Ext_ready~input_o\,
	datac => \current_state.END_WR~q\,
	datad => \Equal1~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X2_Y43_N19
\current_state.END_WR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.END_WR~q\);

-- Location: LCCOMB_X2_Y43_N8
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\En~input_o\ & (\Ext_ready~input_o\ & (\current_state.END_RD~q\))) # (!\En~input_o\ & (((\Ext_ready~input_o\ & \current_state.END_RD~q\)) # (!\current_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \En~input_o\,
	datab => \Ext_ready~input_o\,
	datac => \current_state.END_RD~q\,
	datad => \current_state.IDLE~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X2_Y43_N28
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\Selector0~0_combout\ & ((!\Equal1~0_combout\) # (!\current_state.END_WR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.END_WR~q\,
	datac => \Selector0~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X2_Y43_N29
\current_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.IDLE~q\);

-- Location: LCCOMB_X1_Y43_N16
\CE~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CE~reg0feeder_combout\ = \current_state.IDLE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.IDLE~q\,
	combout => \CE~reg0feeder_combout\);

-- Location: FF_X1_Y43_N17
\CE~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \CE~reg0feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CE~reg0_q\);

-- Location: LCCOMB_X1_Y43_N14
\OE~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OE~reg0feeder_combout\ = \current_state.END_RD~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.END_RD~q\,
	combout => \OE~reg0feeder_combout\);

-- Location: FF_X1_Y43_N15
\OE~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \OE~reg0feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OE~reg0_q\);

-- Location: LCCOMB_X1_Y43_N0
WideOr6 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~combout\ = (\current_state.IDLE~q\ & (!\current_state.END_RD~q\ & !\current_state.INIT_RD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.IDLE~q\,
	datac => \current_state.END_RD~q\,
	datad => \current_state.INIT_RD~q\,
	combout => \WideOr6~combout\);

-- Location: FF_X1_Y43_N1
\WE~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \WideOr6~combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WE~reg0_q\);

-- Location: LCCOMB_X1_Y43_N10
WideOr7 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr7~combout\ = (\current_state.INIT_RD~q\) # ((\current_state.INIT_WR~q\) # (!\current_state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.INIT_RD~q\,
	datac => \current_state.INIT_WR~q\,
	datad => \current_state.IDLE~q\,
	combout => \WideOr7~combout\);

-- Location: FF_X1_Y43_N11
\Ready~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \WideOr7~combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ready~reg0_q\);

ww_CE <= \CE~output_o\;

ww_OE <= \OE~output_o\;

ww_WE <= \WE~output_o\;

ww_UB <= \UB~output_o\;

ww_LB <= \LB~output_o\;

ww_Ready <= \Ready~output_o\;
END structure;


