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

-- DATE "03/30/2016 12:21:16"

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

ENTITY 	serial_r IS
    PORT (
	p_reset : IN std_logic;
	m_clock : IN std_logic;
	RDX : IN std_logic;
	LEDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END serial_r;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clock	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_reset	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDX	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF serial_r IS
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
SIGNAL ww_RDX : std_logic;
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \m_clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_i|f_r[13]~46_combout\ : std_logic;
SIGNAL \counter_i|f_r[14]~49\ : std_logic;
SIGNAL \counter_i|f_r[15]~50_combout\ : std_logic;
SIGNAL \counter_i|cnt[13]~61_combout\ : std_logic;
SIGNAL \counter_i|cnt[15]~65_combout\ : std_logic;
SIGNAL \counter_i|cnt[21]~77_combout\ : std_logic;
SIGNAL \counter_i|cnt[27]~90\ : std_logic;
SIGNAL \counter_i|cnt[28]~91_combout\ : std_logic;
SIGNAL \counter_i|cnt[28]~92\ : std_logic;
SIGNAL \counter_i|cnt[29]~93_combout\ : std_logic;
SIGNAL \counter_i|cnt[29]~94\ : std_logic;
SIGNAL \counter_i|cnt[30]~95_combout\ : std_logic;
SIGNAL \counter_i|cnt[30]~96\ : std_logic;
SIGNAL \counter_i|cnt[31]~97_combout\ : std_logic;
SIGNAL \_reg_10~q\ : std_logic;
SIGNAL \counter_i|Equal0~3_combout\ : std_logic;
SIGNAL \counter_i|Equal0~9_combout\ : std_logic;
SIGNAL \_reg_10~0_combout\ : std_logic;
SIGNAL \loop~5_combout\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \m_clock~input_o\ : std_logic;
SIGNAL \m_clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \RDX~input_o\ : std_logic;
SIGNAL \p_reset~input_o\ : std_logic;
SIGNAL \counter_i|f_r[0]~16_combout\ : std_logic;
SIGNAL \counter_i|f_r[3]~27\ : std_logic;
SIGNAL \counter_i|f_r[4]~28_combout\ : std_logic;
SIGNAL \_reg_13~q\ : std_logic;
SIGNAL \counter_i|f_r[15]~24_combout\ : std_logic;
SIGNAL \counter_i|f_r[15]~25_combout\ : std_logic;
SIGNAL \counter_i|f_r[4]~29\ : std_logic;
SIGNAL \counter_i|f_r[5]~31\ : std_logic;
SIGNAL \counter_i|f_r[6]~33\ : std_logic;
SIGNAL \counter_i|f_r[7]~34_combout\ : std_logic;
SIGNAL \counter_i|f_r[7]~35\ : std_logic;
SIGNAL \counter_i|f_r[8]~36_combout\ : std_logic;
SIGNAL \counter_i|f_r[8]~37\ : std_logic;
SIGNAL \counter_i|f_r[9]~38_combout\ : std_logic;
SIGNAL \counter_i|f_r[9]~39\ : std_logic;
SIGNAL \counter_i|f_r[10]~40_combout\ : std_logic;
SIGNAL \_proc_receive_set~1_combout\ : std_logic;
SIGNAL \counter_i|f_r[6]~32_combout\ : std_logic;
SIGNAL \counter_i|f_r[5]~30_combout\ : std_logic;
SIGNAL \_proc_receive_set~0_combout\ : std_logic;
SIGNAL \counter_i|f_r[10]~41\ : std_logic;
SIGNAL \counter_i|f_r[11]~43\ : std_logic;
SIGNAL \counter_i|f_r[12]~44_combout\ : std_logic;
SIGNAL \counter_i|f_r[11]~42_combout\ : std_logic;
SIGNAL \counter_i|f_r[12]~45\ : std_logic;
SIGNAL \counter_i|f_r[13]~47\ : std_logic;
SIGNAL \counter_i|f_r[14]~48_combout\ : std_logic;
SIGNAL \_proc_receive_set~2_combout\ : std_logic;
SIGNAL \_proc_receive_set~3_combout\ : std_logic;
SIGNAL \_proc_receive_set~4_combout\ : std_logic;
SIGNAL \_proc_receive_set~5_combout\ : std_logic;
SIGNAL \receive~0_combout\ : std_logic;
SIGNAL \receive~q\ : std_logic;
SIGNAL \_reg_12~0_combout\ : std_logic;
SIGNAL \_reg_12~q\ : std_logic;
SIGNAL \loop~4_combout\ : std_logic;
SIGNAL \loop[0]~2_combout\ : std_logic;
SIGNAL \always1~0_combout\ : std_logic;
SIGNAL \loop~3_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \loop~6_combout\ : std_logic;
SIGNAL \_reg_11~0_combout\ : std_logic;
SIGNAL \_reg_9~0_combout\ : std_logic;
SIGNAL \_reg_9~1_combout\ : std_logic;
SIGNAL \_reg_9~q\ : std_logic;
SIGNAL \_reg_8~0_combout\ : std_logic;
SIGNAL \_reg_8~q\ : std_logic;
SIGNAL \_reg_11~1_combout\ : std_logic;
SIGNAL \_reg_11~q\ : std_logic;
SIGNAL \counter_i|f_r~22_combout\ : std_logic;
SIGNAL \counter_i|cnt[0]~32_combout\ : std_logic;
SIGNAL \counter_i|cnt~38_combout\ : std_logic;
SIGNAL \counter_i|cnt[6]~39_combout\ : std_logic;
SIGNAL \receiving~0_combout\ : std_logic;
SIGNAL \receiving~1_combout\ : std_logic;
SIGNAL \receiving~q\ : std_logic;
SIGNAL \counter_i|cnt[6]~40_combout\ : std_logic;
SIGNAL \counter_i|cnt[0]~33\ : std_logic;
SIGNAL \counter_i|cnt[1]~34_combout\ : std_logic;
SIGNAL \counter_i|cnt[1]~35\ : std_logic;
SIGNAL \counter_i|cnt[2]~36_combout\ : std_logic;
SIGNAL \counter_i|cnt[2]~37\ : std_logic;
SIGNAL \counter_i|cnt[3]~42\ : std_logic;
SIGNAL \counter_i|cnt[4]~43_combout\ : std_logic;
SIGNAL \counter_i|cnt[4]~44\ : std_logic;
SIGNAL \counter_i|cnt[5]~46\ : std_logic;
SIGNAL \counter_i|cnt[6]~48\ : std_logic;
SIGNAL \counter_i|cnt[7]~49_combout\ : std_logic;
SIGNAL \counter_i|cnt[7]~50\ : std_logic;
SIGNAL \counter_i|cnt[8]~51_combout\ : std_logic;
SIGNAL \counter_i|cnt[8]~52\ : std_logic;
SIGNAL \counter_i|cnt[9]~53_combout\ : std_logic;
SIGNAL \counter_i|cnt[9]~54\ : std_logic;
SIGNAL \counter_i|cnt[10]~55_combout\ : std_logic;
SIGNAL \counter_i|cnt[10]~56\ : std_logic;
SIGNAL \counter_i|cnt[11]~58\ : std_logic;
SIGNAL \counter_i|cnt[12]~59_combout\ : std_logic;
SIGNAL \counter_i|cnt[12]~60\ : std_logic;
SIGNAL \counter_i|cnt[13]~62\ : std_logic;
SIGNAL \counter_i|cnt[14]~63_combout\ : std_logic;
SIGNAL \counter_i|cnt[14]~64\ : std_logic;
SIGNAL \counter_i|cnt[15]~66\ : std_logic;
SIGNAL \counter_i|cnt[16]~67_combout\ : std_logic;
SIGNAL \counter_i|cnt[16]~68\ : std_logic;
SIGNAL \counter_i|cnt[17]~69_combout\ : std_logic;
SIGNAL \counter_i|cnt[17]~70\ : std_logic;
SIGNAL \counter_i|cnt[18]~71_combout\ : std_logic;
SIGNAL \counter_i|cnt[18]~72\ : std_logic;
SIGNAL \counter_i|cnt[19]~74\ : std_logic;
SIGNAL \counter_i|cnt[20]~75_combout\ : std_logic;
SIGNAL \counter_i|cnt[20]~76\ : std_logic;
SIGNAL \counter_i|cnt[21]~78\ : std_logic;
SIGNAL \counter_i|cnt[22]~79_combout\ : std_logic;
SIGNAL \counter_i|Equal0~6_combout\ : std_logic;
SIGNAL \counter_i|cnt[19]~73_combout\ : std_logic;
SIGNAL \counter_i|Equal0~5_combout\ : std_logic;
SIGNAL \counter_i|Equal0~7_combout\ : std_logic;
SIGNAL \counter_i|cnt[22]~80\ : std_logic;
SIGNAL \counter_i|cnt[23]~81_combout\ : std_logic;
SIGNAL \counter_i|cnt[23]~82\ : std_logic;
SIGNAL \counter_i|cnt[24]~83_combout\ : std_logic;
SIGNAL \counter_i|cnt[24]~84\ : std_logic;
SIGNAL \counter_i|cnt[25]~85_combout\ : std_logic;
SIGNAL \counter_i|cnt[25]~86\ : std_logic;
SIGNAL \counter_i|cnt[26]~87_combout\ : std_logic;
SIGNAL \counter_i|cnt[26]~88\ : std_logic;
SIGNAL \counter_i|cnt[27]~89_combout\ : std_logic;
SIGNAL \counter_i|Equal0~8_combout\ : std_logic;
SIGNAL \counter_i|cnt[3]~41_combout\ : std_logic;
SIGNAL \counter_i|Equal0~0_combout\ : std_logic;
SIGNAL \counter_i|cnt[11]~57_combout\ : std_logic;
SIGNAL \counter_i|Equal0~2_combout\ : std_logic;
SIGNAL \counter_i|cnt[6]~47_combout\ : std_logic;
SIGNAL \counter_i|cnt[5]~45_combout\ : std_logic;
SIGNAL \counter_i|Equal0~1_combout\ : std_logic;
SIGNAL \counter_i|Equal0~4_combout\ : std_logic;
SIGNAL \counter_i|Equal0~10_combout\ : std_logic;
SIGNAL \counter_i|f_r~23_combout\ : std_logic;
SIGNAL \counter_i|f_r[0]~17\ : std_logic;
SIGNAL \counter_i|f_r[1]~18_combout\ : std_logic;
SIGNAL \counter_i|f_r[1]~19\ : std_logic;
SIGNAL \counter_i|f_r[2]~20_combout\ : std_logic;
SIGNAL \counter_i|f_r[2]~21\ : std_logic;
SIGNAL \counter_i|f_r[3]~26_combout\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \always0~1_combout\ : std_logic;
SIGNAL \recieved[6]~feeder_combout\ : std_logic;
SIGNAL \recieved[5]~feeder_combout\ : std_logic;
SIGNAL \recieved[4]~feeder_combout\ : std_logic;
SIGNAL \recieved[3]~feeder_combout\ : std_logic;
SIGNAL \recieved[2]~feeder_combout\ : std_logic;
SIGNAL \recieved[1]~feeder_combout\ : std_logic;
SIGNAL \recieved[0]~feeder_combout\ : std_logic;
SIGNAL \loop\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_i|f_r\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \counter_i|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL recieved : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_p_reset <= p_reset;
ww_m_clock <= m_clock;
ww_RDX <= RDX;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\m_clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \m_clock~input_o\);

