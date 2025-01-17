-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "11/10/2024 21:00:05"

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

ENTITY 	ex18 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	five_in : IN std_logic;
	ten_in : IN std_logic;
	twenty_in : IN std_logic;
	sel_water : IN std_logic;
	sel_candy : IN std_logic;
	sel_coca : IN std_logic;
	sel_coffee : IN std_logic;
	cancel : IN std_logic;
	water : OUT std_logic;
	candy : OUT std_logic;
	coca : OUT std_logic;
	coffee : OUT std_logic;
	five_out : OUT std_logic;
	ten_out : OUT std_logic
	);
END ex18;

-- Design Ports Information
-- water	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- candy	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coca	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coffee	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- five_out	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ten_out	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ten_in	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- five_in	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- twenty_in	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cancel	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_water	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_candy	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_coca	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_coffee	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ex18 IS
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
SIGNAL ww_five_in : std_logic;
SIGNAL ww_ten_in : std_logic;
SIGNAL ww_twenty_in : std_logic;
SIGNAL ww_sel_water : std_logic;
SIGNAL ww_sel_candy : std_logic;
SIGNAL ww_sel_coca : std_logic;
SIGNAL ww_sel_coffee : std_logic;
SIGNAL ww_cancel : std_logic;
SIGNAL ww_water : std_logic;
SIGNAL ww_candy : std_logic;
SIGNAL ww_coca : std_logic;
SIGNAL ww_coffee : std_logic;
SIGNAL ww_five_out : std_logic;
SIGNAL ww_ten_out : std_logic;
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \water~output_o\ : std_logic;
SIGNAL \candy~output_o\ : std_logic;
SIGNAL \coca~output_o\ : std_logic;
SIGNAL \coffee~output_o\ : std_logic;
SIGNAL \five_out~output_o\ : std_logic;
SIGNAL \ten_out~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ten_in~input_o\ : std_logic;
SIGNAL \five_in~input_o\ : std_logic;
SIGNAL \sel_water~input_o\ : std_logic;
SIGNAL \twenty_in~input_o\ : std_logic;
SIGNAL \next_state~0_combout\ : std_logic;
SIGNAL \sel_coca~input_o\ : std_logic;
SIGNAL \sel_candy~input_o\ : std_logic;
SIGNAL \sel_coffee~input_o\ : std_logic;
SIGNAL \next_state~2_combout\ : std_logic;
SIGNAL \cancel~input_o\ : std_logic;
SIGNAL \next_state~1_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \present_state.candy_0~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \present_state.candy_5~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \present_state.candy_10~q\ : std_logic;
SIGNAL \present_state.candy_15~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \present_state.water_10~q\ : std_logic;
SIGNAL \next_state.coca_35~0_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \present_state.coffee_0~q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \present_state.coffee_5~q\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \present_state.coffee_15~q\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector12~2_combout\ : std_logic;
SIGNAL \present_state.coffee_10~q\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \present_state.coffee_20~q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \present_state.coffee_25~q\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \present_state.coca_0~q\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \present_state.coca_5~q\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \present_state.coca_10~q\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \present_state.coca_15~q\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \present_state.coca_20~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \next_state.refund_20~0_combout\ : std_logic;
SIGNAL \present_state.refund_20~q\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector24~1_combout\ : std_logic;
SIGNAL \present_state.refund_10~q\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \present_state.refund_15~q\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \present_state.refund_5~q\ : std_logic;
SIGNAL \next_state.water_25~0_combout\ : std_logic;
SIGNAL \present_state.water_25~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \present_state.water_20~q\ : std_logic;
SIGNAL \next_state.candy_25~0_combout\ : std_logic;
SIGNAL \present_state.candy_25~q\ : std_logic;
SIGNAL \next_state.coffee_35~0_combout\ : std_logic;
SIGNAL \present_state.coffee_35~q\ : std_logic;
SIGNAL \next_state.coca_30~0_combout\ : std_logic;
SIGNAL \present_state.coca_30~q\ : std_logic;
SIGNAL \WideOr5~2_combout\ : std_logic;
SIGNAL \next_state.coffee_40~0_combout\ : std_logic;
SIGNAL \present_state.coffee_40~q\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \present_state.coffee_30~q\ : std_logic;
SIGNAL \next_state.coca_35~1_combout\ : std_logic;
SIGNAL \present_state.coca_35~q\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \present_state.coca_25~q\ : std_logic;
SIGNAL \next_state.candy_30~0_combout\ : std_logic;
SIGNAL \present_state.candy_30~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \present_state.candy_20~q\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \present_state.idle~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \present_state.water_0~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \present_state.water_5~q\ : std_logic;
SIGNAL \next_state.water_15~0_combout\ : std_logic;
SIGNAL \present_state.water_15~q\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr4~1_combout\ : std_logic;
SIGNAL \WideOr5~1_combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \WideOr5~3_combout\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_WideOr4~1_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_five_in <= five_in;
ww_ten_in <= ten_in;
ww_twenty_in <= twenty_in;
ww_sel_water <= sel_water;
ww_sel_candy <= sel_candy;
ww_sel_coca <= sel_coca;
ww_sel_coffee <= sel_coffee;
ww_cancel <= cancel;
water <= ww_water;
candy <= ww_candy;
coca <= ww_coca;
coffee <= ww_coffee;
five_out <= ww_five_out;
ten_out <= ww_ten_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_WideOr4~1_combout\ <= NOT \WideOr4~1_combout\;

