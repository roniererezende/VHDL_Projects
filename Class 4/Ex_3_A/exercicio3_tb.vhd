library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--declaramos a entidade
entity exercicio3_tb is
end exercicio3_tb;

--a arquitetura
architecture behavioral of exercicio3_tb is

	component Exercicio_1
		generic (len   :  integer := 8);
		port
		(
			input_port  : in	 std_logic;
			clk_in      : in  std_logic;
			output_port : out std_logic_vector(7 downto 0)
		);
	end component;

	constant clk_period : time := 20 ns;
	
	signal input_port  :  std_logic := '0';
	signal clk_in      :  std_logic := '0';
	signal output_port :	 std_logic_vector(7 downto 0);
	
begin
	clk_in <= not clk_in after clk_period/2;
	
	stimulus : process
	begin
		input_port <= '1';
		wait for  20 ns; input_port <= '0';
		wait for 120 ns; input_port <= '0';
                wait for  30 ns; input_port <= '1';
		wait for  20 ns; input_port <= '0';
		wait for  20 ns; input_port <= '0';
		wait for  20 ns; input_port <= '1';
		wait;
	end process stimulus;  
	
	testbench_Exercicio_1 : exercicio_1 
		port map (
			input_port => input_port, 
			clk_in => clk_in, 
			output_port => output_port 	
		);
end behavioral;	
