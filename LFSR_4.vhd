library ieee; 
use ieee.std_logic_1164.all;

--CONTADOR LINEAR FEEDBACK SHIFT REGISTER.
--Cuenta una secuencia pseudoaleatoria de 4 bits cíclica de 15 estados.  Posee una entrada de seteo.

entity LFSR_4 is
	port
	(
		-- Input ports
		Clk	: in  std_logic;		--Entrada de reloj
		Set	: in	std_logic;		--Entrada de seteo (Se setea la salida en "1111" debido a que "0000" no es una salida válida en este contador.

		-- Output ports
		b	: out std_logic_vector(19 downto 0)
	);
end LFSR_4;

architecture shift of LFSR_4 is
	
	component FF_D is
	port
	(
		-- Input ports
		D		: in  std_logic;
		Clk	: in  std_logic;
		Set	: in	std_logic;

		-- Output ports
		Q	: out std_logic
	);
	end component;

	signal XOR1: std_logic;								--Salida de XOR
	signal int: std_logic_vector(19 downto 0);		--Conexiones internas del contador, sirven como salidas también.
	
begin

	XOR1<=int(19) XOR int(16);		-----------ARREGLAR ESTA CONDICION
	
	LFSR: for i in 19 downto 0 generate
		i32: if (i<20 and i>0) generate
			bit32: FF_D port map(D=>int(i-1), Clk=>Clk, Set=>Set,Q=>int(i));	--demas bits de salida
		end generate i32;
		i0: if(i=0) generate
			bit0: FF_D port map(D=>XOR1,Clk=>Clk,Set=>Set,Q=>int(i));			--Primer bit
		end generate i0;
	end generate LFSR;
	
	b<=int;
	
end shift;
	