entity testbench_mult_12_bits is end;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use std.textio.all;

architecture mult_12_bits_tb of testbench_mult_12_bits is

component mult_12_bits
port
(
	clk_in                     : in std_logic;
	
	input_port_1, input_port_2 : in signed (11 downto 0);
		
	output_port  	           : out signed(23 downto 0)
);
end component;

	--begin
-- Auxiliary signals for interconnection to the stimilus process
	constant clk_period  : time := 10 ns;

-- Clock process definitions
	signal clk_in_tb : std_logic;  
   
	signal input_port_1_tb, input_port_2_tb : signed(11 downto 0);
	signal output_port_tb                   : signed(23 downto 0);
	
	begin
		testbench_mult_12_bits  : mult_12_bits port map (clk_in => clk_in_tb, input_port_1 => input_port_1_tb, input_port_2 => input_port_2_tb, output_port => output_port_tb);
		stimulus: process
		begin
			Wait for 15 ns;  input_port_1_tb <= "111111111111"; input_port_2_tb <= "000011110001";
			Wait for 15 ns;  input_port_1_tb <= "111111111111"; input_port_2_tb <= "111111111111";
		        Wait for 15 ns;  input_port_1_tb <= "111111111111"; input_port_2_tb <= "000000000001";
			Wait for 15 ns;  input_port_1_tb <= "101010101001"; input_port_2_tb <= "000000000010";
				wait;
		end process stimulus;
   	clk_process : process
	begin
		clk_in_tb <= '0';
		wait for clk_period/2;
		clk_in_tb <= '1';
		wait for clk_period/2;
   	end process;
	end mult_12_bits_tb;
