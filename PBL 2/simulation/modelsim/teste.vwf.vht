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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/13/2024 14:22:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          contador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY contador_vhd_vec_tst IS
END contador_vhd_vec_tst;
ARCHITECTURE contador_arch OF contador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL chave_0 : STD_LOGIC;
SIGNAL chave_1 : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL seg_a : STD_LOGIC;
SIGNAL seg_b : STD_LOGIC;
SIGNAL seg_c : STD_LOGIC;
SIGNAL seg_d : STD_LOGIC;
SIGNAL seg_e : STD_LOGIC;
SIGNAL seg_f : STD_LOGIC;
SIGNAL seg_g : STD_LOGIC;
COMPONENT contador
	PORT (
	chave_0 : IN STD_LOGIC;
	chave_1 : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	seg_a : BUFFER STD_LOGIC;
	seg_b : BUFFER STD_LOGIC;
	seg_c : BUFFER STD_LOGIC;
	seg_d : BUFFER STD_LOGIC;
	seg_e : BUFFER STD_LOGIC;
	seg_f : BUFFER STD_LOGIC;
	seg_g : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : contador
	PORT MAP (
-- list connections between master ports and signals
	chave_0 => chave_0,
	chave_1 => chave_1,
	clk => clk,
	seg_a => seg_a,
	seg_b => seg_b,
	seg_c => seg_c,
	seg_d => seg_d,
	seg_e => seg_e,
	seg_f => seg_f,
	seg_g => seg_g
	);

-- chave_0
t_prcs_chave_0: PROCESS
BEGIN
	chave_0 <= '1';
WAIT;
END PROCESS t_prcs_chave_0;

-- chave_1
t_prcs_chave_1: PROCESS
BEGIN
	chave_1 <= '1';
WAIT;
END PROCESS t_prcs_chave_1;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 50000 ps;
	clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END contador_arch;
