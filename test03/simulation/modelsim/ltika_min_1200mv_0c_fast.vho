-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "03/24/2016 19:54:01"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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

ENTITY 	ltika IS
    PORT (
	p_reset : IN std_logic;
	m_clock : IN std_logic;
	led : OUT std_logic
	);
END ltika;

-- Design Ports Information
-- led	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clock	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_reset	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ltika IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_p_reset : std_logic;
SIGNAL ww_m_clock : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL \m_clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Add0~76_combout\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Add0~88_combout\ : std_logic;
SIGNAL \led~output_o\ : std_logic;
SIGNAL \m_clock~input_o\ : std_logic;
SIGNAL \m_clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \p_reset~input_o\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~83_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~82_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~79_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~77_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~73_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~96_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~93_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~91_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~89_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~87_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~94_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~81_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Add0~63\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \Add0~98_combout\ : std_logic;
SIGNAL \Add0~65\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Add0~97_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \cnt[25]~0_combout\ : std_logic;
SIGNAL \led_stat~0_combout\ : std_logic;
SIGNAL \led_stat~q\ : std_logic;
SIGNAL cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_led_stat~q\ : std_logic;

BEGIN

ww_p_reset <= p_reset;
ww_m_clock <= m_clock;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\m_clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \m_clock~input_o\);
\ALT_INV_led_stat~q\ <= NOT \led_stat~q\;

-- Location: LCCOMB_X111_Y41_N14
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (cnt(7) & (!\Add0~17\)) # (!cnt(7) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(7),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X111_Y41_N22
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (cnt(11) & (!\Add0~25\)) # (!cnt(11) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(11),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X111_Y40_N6
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (cnt(19) & (!\Add0~41\)) # (!cnt(19) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(19),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X111_Y40_N14
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (cnt(23) & (!\Add0~49\)) # (!cnt(23) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(23),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X111_Y40_N20
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (cnt(26) & (\Add0~55\ $ (GND))) # (!cnt(26) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((cnt(26) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(26),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X111_Y40_N22
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (cnt(27) & (!\Add0~57\)) # (!cnt(27) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!cnt(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(27),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X111_Y40_N24
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (cnt(28) & (\Add0~59\ $ (GND))) # (!cnt(28) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((cnt(28) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(28),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X110_Y40_N11
\cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \Add0~69_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(28));

-- Location: FF_X110_Y40_N27
\cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \Add0~70_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(27));

-- Location: FF_X110_Y40_N9
\cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \Add0~71_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(26));

-- Location: FF_X110_Y40_N3
\cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \Add0~72_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(23));

-- Location: LCCOMB_X110_Y40_N18
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!cnt(27) & (!cnt(22) & (!cnt(26) & !cnt(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(27),
	datab => cnt(22),
	datac => cnt(26),
	datad => cnt(23),
	combout => \Equal0~1_combout\);

-- Location: FF_X110_Y40_N13
\cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \Add0~76_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(19));

-- Location: FF_X110_Y41_N3
\cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \Add0~84_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(11));

