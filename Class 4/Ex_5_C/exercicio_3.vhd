
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity execicio_3 is
	
	generic (
		data_address_size : integer := 8
	);
	
	port(
		clk        : in std_logic;
		rst        : in std_logic;
			
		en_W_R     : in std_logic; -- 1 -> WRITE / 0 -> READ
		en_Out     : in std_logic; -- 1 -> Enables Output / 0 -> Disables Output
		
		data_address_sel : in std_logic; -- 1 -> DATA / 0 -> ADDRESS
		
		data_address_io : inout std_logic_vector((data_address_size - 1) downto 0)
	);
end execicio_3;

architecture behavioral of execicio_3 is

	type ram_t is array (7 downto 0) of std_logic_vector(7 downto 0);
	
	signal ram_s: ram_t := (others => (others => '0')); -- Clear memory

	signal data : std_logic_vector (7 downto 0);
	signal address : std_logic_vector (2 downto 0);
	
	begin
	
		addr_process : process(clk)
			begin
				if rising_edge(clk) then
					if data_address_sel = '0' then
						address <= data_address_io(2 downto 0);
					end if;
				end if;
		end process;
		
		data_output_process : process (clk)
			begin
				if rising_edge (clk) then
					data <= ram_s(to_integer(unsigned(address)));
				end if;
		end process;
		
		data_input_process : process(clk)
			begin
				if rising_edge (clk)  then
					if rst = '0' and data_address_sel = '0' and en_W_R = '1' then
						ram_s <= (others => (others => '0'));
					elsif data_address_sel = '0' and en_W_R = '1' then
						ram_s(to_integer(unsigned(address))) <= data_address_io;
					end if;
				end if;
		end process;
		
		data_address_io <= data when data_address_sel = '0' and en_Out = '1' and rst = '1' 
						else (others => 'Z');
				
end behavioral;