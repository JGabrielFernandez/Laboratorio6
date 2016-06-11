library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Comparador is
port
(
	--inputs
	Data_ROM			: in std_logic_vector(15 downto 0);
	Data_SRAM		: in std_logic_vector(15 downto 0);
	
	--outputs
	Comparacion		: out std_logic
);
end comparador;

architecture beh of Comparador is

begin

Comparacion <= '1' when (Data_ROM = Data_SRAM) else '0';

end beh;