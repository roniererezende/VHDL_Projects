-- Author: Roniere Rezende
-- File: Blink_Five_Leds
-- Date: 31/08/21

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity Blink_Five_Leds is

	port(		
		clk_i  : in std_logic; -- Clock Input
		
		leds_o : out std_logic_vector(3 downto 0) -- Output Serial Data
	);

end Blink_Five_Leds;

architecture behavioral of Blink_Five_Leds is
	signal leds_s : std_logic_vector(3 downto 0) := "0101";
begin

	blink_led : process(clk_i)
	
	begin
		if (rising_edge(clk_i)) then
			leds_s(0) <= not leds_s(0);
			leds_s(1) <= not leds_s(1);
			leds_s(2) <= not leds_s(2);
			leds_s(3) <= not leds_s(3);
		end if;
	end process blink_led;
		leds_o <= leds_s;
end behavioral;