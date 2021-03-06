library IEEE;
use IEEE.std_logic_1164.all;

entity decod_3x8_when_else is port
(

	encoder: in std_logic_vector(2 downto 0);
	
	output_port: out std_logic_vector(7 downto 0)

 );
 end decod_3x8_when_else;
 
 architecture behavior of decod_3x8_when_else is
		
	begin
		output_port <= "00000001" when encoder =  "000" else
							"00000010" when encoder =  "001" else
							"00000100" when encoder =  "010" else
							"00001000" when encoder =  "011" else
							"00010000" when encoder =  "100" else
							"00100000" when encoder =  "101" else
							"01000000" when encoder =  "110" else
							"10000000" when encoder =  "111";
--							"ZZZZZZZZ" when others;
	
 end behavior;