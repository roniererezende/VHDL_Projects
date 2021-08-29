entity testbench_decod_3x8 is end;

library IEEE;
use IEEE.std_logic_1164.all;
use std.textio.all;

architecture decod_3x8_tb of testbench_decod_3x8 is

component decod_3x8_process_if
port
(
	encoder: in std_logic_vector(2 downto 0);
	output_port: out std_logic_vector(7 downto 0)
);
end component;

-- Auxiliary signals for interconnection to the stimilus process
	constant clk_period  : time := 20 ns;
	
	signal encoder_tb     : std_logic_vector(2 downto 0);
	signal output_port_tb : std_logic_vector(7 downto 0);

	begin
		testbench_decod_3x8  : decod_3x8_process_if port map (encoder => encoder_tb, output_port => output_port_tb);

		stimulus: process
			begin
				Wait for clk_period; encoder_tb <= "000";
				Wait for clk_period; encoder_tb <= "001";
				Wait for clk_period; encoder_tb <= "010"; 
				Wait for clk_period; encoder_tb <= "011"; 
				Wait for clk_period; encoder_tb <= "100"; 
				Wait for clk_period; encoder_tb <= "101";
				Wait for clk_period; encoder_tb <= "110";
				Wait for clk_period; encoder_tb <= "111"; 
				Wait for clk_period; encoder_tb <= "100"; 
				Wait for clk_period; encoder_tb <= "101"; 
				Wait for clk_period; encoder_tb <= "010";
				Wait for clk_period; encoder_tb <= "111";
				Wait for clk_period; encoder_tb <= "110"; 
				Wait for clk_period; encoder_tb <= "010"; 
				Wait for clk_period; encoder_tb <= "000"; 
				Wait for clk_period; encoder_tb <= "111";
				wait;
		end process stimulus;
	end decod_3x8_tb;
