
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--declaramos a entidade
entity exercicio2_tb is
end exercicio2_tb;

--a arquitetura
architecture behavioral of exercicio2_tb is

	component exemplo_2
	
		port(
			clk : in std_logic;
			rst : in std_logic;
			en  : in std_logic;
			d   : in std_logic;
		
			q_a_out   : out std_logic_vector( 7 downto 0);
			q_b_out   : out std_logic_vector( 7 downto 0);
			q_c_out   : out std_logic_vector( 7 downto 0)	
		);

	end component;

	signal clk : std_logic := '0';
	signal rst : std_logic := '1';
	signal d   : std_logic := '0';
	signal en  : std_logic := '0';
	signal q_a_out : std_logic_vector (7 downto 0);
	signal q_b_out : std_logic_vector (7 downto 0);
	signal q_c_out : std_logic_vector (7 downto 0);
	
begin
	clk <= not clk after 10 ns;
	rst <= '1', '0' after 30 ns;
	en  <= '0', '1' after 20 ns;
	
	process
	begin
		wait until rst = '0';

		wait until rising_edge(clk);
		
		d <= '1';
		wait until rising_edge(clk);
		d <= '1';
		wait until rising_edge(clk);
		d <= '0';
		wait until rising_edge(clk);
		d <= '1';
		wait until rising_edge(clk);
		d <= '0';
		wait until rising_edge(clk);
		d <= '0';
		wait until rising_edge(clk);
		d <= '1';
		wait until rising_edge(clk);
		d <= '0';
		wait until rising_edge(clk);

		wait;
	end process;  
	
	exemplo_2_tb : exemplo_2 
		port map (
			clk => clk,
			rst => rst,
			d   => d,
			en  => en,
			q_a_out => q_a_out,
			q_b_out => q_b_out, 
			q_c_out => q_c_out  
		);

end behavioral;	
