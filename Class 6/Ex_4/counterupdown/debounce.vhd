LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

entity debounce is
    port (
        ck      : in  std_logic;
        deb_in  : in  std_logic;
        deb_out : out std_logic
    );
end debounce;

architecture rtl of debounce is

	signal debounce : std_logic_vector(63 downto 0) := (others=>'1'); -- (7 downto 0)
	signal pulse    : std_logic := '1';

begin

	process(ck)
	begin
		if rising_edge(ck) then
			debounce <= debounce(62 downto 0) & deb_in;
			pulse <= debounce(63);
			deb_out <= '1';
			if debounce = x"0000000000000000" and pulse = '1' then
				deb_out <= '0';
			end if;
		end if;
	end process;

end rtl;