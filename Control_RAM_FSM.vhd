library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Control_RAM_FSM is
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
end Control_RAM_FSM;

architecture beh of Control_RAM_FSM is

--constantes y señales
signal contador:		 unsigned(3 downto 0)	:= "0000";

type FSM_states is (IDLE, INIT_RD, INIT_WR, END_RD, END_WR, WAIT_WR);
signal current_state,next_state:FSM_states;

begin
PROXIMO_ESTADO: process(current_state,En,Rd_Wr,contador,Ext_ready)
begin
	case current_state is
		when IDLE =>
			if (En='0') then
				next_state <= IDLE;
			else
				if (Rd_Wr='0') then
					next_state <= INIT_RD;
				else
					next_state <= INIT_WR;
				end if;
			end if;
		when INIT_RD =>
			if  (contador = "1010") then
				next_state <= END_RD;
			else
				next_state <= INIT_RD;
			end if;
		when INIT_WR =>
			if (contador = "0101") then
				next_state <= WAIT_WR;
			else
				next_state <= INIT_WR;
			end if;
		when WAIT_WR =>
			if  (Ext_ready = '1') then
				next_state <= END_WR;
			else
				next_state <= WAIT_WR;
			end if;
		when END_RD =>
			if  (Ext_ready = '1') then
				next_state <= IDLE;
			else
				next_state <= END_RD;
			end if;			
		when END_WR =>
			if  (contador = "1010") then
				next_state <= IDLE;
			else
				next_state <= END_WR;
			end if;
		when others =>
			next_state <= IDLE;
	end case;
end process;

ESTADO_ACTUAL: process(clk,Reset)
begin
	if(Reset='1') then
		current_state<=IDLE;
	elsif(rising_edge(Clk)) then
		current_state<=next_state;
	end if;
end process;

Output: process(Reset,Current_state,Clk)
begin
	UB <= '0';
	LB <= '0';
	if (Reset='1') then
		CE				<= '1';				
		OE				<= '1';				
		WE				<= '1';			
		Ready			<= '1';
	elsif (rising_edge(clk)) then
		case current_state is
			when IDLE =>
				CE				<= '1';
				OE				<= '1';				
				WE				<= '1';			
				Ready			<= '0';
				contador		<= "0000";
			when INIT_RD =>
				CE				<= '0';
				OE				<= '1';
				WE				<= '1';
				Ready			<= '0';
				contador		<= contador + 1;
			when INIT_WR =>
				CE				<= '0';
				OE				<= '1';				
				WE				<= '0';			
				Ready			<= '0';
				contador		<= contador + 1;
			when WAIT_WR =>	
				CE				<= '0';
				OE				<= '1';
				WE				<= '0';
				Ready			<= '1';			
			when END_RD =>	
				CE				<= '0';
				OE				<= '0';
				WE				<= '1';
				Ready			<= '1';
			when END_WR =>	
				CE				<= '0';
				OE				<= '1';
				WE				<= '0';
				Ready			<= '1';
				contador		<= contador + 1;
		end case;
	end if;
end process;

end beh;