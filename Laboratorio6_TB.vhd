LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


entity Laboratorio6_TB is
end Laboratorio6_TB;

architecture tb of Laboratorio6_TB is

component Laboratorio6 is
	port(
		RESET		:	IN	STD_LOGIC;
		CLK		:	IN	STD_LOGIC;
		BOTONES	: 	IN	STD_LOGIC_VECTOR(2 DOWNTO 0);				-- Boton(2): Continuar cuando error; Boton(1): Lectura; Boton(0): Escritura;
		LLAVE		:	IN	STD_LOGIC;
		
		LED_WRITE:	OUT	STD_LOGIC;
		LED_READ	:	OUT	STD_LOGIC;
		LED_ERROR:	OUT	STD_LOGIC;
		
		WE			:	OUT	STD_LOGIC;
	--	RDWR		:	OUT	STD_LOGIC;
		CE			:	OUT	STD_LOGIC;
		OE			:	OUT	STD_LOGIC;
		LB			:	OUT	STD_LOGIC;
		UB			:	OUT	STD_LOGIC;
		DATA_BUS	:	INOUT	STD_LOGIC_VECTOR(15 DOWNTO 0);
		ADDRESS	:	OUT	STD_LOGIC_VECTOR(19 DOWNTO 0);
		
		DISP0		:	OUT	STD_LOGIC_VECTOR(6 DOWNTO 0);
		DISP1		:	OUT	STD_LOGIC_VECTOR(6 DOWNTO 0);
		DISP2		:	OUT	STD_LOGIC_VECTOR(6 DOWNTO 0);
				
		RAM_STATE:	OUT	STD_LOGIC_VECTOR(5 DOWNTO 0);
		TOP_STATE:	OUT	STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
	end component;
	
-- señales
signal Reset, Clk,llave	:	std_logic 	:= '0';
signal Botones		:	std_logic_vector(2 downto 0) := (others=>'1');
signal LED_ERROR, LED_READ, LED_WRITE, WE, CE, OE, LB, UB	:	std_logic; 
signal DATA_BUS	:	std_logic_vector(15 downto 0);
signal ADDRESS		:	std_logic_vector(19 downto 0);
signal DISP0,DISP1,DISP2	:	std_logic_vector(6 downto 0);
signal RAM_STATE:	STD_LOGIC_VECTOR(5 DOWNTO 0);
signal TOP_STATE:	STD_LOGIC_VECTOR(9 DOWNTO 0);

begin

LAB6 : Laboratorio6 port map(Reset=>Reset,Clk=>Clk,Botones=>Botones,LED_ERROR=>LED_ERROR,LED_READ=>LED_READ,LED_WRITE=>LED_WRITE,
								WE=>WE,CE=>CE,OE=>OE,LB=>LB,UB=>UB,DATA_BUS=>DATA_BUS,
								ADDRESS=>ADDRESS,DISP0=>DISP0,DISP1=>DISP1,DISP2=>DISP2, RAM_STATE=>RAM_STATE,TOP_STATE=>TOP_STATE,LLAVE=>LLAVE);

clk	<=	not(clk) after 10ns;

Escritura_Datos: process
begin
	wait until rising_edge(clk);
	Reset <= '1';
	wait until rising_edge(clk);
	Reset <= '0';
	wait for 100ns;
	llave <='1';
	wait until rising_edge(clk);
	Botones <= "110";
	wait for 500ns;
	assert(false) report "FIN" severity failure;
end process;
end tb;
