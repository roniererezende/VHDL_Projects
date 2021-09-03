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

-- DATE "09/02/2021 23:55:04"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counterupdown IS
    PORT (
	clk_in : IN std_logic;
	botao_count : IN std_logic;
	botao_load : IN std_logic;
	seletor_ud_input : IN std_logic;
	leds_saida : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END counterupdown;

-- Design Ports Information
-- leds_saida[0]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_saida[1]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_saida[2]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_saida[3]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botao_load	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seletor_ud_input	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botao_count	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counterupdown IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_botao_count : std_logic;
SIGNAL ww_botao_load : std_logic;
SIGNAL ww_seletor_ud_input : std_logic;
SIGNAL ww_leds_saida : std_logic_vector(3 DOWNTO 0);
SIGNAL \PLL_inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \PLL_inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \botao_load~input_o\ : std_logic;
SIGNAL \clk_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \botao_count~input_o\ : std_logic;
SIGNAL \deb_u|debounce[0]~0_combout\ : std_logic;
SIGNAL \deb_u|debounce[1]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[2]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[3]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[4]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[5]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[7]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[8]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[12]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[13]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[15]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[16]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[21]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[25]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[27]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[29]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[31]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[32]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[33]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[36]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[39]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[40]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[41]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[44]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[45]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[48]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[49]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[51]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[52]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[53]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[55]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[56]~feeder_combout\ : std_logic;
SIGNAL \deb_u|process_0~18_combout\ : std_logic;
SIGNAL \deb_u|process_0~17_combout\ : std_logic;
SIGNAL \deb_u|debounce[60]~feeder_combout\ : std_logic;
SIGNAL \deb_u|debounce[61]~feeder_combout\ : std_logic;
SIGNAL \deb_u|process_0~19_combout\ : std_logic;
SIGNAL \deb_u|process_0~16_combout\ : std_logic;
SIGNAL \deb_u|process_0~20_combout\ : std_logic;
SIGNAL \deb_u|debounce[63]~feeder_combout\ : std_logic;
SIGNAL \deb_u|process_0~8_combout\ : std_logic;
SIGNAL \deb_u|process_0~2_combout\ : std_logic;
SIGNAL \deb_u|process_0~1_combout\ : std_logic;
SIGNAL \deb_u|process_0~3_combout\ : std_logic;
SIGNAL \deb_u|pulse~q\ : std_logic;
SIGNAL \deb_u|process_0~0_combout\ : std_logic;
SIGNAL \deb_u|process_0~4_combout\ : std_logic;
SIGNAL \deb_u|process_0~9_combout\ : std_logic;
SIGNAL \deb_u|process_0~6_combout\ : std_logic;
SIGNAL \deb_u|process_0~5_combout\ : std_logic;
SIGNAL \deb_u|process_0~7_combout\ : std_logic;
SIGNAL \deb_u|process_0~10_combout\ : std_logic;
SIGNAL \deb_u|process_0~14_combout\ : std_logic;
SIGNAL \deb_u|process_0~13_combout\ : std_logic;
SIGNAL \deb_u|process_0~12_combout\ : std_logic;
SIGNAL \deb_u|process_0~11_combout\ : std_logic;
SIGNAL \deb_u|process_0~15_combout\ : std_logic;
SIGNAL \deb_u|process_0~21_combout\ : std_logic;
SIGNAL \deb_u|deb_out~q\ : std_logic;
SIGNAL \counter_s[0]~3_combout\ : std_logic;
SIGNAL \seletor_ud_input~input_o\ : std_logic;
SIGNAL \counter_up_down~0_combout\ : std_logic;
SIGNAL \counter_s[1]~5_cout\ : std_logic;
SIGNAL \counter_s[1]~6_combout\ : std_logic;
SIGNAL \counter_s~8_combout\ : std_logic;
SIGNAL \counter_s[1]~7\ : std_logic;
SIGNAL \counter_s[2]~9_combout\ : std_logic;
SIGNAL \counter_s[2]~10\ : std_logic;
SIGNAL \counter_s[3]~11_combout\ : std_logic;
SIGNAL counter_s : std_logic_vector(3 DOWNTO 0);
SIGNAL \PLL_inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \deb_u|debounce\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \ALT_INV_botao_load~input_o\ : std_logic;
SIGNAL ALT_INV_counter_s : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk_in <= clk_in;
ww_botao_count <= botao_count;
ww_botao_load <= botao_load;
ww_seletor_ud_input <= seletor_ud_input;
leds_saida <= ww_leds_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\PLL_inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk_in~input_o\);

\PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(0));

\clk_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_in~input_o\);
\ALT_INV_botao_load~input_o\ <= NOT \botao_load~input_o\;
ALT_INV_counter_s(0) <= NOT counter_s(0);
ALT_INV_counter_s(3) <= NOT counter_s(3);
ALT_INV_counter_s(2) <= NOT counter_s(2);
ALT_INV_counter_s(1) <= NOT counter_s(1);

-- Location: IOOBUF_X34_Y9_N16
\leds_saida[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_counter_s(0),
	devoe => ww_devoe,
	o => ww_leds_saida(0));

-- Location: IOOBUF_X34_Y9_N9
\leds_saida[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_counter_s(1),
	devoe => ww_devoe,
	o => ww_leds_saida(1));

-- Location: IOOBUF_X34_Y9_N2
\leds_saida[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_counter_s(2),
	devoe => ww_devoe,
	o => ww_leds_saida(2));

-- Location: IOOBUF_X34_Y10_N9
\leds_saida[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_counter_s(3),
	devoe => ww_devoe,
	o => ww_leds_saida(3));

-- Location: IOIBUF_X0_Y11_N8
\clk_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

-- Location: PLL_1
\PLL_inst|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 6,
	c0_initial => 1,
	c0_low => 6,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \PLL_inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \PLL_inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \PLL_inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N15
\botao_load~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botao_load,
	o => \botao_load~input_o\);

-- Location: CLKCTRL_G2
\clk_in~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_in~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N22
\botao_count~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botao_count,
	o => \botao_count~input_o\);

-- Location: LCCOMB_X31_Y18_N24
\deb_u|debounce[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[0]~0_combout\ = !\botao_count~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botao_count~input_o\,
	combout => \deb_u|debounce[0]~0_combout\);

-- Location: FF_X31_Y18_N25
\deb_u|debounce[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(0));

-- Location: LCCOMB_X23_Y18_N10
\deb_u|debounce[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[1]~feeder_combout\ = \deb_u|debounce\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(0),
	combout => \deb_u|debounce[1]~feeder_combout\);

-- Location: FF_X23_Y18_N11
\deb_u|debounce[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(1));

-- Location: LCCOMB_X23_Y18_N26
\deb_u|debounce[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[2]~feeder_combout\ = \deb_u|debounce\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(1),
	combout => \deb_u|debounce[2]~feeder_combout\);

-- Location: FF_X23_Y18_N27
\deb_u|debounce[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(2));

-- Location: LCCOMB_X23_Y18_N18
\deb_u|debounce[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[3]~feeder_combout\ = \deb_u|debounce\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(2),
	combout => \deb_u|debounce[3]~feeder_combout\);

-- Location: FF_X23_Y18_N19
\deb_u|debounce[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(3));

-- Location: LCCOMB_X23_Y18_N16
\deb_u|debounce[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[4]~feeder_combout\ = \deb_u|debounce\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(3),
	combout => \deb_u|debounce[4]~feeder_combout\);

-- Location: FF_X23_Y18_N17
\deb_u|debounce[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(4));

-- Location: LCCOMB_X23_Y18_N22
\deb_u|debounce[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[5]~feeder_combout\ = \deb_u|debounce\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(4),
	combout => \deb_u|debounce[5]~feeder_combout\);

-- Location: FF_X23_Y18_N23
\deb_u|debounce[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(5));

-- Location: FF_X23_Y18_N29
\deb_u|debounce[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(6));

-- Location: LCCOMB_X23_Y18_N20
\deb_u|debounce[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[7]~feeder_combout\ = \deb_u|debounce\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(6),
	combout => \deb_u|debounce[7]~feeder_combout\);

-- Location: FF_X23_Y18_N21
\deb_u|debounce[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(7));

-- Location: LCCOMB_X23_Y18_N30
\deb_u|debounce[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[8]~feeder_combout\ = \deb_u|debounce\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(7),
	combout => \deb_u|debounce[8]~feeder_combout\);

-- Location: FF_X23_Y18_N31
\deb_u|debounce[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(8));

