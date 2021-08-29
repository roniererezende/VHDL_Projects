library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;


entity exemplo_1 is
	port(
		clk : in std_logic;
		rst : in std_logic;
		d   : in std_logic;
		
		q   : out std_logic_vector( 3 downto 0);
		
	);
end exemplo_1;

architecture behavioral of exemplo_1 is

begin
	process(clk, rst)
	begin
		if rst = '1' then
			q <= "0000";
		elsif clk'event and clk = '1' then
			q(1) <= d;
			q(2) <= q(1);
			q(3) <= q(2);
			q(4) <= q(3);
		end if;
	end process;
end behavioral;