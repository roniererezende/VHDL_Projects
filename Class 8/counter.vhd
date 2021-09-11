LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

-- Counter
entity counter is
    port (
        CLK_in      : in std_logic;
		stop		: in std_logic;
        led         : out std_logic_vector(3 downto 0)
    );
end counter;

architecture rtl of counter is

    signal iCounter : unsigned(28 downto 0);
	
	signal areset_s : std_logic;
	signal inclk0_s : std_logic;
	signal c0_s     : std_logic;
	signal locked_s : std_logic;
	
	component PLL
	port (
		areset : IN STD_LOGIC  := '0';
		inclk0 : IN STD_LOGIC  := '0';
		c0	   : OUT STD_LOGIC ;
		locked : OUT STD_LOGIC 
	);	
	end component;
	
begin

	inclk0_s <= clk_in;
	
    -- Counter process
    COUNT_SHIFT: process (clk_in)
    begin
        if (clk_in'event and clk_in='1') then           
            if stop = '0' then else                                    -- Count down
				iCounter <= iCounter + 1;
            end if;
        end if;
    end process;
	led <= not(std_logic_vector(iCounter(iCounter'high downto iCounter'high - 3)));

	PLL_inst : PLL 
	port map (
		areset	 => areset_s,
		inclk0	 => inclk0_s,
		c0	 => c0_s,
		locked	 => locked_s
	);

end rtl;