-- Location: FF_X101_Y60_N27
\counter_i|f_r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|f_r[13]~46_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|f_r~23_combout\,
	ena => \counter_i|f_r[15]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|f_r\(13));

-- Location: FF_X101_Y60_N31
\counter_i|f_r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|f_r[15]~50_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|f_r~23_combout\,
	ena => \counter_i|f_r[15]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|f_r\(15));

-- Location: FF_X99_Y61_N27
\counter_i|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[13]~61_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(13));

-- Location: FF_X99_Y61_N31
\counter_i|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[15]~65_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(15));

-- Location: FF_X99_Y60_N11
\counter_i|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[21]~77_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(21));

-- Location: FF_X99_Y60_N25
\counter_i|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[28]~91_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(28));

-- Location: FF_X99_Y60_N27
\counter_i|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[29]~93_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(29));

-- Location: FF_X99_Y60_N29
\counter_i|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[30]~95_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(30));

-- Location: FF_X99_Y60_N31
\counter_i|cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[31]~97_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(31));

-- Location: LCCOMB_X101_Y60_N26
\counter_i|f_r[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|f_r[13]~46_combout\ = (\counter_i|f_r\(13) & (!\counter_i|f_r[12]~45\)) # (!\counter_i|f_r\(13) & ((\counter_i|f_r[12]~45\) # (GND)))
-- \counter_i|f_r[13]~47\ = CARRY((!\counter_i|f_r[12]~45\) # (!\counter_i|f_r\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|f_r\(13),
	datad => VCC,
	cin => \counter_i|f_r[12]~45\,
	combout => \counter_i|f_r[13]~46_combout\,
	cout => \counter_i|f_r[13]~47\);

-- Location: LCCOMB_X101_Y60_N28
\counter_i|f_r[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|f_r[14]~48_combout\ = (\counter_i|f_r\(14) & (\counter_i|f_r[13]~47\ $ (GND))) # (!\counter_i|f_r\(14) & (!\counter_i|f_r[13]~47\ & VCC))
-- \counter_i|f_r[14]~49\ = CARRY((\counter_i|f_r\(14) & !\counter_i|f_r[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|f_r\(14),
	datad => VCC,
	cin => \counter_i|f_r[13]~47\,
	combout => \counter_i|f_r[14]~48_combout\,
	cout => \counter_i|f_r[14]~49\);

-- Location: LCCOMB_X101_Y60_N30
\counter_i|f_r[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|f_r[15]~50_combout\ = \counter_i|f_r\(15) $ (\counter_i|f_r[14]~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|f_r\(15),
	cin => \counter_i|f_r[14]~49\,
	combout => \counter_i|f_r[15]~50_combout\);

-- Location: LCCOMB_X99_Y61_N26
\counter_i|cnt[13]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[13]~61_combout\ = (\counter_i|cnt\(13) & (!\counter_i|cnt[12]~60\)) # (!\counter_i|cnt\(13) & ((\counter_i|cnt[12]~60\) # (GND)))
-- \counter_i|cnt[13]~62\ = CARRY((!\counter_i|cnt[12]~60\) # (!\counter_i|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|cnt\(13),
	datad => VCC,
	cin => \counter_i|cnt[12]~60\,
	combout => \counter_i|cnt[13]~61_combout\,
	cout => \counter_i|cnt[13]~62\);

-- Location: LCCOMB_X99_Y61_N30
\counter_i|cnt[15]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[15]~65_combout\ = (\counter_i|cnt\(15) & (!\counter_i|cnt[14]~64\)) # (!\counter_i|cnt\(15) & ((\counter_i|cnt[14]~64\) # (GND)))
-- \counter_i|cnt[15]~66\ = CARRY((!\counter_i|cnt[14]~64\) # (!\counter_i|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|cnt\(15),
	datad => VCC,
	cin => \counter_i|cnt[14]~64\,
	combout => \counter_i|cnt[15]~65_combout\,
	cout => \counter_i|cnt[15]~66\);

-- Location: LCCOMB_X99_Y60_N10
\counter_i|cnt[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[21]~77_combout\ = (\counter_i|cnt\(21) & (!\counter_i|cnt[20]~76\)) # (!\counter_i|cnt\(21) & ((\counter_i|cnt[20]~76\) # (GND)))
-- \counter_i|cnt[21]~78\ = CARRY((!\counter_i|cnt[20]~76\) # (!\counter_i|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|cnt\(21),
	datad => VCC,
	cin => \counter_i|cnt[20]~76\,
	combout => \counter_i|cnt[21]~77_combout\,
	cout => \counter_i|cnt[21]~78\);

-- Location: LCCOMB_X99_Y60_N22
\counter_i|cnt[27]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[27]~89_combout\ = (\counter_i|cnt\(27) & (!\counter_i|cnt[26]~88\)) # (!\counter_i|cnt\(27) & ((\counter_i|cnt[26]~88\) # (GND)))
-- \counter_i|cnt[27]~90\ = CARRY((!\counter_i|cnt[26]~88\) # (!\counter_i|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|cnt\(27),
	datad => VCC,
	cin => \counter_i|cnt[26]~88\,
	combout => \counter_i|cnt[27]~89_combout\,
	cout => \counter_i|cnt[27]~90\);

-- Location: LCCOMB_X99_Y60_N24
\counter_i|cnt[28]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[28]~91_combout\ = (\counter_i|cnt\(28) & (\counter_i|cnt[27]~90\ $ (GND))) # (!\counter_i|cnt\(28) & (!\counter_i|cnt[27]~90\ & VCC))
-- \counter_i|cnt[28]~92\ = CARRY((\counter_i|cnt\(28) & !\counter_i|cnt[27]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|cnt\(28),
	datad => VCC,
	cin => \counter_i|cnt[27]~90\,
	combout => \counter_i|cnt[28]~91_combout\,
	cout => \counter_i|cnt[28]~92\);

-- Location: LCCOMB_X99_Y60_N26
\counter_i|cnt[29]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[29]~93_combout\ = (\counter_i|cnt\(29) & (!\counter_i|cnt[28]~92\)) # (!\counter_i|cnt\(29) & ((\counter_i|cnt[28]~92\) # (GND)))
-- \counter_i|cnt[29]~94\ = CARRY((!\counter_i|cnt[28]~92\) # (!\counter_i|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|cnt\(29),
	datad => VCC,
	cin => \counter_i|cnt[28]~92\,
	combout => \counter_i|cnt[29]~93_combout\,
	cout => \counter_i|cnt[29]~94\);

-- Location: LCCOMB_X99_Y60_N28
\counter_i|cnt[30]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[30]~95_combout\ = (\counter_i|cnt\(30) & (\counter_i|cnt[29]~94\ $ (GND))) # (!\counter_i|cnt\(30) & (!\counter_i|cnt[29]~94\ & VCC))
-- \counter_i|cnt[30]~96\ = CARRY((\counter_i|cnt\(30) & !\counter_i|cnt[29]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|cnt\(30),
	datad => VCC,
	cin => \counter_i|cnt[29]~94\,
	combout => \counter_i|cnt[30]~95_combout\,
	cout => \counter_i|cnt[30]~96\);

-- Location: LCCOMB_X99_Y60_N30
\counter_i|cnt[31]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[31]~97_combout\ = \counter_i|cnt\(31) $ (\counter_i|cnt[30]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|cnt\(31),
	cin => \counter_i|cnt[30]~96\,
	combout => \counter_i|cnt[31]~97_combout\);

-- Location: FF_X102_Y60_N27
\_reg_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \_reg_10~0_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \_reg_10~q\);

-- Location: LCCOMB_X100_Y60_N4
\counter_i|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|Equal0~3_combout\ = (!\counter_i|cnt\(12) & (!\counter_i|cnt\(15) & (!\counter_i|cnt\(13) & !\counter_i|cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|cnt\(12),
	datab => \counter_i|cnt\(15),
	datac => \counter_i|cnt\(13),
	datad => \counter_i|cnt\(14),
	combout => \counter_i|Equal0~3_combout\);

-- Location: LCCOMB_X100_Y60_N22
\counter_i|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|Equal0~9_combout\ = (!\counter_i|cnt\(29) & (!\counter_i|cnt\(31) & (!\counter_i|cnt\(30) & !\counter_i|cnt\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|cnt\(29),
	datab => \counter_i|cnt\(31),
	datac => \counter_i|cnt\(30),
	datad => \counter_i|cnt\(28),
	combout => \counter_i|Equal0~9_combout\);

-- Location: LCCOMB_X102_Y60_N26
\_reg_10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \_reg_10~0_combout\ = (\_reg_11~q\ & (((!\_reg_8~q\ & !\loop\(3))) # (!\receive~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_reg_11~q\,
	datab => \receive~q\,
	datac => \_reg_8~q\,
	datad => \loop\(3),
	combout => \_reg_10~0_combout\);

-- Location: FF_X102_Y60_N11
\loop[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	asdata => \loop~5_combout\,
	sload => VCC,
	ena => \loop[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loop\(1));

-- Location: LCCOMB_X103_Y60_N8
\loop~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \loop~5_combout\ = (\receive~q\ & (!\_reg_12~q\ & (\loop\(1) $ (\loop\(0))))) # (!\receive~q\ & (\loop\(1) $ ((\loop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loop\(1),
	datab => \loop\(0),
	datac => \receive~q\,
	datad => \_reg_12~q\,
	combout => \loop~5_combout\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => recieved(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => recieved(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => recieved(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => recieved(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => recieved(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => recieved(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => recieved(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => recieved(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

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

-- Location: IOIBUF_X107_Y0_N1
\RDX~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RDX,
	o => \RDX~input_o\);

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

-- Location: LCCOMB_X101_Y60_N0
\counter_i|f_r[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|f_r[0]~16_combout\ = \counter_i|f_r\(0) $ (VCC)
-- \counter_i|f_r[0]~17\ = CARRY(\counter_i|f_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|f_r\(0),
	datad => VCC,
	combout => \counter_i|f_r[0]~16_combout\,
	cout => \counter_i|f_r[0]~17\);

-- Location: LCCOMB_X101_Y60_N6
\counter_i|f_r[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|f_r[3]~26_combout\ = (\counter_i|f_r\(3) & (!\counter_i|f_r[2]~21\)) # (!\counter_i|f_r\(3) & ((\counter_i|f_r[2]~21\) # (GND)))
-- \counter_i|f_r[3]~27\ = CARRY((!\counter_i|f_r[2]~21\) # (!\counter_i|f_r\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|f_r\(3),
	datad => VCC,
	cin => \counter_i|f_r[2]~21\,
	combout => \counter_i|f_r[3]~26_combout\,
	cout => \counter_i|f_r[3]~27\);

-- Location: LCCOMB_X101_Y60_N8
\counter_i|f_r[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|f_r[4]~28_combout\ = (\counter_i|f_r\(4) & (\counter_i|f_r[3]~27\ $ (GND))) # (!\counter_i|f_r\(4) & (!\counter_i|f_r[3]~27\ & VCC))
-- \counter_i|f_r[4]~29\ = CARRY((\counter_i|f_r\(4) & !\counter_i|f_r[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|f_r\(4),
	datad => VCC,
	cin => \counter_i|f_r[3]~27\,
	combout => \counter_i|f_r[4]~28_combout\,
	cout => \counter_i|f_r[4]~29\);

-- Location: FF_X102_Y60_N29
\_reg_13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	asdata => \_proc_receive_set~5_combout\,
	clrn => \p_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \_reg_13~q\);

-- Location: LCCOMB_X102_Y60_N18
\counter_i|f_r[15]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|f_r[15]~24_combout\ = (\receive~q\ & ((\_reg_13~q\) # ((\always0~0_combout\ & \_proc_receive_set~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receive~q\,
	datab => \always0~0_combout\,
	datac => \_reg_13~q\,
	datad => \_proc_receive_set~3_combout\,
	combout => \counter_i|f_r[15]~24_combout\);

-- Location: LCCOMB_X100_Y60_N6
\counter_i|f_r[15]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|f_r[15]~25_combout\ = (\counter_i|f_r[15]~24_combout\) # (((!\receiving~q\ & \RDX~input_o\)) # (!\counter_i|f_r~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiving~q\,
	datab => \RDX~input_o\,
	datac => \counter_i|f_r[15]~24_combout\,
	datad => \counter_i|f_r~23_combout\,
	combout => \counter_i|f_r[15]~25_combout\);

-- Location: FF_X101_Y60_N9
\counter_i|f_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|f_r[4]~28_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|f_r~23_combout\,
	ena => \counter_i|f_r[15]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|f_r\(4));

-- Location: LCCOMB_X101_Y60_N10
\counter_i|f_r[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|f_r[5]~30_combout\ = (\counter_i|f_r\(5) & (!\counter_i|f_r[4]~29\)) # (!\counter_i|f_r\(5) & ((\counter_i|f_r[4]~29\) # (GND)))
-- \counter_i|f_r[5]~31\ = CARRY((!\counter_i|f_r[4]~29\) # (!\counter_i|f_r\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|f_r\(5),
	datad => VCC,
	cin => \counter_i|f_r[4]~29\,
	combout => \counter_i|f_r[5]~30_combout\,
	cout => \counter_i|f_r[5]~31\);

-- Location: LCCOMB_X101_Y60_N12
\counter_i|f_r[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|f_r[6]~32_combout\ = (\counter_i|f_r\(6) & (\counter_i|f_r[5]~31\ $ (GND))) # (!\counter_i|f_r\(6) & (!\counter_i|f_r[5]~31\ & VCC))
-- \counter_i|f_r[6]~33\ = CARRY((\counter_i|f_r\(6) & !\counter_i|f_r[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|f_r\(6),
	datad => VCC,
	cin => \counter_i|f_r[5]~31\,
	combout => \counter_i|f_r[6]~32_combout\,
	cout => \counter_i|f_r[6]~33\);

-- Location: LCCOMB_X101_Y60_N14
\counter_i|f_r[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|f_r[7]~34_combout\ = (\counter_i|f_r\(7) & (!\counter_i|f_r[6]~33\)) # (!\counter_i|f_r\(7) & ((\counter_i|f_r[6]~33\) # (GND)))
-- \counter_i|f_r[7]~35\ = CARRY((!\counter_i|f_r[6]~33\) # (!\counter_i|f_r\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|f_r\(7),
	datad => VCC,
	cin => \counter_i|f_r[6]~33\,
	combout => \counter_i|f_r[7]~34_combout\,
	cout => \counter_i|f_r[7]~35\);

-- Location: FF_X101_Y60_N15
\counter_i|f_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|f_r[7]~34_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|f_r~23_combout\,
	ena => \counter_i|f_r[15]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|f_r\(7));

-- Location: LCCOMB_X101_Y60_N16
\counter_i|f_r[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|f_r[8]~36_combout\ = (\counter_i|f_r\(8) & (\counter_i|f_r[7]~35\ $ (GND))) # (!\counter_i|f_r\(8) & (!\counter_i|f_r[7]~35\ & VCC))
-- \counter_i|f_r[8]~37\ = CARRY((\counter_i|f_r\(8) & !\counter_i|f_r[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|f_r\(8),
	datad => VCC,
	cin => \counter_i|f_r[7]~35\,
	combout => \counter_i|f_r[8]~36_combout\,
	cout => \counter_i|f_r[8]~37\);

-- Location: FF_X101_Y60_N17
\counter_i|f_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|f_r[8]~36_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|f_r~23_combout\,
	ena => \counter_i|f_r[15]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|f_r\(8));

-- Location: LCCOMB_X101_Y60_N18
\counter_i|f_r[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|f_r[9]~38_combout\ = (\counter_i|f_r\(9) & (!\counter_i|f_r[8]~37\)) # (!\counter_i|f_r\(9) & ((\counter_i|f_r[8]~37\) # (GND)))
-- \counter_i|f_r[9]~39\ = CARRY((!\counter_i|f_r[8]~37\) # (!\counter_i|f_r\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|f_r\(9),
	datad => VCC,
	cin => \counter_i|f_r[8]~37\,
	combout => \counter_i|f_r[9]~38_combout\,
	cout => \counter_i|f_r[9]~39\);

-- Location: FF_X101_Y60_N19
\counter_i|f_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|f_r[9]~38_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|f_r~23_combout\,
	ena => \counter_i|f_r[15]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|f_r\(9));

-- Location: LCCOMB_X101_Y60_N20
\counter_i|f_r[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|f_r[10]~40_combout\ = (\counter_i|f_r\(10) & (\counter_i|f_r[9]~39\ $ (GND))) # (!\counter_i|f_r\(10) & (!\counter_i|f_r[9]~39\ & VCC))
-- \counter_i|f_r[10]~41\ = CARRY((\counter_i|f_r\(10) & !\counter_i|f_r[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|f_r\(10),
	datad => VCC,
	cin => \counter_i|f_r[9]~39\,
	combout => \counter_i|f_r[10]~40_combout\,
	cout => \counter_i|f_r[10]~41\);

-- Location: FF_X101_Y60_N21
\counter_i|f_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|f_r[10]~40_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|f_r~23_combout\,
	ena => \counter_i|f_r[15]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|f_r\(10));

-- Location: LCCOMB_X102_Y60_N8
\_proc_receive_set~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \_proc_receive_set~1_combout\ = (!\counter_i|f_r\(7) & (!\counter_i|f_r\(9) & (!\counter_i|f_r\(8) & !\counter_i|f_r\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|f_r\(7),
	datab => \counter_i|f_r\(9),
	datac => \counter_i|f_r\(8),
	datad => \counter_i|f_r\(10),
	combout => \_proc_receive_set~1_combout\);

-- Location: FF_X101_Y60_N13
\counter_i|f_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|f_r[6]~32_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|f_r~23_combout\,
	ena => \counter_i|f_r[15]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|f_r\(6));

-- Location: FF_X101_Y60_N11
\counter_i|f_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|f_r[5]~30_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|f_r~23_combout\,
	ena => \counter_i|f_r[15]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|f_r\(5));

-- Location: LCCOMB_X102_Y60_N14
\_proc_receive_set~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \_proc_receive_set~0_combout\ = (!\counter_i|f_r\(4) & (!\counter_i|f_r\(2) & (!\counter_i|f_r\(6) & !\counter_i|f_r\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|f_r\(4),
	datab => \counter_i|f_r\(2),
	datac => \counter_i|f_r\(6),
	datad => \counter_i|f_r\(5),
	combout => \_proc_receive_set~0_combout\);

-- Location: LCCOMB_X101_Y60_N22
\counter_i|f_r[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|f_r[11]~42_combout\ = (\counter_i|f_r\(11) & (!\counter_i|f_r[10]~41\)) # (!\counter_i|f_r\(11) & ((\counter_i|f_r[10]~41\) # (GND)))
-- \counter_i|f_r[11]~43\ = CARRY((!\counter_i|f_r[10]~41\) # (!\counter_i|f_r\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|f_r\(11),
	datad => VCC,
	cin => \counter_i|f_r[10]~41\,
	combout => \counter_i|f_r[11]~42_combout\,
	cout => \counter_i|f_r[11]~43\);

-- Location: LCCOMB_X101_Y60_N24
\counter_i|f_r[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|f_r[12]~44_combout\ = (\counter_i|f_r\(12) & (\counter_i|f_r[11]~43\ $ (GND))) # (!\counter_i|f_r\(12) & (!\counter_i|f_r[11]~43\ & VCC))
-- \counter_i|f_r[12]~45\ = CARRY((\counter_i|f_r\(12) & !\counter_i|f_r[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|f_r\(12),
	datad => VCC,
	cin => \counter_i|f_r[11]~43\,
	combout => \counter_i|f_r[12]~44_combout\,
	cout => \counter_i|f_r[12]~45\);

-- Location: FF_X101_Y60_N25
\counter_i|f_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|f_r[12]~44_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|f_r~23_combout\,
	ena => \counter_i|f_r[15]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|f_r\(12));

-- Location: FF_X101_Y60_N23
\counter_i|f_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|f_r[11]~42_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|f_r~23_combout\,
	ena => \counter_i|f_r[15]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|f_r\(11));

-- Location: FF_X101_Y60_N29
\counter_i|f_r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|f_r[14]~48_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|f_r~23_combout\,
	ena => \counter_i|f_r[15]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|f_r\(14));

-- Location: LCCOMB_X102_Y60_N2
\_proc_receive_set~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \_proc_receive_set~2_combout\ = (!\counter_i|f_r\(13) & (!\counter_i|f_r\(12) & (!\counter_i|f_r\(11) & !\counter_i|f_r\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|f_r\(13),
	datab => \counter_i|f_r\(12),
	datac => \counter_i|f_r\(11),
	datad => \counter_i|f_r\(14),
	combout => \_proc_receive_set~2_combout\);

-- Location: LCCOMB_X102_Y60_N20
\_proc_receive_set~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \_proc_receive_set~3_combout\ = (!\counter_i|f_r\(15) & (\_proc_receive_set~1_combout\ & (\_proc_receive_set~0_combout\ & \_proc_receive_set~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|f_r\(15),
	datab => \_proc_receive_set~1_combout\,
	datac => \_proc_receive_set~0_combout\,
	datad => \_proc_receive_set~2_combout\,
	combout => \_proc_receive_set~3_combout\);

-- Location: LCCOMB_X102_Y60_N12
\_proc_receive_set~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \_proc_receive_set~4_combout\ = (!\RDX~input_o\ & (!\counter_i|f_r\(3) & (\counter_i|f_r\(0) & \counter_i|f_r\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RDX~input_o\,
	datab => \counter_i|f_r\(3),
	datac => \counter_i|f_r\(0),
	datad => \counter_i|f_r\(1),
	combout => \_proc_receive_set~4_combout\);

-- Location: LCCOMB_X102_Y60_N4
\_proc_receive_set~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \_proc_receive_set~5_combout\ = (!\receiving~q\ & (\_proc_receive_set~3_combout\ & \_proc_receive_set~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiving~q\,
	datab => \_proc_receive_set~3_combout\,
	datad => \_proc_receive_set~4_combout\,
	combout => \_proc_receive_set~5_combout\);

-- Location: LCCOMB_X102_Y60_N24
\receive~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receive~0_combout\ = (\_proc_receive_set~5_combout\) # ((!\_reg_8~q\ & \receive~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_reg_8~q\,
	datab => \_proc_receive_set~5_combout\,
	datac => \receive~q\,
	combout => \receive~0_combout\);

-- Location: FF_X102_Y60_N25
receive : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \receive~0_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receive~q\);

-- Location: LCCOMB_X103_Y60_N24
\_reg_12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \_reg_12~0_combout\ = (\_reg_13~q\ & ((!\receive~q\) # (!\_reg_8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_reg_8~q\,
	datac => \receive~q\,
	datad => \_reg_13~q\,
	combout => \_reg_12~0_combout\);

-- Location: FF_X103_Y60_N25
\_reg_12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \_reg_12~0_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \_reg_12~q\);

-- Location: LCCOMB_X103_Y60_N16
\loop~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \loop~4_combout\ = (!\loop\(0) & ((!\_reg_12~q\) # (!\receive~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receive~q\,
	datac => \loop\(0),
	datad => \_reg_12~q\,
	combout => \loop~4_combout\);

-- Location: LCCOMB_X102_Y60_N6
\loop[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \loop[0]~2_combout\ = (\receive~q\ & ((\_reg_12~q\) # ((\_proc_receive_set~3_combout\ & \always0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_reg_12~q\,
	datab => \_proc_receive_set~3_combout\,
	datac => \receive~q\,
	datad => \always0~0_combout\,
	combout => \loop[0]~2_combout\);

-- Location: FF_X103_Y60_N17
\loop[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \loop~4_combout\,
	ena => \loop[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loop\(0));

-- Location: LCCOMB_X103_Y60_N28
\always1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~0_combout\ = (\_reg_12~q\ & \receive~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \_reg_12~q\,
	datac => \receive~q\,
	combout => \always1~0_combout\);

-- Location: LCCOMB_X103_Y60_N22
\loop~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \loop~3_combout\ = (!\always1~0_combout\ & (\loop\(2) $ (((\loop\(1) & \loop\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loop\(1),
	datab => \loop\(0),
	datac => \loop\(2),
	datad => \always1~0_combout\,
	combout => \loop~3_combout\);

-- Location: FF_X103_Y60_N23
\loop[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \loop~3_combout\,
	ena => \loop[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loop\(2));

-- Location: LCCOMB_X103_Y60_N30
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \loop\(3) $ (((\loop\(1) & (\loop\(2) & \loop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loop\(1),
	datab => \loop\(3),
	datac => \loop\(2),
	datad => \loop\(0),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X103_Y60_N14
\loop~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \loop~6_combout\ = (\Add0~0_combout\ & ((!\_reg_12~q\) # (!\receive~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receive~q\,
	datac => \Add0~0_combout\,
	datad => \_reg_12~q\,
	combout => \loop~6_combout\);

-- Location: FF_X102_Y60_N5
\loop[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	asdata => \loop~6_combout\,
	sload => VCC,
	ena => \loop[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loop\(3));

-- Location: LCCOMB_X103_Y60_N26
\_reg_11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \_reg_11~0_combout\ = (\_reg_12~q\) # ((\_reg_10~q\ & (!\loop\(3) & \receive~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_reg_10~q\,
	datab => \_reg_12~q\,
	datac => \loop\(3),
	datad => \receive~q\,
	combout => \_reg_11~0_combout\);

-- Location: LCCOMB_X103_Y60_N10
\_reg_9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \_reg_9~0_combout\ = (\receive~q\ & (\loop\(3) & ((\_reg_10~q\) # (\_reg_11~q\)))) # (!\receive~q\ & (\_reg_10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_reg_10~q\,
	datab => \_reg_11~q\,
	datac => \loop\(3),
	datad => \receive~q\,
	combout => \_reg_9~0_combout\);

-- Location: LCCOMB_X103_Y60_N18
\_reg_9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \_reg_9~1_combout\ = (\_reg_9~0_combout\ & ((!\receive~q\) # (!\_reg_8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_reg_8~q\,
	datac => \receive~q\,
	datad => \_reg_9~0_combout\,
	combout => \_reg_9~1_combout\);

-- Location: FF_X103_Y60_N19
\_reg_9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \_reg_9~1_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \_reg_9~q\);

-- Location: LCCOMB_X103_Y60_N12
\_reg_8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \_reg_8~0_combout\ = (\_reg_9~q\ & ((!\_reg_8~q\) # (!\receive~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receive~q\,
	datac => \_reg_8~q\,
	datad => \_reg_9~q\,
	combout => \_reg_8~0_combout\);

-- Location: FF_X103_Y60_N13
\_reg_8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \_reg_8~0_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \_reg_8~q\);

-- Location: LCCOMB_X103_Y60_N0
\_reg_11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \_reg_11~1_combout\ = (\_reg_11~0_combout\ & ((!\_reg_8~q\) # (!\receive~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receive~q\,
	datac => \_reg_11~0_combout\,
	datad => \_reg_8~q\,
	combout => \_reg_11~1_combout\);

-- Location: FF_X102_Y60_N31
\_reg_11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	asdata => \_reg_11~1_combout\,
	clrn => \p_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \_reg_11~q\);

-- Location: LCCOMB_X100_Y60_N14
\counter_i|f_r~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|f_r~22_combout\ = (\receive~q\ & (!\loop\(3) & \_reg_11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receive~q\,
	datac => \loop\(3),
	datad => \_reg_11~q\,
	combout => \counter_i|f_r~22_combout\);

-- Location: LCCOMB_X99_Y61_N0
\counter_i|cnt[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[0]~32_combout\ = \counter_i|cnt\(0) $ (VCC)
-- \counter_i|cnt[0]~33\ = CARRY(\counter_i|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|cnt\(0),
	datad => VCC,
	combout => \counter_i|cnt[0]~32_combout\,
	cout => \counter_i|cnt[0]~33\);

-- Location: LCCOMB_X100_Y60_N0
\counter_i|cnt~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt~38_combout\ = (\counter_i|Equal0~10_combout\) # ((!\counter_i|f_r~22_combout\ & ((\receiving~q\) # (\RDX~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiving~q\,
	datab => \RDX~input_o\,
	datac => \counter_i|f_r~22_combout\,
	datad => \counter_i|Equal0~10_combout\,
	combout => \counter_i|cnt~38_combout\);

-- Location: LCCOMB_X102_Y60_N28
\counter_i|cnt[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[6]~39_combout\ = (\receive~q\ & ((\_reg_13~q\) # ((\_reg_11~q\ & !\loop\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_reg_11~q\,
	datab => \receive~q\,
	datac => \_reg_13~q\,
	datad => \loop\(3),
	combout => \counter_i|cnt[6]~39_combout\);

-- Location: LCCOMB_X102_Y60_N30
\receiving~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiving~0_combout\ = (!\_reg_9~q\) # (!\receive~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receive~q\,
	datad => \_reg_9~q\,
	combout => \receiving~0_combout\);

-- Location: LCCOMB_X102_Y60_N22
\receiving~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiving~1_combout\ = (\receiving~0_combout\ & ((\receiving~q\) # ((\_proc_receive_set~3_combout\ & \_proc_receive_set~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_proc_receive_set~3_combout\,
	datab => \receiving~0_combout\,
	datac => \receiving~q\,
	datad => \_proc_receive_set~4_combout\,
	combout => \receiving~1_combout\);

-- Location: FF_X102_Y60_N23
receiving : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \receiving~1_combout\,
	clrn => \p_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiving~q\);

-- Location: LCCOMB_X102_Y60_N0
\counter_i|cnt[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[6]~40_combout\ = (\counter_i|cnt[6]~39_combout\) # ((\always0~1_combout\) # (!\receiving~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|cnt[6]~39_combout\,
	datac => \receiving~q\,
	datad => \always0~1_combout\,
	combout => \counter_i|cnt[6]~40_combout\);

-- Location: FF_X99_Y61_N1
\counter_i|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[0]~32_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(0));

-- Location: LCCOMB_X99_Y61_N2
\counter_i|cnt[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[1]~34_combout\ = (\counter_i|cnt\(1) & (!\counter_i|cnt[0]~33\)) # (!\counter_i|cnt\(1) & ((\counter_i|cnt[0]~33\) # (GND)))
-- \counter_i|cnt[1]~35\ = CARRY((!\counter_i|cnt[0]~33\) # (!\counter_i|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|cnt\(1),
	datad => VCC,
	cin => \counter_i|cnt[0]~33\,
	combout => \counter_i|cnt[1]~34_combout\,
	cout => \counter_i|cnt[1]~35\);

-- Location: FF_X99_Y61_N3
\counter_i|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[1]~34_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(1));

-- Location: LCCOMB_X99_Y61_N4
\counter_i|cnt[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[2]~36_combout\ = (\counter_i|cnt\(2) & (\counter_i|cnt[1]~35\ $ (GND))) # (!\counter_i|cnt\(2) & (!\counter_i|cnt[1]~35\ & VCC))
-- \counter_i|cnt[2]~37\ = CARRY((\counter_i|cnt\(2) & !\counter_i|cnt[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|cnt\(2),
	datad => VCC,
	cin => \counter_i|cnt[1]~35\,
	combout => \counter_i|cnt[2]~36_combout\,
	cout => \counter_i|cnt[2]~37\);

-- Location: FF_X99_Y61_N5
\counter_i|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[2]~36_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(2));

-- Location: LCCOMB_X99_Y61_N6
\counter_i|cnt[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[3]~41_combout\ = (\counter_i|cnt\(3) & (!\counter_i|cnt[2]~37\)) # (!\counter_i|cnt\(3) & ((\counter_i|cnt[2]~37\) # (GND)))
-- \counter_i|cnt[3]~42\ = CARRY((!\counter_i|cnt[2]~37\) # (!\counter_i|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|cnt\(3),
	datad => VCC,
	cin => \counter_i|cnt[2]~37\,
	combout => \counter_i|cnt[3]~41_combout\,
	cout => \counter_i|cnt[3]~42\);

-- Location: LCCOMB_X99_Y61_N8
\counter_i|cnt[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[4]~43_combout\ = (\counter_i|cnt\(4) & (\counter_i|cnt[3]~42\ $ (GND))) # (!\counter_i|cnt\(4) & (!\counter_i|cnt[3]~42\ & VCC))
-- \counter_i|cnt[4]~44\ = CARRY((\counter_i|cnt\(4) & !\counter_i|cnt[3]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|cnt\(4),
	datad => VCC,
	cin => \counter_i|cnt[3]~42\,
	combout => \counter_i|cnt[4]~43_combout\,
	cout => \counter_i|cnt[4]~44\);

-- Location: FF_X99_Y61_N9
\counter_i|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[4]~43_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(4));

-- Location: LCCOMB_X99_Y61_N10
\counter_i|cnt[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[5]~45_combout\ = (\counter_i|cnt\(5) & (!\counter_i|cnt[4]~44\)) # (!\counter_i|cnt\(5) & ((\counter_i|cnt[4]~44\) # (GND)))
-- \counter_i|cnt[5]~46\ = CARRY((!\counter_i|cnt[4]~44\) # (!\counter_i|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|cnt\(5),
	datad => VCC,
	cin => \counter_i|cnt[4]~44\,
	combout => \counter_i|cnt[5]~45_combout\,
	cout => \counter_i|cnt[5]~46\);

-- Location: LCCOMB_X99_Y61_N12
\counter_i|cnt[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[6]~47_combout\ = (\counter_i|cnt\(6) & (\counter_i|cnt[5]~46\ $ (GND))) # (!\counter_i|cnt\(6) & (!\counter_i|cnt[5]~46\ & VCC))
-- \counter_i|cnt[6]~48\ = CARRY((\counter_i|cnt\(6) & !\counter_i|cnt[5]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|cnt\(6),
	datad => VCC,
	cin => \counter_i|cnt[5]~46\,
	combout => \counter_i|cnt[6]~47_combout\,
	cout => \counter_i|cnt[6]~48\);

-- Location: LCCOMB_X99_Y61_N14
\counter_i|cnt[7]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[7]~49_combout\ = (\counter_i|cnt\(7) & (!\counter_i|cnt[6]~48\)) # (!\counter_i|cnt\(7) & ((\counter_i|cnt[6]~48\) # (GND)))
-- \counter_i|cnt[7]~50\ = CARRY((!\counter_i|cnt[6]~48\) # (!\counter_i|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|cnt\(7),
	datad => VCC,
	cin => \counter_i|cnt[6]~48\,
	combout => \counter_i|cnt[7]~49_combout\,
	cout => \counter_i|cnt[7]~50\);

-- Location: FF_X99_Y61_N15
\counter_i|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[7]~49_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(7));

-- Location: LCCOMB_X99_Y61_N16
\counter_i|cnt[8]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[8]~51_combout\ = (\counter_i|cnt\(8) & (\counter_i|cnt[7]~50\ $ (GND))) # (!\counter_i|cnt\(8) & (!\counter_i|cnt[7]~50\ & VCC))
-- \counter_i|cnt[8]~52\ = CARRY((\counter_i|cnt\(8) & !\counter_i|cnt[7]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|cnt\(8),
	datad => VCC,
	cin => \counter_i|cnt[7]~50\,
	combout => \counter_i|cnt[8]~51_combout\,
	cout => \counter_i|cnt[8]~52\);

-- Location: FF_X99_Y61_N17
\counter_i|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[8]~51_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(8));

-- Location: LCCOMB_X99_Y61_N18
\counter_i|cnt[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[9]~53_combout\ = (\counter_i|cnt\(9) & (!\counter_i|cnt[8]~52\)) # (!\counter_i|cnt\(9) & ((\counter_i|cnt[8]~52\) # (GND)))
-- \counter_i|cnt[9]~54\ = CARRY((!\counter_i|cnt[8]~52\) # (!\counter_i|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|cnt\(9),
	datad => VCC,
	cin => \counter_i|cnt[8]~52\,
	combout => \counter_i|cnt[9]~53_combout\,
	cout => \counter_i|cnt[9]~54\);

-- Location: FF_X99_Y61_N19
\counter_i|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[9]~53_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(9));

-- Location: LCCOMB_X99_Y61_N20
\counter_i|cnt[10]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[10]~55_combout\ = (\counter_i|cnt\(10) & (\counter_i|cnt[9]~54\ $ (GND))) # (!\counter_i|cnt\(10) & (!\counter_i|cnt[9]~54\ & VCC))
-- \counter_i|cnt[10]~56\ = CARRY((\counter_i|cnt\(10) & !\counter_i|cnt[9]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|cnt\(10),
	datad => VCC,
	cin => \counter_i|cnt[9]~54\,
	combout => \counter_i|cnt[10]~55_combout\,
	cout => \counter_i|cnt[10]~56\);

-- Location: FF_X99_Y61_N21
\counter_i|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[10]~55_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(10));

-- Location: LCCOMB_X99_Y61_N22
\counter_i|cnt[11]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[11]~57_combout\ = (\counter_i|cnt\(11) & (!\counter_i|cnt[10]~56\)) # (!\counter_i|cnt\(11) & ((\counter_i|cnt[10]~56\) # (GND)))
-- \counter_i|cnt[11]~58\ = CARRY((!\counter_i|cnt[10]~56\) # (!\counter_i|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|cnt\(11),
	datad => VCC,
	cin => \counter_i|cnt[10]~56\,
	combout => \counter_i|cnt[11]~57_combout\,
	cout => \counter_i|cnt[11]~58\);

-- Location: LCCOMB_X99_Y61_N24
\counter_i|cnt[12]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[12]~59_combout\ = (\counter_i|cnt\(12) & (\counter_i|cnt[11]~58\ $ (GND))) # (!\counter_i|cnt\(12) & (!\counter_i|cnt[11]~58\ & VCC))
-- \counter_i|cnt[12]~60\ = CARRY((\counter_i|cnt\(12) & !\counter_i|cnt[11]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|cnt\(12),
	datad => VCC,
	cin => \counter_i|cnt[11]~58\,
	combout => \counter_i|cnt[12]~59_combout\,
	cout => \counter_i|cnt[12]~60\);

-- Location: FF_X99_Y61_N25
\counter_i|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[12]~59_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(12));

-- Location: LCCOMB_X99_Y61_N28
\counter_i|cnt[14]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[14]~63_combout\ = (\counter_i|cnt\(14) & (\counter_i|cnt[13]~62\ $ (GND))) # (!\counter_i|cnt\(14) & (!\counter_i|cnt[13]~62\ & VCC))
-- \counter_i|cnt[14]~64\ = CARRY((\counter_i|cnt\(14) & !\counter_i|cnt[13]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|cnt\(14),
	datad => VCC,
	cin => \counter_i|cnt[13]~62\,
	combout => \counter_i|cnt[14]~63_combout\,
	cout => \counter_i|cnt[14]~64\);

-- Location: FF_X99_Y61_N29
\counter_i|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[14]~63_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(14));

-- Location: LCCOMB_X99_Y60_N0
\counter_i|cnt[16]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[16]~67_combout\ = (\counter_i|cnt\(16) & (\counter_i|cnt[15]~66\ $ (GND))) # (!\counter_i|cnt\(16) & (!\counter_i|cnt[15]~66\ & VCC))
-- \counter_i|cnt[16]~68\ = CARRY((\counter_i|cnt\(16) & !\counter_i|cnt[15]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|cnt\(16),
	datad => VCC,
	cin => \counter_i|cnt[15]~66\,
	combout => \counter_i|cnt[16]~67_combout\,
	cout => \counter_i|cnt[16]~68\);

-- Location: FF_X99_Y60_N1
\counter_i|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[16]~67_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(16));

-- Location: LCCOMB_X99_Y60_N2
\counter_i|cnt[17]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[17]~69_combout\ = (\counter_i|cnt\(17) & (!\counter_i|cnt[16]~68\)) # (!\counter_i|cnt\(17) & ((\counter_i|cnt[16]~68\) # (GND)))
-- \counter_i|cnt[17]~70\ = CARRY((!\counter_i|cnt[16]~68\) # (!\counter_i|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|cnt\(17),
	datad => VCC,
	cin => \counter_i|cnt[16]~68\,
	combout => \counter_i|cnt[17]~69_combout\,
	cout => \counter_i|cnt[17]~70\);

-- Location: FF_X99_Y60_N3
\counter_i|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[17]~69_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(17));

-- Location: LCCOMB_X99_Y60_N4
\counter_i|cnt[18]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[18]~71_combout\ = (\counter_i|cnt\(18) & (\counter_i|cnt[17]~70\ $ (GND))) # (!\counter_i|cnt\(18) & (!\counter_i|cnt[17]~70\ & VCC))
-- \counter_i|cnt[18]~72\ = CARRY((\counter_i|cnt\(18) & !\counter_i|cnt[17]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|cnt\(18),
	datad => VCC,
	cin => \counter_i|cnt[17]~70\,
	combout => \counter_i|cnt[18]~71_combout\,
	cout => \counter_i|cnt[18]~72\);

-- Location: FF_X99_Y60_N5
\counter_i|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[18]~71_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(18));

-- Location: LCCOMB_X99_Y60_N6
\counter_i|cnt[19]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[19]~73_combout\ = (\counter_i|cnt\(19) & (!\counter_i|cnt[18]~72\)) # (!\counter_i|cnt\(19) & ((\counter_i|cnt[18]~72\) # (GND)))
-- \counter_i|cnt[19]~74\ = CARRY((!\counter_i|cnt[18]~72\) # (!\counter_i|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|cnt\(19),
	datad => VCC,
	cin => \counter_i|cnt[18]~72\,
	combout => \counter_i|cnt[19]~73_combout\,
	cout => \counter_i|cnt[19]~74\);

-- Location: LCCOMB_X99_Y60_N8
\counter_i|cnt[20]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[20]~75_combout\ = (\counter_i|cnt\(20) & (\counter_i|cnt[19]~74\ $ (GND))) # (!\counter_i|cnt\(20) & (!\counter_i|cnt[19]~74\ & VCC))
-- \counter_i|cnt[20]~76\ = CARRY((\counter_i|cnt\(20) & !\counter_i|cnt[19]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|cnt\(20),
	datad => VCC,
	cin => \counter_i|cnt[19]~74\,
	combout => \counter_i|cnt[20]~75_combout\,
	cout => \counter_i|cnt[20]~76\);

-- Location: FF_X99_Y60_N9
\counter_i|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[20]~75_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(20));

-- Location: LCCOMB_X99_Y60_N12
\counter_i|cnt[22]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[22]~79_combout\ = (\counter_i|cnt\(22) & (\counter_i|cnt[21]~78\ $ (GND))) # (!\counter_i|cnt\(22) & (!\counter_i|cnt[21]~78\ & VCC))
-- \counter_i|cnt[22]~80\ = CARRY((\counter_i|cnt\(22) & !\counter_i|cnt[21]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|cnt\(22),
	datad => VCC,
	cin => \counter_i|cnt[21]~78\,
	combout => \counter_i|cnt[22]~79_combout\,
	cout => \counter_i|cnt[22]~80\);

-- Location: FF_X99_Y60_N13
\counter_i|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[22]~79_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(22));

-- Location: LCCOMB_X100_Y60_N30
\counter_i|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|Equal0~6_combout\ = (!\counter_i|cnt\(21) & !\counter_i|cnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|cnt\(21),
	datad => \counter_i|cnt\(20),
	combout => \counter_i|Equal0~6_combout\);

-- Location: FF_X99_Y60_N7
\counter_i|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[19]~73_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(19));

-- Location: LCCOMB_X100_Y60_N28
\counter_i|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|Equal0~5_combout\ = (!\counter_i|cnt\(17) & (!\counter_i|cnt\(18) & (!\counter_i|cnt\(19) & !\counter_i|cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|cnt\(17),
	datab => \counter_i|cnt\(18),
	datac => \counter_i|cnt\(19),
	datad => \counter_i|cnt\(16),
	combout => \counter_i|Equal0~5_combout\);

-- Location: LCCOMB_X100_Y60_N20
\counter_i|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|Equal0~7_combout\ = (!\counter_i|cnt\(23) & (!\counter_i|cnt\(22) & (\counter_i|Equal0~6_combout\ & \counter_i|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|cnt\(23),
	datab => \counter_i|cnt\(22),
	datac => \counter_i|Equal0~6_combout\,
	datad => \counter_i|Equal0~5_combout\,
	combout => \counter_i|Equal0~7_combout\);

-- Location: LCCOMB_X99_Y60_N14
\counter_i|cnt[23]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[23]~81_combout\ = (\counter_i|cnt\(23) & (!\counter_i|cnt[22]~80\)) # (!\counter_i|cnt\(23) & ((\counter_i|cnt[22]~80\) # (GND)))
-- \counter_i|cnt[23]~82\ = CARRY((!\counter_i|cnt[22]~80\) # (!\counter_i|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|cnt\(23),
	datad => VCC,
	cin => \counter_i|cnt[22]~80\,
	combout => \counter_i|cnt[23]~81_combout\,
	cout => \counter_i|cnt[23]~82\);

-- Location: FF_X99_Y60_N15
\counter_i|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[23]~81_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(23));

-- Location: LCCOMB_X99_Y60_N16
\counter_i|cnt[24]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[24]~83_combout\ = (\counter_i|cnt\(24) & (\counter_i|cnt[23]~82\ $ (GND))) # (!\counter_i|cnt\(24) & (!\counter_i|cnt[23]~82\ & VCC))
-- \counter_i|cnt[24]~84\ = CARRY((\counter_i|cnt\(24) & !\counter_i|cnt[23]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|cnt\(24),
	datad => VCC,
	cin => \counter_i|cnt[23]~82\,
	combout => \counter_i|cnt[24]~83_combout\,
	cout => \counter_i|cnt[24]~84\);

-- Location: FF_X99_Y60_N17
\counter_i|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[24]~83_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(24));

-- Location: LCCOMB_X99_Y60_N18
\counter_i|cnt[25]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[25]~85_combout\ = (\counter_i|cnt\(25) & (!\counter_i|cnt[24]~84\)) # (!\counter_i|cnt\(25) & ((\counter_i|cnt[24]~84\) # (GND)))
-- \counter_i|cnt[25]~86\ = CARRY((!\counter_i|cnt[24]~84\) # (!\counter_i|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|cnt\(25),
	datad => VCC,
	cin => \counter_i|cnt[24]~84\,
	combout => \counter_i|cnt[25]~85_combout\,
	cout => \counter_i|cnt[25]~86\);

-- Location: FF_X99_Y60_N19
\counter_i|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[25]~85_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(25));

-- Location: LCCOMB_X99_Y60_N20
\counter_i|cnt[26]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|cnt[26]~87_combout\ = (\counter_i|cnt\(26) & (\counter_i|cnt[25]~86\ $ (GND))) # (!\counter_i|cnt\(26) & (!\counter_i|cnt[25]~86\ & VCC))
-- \counter_i|cnt[26]~88\ = CARRY((\counter_i|cnt\(26) & !\counter_i|cnt[25]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|cnt\(26),
	datad => VCC,
	cin => \counter_i|cnt[25]~86\,
	combout => \counter_i|cnt[26]~87_combout\,
	cout => \counter_i|cnt[26]~88\);

-- Location: FF_X99_Y60_N21
\counter_i|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[26]~87_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(26));

-- Location: FF_X99_Y60_N23
\counter_i|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[27]~89_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(27));

-- Location: LCCOMB_X98_Y60_N20
\counter_i|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|Equal0~8_combout\ = (!\counter_i|cnt\(26) & (!\counter_i|cnt\(24) & (!\counter_i|cnt\(27) & !\counter_i|cnt\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|cnt\(26),
	datab => \counter_i|cnt\(24),
	datac => \counter_i|cnt\(27),
	datad => \counter_i|cnt\(25),
	combout => \counter_i|Equal0~8_combout\);

-- Location: FF_X99_Y61_N7
\counter_i|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[3]~41_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(3));

-- Location: LCCOMB_X100_Y60_N8
\counter_i|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|Equal0~0_combout\ = (!\counter_i|cnt\(1) & (!\counter_i|cnt\(0) & (!\counter_i|cnt\(3) & \counter_i|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|cnt\(1),
	datab => \counter_i|cnt\(0),
	datac => \counter_i|cnt\(3),
	datad => \counter_i|cnt\(2),
	combout => \counter_i|Equal0~0_combout\);

-- Location: FF_X99_Y61_N23
\counter_i|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[11]~57_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(11));

-- Location: LCCOMB_X100_Y60_N26
\counter_i|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|Equal0~2_combout\ = (\counter_i|cnt\(8) & (\counter_i|cnt\(10) & (!\counter_i|cnt\(11) & !\counter_i|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|cnt\(8),
	datab => \counter_i|cnt\(10),
	datac => \counter_i|cnt\(11),
	datad => \counter_i|cnt\(9),
	combout => \counter_i|Equal0~2_combout\);

-- Location: FF_X99_Y61_N13
\counter_i|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[6]~47_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(6));

-- Location: FF_X99_Y61_N11
\counter_i|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|cnt[5]~45_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|cnt~38_combout\,
	ena => \counter_i|cnt[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|cnt\(5));

-- Location: LCCOMB_X100_Y61_N8
\counter_i|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|Equal0~1_combout\ = (!\counter_i|cnt\(7) & (\counter_i|cnt\(4) & (!\counter_i|cnt\(6) & !\counter_i|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|cnt\(7),
	datab => \counter_i|cnt\(4),
	datac => \counter_i|cnt\(6),
	datad => \counter_i|cnt\(5),
	combout => \counter_i|Equal0~1_combout\);

-- Location: LCCOMB_X100_Y60_N18
\counter_i|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|Equal0~4_combout\ = (\counter_i|Equal0~3_combout\ & (\counter_i|Equal0~0_combout\ & (\counter_i|Equal0~2_combout\ & \counter_i|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|Equal0~3_combout\,
	datab => \counter_i|Equal0~0_combout\,
	datac => \counter_i|Equal0~2_combout\,
	datad => \counter_i|Equal0~1_combout\,
	combout => \counter_i|Equal0~4_combout\);

-- Location: LCCOMB_X100_Y60_N16
\counter_i|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|Equal0~10_combout\ = (\counter_i|Equal0~9_combout\ & (\counter_i|Equal0~7_combout\ & (\counter_i|Equal0~8_combout\ & \counter_i|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_i|Equal0~9_combout\,
	datab => \counter_i|Equal0~7_combout\,
	datac => \counter_i|Equal0~8_combout\,
	datad => \counter_i|Equal0~4_combout\,
	combout => \counter_i|Equal0~10_combout\);

-- Location: LCCOMB_X100_Y60_N24
\counter_i|f_r~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|f_r~23_combout\ = ((!\counter_i|f_r~22_combout\ & ((\receiving~q\) # (\RDX~input_o\)))) # (!\counter_i|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiving~q\,
	datab => \RDX~input_o\,
	datac => \counter_i|f_r~22_combout\,
	datad => \counter_i|Equal0~10_combout\,
	combout => \counter_i|f_r~23_combout\);

-- Location: FF_X101_Y60_N1
\counter_i|f_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|f_r[0]~16_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|f_r~23_combout\,
	ena => \counter_i|f_r[15]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|f_r\(0));

-- Location: LCCOMB_X101_Y60_N2
\counter_i|f_r[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|f_r[1]~18_combout\ = (\counter_i|f_r\(1) & (!\counter_i|f_r[0]~17\)) # (!\counter_i|f_r\(1) & ((\counter_i|f_r[0]~17\) # (GND)))
-- \counter_i|f_r[1]~19\ = CARRY((!\counter_i|f_r[0]~17\) # (!\counter_i|f_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|f_r\(1),
	datad => VCC,
	cin => \counter_i|f_r[0]~17\,
	combout => \counter_i|f_r[1]~18_combout\,
	cout => \counter_i|f_r[1]~19\);

-- Location: FF_X101_Y60_N3
\counter_i|f_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|f_r[1]~18_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|f_r~23_combout\,
	ena => \counter_i|f_r[15]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|f_r\(1));

-- Location: LCCOMB_X101_Y60_N4
\counter_i|f_r[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_i|f_r[2]~20_combout\ = (\counter_i|f_r\(2) & (\counter_i|f_r[1]~19\ $ (GND))) # (!\counter_i|f_r\(2) & (!\counter_i|f_r[1]~19\ & VCC))
-- \counter_i|f_r[2]~21\ = CARRY((\counter_i|f_r\(2) & !\counter_i|f_r[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_i|f_r\(2),
	datad => VCC,
	cin => \counter_i|f_r[1]~19\,
	combout => \counter_i|f_r[2]~20_combout\,
	cout => \counter_i|f_r[2]~21\);

-- Location: FF_X101_Y60_N5
\counter_i|f_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|f_r[2]~20_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|f_r~23_combout\,
	ena => \counter_i|f_r[15]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|f_r\(2));

-- Location: FF_X101_Y60_N7
\counter_i|f_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \counter_i|f_r[3]~26_combout\,
	clrn => \p_reset~input_o\,
	sclr => \counter_i|f_r~23_combout\,
	ena => \counter_i|f_r[15]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_i|f_r\(3));

-- Location: LCCOMB_X102_Y60_N16
\always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = (\_reg_10~q\ & (\counter_i|f_r\(3) & (!\counter_i|f_r\(0) & !\counter_i|f_r\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_reg_10~q\,
	datab => \counter_i|f_r\(3),
	datac => \counter_i|f_r\(0),
	datad => \counter_i|f_r\(1),
	combout => \always0~0_combout\);

-- Location: LCCOMB_X102_Y60_N10
\always0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \always0~1_combout\ = (\receive~q\ & (\always0~0_combout\ & \_proc_receive_set~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receive~q\,
	datab => \always0~0_combout\,
	datad => \_proc_receive_set~3_combout\,
	combout => \always0~1_combout\);

-- Location: FF_X101_Y61_N11
\recieved[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	asdata => \RDX~input_o\,
	clrn => \p_reset~input_o\,
	sload => VCC,
	ena => \always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => recieved(7));

-- Location: LCCOMB_X101_Y61_N28
\recieved[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \recieved[6]~feeder_combout\ = recieved(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => recieved(7),
	combout => \recieved[6]~feeder_combout\);

-- Location: FF_X101_Y61_N29
\recieved[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \recieved[6]~feeder_combout\,
	clrn => \p_reset~input_o\,
	ena => \always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => recieved(6));

-- Location: LCCOMB_X101_Y61_N18
\recieved[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \recieved[5]~feeder_combout\ = recieved(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => recieved(6),
	combout => \recieved[5]~feeder_combout\);

-- Location: FF_X101_Y61_N19
\recieved[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \recieved[5]~feeder_combout\,
	clrn => \p_reset~input_o\,
	ena => \always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => recieved(5));

-- Location: LCCOMB_X101_Y61_N0
\recieved[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \recieved[4]~feeder_combout\ = recieved(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => recieved(5),
	combout => \recieved[4]~feeder_combout\);

-- Location: FF_X101_Y61_N1
\recieved[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \recieved[4]~feeder_combout\,
	clrn => \p_reset~input_o\,
	ena => \always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => recieved(4));

-- Location: LCCOMB_X101_Y61_N2
\recieved[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \recieved[3]~feeder_combout\ = recieved(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => recieved(4),
	combout => \recieved[3]~feeder_combout\);

-- Location: FF_X101_Y61_N3
\recieved[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \recieved[3]~feeder_combout\,
	clrn => \p_reset~input_o\,
	ena => \always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => recieved(3));

-- Location: LCCOMB_X101_Y61_N24
\recieved[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \recieved[2]~feeder_combout\ = recieved(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => recieved(3),
	combout => \recieved[2]~feeder_combout\);

-- Location: FF_X101_Y61_N25
\recieved[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \recieved[2]~feeder_combout\,
	clrn => \p_reset~input_o\,
	ena => \always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => recieved(2));

-- Location: LCCOMB_X101_Y61_N6
\recieved[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \recieved[1]~feeder_combout\ = recieved(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => recieved(2),
	combout => \recieved[1]~feeder_combout\);

-- Location: FF_X101_Y61_N7
\recieved[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \recieved[1]~feeder_combout\,
	clrn => \p_reset~input_o\,
	ena => \always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => recieved(1));

-- Location: LCCOMB_X101_Y61_N12
\recieved[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \recieved[0]~feeder_combout\ = recieved(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => recieved(1),
	combout => \recieved[0]~feeder_combout\);

-- Location: FF_X101_Y61_N13
\recieved[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m_clock~inputclkctrl_outclk\,
	d => \recieved[0]~feeder_combout\,
	clrn => \p_reset~input_o\,
	ena => \always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => recieved(0));

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;
END structure;


