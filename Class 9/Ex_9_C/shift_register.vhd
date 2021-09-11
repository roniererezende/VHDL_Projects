library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;

entity shift_register is
	port(
		shift_register_in  : in std_logic;
		parallel_data 	   : in std_logic_vector(1023 downto 0);
		clk                : in std_logic;
		rst                : in std_logic;
		en                 : in std_logic;
		direction          : in std_logic;
		force_input        : in std_logic;
		force_0            : in std_logic;
		force_1            : in std_logic;
		parallel_load      : in std_logic;
		
		shift_register_out : out std_logic;
		parallel_out       : out std_logic_vector(1023 downto 0)
	);
end shift_register;


architecture behavioral of shift_register is

	component debounce is
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
	end component;
	
	component shift_register_PLL is
		port(
			areset : in  std_logic := '0';
			inclk0 : in  std_logic := '0';
			c0	   : out std_logic;
			locked : out std_logic 
		);
	end component;
	
		--PLL Signals
	signal areset_s : std_logic := '0';
	signal inclk0_s : std_logic;
	signal c0_s     : std_logic;
	signal locked_s : std_logic;
	
	signal ck_s : std_logic := '0';
	signal shift_register : std_logic_vector(1023 downto 0);
	signal data_selected  : std_logic;
	
begin

	inclk0_s <= clk;
	
	data_selected <= '0' when force_0 = '1'     else
				     '1'                  when force_1 = '1'     else
					  shift_register_in	  when force_input = '1' else
					  shift_register(0)    when direction = '0'   else
					  shift_register(1023);
		
	process(rst, clk, parallel_load, en, direction )
	begin
		if rst = '1' then
			shift_register <= (others=>'0');
		elsif rising_edge(clk) then
			--intencionalmente faremos com que eu possa carregar
			--paralelamente independente do enable.
			--para fazer a carga depender do enable, basta colocar
			--ela 'dentro' do if.
			if parallel_load = '1' then
				shift_register <= parallel_data;
			elsif en = '1' then
				if direction = '0' then --saída pelo LSB, roda para o LSB.
					shift_register <= data_selected & shift_register(1023 downto 1);
				else
					shift_register <= shift_register(1022 downto 0) & data_selected;
				end if;
			else
				parallel_out <= shift_register;
			end if;
		end if;
	end process;
	
	shift_register_out <=	shift_register(0) 		when direction = '0' else
							shift_register(1023);
	
	-- Debouncing	
	deb_shift_register : debounce
		port map(	
	    ck                 => c0_s,
		deb_rst            => rst,
		deb_direction      => direction,
		deb_force_input    => force_input,
		deb_force_0        => force_0, 
		deb_force_1        => force_1,
		deb_parallel_load  => parallel_load
	);

	-- PLL
	PLL_inst : shift_register_PLL port map (
		areset => areset_s,
		inclk0 => inclk0_s, -- 50 Mhz
		c0	   => c0_s,		-- 50 Mhz
		locked => locked_s
	);
end behavioral;