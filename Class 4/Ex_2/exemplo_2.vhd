library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;


entity exemplo_2 is
	port(
		clk : in std_logic;
		rst : in std_logic;
		en  : in std_logic;
		d   : in std_logic;
		
		q_a_out   : out std_logic_vector( 7 downto 0);
		q_b_out   : out std_logic_vector( 7 downto 0);
		q_c_out   : out std_logic_vector( 7 downto 0)
		
	);
end exemplo_2;

architecture behavioral of exemplo_2 is
	signal q_a : std_logic_vector( 7 downto 0);
	signal q_b : std_logic_vector( 7 downto 0);
	signal q_c : std_logic_vector( 7 downto 0);
begin
	process(clk, rst)
	begin
		if rst = '1' then
			q_a <= x"00";
			q_b <= (others => '0');
			q_c <= (others => '0');
		elsif clk'event and clk = '1' then
			if en = '1' then
				q_a(0) <= d;
				q_a(7 downto 1) <= q_a(6 downto 0);
				
				q_b(0) <= d;
				q_b(q_b'high downto 1) <= q_b(q_a'high-1 downto 0);
				
				q_c <= q_c(q_c'high-1 downto 0) & d;
			end if;
		end if;
	end process;
	q_a_out <= q_a;
	q_b_out <= q_b;
	q_c_out <= q_c;
end behavioral;