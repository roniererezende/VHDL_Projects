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

-- DATE "09/09/2021 20:22:36"

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

ENTITY 	electronic_gate IS
    PORT (
	clock_i : IN std_logic;
	reset_i : IN std_logic;
	abrir : IN std_logic;
	fechar : IN std_logic;
	sensor_fechado_i : IN std_logic;
	sensor_aberto_i : IN std_logic;
	relays : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END electronic_gate;

-- Design Ports Information
-- relays[0]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- relays[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor_fechado_i	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fechar	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor_aberto_i	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abrir	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_i	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_i	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF electronic_gate IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_i : std_logic;
SIGNAL ww_reset_i : std_logic;
SIGNAL ww_abrir : std_logic;
SIGNAL ww_fechar : std_logic;
SIGNAL ww_sensor_fechado_i : std_logic;
SIGNAL ww_sensor_aberto_i : std_logic;
SIGNAL ww_relays : std_logic_vector(1 DOWNTO 0);
SIGNAL \pll_instantiate|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pll_instantiate|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \pll_instantiate|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \clock_i~input_o\ : std_logic;
SIGNAL \pll_instantiate|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \pll_instantiate|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \abrir~input_o\ : std_logic;
SIGNAL \fechar~input_o\ : std_logic;
SIGNAL \sensor_aberto_i~input_o\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \sensor_fechado_i~input_o\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \reset_i~input_o\ : std_logic;
SIGNAL \mq_estados_s.fechado~q\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector5~5_combout\ : std_logic;
SIGNAL \Selector5~4_combout\ : std_logic;
SIGNAL \Selector5~6_combout\ : std_logic;
SIGNAL \mq_estados_s.aberto~q\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \mq_estados_s.fechando~q\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \mq_estados_s.abrindo~q\ : std_logic;
SIGNAL \pll_instantiate|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_mq_estados_s.fechando~q\ : std_logic;
SIGNAL \ALT_INV_mq_estados_s.abrindo~q\ : std_logic;

BEGIN

ww_clock_i <= clock_i;
ww_reset_i <= reset_i;
ww_abrir <= abrir;
ww_fechar <= fechar;
ww_sensor_fechado_i <= sensor_fechado_i;
ww_sensor_aberto_i <= sensor_aberto_i;
relays <= ww_relays;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pll_instantiate|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clock_i~input_o\);

\pll_instantiate|altpll_component|auto_generated|wire_pll1_clk\(0) <= \pll_instantiate|altpll_component|auto_generated|pll1_CLK_bus\(0);
\pll_instantiate|altpll_component|auto_generated|wire_pll1_clk\(1) <= \pll_instantiate|altpll_component|auto_generated|pll1_CLK_bus\(1);
\pll_instantiate|altpll_component|auto_generated|wire_pll1_clk\(2) <= \pll_instantiate|altpll_component|auto_generated|pll1_CLK_bus\(2);
\pll_instantiate|altpll_component|auto_generated|wire_pll1_clk\(3) <= \pll_instantiate|altpll_component|auto_generated|pll1_CLK_bus\(3);
\pll_instantiate|altpll_component|auto_generated|wire_pll1_clk\(4) <= \pll_instantiate|altpll_component|auto_generated|pll1_CLK_bus\(4);

\pll_instantiate|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll_instantiate|altpll_component|auto_generated|wire_pll1_clk\(0));
\ALT_INV_mq_estados_s.fechando~q\ <= NOT \mq_estados_s.fechando~q\;
\ALT_INV_mq_estados_s.abrindo~q\ <= NOT \mq_estados_s.abrindo~q\;

-- Location: IOOBUF_X34_Y9_N2
\relays[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_mq_estados_s.abrindo~q\,
	devoe => ww_devoe,
	o => ww_relays(0));

-- Location: IOOBUF_X34_Y10_N9
\relays[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_mq_estados_s.fechando~q\,
	devoe => ww_devoe,
	o => ww_relays(1));

-- Location: IOIBUF_X0_Y11_N8
\clock_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_i,
	o => \clock_i~input_o\);

-- Location: PLL_1
\pll_instantiate|altpll_component|auto_generated|pll1\ : cycloneive_pll
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
	fbin => \pll_instantiate|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \pll_instantiate|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \pll_instantiate|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \pll_instantiate|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\pll_instantiate|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll_instantiate|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll_instantiate|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N1
\abrir~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_abrir,
	o => \abrir~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\fechar~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fechar,
	o => \fechar~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\sensor_aberto_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor_aberto_i,
	o => \sensor_aberto_i~input_o\);

-- Location: LCCOMB_X14_Y12_N0
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (!\Selector2~2_combout\ & ((\Selector5~1_combout\) # (\sensor_aberto_i~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~1_combout\,
	datac => \Selector2~2_combout\,
	datad => \sensor_aberto_i~input_o\,
	combout => \Selector3~1_combout\);

-- Location: IOIBUF_X34_Y12_N22
\sensor_fechado_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor_fechado_i,
	o => \sensor_fechado_i~input_o\);

