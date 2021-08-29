RAM_Shared_Addr_And_Data

library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;


entity RAM_Shared_Addr_And_Data is
	
	generic (
		data_size    : integer := 3; 
		address_size : integer := 3
	);
	
	port(
		clk        : in std_logic;
		rst        : in std_logic;
			
		en_W_R     : in std_logic; -- 1 -> WRITE / 0 -> READ
		en_Out     : in std_logic;

		address_io : in std_logic_vector((address_size - 1) downto 0);		
		data_io    : inout std_logic_vector((data_size - 1) downto 0)
	);
end RAM_Shared_Addr_And_Data;

architecture behavioral of RAM_One_In_Out_Data is

	type ram_t is array ((2**data_size - 1) downto 0) of std_logic_vector((data_size - 1) downto 0);
	
	signal ram_s: ram_t := (others => (others => '0')); -- Clear memory

	begin
	
		ram_behavior : process(clk, rst)
		
		end process ram_behavior;

end behavioral;