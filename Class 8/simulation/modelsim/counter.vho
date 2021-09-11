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

-- DATE "09/06/2021 19:34:31"

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

ENTITY 	counter IS
    PORT (
	CLK_in : IN std_logic;
	stop : IN std_logic;
	led : OUT std_logic_vector(3 DOWNTO 0)
	);
END counter;

-- Design Ports Information
-- led[0]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_in	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stop	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_in : std_logic;
SIGNAL ww_stop : std_logic;
SIGNAL ww_led : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \CLK_in~input_o\ : std_logic;
SIGNAL \CLK_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \stop~input_o\ : std_logic;
SIGNAL \iCounter[0]~84_combout\ : std_logic;
SIGNAL \iCounter[1]~28_combout\ : std_logic;
SIGNAL \iCounter[1]~29\ : std_logic;
SIGNAL \iCounter[2]~30_combout\ : std_logic;
SIGNAL \iCounter[2]~31\ : std_logic;
SIGNAL \iCounter[3]~32_combout\ : std_logic;
SIGNAL \iCounter[3]~33\ : std_logic;
SIGNAL \iCounter[4]~34_combout\ : std_logic;
SIGNAL \iCounter[4]~35\ : std_logic;
SIGNAL \iCounter[5]~36_combout\ : std_logic;
SIGNAL \iCounter[5]~37\ : std_logic;
SIGNAL \iCounter[6]~38_combout\ : std_logic;
SIGNAL \iCounter[6]~39\ : std_logic;
SIGNAL \iCounter[7]~40_combout\ : std_logic;
SIGNAL \iCounter[7]~41\ : std_logic;
SIGNAL \iCounter[8]~42_combout\ : std_logic;
SIGNAL \iCounter[8]~43\ : std_logic;
SIGNAL \iCounter[9]~44_combout\ : std_logic;
SIGNAL \iCounter[9]~45\ : std_logic;
SIGNAL \iCounter[10]~46_combout\ : std_logic;
SIGNAL \iCounter[10]~47\ : std_logic;
SIGNAL \iCounter[11]~48_combout\ : std_logic;
SIGNAL \iCounter[11]~49\ : std_logic;
SIGNAL \iCounter[12]~50_combout\ : std_logic;
SIGNAL \iCounter[12]~51\ : std_logic;
SIGNAL \iCounter[13]~52_combout\ : std_logic;
SIGNAL \iCounter[13]~53\ : std_logic;
SIGNAL \iCounter[14]~54_combout\ : std_logic;
SIGNAL \iCounter[14]~55\ : std_logic;
SIGNAL \iCounter[15]~56_combout\ : std_logic;
SIGNAL \iCounter[15]~57\ : std_logic;
SIGNAL \iCounter[16]~58_combout\ : std_logic;
SIGNAL \iCounter[16]~59\ : std_logic;
SIGNAL \iCounter[17]~60_combout\ : std_logic;
SIGNAL \iCounter[17]~61\ : std_logic;
SIGNAL \iCounter[18]~62_combout\ : std_logic;
SIGNAL \iCounter[18]~63\ : std_logic;
SIGNAL \iCounter[19]~64_combout\ : std_logic;
SIGNAL \iCounter[19]~65\ : std_logic;
SIGNAL \iCounter[20]~66_combout\ : std_logic;
SIGNAL \iCounter[20]~67\ : std_logic;
SIGNAL \iCounter[21]~68_combout\ : std_logic;
SIGNAL \iCounter[21]~69\ : std_logic;
SIGNAL \iCounter[22]~70_combout\ : std_logic;
SIGNAL \iCounter[22]~71\ : std_logic;
SIGNAL \iCounter[23]~72_combout\ : std_logic;
SIGNAL \iCounter[23]~73\ : std_logic;
SIGNAL \iCounter[24]~74_combout\ : std_logic;
SIGNAL \iCounter[24]~75\ : std_logic;
SIGNAL \iCounter[25]~76_combout\ : std_logic;
SIGNAL \iCounter[25]~77\ : std_logic;
SIGNAL \iCounter[26]~78_combout\ : std_logic;
SIGNAL \iCounter[26]~79\ : std_logic;
SIGNAL \iCounter[27]~80_combout\ : std_logic;
SIGNAL \iCounter[27]~81\ : std_logic;
SIGNAL \iCounter[28]~82_combout\ : std_logic;
SIGNAL iCounter : std_logic_vector(28 DOWNTO 0);
SIGNAL ALT_INV_iCounter : std_logic_vector(28 DOWNTO 25);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK_in <= CLK_in;
ww_stop <= stop;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_in~input_o\);
ALT_INV_iCounter(27) <= NOT iCounter(27);
ALT_INV_iCounter(26) <= NOT iCounter(26);
ALT_INV_iCounter(25) <= NOT iCounter(25);
ALT_INV_iCounter(28) <= NOT iCounter(28);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y9_N16
\led[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_iCounter(25),
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_iCounter(26),
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_iCounter(27),
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_iCounter(28),
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLK_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_in,
	o => \CLK_in~input_o\);

