library IEEE;
	 use IEEE.std_logic_1164.all;
	 use IEEE.numeric_std.all;

--declaramos a entidade
entity or_with_select is

	port(
		input_port	: 	in	  std_logic_vector(3 downto 0);
		output_port	:	out  std_logic
	);
end or_with_select;

--a arquitetura
architecture behavioral of or_with_select is

	begin
		
		with input_port select 
		output_port <= '0' when "0000",		
						   '1' when "0001",
						   '1' when "0010",
						   '1' when "0011",
						   '1' when "0100",
					      '1' when "0101",
				   	   '1' when "0110",
						   '1' when "0111",
						   '1' when "1000",
						   '1' when "1001",
						   '1' when "1010",
						   '1' when "1011",
						   '1' when "1100",
						   '1' when "1101",
						   '1' when "1110",
						   '1' when "1111",
							'1' when others;
		
end behavioral;