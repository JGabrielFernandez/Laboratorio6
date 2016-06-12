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
		ADDRESS	:	OUT	STD_LOGIC_VECTOR(RAM_addr_width-1 DOWNTO 0);
		
		DISP0		:	OUT	STD_LOGIC_VECTOR(6 DOWNTO 0);
		DISP1		:	OUT	STD_LOGIC_VECTOR(6 DOWNTO 0);
		DISP2		:	OUT	STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
END ENTITY;

ARCHITECTURE BEH OF Laboratorio6 IS

SIGNAL CLK1HZ						:	STD_LOGIC;
SIGNAL ADDR,ADDR_LFSR			:	STD_LOGIC_VECTOR(addr_width-1 DOWNTO 0);
SIGNAL ADDR_FSM					:	STD_LOGIC_VECTOR(RAM_addr_width-1 DOWNTO 0);
SIGNAL BTS							: 	STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL READY_MEM, READY_GRAL	:	STD_LOGIC;
SIGNAL RDWRINT,ENRDWR			:	STD_LOGIC;
SIGNAL COMPOUT						:	STD_LOGIC;
SIGNAL ADDR_SEL, BTSET			:	STD_LOGIC;
SIGNAL LEDR							:	STD_LOGIC;
SIGNAL SETLFSR,ENLFSR			:	STD_LOGIC;
SIGNAL ADDR2SHOW					:	STD_LOGIC_VECTOR(addr_width-1 DOWNTO 0);
SIGNAL EN7SEG						:	STD_LOGIC;
SIGNAL DATA_ROM					:	STD_LOGIC_VECTOR(data_width-1 DOWNTO 0);

signal sel_aux						:	std_logic_vector(1 downto 0);

BEGIN
ADDRESS(RAM_addr_width-1 downto addr_width)<= (others=>'0');
ADDRESS(addr_width-1 downto 0)<= ADDR;
RDWR<=RDWRINT;
DATA_BUS <= DATA_ROM WHEN (RDwRINT='1') ELSE (OTHERS=>'Z') ;
sel_aux <= ('0',ADDR_SEL);

REG_ADDR: for i in addr_width-1 downto 0 generate
	MUX_ADDR: MUX_4_1 port map(
		in0	=>	ADDR_FSM(i),
		in1	=>	ADDR_LFSR(i),
		in2	=>	'0',
		in3	=>	'0',
		sel	=>	sel_aux,
--		sel	=>	('0',ADDR_SEL),
		out1	=>	ADDR(i)
	);
end generate;

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
	botones		=>	BTS,
	ready			=>	READY_MEM,
	cmd			=>	COMPOUT,	
	--outputs
	ADDRESS		=>	ADDR_FSM,
	ADDR_SEL		=> ADDR_SEL,
	SetBotones	=>	BTSET,
	RD_WR 		=>	RDWRINT,
	ENRD_WR 		=>	ENRDWR,
	Ext_ready 	=>	READY_GRAL,
	LED_FinWR	=>	LED_WRITE,
	LOADDIR		=>	SETLFSR,
	EN_LFSR		=>	ENLFSR,
	Led_RD		=>	LEDR,
	Led_error	=>	LED_ERROR,
	EN_7Segm		=>	EN7SEG
	);

LEDRD:	FF_D_RISING port map
	(
		D		=>	CLK1HZ,
		Clk	=>	CLK,
		Set	=>	'0',
		Reset	=>	LEDR,
		En		=>	'1',
		Q		=>	LED_READ
	);

ADDR_TO_7SEG: DATA_BUFFER GENERIC MAP(addr_width)
	PORT MAP(
	DATAIN	=> ADDR,
	EN			=> EN7SEG,
	CLK		=> CLK,
	CLEAR		=> '0',
	DATAOUT	=> ADDR2SHOW
	);

DISP0OUT:	DEC_HEX_7SEG PORT MAP(ADDR2SHOW(3 DOWNTO 0), DISP0);
DISP1OUT:	DEC_HEX_7SEG PORT MAP(ADDR2SHOW(7 DOWNTO 4), DISP1);
DISP2OUT:	DEC_HEX_7SEG PORT MAP(ADDR2SHOW(11 DOWNTO 8),DISP2);

LFSR: LFSR_12 port map(
		Clk	=> CLK,
		Set	=> SETLFSR,
		En		=> ENLFSR,
		b		=>	ADDR_LFSR
	);

Gen1HZ: DF_HZ port map(
		CLKin			=>	CLK,
		rst			=>	RESET,	
		SelFreq		=>	"100",
		CLKout		=>	CLK1HZ,
		LEDout		=>	OPEN,
		display1		=>	OPEN,
		display0		=>	OPEN
	);
RISING_BTS :FOR i IN 0 TO 2 GENERATE
	BT: FF_D_FALLING port map
	(
		D		=>	'0',
		Clk	=>	BOTONES(i),
		Set	=>	BTSET,
		Reset	=>	'0',
		Q		=>	BTS(i)
	);
END GENERATE;

ROM1: ROM	PORT MAP(
		address	=> ADDR,
		clock		=> CLK,
		q			=> DATA_ROM
	);
	
COMP: Comparador port map(
	Data_ROM			=>	DATA_ROM,
	Data_SRAM		=>	DATA_BUS,
	Comparacion		=>	COMPOUT
);

END BEH;