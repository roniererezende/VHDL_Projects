
library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;


entity ex_2 is
	port(
		selector : in integer;
		d, clk, rst, en : in	 std_logic;	
		sr_output :	out std_logic
	);
end ex_2;

architecture behavioral of ex_2 is

	signal q_a: std_logic_vector(7 downto 0);
	
	begin
	
		process(clk, rst)
		
			begin
			
				if rst = '1' then
				
					q_a <= (others => '0');
					
				elsif clk'event and clk = '1' then
				
					if en = '1' then
					
						q_a(0) <= d;
						
						q_a(7 downto 1) <= q_a(6 downto 0);
						
					end if;
					
				end if;
				
		end process;

		sr_output <= q_a(selector);

end behavioral;