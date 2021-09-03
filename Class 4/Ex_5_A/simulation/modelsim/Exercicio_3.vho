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

-- DATE "08/31/2021 21:52:48"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
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

ENTITY 	Exercicio_3 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	en_W_R : IN std_logic;
	input_data : IN std_logic_vector(2 DOWNTO 0);
	in_address : IN std_logic_vector(2 DOWNTO 0);
	out_address : IN std_logic_vector(2 DOWNTO 0);
	output_data : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END Exercicio_3;

-- Design Ports Information
-- output_data[0]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_data[1]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_data[2]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_address[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_address[1]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_address[2]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_W_R	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_data[0]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_address[0]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_address[1]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_address[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_data[1]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_data[2]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Exercicio_3 IS
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
SIGNAL ww_input_data : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_in_address : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_out_address : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_output_data : std_logic_vector(2 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output_data[0]~output_o\ : std_logic;
SIGNAL \output_data[1]~output_o\ : std_logic;
SIGNAL \output_data[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \out_address[2]~input_o\ : std_logic;
SIGNAL \input_data[0]~input_o\ : std_logic;
SIGNAL \ram_s[2][0]~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \in_address[1]~input_o\ : std_logic;
SIGNAL \in_address[2]~input_o\ : std_logic;
SIGNAL \en_W_R~input_o\ : std_logic;
SIGNAL \in_address[0]~input_o\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \ram_s[2][0]~q\ : std_logic;
SIGNAL \out_address[1]~input_o\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \ram_s[3][0]~q\ : std_logic;
SIGNAL \out_address[0]~input_o\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \ram_s[0][0]~q\ : std_logic;
SIGNAL \ram_s[1][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \ram_s[1][0]~q\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \ram_s[5][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \ram_s[5][0]~q\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \ram_s[7][0]~q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \ram_s[4][0]~q\ : std_logic;
SIGNAL \ram_s[6][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \ram_s[6][0]~q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \ram_output_data[0]~0_combout\ : std_logic;
SIGNAL \input_data[1]~input_o\ : std_logic;
SIGNAL \ram_s[2][1]~q\ : std_logic;
SIGNAL \ram_s[3][1]~q\ : std_logic;
SIGNAL \ram_s[0][1]~q\ : std_logic;
SIGNAL \ram_s[1][1]~q\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \ram_s[5][1]~q\ : std_logic;
SIGNAL \ram_s[7][1]~q\ : std_logic;
SIGNAL \ram_s[4][1]~q\ : std_logic;
SIGNAL \ram_s[6][1]~q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \input_data[2]~input_o\ : std_logic;
SIGNAL \ram_s[2][2]~feeder_combout\ : std_logic;
SIGNAL \ram_s[2][2]~q\ : std_logic;
SIGNAL \ram_s[3][2]~q\ : std_logic;
SIGNAL \ram_s[0][2]~q\ : std_logic;
SIGNAL \ram_s[1][2]~q\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \ram_s[5][2]~feeder_combout\ : std_logic;
SIGNAL \ram_s[5][2]~q\ : std_logic;
SIGNAL \ram_s[7][2]~q\ : std_logic;
SIGNAL \ram_s[4][2]~q\ : std_logic;
SIGNAL \ram_s[6][2]~feeder_combout\ : std_logic;
SIGNAL \ram_s[6][2]~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL ram_output_data : std_logic_vector(2 DOWNTO 0);

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
ww_input_data <= input_data;
ww_in_address <= in_address;
ww_out_address <= out_address;
output_data <= ww_output_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X9_Y24_N9
\output_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ram_output_data(0),
	devoe => ww_devoe,
	o => \output_data[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\output_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ram_output_data(1),
	devoe => ww_devoe,
	o => \output_data[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\output_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ram_output_data(2),
	devoe => ww_devoe,
	o => \output_data[2]~output_o\);

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

-- Location: IOIBUF_X23_Y24_N1
\out_address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_out_address(2),
	o => \out_address[2]~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\input_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_data(0),
	o => \input_data[0]~input_o\);

-- Location: LCCOMB_X14_Y22_N24
\ram_s[2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[2][0]~feeder_combout\ = \input_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data[0]~input_o\,
	combout => \ram_s[2][0]~feeder_combout\);

-- Location: IOIBUF_X0_Y11_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: IOIBUF_X18_Y24_N15
\in_address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_address(1),
	o => \in_address[1]~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\in_address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_address(2),
	o => \in_address[2]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\en_W_R~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en_W_R,
	o => \en_W_R~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\in_address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_address(0),
	o => \in_address[0]~input_o\);

-- Location: LCCOMB_X18_Y22_N18
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (\in_address[1]~input_o\ & (!\in_address[2]~input_o\ & (\en_W_R~input_o\ & !\in_address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_address[1]~input_o\,
	datab => \in_address[2]~input_o\,
	datac => \en_W_R~input_o\,
	datad => \in_address[0]~input_o\,
	combout => \Decoder0~4_combout\);

-- Location: FF_X14_Y22_N25
\ram_s[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[2][0]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[2][0]~q\);

-- Location: IOIBUF_X16_Y24_N22
\out_address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_out_address(1),
	o => \out_address[1]~input_o\);

-- Location: LCCOMB_X18_Y22_N12
\Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (\in_address[1]~input_o\ & (!\in_address[2]~input_o\ & (\en_W_R~input_o\ & \in_address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_address[1]~input_o\,
	datab => \in_address[2]~input_o\,
	datac => \en_W_R~input_o\,
	datad => \in_address[0]~input_o\,
	combout => \Decoder0~7_combout\);

-- Location: FF_X18_Y22_N27
\ram_s[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_data[0]~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[3][0]~q\);

-- Location: IOIBUF_X16_Y24_N15
\out_address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_out_address(0),
	o => \out_address[0]~input_o\);

-- Location: LCCOMB_X18_Y22_N14
\Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!\in_address[1]~input_o\ & (!\in_address[2]~input_o\ & (\en_W_R~input_o\ & !\in_address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_address[1]~input_o\,
	datab => \in_address[2]~input_o\,
	datac => \en_W_R~input_o\,
	datad => \in_address[0]~input_o\,
	combout => \Decoder0~6_combout\);

-- Location: FF_X19_Y22_N27
\ram_s[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_data[0]~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[0][0]~q\);

-- Location: LCCOMB_X19_Y22_N28
\ram_s[1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[1][0]~feeder_combout\ = \input_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data[0]~input_o\,
	combout => \ram_s[1][0]~feeder_combout\);

-- Location: LCCOMB_X18_Y22_N16
\Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!\in_address[1]~input_o\ & (!\in_address[2]~input_o\ & (\en_W_R~input_o\ & \in_address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_address[1]~input_o\,
	datab => \in_address[2]~input_o\,
	datac => \en_W_R~input_o\,
	datad => \in_address[0]~input_o\,
	combout => \Decoder0~5_combout\);

-- Location: FF_X19_Y22_N29
\ram_s[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[1][0]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[1][0]~q\);

-- Location: LCCOMB_X19_Y22_N26
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\out_address[0]~input_o\ & ((\out_address[1]~input_o\) # ((\ram_s[1][0]~q\)))) # (!\out_address[0]~input_o\ & (!\out_address[1]~input_o\ & (\ram_s[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_address[0]~input_o\,
	datab => \out_address[1]~input_o\,
	datac => \ram_s[0][0]~q\,
	datad => \ram_s[1][0]~q\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X18_Y22_N26
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\out_address[1]~input_o\ & ((\Mux2~2_combout\ & ((\ram_s[3][0]~q\))) # (!\Mux2~2_combout\ & (\ram_s[2][0]~q\)))) # (!\out_address[1]~input_o\ & (((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_s[2][0]~q\,
	datab => \out_address[1]~input_o\,
	datac => \ram_s[3][0]~q\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X16_Y22_N24
\ram_s[5][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[5][0]~feeder_combout\ = \input_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data[0]~input_o\,
	combout => \ram_s[5][0]~feeder_combout\);

-- Location: LCCOMB_X18_Y22_N6
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!\in_address[1]~input_o\ & (\in_address[2]~input_o\ & (\en_W_R~input_o\ & \in_address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_address[1]~input_o\,
	datab => \in_address[2]~input_o\,
	datac => \en_W_R~input_o\,
	datad => \in_address[0]~input_o\,
	combout => \Decoder0~0_combout\);

-- Location: FF_X16_Y22_N25
\ram_s[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[5][0]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[5][0]~q\);

-- Location: LCCOMB_X18_Y22_N20
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (\in_address[1]~input_o\ & (\in_address[2]~input_o\ & (\en_W_R~input_o\ & \in_address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_address[1]~input_o\,
	datab => \in_address[2]~input_o\,
	datac => \en_W_R~input_o\,
	datad => \in_address[0]~input_o\,
	combout => \Decoder0~3_combout\);

-- Location: FF_X17_Y22_N19
\ram_s[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_data[0]~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[7][0]~q\);

-- Location: LCCOMB_X18_Y22_N10
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!\in_address[1]~input_o\ & (\in_address[2]~input_o\ & (\en_W_R~input_o\ & !\in_address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_address[1]~input_o\,
	datab => \in_address[2]~input_o\,
	datac => \en_W_R~input_o\,
	datad => \in_address[0]~input_o\,
	combout => \Decoder0~2_combout\);

-- Location: FF_X17_Y22_N29
\ram_s[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_data[0]~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[4][0]~q\);

-- Location: LCCOMB_X16_Y22_N10
\ram_s[6][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[6][0]~feeder_combout\ = \input_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data[0]~input_o\,
	combout => \ram_s[6][0]~feeder_combout\);

-- Location: LCCOMB_X18_Y22_N24
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (\in_address[1]~input_o\ & (\in_address[2]~input_o\ & (\en_W_R~input_o\ & !\in_address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_address[1]~input_o\,
	datab => \in_address[2]~input_o\,
	datac => \en_W_R~input_o\,
	datad => \in_address[0]~input_o\,
	combout => \Decoder0~1_combout\);

-- Location: FF_X16_Y22_N11
\ram_s[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[6][0]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[6][0]~q\);

-- Location: LCCOMB_X17_Y22_N28
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\out_address[0]~input_o\ & (\out_address[1]~input_o\)) # (!\out_address[0]~input_o\ & ((\out_address[1]~input_o\ & ((\ram_s[6][0]~q\))) # (!\out_address[1]~input_o\ & (\ram_s[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_address[0]~input_o\,
	datab => \out_address[1]~input_o\,
	datac => \ram_s[4][0]~q\,
	datad => \ram_s[6][0]~q\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X17_Y22_N18
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\out_address[0]~input_o\ & ((\Mux2~0_combout\ & ((\ram_s[7][0]~q\))) # (!\Mux2~0_combout\ & (\ram_s[5][0]~q\)))) # (!\out_address[0]~input_o\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_address[0]~input_o\,
	datab => \ram_s[5][0]~q\,
	datac => \ram_s[7][0]~q\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X18_Y22_N0
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\out_address[2]~input_o\ & ((\Mux2~1_combout\))) # (!\out_address[2]~input_o\ & (\Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_address[2]~input_o\,
	datac => \Mux2~3_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X18_Y22_N8
\ram_output_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_output_data[0]~0_combout\ = (!\en_W_R~input_o\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_W_R~input_o\,
	datac => \rst~input_o\,
	combout => \ram_output_data[0]~0_combout\);

-- Location: FF_X18_Y22_N1
\ram_output_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux2~4_combout\,
	ena => \ram_output_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_output_data(0));

-- Location: IOIBUF_X13_Y24_N15
\input_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_data(1),
	o => \input_data[1]~input_o\);

-- Location: FF_X14_Y22_N7
\ram_s[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_data[1]~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[2][1]~q\);

-- Location: FF_X18_Y22_N23
\ram_s[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_data[1]~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[3][1]~q\);

-- Location: FF_X19_Y22_N7
\ram_s[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_data[1]~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[0][1]~q\);

-- Location: FF_X19_Y22_N13
\ram_s[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_data[1]~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[1][1]~q\);

-- Location: LCCOMB_X19_Y22_N6
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\out_address[0]~input_o\ & ((\out_address[1]~input_o\) # ((\ram_s[1][1]~q\)))) # (!\out_address[0]~input_o\ & (!\out_address[1]~input_o\ & (\ram_s[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_address[0]~input_o\,
	datab => \out_address[1]~input_o\,
	datac => \ram_s[0][1]~q\,
	datad => \ram_s[1][1]~q\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X18_Y22_N22
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\out_address[1]~input_o\ & ((\Mux1~2_combout\ & ((\ram_s[3][1]~q\))) # (!\Mux1~2_combout\ & (\ram_s[2][1]~q\)))) # (!\out_address[1]~input_o\ & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_s[2][1]~q\,
	datab => \out_address[1]~input_o\,
	datac => \ram_s[3][1]~q\,
	datad => \Mux1~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: FF_X16_Y22_N21
\ram_s[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_data[1]~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[5][1]~q\);

-- Location: FF_X17_Y22_N31
\ram_s[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_data[1]~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[7][1]~q\);

-- Location: FF_X17_Y22_N17
\ram_s[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_data[1]~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[4][1]~q\);

-- Location: FF_X16_Y22_N15
\ram_s[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_data[1]~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[6][1]~q\);

-- Location: LCCOMB_X17_Y22_N16
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\out_address[0]~input_o\ & (\out_address[1]~input_o\)) # (!\out_address[0]~input_o\ & ((\out_address[1]~input_o\ & ((\ram_s[6][1]~q\))) # (!\out_address[1]~input_o\ & (\ram_s[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_address[0]~input_o\,
	datab => \out_address[1]~input_o\,
	datac => \ram_s[4][1]~q\,
	datad => \ram_s[6][1]~q\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X17_Y22_N30
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\out_address[0]~input_o\ & ((\Mux1~0_combout\ & ((\ram_s[7][1]~q\))) # (!\Mux1~0_combout\ & (\ram_s[5][1]~q\)))) # (!\out_address[0]~input_o\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_address[0]~input_o\,
	datab => \ram_s[5][1]~q\,
	datac => \ram_s[7][1]~q\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X18_Y22_N2
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\out_address[2]~input_o\ & ((\Mux1~1_combout\))) # (!\out_address[2]~input_o\ & (\Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_address[2]~input_o\,
	datac => \Mux1~3_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux1~4_combout\);

-- Location: FF_X18_Y22_N3
\ram_output_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux1~4_combout\,
	ena => \ram_output_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_output_data(1));

-- Location: IOIBUF_X13_Y24_N22
\input_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_data(2),
	o => \input_data[2]~input_o\);

-- Location: LCCOMB_X14_Y22_N20
\ram_s[2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[2][2]~feeder_combout\ = \input_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data[2]~input_o\,
	combout => \ram_s[2][2]~feeder_combout\);

-- Location: FF_X14_Y22_N21
\ram_s[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[2][2]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[2][2]~q\);

-- Location: FF_X18_Y22_N5
\ram_s[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_data[2]~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[3][2]~q\);

-- Location: FF_X19_Y22_N19
\ram_s[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_data[2]~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[0][2]~q\);

-- Location: FF_X19_Y22_N17
\ram_s[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_data[2]~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[1][2]~q\);

-- Location: LCCOMB_X19_Y22_N18
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\out_address[0]~input_o\ & ((\out_address[1]~input_o\) # ((\ram_s[1][2]~q\)))) # (!\out_address[0]~input_o\ & (!\out_address[1]~input_o\ & (\ram_s[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_address[0]~input_o\,
	datab => \out_address[1]~input_o\,
	datac => \ram_s[0][2]~q\,
	datad => \ram_s[1][2]~q\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X18_Y22_N4
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\out_address[1]~input_o\ & ((\Mux0~2_combout\ & ((\ram_s[3][2]~q\))) # (!\Mux0~2_combout\ & (\ram_s[2][2]~q\)))) # (!\out_address[1]~input_o\ & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_s[2][2]~q\,
	datab => \out_address[1]~input_o\,
	datac => \ram_s[3][2]~q\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X16_Y22_N28
\ram_s[5][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[5][2]~feeder_combout\ = \input_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data[2]~input_o\,
	combout => \ram_s[5][2]~feeder_combout\);

-- Location: FF_X16_Y22_N29
\ram_s[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[5][2]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[5][2]~q\);

-- Location: FF_X17_Y22_N15
\ram_s[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_data[2]~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[7][2]~q\);

-- Location: FF_X17_Y22_N13
\ram_s[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_data[2]~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[4][2]~q\);

-- Location: LCCOMB_X16_Y22_N2
\ram_s[6][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_s[6][2]~feeder_combout\ = \input_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data[2]~input_o\,
	combout => \ram_s[6][2]~feeder_combout\);

-- Location: FF_X16_Y22_N3
\ram_s[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_s[6][2]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_s[6][2]~q\);

-- Location: LCCOMB_X17_Y22_N12
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\out_address[0]~input_o\ & (\out_address[1]~input_o\)) # (!\out_address[0]~input_o\ & ((\out_address[1]~input_o\ & ((\ram_s[6][2]~q\))) # (!\out_address[1]~input_o\ & (\ram_s[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_address[0]~input_o\,
	datab => \out_address[1]~input_o\,
	datac => \ram_s[4][2]~q\,
	datad => \ram_s[6][2]~q\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X17_Y22_N14
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\out_address[0]~input_o\ & ((\Mux0~0_combout\ & ((\ram_s[7][2]~q\))) # (!\Mux0~0_combout\ & (\ram_s[5][2]~q\)))) # (!\out_address[0]~input_o\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_address[0]~input_o\,
	datab => \ram_s[5][2]~q\,
	datac => \ram_s[7][2]~q\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X18_Y22_N28
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\out_address[2]~input_o\ & ((\Mux0~1_combout\))) # (!\out_address[2]~input_o\ & (\Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_address[2]~input_o\,
	datac => \Mux0~3_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux0~4_combout\);

-- Location: FF_X18_Y22_N29
\ram_output_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux0~4_combout\,
	ena => \ram_output_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_output_data(2));

ww_output_data(0) <= \output_data[0]~output_o\;

ww_output_data(1) <= \output_data[1]~output_o\;

ww_output_data(2) <= \output_data[2]~output_o\;
END structure;


