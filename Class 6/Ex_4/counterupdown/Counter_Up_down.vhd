LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Counter_Up_Down is
    port (
        clk_in		     : in  std_logic;
		botao_count      : in  std_logic;
		botao_load       : in  std_logic;
		seletor_ud_input : in  std_logic;
		leds_saida       : out std_logic_vector(3 downto 0)
    );
end Counter_Up_Down;

architecture rtl of Counter_Up_Down is

	--o bloco de debounce está aqui porque ao apertar o botão, temos ruido.
	--avaliar o bloco de debounce.
	component debounce
		port (
			ck      : in  std_logic;
			deb_in  : in  std_logic;
			deb_out : out std_logic
		);
	end component;
	
	signal counter_s             : std_logic_vector(3 downto 0) := (others => '0');
	signal button_out_debounce_s : std_logic := '0';
	signal counter_starter_s     : std_logic_vector(3 downto 0) := (others => '0');

begin
	deb_u : debounce
		port map(
			ck      => clk_in,
			deb_in  => botao_count, --bloco de debounce, entrada
			deb_out => button_out_debounce_s --bloco de debounce, saída
		);

	counter_up_down : process(clk_in)
	begin
		if(rising_edge(clk_in)) then
			if(botao_load = '0')then
				counter_s <= counter_starter_s;
			elsif((botao_load = '1') and (seletor_ud_input = '1') and (button_out_debounce_s = '0')) then
				counter_s <= counter_s + '1';
			elsif((botao_load = '1') and (seletor_ud_input = '0') and (button_out_debounce_s = '0')) then
				counter_s <= counter_s - '1';
			end if;
		end if;
	end process counter_up_down;
	leds_saida <= not counter_s;
end rtl;