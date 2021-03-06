library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;


entity add_sub_4_bits is port
(
	clk_in, sel_in             : in std_logic;
	
	input_port_1, input_port_2 : in unsigned (3 downto 0);
		
	output_port  				   : out unsigned(3 downto 0)
);
end add_sub_4_bits;

architecture behavioral of add_sub_4_bits is

begin
		
	process(clk_in)
		
	begin
			
		if sel_in = '1' then
				
			output_port <= input_port_1 + input_port_2;
		
		else
			
			output_port <= input_port_1 - input_port_2;
		
		end if;
	
	end process;
	
end behavioral;
