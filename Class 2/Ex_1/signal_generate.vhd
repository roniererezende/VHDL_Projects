library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity signal_generate is port
(
	clk_in      : in std_logic;
			
	output_port : out signed(7 downto 0)
);
end signal_generate;

architecture behavioral of signal_generate is

	signal counter_signal : integer := 2;
begin
	clk : process(clk_in)

	--variable counter_signal : signed (0 to 1);
			
	begin
			
			if counter_signal = 0 then
				output_port <= "ZZZZZZZZ";
			elsif counter_signal = 1 then
				output_port <= "00000000";
			elsif counter_signal = 2 then
				output_port <= "10100100";
			end if;

			if(counter_signal /= 2) then
				counter_signal <= counter_signal + 1;
			else
				counter_signal <= 0;
			end if;

	
	end process clk;

end behavioral;