-- Location: IOOBUF_X38_Y0_N9
\water~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \water~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\candy~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \candy~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\coca~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \coca~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\coffee~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \coffee~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\five_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr4~1_combout\,
	devoe => ww_devoe,
	o => \five_out~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\ten_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr5~3_combout\,
	devoe => ww_devoe,
	o => \ten_out~output_o\);

-- Location: IOIBUF_X0_Y36_N8
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

-- Location: IOIBUF_X40_Y0_N22
\ten_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ten_in,
	o => \ten_in~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\five_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_five_in,
	o => \five_in~input_o\);

-- Location: IOIBUF_X42_Y0_N22
\sel_water~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel_water,
	o => \sel_water~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\twenty_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_twenty_in,
	o => \twenty_in~input_o\);

-- Location: LCCOMB_X42_Y1_N22
\next_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~0_combout\ = (!\ten_in~input_o\ & (!\twenty_in~input_o\ & !\five_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ten_in~input_o\,
	datac => \twenty_in~input_o\,
	datad => \five_in~input_o\,
	combout => \next_state~0_combout\);

-- Location: IOIBUF_X45_Y0_N15
\sel_coca~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel_coca,
	o => \sel_coca~input_o\);

-- Location: IOIBUF_X42_Y0_N15
\sel_candy~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel_candy,
	o => \sel_candy~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\sel_coffee~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel_coffee,
	o => \sel_coffee~input_o\);

-- Location: LCCOMB_X42_Y1_N24
\next_state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~2_combout\ = (\sel_water~input_o\ & ((\sel_coca~input_o\) # ((\sel_candy~input_o\) # (\sel_coffee~input_o\)))) # (!\sel_water~input_o\ & ((\sel_coca~input_o\ & ((\sel_candy~input_o\) # (\sel_coffee~input_o\))) # (!\sel_coca~input_o\ & 
-- (\sel_candy~input_o\ $ (!\sel_coffee~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_water~input_o\,
	datab => \sel_coca~input_o\,
	datac => \sel_candy~input_o\,
	datad => \sel_coffee~input_o\,
	combout => \next_state~2_combout\);

-- Location: IOIBUF_X47_Y0_N8
\cancel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cancel,
	o => \cancel~input_o\);

-- Location: LCCOMB_X42_Y1_N0
\next_state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~1_combout\ = (\ten_in~input_o\) # ((\five_in~input_o\) # ((\twenty_in~input_o\) # (\cancel~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ten_in~input_o\,
	datab => \five_in~input_o\,
	datac => \twenty_in~input_o\,
	datad => \cancel~input_o\,
	combout => \next_state~1_combout\);

-- Location: LCCOMB_X42_Y1_N2
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\sel_water~input_o\ & (\sel_candy~input_o\ & (!\sel_coffee~input_o\ & !\present_state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_water~input_o\,
	datab => \sel_candy~input_o\,
	datac => \sel_coffee~input_o\,
	datad => \present_state.idle~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X42_Y1_N4
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\next_state~0_combout\ & ((\present_state.candy_0~q\) # ((!\sel_coca~input_o\ & \Selector5~0_combout\)))) # (!\next_state~0_combout\ & (!\sel_coca~input_o\ & ((\Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~0_combout\,
	datab => \sel_coca~input_o\,
	datac => \present_state.candy_0~q\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: IOIBUF_X0_Y36_N15
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

-- Location: FF_X42_Y1_N5
\present_state.candy_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.candy_0~q\);

-- Location: LCCOMB_X41_Y1_N12
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\five_in~input_o\ & ((\present_state.candy_0~q\) # ((!\next_state~1_combout\ & \present_state.candy_5~q\)))) # (!\five_in~input_o\ & (!\next_state~1_combout\ & (\present_state.candy_5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \five_in~input_o\,
	datab => \next_state~1_combout\,
	datac => \present_state.candy_5~q\,
	datad => \present_state.candy_0~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X41_Y1_N13
\present_state.candy_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.candy_5~q\);

-- Location: LCCOMB_X40_Y1_N6
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\present_state.candy_5~q\ & \ten_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state.candy_5~q\,
	datad => \ten_in~input_o\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X41_Y1_N24
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\five_in~input_o\ & (\present_state.candy_5~q\)) # (!\five_in~input_o\ & (((\ten_in~input_o\ & \present_state.candy_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.candy_5~q\,
	datab => \five_in~input_o\,
	datac => \ten_in~input_o\,
	datad => \present_state.candy_0~q\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X40_Y1_N22
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector7~0_combout\) # ((!\next_state~1_combout\ & \present_state.candy_10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state~1_combout\,
	datac => \present_state.candy_10~q\,
	datad => \Selector7~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: FF_X40_Y1_N23
\present_state.candy_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.candy_10~q\);

