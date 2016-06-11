LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.Lab6_Pack.all;

ENTITY Laboratorio6 IS
	PORT(
		RESET		:	IN	STD_LOGIC;
		CLK		:	IN	STD_LOGIC;
		BOTONES	: 	IN	STD_LOGIC_VECTOR(2 DOWNTO 0);				-- Boton(2): Continuar cuando error; Boton(1): Lectura; Boton(0): Escritura;
		
		LED_WRITE:	OUT	STD_LOGIC;
		LED_READ	:	OUT	STD_LOGIC;
		LED_ERROR:	OUT	STD_LOGIC;
		
		WE			:	OUT	STD_LOGIC;
		RDWR		:	OUT	STD_LOGIC;
		CE			:	OUT	STD_LOGIC;
		OE			:	OUT	STD_LOGIC;
		LB			:	OUT	STD_LOGIC;
		UB			:	OUT	STD_LOGIC;
		DATA_BUS	:	INOUT	STD_LOGIC_VECTOR(data_width-1 DOWNTO 0);
		ADDRESS	:	OUT	STD_LOGIC_VECTOR(addr_width-1 DOWNTO 0);
		
		DISP0		:	OUT	STD_LOGIC_VECTOR(6 DOWNTO 0);
		DISP1		:	OUT	STD_LOGIC_VECTOR(6 DOWNTO 0);
		DISP2		:	OUT	STD_LOGIC_VECTOR(6 DOWNTO 0);
		DISP3		:	OUT	STD_LOGIC_VECTOR(6 DOWNTO 0);
		DISP4		:	OUT	STD_LOGIC_VECTOR(6 DOWNTO 0)
END ENTITY;

ARCHITECTURE BEH OF Laboratorio6 IS

SIGNAL READY_MEM, READY_GRAL:	STD_LOGIC;
SIGNAL RDWRINT,ENRDWR:	STD_LOGIC;
SIGNAL COMPOUT;


BEGIN
RDWR<=RDWRINT;
RAM_FSM: Control_RAM_FSM port map(
	Clk				=>	CLK,
	Ext_ready		=>	READY_GRAL,
	Reset				=>	RESET,
	Rd_Wr				=>	RDWRINT,
	En					=>	ENRDWR,
	
	CE					=>	CE,
	OE					=>	OE,
	WE					=>	WE,
	UB					=>	UB,
	LB					=>	LB,
	Ready				=>	READY_MEM
	);

Gral_FSM: Top_FSM port map(
	--inputs
	Clk			=>	CLK,
	Rst			=>	RESET,
	botones		=>	BOTONES,
	ready			=>	READY_GRAL,
	cmd			=>	COMPOUT,	
	--outputs
	ADDRESS		=>	
	RD_WR 		=>
	ENRD_WR 		=>	ENRDWR,
	Ext_ready 	=>
	LED_FinWR	=>
	LOADDIR		=>
	EN_LFSR		=>
	Comp_Data	=>
	Led_RD		=>
	Led_error	=>
	EN_7Segm		=>
);

ADDR_TO_7SEG: DATA_BUFFER GENERIC MAP(data_width)
									PORT(
	DATAIN	=> 
	EN			=> 
	CLK		=> 
	CLEAR		=> 
	DATAOUT	=> 
	);


LED_W: FF_D_RISING port map
	(
		D		=> 
		Clk	=> 
		Set	=> 
		Reset	=> 
		En		=> 
		Q		=> 
	);
end component;

LFSR: LFSR_20 is
	port
	(
		-- Input ports
		Clk	: in  std_logic;		--Entrada de reloj
		Set	: in	std_logic;		--Entrada de seteo
		Reset	: in	std_logic;
		En		: in	std_logic;

		-- Output ports
		b	: out std_logic_vector(19 downto 0)
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