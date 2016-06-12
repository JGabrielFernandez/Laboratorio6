library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.Lab6_Pack.all;

entity Top_FSM is
port(
	--inputs
	Clk			: in	std_logic;
	Rst			: in	std_logic;
	botones		: in	std_logic_vector(2 downto 0);				-- Boton(2): Continuar cuando error; Boton(1): Lectura; Boton(0): Escritura;
	ready			: in	std_logic;										-- Handshake
	cmd			: in	std_logic;										-- Bit que indica si los datos son iguales en la lectura.
	
	ADDRESS		: out std_logic_vector(RAM_addr_width-1 downto 0);
	SetBotones	: out	std_logic;
	ADDR_SEL		: out std_logic;										--
	RD_WR 		: out std_logic;										--
	ENRD_WR 		: out std_logic;										--
	Ext_ready 	: out std_logic;										--
	LED_FinWR	: out std_logic;										-- Led que se prende cuando termina la escritura
	LOADDIR		: out std_logic;										-- Cargar direccion 1111111 en LFSR (set LFSR)
	EN_LFSR		: out std_logic;										-- Suma LFSR
	LED_RD		: out std_logic;										-- Enable del led de 1 HZ al finalizar la lectura
	Led_error	: out std_logic;										-- Led rojo cuando no coinciden las memorias
	EN_7Segm		: out std_logic										-- Enable 7 segmentos, mostrar direccion del error
);
end Top_FSM;

architecture beh of Top_FSM is

 -- señales
 type FSM_states_RDWR is (IDLE, INITWR,ESPERAWR, LOADDATA, PRENDERLED, INITRD, ESPERARD, COMPARE, FINRD, ERROR_DATO, BLINK_LED);
 signal current_state,next_state:FSM_states_RDWR;

 signal direccion: std_logic_vector(RAM_addr_width-1 downto 0);

 begin
 ADDRESS <= direccion;
 PROXIMO_ESTADO: process(current_state,Botones,ready,direccion,cmd)
 begin
	case current_state is
		when IDLE =>
			if (botones = "110") then
				next_state <= INITWR;			
			elsif (botones = "101") then
				next_state <= INITRD;				
			end if;
		when INITWR =>
			next_state <= ESPERAWR;
		when ESPERAWR =>
			if (ready = '1') then
				next_state <= LOADDATA;
			elsif (ready = '0') then
				next_state <= ESPERAWR;
			end if;
		when LOADDATA =>
				if (ready= '1') then
					next_state <= LOADDATA;
				elsif (direccion = (RAM_addr_width-1 downto 0=>'1')) then   	----- DIRECCION DE LA ULITMA DIRECCION
					next_state <= PRENDERLED;
				else
					next_state <= INITWR;
				end if;
		when PRENDERLED => 
			next_state <= IDLE;
-----------------------------------------------------------------------------------abajo lectura, arriba escritura			
		when INITRD =>
			next_state <= ESPERARD;
		when ESPERARD =>
			if (ready='1') then
				next_state <= COMPARE;
			else
				next_state <= ESPERARD;
			end if;
		when COMPARE =>
			if (cmd='0') then
				next_state <= ERROR_DATO;
			else
				next_state <= FINRD;
			end if;
		when FINRD =>
			if (direccion=(RAM_addr_width-1 downto 0=>'1')) then
				next_state <= BLINK_LED;
			else
				next_state <= ESPERARD;
			end if;
		when ERROR_DATO =>
			if (Botones = "011") then
				next_state <= FINRD;
			else 
				next_state <= ERROR_DATO;
			end if;
		when BLINK_LED =>				
				next_state <= IDLE;
		when others =>
				next_state <= IDLE;
	end case;
end process;

ESTADO_ACTUAL: process(clk,rst)
begin
	if(Rst='1') then
		current_state<=IDLE;
	elsif(rising_edge(Clk)) then
		current_state<=next_state;
	end if;
end process;

Output: process(Rst,Current_state)
begin
	if (Rst='1') then
		ADDR_SEL		<= '0';
		direccion 	<= (RAM_addr_width-1 downto 0=>'0');
		RD_WR 		<= '0';
		ENRD_WR 		<= '0';
		Ext_ready 	<= '0';
		LED_FinWR	<= '0';
		LOADDIR 		<= '0';
		EN_LFSR		<= '0';
		LED_RD		<= '0';
		Led_error	<= '0';
		EN_7Segm		<= '0';
		SetBotones	<=	'1';
	elsif (rising_edge(Clk)) then
		ADDR_SEL		<= '0';
		SetBotones	<=	'0';
		case current_state is
		when IDLE =>
			direccion	<= (RAM_addr_width-1 downto 0=>'0');
			RD_WR 		<= '0';
			ENRD_WR 		<= '0';
			Ext_ready 	<= '0';
			SetBotones	<=	'0';
		when INITWR =>
			direccion 	<= std_logic_vector(unsigned(direccion)+1);
			RD_WR 		<= '1';
			ENRD_WR 		<= '1';
			Ext_ready 	<= '0';
			LED_FinWR 	<= '0';
			LED_RD	 	<= '0';
			SetBotones	<=	'1';
		when ESPERAWR =>
			RD_WR 		<= '1';
			ENRD_WR 		<= '1';
			Ext_ready 	<= '0';
		when LOADDATA =>
			RD_WR 		<= '1';
			ENRD_WR 		<= '1';
			Ext_ready 	<= '1';
		when PRENDERLED =>
			RD_WR 		<= '1';
			ENRD_WR 		<= '0';
			Ext_ready 	<= '0';
			LED_FinWR 	<= '1';
-----------------------------------------------------------------------abajo lectura, arriba escritura			
		when INITRD =>
			LOADDIR 		<= '1';
			RD_WR 		<= '0';
			ENRD_WR 		<= '1';
			EN_LFSR 		<= '0';
			ADDR_SEL		<= '1';
			LED_FinWR 	<= '0';
			LED_RD	 	<= '0';
			SetBotones	<=	'1';
		when ESPERARD =>
			RD_WR 		<= '0';
			ENRD_WR 		<= '1';
			EN_LFSR		<= '0';
			ADDR_SEL		<= '1';
		when COMPARE =>
			Ext_ready 	<= '0';
			ADDR_SEL		<= '1';
		when FINRD =>
			Ext_ready 	<= '1';
			EN_LFSR		<= '1';
			Led_error	<= '0';
			EN_7Segm		<=	'0';
			ADDR_SEL		<= '1';
		when ERROR_DATO =>
			Led_error	<= '1';
			EN_7Segm		<=	'1';
			ADDR_SEL		<= '1';
		when BLINK_LED =>
			EN_LFSR		<= '0';
			LED_RD		<= '1';
			ADDR_SEL		<= '1';
		when others =>	null;
	end case;
	end if;
 end process;
 end beh;