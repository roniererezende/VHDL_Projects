LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

entity debounce is
    port (
        ck                    : in  std_logic;
		deb_rst               : in std_logic;
		deb_direction         : in std_logic;
		deb_force_input       : in std_logic;
		deb_force_0           : in std_logic;
		deb_force_1           : in std_logic;
		deb_parallel_load     : in std_logic;
		deb_out_rst           : out std_logic;
		deb_out_direction     : out std_logic;  
		deb_out_force_input   : out std_logic;  
		deb_out_force_0       : out std_logic;  
		deb_out_force_1       : out std_logic;  
		deb_out_parallel_load : out std_logic  		
    );
end debounce;

architecture rtl of debounce is

	signal debounce_rst           : std_logic_vector(63 downto 0) := (others=>'1'); -- (7 downto 0)
	signal pulse_rst              : std_logic := '1';
	signal debounce_direction     : std_logic_vector(63 downto 0) := (others=>'1'); -- (7 downto 0)
	signal pulse_direction        : std_logic := '1';
	signal debounce_force_input   : std_logic_vector(63 downto 0) := (others=>'1'); -- (7 downto 0)
	signal pulse_force_input      : std_logic := '1';
	signal debounce_force_0       : std_logic_vector(63 downto 0) := (others=>'1'); -- (7 downto 0)
	signal pulse_force_0          : std_logic := '1';
	signal debounce_force_1       : std_logic_vector(63 downto 0) := (others=>'1'); -- (7 downto 0)
	signal pulse_force_1          : std_logic := '1';
	signal debounce_parallel_load : std_logic_vector(63 downto 0) := (others=>'1'); -- (7 downto 0)
	signal pulse_parallel_load    : std_logic := '1';

begin

	process(ck)
	begin
		if rising_edge(ck) then
			debounce_rst <= debounce_rst(62 downto 0) & deb_rst;
			pulse_rst <= debounce_rst(63);
			deb_out_rst <= '1';
			if debounce_rst = x"0000000000000000" and pulse_rst = '1' then
				deb_out_rst <= '0';
			end if;
		end if;
		
		if rising_edge(ck) then
			debounce_direction <= debounce_direction(62 downto 0) & deb_direction;
			pulse_direction <= debounce_direction(63);
			deb_out_direction <= '1';
			if debounce_direction = x"0000000000000000" and pulse_direction = '1' then
				deb_out_direction <= '0';
			end if;
		end if;
		
		if rising_edge(ck) then
			debounce_force_input <= debounce_force_input(62 downto 0) & deb_force_input;
			pulse_force_input <= debounce_force_input(63);
			deb_out_force_input <= '1';
			if debounce_force_input = x"0000000000000000" and pulse_force_input = '1' then
				deb_out_force_input <= '0';
			end if;
		end if;
		
		if rising_edge(ck) then
			debounce_force_0 <= debounce_force_0(62 downto 0) & deb_force_0;
			pulse_force_0 <= debounce_force_0(63);
			deb_out_force_0 <= '1';
			if debounce_force_0 = x"0000000000000000" and pulse_force_0 = '1' then
				deb_out_force_0 <= '0';
			end if;
		end if;
		
		if rising_edge(ck) then
			debounce_force_1 <= debounce_force_1(62 downto 0) & deb_force_1;
			pulse_force_1 <= debounce_force_1(63);
			deb_out_force_1 <= '1';
			if debounce_force_1 = x"0000000000000000" and pulse_force_1 = '1' then
				deb_out_force_1 <= '0';
			end if;
		end if;
		
		if rising_edge(ck) then
			debounce_parallel_load <= debounce_parallel_load(62 downto 0) & deb_parallel_load;
			pulse_parallel_load <= debounce_parallel_load(63);
			deb_out_parallel_load <= '1';
			if debounce_parallel_load = x"0000000000000000" and pulse_parallel_load = '1' then
				deb_out_parallel_load <= '0';
			end if;
		end if;	
	end process;

end rtl;