-- Location: CLKCTRL_G2
\CLK_in~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_in~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N22
\stop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stop,
	o => \stop~input_o\);

-- Location: LCCOMB_X33_Y10_N0
\iCounter[0]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[0]~84_combout\ = \stop~input_o\ $ (iCounter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~input_o\,
	datac => iCounter(0),
	combout => \iCounter[0]~84_combout\);

-- Location: FF_X33_Y10_N1
\iCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[0]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(0));

-- Location: LCCOMB_X33_Y10_N4
\iCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[1]~28_combout\ = (iCounter(0) & (iCounter(1) $ (VCC))) # (!iCounter(0) & (iCounter(1) & VCC))
-- \iCounter[1]~29\ = CARRY((iCounter(0) & iCounter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => iCounter(0),
	datab => iCounter(1),
	datad => VCC,
	combout => \iCounter[1]~28_combout\,
	cout => \iCounter[1]~29\);

-- Location: FF_X33_Y10_N5
\iCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[1]~28_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(1));

-- Location: LCCOMB_X33_Y10_N6
\iCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[2]~30_combout\ = (iCounter(2) & (!\iCounter[1]~29\)) # (!iCounter(2) & ((\iCounter[1]~29\) # (GND)))
-- \iCounter[2]~31\ = CARRY((!\iCounter[1]~29\) # (!iCounter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => iCounter(2),
	datad => VCC,
	cin => \iCounter[1]~29\,
	combout => \iCounter[2]~30_combout\,
	cout => \iCounter[2]~31\);

-- Location: FF_X33_Y10_N7
\iCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[2]~30_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(2));

-- Location: LCCOMB_X33_Y10_N8
\iCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[3]~32_combout\ = (iCounter(3) & (\iCounter[2]~31\ $ (GND))) # (!iCounter(3) & (!\iCounter[2]~31\ & VCC))
-- \iCounter[3]~33\ = CARRY((iCounter(3) & !\iCounter[2]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => iCounter(3),
	datad => VCC,
	cin => \iCounter[2]~31\,
	combout => \iCounter[3]~32_combout\,
	cout => \iCounter[3]~33\);

-- Location: FF_X33_Y10_N9
\iCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[3]~32_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(3));

-- Location: LCCOMB_X33_Y10_N10
\iCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[4]~34_combout\ = (iCounter(4) & (!\iCounter[3]~33\)) # (!iCounter(4) & ((\iCounter[3]~33\) # (GND)))
-- \iCounter[4]~35\ = CARRY((!\iCounter[3]~33\) # (!iCounter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => iCounter(4),
	datad => VCC,
	cin => \iCounter[3]~33\,
	combout => \iCounter[4]~34_combout\,
	cout => \iCounter[4]~35\);

-- Location: FF_X33_Y10_N11
\iCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[4]~34_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(4));

-- Location: LCCOMB_X33_Y10_N12
\iCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[5]~36_combout\ = (iCounter(5) & (\iCounter[4]~35\ $ (GND))) # (!iCounter(5) & (!\iCounter[4]~35\ & VCC))
-- \iCounter[5]~37\ = CARRY((iCounter(5) & !\iCounter[4]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => iCounter(5),
	datad => VCC,
	cin => \iCounter[4]~35\,
	combout => \iCounter[5]~36_combout\,
	cout => \iCounter[5]~37\);

-- Location: FF_X33_Y10_N13
\iCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[5]~36_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(5));

-- Location: LCCOMB_X33_Y10_N14
\iCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[6]~38_combout\ = (iCounter(6) & (!\iCounter[5]~37\)) # (!iCounter(6) & ((\iCounter[5]~37\) # (GND)))
-- \iCounter[6]~39\ = CARRY((!\iCounter[5]~37\) # (!iCounter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => iCounter(6),
	datad => VCC,
	cin => \iCounter[5]~37\,
	combout => \iCounter[6]~38_combout\,
	cout => \iCounter[6]~39\);