-- Location: FF_X23_Y18_N9
\deb_u|debounce[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(9));

-- Location: FF_X23_Y18_N15
\deb_u|debounce[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(10));

-- Location: FF_X23_Y18_N3
\deb_u|debounce[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(11));

-- Location: LCCOMB_X23_Y18_N24
\deb_u|debounce[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[12]~feeder_combout\ = \deb_u|debounce\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(11),
	combout => \deb_u|debounce[12]~feeder_combout\);

-- Location: FF_X23_Y18_N25
\deb_u|debounce[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(12));

-- Location: LCCOMB_X23_Y18_N6
\deb_u|debounce[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[13]~feeder_combout\ = \deb_u|debounce\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(12),
	combout => \deb_u|debounce[13]~feeder_combout\);

-- Location: FF_X23_Y18_N7
\deb_u|debounce[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(13));

-- Location: FF_X23_Y18_N5
\deb_u|debounce[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(14));

-- Location: LCCOMB_X17_Y19_N6
\deb_u|debounce[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[15]~feeder_combout\ = \deb_u|debounce\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(14),
	combout => \deb_u|debounce[15]~feeder_combout\);

-- Location: FF_X17_Y19_N7
\deb_u|debounce[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(15));

-- Location: LCCOMB_X17_Y19_N14
\deb_u|debounce[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[16]~feeder_combout\ = \deb_u|debounce\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(15),
	combout => \deb_u|debounce[16]~feeder_combout\);

-- Location: FF_X17_Y19_N15
\deb_u|debounce[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(16));

-- Location: FF_X17_Y19_N25
\deb_u|debounce[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(17));

-- Location: FF_X17_Y19_N9
\deb_u|debounce[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(18));

-- Location: FF_X17_Y19_N23
\deb_u|debounce[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(19));

-- Location: FF_X17_Y19_N13
\deb_u|debounce[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(20));

-- Location: LCCOMB_X17_Y19_N2
\deb_u|debounce[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[21]~feeder_combout\ = \deb_u|debounce\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(20),
	combout => \deb_u|debounce[21]~feeder_combout\);

-- Location: FF_X17_Y19_N3
\deb_u|debounce[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(21));

-- Location: FF_X17_Y19_N21
\deb_u|debounce[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(22));

-- Location: FF_X17_Y19_N31
\deb_u|debounce[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(23));

-- Location: FF_X17_Y19_N19
\deb_u|debounce[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(24));

-- Location: LCCOMB_X17_Y19_N4
\deb_u|debounce[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[25]~feeder_combout\ = \deb_u|debounce\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(24),
	combout => \deb_u|debounce[25]~feeder_combout\);

-- Location: FF_X17_Y19_N5
\deb_u|debounce[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(25));

-- Location: FF_X17_Y19_N29
\deb_u|debounce[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(26));

-- Location: LCCOMB_X17_Y19_N26
\deb_u|debounce[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[27]~feeder_combout\ = \deb_u|debounce\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(26),
	combout => \deb_u|debounce[27]~feeder_combout\);

-- Location: FF_X17_Y19_N27
\deb_u|debounce[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(27));

-- Location: FF_X17_Y19_N1
\deb_u|debounce[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(28));

-- Location: LCCOMB_X17_Y19_N10
\deb_u|debounce[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[29]~feeder_combout\ = \deb_u|debounce\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(28),
	combout => \deb_u|debounce[29]~feeder_combout\);

-- Location: FF_X17_Y19_N11
\deb_u|debounce[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(29));

-- Location: FF_X17_Y19_N17
\deb_u|debounce[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(30));

-- Location: LCCOMB_X21_Y20_N24
\deb_u|debounce[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[31]~feeder_combout\ = \deb_u|debounce\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(30),
	combout => \deb_u|debounce[31]~feeder_combout\);

-- Location: FF_X21_Y20_N25
\deb_u|debounce[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(31));

-- Location: LCCOMB_X28_Y20_N24
\deb_u|debounce[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[32]~feeder_combout\ = \deb_u|debounce\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(31),
	combout => \deb_u|debounce[32]~feeder_combout\);

-- Location: FF_X28_Y20_N25
\deb_u|debounce[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(32));

