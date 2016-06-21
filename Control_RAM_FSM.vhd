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
	Ready				: out	std_logic;
	STATE				: OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
end Control_RAM_FSM;

architecture beh of Control_RAM_FSM is

--constantes y señales

type FSM_states is (IDLE, INIT_RD, INIT_WR, END_RD, END_WR, WAIT_WR);
signal current_state,next_state:FSM_states;

begin
PROXIMO_ESTADO: process(current_state,En,Rd_Wr,Ext_ready)
begin
	case current_state is
		when IDLE =>
			if (En='0') then
				next_state <= IDLE;
			elsif (Rd_Wr='0') then
					next_state <= INIT_RD;
				else
					next_state <= INIT_WR;
			end if;
		when INIT_RD =>
				next_state <= END_RD;
		when INIT_WR =>
				next_state <= WAIT_WR;
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
				next_state <= IDLE;
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
		Ready			<= '0';
		STATE			<= "000000";
	elsif (rising_edge(clk)) then
		case current_state is
			when IDLE =>
				CE				<= '1';
				OE				<= '1';				
				WE				<= '1';			
				Ready			<= '0';
				STATE			<= "000001";
			when INIT_RD =>
				CE				<= '0';
				OE				<= '0';
				WE				<= '1';
				Ready			<= '0';
				STATE			<= "000010";
			when INIT_WR =>
				CE				<= '0';
				OE				<= '1';				
				WE				<= '0';			
				Ready			<= '0';
				STATE			<= "000100";
			when WAIT_WR =>	
				CE				<= '0';
				OE				<= '1';
				WE				<= '0';
				Ready			<= '1';
				STATE			<= "001000";
			when END_RD =>	
				CE				<= '0';
				OE				<= '0';
				WE				<= '1';
				Ready			<= '1';
				STATE			<= "010000";
			when END_WR =>	
				CE				<= '0';
				OE				<= '1';
				WE				<= '0';
				Ready			<= '0';
				STATE			<= "100000";
			when others => null;
		end case;
	end if;
end process;

end beh;