-- Location: LCCOMB_X110_Y41_N30
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!cnt(11) & (!cnt(12) & (!cnt(10) & !cnt(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(11),
	datab => cnt(12),
	datac => cnt(10),
	datad => cnt(13),
	combout => \Equal0~5_combout\);

-- Location: FF_X110_Y41_N13
\cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \Add0~88_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(7));

-- Location: LCCOMB_X110_Y40_N10
\Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (\Add0~60_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => cnt(24),
	datac => \Equal0~9_combout\,
	datad => \Add0~60_combout\,
	combout => \Add0~69_combout\);

-- Location: LCCOMB_X110_Y40_N26
\Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~70_combout\ = (\Add0~58_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => cnt(24),
	datac => \Equal0~9_combout\,
	datad => \Add0~58_combout\,
	combout => \Add0~70_combout\);

-- Location: LCCOMB_X110_Y40_N8
\Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = (\Add0~56_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => cnt(24),
	datac => \Add0~56_combout\,
	datad => \Equal0~9_combout\,
	combout => \Add0~71_combout\);

-- Location: LCCOMB_X110_Y40_N2
\Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = (\Add0~50_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => cnt(24),
	datac => \Add0~50_combout\,
	datad => \Equal0~9_combout\,
	combout => \Add0~72_combout\);

-- Location: LCCOMB_X110_Y40_N12
\Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~76_combout\ = (\Add0~42_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => cnt(24),
	datac => \Equal0~9_combout\,
	datad => \Add0~42_combout\,
	combout => \Add0~76_combout\);

-- Location: LCCOMB_X110_Y41_N2
\Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = (\Add0~26_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => \Add0~26_combout\,
	datac => \Equal0~9_combout\,
	datad => cnt(24),
	combout => \Add0~84_combout\);

-- Location: LCCOMB_X110_Y41_N12
\Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~88_combout\ = (\Add0~18_combout\ & ((cnt(24) $ (!cnt(25))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(24),
	datab => \Add0~18_combout\,
	datac => \Equal0~9_combout\,
	datad => cnt(25),
	combout => \Add0~88_combout\);

-- Location: IOOBUF_X69_Y73_N16
\led~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_led_stat~q\,
	devoe => ww_devoe,
	o => \led~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\m_clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clock,
	o => \m_clock~input_o\);

-- Location: CLKCTRL_G4
\m_clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \m_clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \m_clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X111_Y41_N12
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (cnt(6) & (\Add0~15\ $ (GND))) # (!cnt(6) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((cnt(6) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X111_Y41_N16
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (cnt(8) & (\Add0~19\ $ (GND))) # (!cnt(8) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((cnt(8) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(8),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X111_Y41_N18
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (cnt(9) & (!\Add0~21\)) # (!cnt(9) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(9),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X111_Y41_N20
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (cnt(10) & (\Add0~23\ $ (GND))) # (!cnt(10) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((cnt(10) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(10),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X110_Y41_N4
\Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~85_combout\ = (\Add0~24_combout\ & ((cnt(24) $ (!cnt(25))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(24),
	datab => \Add0~24_combout\,
	datac => \Equal0~9_combout\,
	datad => cnt(25),
	combout => \Add0~85_combout\);

-- Location: IOIBUF_X115_Y40_N8
\p_reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_reset,
	o => \p_reset~input_o\);

-- Location: FF_X110_Y41_N5
\cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \Add0~85_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(10));

-- Location: LCCOMB_X111_Y41_N24
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (cnt(12) & (\Add0~27\ $ (GND))) # (!cnt(12) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((cnt(12) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(12),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X110_Y41_N28
\Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~83_combout\ = (\Add0~28_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => \Add0~28_combout\,
	datac => \Equal0~9_combout\,
	datad => cnt(24),
	combout => \Add0~83_combout\);

-- Location: FF_X110_Y41_N29
\cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \Add0~83_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(12));

-- Location: LCCOMB_X111_Y41_N26
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (cnt(13) & (!\Add0~29\)) # (!cnt(13) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(13),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X110_Y41_N18
\Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~82_combout\ = (\Add0~30_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => \Add0~30_combout\,
	datac => \Equal0~9_combout\,
	datad => cnt(24),
	combout => \Add0~82_combout\);

-- Location: FF_X110_Y41_N19
\cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \Add0~82_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(13));

-- Location: LCCOMB_X111_Y41_N28
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (cnt(14) & (\Add0~31\ $ (GND))) # (!cnt(14) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((cnt(14) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(14),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X111_Y41_N30
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (cnt(15) & (!\Add0~33\)) # (!cnt(15) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(15),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X111_Y40_N0
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (cnt(16) & (\Add0~35\ $ (GND))) # (!cnt(16) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((cnt(16) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(16),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X112_Y41_N30
\Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~79_combout\ = (\Add0~36_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => cnt(24),
	datac => \Add0~36_combout\,
	datad => \Equal0~9_combout\,
	combout => \Add0~79_combout\);

