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

-- DATE "03/24/2016 18:35:12"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	test01 IS
    PORT (
	pin_C : OUT std_logic;
	pin_A : IN std_logic;
	pin_B : IN std_logic
	);
END test01;

-- Design Ports Information
-- pin_C	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_A	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_B	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test01 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pin_C : std_logic;
SIGNAL ww_pin_A : std_logic;
SIGNAL ww_pin_B : std_logic;
SIGNAL \pin_C~output_o\ : std_logic;
SIGNAL \pin_A~input_o\ : std_logic;
SIGNAL \pin_B~input_o\ : std_logic;
SIGNAL \inst~combout\ : std_logic;

BEGIN

pin_C <= ww_pin_C;
ww_pin_A <= pin_A;
ww_pin_B <= pin_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X69_Y73_N16
\pin_C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~combout\,
	devoe => ww_devoe,
	o => \pin_C~output_o\);

-- Location: IOIBUF_X115_Y40_N8
\pin_A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_A,
	o => \pin_A~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\pin_B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_B,
	o => \pin_B~input_o\);

-- Location: LCCOMB_X114_Y53_N8
inst : cycloneive_lcell_comb
-- Equation(s):
-- \inst~combout\ = (\pin_A~input_o\ & \pin_B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pin_A~input_o\,
	datad => \pin_B~input_o\,
	combout => \inst~combout\);

ww_pin_C <= \pin_C~output_o\;
END structure;


