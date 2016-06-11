library ieee; 
use ieee.std_logic_1164.all;

entity LFSR_12_TB is
end LFSR_12_TB;

architecture test of LFSR_12_TB is

component LFSR_12 is
	port
	(
		-- Input ports
		Clk	: in  std_logic;		--Entrada de reloj
		Set	: in	std_logic;		--Entrada de seteo
		Reset	: in	std_logic;
		En		: in	std_logic;

		-- Output ports
		b	: out std_logic_vector(11 downto 0)
	);
end component;

signal Clk, Set, Reset,En	: std_logic;
signal b				: std_logic_vector(11 downto 0);

begin
	
	LFSR1: LFSR_12 port map(
									Clk=>Clk,
									Set=>Set,
									Reset=>Reset,
									En=>En,
									b=>b
									);
	
	aplica_entradas: process
	begin
		Set <= '1';
		En <= '1';
		Reset<= '0';
		wait for 50ns;
		Set <= '0';
		for i in 0 to 4097 loop
			Clk<='0';
			wait for 5ns;
			Clk<='1'; 
			wait for 5ns;
		end loop;
		wait for 50ns;
	assert(false) report "FIN" severity failure;
	end process;

end test;