library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;


entity fifo is
	
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
end fifo;

architecture behavioral of fifo is
	
	type fifo_data_t is array (0 to g_DEPTH -1) of std_logic_vector (g_WIDTH-1 downto 0);
	signal fifo_data_r : fifo_data_t := (others => (others => '0'));
	

	signal write_index_r : integer range 0 to g_DEPTH-1 := 0;
	signal read_index_r  : integer range 0 to g_DEPTH-1 := 0;
	
	-- Words in fifo, has extra range to allow for assert conditions
	signal fifo_count_r : integer range -1 to g_DEPTH+1 := 0;
	
	signal full_w  : std_logic;
	signal empty_w : std_logic;
	
begin

	control : process (clk_i) is
	begin 
		if rising_edge(clk_i) then
			if rst_i = '1' then
				fifo_count_r  <= 0;
				write_index_r <= 0;
				read_index_r  <= 0;
				
			else
			
				-- Keeps track of the total number of words in the fifo
				if (write_en_i = '1' and read_en_i = '0') then
					fifo_count_r <= fifo_count_r + 1;
				elsif (write_en_i = '0' and read_en_i = '1') then
					fifo_count_r <= fifo_count_r - 1;
				end if;
				
				-- Keeps track of the write index (and controls roll-over)
				if(write_en_i = '1' and full_w = '0') then
					if(write_index_r = g_DEPTH-1 )then
						write_index_r <= 0;
					else
						write_index_r <= write_index_r + 1;
					end if;
				end if;
				
				if(read_en_i = '1' and empty_w = '0') then
					if(read_index_r = g_DEPTH-1) then
						read_index_r <= 0;
					else
						read_index_r <= read_index_r + 1;
					end if;
				end if;
				
				-- Register the input data when there is a write
				if write_en_i = '1' then
					fifo_data_r(write_index_r) <= write_data_i;
				end if;
				
			end if;		-- Sync reset
		end if;		    -- rising_edge(clk_i)
	end process control;
	
	read_data_o <= fifo_data_r(read_index_r);
	
	full_w  <= '1' when fifo_count_r = g_DEPTH else '0';
	empty_w <= '1' when fifo_count_r = 0       else '0';
	
	full_o  <= full_w;
	empty_o <= empty_w;
	
end behavioral;