-- Location: LCCOMB_X14_Y12_N30
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\sensor_fechado_i~input_o\ & ((\mq_estados_s.fechando~q\) # (!\mq_estados_s.aberto~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mq_estados_s.fechando~q\,
	datab => \mq_estados_s.aberto~q\,
	datac => \sensor_fechado_i~input_o\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X14_Y12_N6
\Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\Selector2~2_combout\) # ((\Selector5~0_combout\) # ((!\Selector5~1_combout\ & !\sensor_aberto_i~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~1_combout\,
	datab => \Selector2~2_combout\,
	datac => \Selector5~0_combout\,
	datad => \sensor_aberto_i~input_o\,
	combout => \Selector5~2_combout\);

-- Location: LCCOMB_X14_Y12_N2
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Selector5~2_combout\ & ((\abrir~input_o\) # ((!\mq_estados_s.fechando~q\ & !\mq_estados_s.fechado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mq_estados_s.fechando~q\,
	datab => \mq_estados_s.fechado~q\,
	datac => \abrir~input_o\,
	datad => \Selector5~2_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X14_Y12_N18
\Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\Selector3~1_combout\ & ((\Selector3~0_combout\) # ((\mq_estados_s.fechado~q\ & !\Selector5~3_combout\)))) # (!\Selector3~1_combout\ & (((\mq_estados_s.fechado~q\ & !\Selector5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~1_combout\,
	datab => \Selector3~0_combout\,
	datac => \mq_estados_s.fechado~q\,
	datad => \Selector5~3_combout\,
	combout => \Selector3~2_combout\);

-- Location: IOIBUF_X32_Y0_N22
\reset_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_i,
	o => \reset_i~input_o\);

-- Location: FF_X14_Y12_N19
\mq_estados_s.fechado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_instantiate|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Selector3~2_combout\,
	clrn => \reset_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mq_estados_s.fechado~q\);

-- Location: LCCOMB_X14_Y12_N12
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\abrir~input_o\ & (!\mq_estados_s.fechado~q\ & ((!\fechar~input_o\) # (!\mq_estados_s.abrindo~q\)))) # (!\abrir~input_o\ & (((!\fechar~input_o\)) # (!\mq_estados_s.abrindo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abrir~input_o\,
	datab => \mq_estados_s.abrindo~q\,
	datac => \mq_estados_s.fechado~q\,
	datad => \fechar~input_o\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X14_Y12_N22
\Selector5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~5_combout\ = (\Selector5~1_combout\) # (\sensor_aberto_i~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~1_combout\,
	datad => \sensor_aberto_i~input_o\,
	combout => \Selector5~5_combout\);

-- Location: LCCOMB_X14_Y12_N28
\Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~4_combout\ = (!\abrir~input_o\ & \mq_estados_s.fechando~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abrir~input_o\,
	datac => \mq_estados_s.fechando~q\,
	combout => \Selector5~4_combout\);

-- Location: LCCOMB_X14_Y12_N20
\Selector5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~6_combout\ = (\Selector5~3_combout\ & ((\Selector5~5_combout\) # ((\Selector5~4_combout\)))) # (!\Selector5~3_combout\ & (((\mq_estados_s.aberto~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~5_combout\,
	datab => \Selector5~3_combout\,
	datac => \mq_estados_s.aberto~q\,
	datad => \Selector5~4_combout\,
	combout => \Selector5~6_combout\);

-- Location: FF_X14_Y12_N21
\mq_estados_s.aberto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_instantiate|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Selector5~6_combout\,
	clrn => \reset_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mq_estados_s.aberto~q\);

-- Location: LCCOMB_X14_Y12_N8
\Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (!\fechar~input_o\ & ((\mq_estados_s.abrindo~q\) # (!\mq_estados_s.aberto~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fechar~input_o\,
	datab => \mq_estados_s.aberto~q\,
	datad => \mq_estados_s.abrindo~q\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X14_Y12_N26
\Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (\Selector5~3_combout\ & (\Selector2~2_combout\ & ((\abrir~input_o\) # (!\mq_estados_s.fechando~q\)))) # (!\Selector5~3_combout\ & (((\mq_estados_s.fechando~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abrir~input_o\,
	datab => \Selector2~2_combout\,
	datac => \mq_estados_s.fechando~q\,
	datad => \Selector5~3_combout\,
	combout => \Selector2~3_combout\);

-- Location: FF_X14_Y12_N27
\mq_estados_s.fechando\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_instantiate|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Selector2~3_combout\,
	clrn => \reset_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mq_estados_s.fechando~q\);

-- Location: LCCOMB_X14_Y12_N16
\Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~3_combout\ = (\Selector5~2_combout\) # ((!\abrir~input_o\ & ((\mq_estados_s.fechando~q\) # (\mq_estados_s.fechado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mq_estados_s.fechando~q\,
	datab => \mq_estados_s.fechado~q\,
	datac => \abrir~input_o\,
	datad => \Selector5~2_combout\,
	combout => \Selector5~3_combout\);

-- Location: LCCOMB_X14_Y12_N24
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\Selector3~0_combout\ & ((\Selector5~3_combout\) # (\mq_estados_s.abrindo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector5~3_combout\,
	datac => \mq_estados_s.abrindo~q\,
	datad => \Selector3~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X14_Y12_N25
\mq_estados_s.abrindo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_instantiate|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \reset_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mq_estados_s.abrindo~q\);
END structure;


