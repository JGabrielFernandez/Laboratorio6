library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package Lab6_Pack is

	constant data_width : natural := 16;
	constant addr_width : natural := 12;
	constant RAM_addr_width : natural := 20;
	 		
	constant Inicial	 : unsigned(addr_width-1 downto 0) := (others=>'0');
	constant Final		 : unsigned(addr_width-1 downto 0) := (others=>'1');


------------------------------------------------------------------------------------------------------------------------
----------------------------------------------COMPONENTES---------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------

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

component Top_FSM is
port(
	--inputs
	Clk			: in	std_logic;
	Rst			: in	std_logic;
	botones		: in	std_logic_vector(2 downto 0);				-- Boton(2): Continuar cuando error; Boton(1): Lectura; Boton(0): Escritura;
	ready			: in	std_logic;										-- Handshake
	cmd			: in	std_logic;										-- Bit que indica si los datos son iguales en la lectura.										-- Bit que indica si se llego al final de la lectura.
	--outputs
	ADDRESS		: out std_logic_vector(RAM_addr_width-1 downto 0);
	SetBotones	: out	std_logic;
	ADDR_SEL		: out std_logic;										--
	RD_WR 		: out std_logic;										--
	ENRD_WR 		: out std_logic;										--
	Ext_ready 	: out std_logic;										--
	LED_FinWR	: out std_logic;										-- Led que se prende cuando termina la escritura
	LOADDIR		: out std_logic;										-- Cargar direccion 1111111 en LFSR (set LFSR)
	EN_LFSR		: out std_logic;										-- Suma LFSR
	Led_RD		: out std_logic;										-- Enable del led de 1 HZ al finalizar la lectura
	Led_error	: out std_logic;										-- Led rojo cuando no coinciden las memorias
	EN_7Segm		: out std_logic										-- Enable 7 segmentos, mostrar direccion del error
);
end component;

COMPONENT DATA_BUFFER IS
GENERIC(
			data_width:	integer
		);
PORT(
	DATAIN:	IN		STD_LOGIC_VECTOR(data_width-1 DOWNTO 0);
	EN:		IN		STD_LOGIC;
	CLK:		IN		STD_LOGIC;
	CLEAR:	IN		STD_LOGIC;
	DATAOUT:	OUT	STD_LOGIC_VECTOR(data_width-1 DOWNTO 0)
	);
END COMPONENT;

component FF_D_RISING is
	port
	(
		D		: in  std_logic;
		Clk	: in  std_logic;		--Reloj
		Set	: in	std_logic;		--Seteo asincrónico
		Reset	: in	std_logic;
		En		: in	std_logic;

		Q	: out std_logic
	);
end component;

component LFSR_12 is
	port
	(
		Clk	: in  std_logic;
		Set	: in	std_logic;
		En		: in	std_logic;
		
		b		: out std_logic_vector(11 downto 0)
	);
end component;

component DF_HZ is
	generic
	(
		freq:	integer	:=	50000000
		
	);
	port(
		CLKin: 	in	std_logic;									--Reloj de entrada
		rst:		in	std_logic;									--Reset asincrónico
		SelFreq:	in	std_logic_vector(2 downto 0);			--Selector de frecuencia ("000" => 0.1Hz, "001" => 0.5Hz, "010" => 2Hz, "011" => 5Hz, "1xx" => 1Hz)
		
		CLKout: 		out std_logic;								--Reloj de salida
		LEDout: 		out std_logic;								--Salida para LED (puede ser utilizada como salida de reloj auxiliar)
		display1:	out std_logic_vector(6 downto 0);	--Salida 7 segmentos. Indicador de frecuencia de salida. Número más significativo
		display0:	out std_logic_vector(6 downto 0)		--Salida 7 segmentos. Indicador de frecuencia de salida. Número menos significativo
	
	);
end component;

component FF_D_FALLING is
	port
	(
		-- Input ports
		D		: in  std_logic;
		Clk	: in  std_logic;		--Reloj
		Set	: in	std_logic;		--Seteo asincrónico
		Reset	: in	std_logic;

		-- Output ports
		Q	: out std_logic
	);
end component;

component MUX_4_1 is
port
	(
		in0,in1,in2,in3	: in  std_logic;
		sel	: in	std_logic_vector(1 downto 0);
		out1	: out	std_logic
	);
end component;

component DEC_HEX_7SEG is

	port
	(
		in1	: in  std_logic_vector(3 downto 0);
		out1	: out std_logic_vector(0 to 6)
	);
end component;

COMPONENT ROM IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		clock			: IN STD_LOGIC  := '1';
		q				: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
END COMPONENT;

component Comparador is
port
(
	Data_ROM			: in std_logic_vector(15 downto 0);
	Data_SRAM		: in std_logic_vector(15 downto 0);
	Comparacion		: out std_logic
);
end component;

COMPONENT PLL IS
	PORT
	(
		areset		: IN STD_LOGIC;
		inclk0		: IN STD_LOGIC;
		c0				: OUT STD_LOGIC ;
		locked		: OUT STD_LOGIC 
	);
END COMPONENT;
-------------------------------------------------------------------------------------------------------------------------
end Lab6_Pack;