
library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;


entity RAM_Input_Output_Address_Input_Output_Gate is
	port(
		clk      : in std_logic;
		rst      : in std_logic;
		
		add_data_io : inout std_logic_vector(7 downto 0);
		
		oe_i : in std_logic;
		we_i : in std_logic;
		ale_i : in std_logic;

	);
end RAM_Input_Output_Address_Input_Output_Gate;

architecture behavioral of RAM_Input_Output_Address_Input_Output_Gate is

	type ram_t is array 7 downto 0 of std_logic_vector(7 downto 0);
	
	signal ram_s: ram_t := (others => (others => '0'));
	
		signal data_o_s : std_logic_vector(2 downto 0);
	
	--signal addr_s : integer := 0;
	signal addr_s : std_logic_vector(2 downto 0);
	--signal addr_s : unsigned(2 downto 0);
	
	begin

		addr_p : process(all)
		-- Get address
			begin 
				if rising_edge(clk) then
					if ale_i = '1' then 
						addr_s <= add_data_io(2 downto 0);
					end if;
				end if;
		end process;

		data_out_p : process(all)
		-- 
			begin 
				
				if rising_edge(clk) then
					data_o_s <= ram_s(to_integer(unsigned(addr_s));
				end if;
		end process;
		
		data_in_p : process(all)
		
			begin 
				
				if rising_edge(clk) then
					if ale_i = 0 and we_i = '1' then
						data_o_s <= ram_s(to_integer(unsigned(addr_s));
					end if;
				end if;
		end process;
		
		-- output control
		add_data_io <= data_o_s when ale_i = '0' and oe_i = '1' else
					   (others => 'z')
	
end behavioral;