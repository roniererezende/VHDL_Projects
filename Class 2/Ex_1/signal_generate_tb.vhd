entity testbench_signal_generate is end;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use std.textio.all;

architecture signal_generate_tb of testbench_signal_generate is

component signal_generate
port
(
	clk_in       : in std_logic;
		
	output_port  : out signed( 7 downto 0)
);
end component;

	--begin
-- Auxiliary signals for interconnection to the stimilus process
	constant clk_period  : time := 20 ns;

-- Clock process definitions
	signal clk_in_tb : std_logic;  

	signal output_port_tb                   : signed(7 downto 0);
	
	begin
		testbench_signal_generate  : signal_generate port map (clk_in => clk_in_tb, output_port => output_port_tb);


   	clk_process : process
	begin
		clk_in_tb <= '0';
		wait for clk_period/2;
		clk_in_tb <= '1';
		wait for clk_period/2;
   	end process;
end signal_generate_tb;