-- Location: FF_X112_Y41_N31
\cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \Add0~79_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(16));

-- Location: LCCOMB_X111_Y40_N2
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (cnt(17) & (!\Add0~37\)) # (!cnt(17) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(17),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X112_Y41_N20
\Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = (\Add0~38_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => cnt(24),
	datac => \Add0~38_combout\,
	datad => \Equal0~9_combout\,
	combout => \Add0~78_combout\);

-- Location: FF_X112_Y41_N21
\cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \Add0~78_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(17));

-- Location: LCCOMB_X111_Y40_N4
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (cnt(18) & (\Add0~39\ $ (GND))) # (!cnt(18) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((cnt(18) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(18),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X110_Y40_N6
\Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~77_combout\ = (\Add0~40_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => cnt(24),
	datac => \Equal0~9_combout\,
	datad => \Add0~40_combout\,
	combout => \Add0~77_combout\);

-- Location: FF_X110_Y40_N7
\cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \Add0~77_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(18));

-- Location: LCCOMB_X111_Y40_N8
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (cnt(20) & (\Add0~43\ $ (GND))) # (!cnt(20) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((cnt(20) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(20),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X110_Y40_N30
\Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = (\Add0~44_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => cnt(24),
	datac => \Add0~44_combout\,
	datad => \Equal0~9_combout\,
	combout => \Add0~75_combout\);

-- Location: FF_X110_Y40_N31
\cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \Add0~75_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(20));

-- Location: LCCOMB_X111_Y40_N10
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (cnt(21) & (!\Add0~45\)) # (!cnt(21) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(21),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X110_Y40_N4
\Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = (\Add0~46_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => cnt(24),
	datac => \Add0~46_combout\,
	datad => \Equal0~9_combout\,
	combout => \Add0~74_combout\);

-- Location: FF_X110_Y40_N5
\cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \Add0~74_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(21));

-- Location: LCCOMB_X111_Y40_N12
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (cnt(22) & (\Add0~47\ $ (GND))) # (!cnt(22) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((cnt(22) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(22),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X110_Y40_N24
\Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~73_combout\ = (\Add0~48_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => cnt(24),
	datac => \Add0~48_combout\,
	datad => \Equal0~9_combout\,
	combout => \Add0~73_combout\);

-- Location: FF_X110_Y40_N25
\cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \Add0~73_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(22));

-- Location: LCCOMB_X111_Y40_N16
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (cnt(24) & (\Add0~51\ $ (GND))) # (!cnt(24) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((cnt(24) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(24),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X110_Y40_N14
\Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~96_combout\ = (\Add0~52_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => \Equal0~9_combout\,
	datac => cnt(24),
	datad => \Add0~52_combout\,
	combout => \Add0~96_combout\);

-- Location: FF_X110_Y40_N15
\cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \Add0~96_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(24));

-- Location: LCCOMB_X111_Y41_N0
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = cnt(0) $ (VCC)
-- \Add0~5\ = CARRY(cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datad => VCC,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X111_Y41_N2
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (cnt(1) & (!\Add0~5\)) # (!cnt(1) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X111_Y41_N4
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (cnt(2) & (\Add0~7\ $ (GND))) # (!cnt(2) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((cnt(2) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(2),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X110_Y41_N26
\Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~93_combout\ = (\Add0~8_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => cnt(24),
	datac => \Equal0~9_combout\,
	datad => \Add0~8_combout\,
	combout => \Add0~93_combout\);

-- Location: FF_X111_Y41_N25
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	asdata => \Add0~93_combout\,
	clrn => \p_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: LCCOMB_X111_Y41_N6
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (cnt(3) & (!\Add0~9\)) # (!cnt(3) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X111_Y41_N8
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (cnt(4) & (\Add0~11\ $ (GND))) # (!cnt(4) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((cnt(4) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(4),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X112_Y41_N8
\Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~91_combout\ = (\Add0~12_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => cnt(24),
	datac => \Equal0~9_combout\,
	datad => \Add0~12_combout\,
	combout => \Add0~91_combout\);

-- Location: FF_X111_Y41_N15
\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	asdata => \Add0~91_combout\,
	clrn => \p_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

-- Location: LCCOMB_X111_Y41_N10
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (cnt(5) & (!\Add0~13\)) # (!cnt(5) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(5),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X112_Y41_N14
\Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = (\Add0~14_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => cnt(24),
	datac => \Equal0~9_combout\,
	datad => \Add0~14_combout\,
	combout => \Add0~90_combout\);

-- Location: FF_X112_Y41_N15
\cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \Add0~90_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(5));