-- Location: FF_X40_Y1_N7
\present_state.candy_15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	asdata => \present_state.candy_10~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \five_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.candy_15~q\);

-- Location: LCCOMB_X40_Y1_N16
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\ten_in~input_o\ & \present_state.water_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ten_in~input_o\,
	datad => \present_state.water_0~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X40_Y1_N17
\present_state.water_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	asdata => \present_state.water_5~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \five_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.water_10~q\);

-- Location: LCCOMB_X42_Y1_N30
\next_state.coca_35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.coca_35~0_combout\ = (!\ten_in~input_o\ & (\twenty_in~input_o\ & !\five_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ten_in~input_o\,
	datac => \twenty_in~input_o\,
	datad => \five_in~input_o\,
	combout => \next_state.coca_35~0_combout\);

-- Location: LCCOMB_X42_Y1_N18
\process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (!\sel_water~input_o\ & (!\sel_coca~input_o\ & (!\sel_candy~input_o\ & \sel_coffee~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_water~input_o\,
	datab => \sel_coca~input_o\,
	datac => \sel_candy~input_o\,
	datad => \sel_coffee~input_o\,
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X42_Y1_N6
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\next_state~0_combout\ & ((\present_state.coffee_0~q\) # ((\process_1~0_combout\ & !\present_state.idle~q\)))) # (!\next_state~0_combout\ & (\process_1~0_combout\ & ((!\present_state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~0_combout\,
	datab => \process_1~0_combout\,
	datac => \present_state.coffee_0~q\,
	datad => \present_state.idle~q\,
	combout => \Selector10~0_combout\);

-- Location: FF_X42_Y1_N7
\present_state.coffee_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.coffee_0~q\);

-- Location: LCCOMB_X41_Y1_N8
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\present_state.coffee_0~q\ & ((\five_in~input_o\) # ((!\next_state~1_combout\ & \present_state.coffee_5~q\)))) # (!\present_state.coffee_0~q\ & (!\next_state~1_combout\ & (\present_state.coffee_5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.coffee_0~q\,
	datab => \next_state~1_combout\,
	datac => \present_state.coffee_5~q\,
	datad => \five_in~input_o\,
	combout => \Selector11~0_combout\);

-- Location: FF_X41_Y1_N9
\present_state.coffee_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.coffee_5~q\);

-- Location: LCCOMB_X41_Y1_N18
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\ten_in~input_o\ & \present_state.coffee_5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ten_in~input_o\,
	datab => \present_state.coffee_5~q\,
	combout => \Selector13~0_combout\);

-- Location: FF_X41_Y1_N19
\present_state.coffee_15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	asdata => \present_state.coffee_10~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \five_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.coffee_15~q\);

