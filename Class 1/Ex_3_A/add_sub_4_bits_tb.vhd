entity testbench_add_sub_4_bits is end;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use std.textio.all;

architecture add_sub_4_bits_tb of testbench_add_sub_4_bits is

component add_sub_4_bits
port
(
	clk_in, sel_in             : in std_logic;
	
	input_port_1, input_port_2 : in unsigned(3 downto 0);
		
	output_port  : out unsigned( 3 downto 0)
);
end component;

	--begin
-- Auxiliary signals for interconnection to the stimilus process
	constant clk_period  : time := 10 ns;

-- Clock process definitions
	signal clk_in_tb : std_logic;  

	signal sel_in_tb                        : std_logic;     
	signal input_port_1_tb, input_port_2_tb : unsigned(3 downto 0);
	signal output_port_tb                   : unsigned(3 downto 0);
	
	begin
		testbench_add_sub_4_bits  : add_sub_4_bits port map (clk_in => clk_in_tb, sel_in => sel_in_tb, input_port_1 => input_port_1_tb, input_port_2 => input_port_2_tb, output_port => output_port_tb);

		stimulus: process
			begin
				Wait for clk_period; sel_in_tb <= '1'; input_port_1_tb <= "1111"; input_port_2_tb <= "0000";
				Wait for clk_period; sel_in_tb <= '1'; input_port_1_tb <= "1111"; input_port_2_tb <= "0000";
				Wait for clk_period; sel_in_tb <= '0'; input_port_1_tb <= "1111"; input_port_2_tb <= "0000";
				Wait for clk_period; sel_in_tb <= '1'; input_port_1_tb <= "1001"; input_port_2_tb <= "0110";
				Wait for clk_period; sel_in_tb <= '0'; input_port_1_tb <= "1001"; input_port_2_tb <= "0110";
				Wait for clk_period; sel_in_tb <= '1'; input_port_1_tb <= "0110"; input_port_2_tb <= "1001";
				Wait for clk_period; sel_in_tb <= '0'; input_port_1_tb <= "0110"; input_port_2_tb <= "1001";
				Wait for clk_period; sel_in_tb <= '1'; input_port_1_tb <= "1100"; input_port_2_tb <= "1111";
				Wait for clk_period; sel_in_tb <= '0'; input_port_1_tb <= "1100"; input_port_2_tb <= "1111";
				wait;
		end process stimulus;

   	clk_process : process
	begin
		clk_in_tb <= '0';
		wait for clk_period/2;
		clk_in_tb <= '1';
		wait for clk_period/2;
   	end process;
	end add_sub_4_bits_tb;
