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

-- DATE "09/07/2021 21:02:05"

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

ENTITY 	SN74595 IS
    PORT (
	master_clk_i : IN std_logic;
	oe_i : IN std_logic;
	rclk_i : IN std_logic;
	srclr_i : IN std_logic;
	srclk_i : IN std_logic;
	ser_i : IN std_logic;
	q_o : BUFFER std_logic_vector(7 DOWNTO 0);
	qh_o : BUFFER std_logic
	);
END SN74595;

-- Design Ports Information
-- srclk_i	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_o[0]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_o[1]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_o[2]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_o[3]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_o[4]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_o[5]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_o[6]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_o[7]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qh_o	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- srclr_i	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oe_i	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rclk_i	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_clk_i	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ser_i	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SN74595 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_master_clk_i : std_logic;
SIGNAL ww_oe_i : std_logic;
SIGNAL ww_rclk_i : std_logic;
SIGNAL ww_srclr_i : std_logic;
SIGNAL ww_srclk_i : std_logic;
SIGNAL ww_ser_i : std_logic;
SIGNAL ww_q_o : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_qh_o : std_logic;
SIGNAL \oe_i~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rclk_s~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \srclr_i~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \srclk_s~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \master_clk_i~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \srclk_i~input_o\ : std_logic;
SIGNAL \q_o[0]~output_o\ : std_logic;
SIGNAL \q_o[1]~output_o\ : std_logic;
SIGNAL \q_o[2]~output_o\ : std_logic;
SIGNAL \q_o[3]~output_o\ : std_logic;
SIGNAL \q_o[4]~output_o\ : std_logic;
SIGNAL \q_o[5]~output_o\ : std_logic;
SIGNAL \q_o[6]~output_o\ : std_logic;
SIGNAL \q_o[7]~output_o\ : std_logic;
SIGNAL \qh_o~output_o\ : std_logic;
SIGNAL \master_clk_i~input_o\ : std_logic;
SIGNAL \master_clk_i~inputclkctrl_outclk\ : std_logic;
SIGNAL \rclk_i~input_o\ : std_logic;
SIGNAL \rclk_s~feeder_combout\ : std_logic;
SIGNAL \rclk_s~q\ : std_logic;
SIGNAL \rclk_s~clkctrl_outclk\ : std_logic;
SIGNAL \srclk_s~feeder_combout\ : std_logic;
SIGNAL \srclk_s~q\ : std_logic;
SIGNAL \srclk_s~clkctrl_outclk\ : std_logic;
SIGNAL \ser_i~input_o\ : std_logic;
SIGNAL \q_ser_s[0]~feeder_combout\ : std_logic;
SIGNAL \srclr_i~input_o\ : std_logic;
SIGNAL \srclr_i~inputclkctrl_outclk\ : std_logic;
SIGNAL \q_o[0]~reg0feeder_combout\ : std_logic;
SIGNAL \q_o[0]~reg0_q\ : std_logic;
SIGNAL \q_o[0]~enfeeder_combout\ : std_logic;
SIGNAL \oe_i~input_o\ : std_logic;
SIGNAL \oe_i~inputclkctrl_outclk\ : std_logic;
SIGNAL \q_o[0]~en_q\ : std_logic;
SIGNAL \q_ser_s[1]~feeder_combout\ : std_logic;
SIGNAL \q_o[1]~reg0feeder_combout\ : std_logic;
SIGNAL \q_o[1]~reg0_q\ : std_logic;
SIGNAL \q_o[1]~enfeeder_combout\ : std_logic;
SIGNAL \q_o[1]~en_q\ : std_logic;
SIGNAL \q_ser_s[2]~feeder_combout\ : std_logic;
SIGNAL \q_o[2]~reg0feeder_combout\ : std_logic;
SIGNAL \q_o[2]~reg0_q\ : std_logic;
SIGNAL \q_o[2]~enfeeder_combout\ : std_logic;
SIGNAL \q_o[2]~en_q\ : std_logic;
SIGNAL \q_ser_s[3]~feeder_combout\ : std_logic;
SIGNAL \q_o[3]~reg0feeder_combout\ : std_logic;
SIGNAL \q_o[3]~reg0_q\ : std_logic;
SIGNAL \q_o[3]~enfeeder_combout\ : std_logic;
SIGNAL \q_o[3]~en_q\ : std_logic;
SIGNAL \q_ser_s[4]~feeder_combout\ : std_logic;
SIGNAL \q_o[4]~reg0feeder_combout\ : std_logic;
SIGNAL \q_o[4]~reg0_q\ : std_logic;
SIGNAL \q_o[4]~enfeeder_combout\ : std_logic;
SIGNAL \q_o[4]~en_q\ : std_logic;
SIGNAL \q_ser_s[5]~feeder_combout\ : std_logic;
SIGNAL \q_o[5]~reg0feeder_combout\ : std_logic;
SIGNAL \q_o[5]~reg0_q\ : std_logic;
SIGNAL \q_o[5]~enfeeder_combout\ : std_logic;
SIGNAL \q_o[5]~en_q\ : std_logic;
SIGNAL \q_ser_s[6]~feeder_combout\ : std_logic;
SIGNAL \q_o[6]~reg0feeder_combout\ : std_logic;
SIGNAL \q_o[6]~reg0_q\ : std_logic;
SIGNAL \q_o[6]~enfeeder_combout\ : std_logic;
SIGNAL \q_o[6]~en_q\ : std_logic;
SIGNAL \q_ser_s[7]~feeder_combout\ : std_logic;
SIGNAL \q_o[7]~reg0feeder_combout\ : std_logic;
SIGNAL \q_o[7]~reg0_q\ : std_logic;
SIGNAL \q_o[7]~enfeeder_combout\ : std_logic;
SIGNAL \q_o[7]~en_q\ : std_logic;
SIGNAL q_ser_s : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_srclr_i~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_master_clk_i <= master_clk_i;
ww_oe_i <= oe_i;
ww_rclk_i <= rclk_i;
ww_srclr_i <= srclr_i;
ww_srclk_i <= srclk_i;
ww_ser_i <= ser_i;
q_o <= ww_q_o;
qh_o <= ww_qh_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\oe_i~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \oe_i~input_o\);