-- Location: FF_X33_Y10_N15
\iCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[6]~38_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(6));

-- Location: LCCOMB_X33_Y10_N16
\iCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[7]~40_combout\ = (iCounter(7) & (\iCounter[6]~39\ $ (GND))) # (!iCounter(7) & (!\iCounter[6]~39\ & VCC))
-- \iCounter[7]~41\ = CARRY((iCounter(7) & !\iCounter[6]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => iCounter(7),
	datad => VCC,
	cin => \iCounter[6]~39\,
	combout => \iCounter[7]~40_combout\,
	cout => \iCounter[7]~41\);

-- Location: FF_X33_Y10_N17
\iCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[7]~40_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(7));

-- Location: LCCOMB_X33_Y10_N18
\iCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[8]~42_combout\ = (iCounter(8) & (!\iCounter[7]~41\)) # (!iCounter(8) & ((\iCounter[7]~41\) # (GND)))
-- \iCounter[8]~43\ = CARRY((!\iCounter[7]~41\) # (!iCounter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => iCounter(8),
	datad => VCC,
	cin => \iCounter[7]~41\,
	combout => \iCounter[8]~42_combout\,
	cout => \iCounter[8]~43\);

-- Location: FF_X33_Y10_N19
\iCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[8]~42_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(8));

-- Location: LCCOMB_X33_Y10_N20
\iCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[9]~44_combout\ = (iCounter(9) & (\iCounter[8]~43\ $ (GND))) # (!iCounter(9) & (!\iCounter[8]~43\ & VCC))
-- \iCounter[9]~45\ = CARRY((iCounter(9) & !\iCounter[8]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => iCounter(9),
	datad => VCC,
	cin => \iCounter[8]~43\,
	combout => \iCounter[9]~44_combout\,
	cout => \iCounter[9]~45\);

-- Location: FF_X33_Y10_N21
\iCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[9]~44_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(9));

-- Location: LCCOMB_X33_Y10_N22
\iCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[10]~46_combout\ = (iCounter(10) & (!\iCounter[9]~45\)) # (!iCounter(10) & ((\iCounter[9]~45\) # (GND)))
-- \iCounter[10]~47\ = CARRY((!\iCounter[9]~45\) # (!iCounter(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => iCounter(10),
	datad => VCC,
	cin => \iCounter[9]~45\,
	combout => \iCounter[10]~46_combout\,
	cout => \iCounter[10]~47\);

-- Location: FF_X33_Y10_N23
\iCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[10]~46_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(10));

-- Location: LCCOMB_X33_Y10_N24
\iCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[11]~48_combout\ = (iCounter(11) & (\iCounter[10]~47\ $ (GND))) # (!iCounter(11) & (!\iCounter[10]~47\ & VCC))
-- \iCounter[11]~49\ = CARRY((iCounter(11) & !\iCounter[10]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => iCounter(11),
	datad => VCC,
	cin => \iCounter[10]~47\,
	combout => \iCounter[11]~48_combout\,
	cout => \iCounter[11]~49\);

-- Location: FF_X33_Y10_N25
\iCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[11]~48_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(11));

-- Location: LCCOMB_X33_Y10_N26
\iCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[12]~50_combout\ = (iCounter(12) & (!\iCounter[11]~49\)) # (!iCounter(12) & ((\iCounter[11]~49\) # (GND)))
-- \iCounter[12]~51\ = CARRY((!\iCounter[11]~49\) # (!iCounter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => iCounter(12),
	datad => VCC,
	cin => \iCounter[11]~49\,
	combout => \iCounter[12]~50_combout\,
	cout => \iCounter[12]~51\);

-- Location: FF_X33_Y10_N27
\iCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[12]~50_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(12));

-- Location: LCCOMB_X33_Y10_N28
\iCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[13]~52_combout\ = (iCounter(13) & (\iCounter[12]~51\ $ (GND))) # (!iCounter(13) & (!\iCounter[12]~51\ & VCC))
-- \iCounter[13]~53\ = CARRY((iCounter(13) & !\iCounter[12]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => iCounter(13),
	datad => VCC,
	cin => \iCounter[12]~51\,
	combout => \iCounter[13]~52_combout\,
	cout => \iCounter[13]~53\);

-- Location: FF_X33_Y10_N29
\iCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[13]~52_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(13));

