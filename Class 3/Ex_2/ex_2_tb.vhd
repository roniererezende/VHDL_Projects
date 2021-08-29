entity testbench_ex_2 is end;

library IEEE;
use IEEE.std_logic_1164.all;
use std.textio.all;

architecture ex_2_tb of testbench_ex_2 is

component ex_2
port
(       selector  : in integer;
	d, clk, rst, en : in	 std_logic;	
	sr_output :	out std_logic
);
end component;

	constant clk_period : time := 20 ns;
	
	signal selector_tb    : integer := 0;
	signal d_tb, clk_tb, rst_tb, en_tb, sr_output_tb : std_logic;

	begin
		
		testbench_ex_2 : ex_2 port map (selector => selector_tb, d => d_tb, clk => clk_tb, rst => rst_tb, en => en_tb, sr_output => sr_output_tb );
		stimulus : process

		begin 
		        selector_tb <= 1; en_tb <= '1'; rst_tb <= '1';
			wait for  10 ns; d_tb <= '0'; rst_tb <= '0';
			wait for  20 ns; d_tb <= '0';
                        wait for  20 ns; d_tb <= '1';
			wait for  20 ns; d_tb <= '0';
			wait for  20 ns; d_tb <= '0';
                        wait for  20 ns; d_tb <= '1';
			wait for  20 ns; d_tb <= '0';
                        wait for  20 ns; d_tb <= '1';
			wait for  30 ns; rst_tb <= '1';
			wait for  30 ns; rst_tb <= '0';
			wait;

		end process stimulus;
	
	clk_process : process
	begin
		clk_tb <= '0';
		wait for clk_period/2;
		clk_tb <= '1';
		wait for clk_period/2;
   	end process;

	end ex_2_tb;

