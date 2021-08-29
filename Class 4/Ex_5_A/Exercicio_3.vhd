library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;


entity Exercicio_3 is
	
	generic (
		data_size    : integer := 3; 
		address_size : integer := 3
	);
	
	port(
		clk      : in std_logic;
		rst      : in std_logic;
			
		en_W_R      : in std_logic; -- 1 -> WRITE / 0 -> READ
		
		input_data  : in std_logic_vector((data_size - 1) downto 0);
		in_address  : in std_logic_vector((address_size - 1) downto 0);
		
		out_address : in std_logic_vector((address_size - 1) downto 0);
		 
		output_data : out std_logic_vector((data_size - 1) downto 0)

	);
end Exercicio_3;

architecture behavioral of Exercicio_3 is

	type ram_t is array ((2**data_size - 1) downto 0) of std_logic_vector((data_size - 1) downto 0);
	
	signal ram_s: ram_t := (others => (others => '0'));

	signal ram_output_data : std_logic_vector((data_size - 1) downto 0);
	signal ram_input_data  : std_logic_vector((data_size - 1) downto 0);
	signal ram_address_in  : std_logic_vector((address_size - 1) downto 0);
	signal ram_address_out : std_logic_vector((address_size - 1) downto 0);
	
	begin
	
		ram_input_data  <= input_data;
	
		ram_address_in  <= in_address; 	
		ram_address_out <= out_address;
		
		data_handle: process(clk,rst)
	
			begin 
			
				if(rst = '0') then -- Reset all RAM memory address
				
					ram_s <= (others => (others => '0'));
					
				elsif rising_edge(clk) then
				
					if(en_W_R = '1') then -- Writes data in memory
				
						ram_s(to_integer(unsigned(ram_address_in))) <= ram_input_data;
					
					elsif en_W_R = '0' then -- Reads data in memory
				
						ram_output_data <= ram_s(to_integer(unsigned(ram_address_out)));
					
					end if;
					
				end if;
								
			end process;
			
			output_data <= ram_output_data; 
		
end behavioral;