-- Location: LCCOMB_X33_Y10_N30
\iCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[14]~54_combout\ = (iCounter(14) & (!\iCounter[13]~53\)) # (!iCounter(14) & ((\iCounter[13]~53\) # (GND)))
-- \iCounter[14]~55\ = CARRY((!\iCounter[13]~53\) # (!iCounter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => iCounter(14),
	datad => VCC,
	cin => \iCounter[13]~53\,
	combout => \iCounter[14]~54_combout\,
	cout => \iCounter[14]~55\);

-- Location: FF_X33_Y10_N31
\iCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[14]~54_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(14));

-- Location: LCCOMB_X33_Y9_N0
\iCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[15]~56_combout\ = (iCounter(15) & (\iCounter[14]~55\ $ (GND))) # (!iCounter(15) & (!\iCounter[14]~55\ & VCC))
-- \iCounter[15]~57\ = CARRY((iCounter(15) & !\iCounter[14]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => iCounter(15),
	datad => VCC,
	cin => \iCounter[14]~55\,
	combout => \iCounter[15]~56_combout\,
	cout => \iCounter[15]~57\);

-- Location: FF_X33_Y9_N1
\iCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[15]~56_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(15));

-- Location: LCCOMB_X33_Y9_N2
\iCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[16]~58_combout\ = (iCounter(16) & (!\iCounter[15]~57\)) # (!iCounter(16) & ((\iCounter[15]~57\) # (GND)))
-- \iCounter[16]~59\ = CARRY((!\iCounter[15]~57\) # (!iCounter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => iCounter(16),
	datad => VCC,
	cin => \iCounter[15]~57\,
	combout => \iCounter[16]~58_combout\,
	cout => \iCounter[16]~59\);

-- Location: FF_X33_Y9_N3
\iCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[16]~58_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(16));

-- Location: LCCOMB_X33_Y9_N4
\iCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[17]~60_combout\ = (iCounter(17) & (\iCounter[16]~59\ $ (GND))) # (!iCounter(17) & (!\iCounter[16]~59\ & VCC))
-- \iCounter[17]~61\ = CARRY((iCounter(17) & !\iCounter[16]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => iCounter(17),
	datad => VCC,
	cin => \iCounter[16]~59\,
	combout => \iCounter[17]~60_combout\,
	cout => \iCounter[17]~61\);

-- Location: FF_X33_Y9_N5
\iCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[17]~60_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(17));

-- Location: LCCOMB_X33_Y9_N6
\iCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[18]~62_combout\ = (iCounter(18) & (!\iCounter[17]~61\)) # (!iCounter(18) & ((\iCounter[17]~61\) # (GND)))
-- \iCounter[18]~63\ = CARRY((!\iCounter[17]~61\) # (!iCounter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => iCounter(18),
	datad => VCC,
	cin => \iCounter[17]~61\,
	combout => \iCounter[18]~62_combout\,
	cout => \iCounter[18]~63\);

-- Location: FF_X33_Y9_N7
\iCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[18]~62_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(18));

-- Location: LCCOMB_X33_Y9_N8
\iCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[19]~64_combout\ = (iCounter(19) & (\iCounter[18]~63\ $ (GND))) # (!iCounter(19) & (!\iCounter[18]~63\ & VCC))
-- \iCounter[19]~65\ = CARRY((iCounter(19) & !\iCounter[18]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => iCounter(19),
	datad => VCC,
	cin => \iCounter[18]~63\,
	combout => \iCounter[19]~64_combout\,
	cout => \iCounter[19]~65\);

-- Location: FF_X33_Y9_N9
\iCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[19]~64_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(19));

-- Location: LCCOMB_X33_Y9_N10
\iCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[20]~66_combout\ = (iCounter(20) & (!\iCounter[19]~65\)) # (!iCounter(20) & ((\iCounter[19]~65\) # (GND)))
-- \iCounter[20]~67\ = CARRY((!\iCounter[19]~65\) # (!iCounter(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => iCounter(20),
	datad => VCC,
	cin => \iCounter[19]~65\,
	combout => \iCounter[20]~66_combout\,
	cout => \iCounter[20]~67\);

-- Location: FF_X33_Y9_N11
\iCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[20]~66_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(20));