-- Location: LCCOMB_X41_Y1_N26
\Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\present_state.coffee_15~q\) # ((\present_state.coffee_10~q\) # (\present_state.coffee_20~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state.coffee_15~q\,
	datac => \present_state.coffee_10~q\,
	datad => \present_state.coffee_20~q\,
	combout => \Selector12~1_combout\);

-- Location: LCCOMB_X41_Y1_N0
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\five_in~input_o\ & (((\present_state.coffee_5~q\)))) # (!\five_in~input_o\ & (\ten_in~input_o\ & ((\present_state.coffee_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ten_in~input_o\,
	datab => \five_in~input_o\,
	datac => \present_state.coffee_5~q\,
	datad => \present_state.coffee_0~q\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X41_Y1_N30
\Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~2_combout\ = (\Selector12~0_combout\) # ((!\next_state~1_combout\ & \Selector12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state~1_combout\,
	datac => \Selector12~1_combout\,
	datad => \Selector12~0_combout\,
	combout => \Selector12~2_combout\);

-- Location: FF_X41_Y1_N31
\present_state.coffee_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector12~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.coffee_10~q\);

-- Location: LCCOMB_X41_Y1_N6
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\five_in~input_o\ & (((\present_state.coffee_15~q\)))) # (!\five_in~input_o\ & (\ten_in~input_o\ & (\present_state.coffee_10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ten_in~input_o\,
	datab => \five_in~input_o\,
	datac => \present_state.coffee_10~q\,
	datad => \present_state.coffee_15~q\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X40_Y1_N2
\Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\Selector14~0_combout\) # ((\next_state.coca_35~0_combout\ & \present_state.coffee_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.coca_35~0_combout\,
	datac => \present_state.coffee_0~q\,
	datad => \Selector14~0_combout\,
	combout => \Selector14~1_combout\);

-- Location: FF_X40_Y1_N3
\present_state.coffee_20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector14~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.coffee_20~q\);

-- Location: LCCOMB_X40_Y1_N18
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\five_in~input_o\ & (((\present_state.coffee_20~q\)))) # (!\five_in~input_o\ & (\ten_in~input_o\ & ((\present_state.coffee_15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ten_in~input_o\,
	datab => \present_state.coffee_20~q\,
	datac => \five_in~input_o\,
	datad => \present_state.coffee_15~q\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X40_Y1_N4
\Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\Selector15~0_combout\) # ((\next_state.coca_35~0_combout\ & \present_state.coffee_5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.coca_35~0_combout\,
	datac => \present_state.coffee_5~q\,
	datad => \Selector15~0_combout\,
	combout => \Selector15~1_combout\);

-- Location: FF_X40_Y1_N5
\present_state.coffee_25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector15~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.coffee_25~q\);

-- Location: LCCOMB_X42_Y1_N28
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (!\sel_water~input_o\ & (!\sel_candy~input_o\ & (!\sel_coffee~input_o\ & !\present_state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_water~input_o\,
	datab => \sel_candy~input_o\,
	datac => \sel_coffee~input_o\,
	datad => \present_state.idle~q\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X42_Y1_N8
\Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (\next_state~0_combout\ & ((\present_state.coca_0~q\) # ((\sel_coca~input_o\ & \Selector17~0_combout\)))) # (!\next_state~0_combout\ & (\sel_coca~input_o\ & ((\Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~0_combout\,
	datab => \sel_coca~input_o\,
	datac => \present_state.coca_0~q\,
	datad => \Selector17~0_combout\,
	combout => \Selector17~1_combout\);

-- Location: FF_X42_Y1_N9
\present_state.coca_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector17~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.coca_0~q\);

-- Location: LCCOMB_X41_Y1_N10
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\next_state~1_combout\ & (\present_state.coca_0~q\ & ((\five_in~input_o\)))) # (!\next_state~1_combout\ & ((\present_state.coca_5~q\) # ((\present_state.coca_0~q\ & \five_in~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~1_combout\,
	datab => \present_state.coca_0~q\,
	datac => \present_state.coca_5~q\,
	datad => \five_in~input_o\,
	combout => \Selector18~0_combout\);

-- Location: FF_X41_Y1_N11
\present_state.coca_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.coca_5~q\);

-- Location: LCCOMB_X42_Y1_N10
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\five_in~input_o\ & (((\present_state.coca_5~q\)))) # (!\five_in~input_o\ & (\ten_in~input_o\ & (\present_state.coca_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ten_in~input_o\,
	datab => \five_in~input_o\,
	datac => \present_state.coca_0~q\,
	datad => \present_state.coca_5~q\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X42_Y1_N12
\Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = (\Selector19~0_combout\) # ((!\next_state~1_combout\ & \present_state.coca_10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~1_combout\,
	datac => \present_state.coca_10~q\,
	datad => \Selector19~0_combout\,
	combout => \Selector19~1_combout\);

-- Location: FF_X42_Y1_N13
\present_state.coca_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector19~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.coca_10~q\);

-- Location: LCCOMB_X42_Y1_N16
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\five_in~input_o\ & (\present_state.coca_10~q\)) # (!\five_in~input_o\ & (((\ten_in~input_o\ & \present_state.coca_5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.coca_10~q\,
	datab => \five_in~input_o\,
	datac => \ten_in~input_o\,
	datad => \present_state.coca_5~q\,
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X42_Y1_N14
\Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = (\Selector20~0_combout\) # ((!\next_state~1_combout\ & \present_state.coca_15~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~1_combout\,
	datac => \present_state.coca_15~q\,
	datad => \Selector20~0_combout\,
	combout => \Selector20~1_combout\);

-- Location: FF_X42_Y1_N15
\present_state.coca_15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector20~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.coca_15~q\);

-- Location: LCCOMB_X42_Y1_N26
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\five_in~input_o\ & (((\present_state.coca_15~q\)))) # (!\five_in~input_o\ & (\ten_in~input_o\ & ((\present_state.coca_10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ten_in~input_o\,
	datab => \five_in~input_o\,
	datac => \present_state.coca_15~q\,
	datad => \present_state.coca_10~q\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X41_Y1_N22
\Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = (\Selector21~0_combout\) # ((\next_state.coca_35~0_combout\ & \present_state.coca_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.coca_35~0_combout\,
	datac => \present_state.coca_0~q\,
	datad => \Selector21~0_combout\,
	combout => \Selector21~1_combout\);

-- Location: FF_X41_Y1_N23
\present_state.coca_20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector21~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.coca_20~q\);

-- Location: LCCOMB_X40_Y1_N0
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\present_state.candy_15~q\) # ((\present_state.water_10~q\) # ((\present_state.coffee_25~q\) # (\present_state.coca_20~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.candy_15~q\,
	datab => \present_state.water_10~q\,
	datac => \present_state.coffee_25~q\,
	datad => \present_state.coca_20~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X40_Y1_N10
\next_state.refund_20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.refund_20~0_combout\ = (\present_state.coffee_20~q\ & (\next_state~0_combout\ & \cancel~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state.coffee_20~q\,
	datac => \next_state~0_combout\,
	datad => \cancel~input_o\,
	combout => \next_state.refund_20~0_combout\);

-- Location: FF_X40_Y1_N11
\present_state.refund_20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state.refund_20~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.refund_20~q\);

-- Location: LCCOMB_X41_Y1_N4
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\present_state.coffee_10~q\) # ((\present_state.coca_10~q\) # (\present_state.candy_10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.coffee_10~q\,
	datac => \present_state.coca_10~q\,
	datad => \present_state.candy_10~q\,
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X40_Y1_N8
\Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~1_combout\ = (\present_state.refund_20~q\) # ((\cancel~input_o\ & (\next_state~0_combout\ & \Selector24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.refund_20~q\,
	datab => \cancel~input_o\,
	datac => \next_state~0_combout\,
	datad => \Selector24~0_combout\,
	combout => \Selector24~1_combout\);

-- Location: FF_X40_Y1_N9
\present_state.refund_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector24~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.refund_10~q\);

-- Location: LCCOMB_X42_Y1_N20
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\next_state~0_combout\ & (\cancel~input_o\ & ((\present_state.coca_15~q\) # (\present_state.coffee_15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~0_combout\,
	datab => \cancel~input_o\,
	datac => \present_state.coca_15~q\,
	datad => \present_state.coffee_15~q\,
	combout => \Selector25~0_combout\);

-- Location: FF_X42_Y1_N21
\present_state.refund_15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector25~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.refund_15~q\);

-- Location: LCCOMB_X41_Y1_N20
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\present_state.coca_5~q\) # ((\present_state.water_5~q\) # ((\present_state.coffee_5~q\) # (\present_state.candy_5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.coca_5~q\,
	datab => \present_state.water_5~q\,
	datac => \present_state.coffee_5~q\,
	datad => \present_state.candy_5~q\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X41_Y1_N16
\Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = (\present_state.refund_15~q\) # ((\cancel~input_o\ & (\next_state~0_combout\ & \Selector23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cancel~input_o\,
	datab => \next_state~0_combout\,
	datac => \present_state.refund_15~q\,
	datad => \Selector23~0_combout\,
	combout => \Selector23~1_combout\);

-- Location: FF_X41_Y1_N17
\present_state.refund_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector23~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.refund_5~q\);

-- Location: LCCOMB_X39_Y1_N16
\next_state.water_25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.water_25~0_combout\ = (!\five_in~input_o\ & (!\ten_in~input_o\ & (\twenty_in~input_o\ & \present_state.water_5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \five_in~input_o\,
	datab => \ten_in~input_o\,
	datac => \twenty_in~input_o\,
	datad => \present_state.water_5~q\,
	combout => \next_state.water_25~0_combout\);

-- Location: FF_X39_Y1_N17
\present_state.water_25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state.water_25~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.water_25~q\);

-- Location: LCCOMB_X40_Y1_N26
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\present_state.water_25~q\) # ((\next_state.coca_35~0_combout\ & \present_state.water_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.coca_35~0_combout\,
	datac => \present_state.water_25~q\,
	datad => \present_state.water_0~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X40_Y1_N27
\present_state.water_20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.water_20~q\);

