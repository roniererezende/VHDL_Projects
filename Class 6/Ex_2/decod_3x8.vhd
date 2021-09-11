library IEEE;
use IEEE.std_logic_1164.all;

entity decod_3x8 is port
(

	encoder: in std_logic_vector(2 downto 0);
	
	output_port: out std_logic_vector(7 downto 0)

 );
 end decod_3x8;
 
 architecture behavior of decod_3x8 is
		
	begin
		process(encoder)
			begin
				case encoder is 
					when "111" => output_port  <= "10000000"; -- 0
					when "110" => output_port  <= "01000000"; -- 1
					when "101" => output_port  <= "00100000"; -- 2
					when "100" => output_port  <= "00010000"; -- 3
					when "011" => output_port  <= "00001000"; -- 4
					when "010" => output_port  <= "00000100"; -- 5
					when "001" => output_port  <= "00000010"; -- 6
					when "000" => output_port  <= "00000001"; -- 7
					when others => output_port <= "ZZZZZZZZ"; 
				end case;
		end process;
 end behavior;