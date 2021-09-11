
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity Exercicio_1_RAM_9_2 is
	
	generic (
		data_address_size : integer := 8
	);
	
	port(
		clk_i        : in std_logic;
		rst_i        : in std_logic;
			
		en_W_R_i     : in std_logic; -- 1 -> WRITE / 0 -> READ
		en_Out_i     : in std_logic; -- 1 -> Enables Output / 0 -> Disables Output
		
		data_address_sel_i : in std_logic; -- 1 -> DATA / 0 -> ADDRESS
		
		data_address_io : inout std_logic_vector((data_address_size - 1) downto 0)
	);
end Exercicio_1_RAM_9_2;

architecture behavioral of Exercicio_1_RAM_9_2 is

	component debounce is
		port (
			ck       : in  std_logic;
			deb_in1  : in  std_logic;
			deb_in2  : in  std_logic;
			deb_in3  : in  std_logic;
			deb_in4  : in  std_logic_vector(7 downto 0);
			deb_out1 : out std_logic;
			deb_out2 : out std_logic;
			deb_out3 : out std_logic;
			deb_out4 : out std_logic;
			deb_out5 : out std_logic;
			deb_out6 : out std_logic;
			deb_out7 : out std_logic;
			deb_out8 : out std_logic;
			deb_out9 : out std_logic;
			deb_out10 : out std_logic;
			deb_out11 : out std_logic
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


	type ram_t is array (3 downto 0) of std_logic_vector(7 downto 0);
	
	signal ram_s: ram_t := (others => (others => '0')); -- Clear memory

	signal data_s : std_logic_vector (7 downto 0);
	signal address_s : std_logic_vector (2 downto 0);
	
	-- PLL Signals
    signal areset_s : std_logic := '0';
	signal inclk0_s : std_logic;
	signal c0_s     : std_logic;
	signal locked_s : std_logic;
	
	signal en_W_R_i_debounce : std_logic; -- 1 -> WRITE / 0 -> READ
	signal en_Out_i_debounce : std_logic; -- 1 -> Enables Output / 0 -> Disables Output
		
	signal data_address_sel_s : std_logic; -- 1 -> DATA / 0 -> ADDRESS
		
	signal data_address_s : std_logic_vector((data_address_size - 1) downto 0);
	
	begin
	
		inclk0_s <= clk_i;
	
		addr_process : process(all)
			begin
				if rising_edge(clk_i) then
					if data_address_sel_i = '0' then
						address_s <= data_address_io(2 downto 0);
					end if;
				end if;
		end process;
		
		data_output_process : process (all)
			begin
				if rising_edge (clk_i) then
					data_s <= ram_s(to_integer(unsigned(address_s)));
				end if;
		end process;
		
		data_input_process : process(all)
			begin
				if rising_edge (clk_i)  then
					if rst_i = '0' and data_address_sel_i = '0' and en_W_R_i = '1' then
						ram_s <= (others => (others => '0'));
					elsif data_address_sel_i = '0' and en_W_R_i = '1' then
						ram_s(to_integer(unsigned(address_s))) <= data_address_io;
					end if;
				end if;
		end process;
		
		data_address_io <= data_s when data_address_sel_i = '0' and en_Out_i = '1' and rst_i = '1' 
						else (others => 'Z');
						
		pll_instantiate : RAM_PLL port map(
			areset => areset_s,
			inclk0 => inclk0_s, --PLL input 50 MHz
			c0	   => c0_s,     --PLL output 50 MHz
			locked => locked_s
	);
				
end behavioral;