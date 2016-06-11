library ieee; 
use ieee.std_logic_1164.all;


entity Control_RAM_FSM_TB is
end Control_RAM_FSM_TB;

architecture tb of Control_RAM_FSM_TB is

component Control_RAM_FSM is
	port(
	-- in ports
	Clk				: in	std_logic;
	Ext_ready		: in	std_logic;
	Reset				: in	std_logic;
	Rd_Wr				: in	std_logic;
	En					: in	std_logic;
	-- out ports
	CE					: out	std_logic;
	OE					: out	std_logic;
	WE					: out	std_logic;
	UB					: out	std_logic;
	LB					: out	std_logic;
	Ready				: out	std_logic
	);
end component;

signal Clk, Ext_ready, Reset, Rd_Wr, En, CE, OE, WE, UB, LB, Ready	:	std_logic := '0';

begin
Control: Control_RAM_FSM port map (Clk=>Clk,Ext_ready=>Ext_ready,Reset=>Reset,Rd_Wr=>Rd_Wr,En=>En,
												CE=>CE,OE=>OE,WE=>WE,UB=>UB,LB=>LB,Ready=>Ready);
	clk <= not(clk) after 10ns;
	
	Aplica_entradas: process
	begin	
		Reset <= '1';
		wait until rising_edge(Clk);
		Reset <= '0';
		wait until rising_edge(Clk);
		En <= '1';
		Rd_Wr <= '1';
		wait until rising_edge(Ready);
		wait until rising_edge(Clk);
		Ext_ready <= '1';
		wait until rising_edge(Clk);
		wait for 300ns;
		assert(false) report "FIN" severity failure;
	end process;
end tb;