-- Location: LCCOMB_X40_Y1_N28
\next_state.candy_25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.candy_25~0_combout\ = (!\five_in~input_o\ & (\twenty_in~input_o\ & (\present_state.candy_5~q\ & !\ten_in~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \five_in~input_o\,
	datab => \twenty_in~input_o\,
	datac => \present_state.candy_5~q\,
	datad => \ten_in~input_o\,
	combout => \next_state.candy_25~0_combout\);

-- Location: FF_X40_Y1_N29
\present_state.candy_25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state.candy_25~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.candy_25~q\);

-- Location: LCCOMB_X40_Y1_N14
\next_state.coffee_35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.coffee_35~0_combout\ = (!\ten_in~input_o\ & (\twenty_in~input_o\ & (!\five_in~input_o\ & \present_state.coffee_15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ten_in~input_o\,
	datab => \twenty_in~input_o\,
	datac => \five_in~input_o\,
	datad => \present_state.coffee_15~q\,
	combout => \next_state.coffee_35~0_combout\);

-- Location: FF_X40_Y1_N15
\present_state.coffee_35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state.coffee_35~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.coffee_35~q\);

-- Location: LCCOMB_X40_Y1_N20
\next_state.coca_30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.coca_30~0_combout\ = (!\five_in~input_o\ & (\twenty_in~input_o\ & (\present_state.coca_10~q\ & !\ten_in~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \five_in~input_o\,
	datab => \twenty_in~input_o\,
	datac => \present_state.coca_10~q\,
	datad => \ten_in~input_o\,
	combout => \next_state.coca_30~0_combout\);

-- Location: FF_X40_Y1_N21
\present_state.coca_30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state.coca_30~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.coca_30~q\);

-- Location: LCCOMB_X40_Y1_N30
\WideOr5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~2_combout\ = (!\present_state.water_20~q\ & (!\present_state.candy_25~q\ & (!\present_state.coffee_35~q\ & !\present_state.coca_30~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.water_20~q\,
	datab => \present_state.candy_25~q\,
	datac => \present_state.coffee_35~q\,
	datad => \present_state.coca_30~q\,
	combout => \WideOr5~2_combout\);

-- Location: LCCOMB_X39_Y1_N4
\next_state.coffee_40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.coffee_40~0_combout\ = (!\five_in~input_o\ & (!\ten_in~input_o\ & (\twenty_in~input_o\ & \present_state.coffee_20~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \five_in~input_o\,
	datab => \ten_in~input_o\,
	datac => \twenty_in~input_o\,
	datad => \present_state.coffee_20~q\,
	combout => \next_state.coffee_40~0_combout\);

-- Location: FF_X39_Y1_N5
\present_state.coffee_40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state.coffee_40~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.coffee_40~q\);

-- Location: LCCOMB_X39_Y1_N6
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\present_state.coffee_40~q\) # ((!\five_in~input_o\ & (\ten_in~input_o\ & \present_state.coffee_20~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \five_in~input_o\,
	datab => \ten_in~input_o\,
	datac => \present_state.coffee_40~q\,
	datad => \present_state.coffee_20~q\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X39_Y1_N26
\Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (\Selector16~0_combout\) # ((\next_state.coca_35~0_combout\ & \present_state.coffee_10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.coca_35~0_combout\,
	datac => \present_state.coffee_10~q\,
	datad => \Selector16~0_combout\,
	combout => \Selector16~1_combout\);

-- Location: FF_X39_Y1_N27
\present_state.coffee_30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector16~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.coffee_30~q\);

-- Location: LCCOMB_X39_Y1_N22
\next_state.coca_35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.coca_35~1_combout\ = (!\five_in~input_o\ & (!\ten_in~input_o\ & (\twenty_in~input_o\ & \present_state.coca_15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \five_in~input_o\,
	datab => \ten_in~input_o\,
	datac => \twenty_in~input_o\,
	datad => \present_state.coca_15~q\,
	combout => \next_state.coca_35~1_combout\);

-- Location: FF_X39_Y1_N23
\present_state.coca_35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state.coca_35~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.coca_35~q\);

-- Location: LCCOMB_X39_Y1_N0
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\present_state.coca_35~q\) # ((!\five_in~input_o\ & (\ten_in~input_o\ & \present_state.coca_15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \five_in~input_o\,
	datab => \ten_in~input_o\,
	datac => \present_state.coca_35~q\,
	datad => \present_state.coca_15~q\,
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X39_Y1_N20
\Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = (\Selector22~0_combout\) # ((\next_state.coca_35~0_combout\ & \present_state.coca_5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.coca_35~0_combout\,
	datac => \present_state.coca_5~q\,
	datad => \Selector22~0_combout\,
	combout => \Selector22~1_combout\);

-- Location: FF_X39_Y1_N21
\present_state.coca_25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector22~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.coca_25~q\);

-- Location: LCCOMB_X39_Y1_N10
\next_state.candy_30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.candy_30~0_combout\ = (!\five_in~input_o\ & (!\ten_in~input_o\ & (\twenty_in~input_o\ & \present_state.candy_10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \five_in~input_o\,
	datab => \ten_in~input_o\,
	datac => \twenty_in~input_o\,
	datad => \present_state.candy_10~q\,
	combout => \next_state.candy_30~0_combout\);

-- Location: FF_X39_Y1_N11
\present_state.candy_30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state.candy_30~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.candy_30~q\);

-- Location: LCCOMB_X39_Y1_N18
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\present_state.candy_30~q\) # ((\ten_in~input_o\ & (!\five_in~input_o\ & \present_state.candy_10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.candy_30~q\,
	datab => \ten_in~input_o\,
	datac => \five_in~input_o\,
	datad => \present_state.candy_10~q\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X39_Y1_N8
\Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\Selector9~0_combout\) # ((\present_state.candy_0~q\ & \next_state.coca_35~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.candy_0~q\,
	datab => \next_state.coca_35~0_combout\,
	datad => \Selector9~0_combout\,
	combout => \Selector9~1_combout\);

-- Location: FF_X39_Y1_N9
\present_state.candy_20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.candy_20~q\);

