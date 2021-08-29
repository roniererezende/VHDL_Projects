library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;


entity shift_register_for_loop is

	generic (len   :  integer := 8);
	port(
		input_port	: 	in	 std_logic;
		clk_in      :  in  std_logic;
		output_port	:	out std_logic_vector(7 downto 0)
	);
end shift_register_for_loop;


architecture behavioral of shift_register_for_loop is
	
	signal buffer_sr : std_logic_vector((len - 1) downto 0);

begin

	clk: process(clk_in)
	
	--variable buffer_sr : std_logic_vector(7 downto 0);
	
	begin 
		
			shift_register: for index in 0 to len - 1 loop
			
				if(rising_edge(clk_in)) then
				
					buffer_sr(7) <= input_port;
					buffer_sr(6) <= buffer_sr(7);
					buffer_sr(5) <= buffer_sr(6);
					buffer_sr(4) <= buffer_sr(5);
					buffer_sr(3) <= buffer_sr(4);
					buffer_sr(2) <= buffer_sr(3);
					buffer_sr(1) <= buffer_sr(2);
					buffer_sr(0) <= buffer_sr(1);
				
				end if;
				
				--output_port  <= buffer_sr;
				
			end loop shift_register;
	
	end process clk;

 	output_port  <= buffer_sr;

end behavioral;