-- Location: LCCOMB_X33_Y9_N12
\iCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[21]~68_combout\ = (iCounter(21) & (\iCounter[20]~67\ $ (GND))) # (!iCounter(21) & (!\iCounter[20]~67\ & VCC))
-- \iCounter[21]~69\ = CARRY((iCounter(21) & !\iCounter[20]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => iCounter(21),
	datad => VCC,
	cin => \iCounter[20]~67\,
	combout => \iCounter[21]~68_combout\,
	cout => \iCounter[21]~69\);

-- Location: FF_X33_Y9_N13
\iCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[21]~68_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(21));

-- Location: LCCOMB_X33_Y9_N14
\iCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[22]~70_combout\ = (iCounter(22) & (!\iCounter[21]~69\)) # (!iCounter(22) & ((\iCounter[21]~69\) # (GND)))
-- \iCounter[22]~71\ = CARRY((!\iCounter[21]~69\) # (!iCounter(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => iCounter(22),
	datad => VCC,
	cin => \iCounter[21]~69\,
	combout => \iCounter[22]~70_combout\,
	cout => \iCounter[22]~71\);

-- Location: FF_X33_Y9_N15
\iCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[22]~70_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(22));

-- Location: LCCOMB_X33_Y9_N16
\iCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[23]~72_combout\ = (iCounter(23) & (\iCounter[22]~71\ $ (GND))) # (!iCounter(23) & (!\iCounter[22]~71\ & VCC))
-- \iCounter[23]~73\ = CARRY((iCounter(23) & !\iCounter[22]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => iCounter(23),
	datad => VCC,
	cin => \iCounter[22]~71\,
	combout => \iCounter[23]~72_combout\,
	cout => \iCounter[23]~73\);

-- Location: FF_X33_Y9_N17
\iCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[23]~72_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(23));

-- Location: LCCOMB_X33_Y9_N18
\iCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[24]~74_combout\ = (iCounter(24) & (!\iCounter[23]~73\)) # (!iCounter(24) & ((\iCounter[23]~73\) # (GND)))
-- \iCounter[24]~75\ = CARRY((!\iCounter[23]~73\) # (!iCounter(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => iCounter(24),
	datad => VCC,
	cin => \iCounter[23]~73\,
	combout => \iCounter[24]~74_combout\,
	cout => \iCounter[24]~75\);

-- Location: FF_X33_Y9_N19
\iCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[24]~74_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(24));

-- Location: LCCOMB_X33_Y9_N20
\iCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[25]~76_combout\ = (iCounter(25) & (\iCounter[24]~75\ $ (GND))) # (!iCounter(25) & (!\iCounter[24]~75\ & VCC))
-- \iCounter[25]~77\ = CARRY((iCounter(25) & !\iCounter[24]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => iCounter(25),
	datad => VCC,
	cin => \iCounter[24]~75\,
	combout => \iCounter[25]~76_combout\,
	cout => \iCounter[25]~77\);

-- Location: FF_X33_Y9_N21
\iCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[25]~76_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(25));

-- Location: LCCOMB_X33_Y9_N22
\iCounter[26]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[26]~78_combout\ = (iCounter(26) & (!\iCounter[25]~77\)) # (!iCounter(26) & ((\iCounter[25]~77\) # (GND)))
-- \iCounter[26]~79\ = CARRY((!\iCounter[25]~77\) # (!iCounter(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => iCounter(26),
	datad => VCC,
	cin => \iCounter[25]~77\,
	combout => \iCounter[26]~78_combout\,
	cout => \iCounter[26]~79\);

-- Location: FF_X33_Y9_N23
\iCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[26]~78_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(26));

-- Location: LCCOMB_X33_Y9_N24
\iCounter[27]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[27]~80_combout\ = (iCounter(27) & (\iCounter[26]~79\ $ (GND))) # (!iCounter(27) & (!\iCounter[26]~79\ & VCC))
-- \iCounter[27]~81\ = CARRY((iCounter(27) & !\iCounter[26]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => iCounter(27),
	datad => VCC,
	cin => \iCounter[26]~79\,
	combout => \iCounter[27]~80_combout\,
	cout => \iCounter[27]~81\);

-- Location: FF_X33_Y9_N25
\iCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[27]~80_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(27));

-- Location: LCCOMB_X33_Y9_N26
\iCounter[28]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \iCounter[28]~82_combout\ = iCounter(28) $ (\iCounter[27]~81\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => iCounter(28),
	cin => \iCounter[27]~81\,
	combout => \iCounter[28]~82_combout\);

-- Location: FF_X33_Y9_N27
\iCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \iCounter[28]~82_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iCounter(28));

ww_led(0) <= \led[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;
END structure;


