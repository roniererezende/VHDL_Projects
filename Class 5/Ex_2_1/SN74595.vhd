
-- Author: Roniere Rezende
-- File: SN74959
-- Date: 30/08/21

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity SN74595 is

	port(
		master_clk_i : in std_logic; -- Master clock
		oe_i    	 : in std_logic; -- Output Enable in negative logic
		rclk_i       : in std_logic; -- Storage Register Clock in negative logic
		srclr_i      : in std_logic; -- Shift Register Clear in negative logic
		srclk_i      : in std_logic; -- Shift Register Clock in negative logic
		ser_i        : in std_logic; -- Shift Register Serial Input Data
		
		q_o          : out std_logic_vector(7 downto 0); -- Output Serial Data
		qh_o         : out std_logic 					-- in negative logic
	);

end SN74595;

architecture behavioral of SN74595 is
	
	signal q_ser_s : std_logic_vector(7 downto 0);
	signal rclk_s : std_logic;
	signal srclk_s : std_logic;

begin

	process (master_clk_i)
	begin
		if rising_edge(master_clk_i) then
			rclk_s <= rclk_i;
			srclk_s <= rclk_i;
		end if;
	end process;

	sn47595_p : process(srclk_s, srclr_i)
	
	begin
		if (srclr_i = '1') then
			q_ser_s <= (others => '0');
		elsif rising_edge (srclk_s) then
			q_ser_s(0) <= ser_i;
			q_ser_s(7 downto 1) <= q_ser_s(6 downto 0);
		end if;
	end process sn47595_p;
	
	parallel_data_p: process (rclk_s)
	begin
		if (oe_i = '0') then
			q_o <= (others => 'Z');
		elsif rising_edge(rclk_s) then
			q_o <= q_ser_s;
		end if;
	end process parallel_data_p;
	
	qh_o <= q_ser_s(7);
	
end behavioral;