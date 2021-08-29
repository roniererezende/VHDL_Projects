library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;


entity Mult_12_bits is port
(
	clk_in             : in std_logic;
	
	input_port_1, input_port_2 : in signed (11 downto 0);
		
	output_port  				   : out signed(23 downto 0)
);
end Mult_12_bits;

architecture behavioral of Mult_12_bits is

begin

	mult: process (clk_in)

	begin
	
			output_port <= input_port_1 * input_port_2;
		
	end process mult;
		
end behavioral;