\rclk_s~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rclk_s~q\);

\srclr_i~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \srclr_i~input_o\);

\srclk_s~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \srclk_s~q\);

\master_clk_i~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \master_clk_i~input_o\);
\ALT_INV_srclr_i~inputclkctrl_outclk\ <= NOT \srclr_i~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y24_N9
\q_o[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q_o[0]~reg0_q\,
	oe => \q_o[0]~en_q\,
	devoe => ww_devoe,
	o => \q_o[0]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\q_o[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q_o[1]~reg0_q\,
	oe => \q_o[1]~en_q\,
	devoe => ww_devoe,
	o => \q_o[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\q_o[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q_o[2]~reg0_q\,
	oe => \q_o[2]~en_q\,
	devoe => ww_devoe,
	o => \q_o[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\q_o[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q_o[3]~reg0_q\,
	oe => \q_o[3]~en_q\,
	devoe => ww_devoe,
	o => \q_o[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\q_o[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q_o[4]~reg0_q\,
	oe => \q_o[4]~en_q\,
	devoe => ww_devoe,
	o => \q_o[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\q_o[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q_o[5]~reg0_q\,
	oe => \q_o[5]~en_q\,
	devoe => ww_devoe,
	o => \q_o[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\q_o[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q_o[6]~reg0_q\,
	oe => \q_o[6]~en_q\,
	devoe => ww_devoe,
	o => \q_o[6]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\q_o[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q_o[7]~reg0_q\,
	oe => \q_o[7]~en_q\,
	devoe => ww_devoe,
	o => \q_o[7]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\qh_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q_ser_s(7),
	devoe => ww_devoe,
	o => \qh_o~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\master_clk_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_master_clk_i,
	o => \master_clk_i~input_o\);

-- Location: CLKCTRL_G2
\master_clk_i~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \master_clk_i~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \master_clk_i~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y10_N8
\rclk_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rclk_i,
	o => \rclk_i~input_o\);

-- Location: LCCOMB_X33_Y12_N2
\rclk_s~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rclk_s~feeder_combout\ = \rclk_i~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rclk_i~input_o\,
	combout => \rclk_s~feeder_combout\);

-- Location: FF_X33_Y12_N3
rclk_s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk_i~inputclkctrl_outclk\,
	d => \rclk_s~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rclk_s~q\);

-- Location: CLKCTRL_G7
\rclk_s~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rclk_s~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rclk_s~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y12_N4
\srclk_s~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \srclk_s~feeder_combout\ = \rclk_i~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rclk_i~input_o\,
	combout => \srclk_s~feeder_combout\);

-- Location: FF_X33_Y12_N5
srclk_s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk_i~inputclkctrl_outclk\,
	d => \srclk_s~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \srclk_s~q\);

-- Location: CLKCTRL_G8
\srclk_s~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \srclk_s~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \srclk_s~clkctrl_outclk\);

-- Location: IOIBUF_X18_Y24_N22
\ser_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ser_i,
	o => \ser_i~input_o\);

-- Location: LCCOMB_X24_Y23_N12
\q_ser_s[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_ser_s[0]~feeder_combout\ = \ser_i~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ser_i~input_o\,
	combout => \q_ser_s[0]~feeder_combout\);

-- Location: IOIBUF_X0_Y11_N22
\srclr_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_srclr_i,
	o => \srclr_i~input_o\);

-- Location: CLKCTRL_G0
\srclr_i~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \srclr_i~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \srclr_i~inputclkctrl_outclk\);

-- Location: FF_X24_Y23_N13
\q_ser_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \srclk_s~clkctrl_outclk\,
	d => \q_ser_s[0]~feeder_combout\,
	clrn => \ALT_INV_srclr_i~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_ser_s(0));

-- Location: LCCOMB_X24_Y23_N14
\q_o[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_o[0]~reg0feeder_combout\ = q_ser_s(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => q_ser_s(0),
	combout => \q_o[0]~reg0feeder_combout\);

-- Location: FF_X24_Y23_N15
\q_o[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rclk_s~clkctrl_outclk\,
	d => \q_o[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q_o[0]~reg0_q\);

-- Location: LCCOMB_X23_Y23_N0
\q_o[0]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_o[0]~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \q_o[0]~enfeeder_combout\);

-- Location: IOIBUF_X0_Y11_N15
\oe_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_oe_i,
	o => \oe_i~input_o\);

-- Location: CLKCTRL_G1
\oe_i~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \oe_i~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \oe_i~inputclkctrl_outclk\);

-- Location: FF_X23_Y23_N1
\q_o[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rclk_s~clkctrl_outclk\,
	d => \q_o[0]~enfeeder_combout\,
	clrn => \oe_i~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q_o[0]~en_q\);

-- Location: LCCOMB_X24_Y23_N6
\q_ser_s[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_ser_s[1]~feeder_combout\ = q_ser_s(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => q_ser_s(0),
	combout => \q_ser_s[1]~feeder_combout\);

-- Location: FF_X24_Y23_N7
\q_ser_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \srclk_s~clkctrl_outclk\,
	d => \q_ser_s[1]~feeder_combout\,
	clrn => \ALT_INV_srclr_i~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_ser_s(1));

-- Location: LCCOMB_X24_Y23_N0
\q_o[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_o[1]~reg0feeder_combout\ = q_ser_s(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => q_ser_s(1),
	combout => \q_o[1]~reg0feeder_combout\);

-- Location: FF_X24_Y23_N1
\q_o[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rclk_s~clkctrl_outclk\,
	d => \q_o[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q_o[1]~reg0_q\);

-- Location: LCCOMB_X18_Y23_N0
\q_o[1]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_o[1]~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \q_o[1]~enfeeder_combout\);

-- Location: FF_X18_Y23_N1
\q_o[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rclk_s~clkctrl_outclk\,
	d => \q_o[1]~enfeeder_combout\,
	clrn => \oe_i~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q_o[1]~en_q\);

-- Location: LCCOMB_X24_Y23_N20
\q_ser_s[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_ser_s[2]~feeder_combout\ = q_ser_s(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => q_ser_s(1),
	combout => \q_ser_s[2]~feeder_combout\);

-- Location: FF_X24_Y23_N21
\q_ser_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \srclk_s~clkctrl_outclk\,
	d => \q_ser_s[2]~feeder_combout\,
	clrn => \ALT_INV_srclr_i~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_ser_s(2));

-- Location: LCCOMB_X24_Y23_N30
\q_o[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_o[2]~reg0feeder_combout\ = q_ser_s(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => q_ser_s(2),
	combout => \q_o[2]~reg0feeder_combout\);

-- Location: FF_X24_Y23_N31
\q_o[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rclk_s~clkctrl_outclk\,
	d => \q_o[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q_o[2]~reg0_q\);

-- Location: LCCOMB_X16_Y20_N4
\q_o[2]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_o[2]~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \q_o[2]~enfeeder_combout\);

-- Location: FF_X16_Y20_N5
\q_o[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rclk_s~clkctrl_outclk\,
	d => \q_o[2]~enfeeder_combout\,
	clrn => \oe_i~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q_o[2]~en_q\);

-- Location: LCCOMB_X24_Y23_N10
\q_ser_s[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_ser_s[3]~feeder_combout\ = q_ser_s(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => q_ser_s(2),
	combout => \q_ser_s[3]~feeder_combout\);

-- Location: FF_X24_Y23_N11
\q_ser_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \srclk_s~clkctrl_outclk\,
	d => \q_ser_s[3]~feeder_combout\,
	clrn => \ALT_INV_srclr_i~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_ser_s(3));

-- Location: LCCOMB_X24_Y23_N4
\q_o[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_o[3]~reg0feeder_combout\ = q_ser_s(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => q_ser_s(3),
	combout => \q_o[3]~reg0feeder_combout\);

-- Location: FF_X24_Y23_N5
\q_o[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rclk_s~clkctrl_outclk\,
	d => \q_o[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q_o[3]~reg0_q\);

-- Location: LCCOMB_X23_Y23_N2
\q_o[3]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_o[3]~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \q_o[3]~enfeeder_combout\);

-- Location: FF_X23_Y23_N3
\q_o[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rclk_s~clkctrl_outclk\,
	d => \q_o[3]~enfeeder_combout\,
	clrn => \oe_i~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q_o[3]~en_q\);

-- Location: LCCOMB_X24_Y23_N24
\q_ser_s[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_ser_s[4]~feeder_combout\ = q_ser_s(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => q_ser_s(3),
	combout => \q_ser_s[4]~feeder_combout\);

-- Location: FF_X24_Y23_N25
\q_ser_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \srclk_s~clkctrl_outclk\,
	d => \q_ser_s[4]~feeder_combout\,
	clrn => \ALT_INV_srclr_i~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_ser_s(4));

-- Location: LCCOMB_X24_Y23_N26
\q_o[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_o[4]~reg0feeder_combout\ = q_ser_s(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => q_ser_s(4),
	combout => \q_o[4]~reg0feeder_combout\);

-- Location: FF_X24_Y23_N27
\q_o[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rclk_s~clkctrl_outclk\,
	d => \q_o[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q_o[4]~reg0_q\);

-- Location: LCCOMB_X28_Y23_N12
\q_o[4]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_o[4]~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \q_o[4]~enfeeder_combout\);

-- Location: FF_X28_Y23_N13
\q_o[4]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rclk_s~clkctrl_outclk\,
	d => \q_o[4]~enfeeder_combout\,
	clrn => \oe_i~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q_o[4]~en_q\);

-- Location: LCCOMB_X24_Y23_N18
\q_ser_s[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_ser_s[5]~feeder_combout\ = q_ser_s(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => q_ser_s(4),
	combout => \q_ser_s[5]~feeder_combout\);

-- Location: FF_X24_Y23_N19
\q_ser_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \srclk_s~clkctrl_outclk\,
	d => \q_ser_s[5]~feeder_combout\,
	clrn => \ALT_INV_srclr_i~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_ser_s(5));

-- Location: LCCOMB_X24_Y23_N8
\q_o[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_o[5]~reg0feeder_combout\ = q_ser_s(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => q_ser_s(5),
	combout => \q_o[5]~reg0feeder_combout\);

-- Location: FF_X24_Y23_N9
\q_o[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rclk_s~clkctrl_outclk\,
	d => \q_o[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q_o[5]~reg0_q\);

-- Location: LCCOMB_X16_Y20_N2
\q_o[5]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_o[5]~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \q_o[5]~enfeeder_combout\);

-- Location: FF_X16_Y20_N3
\q_o[5]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rclk_s~clkctrl_outclk\,
	d => \q_o[5]~enfeeder_combout\,
	clrn => \oe_i~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q_o[5]~en_q\);

-- Location: LCCOMB_X24_Y23_N2
\q_ser_s[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_ser_s[6]~feeder_combout\ = q_ser_s(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => q_ser_s(5),
	combout => \q_ser_s[6]~feeder_combout\);

-- Location: FF_X24_Y23_N3
\q_ser_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \srclk_s~clkctrl_outclk\,
	d => \q_ser_s[6]~feeder_combout\,
	clrn => \ALT_INV_srclr_i~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_ser_s(6));

-- Location: LCCOMB_X24_Y23_N22
\q_o[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_o[6]~reg0feeder_combout\ = q_ser_s(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => q_ser_s(6),
	combout => \q_o[6]~reg0feeder_combout\);

-- Location: FF_X24_Y23_N23
\q_o[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rclk_s~clkctrl_outclk\,
	d => \q_o[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q_o[6]~reg0_q\);

-- Location: LCCOMB_X16_Y20_N0
\q_o[6]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_o[6]~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \q_o[6]~enfeeder_combout\);

-- Location: FF_X16_Y20_N1
\q_o[6]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rclk_s~clkctrl_outclk\,
	d => \q_o[6]~enfeeder_combout\,
	clrn => \oe_i~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q_o[6]~en_q\);

-- Location: LCCOMB_X24_Y23_N16
\q_ser_s[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_ser_s[7]~feeder_combout\ = q_ser_s(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => q_ser_s(6),
	combout => \q_ser_s[7]~feeder_combout\);

-- Location: FF_X24_Y23_N17
\q_ser_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \srclk_s~clkctrl_outclk\,
	d => \q_ser_s[7]~feeder_combout\,
	clrn => \ALT_INV_srclr_i~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_ser_s(7));

-- Location: LCCOMB_X24_Y23_N28
\q_o[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_o[7]~reg0feeder_combout\ = q_ser_s(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => q_ser_s(7),
	combout => \q_o[7]~reg0feeder_combout\);

-- Location: FF_X24_Y23_N29
\q_o[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rclk_s~clkctrl_outclk\,
	d => \q_o[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q_o[7]~reg0_q\);

-- Location: LCCOMB_X28_Y23_N10
\q_o[7]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_o[7]~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \q_o[7]~enfeeder_combout\);

-- Location: FF_X28_Y23_N11
\q_o[7]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rclk_s~clkctrl_outclk\,
	d => \q_o[7]~enfeeder_combout\,
	clrn => \oe_i~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q_o[7]~en_q\);

-- Location: IOIBUF_X34_Y9_N22
\srclk_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_srclk_i,
	o => \srclk_i~input_o\);

ww_q_o(0) <= \q_o[0]~output_o\;

ww_q_o(1) <= \q_o[1]~output_o\;

ww_q_o(2) <= \q_o[2]~output_o\;

ww_q_o(3) <= \q_o[3]~output_o\;

ww_q_o(4) <= \q_o[4]~output_o\;

ww_q_o(5) <= \q_o[5]~output_o\;

ww_q_o(6) <= \q_o[6]~output_o\;

ww_q_o(7) <= \q_o[7]~output_o\;

ww_qh_o <= \qh_o~output_o\;
END structure;


