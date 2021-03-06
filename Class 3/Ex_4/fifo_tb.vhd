library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fifo_tb is

end fifo_tb;

--a arquitetura
architecture behavioral of fifo_tb is

	component fifo is
		generic (
			g_WIDTH : natural := 8; --> Natural type : 0 to 2^32 - 1
			g_DEPTH : integer := 32
		);
	
		port(
			clk_i        : in std_logic;
			rst_i        : in std_logic;
		
			-- FIFO Write Interface
			write_en_i   : in  std_logic;
			write_data_i : in  std_logic_vector(g_WIDTH-1 downto 0);
			full_o       : out std_logic;
		
			-- 
			read_en_i   : in  std_logic;
			read_data_o : out  std_logic_vector(g_WIDTH-1 downto 0);
			empty_o     : out std_logic	
	);
	end component fifo;

	constant c_DEPTH : integer := 4;
	constant c_WIDTH : integer := 8;

	signal rst_r         : std_logic := '0';
	signal clk_r         : std_logic := '0';
	signal write_en_r    : std_logic := '0';
	signal write_data_r  : std_logic_vector(c_WIDTH-1 downto 0) := X"A5";
	signal af_w          : std_logic;
	signal full_w        : std_logic;
	signal read_en_r     : std_logic := '0';
	signal read_data_w   : std_logic_vector(c_WIDTH-1 downto 0);
	signal ae_w          : std_logic;
	signal empty_w       : std_logic;

	constant clk_period : time := 20 ns;

begin
	
	clk_r  <= not clk_r after 10 ns;
	
	test_fifo_p : process
	begin
		wait until clk_r = '1';
		write_en_r <= '1';
		wait until clk_r = '1';
		wait until clk_r = '1';
		wait until clk_r = '1';
		wait until clk_r = '1';
		write_en_r <= '0';
		read_en_r  <= '1';
		wait until clk_r = '1';
		wait until clk_r = '1';
		wait until clk_r = '1';
		wait until clk_r = '1';
		write_en_r <= '0';
		read_en_r  <= '1';
		wait until clk_r = '1';
		wait until clk_r = '1';
		write_en_r <= '1';
		wait until clk_r = '1';
		wait until clk_r = '1';
		wait until clk_r = '1';
		wait until clk_r = '1';
		wait until clk_r = '1';
		wait until clk_r = '1';
		wait until clk_r = '1';
		wait until clk_r = '1';
		write_en_r <= '0';
		wait until clk_r = '1';
		wait until clk_r = '1';
		wait until clk_r = '1';
		wait until clk_r = '1';      

	end process;

	
	module_fifo : fifo
		generic map(
			g_WIDTH => c_WIDTH,
			g_DEPTH => c_DEPTH
		)
		port map (
			rst_i => rst_r,
			clk_i => clk_r,
			write_en_i =>  write_en_r,
			write_data_i => write_data_r, 
			full_o => full_w,
			read_en_i => read_en_r,
			read_data_o => read_data_w,
			empty_o => empty_w 
		);	
end behavioral;