-- Location: LCCOMB_X110_Y41_N14
\Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~89_combout\ = (\Add0~16_combout\ & ((cnt(24) $ (!cnt(25))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(24),
	datab => \Add0~16_combout\,
	datac => \Equal0~9_combout\,
	datad => cnt(25),
	combout => \Add0~89_combout\);

-- Location: FF_X110_Y41_N15
\cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \Add0~89_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(6));

-- Location: LCCOMB_X110_Y41_N8
\Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = (\Add0~22_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => \Add0~22_combout\,
	datac => \Equal0~9_combout\,
	datad => cnt(24),
	combout => \Add0~86_combout\);

-- Location: FF_X110_Y41_N9
\cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \Add0~86_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(9));

-- Location: LCCOMB_X110_Y41_N10
\Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~87_combout\ = (\Add0~20_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => \Add0~20_combout\,
	datac => \Equal0~9_combout\,
	datad => cnt(24),
	combout => \Add0~87_combout\);

-- Location: FF_X110_Y41_N11
\cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \Add0~87_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(8));

-- Location: LCCOMB_X110_Y41_N20
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!cnt(7) & (!cnt(6) & (!cnt(9) & !cnt(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(7),
	datab => cnt(6),
	datac => cnt(9),
	datad => cnt(8),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X110_Y41_N6
\Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~95_combout\ = (\Add0~4_combout\ & ((cnt(24) $ (!cnt(25))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(24),
	datab => \Add0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => cnt(25),
	combout => \Add0~95_combout\);

-- Location: FF_X111_Y41_N23
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	asdata => \Add0~95_combout\,
	clrn => \p_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: LCCOMB_X110_Y41_N0
\Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~94_combout\ = (\Add0~6_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => cnt(24),
	datac => \Equal0~9_combout\,
	datad => \Add0~6_combout\,
	combout => \Add0~94_combout\);

-- Location: FF_X111_Y41_N27
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	asdata => \Add0~94_combout\,
	clrn => \p_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: LCCOMB_X110_Y41_N16
\Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = (\Add0~10_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => cnt(24),
	datac => \Equal0~9_combout\,
	datad => \Add0~10_combout\,
	combout => \Add0~92_combout\);

-- Location: FF_X111_Y41_N13
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	asdata => \Add0~92_combout\,
	clrn => \p_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: LCCOMB_X112_Y41_N16
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!cnt(4) & (!cnt(2) & (!cnt(5) & !cnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	datab => cnt(2),
	datac => cnt(5),
	datad => cnt(3),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X112_Y41_N10
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!cnt(0) & (!cnt(1) & \Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(0),
	datac => cnt(1),
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X110_Y40_N0
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!cnt(19) & (!cnt(21) & (!cnt(20) & !cnt(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(19),
	datab => cnt(21),
	datac => cnt(20),
	datad => cnt(18),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X112_Y41_N4
\Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = (\Add0~34_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => cnt(24),
	datac => \Equal0~9_combout\,
	datad => \Add0~34_combout\,
	combout => \Add0~80_combout\);

-- Location: FF_X112_Y41_N5
\cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \Add0~80_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(15));

-- Location: LCCOMB_X112_Y41_N6
\Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~81_combout\ = (\Add0~32_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => cnt(24),
	datac => \Equal0~9_combout\,
	datad => \Add0~32_combout\,
	combout => \Add0~81_combout\);

-- Location: FF_X112_Y41_N7
\cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \Add0~81_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(14));

-- Location: LCCOMB_X112_Y41_N12
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!cnt(16) & (!cnt(17) & (!cnt(15) & !cnt(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(16),
	datab => cnt(17),
	datac => cnt(15),
	datad => cnt(14),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X111_Y40_N18
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (cnt(25) & (!\Add0~53\)) # (!cnt(25) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!cnt(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X111_Y40_N26
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = (cnt(29) & (!\Add0~61\)) # (!cnt(29) & ((\Add0~61\) # (GND)))
-- \Add0~63\ = CARRY((!\Add0~61\) # (!cnt(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(29),
	datad => VCC,
	cin => \Add0~61\,
	combout => \Add0~62_combout\,
	cout => \Add0~63\);

-- Location: LCCOMB_X110_Y40_N28
\Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = (\Add0~62_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => cnt(24),
	datac => \Equal0~9_combout\,
	datad => \Add0~62_combout\,
	combout => \Add0~68_combout\);

-- Location: FF_X110_Y40_N29
\cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \Add0~68_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(29));

-- Location: LCCOMB_X111_Y40_N28
\Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~64_combout\ = (cnt(30) & (\Add0~63\ $ (GND))) # (!cnt(30) & (!\Add0~63\ & VCC))
-- \Add0~65\ = CARRY((cnt(30) & !\Add0~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(30),
	datad => VCC,
	cin => \Add0~63\,
	combout => \Add0~64_combout\,
	cout => \Add0~65\);

-- Location: LCCOMB_X110_Y40_N22
\Add0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~98_combout\ = (\Add0~64_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => cnt(24),
	datac => \Equal0~9_combout\,
	datad => \Add0~64_combout\,
	combout => \Add0~98_combout\);

-- Location: FF_X110_Y40_N23
\cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \Add0~98_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(30));

-- Location: LCCOMB_X111_Y40_N30
\Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = \Add0~65\ $ (cnt(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt(31),
	cin => \Add0~65\,
	combout => \Add0~66_combout\);

-- Location: LCCOMB_X110_Y40_N20
\Add0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~97_combout\ = (\Add0~66_combout\ & ((cnt(25) $ (!cnt(24))) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(25),
	datab => cnt(24),
	datac => \Add0~66_combout\,
	datad => \Equal0~9_combout\,
	combout => \Add0~97_combout\);

-- Location: FF_X110_Y40_N21
\cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \Add0~97_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(31));

-- Location: LCCOMB_X110_Y40_N16
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!cnt(28) & (!cnt(31) & (!cnt(30) & !cnt(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(28),
	datab => cnt(31),
	datac => cnt(30),
	datad => cnt(29),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X110_Y41_N24
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~2_combout\ & (\Equal0~3_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X110_Y41_N22
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~5_combout\ & (\Equal0~6_combout\ & (\Equal0~8_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X112_Y40_N4
\cnt[25]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[25]~0_combout\ = (cnt(24) & (\Add0~54_combout\ & ((cnt(25)) # (!\Equal0~9_combout\)))) # (!cnt(24) & ((\Add0~54_combout\) # ((\Equal0~9_combout\ & cnt(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(24),
	datab => \Equal0~9_combout\,
	datac => cnt(25),
	datad => \Add0~54_combout\,
	combout => \cnt[25]~0_combout\);

-- Location: FF_X112_Y40_N5
\cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \cnt[25]~0_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(25));

-- Location: LCCOMB_X109_Y41_N12
\led_stat~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_stat~0_combout\ = \led_stat~q\ $ (((cnt(24) & (!cnt(25) & \Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(24),
	datab => cnt(25),
	datac => \led_stat~q\,
	datad => \Equal0~9_combout\,
	combout => \led_stat~0_combout\);

-- Location: FF_X109_Y41_N13
led_stat : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \led_stat~0_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_stat~q\);

ww_led <= \led~output_o\;
END structure;


