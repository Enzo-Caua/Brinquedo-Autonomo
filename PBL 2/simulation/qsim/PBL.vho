-- Copyright (C) 2024  Intel Corporation. All rights reserved.
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
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "10/13/2024 14:22:37"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	contador IS
    PORT (
	seg_a : BUFFER std_logic;
	seg_b : BUFFER std_logic;
	seg_c : BUFFER std_logic;
	seg_d : BUFFER std_logic;
	seg_e : BUFFER std_logic;
	seg_f : BUFFER std_logic;
	seg_g : BUFFER std_logic;
	clk : IN std_logic;
	chave_0 : IN std_logic;
	chave_1 : IN std_logic
	);
END contador;

-- Design Ports Information


ARCHITECTURE structure OF contador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_seg_a : std_logic;
SIGNAL ww_seg_b : std_logic;
SIGNAL ww_seg_c : std_logic;
SIGNAL ww_seg_d : std_logic;
SIGNAL ww_seg_e : std_logic;
SIGNAL ww_seg_f : std_logic;
SIGNAL ww_seg_g : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_chave_0 : std_logic;
SIGNAL ww_chave_1 : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \chave_1~combout\ : std_logic;
SIGNAL \chave_0~combout\ : std_logic;
SIGNAL \And_0~combout\ : std_logic;
SIGNAL \mux_inst|Or_reset~0_combout\ : std_logic;
SIGNAL \mux_inst|Or_reset~1_combout\ : std_logic;
SIGNAL \cadeamento_inst|comb_3|q~regout\ : std_logic;
SIGNAL \cadeamento_inst|comb_5|q~regout\ : std_logic;
SIGNAL \cadeamento_inst|comb_7|q~regout\ : std_logic;
SIGNAL \cadeamento_inst|comb_9|q~regout\ : std_logic;
SIGNAL \display_ins|Or_a0~0_combout\ : std_logic;
SIGNAL \display_ins|Or_b0~0_combout\ : std_logic;
SIGNAL \display_ins|And_a0~0_combout\ : std_logic;
SIGNAL \display_ins|Or_d0~0_combout\ : std_logic;
SIGNAL \display_ins|And_a0~1_combout\ : std_logic;
SIGNAL \display_ins|Or_f0~0_combout\ : std_logic;
SIGNAL \display_ins|And_g0~0_combout\ : std_logic;
SIGNAL \display_ins|ALT_INV_And_a0~1_combout\ : std_logic;

BEGIN

seg_a <= ww_seg_a;
seg_b <= ww_seg_b;
seg_c <= ww_seg_c;
seg_d <= ww_seg_d;
seg_e <= ww_seg_e;
seg_f <= ww_seg_f;
seg_g <= ww_seg_g;
ww_clk <= clk;
ww_chave_0 <= chave_0;
ww_chave_1 <= chave_1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\display_ins|ALT_INV_And_a0~1_combout\ <= NOT \display_ins|And_a0~1_combout\;

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\chave_1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_chave_1,
	combout => \chave_1~combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\chave_0~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_chave_0,
	combout => \chave_0~combout\);

