library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Exercicio_1_RAM_9_2_tb is

end Exercicio_1_RAM_9_2_tb;

--a arquitetura
architecture behavioral of Exercicio_1_RAM_9_2_tb is

	component Exercicio_1_RAM_9_2
		generic (
			data_address_size : integer := 8
		);
	
		port(
			clk_i        : in std_logic;
			rst_i        : in std_logic;
			
			en_W_R_i     : in std_logic; -- 1 -> WRITE / 0 -> READ
			en_Out_i     : in std_logic;
		
			data_address_sel_i : in std_logic; -- 1 -> DATA / 0 -> ADDRESS
		
			data_address_io : inout std_logic_vector((data_address_size - 1) downto 0)
		);
	end component;
	
	component RAM_PLL is
	port(
		areset : in  std_logic := '0';
		inclk0 : in  std_logic := '0';
		c0	   : out std_logic;
		locked : out std_logic 
	);
	end component;

	signal rst_s              : std_logic;
	signal clk_s              : std_logic := '0';
	signal en_Out_s  		  : std_logic;
	signal en_W_R_s  		  : std_logic;
	signal data_address_sel_s : std_logic;
	signal data_address_io_s  : std_logic_vector(7 downto 0);
	
	signal areset_s : std_logic := '0';
	signal inclk0_s : std_logic;
	signal c0_s : std_logic;
	signal locked_s : std_logic;

	constant clk_period : time := 2 ns;

begin

	--clk  <= not clk after 10 ns;
	rst_s <= '0', '1' after 1 ns;	
	
	inclk0_s <= clk_s;
	
	process
	begin
		--inicio do reset
		data_address_io_s <= (others=>'Z');
		en_Out_s  <= '0';
		en_W_R_s  <= '0';
		data_address_sel_s <= '0';
		wait until rst_s = '0';
		
		--espera uma borda para alinhar com o clock e ficar bonito.
		wait until rising_edge(clk_s);
		
		--escreve no endereço 3, data = A4 (10100100)
		data_address_sel_s <= '1';
		--data_address_io <= (2 downto 0 => "011", others=>'0');
		data_address_io_s <= x"03";
		wait until rising_edge(clk_s);
		data_address_sel_s <= '0';
		en_W_R_s  <= '1';
		data_address_io_s <= x"A4";
		wait until rising_edge(clk_s);
		
		--escreve no endereço 4, data = A5 (10100100)
		data_address_sel_s <= '1';
		--data_address_io <= (2 downto 0 => "100", others=>'0');
		data_address_io_s <= x"04";
		wait until rising_edge(clk_s);
		data_address_sel_s <= '0';
		en_W_R_s  <= '1';
		data_address_io_s <= x"A5";
		wait until rising_edge(clk_s);
		
		--para garantir, vou zerar todos os controles.
		en_Out_s  <= '0';
		en_W_R_s  <= '0';
		data_address_sel_s <= '0';
		data_address_io_s <= (others=>'Z');
		wait until rising_edge(clk_s);
		wait until rising_edge(clk_s);
		
		--leitura addr 3
		data_address_sel_s <= '1';
		--data_address_io <= (2 downto 0 => "011", others=>'0');
		data_address_io_s <= x"03";
		wait until rising_edge(clk_s);
		
		--para garantir, vou zerar todos os controles.
		en_Out_s  <= '0';
		en_W_R_s  <= '0';
		data_address_sel_s <= '0';
		data_address_io_s <= (others=>'Z');
		wait until rising_edge(clk_s);
		wait until rising_edge(clk_s);
		
		data_address_sel_s <= '0';
		en_Out_s  <= '1';
		wait until rising_edge(clk_s);
		en_Out_s  <= '0';
		
		--para garantir, vou zerar todos os controles.
		en_Out_s  <= '0';
		en_W_R_s  <= '0';
		data_address_sel_s <= '0';
		data_address_io_s <= (others=>'Z');
		wait until rising_edge(clk_s);
		wait until rising_edge(clk_s);
			
		--leitura addr 4
		data_address_sel_s <= '1';
		--data_address_io <= (2 downto 0 => "100", others=>'0');
		data_address_io_s <= x"04";
		wait until rising_edge(clk_s);
		
		--para garantir, vou zerar todos os controles.
		en_Out_s  <= '0';
		en_W_R_s  <= '0';
		data_address_sel_s <= '0';
		data_address_io_s <= (others=>'Z');
		wait until rising_edge(clk_s);
		wait until rising_edge(clk_s);
		
		data_address_sel_s <= '0';
		en_Out_s  <= '1';
		wait until rising_edge(clk_s);
		en_Out_s  <= '0';
		
		data_address_io_s <= (others=>'Z');
		
		wait;
	end process;
	
    -- Clock process definitions
	clk_p : process
	begin
		clk_s <= '0';
		wait for clk_period/2;
		clk_s <= '1';
		wait for clk_period/2;
	end process;

	dut : Exercicio_1_RAM_9_2
		port map (
			rst_i              => rst_s,
			clk_i              => clk_s,
			data_address_io  => data_address_io_s,
			en_Out_i           => en_Out_s,
			en_W_R_i           => en_W_R_s,
			data_address_sel_i => data_address_sel_s
		);	
end behavioral;