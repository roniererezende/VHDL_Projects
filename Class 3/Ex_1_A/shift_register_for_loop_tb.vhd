entity testbench_shift_register_for_loop is end;

library IEEE;
use IEEE.std_logic_1164.all;
use std.textio.all;

architecture shift_register_for_loop_tb of testbench_shift_register_for_loop is

component shift_register_for_loop
	generic (len   :  integer := 8);
port
(
	input_port  : in	 std_logic;
	clk_in      : in  std_logic;
	output_port : out std_logic_vector(7 downto 0)

);
end component;

	constant clk_period : time := 20 ns;
	
	signal input_port_tb  :  std_logic := '0';
	signal clk_in_tb      :  std_logic := '0';
	signal output_port_tb :	 std_logic_vector(7 downto 0);

	begin
		
		testbench_shift_register : shift_register_for_loop port map (input_port => input_port_tb, clk_in => clk_in_tb, output_port => output_port_tb );
		stimulus : process

		begin 
			input_port_tb <= '1';
			wait for  20 ns; input_port_tb <= '0';
			wait for 120 ns; input_port_tb <= '0';
                        wait for  30 ns; input_port_tb <= '1';
			wait for  10 ns; input_port_tb <= '0';
			wait;

		end process stimulus;
	
	clk_process : process
	begin
		clk_in_tb <= '0';
		wait for clk_period/2;
		clk_in_tb <= '1';
		wait for clk_period/2;
   	end process;

	end shift_register_for_loop_tb;