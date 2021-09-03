-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "08/29/2021 23:00:34"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Exercicio_1_RAM IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	en_W_R : IN std_logic;
	en_Out : IN std_logic;
	data_address_sel : IN std_logic;
	data_address_io : INOUT std_logic_vector(7 DOWNTO 0)
	);
END Exercicio_1_RAM;

-- Design Ports Information
-- data_address_io[0]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_address_io[1]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_address_io[2]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_address_io[3]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_address_io[4]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_address_io[5]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_address_io[6]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_address_io[7]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_Out	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_address_sel	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_W_R	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Exercicio_1_RAM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_en_W_R : std_logic;
SIGNAL ww_en_Out : std_logic;
SIGNAL ww_data_address_sel : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_address_io[0]~output_o\ : std_logic;
SIGNAL \data_address_io[1]~output_o\ : std_logic;
SIGNAL \data_address_io[2]~output_o\ : std_logic;
SIGNAL \data_address_io[3]~output_o\ : std_logic;
SIGNAL \data_address_io[4]~output_o\ : std_logic;
SIGNAL \data_address_io[5]~output_o\ : std_logic;
SIGNAL \data_address_io[6]~output_o\ : std_logic;
SIGNAL \data_address_io[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \data_address_io[2]~input_o\ : std_logic;
SIGNAL \data_address_sel~input_o\ : std_logic;
SIGNAL \data_address_io[0]~input_o\ : std_logic;
SIGNAL \en_W_R~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \ram_s~16_combout\ : std_logic;
SIGNAL \data_address_io[1]~input_o\ : std_logic;
SIGNAL \ram_s[7][0]~30_combout\ : std_logic;
SIGNAL \ram_s[7][0]~17_combout\ : std_logic;
SIGNAL \ram_s[7][0]~q\ : std_logic;
SIGNAL \data_input_process~0_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \ram_s[5][1]~27_combout\ : std_logic;
SIGNAL \ram_s[5][0]~q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \ram_s[6][6]~28_combout\ : std_logic;
SIGNAL \ram_s[6][0]~q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \ram_s[4][6]~29_combout\ : std_logic;
SIGNAL \ram_s[4][0]~q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \ram_s[3][0]~feeder_combout\ : std_logic;
SIGNAL \ram_s[3][7]~34_combout\ : std_logic;
SIGNAL \ram_s[3][7]~19_combout\ : std_logic;
SIGNAL \ram_s[3][0]~q\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \ram_s[2][4]~31_combout\ : std_logic;
SIGNAL \ram_s[2][0]~q\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \ram_s[0][7]~33_combout\ : std_logic;
SIGNAL \ram_s[0][0]~q\ : std_logic;
SIGNAL \ram_s[1][0]~feeder_combout\ : std_logic;
SIGNAL \ram_s[1][5]~32_combout\ : std_logic;
SIGNAL \ram_s[1][5]~18_combout\ : std_logic;
SIGNAL \ram_s[1][0]~q\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \en_Out~input_o\ : std_logic;
SIGNAL \data_address_io~16_combout\ : std_logic;
SIGNAL \ram_s~20_combout\ : std_logic;
SIGNAL \ram_s[7][1]~feeder_combout\ : std_logic;
SIGNAL \ram_s[7][1]~q\ : std_logic;
SIGNAL \ram_s[5][1]~q\ : std_logic;
SIGNAL \ram_s[6][1]~feeder_combout\ : std_logic;
SIGNAL \ram_s[6][1]~q\ : std_logic;
SIGNAL \ram_s[4][1]~q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \ram_s[3][1]~q\ : std_logic;
SIGNAL \ram_s[2][1]~q\ : std_logic;
SIGNAL \ram_s[0][1]~q\ : std_logic;
SIGNAL \ram_s[1][1]~feeder_combout\ : std_logic;
SIGNAL \ram_s[1][1]~q\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \ram_s~21_combout\ : std_logic;
SIGNAL \ram_s[0][2]~feeder_combout\ : std_logic;
SIGNAL \ram_s[0][2]~q\ : std_logic;
SIGNAL \ram_s[1][2]~q\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \ram_s[2][2]~q\ : std_logic;
SIGNAL \ram_s[3][2]~q\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \ram_s[6][2]~feeder_combout\ : std_logic;
SIGNAL \ram_s[6][2]~q\ : std_logic;
SIGNAL \ram_s[4][2]~q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \ram_s[5][2]~q\ : std_logic;
SIGNAL \ram_s[7][2]~feeder_combout\ : std_logic;
SIGNAL \ram_s[7][2]~q\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \data_address_io[3]~input_o\ : std_logic;
SIGNAL \ram_s~22_combout\ : std_logic;
SIGNAL \ram_s[3][3]~q\ : std_logic;
SIGNAL \ram_s[2][3]~q\ : std_logic;
SIGNAL \ram_s[0][3]~q\ : std_logic;
SIGNAL \ram_s[1][3]~feeder_combout\ : std_logic;
SIGNAL \ram_s[1][3]~q\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \ram_s[7][3]~feeder_combout\ : std_logic;
SIGNAL \ram_s[7][3]~q\ : std_logic;
SIGNAL \ram_s[5][3]~q\ : std_logic;
SIGNAL \ram_s[6][3]~feeder_combout\ : std_logic;
SIGNAL \ram_s[6][3]~q\ : std_logic;
SIGNAL \ram_s[4][3]~q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \data_address_io[4]~input_o\ : std_logic;
SIGNAL \ram_s~23_combout\ : std_logic;
SIGNAL \ram_s[3][4]~q\ : std_logic;
SIGNAL \ram_s[2][4]~q\ : std_logic;
SIGNAL \ram_s[0][4]~q\ : std_logic;
SIGNAL \ram_s[1][4]~q\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \ram_s[7][4]~feeder_combout\ : std_logic;
SIGNAL \ram_s[7][4]~q\ : std_logic;
SIGNAL \ram_s[5][4]~q\ : std_logic;
SIGNAL \ram_s[6][4]~feeder_combout\ : std_logic;
SIGNAL \ram_s[6][4]~q\ : std_logic;
SIGNAL \ram_s[4][4]~q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \data_address_io[5]~input_o\ : std_logic;
SIGNAL \ram_s~24_combout\ : std_logic;
SIGNAL \ram_s[3][5]~q\ : std_logic;
SIGNAL \ram_s[2][5]~q\ : std_logic;
SIGNAL \ram_s[0][5]~q\ : std_logic;
SIGNAL \ram_s[1][5]~feeder_combout\ : std_logic;
SIGNAL \ram_s[1][5]~q\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \ram_s[7][5]~feeder_combout\ : std_logic;
SIGNAL \ram_s[7][5]~q\ : std_logic;
SIGNAL \ram_s[5][5]~q\ : std_logic;
SIGNAL \ram_s[6][5]~feeder_combout\ : std_logic;
SIGNAL \ram_s[6][5]~q\ : std_logic;
SIGNAL \ram_s[4][5]~q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \data_address_io[6]~input_o\ : std_logic;
SIGNAL \ram_s~25_combout\ : std_logic;
SIGNAL \ram_s[7][6]~feeder_combout\ : std_logic;
SIGNAL \ram_s[7][6]~q\ : std_logic;
SIGNAL \ram_s[5][6]~q\ : std_logic;
SIGNAL \ram_s[6][6]~feeder_combout\ : std_logic;
SIGNAL \ram_s[6][6]~q\ : std_logic;
SIGNAL \ram_s[4][6]~q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \ram_s[3][6]~q\ : std_logic;
SIGNAL \ram_s[2][6]~q\ : std_logic;
SIGNAL \ram_s[1][6]~feeder_combout\ : std_logic;
SIGNAL \ram_s[1][6]~q\ : std_logic;
SIGNAL \ram_s[0][6]~q\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \data_address_io[7]~input_o\ : std_logic;
SIGNAL \ram_s~26_combout\ : std_logic;
SIGNAL \ram_s[3][7]~q\ : std_logic;
SIGNAL \ram_s[2][7]~q\ : std_logic;
SIGNAL \ram_s[0][7]~q\ : std_logic;
SIGNAL \ram_s[1][7]~q\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \ram_s[7][7]~feeder_combout\ : std_logic;
SIGNAL \ram_s[7][7]~q\ : std_logic;
SIGNAL \ram_s[5][7]~q\ : std_logic;
SIGNAL \ram_s[6][7]~feeder_combout\ : std_logic;
SIGNAL \ram_s[6][7]~q\ : std_logic;
SIGNAL \ram_s[4][7]~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL data : std_logic_vector(7 DOWNTO 0);
SIGNAL address : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_data_address_sel~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_en_W_R <= en_W_R;
ww_en_Out <= en_Out;
ww_data_address_sel <= data_address_sel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_data_address_sel~input_o\ <= NOT \data_address_sel~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y24_N9
\data_address_io[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data(0),
	oe => \data_address_io~16_combout\,
	devoe => ww_devoe,
	o => \data_address_io[0]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\data_address_io[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data(1),
	oe => \data_address_io~16_combout\,
	devoe => ww_devoe,
	o => \data_address_io[1]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\data_address_io[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data(2),
	oe => \data_address_io~16_combout\,
	devoe => ww_devoe,
	o => \data_address_io[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\data_address_io[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data(3),
	oe => \data_address_io~16_combout\,
	devoe => ww_devoe,
	o => \data_address_io[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\data_address_io[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data(4),
	oe => \data_address_io~16_combout\,
	devoe => ww_devoe,
	o => \data_address_io[4]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\data_address_io[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data(5),
	oe => \data_address_io~16_combout\,
	devoe => ww_devoe,
	o => \data_address_io[5]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\data_address_io[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data(6),
	oe => \data_address_io~16_combout\,
	devoe => ww_devoe,
	o => \data_address_io[6]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\data_address_io[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data(7),
	oe => \data_address_io~16_combout\,
	devoe => ww_devoe,
	o => \data_address_io[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X9_Y24_N8
\data_address_io[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_address_io(2),
	o => \data_address_io[2]~input_o\);

-- Location: IOIBUF_X5_Y24_N8
\data_address_sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_address_sel,
	o => \data_address_sel~input_o\);

-- Location: FF_X10_Y20_N15
\address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_address_io[2]~input_o\,
	sload => VCC,
	ena => \ALT_INV_data_address_sel~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(2));

-- Location: IOIBUF_X7_Y24_N8
\data_address_io[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_address_io(0),
	o => \data_address_io[0]~input_o\);

-- Location: FF_X10_Y20_N17
\address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_address_io[0]~input_o\,
	sload => VCC,
	ena => \ALT_INV_data_address_sel~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(0));

-- Location: IOIBUF_X16_Y24_N1
\en_W_R~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en_W_R,
	o => \en_W_R~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X11_Y20_N24
\ram_s~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s~16_combout\ = (\data_address_io[0]~input_o\ & ((\data_address_sel~input_o\) # ((\rst~input_o\) # (!\en_W_R~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_address_sel~input_o\,
	datab => \en_W_R~input_o\,
	datac => \data_address_io[0]~input_o\,
	datad => \rst~input_o\,
	combout => \ram_s~16_combout\);

-- Location: IOIBUF_X7_Y24_N1
\data_address_io[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_address_io(1),
	o => \data_address_io[1]~input_o\);

-- Location: FF_X10_Y20_N3
\address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_address_io[1]~input_o\,
	sload => VCC,
	ena => \ALT_INV_data_address_sel~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(1));

-- Location: LCCOMB_X10_Y20_N10
\ram_s[7][0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[7][0]~30_combout\ = (\en_W_R~input_o\ & (!\data_address_sel~input_o\ & ((address(2)) # (!\rst~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_W_R~input_o\,
	datab => \rst~input_o\,
	datac => \data_address_sel~input_o\,
	datad => address(2),
	combout => \ram_s[7][0]~30_combout\);

-- Location: LCCOMB_X10_Y20_N16
\ram_s[7][0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[7][0]~17_combout\ = (\ram_s[7][0]~30_combout\ & (((address(1) & address(0))) # (!\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => address(1),
	datac => address(0),
	datad => \ram_s[7][0]~30_combout\,
	combout => \ram_s[7][0]~17_combout\);

-- Location: FF_X13_Y20_N15
\ram_s[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~16_combout\,
	sload => VCC,
	ena => \ram_s[7][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[7][0]~q\);

-- Location: LCCOMB_X11_Y20_N30
\data_input_process~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_input_process~0_combout\ = (\en_W_R~input_o\ & !\data_address_sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_W_R~input_o\,
	datac => \data_address_sel~input_o\,
	combout => \data_input_process~0_combout\);

-- Location: LCCOMB_X11_Y20_N20
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!address(1) & (\data_input_process~0_combout\ & (address(0) & address(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => \data_input_process~0_combout\,
	datac => address(0),
	datad => address(2),
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X11_Y20_N26
\ram_s[5][1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[5][1]~27_combout\ = (\Decoder0~0_combout\) # ((!\rst~input_o\ & (\en_W_R~input_o\ & !\data_address_sel~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \en_W_R~input_o\,
	datac => \data_address_sel~input_o\,
	datad => \Decoder0~0_combout\,
	combout => \ram_s[5][1]~27_combout\);

-- Location: FF_X14_Y20_N17
\ram_s[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~16_combout\,
	sload => VCC,
	ena => \ram_s[5][1]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[5][0]~q\);

-- Location: LCCOMB_X11_Y20_N18
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (address(1) & (\data_input_process~0_combout\ & (!address(0) & address(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => \data_input_process~0_combout\,
	datac => address(0),
	datad => address(2),
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X11_Y20_N28
\ram_s[6][6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[6][6]~28_combout\ = (\Decoder0~1_combout\) # ((!\rst~input_o\ & (\en_W_R~input_o\ & !\data_address_sel~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \en_W_R~input_o\,
	datac => \data_address_sel~input_o\,
	datad => \Decoder0~1_combout\,
	combout => \ram_s[6][6]~28_combout\);

-- Location: FF_X13_Y20_N5
\ram_s[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~16_combout\,
	sload => VCC,
	ena => \ram_s[6][6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[6][0]~q\);

-- Location: LCCOMB_X11_Y20_N16
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!address(1) & (\data_input_process~0_combout\ & (!address(0) & address(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => \data_input_process~0_combout\,
	datac => address(0),
	datad => address(2),
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X11_Y20_N10
\ram_s[4][6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[4][6]~29_combout\ = (\Decoder0~2_combout\) # ((!\rst~input_o\ & (\en_W_R~input_o\ & !\data_address_sel~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \en_W_R~input_o\,
	datac => \data_address_sel~input_o\,
	datad => \Decoder0~2_combout\,
	combout => \ram_s[4][6]~29_combout\);

-- Location: FF_X14_Y20_N15
\ram_s[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~16_combout\,
	sload => VCC,
	ena => \ram_s[4][6]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[4][0]~q\);

-- Location: LCCOMB_X14_Y20_N14
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (address(0) & (((address(1))))) # (!address(0) & ((address(1) & (\ram_s[6][0]~q\)) # (!address(1) & ((\ram_s[4][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(0),
	datab => \ram_s[6][0]~q\,
	datac => \ram_s[4][0]~q\,
	datad => address(1),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X14_Y20_N16
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (address(0) & ((\Mux7~0_combout\ & (\ram_s[7][0]~q\)) # (!\Mux7~0_combout\ & ((\ram_s[5][0]~q\))))) # (!address(0) & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(0),
	datab => \ram_s[7][0]~q\,
	datac => \ram_s[5][0]~q\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X12_Y20_N26
\ram_s[3][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[3][0]~feeder_combout\ = \ram_s~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_s~16_combout\,
	combout => \ram_s[3][0]~feeder_combout\);

-- Location: LCCOMB_X10_Y20_N18
\ram_s[3][7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[3][7]~34_combout\ = (\en_W_R~input_o\ & (!\data_address_sel~input_o\ & ((address(1)) # (!\rst~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_W_R~input_o\,
	datab => \rst~input_o\,
	datac => \data_address_sel~input_o\,
	datad => address(1),
	combout => \ram_s[3][7]~34_combout\);

-- Location: LCCOMB_X11_Y20_N4
\ram_s[3][7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[3][7]~19_combout\ = (\ram_s[3][7]~34_combout\ & (((!address(2) & address(0))) # (!\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datab => \rst~input_o\,
	datac => address(0),
	datad => \ram_s[3][7]~34_combout\,
	combout => \ram_s[3][7]~19_combout\);

-- Location: FF_X12_Y20_N27
\ram_s[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[3][0]~feeder_combout\,
	ena => \ram_s[3][7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[3][0]~q\);

-- Location: LCCOMB_X10_Y20_N14
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (\data_input_process~0_combout\ & (address(1) & (!address(2) & !address(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_input_process~0_combout\,
	datab => address(1),
	datac => address(2),
	datad => address(0),
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X10_Y20_N0
\ram_s[2][4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[2][4]~31_combout\ = (\Decoder0~3_combout\) # ((!\data_address_sel~input_o\ & (!\rst~input_o\ & \en_W_R~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_address_sel~input_o\,
	datab => \rst~input_o\,
	datac => \Decoder0~3_combout\,
	datad => \en_W_R~input_o\,
	combout => \ram_s[2][4]~31_combout\);

-- Location: FF_X9_Y20_N3
\ram_s[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~16_combout\,
	sload => VCC,
	ena => \ram_s[2][4]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[2][0]~q\);

-- Location: LCCOMB_X10_Y20_N2
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (\data_input_process~0_combout\ & (!address(0) & (!address(1) & !address(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_input_process~0_combout\,
	datab => address(0),
	datac => address(1),
	datad => address(2),
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X10_Y20_N12
\ram_s[0][7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[0][7]~33_combout\ = (\Decoder0~4_combout\) # ((\en_W_R~input_o\ & (!\rst~input_o\ & !\data_address_sel~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_W_R~input_o\,
	datab => \rst~input_o\,
	datac => \Decoder0~4_combout\,
	datad => \data_address_sel~input_o\,
	combout => \ram_s[0][7]~33_combout\);

-- Location: FF_X10_Y20_N5
\ram_s[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~16_combout\,
	sload => VCC,
	ena => \ram_s[0][7]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[0][0]~q\);

-- Location: LCCOMB_X12_Y20_N4
\ram_s[1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[1][0]~feeder_combout\ = \ram_s~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_s~16_combout\,
	combout => \ram_s[1][0]~feeder_combout\);

-- Location: LCCOMB_X10_Y20_N26
\ram_s[1][5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[1][5]~32_combout\ = (\en_W_R~input_o\ & (!\data_address_sel~input_o\ & ((address(0)) # (!\rst~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_W_R~input_o\,
	datab => \rst~input_o\,
	datac => \data_address_sel~input_o\,
	datad => address(0),
	combout => \ram_s[1][5]~32_combout\);

-- Location: LCCOMB_X11_Y20_N14
\ram_s[1][5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[1][5]~18_combout\ = (\ram_s[1][5]~32_combout\ & (((!address(2) & !address(1))) # (!\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datab => \rst~input_o\,
	datac => \ram_s[1][5]~32_combout\,
	datad => address(1),
	combout => \ram_s[1][5]~18_combout\);

-- Location: FF_X12_Y20_N5
\ram_s[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[1][0]~feeder_combout\,
	ena => \ram_s[1][5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[1][0]~q\);

-- Location: LCCOMB_X10_Y20_N4
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (address(1) & (address(0))) # (!address(1) & ((address(0) & ((\ram_s[1][0]~q\))) # (!address(0) & (\ram_s[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => address(0),
	datac => \ram_s[0][0]~q\,
	datad => \ram_s[1][0]~q\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X9_Y20_N2
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (address(1) & ((\Mux7~2_combout\ & (\ram_s[3][0]~q\)) # (!\Mux7~2_combout\ & ((\ram_s[2][0]~q\))))) # (!address(1) & (((\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_s[3][0]~q\,
	datab => address(1),
	datac => \ram_s[2][0]~q\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X9_Y20_N0
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (address(2) & (\Mux7~1_combout\)) # (!address(2) & ((\Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datac => \Mux7~1_combout\,
	datad => \Mux7~3_combout\,
	combout => \Mux7~4_combout\);

-- Location: FF_X9_Y20_N1
\data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(0));

-- Location: IOIBUF_X30_Y24_N22
\en_Out~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en_Out,
	o => \en_Out~input_o\);

-- Location: LCCOMB_X11_Y20_N0
\data_address_io~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_address_io~16_combout\ = (\rst~input_o\ & (!\data_address_sel~input_o\ & \en_Out~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \data_address_sel~input_o\,
	datad => \en_Out~input_o\,
	combout => \data_address_io~16_combout\);

-- Location: LCCOMB_X12_Y20_N2
\ram_s~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s~20_combout\ = (\data_address_io[1]~input_o\ & ((\data_address_sel~input_o\) # ((\rst~input_o\) # (!\en_W_R~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_address_sel~input_o\,
	datab => \data_address_io[1]~input_o\,
	datac => \rst~input_o\,
	datad => \en_W_R~input_o\,
	combout => \ram_s~20_combout\);

-- Location: LCCOMB_X13_Y20_N18
\ram_s[7][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[7][1]~feeder_combout\ = \ram_s~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_s~20_combout\,
	combout => \ram_s[7][1]~feeder_combout\);

-- Location: FF_X13_Y20_N19
\ram_s[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[7][1]~feeder_combout\,
	ena => \ram_s[7][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[7][1]~q\);

-- Location: FF_X14_Y20_N5
\ram_s[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~20_combout\,
	sload => VCC,
	ena => \ram_s[5][1]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[5][1]~q\);

-- Location: LCCOMB_X13_Y20_N28
\ram_s[6][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[6][1]~feeder_combout\ = \ram_s~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_s~20_combout\,
	combout => \ram_s[6][1]~feeder_combout\);

-- Location: FF_X13_Y20_N29
\ram_s[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[6][1]~feeder_combout\,
	ena => \ram_s[6][6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[6][1]~q\);

-- Location: FF_X14_Y20_N7
\ram_s[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~20_combout\,
	sload => VCC,
	ena => \ram_s[4][6]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[4][1]~q\);

-- Location: LCCOMB_X14_Y20_N6
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (address(0) & (((address(1))))) # (!address(0) & ((address(1) & (\ram_s[6][1]~q\)) # (!address(1) & ((\ram_s[4][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(0),
	datab => \ram_s[6][1]~q\,
	datac => \ram_s[4][1]~q\,
	datad => address(1),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X14_Y20_N4
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (address(0) & ((\Mux6~0_combout\ & (\ram_s[7][1]~q\)) # (!\Mux6~0_combout\ & ((\ram_s[5][1]~q\))))) # (!address(0) & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(0),
	datab => \ram_s[7][1]~q\,
	datac => \ram_s[5][1]~q\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: FF_X12_Y20_N3
\ram_s[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s~20_combout\,
	ena => \ram_s[3][7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[3][1]~q\);

-- Location: FF_X9_Y20_N21
\ram_s[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~20_combout\,
	sload => VCC,
	ena => \ram_s[2][4]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[2][1]~q\);

-- Location: FF_X10_Y20_N29
\ram_s[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~20_combout\,
	sload => VCC,
	ena => \ram_s[0][7]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[0][1]~q\);

-- Location: LCCOMB_X12_Y20_N28
\ram_s[1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[1][1]~feeder_combout\ = \ram_s~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_s~20_combout\,
	combout => \ram_s[1][1]~feeder_combout\);

-- Location: FF_X12_Y20_N29
\ram_s[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[1][1]~feeder_combout\,
	ena => \ram_s[1][5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[1][1]~q\);

-- Location: LCCOMB_X10_Y20_N28
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (address(1) & (address(0))) # (!address(1) & ((address(0) & ((\ram_s[1][1]~q\))) # (!address(0) & (\ram_s[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => address(0),
	datac => \ram_s[0][1]~q\,
	datad => \ram_s[1][1]~q\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X9_Y20_N20
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (address(1) & ((\Mux6~2_combout\ & (\ram_s[3][1]~q\)) # (!\Mux6~2_combout\ & ((\ram_s[2][1]~q\))))) # (!address(1) & (((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => \ram_s[3][1]~q\,
	datac => \ram_s[2][1]~q\,
	datad => \Mux6~2_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X9_Y20_N18
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (address(2) & (\Mux6~1_combout\)) # (!address(2) & ((\Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datac => \Mux6~1_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux6~4_combout\);

-- Location: FF_X9_Y20_N19
\data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(1));

-- Location: LCCOMB_X12_Y20_N22
\ram_s~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s~21_combout\ = (\data_address_io[2]~input_o\ & ((\data_address_sel~input_o\) # ((\rst~input_o\) # (!\en_W_R~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_address_sel~input_o\,
	datab => \data_address_io[2]~input_o\,
	datac => \rst~input_o\,
	datad => \en_W_R~input_o\,
	combout => \ram_s~21_combout\);

-- Location: LCCOMB_X10_Y20_N30
\ram_s[0][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[0][2]~feeder_combout\ = \ram_s~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_s~21_combout\,
	combout => \ram_s[0][2]~feeder_combout\);

-- Location: FF_X10_Y20_N31
\ram_s[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[0][2]~feeder_combout\,
	ena => \ram_s[0][7]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[0][2]~q\);

-- Location: FF_X12_Y20_N9
\ram_s[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~21_combout\,
	sload => VCC,
	ena => \ram_s[1][5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[1][2]~q\);

-- Location: LCCOMB_X9_Y20_N16
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (address(1) & (((address(0))))) # (!address(1) & ((address(0) & ((\ram_s[1][2]~q\))) # (!address(0) & (\ram_s[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => \ram_s[0][2]~q\,
	datac => address(0),
	datad => \ram_s[1][2]~q\,
	combout => \Mux5~2_combout\);

-- Location: FF_X9_Y20_N27
\ram_s[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~21_combout\,
	sload => VCC,
	ena => \ram_s[2][4]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[2][2]~q\);

-- Location: FF_X12_Y20_N23
\ram_s[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s~21_combout\,
	ena => \ram_s[3][7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[3][2]~q\);

-- Location: LCCOMB_X9_Y20_N26
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (address(1) & ((\Mux5~2_combout\ & ((\ram_s[3][2]~q\))) # (!\Mux5~2_combout\ & (\ram_s[2][2]~q\)))) # (!address(1) & (\Mux5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => \Mux5~2_combout\,
	datac => \ram_s[2][2]~q\,
	datad => \ram_s[3][2]~q\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X13_Y20_N20
\ram_s[6][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[6][2]~feeder_combout\ = \ram_s~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_s~21_combout\,
	combout => \ram_s[6][2]~feeder_combout\);

-- Location: FF_X13_Y20_N21
\ram_s[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[6][2]~feeder_combout\,
	ena => \ram_s[6][6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[6][2]~q\);

-- Location: FF_X14_Y20_N31
\ram_s[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~21_combout\,
	sload => VCC,
	ena => \ram_s[4][6]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[4][2]~q\);

-- Location: LCCOMB_X14_Y20_N30
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (address(0) & (((address(1))))) # (!address(0) & ((address(1) & (\ram_s[6][2]~q\)) # (!address(1) & ((\ram_s[4][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(0),
	datab => \ram_s[6][2]~q\,
	datac => \ram_s[4][2]~q\,
	datad => address(1),
	combout => \Mux5~0_combout\);

-- Location: FF_X14_Y20_N13
\ram_s[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~21_combout\,
	sload => VCC,
	ena => \ram_s[5][1]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[5][2]~q\);

-- Location: LCCOMB_X13_Y20_N2
\ram_s[7][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[7][2]~feeder_combout\ = \ram_s~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_s~21_combout\,
	combout => \ram_s[7][2]~feeder_combout\);

-- Location: FF_X13_Y20_N3
\ram_s[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[7][2]~feeder_combout\,
	ena => \ram_s[7][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[7][2]~q\);

-- Location: LCCOMB_X14_Y20_N12
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & (((\ram_s[7][2]~q\)) # (!address(0)))) # (!\Mux5~0_combout\ & (address(0) & (\ram_s[5][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => address(0),
	datac => \ram_s[5][2]~q\,
	datad => \ram_s[7][2]~q\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X9_Y20_N4
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (address(2) & ((\Mux5~1_combout\))) # (!address(2) & (\Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datac => \Mux5~3_combout\,
	datad => \Mux5~1_combout\,
	combout => \Mux5~4_combout\);

-- Location: FF_X9_Y20_N5
\data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(2));

-- Location: IOIBUF_X16_Y24_N15
\data_address_io[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_address_io(3),
	o => \data_address_io[3]~input_o\);

-- Location: LCCOMB_X12_Y20_N6
\ram_s~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s~22_combout\ = (\data_address_io[3]~input_o\ & ((\data_address_sel~input_o\) # ((\rst~input_o\) # (!\en_W_R~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_address_sel~input_o\,
	datab => \rst~input_o\,
	datac => \data_address_io[3]~input_o\,
	datad => \en_W_R~input_o\,
	combout => \ram_s~22_combout\);

-- Location: FF_X12_Y20_N7
\ram_s[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s~22_combout\,
	ena => \ram_s[3][7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[3][3]~q\);

-- Location: FF_X9_Y20_N15
\ram_s[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~22_combout\,
	sload => VCC,
	ena => \ram_s[2][4]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[2][3]~q\);

-- Location: FF_X10_Y20_N25
\ram_s[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~22_combout\,
	sload => VCC,
	ena => \ram_s[0][7]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[0][3]~q\);

-- Location: LCCOMB_X12_Y20_N20
\ram_s[1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[1][3]~feeder_combout\ = \ram_s~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_s~22_combout\,
	combout => \ram_s[1][3]~feeder_combout\);

-- Location: FF_X12_Y20_N21
\ram_s[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[1][3]~feeder_combout\,
	ena => \ram_s[1][5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[1][3]~q\);

-- Location: LCCOMB_X10_Y20_N24
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (address(1) & (address(0))) # (!address(1) & ((address(0) & ((\ram_s[1][3]~q\))) # (!address(0) & (\ram_s[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => address(0),
	datac => \ram_s[0][3]~q\,
	datad => \ram_s[1][3]~q\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X9_Y20_N14
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (address(1) & ((\Mux4~2_combout\ & (\ram_s[3][3]~q\)) # (!\Mux4~2_combout\ & ((\ram_s[2][3]~q\))))) # (!address(1) & (((\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => \ram_s[3][3]~q\,
	datac => \ram_s[2][3]~q\,
	datad => \Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X13_Y20_N30
\ram_s[7][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[7][3]~feeder_combout\ = \ram_s~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_s~22_combout\,
	combout => \ram_s[7][3]~feeder_combout\);

-- Location: FF_X13_Y20_N31
\ram_s[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[7][3]~feeder_combout\,
	ena => \ram_s[7][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[7][3]~q\);

-- Location: FF_X14_Y20_N9
\ram_s[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~22_combout\,
	sload => VCC,
	ena => \ram_s[5][1]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[5][3]~q\);

-- Location: LCCOMB_X13_Y20_N8
\ram_s[6][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[6][3]~feeder_combout\ = \ram_s~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_s~22_combout\,
	combout => \ram_s[6][3]~feeder_combout\);

-- Location: FF_X13_Y20_N9
\ram_s[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[6][3]~feeder_combout\,
	ena => \ram_s[6][6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[6][3]~q\);

-- Location: FF_X14_Y20_N19
\ram_s[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~22_combout\,
	sload => VCC,
	ena => \ram_s[4][6]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[4][3]~q\);

-- Location: LCCOMB_X14_Y20_N18
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (address(0) & (((address(1))))) # (!address(0) & ((address(1) & (\ram_s[6][3]~q\)) # (!address(1) & ((\ram_s[4][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_s[6][3]~q\,
	datab => address(0),
	datac => \ram_s[4][3]~q\,
	datad => address(1),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X14_Y20_N8
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (address(0) & ((\Mux4~0_combout\ & (\ram_s[7][3]~q\)) # (!\Mux4~0_combout\ & ((\ram_s[5][3]~q\))))) # (!address(0) & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(0),
	datab => \ram_s[7][3]~q\,
	datac => \ram_s[5][3]~q\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X9_Y20_N10
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (address(2) & ((\Mux4~1_combout\))) # (!address(2) & (\Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datac => \Mux4~3_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~4_combout\);

-- Location: FF_X9_Y20_N11
\data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(3));

-- Location: IOIBUF_X16_Y24_N22
\data_address_io[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_address_io(4),
	o => \data_address_io[4]~input_o\);

-- Location: LCCOMB_X12_Y20_N30
\ram_s~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s~23_combout\ = (\data_address_io[4]~input_o\ & ((\data_address_sel~input_o\) # ((\rst~input_o\) # (!\en_W_R~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_address_sel~input_o\,
	datab => \data_address_io[4]~input_o\,
	datac => \rst~input_o\,
	datad => \en_W_R~input_o\,
	combout => \ram_s~23_combout\);

-- Location: FF_X12_Y20_N31
\ram_s[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s~23_combout\,
	ena => \ram_s[3][7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[3][4]~q\);

-- Location: FF_X9_Y20_N9
\ram_s[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~23_combout\,
	sload => VCC,
	ena => \ram_s[2][4]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[2][4]~q\);

-- Location: FF_X10_Y20_N7
\ram_s[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~23_combout\,
	sload => VCC,
	ena => \ram_s[0][7]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[0][4]~q\);

-- Location: FF_X12_Y20_N13
\ram_s[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~23_combout\,
	sload => VCC,
	ena => \ram_s[1][5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[1][4]~q\);

-- Location: LCCOMB_X10_Y20_N6
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (address(1) & (address(0))) # (!address(1) & ((address(0) & ((\ram_s[1][4]~q\))) # (!address(0) & (\ram_s[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => address(0),
	datac => \ram_s[0][4]~q\,
	datad => \ram_s[1][4]~q\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X9_Y20_N8
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (address(1) & ((\Mux3~2_combout\ & (\ram_s[3][4]~q\)) # (!\Mux3~2_combout\ & ((\ram_s[2][4]~q\))))) # (!address(1) & (((\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => \ram_s[3][4]~q\,
	datac => \ram_s[2][4]~q\,
	datad => \Mux3~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X13_Y20_N26
\ram_s[7][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[7][4]~feeder_combout\ = \ram_s~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_s~23_combout\,
	combout => \ram_s[7][4]~feeder_combout\);

-- Location: FF_X13_Y20_N27
\ram_s[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[7][4]~feeder_combout\,
	ena => \ram_s[7][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[7][4]~q\);

-- Location: FF_X14_Y20_N29
\ram_s[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~23_combout\,
	sload => VCC,
	ena => \ram_s[5][1]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[5][4]~q\);

-- Location: LCCOMB_X13_Y20_N16
\ram_s[6][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[6][4]~feeder_combout\ = \ram_s~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_s~23_combout\,
	combout => \ram_s[6][4]~feeder_combout\);

-- Location: FF_X13_Y20_N17
\ram_s[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[6][4]~feeder_combout\,
	ena => \ram_s[6][6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[6][4]~q\);

-- Location: FF_X14_Y20_N3
\ram_s[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~23_combout\,
	sload => VCC,
	ena => \ram_s[4][6]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[4][4]~q\);

-- Location: LCCOMB_X14_Y20_N2
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (address(0) & (((address(1))))) # (!address(0) & ((address(1) & (\ram_s[6][4]~q\)) # (!address(1) & ((\ram_s[4][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_s[6][4]~q\,
	datab => address(0),
	datac => \ram_s[4][4]~q\,
	datad => address(1),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X14_Y20_N28
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (address(0) & ((\Mux3~0_combout\ & (\ram_s[7][4]~q\)) # (!\Mux3~0_combout\ & ((\ram_s[5][4]~q\))))) # (!address(0) & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(0),
	datab => \ram_s[7][4]~q\,
	datac => \ram_s[5][4]~q\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X9_Y20_N24
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (address(2) & ((\Mux3~1_combout\))) # (!address(2) & (\Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datac => \Mux3~3_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~4_combout\);

-- Location: FF_X9_Y20_N25
\data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(4));

-- Location: IOIBUF_X13_Y24_N22
\data_address_io[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_address_io(5),
	o => \data_address_io[5]~input_o\);

-- Location: LCCOMB_X12_Y20_N10
\ram_s~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s~24_combout\ = (\data_address_io[5]~input_o\ & ((\rst~input_o\) # ((\data_address_sel~input_o\) # (!\en_W_R~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_address_io[5]~input_o\,
	datab => \rst~input_o\,
	datac => \data_address_sel~input_o\,
	datad => \en_W_R~input_o\,
	combout => \ram_s~24_combout\);

-- Location: FF_X12_Y20_N11
\ram_s[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s~24_combout\,
	ena => \ram_s[3][7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[3][5]~q\);

-- Location: FF_X9_Y20_N23
\ram_s[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~24_combout\,
	sload => VCC,
	ena => \ram_s[2][4]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[2][5]~q\);

-- Location: FF_X10_Y20_N21
\ram_s[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~24_combout\,
	sload => VCC,
	ena => \ram_s[0][7]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[0][5]~q\);

-- Location: LCCOMB_X12_Y20_N16
\ram_s[1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[1][5]~feeder_combout\ = \ram_s~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_s~24_combout\,
	combout => \ram_s[1][5]~feeder_combout\);

-- Location: FF_X12_Y20_N17
\ram_s[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[1][5]~feeder_combout\,
	ena => \ram_s[1][5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[1][5]~q\);

-- Location: LCCOMB_X9_Y20_N12
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (address(1) & (((address(0))))) # (!address(1) & ((address(0) & ((\ram_s[1][5]~q\))) # (!address(0) & (\ram_s[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => \ram_s[0][5]~q\,
	datac => address(0),
	datad => \ram_s[1][5]~q\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X9_Y20_N22
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (address(1) & ((\Mux2~2_combout\ & (\ram_s[3][5]~q\)) # (!\Mux2~2_combout\ & ((\ram_s[2][5]~q\))))) # (!address(1) & (((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => \ram_s[3][5]~q\,
	datac => \ram_s[2][5]~q\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X13_Y20_N22
\ram_s[7][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[7][5]~feeder_combout\ = \ram_s~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_s~24_combout\,
	combout => \ram_s[7][5]~feeder_combout\);

-- Location: FF_X13_Y20_N23
\ram_s[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[7][5]~feeder_combout\,
	ena => \ram_s[7][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[7][5]~q\);

-- Location: FF_X14_Y20_N21
\ram_s[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~24_combout\,
	sload => VCC,
	ena => \ram_s[5][1]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[5][5]~q\);

-- Location: LCCOMB_X13_Y20_N12
\ram_s[6][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[6][5]~feeder_combout\ = \ram_s~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_s~24_combout\,
	combout => \ram_s[6][5]~feeder_combout\);

-- Location: FF_X13_Y20_N13
\ram_s[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[6][5]~feeder_combout\,
	ena => \ram_s[6][6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[6][5]~q\);

-- Location: FF_X14_Y20_N11
\ram_s[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~24_combout\,
	sload => VCC,
	ena => \ram_s[4][6]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[4][5]~q\);

-- Location: LCCOMB_X14_Y20_N10
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (address(0) & (((address(1))))) # (!address(0) & ((address(1) & (\ram_s[6][5]~q\)) # (!address(1) & ((\ram_s[4][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_s[6][5]~q\,
	datab => address(0),
	datac => \ram_s[4][5]~q\,
	datad => address(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X14_Y20_N20
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (address(0) & ((\Mux2~0_combout\ & (\ram_s[7][5]~q\)) # (!\Mux2~0_combout\ & ((\ram_s[5][5]~q\))))) # (!address(0) & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_s[7][5]~q\,
	datab => address(0),
	datac => \ram_s[5][5]~q\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X9_Y20_N6
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (address(2) & ((\Mux2~1_combout\))) # (!address(2) & (\Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datac => \Mux2~3_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux2~4_combout\);

-- Location: FF_X9_Y20_N7
\data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(5));

-- Location: IOIBUF_X13_Y24_N15
\data_address_io[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_address_io(6),
	o => \data_address_io[6]~input_o\);

-- Location: LCCOMB_X12_Y20_N18
\ram_s~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s~25_combout\ = (\data_address_io[6]~input_o\ & ((\data_address_sel~input_o\) # ((\rst~input_o\) # (!\en_W_R~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_address_sel~input_o\,
	datab => \data_address_io[6]~input_o\,
	datac => \rst~input_o\,
	datad => \en_W_R~input_o\,
	combout => \ram_s~25_combout\);

-- Location: LCCOMB_X13_Y20_N10
\ram_s[7][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[7][6]~feeder_combout\ = \ram_s~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_s~25_combout\,
	combout => \ram_s[7][6]~feeder_combout\);

-- Location: FF_X13_Y20_N11
\ram_s[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[7][6]~feeder_combout\,
	ena => \ram_s[7][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[7][6]~q\);

-- Location: FF_X14_Y20_N1
\ram_s[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~25_combout\,
	sload => VCC,
	ena => \ram_s[5][1]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[5][6]~q\);

-- Location: LCCOMB_X13_Y20_N24
\ram_s[6][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[6][6]~feeder_combout\ = \ram_s~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_s~25_combout\,
	combout => \ram_s[6][6]~feeder_combout\);

-- Location: FF_X13_Y20_N25
\ram_s[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[6][6]~feeder_combout\,
	ena => \ram_s[6][6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[6][6]~q\);

-- Location: FF_X14_Y20_N23
\ram_s[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~25_combout\,
	sload => VCC,
	ena => \ram_s[4][6]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[4][6]~q\);

-- Location: LCCOMB_X14_Y20_N22
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (address(0) & (((address(1))))) # (!address(0) & ((address(1) & (\ram_s[6][6]~q\)) # (!address(1) & ((\ram_s[4][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(0),
	datab => \ram_s[6][6]~q\,
	datac => \ram_s[4][6]~q\,
	datad => address(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X14_Y20_N0
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (address(0) & ((\Mux1~0_combout\ & (\ram_s[7][6]~q\)) # (!\Mux1~0_combout\ & ((\ram_s[5][6]~q\))))) # (!address(0) & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_s[7][6]~q\,
	datab => address(0),
	datac => \ram_s[5][6]~q\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: FF_X12_Y20_N19
\ram_s[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s~25_combout\,
	ena => \ram_s[3][7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[3][6]~q\);

-- Location: FF_X9_Y20_N31
\ram_s[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~25_combout\,
	sload => VCC,
	ena => \ram_s[2][4]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[2][6]~q\);

-- Location: LCCOMB_X12_Y20_N24
\ram_s[1][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[1][6]~feeder_combout\ = \ram_s~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_s~25_combout\,
	combout => \ram_s[1][6]~feeder_combout\);

-- Location: FF_X12_Y20_N25
\ram_s[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[1][6]~feeder_combout\,
	ena => \ram_s[1][5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[1][6]~q\);

-- Location: FF_X10_Y20_N23
\ram_s[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~25_combout\,
	sload => VCC,
	ena => \ram_s[0][7]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[0][6]~q\);

-- Location: LCCOMB_X10_Y20_N22
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (address(1) & (((address(0))))) # (!address(1) & ((address(0) & (\ram_s[1][6]~q\)) # (!address(0) & ((\ram_s[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_s[1][6]~q\,
	datab => address(1),
	datac => \ram_s[0][6]~q\,
	datad => address(0),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X9_Y20_N30
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (address(1) & ((\Mux1~2_combout\ & (\ram_s[3][6]~q\)) # (!\Mux1~2_combout\ & ((\ram_s[2][6]~q\))))) # (!address(1) & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => \ram_s[3][6]~q\,
	datac => \ram_s[2][6]~q\,
	datad => \Mux1~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X9_Y20_N28
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (address(2) & (\Mux1~1_combout\)) # (!address(2) & ((\Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datac => \Mux1~1_combout\,
	datad => \Mux1~3_combout\,
	combout => \Mux1~4_combout\);

-- Location: FF_X9_Y20_N29
\data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(6));

-- Location: IOIBUF_X11_Y24_N15
\data_address_io[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_address_io(7),
	o => \data_address_io[7]~input_o\);

-- Location: LCCOMB_X12_Y20_N14
\ram_s~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s~26_combout\ = (\data_address_io[7]~input_o\ & ((\data_address_sel~input_o\) # ((\rst~input_o\) # (!\en_W_R~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_address_sel~input_o\,
	datab => \data_address_io[7]~input_o\,
	datac => \rst~input_o\,
	datad => \en_W_R~input_o\,
	combout => \ram_s~26_combout\);

-- Location: FF_X12_Y20_N15
\ram_s[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s~26_combout\,
	ena => \ram_s[3][7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[3][7]~q\);

-- Location: FF_X11_Y20_N9
\ram_s[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~26_combout\,
	sload => VCC,
	ena => \ram_s[2][4]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[2][7]~q\);

-- Location: FF_X10_Y20_N9
\ram_s[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~26_combout\,
	sload => VCC,
	ena => \ram_s[0][7]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[0][7]~q\);

-- Location: FF_X12_Y20_N1
\ram_s[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~26_combout\,
	sload => VCC,
	ena => \ram_s[1][5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[1][7]~q\);

-- Location: LCCOMB_X11_Y20_N2
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (address(0) & (((\ram_s[1][7]~q\) # (address(1))))) # (!address(0) & (\ram_s[0][7]~q\ & ((!address(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_s[0][7]~q\,
	datab => \ram_s[1][7]~q\,
	datac => address(0),
	datad => address(1),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X11_Y20_N8
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (address(1) & ((\Mux0~2_combout\ & (\ram_s[3][7]~q\)) # (!\Mux0~2_combout\ & ((\ram_s[2][7]~q\))))) # (!address(1) & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => \ram_s[3][7]~q\,
	datac => \ram_s[2][7]~q\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X13_Y20_N6
\ram_s[7][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[7][7]~feeder_combout\ = \ram_s~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_s~26_combout\,
	combout => \ram_s[7][7]~feeder_combout\);

-- Location: FF_X13_Y20_N7
\ram_s[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[7][7]~feeder_combout\,
	ena => \ram_s[7][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[7][7]~q\);

-- Location: FF_X14_Y20_N25
\ram_s[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~26_combout\,
	sload => VCC,
	ena => \ram_s[5][1]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[5][7]~q\);

-- Location: LCCOMB_X13_Y20_N0
\ram_s[6][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[6][7]~feeder_combout\ = \ram_s~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_s~26_combout\,
	combout => \ram_s[6][7]~feeder_combout\);

-- Location: FF_X13_Y20_N1
\ram_s[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[6][7]~feeder_combout\,
	ena => \ram_s[6][6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[6][7]~q\);

-- Location: FF_X14_Y20_N27
\ram_s[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_s~26_combout\,
	sload => VCC,
	ena => \ram_s[4][6]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[4][7]~q\);

-- Location: LCCOMB_X14_Y20_N26
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (address(0) & (((address(1))))) # (!address(0) & ((address(1) & (\ram_s[6][7]~q\)) # (!address(1) & ((\ram_s[4][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(0),
	datab => \ram_s[6][7]~q\,
	datac => \ram_s[4][7]~q\,
	datad => address(1),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X14_Y20_N24
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (address(0) & ((\Mux0~0_combout\ & (\ram_s[7][7]~q\)) # (!\Mux0~0_combout\ & ((\ram_s[5][7]~q\))))) # (!address(0) & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_s[7][7]~q\,
	datab => address(0),
	datac => \ram_s[5][7]~q\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X11_Y20_N22
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (address(2) & ((\Mux0~1_combout\))) # (!address(2) & (\Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datac => \Mux0~3_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux0~4_combout\);

-- Location: FF_X11_Y20_N23
\data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(7));

data_address_io(0) <= \data_address_io[0]~output_o\;

data_address_io(1) <= \data_address_io[1]~output_o\;

data_address_io(2) <= \data_address_io[2]~output_o\;

data_address_io(3) <= \data_address_io[3]~output_o\;

data_address_io(4) <= \data_address_io[4]~output_o\;

data_address_io(5) <= \data_address_io[5]~output_o\;

data_address_io(6) <= \data_address_io[6]~output_o\;

data_address_io(7) <= \data_address_io[7]~output_o\;
END structure;