-- Location: LCCOMB_X39_Y1_N14
\WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (!\present_state.coffee_30~q\ & (!\present_state.coca_25~q\ & (!\present_state.candy_20~q\ & !\present_state.water_15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.coffee_30~q\,
	datab => \present_state.coca_25~q\,
	datac => \present_state.candy_20~q\,
	datad => \present_state.water_15~q\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X40_Y1_N24
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\present_state.refund_10~q\) # ((\present_state.refund_5~q\) # ((!\WideOr4~0_combout\) # (!\WideOr5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.refund_10~q\,
	datab => \present_state.refund_5~q\,
	datac => \WideOr5~2_combout\,
	datad => \WideOr4~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X40_Y1_N12
\Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (!\Selector0~0_combout\ & (!\Selector0~1_combout\ & ((\present_state.idle~q\) # (!\next_state~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~2_combout\,
	datab => \Selector0~0_combout\,
	datac => \present_state.idle~q\,
	datad => \Selector0~1_combout\,
	combout => \Selector0~2_combout\);

-- Location: FF_X40_Y1_N13
\present_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.idle~q\);

-- Location: LCCOMB_X41_Y1_N2
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\sel_coca~input_o\ & (!\sel_candy~input_o\ & (!\sel_coffee~input_o\ & !\present_state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_coca~input_o\,
	datab => \sel_candy~input_o\,
	datac => \sel_coffee~input_o\,
	datad => \present_state.idle~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X41_Y1_N28
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\sel_water~input_o\ & ((\Selector1~0_combout\) # ((\next_state~0_combout\ & \present_state.water_0~q\)))) # (!\sel_water~input_o\ & (\next_state~0_combout\ & (\present_state.water_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_water~input_o\,
	datab => \next_state~0_combout\,
	datac => \present_state.water_0~q\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X41_Y1_N29
\present_state.water_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.water_0~q\);

-- Location: LCCOMB_X41_Y1_N14
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\present_state.water_0~q\ & ((\five_in~input_o\) # ((!\next_state~1_combout\ & \present_state.water_5~q\)))) # (!\present_state.water_0~q\ & (!\next_state~1_combout\ & (\present_state.water_5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.water_0~q\,
	datab => \next_state~1_combout\,
	datac => \present_state.water_5~q\,
	datad => \five_in~input_o\,
	combout => \Selector2~0_combout\);

-- Location: FF_X41_Y1_N15
\present_state.water_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.water_5~q\);

-- Location: LCCOMB_X39_Y1_N28
\next_state.water_15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.water_15~0_combout\ = (\ten_in~input_o\ & (!\five_in~input_o\ & \present_state.water_5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ten_in~input_o\,
	datac => \five_in~input_o\,
	datad => \present_state.water_5~q\,
	combout => \next_state.water_15~0_combout\);

-- Location: FF_X39_Y1_N29
\present_state.water_15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state.water_15~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.water_15~q\);

-- Location: LCCOMB_X39_Y1_N2
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\present_state.water_15~q\) # ((\present_state.water_20~q\) # (\present_state.water_10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state.water_15~q\,
	datac => \present_state.water_20~q\,
	datad => \present_state.water_10~q\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X39_Y1_N30
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\present_state.candy_20~q\) # ((\present_state.candy_25~q\) # (\present_state.candy_15~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.candy_20~q\,
	datab => \present_state.candy_25~q\,
	datad => \present_state.candy_15~q\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X38_Y1_N12
\WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\present_state.coca_30~q\) # ((\present_state.coca_25~q\) # (\present_state.coca_20~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.coca_30~q\,
	datac => \present_state.coca_25~q\,
	datad => \present_state.coca_20~q\,
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X39_Y1_N12
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\present_state.coffee_30~q\) # ((\present_state.coffee_25~q\) # (\present_state.coffee_35~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.coffee_30~q\,
	datab => \present_state.coffee_25~q\,
	datad => \present_state.coffee_35~q\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X38_Y1_N10
\WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~1_combout\ = (\WideOr4~0_combout\ & !\present_state.refund_5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideOr4~0_combout\,
	datad => \present_state.refund_5~q\,
	combout => \WideOr4~1_combout\);

-- Location: LCCOMB_X38_Y1_N28
\WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~1_combout\ = (\present_state.refund_15~q\) # (\present_state.refund_20~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.refund_15~q\,
	datac => \present_state.refund_20~q\,
	combout => \WideOr5~1_combout\);

-- Location: LCCOMB_X39_Y1_N24
\WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (\present_state.coca_35~q\) # ((\present_state.water_25~q\) # ((\present_state.coffee_40~q\) # (\present_state.candy_30~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.coca_35~q\,
	datab => \present_state.water_25~q\,
	datac => \present_state.coffee_40~q\,
	datad => \present_state.candy_30~q\,
	combout => \WideOr5~0_combout\);

-- Location: LCCOMB_X38_Y1_N22
\WideOr5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~3_combout\ = (\present_state.refund_10~q\) # ((\WideOr5~1_combout\) # ((\WideOr5~0_combout\) # (!\WideOr5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.refund_10~q\,
	datab => \WideOr5~1_combout\,
	datac => \WideOr5~2_combout\,
	datad => \WideOr5~0_combout\,
	combout => \WideOr5~3_combout\);

ww_water <= \water~output_o\;

ww_candy <= \candy~output_o\;

ww_coca <= \coca~output_o\;

ww_coffee <= \coffee~output_o\;

ww_five_out <= \five_out~output_o\;

ww_ten_out <= \ten_out~output_o\;
END structure;


