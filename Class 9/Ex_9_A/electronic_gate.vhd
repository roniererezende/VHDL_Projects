-- Project: UP/DOWN counter
-- Author: Roniere Rezende
-- Date: 07/09/2021

LIBRARY IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity electronic_gate is
    port(
        clock_i	         : in  std_logic; -- Clock
		reset_i          : in  std_logic; -- Button to reset the state machine
        abrir            : in  std_logic; -- Button to open the gate
        fechar           : in  std_logic; -- Button to close the gate
		sensor_fechado_i : in  std_logic; -- Sensor to inform that the gate is closed
        sensor_aberto_i  : in  std_logic; -- Sensor to inform that the gate is opened
        relays           : out std_logic_vector(1 downto 0) -- bit '1' => closing the gate / bit '0' => opening the gate 
    );
end electronic_gate;

architecture behavioral of electronic_gate is

    component electronic_gate_pll is
		port(
			areset : in  std_logic := '0';
			inclk0 : in  std_logic := '0';
			c0	   : out std_logic;
			locked : out std_logic 
		);
	end component;

    --State machine declaration
    type states_t is (
        fechando,
        fechado,
        abrindo,
        aberto
    );
    
    --State Machine signal
    signal mq_estados_s : states_t := aberto;
    
    -- PLL Signals
    signal areset_s : std_logic := '0';
	signal inclk0_s : std_logic;
	signal c0_s     : std_logic;
	signal locked_s : std_logic;

begin
    inclk0_s <= clock_i;
	
    process(reset_i, c0_s)
    begin
        if reset_i = '0' then
            mq_estados_s <= aberto;
        elsif rising_edge(c0_s) then
            case mq_estados_s is
                when aberto =>
                    if fechar = '0' then
                        mq_estados_s <= fechando;
                    elsif sensor_fechado_i = '0' then 
                        mq_estados_S <= fechado;
                    end if;
                when abrindo =>
                    if fechar = '0' then
                        mq_estados_s <= fechando;
                    elsif sensor_aberto_i = '0' then
                        mq_estados_S <= aberto;
                    end if;
                when fechado =>
                    if abrir = '0' then
                        mq_estados_s <= abrindo;
                    elsif sensor_aberto_i = '0' then 
                        mq_estados_s <= aberto;
                    end if;
                when fechando =>
                    if abrir = '0' then
                        mq_estados_S <= abrindo;
                    elsif sensor_fechado_i = '0' then
                        mq_estados_s <= fechado;
                    end if;						
                when others =>
                    mq_estados_s <= aberto;
            end case;
        end if;
    end process;

    with mq_estados_s select relays <= "10" when abrindo,
                                       "01" when fechando,
                                       "11" when aberto,
                                       "11" when fechado,
									   "ZZ" when others;
                
    pll_instantiate : electronic_gate_pll port map(
		areset => areset_s,
		inclk0 => inclk0_s, --PLL input 50 MHz
		c0	   => c0_s,     --PLL output 50 MHz
		locked => locked_s
	);
	
end behavioral;					