-- Location: LCCOMB_X28_Y20_N8
\deb_u|debounce[33]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[33]~feeder_combout\ = \deb_u|debounce\(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(32),
	combout => \deb_u|debounce[33]~feeder_combout\);

-- Location: FF_X28_Y20_N9
\deb_u|debounce[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[33]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(33));

-- Location: FF_X28_Y20_N1
\deb_u|debounce[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(33),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(34));

-- Location: FF_X28_Y20_N19
\deb_u|debounce[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(34),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(35));

-- Location: LCCOMB_X28_Y20_N14
\deb_u|debounce[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[36]~feeder_combout\ = \deb_u|debounce\(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(35),
	combout => \deb_u|debounce[36]~feeder_combout\);

-- Location: FF_X28_Y20_N15
\deb_u|debounce[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(36));

-- Location: FF_X28_Y20_N31
\deb_u|debounce[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(36),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(37));

-- Location: FF_X28_Y20_N23
\deb_u|debounce[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(37),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(38));

-- Location: LCCOMB_X28_Y20_N28
\deb_u|debounce[39]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[39]~feeder_combout\ = \deb_u|debounce\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(38),
	combout => \deb_u|debounce[39]~feeder_combout\);

-- Location: FF_X28_Y20_N29
\deb_u|debounce[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[39]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(39));

-- Location: LCCOMB_X28_Y20_N10
\deb_u|debounce[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[40]~feeder_combout\ = \deb_u|debounce\(39)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(39),
	combout => \deb_u|debounce[40]~feeder_combout\);

-- Location: FF_X28_Y20_N11
\deb_u|debounce[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(40));

-- Location: LCCOMB_X28_Y20_N4
\deb_u|debounce[41]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[41]~feeder_combout\ = \deb_u|debounce\(40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(40),
	combout => \deb_u|debounce[41]~feeder_combout\);

-- Location: FF_X28_Y20_N5
\deb_u|debounce[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[41]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(41));

-- Location: FF_X28_Y20_N3
\deb_u|debounce[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(41),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(42));

-- Location: FF_X28_Y20_N13
\deb_u|debounce[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(42),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(43));

-- Location: LCCOMB_X28_Y20_N16
\deb_u|debounce[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[44]~feeder_combout\ = \deb_u|debounce\(43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(43),
	combout => \deb_u|debounce[44]~feeder_combout\);

-- Location: FF_X28_Y20_N17
\deb_u|debounce[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(44));

-- Location: LCCOMB_X28_Y20_N26
\deb_u|debounce[45]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[45]~feeder_combout\ = \deb_u|debounce\(44)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(44),
	combout => \deb_u|debounce[45]~feeder_combout\);

-- Location: FF_X28_Y20_N27
\deb_u|debounce[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[45]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(45));

-- Location: FF_X28_Y20_N7
\deb_u|debounce[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(45),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(46));

-- Location: FF_X29_Y20_N1
\deb_u|debounce[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(46),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(47));

-- Location: LCCOMB_X29_Y21_N24
\deb_u|debounce[48]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[48]~feeder_combout\ = \deb_u|debounce\(47)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(47),
	combout => \deb_u|debounce[48]~feeder_combout\);

-- Location: FF_X29_Y21_N25
\deb_u|debounce[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(48));

-- Location: LCCOMB_X29_Y21_N18
\deb_u|debounce[49]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[49]~feeder_combout\ = \deb_u|debounce\(48)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(48),
	combout => \deb_u|debounce[49]~feeder_combout\);

-- Location: FF_X29_Y21_N19
\deb_u|debounce[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[49]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(49));

-- Location: FF_X29_Y21_N5
\deb_u|debounce[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(49),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(50));

-- Location: LCCOMB_X23_Y17_N18
\deb_u|debounce[51]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[51]~feeder_combout\ = \deb_u|debounce\(50)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(50),
	combout => \deb_u|debounce[51]~feeder_combout\);

-- Location: FF_X23_Y17_N19
\deb_u|debounce[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[51]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(51));

-- Location: LCCOMB_X23_Y17_N20
\deb_u|debounce[52]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[52]~feeder_combout\ = \deb_u|debounce\(51)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(51),
	combout => \deb_u|debounce[52]~feeder_combout\);

-- Location: FF_X23_Y17_N21
\deb_u|debounce[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[52]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(52));

