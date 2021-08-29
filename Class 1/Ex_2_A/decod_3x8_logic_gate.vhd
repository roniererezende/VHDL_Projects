library IEEE;
use IEEE.std_logic_1164.all;

entity decod_3x8_logic_gate is port
(
--				A: in std_logic_vector(7 downto 0);
--			 sel: in std_logic_vector(3 downto 0);
	
--	output_port: out std_logic_vector;

		 encoder: in std_logic_vector(2 downto 0);
	
	output_port: out std_logic_vector(7 downto 0)

 );
 end decod_3x8_logic_gate;
 
 architecture behavior of decod_3x8_logic_gate is
		
	begin
		output_port(0) <= (not encoder(2)) and (not encoder(1)) and (not encoder(0));
		output_port(1) <= (not encoder(2)) and (not encoder(1)) and      encoder(0);
		output_port(2) <= (not encoder(2)) and      encoder(1)  and (not encoder(0));
		output_port(3) <= (not encoder(2)) and      encoder(1)  and      encoder(0);
		output_port(4) <=      encoder(2)  and (not encoder(1)) and (not encoder(0));
		output_port(5) <=      encoder(2)  and (not encoder(1)) and      encoder(0);
		output_port(6) <=      encoder(2)  and      encoder(1)  and (not encoder(0));
		output_port(7) <=      encoder(2)  and      encoder(1)  and      encoder(0);
	
 end behavior;