-- Location: LC_X4_Y3_N2
And_0 : maxii_lcell
-- Equation(s):
-- \And_0~combout\ = LCELL(((\clk~combout\ & ((\chave_1~combout\) # (\chave_0~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk~combout\,
	datac => \chave_1~combout\,
	datad => \chave_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \And_0~combout\);

-- Location: LC_X2_Y3_N2
\mux_inst|Or_reset~0\ : maxii_lcell
-- Equation(s):
-- \mux_inst|Or_reset~0_combout\ = (\cadeamento_inst|comb_3|q~regout\ & ((\chave_1~combout\ & (\cadeamento_inst|comb_5|q~regout\)) # (!\chave_1~combout\ & ((\cadeamento_inst|comb_7|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c480",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \chave_1~combout\,
	datab => \cadeamento_inst|comb_3|q~regout\,
	datac => \cadeamento_inst|comb_5|q~regout\,
	datad => \cadeamento_inst|comb_7|q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux_inst|Or_reset~0_combout\);

-- Location: LC_X2_Y3_N3
\mux_inst|Or_reset~1\ : maxii_lcell
-- Equation(s):
-- \mux_inst|Or_reset~1_combout\ = (\chave_1~combout\ & ((\chave_0~combout\ & (!\cadeamento_inst|comb_9|q~regout\)) # (!\chave_0~combout\ & ((!\mux_inst|Or_reset~0_combout\))))) # (!\chave_1~combout\ & (((!\mux_inst|Or_reset~0_combout\) # 
-- (!\chave_0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "257f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \chave_1~combout\,
	datab => \cadeamento_inst|comb_9|q~regout\,
	datac => \chave_0~combout\,
	datad => \mux_inst|Or_reset~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux_inst|Or_reset~1_combout\);

-- Location: LC_X3_Y3_N8
\cadeamento_inst|comb_3|q\ : maxii_lcell
-- Equation(s):
-- \cadeamento_inst|comb_3|q~regout\ = DFFEAS((((!\cadeamento_inst|comb_3|q~regout\))), \And_0~combout\, !GLOBAL(\mux_inst|Or_reset~1_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \And_0~combout\,
	datad => \cadeamento_inst|comb_3|q~regout\,
	aclr => \mux_inst|Or_reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cadeamento_inst|comb_3|q~regout\);

-- Location: LC_X3_Y3_N9
\cadeamento_inst|comb_5|q\ : maxii_lcell
-- Equation(s):
-- \cadeamento_inst|comb_5|q~regout\ = DFFEAS((((!\cadeamento_inst|comb_5|q~regout\))), \cadeamento_inst|comb_3|q~regout\, !GLOBAL(\mux_inst|Or_reset~1_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cadeamento_inst|comb_3|q~regout\,
	datad => \cadeamento_inst|comb_5|q~regout\,
	aclr => \mux_inst|Or_reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cadeamento_inst|comb_5|q~regout\);

-- Location: LC_X2_Y3_N8
\cadeamento_inst|comb_7|q\ : maxii_lcell
-- Equation(s):
-- \cadeamento_inst|comb_7|q~regout\ = DFFEAS((((!\cadeamento_inst|comb_7|q~regout\))), \cadeamento_inst|comb_5|q~regout\, !GLOBAL(\mux_inst|Or_reset~1_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cadeamento_inst|comb_5|q~regout\,
	datad => \cadeamento_inst|comb_7|q~regout\,
	aclr => \mux_inst|Or_reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cadeamento_inst|comb_7|q~regout\);

-- Location: LC_X2_Y3_N9
\cadeamento_inst|comb_9|q\ : maxii_lcell
-- Equation(s):
-- \cadeamento_inst|comb_9|q~regout\ = DFFEAS((((!\cadeamento_inst|comb_9|q~regout\))), \cadeamento_inst|comb_7|q~regout\, !GLOBAL(\mux_inst|Or_reset~1_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cadeamento_inst|comb_7|q~regout\,
	datad => \cadeamento_inst|comb_9|q~regout\,
	aclr => \mux_inst|Or_reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cadeamento_inst|comb_9|q~regout\);

-- Location: LC_X4_Y3_N5
\display_ins|Or_a0~0\ : maxii_lcell
-- Equation(s):
-- \display_ins|Or_a0~0_combout\ = (!\cadeamento_inst|comb_5|q~regout\ & ((\cadeamento_inst|comb_3|q~regout\ & (!\cadeamento_inst|comb_9|q~regout\ & !\cadeamento_inst|comb_7|q~regout\)) # (!\cadeamento_inst|comb_3|q~regout\ & 
-- ((\cadeamento_inst|comb_7|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0034",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cadeamento_inst|comb_9|q~regout\,
	datab => \cadeamento_inst|comb_3|q~regout\,
	datac => \cadeamento_inst|comb_7|q~regout\,
	datad => \cadeamento_inst|comb_5|q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display_ins|Or_a0~0_combout\);

-- Location: LC_X4_Y3_N4
\display_ins|Or_b0~0\ : maxii_lcell
-- Equation(s):
-- \display_ins|Or_b0~0_combout\ = ((\cadeamento_inst|comb_7|q~regout\ & (\cadeamento_inst|comb_5|q~regout\ $ (\cadeamento_inst|comb_3|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cadeamento_inst|comb_5|q~regout\,
	datac => \cadeamento_inst|comb_7|q~regout\,
	datad => \cadeamento_inst|comb_3|q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display_ins|Or_b0~0_combout\);

-- Location: LC_X4_Y3_N6
\display_ins|And_a0~0\ : maxii_lcell
-- Equation(s):
-- \display_ins|And_a0~0_combout\ = ((\cadeamento_inst|comb_5|q~regout\ & (!\cadeamento_inst|comb_7|q~regout\ & !\cadeamento_inst|comb_3|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cadeamento_inst|comb_5|q~regout\,
	datac => \cadeamento_inst|comb_7|q~regout\,
	datad => \cadeamento_inst|comb_3|q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display_ins|And_a0~0_combout\);

-- Location: LC_X2_Y3_N5
\display_ins|Or_d0~0\ : maxii_lcell
-- Equation(s):
-- \display_ins|Or_d0~0_combout\ = (\cadeamento_inst|comb_7|q~regout\ & (\cadeamento_inst|comb_3|q~regout\ $ (((!\cadeamento_inst|comb_5|q~regout\))))) # (!\cadeamento_inst|comb_7|q~regout\ & (\cadeamento_inst|comb_3|q~regout\ & 
-- (!\cadeamento_inst|comb_9|q~regout\ & !\cadeamento_inst|comb_5|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a502",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cadeamento_inst|comb_3|q~regout\,
	datab => \cadeamento_inst|comb_9|q~regout\,
	datac => \cadeamento_inst|comb_5|q~regout\,
	datad => \cadeamento_inst|comb_7|q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display_ins|Or_d0~0_combout\);

-- Location: LC_X2_Y3_N7
\display_ins|And_a0~1\ : maxii_lcell
-- Equation(s):
-- \display_ins|And_a0~1_combout\ = (((!\cadeamento_inst|comb_3|q~regout\ & !\cadeamento_inst|comb_7|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \cadeamento_inst|comb_3|q~regout\,
	datad => \cadeamento_inst|comb_7|q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display_ins|And_a0~1_combout\);

-- Location: LC_X2_Y3_N6
\display_ins|Or_f0~0\ : maxii_lcell
-- Equation(s):
-- \display_ins|Or_f0~0_combout\ = (\cadeamento_inst|comb_3|q~regout\ & ((\cadeamento_inst|comb_5|q~regout\) # ((!\cadeamento_inst|comb_9|q~regout\ & !\cadeamento_inst|comb_7|q~regout\)))) # (!\cadeamento_inst|comb_3|q~regout\ & 
-- (((\cadeamento_inst|comb_5|q~regout\ & !\cadeamento_inst|comb_7|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0f2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cadeamento_inst|comb_3|q~regout\,
	datab => \cadeamento_inst|comb_9|q~regout\,
	datac => \cadeamento_inst|comb_5|q~regout\,
	datad => \cadeamento_inst|comb_7|q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display_ins|Or_f0~0_combout\);

-- Location: LC_X4_Y3_N8
\display_ins|And_g0~0\ : maxii_lcell
-- Equation(s):
-- \display_ins|And_g0~0_combout\ = (!\cadeamento_inst|comb_9|q~regout\ & (((!\cadeamento_inst|comb_7|q~regout\ & !\cadeamento_inst|comb_5|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cadeamento_inst|comb_9|q~regout\,
	datac => \cadeamento_inst|comb_7|q~regout\,
	datad => \cadeamento_inst|comb_5|q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display_ins|And_g0~0_combout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\seg_a~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display_ins|Or_a0~0_combout\,
	oe => VCC,
	padio => ww_seg_a);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\seg_b~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display_ins|Or_b0~0_combout\,
	oe => VCC,
	padio => ww_seg_b);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\seg_c~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display_ins|And_a0~0_combout\,
	oe => VCC,
	padio => ww_seg_c);

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\seg_d~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display_ins|Or_d0~0_combout\,
	oe => VCC,
	padio => ww_seg_d);

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\seg_e~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display_ins|ALT_INV_And_a0~1_combout\,
	oe => VCC,
	padio => ww_seg_e);

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\seg_f~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display_ins|Or_f0~0_combout\,
	oe => VCC,
	padio => ww_seg_f);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\seg_g~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display_ins|And_g0~0_combout\,
	oe => VCC,
	padio => ww_seg_g);
END structure;


