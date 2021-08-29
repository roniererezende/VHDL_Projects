library IEEE;
use IEEE.std_logic_1164.all;

entity decod_3x8_process_if is port
(

	encoder: in std_logic_vector(2 downto 0);
	
	output_port: out std_logic_vector(7 downto 0)

 );
 end decod_3x8_process_if;
 
 architecture behavior of decod_3x8_process_if is
		
	begin
		process(encoder)
			begin
				if(encoder    = "000") then
					output_port <= "00000001";
				elsif(encoder = "001") then
					output_port <= "00000010";
				elsif(encoder = "010") then
					output_port <= "00000100"; 
				elsif(encoder = "011") then
					output_port <= "00001000"; 
				elsif(encoder = "100") then
					output_port <= "00010000"; 
				elsif(encoder = "101") then
					output_port <= "00100000"; 
				elsif(encoder = "110") then
					output_port <= "01000000"; 
				elsif(encoder = "111") then
					output_port <= "10000000";
				end if;
		end process;
 end behavior; 