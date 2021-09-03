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

-- DATE "08/31/2021 23:30:07"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	decod_3x8 IS
    PORT (
	encoder : IN std_logic_vector(2 DOWNTO 0);
	output_port : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END decod_3x8;

-- Design Ports Information
-- output_port[0]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_port[1]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_port[2]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_port[3]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_port[4]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_port[5]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_port[6]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_port[7]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encoder[2]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encoder[0]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encoder[1]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF decod_3x8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_encoder : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_output_port : std_logic_vector(7 DOWNTO 0);
SIGNAL \output_port[0]~output_o\ : std_logic;
SIGNAL \output_port[1]~output_o\ : std_logic;
SIGNAL \output_port[2]~output_o\ : std_logic;
SIGNAL \output_port[3]~output_o\ : std_logic;
SIGNAL \output_port[4]~output_o\ : std_logic;
SIGNAL \output_port[5]~output_o\ : std_logic;
SIGNAL \output_port[6]~output_o\ : std_logic;
SIGNAL \output_port[7]~output_o\ : std_logic;
SIGNAL \encoder[0]~input_o\ : std_logic;
SIGNAL \encoder[1]~input_o\ : std_logic;
SIGNAL \encoder[2]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_encoder <= encoder;
output_port <= ww_output_port;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y4_N16
\output_port[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \output_port[0]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\output_port[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => \output_port[1]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\output_port[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~2_combout\,
	devoe => ww_devoe,
	o => \output_port[2]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\output_port[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~3_combout\,
	devoe => ww_devoe,
	o => \output_port[3]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\output_port[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~4_combout\,
	devoe => ww_devoe,
	o => \output_port[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\output_port[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~5_combout\,
	devoe => ww_devoe,
	o => \output_port[5]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\output_port[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~6_combout\,
	devoe => ww_devoe,
	o => \output_port[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\output_port[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~7_combout\,
	devoe => ww_devoe,
	o => \output_port[7]~output_o\);

-- Location: IOIBUF_X34_Y12_N1
\encoder[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_encoder(0),
	o => \encoder[0]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\encoder[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_encoder(1),
	o => \encoder[1]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\encoder[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_encoder(2),
	o => \encoder[2]~input_o\);

-- Location: LCCOMB_X32_Y4_N24
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\encoder[0]~input_o\ & (!\encoder[1]~input_o\ & !\encoder[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder[0]~input_o\,
	datac => \encoder[1]~input_o\,
	datad => \encoder[2]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X32_Y4_N10
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\encoder[0]~input_o\ & (!\encoder[1]~input_o\ & !\encoder[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder[0]~input_o\,
	datac => \encoder[1]~input_o\,
	datad => \encoder[2]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X32_Y4_N12
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (!\encoder[0]~input_o\ & (\encoder[1]~input_o\ & !\encoder[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder[0]~input_o\,
	datac => \encoder[1]~input_o\,
	datad => \encoder[2]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X32_Y4_N6
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\encoder[0]~input_o\ & (\encoder[1]~input_o\ & !\encoder[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder[0]~input_o\,
	datac => \encoder[1]~input_o\,
	datad => \encoder[2]~input_o\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X32_Y4_N16
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (!\encoder[0]~input_o\ & (!\encoder[1]~input_o\ & \encoder[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder[0]~input_o\,
	datac => \encoder[1]~input_o\,
	datad => \encoder[2]~input_o\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X32_Y4_N18
\Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\encoder[0]~input_o\ & (!\encoder[1]~input_o\ & \encoder[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder[0]~input_o\,
	datac => \encoder[1]~input_o\,
	datad => \encoder[2]~input_o\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X32_Y4_N4
\Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (!\encoder[0]~input_o\ & (\encoder[1]~input_o\ & \encoder[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder[0]~input_o\,
	datac => \encoder[1]~input_o\,
	datad => \encoder[2]~input_o\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X32_Y4_N22
\Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\encoder[0]~input_o\ & (\encoder[1]~input_o\ & \encoder[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder[0]~input_o\,
	datac => \encoder[1]~input_o\,
	datad => \encoder[2]~input_o\,
	combout => \Mux7~7_combout\);

ww_output_port(0) <= \output_port[0]~output_o\;

ww_output_port(1) <= \output_port[1]~output_o\;

ww_output_port(2) <= \output_port[2]~output_o\;

ww_output_port(3) <= \output_port[3]~output_o\;

ww_output_port(4) <= \output_port[4]~output_o\;

ww_output_port(5) <= \output_port[5]~output_o\;

ww_output_port(6) <= \output_port[6]~output_o\;

ww_output_port(7) <= \output_port[7]~output_o\;
END structure;


