--Exemplo.
--Esse será um OR REDUTOR. Ele pega todas as entradas e faz um OR entre todas.
--Exemplo que usará GENERIC e FOR.
library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;

--declaramos a entidade
entity exercicio_1_tb is
end exercicio_1_tb;

--a arquitetura
architecture behavioral of exercicio_1_tb is

	component exemplo_1
	
		port(
			clk : in std_logic;
			rst : in std_logic;
			d   : in std_logic;
		
			q_out   : out std_logic_vector( 4 downto 1)	
		);

	end component;

	signal clk : std_logic := '0';
	signal rst : std_logic := '1';
	signal d   : std_logic := '0';
	signal q_out : std_logic_vector (4 downto 1);
	
begin
	clk <= not clk after 10 ns;
	rst <= '1', '0' after 30 ns;
	
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
	
	exemplo_1_tb : exemplo_1 
		port map (
			clk => clk,
			rst => rst,
			d   => d,
			q_out => q_out 
		);

end behavioral;	