-- Location: LCCOMB_X23_Y17_N14
\deb_u|debounce[53]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[53]~feeder_combout\ = \deb_u|debounce\(52)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(52),
	combout => \deb_u|debounce[53]~feeder_combout\);

-- Location: FF_X23_Y17_N15
\deb_u|debounce[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[53]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(53));

-- Location: FF_X23_Y17_N13
\deb_u|debounce[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(53),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(54));

-- Location: LCCOMB_X23_Y17_N26
\deb_u|debounce[55]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[55]~feeder_combout\ = \deb_u|debounce\(54)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(54),
	combout => \deb_u|debounce[55]~feeder_combout\);

-- Location: FF_X23_Y17_N27
\deb_u|debounce[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[55]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(55));

-- Location: LCCOMB_X23_Y17_N30
\deb_u|debounce[56]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[56]~feeder_combout\ = \deb_u|debounce\(55)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(55),
	combout => \deb_u|debounce[56]~feeder_combout\);

-- Location: FF_X23_Y17_N31
\deb_u|debounce[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[56]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(56));

-- Location: FF_X23_Y17_N23
\deb_u|debounce[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(56),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(57));

-- Location: FF_X23_Y17_N11
\deb_u|debounce[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(57),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(58));

-- Location: LCCOMB_X23_Y17_N10
\deb_u|process_0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|process_0~18_combout\ = (\deb_u|debounce\(57) & (\deb_u|debounce\(56) & (\deb_u|debounce\(58) & \deb_u|debounce\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_u|debounce\(57),
	datab => \deb_u|debounce\(56),
	datac => \deb_u|debounce\(58),
	datad => \deb_u|debounce\(55),
	combout => \deb_u|process_0~18_combout\);

-- Location: LCCOMB_X23_Y17_N12
\deb_u|process_0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|process_0~17_combout\ = (\deb_u|debounce\(52) & (\deb_u|debounce\(53) & (\deb_u|debounce\(54) & \deb_u|debounce\(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_u|debounce\(52),
	datab => \deb_u|debounce\(53),
	datac => \deb_u|debounce\(54),
	datad => \deb_u|debounce\(51),
	combout => \deb_u|process_0~17_combout\);

-- Location: FF_X23_Y17_N29
\deb_u|debounce[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(58),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(59));

-- Location: LCCOMB_X23_Y17_N16
\deb_u|debounce[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[60]~feeder_combout\ = \deb_u|debounce\(59)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(59),
	combout => \deb_u|debounce[60]~feeder_combout\);

-- Location: FF_X23_Y17_N17
\deb_u|debounce[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(60));

-- Location: LCCOMB_X23_Y17_N6
\deb_u|debounce[61]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[61]~feeder_combout\ = \deb_u|debounce\(60)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(60),
	combout => \deb_u|debounce[61]~feeder_combout\);

-- Location: FF_X23_Y17_N7
\deb_u|debounce[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[61]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(61));

-- Location: FF_X23_Y17_N25
\deb_u|debounce[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(61),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(62));

-- Location: LCCOMB_X23_Y17_N24
\deb_u|process_0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|process_0~19_combout\ = (\deb_u|debounce\(60) & (\deb_u|debounce\(61) & (\deb_u|debounce\(62) & \deb_u|debounce\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_u|debounce\(60),
	datab => \deb_u|debounce\(61),
	datac => \deb_u|debounce\(62),
	datad => \deb_u|debounce\(59),
	combout => \deb_u|process_0~19_combout\);

-- Location: LCCOMB_X29_Y21_N4
\deb_u|process_0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|process_0~16_combout\ = (\deb_u|debounce\(49) & (\deb_u|debounce\(47) & (\deb_u|debounce\(50) & \deb_u|debounce\(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_u|debounce\(49),
	datab => \deb_u|debounce\(47),
	datac => \deb_u|debounce\(50),
	datad => \deb_u|debounce\(48),
	combout => \deb_u|process_0~16_combout\);

-- Location: LCCOMB_X23_Y17_N8
\deb_u|process_0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|process_0~20_combout\ = (\deb_u|process_0~18_combout\ & (\deb_u|process_0~17_combout\ & (\deb_u|process_0~19_combout\ & \deb_u|process_0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_u|process_0~18_combout\,
	datab => \deb_u|process_0~17_combout\,
	datac => \deb_u|process_0~19_combout\,
	datad => \deb_u|process_0~16_combout\,
	combout => \deb_u|process_0~20_combout\);

-- Location: LCCOMB_X23_Y17_N2
\deb_u|debounce[63]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|debounce[63]~feeder_combout\ = \deb_u|debounce\(62)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \deb_u|debounce\(62),
	combout => \deb_u|debounce[63]~feeder_combout\);

-- Location: FF_X23_Y17_N3
\deb_u|debounce[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|debounce[63]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|debounce\(63));

-- Location: LCCOMB_X17_Y19_N28
\deb_u|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|process_0~8_combout\ = (\deb_u|debounce\(23) & (\deb_u|debounce\(25) & (\deb_u|debounce\(26) & \deb_u|debounce\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_u|debounce\(23),
	datab => \deb_u|debounce\(25),
	datac => \deb_u|debounce\(26),
	datad => \deb_u|debounce\(24),
	combout => \deb_u|process_0~8_combout\);

-- Location: LCCOMB_X23_Y18_N14
\deb_u|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|process_0~2_combout\ = (\deb_u|debounce\(8) & (\deb_u|debounce\(9) & (\deb_u|debounce\(10) & \deb_u|debounce\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_u|debounce\(8),
	datab => \deb_u|debounce\(9),
	datac => \deb_u|debounce\(10),
	datad => \deb_u|debounce\(7),
	combout => \deb_u|process_0~2_combout\);

-- Location: LCCOMB_X23_Y18_N28
\deb_u|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|process_0~1_combout\ = (\deb_u|debounce\(5) & (\deb_u|debounce\(4) & (\deb_u|debounce\(6) & \deb_u|debounce\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_u|debounce\(5),
	datab => \deb_u|debounce\(4),
	datac => \deb_u|debounce\(6),
	datad => \deb_u|debounce\(3),
	combout => \deb_u|process_0~1_combout\);

-- Location: LCCOMB_X23_Y18_N4
\deb_u|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|process_0~3_combout\ = (\deb_u|debounce\(13) & (\deb_u|debounce\(12) & (\deb_u|debounce\(14) & \deb_u|debounce\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_u|debounce\(13),
	datab => \deb_u|debounce\(12),
	datac => \deb_u|debounce\(14),
	datad => \deb_u|debounce\(11),
	combout => \deb_u|process_0~3_combout\);

-- Location: FF_X23_Y18_N13
\deb_u|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \deb_u|debounce\(63),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|pulse~q\);

-- Location: LCCOMB_X23_Y18_N12
\deb_u|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|process_0~0_combout\ = (\deb_u|debounce\(1) & (\deb_u|debounce\(2) & (!\deb_u|pulse~q\ & \deb_u|debounce\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_u|debounce\(1),
	datab => \deb_u|debounce\(2),
	datac => \deb_u|pulse~q\,
	datad => \deb_u|debounce\(0),
	combout => \deb_u|process_0~0_combout\);

-- Location: LCCOMB_X23_Y18_N0
\deb_u|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|process_0~4_combout\ = (\deb_u|process_0~2_combout\ & (\deb_u|process_0~1_combout\ & (\deb_u|process_0~3_combout\ & \deb_u|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_u|process_0~2_combout\,
	datab => \deb_u|process_0~1_combout\,
	datac => \deb_u|process_0~3_combout\,
	datad => \deb_u|process_0~0_combout\,
	combout => \deb_u|process_0~4_combout\);

-- Location: LCCOMB_X17_Y19_N16
\deb_u|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|process_0~9_combout\ = (\deb_u|debounce\(27) & (\deb_u|debounce\(28) & (\deb_u|debounce\(30) & \deb_u|debounce\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_u|debounce\(27),
	datab => \deb_u|debounce\(28),
	datac => \deb_u|debounce\(30),
	datad => \deb_u|debounce\(29),
	combout => \deb_u|process_0~9_combout\);

-- Location: LCCOMB_X17_Y19_N20
\deb_u|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|process_0~6_combout\ = (\deb_u|debounce\(22) & \deb_u|debounce\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \deb_u|debounce\(22),
	datad => \deb_u|debounce\(21),
	combout => \deb_u|process_0~6_combout\);

-- Location: LCCOMB_X17_Y19_N8
\deb_u|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|process_0~5_combout\ = (\deb_u|debounce\(15) & (\deb_u|debounce\(16) & (\deb_u|debounce\(18) & \deb_u|debounce\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_u|debounce\(15),
	datab => \deb_u|debounce\(16),
	datac => \deb_u|debounce\(18),
	datad => \deb_u|debounce\(17),
	combout => \deb_u|process_0~5_combout\);

-- Location: LCCOMB_X17_Y19_N12
\deb_u|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|process_0~7_combout\ = (\deb_u|debounce\(19) & (\deb_u|process_0~6_combout\ & (\deb_u|debounce\(20) & \deb_u|process_0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_u|debounce\(19),
	datab => \deb_u|process_0~6_combout\,
	datac => \deb_u|debounce\(20),
	datad => \deb_u|process_0~5_combout\,
	combout => \deb_u|process_0~7_combout\);

-- Location: LCCOMB_X18_Y19_N0
\deb_u|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|process_0~10_combout\ = (\deb_u|process_0~8_combout\ & (\deb_u|process_0~4_combout\ & (\deb_u|process_0~9_combout\ & \deb_u|process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_u|process_0~8_combout\,
	datab => \deb_u|process_0~4_combout\,
	datac => \deb_u|process_0~9_combout\,
	datad => \deb_u|process_0~7_combout\,
	combout => \deb_u|process_0~10_combout\);

-- Location: LCCOMB_X28_Y20_N6
\deb_u|process_0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|process_0~14_combout\ = (\deb_u|debounce\(45) & (\deb_u|debounce\(44) & (\deb_u|debounce\(46) & \deb_u|debounce\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_u|debounce\(45),
	datab => \deb_u|debounce\(44),
	datac => \deb_u|debounce\(46),
	datad => \deb_u|debounce\(43),
	combout => \deb_u|process_0~14_combout\);

-- Location: LCCOMB_X28_Y20_N2
\deb_u|process_0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|process_0~13_combout\ = (\deb_u|debounce\(40) & (\deb_u|debounce\(41) & (\deb_u|debounce\(42) & \deb_u|debounce\(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_u|debounce\(40),
	datab => \deb_u|debounce\(41),
	datac => \deb_u|debounce\(42),
	datad => \deb_u|debounce\(39),
	combout => \deb_u|process_0~13_combout\);

-- Location: LCCOMB_X28_Y20_N22
\deb_u|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|process_0~12_combout\ = (\deb_u|debounce\(37) & (\deb_u|debounce\(36) & (\deb_u|debounce\(38) & \deb_u|debounce\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_u|debounce\(37),
	datab => \deb_u|debounce\(36),
	datac => \deb_u|debounce\(38),
	datad => \deb_u|debounce\(35),
	combout => \deb_u|process_0~12_combout\);

-- Location: LCCOMB_X28_Y20_N0
\deb_u|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|process_0~11_combout\ = (\deb_u|debounce\(31) & (\deb_u|debounce\(33) & (\deb_u|debounce\(34) & \deb_u|debounce\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_u|debounce\(31),
	datab => \deb_u|debounce\(33),
	datac => \deb_u|debounce\(34),
	datad => \deb_u|debounce\(32),
	combout => \deb_u|process_0~11_combout\);

-- Location: LCCOMB_X28_Y20_N20
\deb_u|process_0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|process_0~15_combout\ = (\deb_u|process_0~14_combout\ & (\deb_u|process_0~13_combout\ & (\deb_u|process_0~12_combout\ & \deb_u|process_0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_u|process_0~14_combout\,
	datab => \deb_u|process_0~13_combout\,
	datac => \deb_u|process_0~12_combout\,
	datad => \deb_u|process_0~11_combout\,
	combout => \deb_u|process_0~15_combout\);

-- Location: LCCOMB_X23_Y17_N4
\deb_u|process_0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_u|process_0~21_combout\ = (((!\deb_u|process_0~15_combout\) # (!\deb_u|process_0~10_combout\)) # (!\deb_u|debounce\(63))) # (!\deb_u|process_0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_u|process_0~20_combout\,
	datab => \deb_u|debounce\(63),
	datac => \deb_u|process_0~10_combout\,
	datad => \deb_u|process_0~15_combout\,
	combout => \deb_u|process_0~21_combout\);

-- Location: FF_X23_Y17_N5
\deb_u|deb_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \deb_u|process_0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_u|deb_out~q\);

-- Location: LCCOMB_X28_Y13_N0
\counter_s[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_s[0]~3_combout\ = (\botao_load~input_o\ & (counter_s(0) $ (!\deb_u|deb_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \botao_load~input_o\,
	datac => counter_s(0),
	datad => \deb_u|deb_out~q\,
	combout => \counter_s[0]~3_combout\);

-- Location: FF_X28_Y13_N1
\counter_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_s[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_s(0));

-- Location: IOIBUF_X34_Y12_N8
\seletor_ud_input~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletor_ud_input,
	o => \seletor_ud_input~input_o\);

-- Location: LCCOMB_X28_Y13_N10
\counter_up_down~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_up_down~0_combout\ = (!\deb_u|deb_out~q\ & (\botao_load~input_o\ & \seletor_ud_input~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb_u|deb_out~q\,
	datac => \botao_load~input_o\,
	datad => \seletor_ud_input~input_o\,
	combout => \counter_up_down~0_combout\);

-- Location: LCCOMB_X28_Y13_N18
\counter_s[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_s[1]~5_cout\ = CARRY(counter_s(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter_s(0),
	datad => VCC,
	cout => \counter_s[1]~5_cout\);

-- Location: LCCOMB_X28_Y13_N20
\counter_s[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_s[1]~6_combout\ = (\counter_up_down~0_combout\ & ((counter_s(1) & (!\counter_s[1]~5_cout\)) # (!counter_s(1) & ((\counter_s[1]~5_cout\) # (GND))))) # (!\counter_up_down~0_combout\ & ((counter_s(1) & (\counter_s[1]~5_cout\ & VCC)) # (!counter_s(1) 
-- & (!\counter_s[1]~5_cout\))))
-- \counter_s[1]~7\ = CARRY((\counter_up_down~0_combout\ & ((!\counter_s[1]~5_cout\) # (!counter_s(1)))) # (!\counter_up_down~0_combout\ & (!counter_s(1) & !\counter_s[1]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_up_down~0_combout\,
	datab => counter_s(1),
	datad => VCC,
	cin => \counter_s[1]~5_cout\,
	combout => \counter_s[1]~6_combout\,
	cout => \counter_s[1]~7\);

-- Location: LCCOMB_X28_Y13_N12
\counter_s~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_s~8_combout\ = (!\botao_load~input_o\) # (!\deb_u|deb_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb_u|deb_out~q\,
	datac => \botao_load~input_o\,
	combout => \counter_s~8_combout\);

-- Location: FF_X28_Y13_N21
\counter_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_s[1]~6_combout\,
	sclr => \ALT_INV_botao_load~input_o\,
	ena => \counter_s~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_s(1));

-- Location: LCCOMB_X28_Y13_N22
\counter_s[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_s[2]~9_combout\ = ((\counter_up_down~0_combout\ $ (counter_s(2) $ (\counter_s[1]~7\)))) # (GND)
-- \counter_s[2]~10\ = CARRY((\counter_up_down~0_combout\ & (counter_s(2) & !\counter_s[1]~7\)) # (!\counter_up_down~0_combout\ & ((counter_s(2)) # (!\counter_s[1]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_up_down~0_combout\,
	datab => counter_s(2),
	datad => VCC,
	cin => \counter_s[1]~7\,
	combout => \counter_s[2]~9_combout\,
	cout => \counter_s[2]~10\);

-- Location: FF_X28_Y13_N23
\counter_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_s[2]~9_combout\,
	sclr => \ALT_INV_botao_load~input_o\,
	ena => \counter_s~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_s(2));

-- Location: LCCOMB_X28_Y13_N24
\counter_s[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_s[3]~11_combout\ = \counter_up_down~0_combout\ $ (\counter_s[2]~10\ $ (!counter_s(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_up_down~0_combout\,
	datad => counter_s(3),
	cin => \counter_s[2]~10\,
	combout => \counter_s[3]~11_combout\);

-- Location: FF_X28_Y13_N25
\counter_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_s[3]~11_combout\,
	sclr => \ALT_INV_botao_load~input_o\,
	ena => \counter_s~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_s(3));
END structure;


