entity testbench_or_process_case is end;

library IEEE;
use IEEE.std_logic_1164.all;
use std.textio.all;

architecture or_process_case_tb of testbench_or_process_case is

component or_process_case
port
(
	input_port	: 	in	  std_logic_vector(3 downto 0);
	output_port	:	out  std_logic
);
end component;

-- Auxiliary signals for interconnection to the stimilus process
	constant clk_period  : time := 20 ns;
	
	signal input_port_tb  : std_logic_vector(3 downto 0);
	signal output_port_tb : std_logic;

	begin
		testbench_or_process_case  :  or_process_case port map (input_port => input_port_tb, output_port => output_port_tb);

		stimulus: process
			begin
				Wait for clk_period; input_port_tb <= "0000";
				Wait for clk_period; input_port_tb <= "0001";
				Wait for clk_period; input_port_tb <= "0010"; 
				Wait for clk_period; input_port_tb <= "0011"; 
				Wait for clk_period; input_port_tb <= "0100"; 
				Wait for clk_period; input_port_tb <= "0101";
				Wait for clk_period; input_port_tb <= "0110";
				Wait for clk_period; input_port_tb <= "0111"; 
				Wait for clk_period; input_port_tb <= "1000"; 
				Wait for clk_period; input_port_tb <= "1001"; 
				Wait for clk_period; input_port_tb <= "1010";
				Wait for clk_period; input_port_tb <= "1011";
				Wait for clk_period; input_port_tb <= "1100"; 
				Wait for clk_period; input_port_tb <= "1101"; 
				Wait for clk_period; input_port_tb <= "1110"; 
				Wait for clk_period; input_port_tb <= "1111";
				wait;
		end process stimulus;
	end or_process_case_tb;
