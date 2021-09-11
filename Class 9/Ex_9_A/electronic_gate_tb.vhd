-- Author: Roniere Rezende
-- File: electronic_gate_tb.vhd
-- Date: 07/09/21

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity electronic_gate_tb is

end electronic_gate_tb;

--a arquitetura
architecture behavioral of electronic_gate_tb is

	component electronic_gate
		port(
			clock_i	         : in  std_logic; -- Clock
			reset_i          : in  std_logic; -- Button to reset the state machine
			abrir            : in  std_logic; -- Button to open the gate
			fechar           : in  std_logic; -- Button to close the gate
			sensor_fechado_i : in  std_logic; -- Sensor to inform that the gate is closed
			sensor_aberto_i  : in  std_logic; -- Sensor to inform that the gate is opened
			relays           : out std_logic_vector(1 downto 0) -- bit '1' => closing the gate / bit '0' => opening the gate
	);
	end component;
	
	component electronic_gate_pll is
		port(
			areset : in  std_logic := '0';
			inclk0 : in  std_logic := '0';
			c0	   : out std_logic;
			locked : out std_logic 
		);
	end component;
	
	signal clock_s          : std_logic; 
	signal reset_s          : std_logic; 
	signal abrir_s          : std_logic; 
	signal fechar_s         : std_logic; 
	signal sensor_fechado_s : std_logic;
	signal sensor_aberto_s  : std_logic;	
	signal relays_s    : std_logic_vector(1 downto 0);
	
	signal areset_s : std_logic := '0';
	signal inclk0_s : std_logic;
	signal c0_s : std_logic;
	signal locked_s : std_logic;
		
	constant clk_period : time := 2 ns;

begin

	--clock_s <= not clock_s after 10 ns;
	inclk0_s <= clock_s;
	
	process
	begin
	
		reset_s <= '0';
		abrir_s <= '1';
		fechar_s <= '1';
		sensor_fechado_s <= '1';
		sensor_aberto_s <= '0';
		reset_s <= '0', '1' after clk_period;
		wait until reset_s <= '1';
	
		wait until rising_edge(clock_s);
		wait until rising_edge(clock_s);
		wait until rising_edge(clock_s);
		wait until rising_edge(clock_s);
		wait until rising_edge(clock_s);
		wait until rising_edge(clock_s);
		wait until rising_edge(clock_s);
		wait until rising_edge(clock_s);
		wait until rising_edge(clock_s);
		wait until rising_edge(clock_s);
		wait until rising_edge(clock_s);
		wait until rising_edge(clock_s);

        --The gate is opened because the rst_s is initialized in '0'
        fechar_s <= '0';             --Comand to close the gate
        wait until rising_edge(clock_s);
        fechar_s <= '1';
        sensor_aberto_s <= '1';        --Sensor that alert the gate is opening or is opened
        wait until rising_edge(clock_s);
        wait until rising_edge(clock_s);
        sensor_fechado_s <= '0';        --Sensor that alert the gate is closed
        wait until rising_edge(clock_s);
        wait until rising_edge(clock_s); 
       
        --The gate is closed
        abrir_s <= '0';             --Comand to open the gate
        wait until rising_edge(clock_s);
        abrir_s <= '1';
        sensor_fechado_s <= '1';
        wait until rising_edge(clock_s);
        wait until rising_edge(clock_s);
        sensor_aberto_s <= '0';
        wait until rising_edge(clock_s);
        wait until rising_edge(clock_s);
			
		wait;
	end process;
	
	    -- Clock process definitions
	clk_p : process
	begin
		clock_s <= '0';
		wait for clk_period/2;
		clock_s <= '1';
		wait for clk_period/2;
	end process;

	dut : electronic_gate
		port map (
			clock_i => clock_s,
			reset_i => reset_s,           
			abrir => abrir_s,         
			fechar => fechar_s,        
			sensor_fechado_i => sensor_fechado_s, 
			sensor_aberto_i => sensor_aberto_s, 
			relays => relays_s
		);
		
	PLL : electronic_gate_pll
		port map (
			areset => areset_s,
			inclk0 => inclk0_s,
			c0     => c0_s,
			locked => locked_s
		);
		
end behavioral;