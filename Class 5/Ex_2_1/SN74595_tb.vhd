-- Author: Roniere Rezende
-- File: SN74959_tb.vhd
-- Date: 30/08/21

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity SN74595_tb is

end SN74595_tb;

--a arquitetura
architecture behavioral of SN74595_tb is

	component SN74595
		port(
		oe_i    : in std_logic; -- Output Enable in negative logic
		rclk_i  : in std_logic; -- Storage Register Clock in negative logic
		srclr_i : in std_logic; -- Shift Register Clear in negative logic
		srclk_i : in std_logic; -- Shift Register Clock in negative logic
		ser_i   : in std_logic; -- Shift Register Serial Input Data
		
		q_o     : out std_logic_vector(7 downto 0); -- Output Serial Data
		qh_o    : out std_logic 					-- in negative logic
	);
	end component;

	signal oe_i    : std_logic := '0'; 
	signal rclk_i  : std_logic := '1'; 
	signal srclr_i : std_logic := '1'; 
	signal srclk_i : std_logic := '0'; 
	signal ser_i   : std_logic := '0'; 
		
	signal q_o     : std_logic_vector(7 downto 0); 
	signal qh_o    : std_logic;

	constant clk_period : time := 20 ns;

begin

	srclk_i <= not srclk_i after 10 ns;
	rclk_i  <= not rclk_i after  10 ns;  
	srclr_i <= '0', '1' after 30 ns;
	
	process
	begin
		srclr_i <= '1';
		ser_i   <= '0';	
		wait for (1 * clk_period);
		
		srclr_i <= '0';
		ser_i   <= '1';	
		oe_i    <= '1';
		wait for (1 * clk_period);
		
		ser_i   <= '0';
 		wait for (3 * clk_period);

		ser_i   <= '1';
 		wait for (2 * clk_period);

		oe_i <= '0';
		wait for (2 * clk_period);

		srclr_i <= '1';
		ser_i   <= '0';	
		wait for (1 * clk_period);
		
		srclr_i <= '0';
		ser_i   <= '1';	
		oe_i    <= '1';
		wait for (1 * clk_period);
		
		ser_i   <= '0';
 		wait for (3 * clk_period);

		ser_i   <= '1';
 		wait for (2 * clk_period);		
		
		wait;
	end process;

	dut : SN74595
		port map (
			 oe_i   => oe_i, 
			rclk_i  => rclk_i, 
			srclr_i => srclr_i, 
			srclk_i => srclk_i, 
			ser_i   => ser_i, 
		
			q_o     => q_o, 
			qh_o    => qh_o
		);	
end behavioral;