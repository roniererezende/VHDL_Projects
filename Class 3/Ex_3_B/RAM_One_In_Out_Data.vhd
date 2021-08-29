library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;


entity RAM_One_In_Out_Data is
	
	generic (
		data_size    : integer := 3; 
		address_size : integer := 3
	);
	
	port(
		clk      : in std_logic;
		rst      : in std_logic;
			
		en_W_R   : in std_logic; -- 1 -> WRITE / 0 -> READ
		en_Out   : in std_logic;
		
		data_io  : inout std_logic_vector((data_size - 1) downto 0);
		in_address  : in std_logic_vector((address_size - 1) downto 0);
		
		out_address : in std_logic_vector((address_size - 1) downto 0)
	);
end RAM_One_In_Out_Data;

architecture behavioral of RAM_One_In_Out_Data is

	type ram_t is array ((2**data_size - 1) downto 0) of std_logic_vector((data_size - 1) downto 0);
	
	signal ram_s: ram_t := (others => (others => '0')); -- Clear memory
		
	begin

		data_handle: process(clk,rst)
	
			begin 
			
				if(rst = '0') then -- Reset all RAM memory address
				
					ram_s <= (others => (others => '0'));
					
				elsif rising_edge(clk) then
				
					if(en_W_R = '1') then -- Writes data in memory
				
						ram_s(to_integer(unsigned(in_address))) <= data_io;
									
					end if;
					
				end if;
								
			end process;
			
			data_io <= ram_s(to_integer(unsigned(out_address))) when en_W_R = '0' and en_Out = '1' else (others => 'Z');
				
end behavioral;