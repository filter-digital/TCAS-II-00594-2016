-- ------------------------------------------------------------------------- 
-- Altera DSP Builder Advanced Flow Tools Release Version 16.0
-- Quartus Prime development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2016 Altera Corporation.  All rights reserved.
-- Your use of  Altera  Corporation's design tools,  logic functions and other
-- software and tools,  and its AMPP  partner logic functions, and  any output
-- files  any of the  foregoing  device programming or simulation files),  and
-- any associated  documentation or information are expressly subject  to  the
-- terms and conditions  of the Altera Program License Subscription Agreement,
-- Altera  MegaCore  Function  License  Agreement, or other applicable license
-- agreement,  including,  without limitation,  that your use  is for the sole
-- purpose of  programming  logic  devices  manufactured by Altera and sold by
-- Altera or its authorized  distributors.  Please  refer  to  the  applicable
-- agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from FIR_90TAPS_rtl_core
-- VHDL created on Tue Aug 02 14:26:23 2016


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY altera_lnsim;
USE altera_lnsim.altera_lnsim_components.altera_syncram;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity FIR_90TAPS_rtl_core is
    port (
        xIn_v : in std_logic_vector(0 downto 0);  -- sfix1
        xIn_c : in std_logic_vector(7 downto 0);  -- sfix8
        xIn_0 : in std_logic_vector(14 downto 0);  -- sfix15
        xOut_v : out std_logic_vector(0 downto 0);  -- ufix1
        xOut_c : out std_logic_vector(7 downto 0);  -- ufix8
        xOut_0 : out std_logic_vector(40 downto 0);  -- sfix41
        clk : in std_logic;
        areset : in std_logic
    );
end FIR_90TAPS_rtl_core;

architecture normal of FIR_90TAPS_rtl_core is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split32_c_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr65_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr66_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr67_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr68_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr69_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr70_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr71_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr72_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr73_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr74_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr75_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr76_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr77_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr78_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr79_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr80_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr81_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr82_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr83_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr84_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr85_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr86_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr87_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr88_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr89_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr90_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr90_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr91_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr91_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr92_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr92_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr93_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr93_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr94_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr94_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr95_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr95_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr96_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr96_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr97_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr97_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr98_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr98_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr99_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr99_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr100_q : STD_LOGIC_VECTOR (14 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr100_q_11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr117_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr118_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr119_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr120_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr121_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr122_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr123_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr124_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr125_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr126_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr127_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr128_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr129_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr130_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr131_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr132_q : STD_LOGIC_VECTOR (14 downto 0);
    type u0_m0_wo0_cma0_atype is array(0 to 31) of SIGNED(14 downto 0);
    signal u0_m0_wo0_cma0_a0 : u0_m0_wo0_cma0_atype;
    attribute preserve : boolean;
    attribute preserve of u0_m0_wo0_cma0_a0 : signal is true;
    type u0_m0_wo0_cma0_btype is array(0 to 31) of SIGNED(14 downto 0);
    signal u0_m0_wo0_cma0_b0 : u0_m0_wo0_cma0_btype;
    attribute preserve of u0_m0_wo0_cma0_b0 : signal is true;
    type u0_m0_wo0_cma0_ctype is array(0 to 31) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_cma0_c0 : u0_m0_wo0_cma0_ctype;
    attribute preserve of u0_m0_wo0_cma0_c0 : signal is true;
    type u0_m0_wo0_cma0_dtype is array(0 to 31) of SIGNED(14 downto 0);
    signal u0_m0_wo0_cma0_d : u0_m0_wo0_cma0_dtype;
    attribute preserve of u0_m0_wo0_cma0_d : signal is true;
    type u0_m0_wo0_cma0_ltype is array(0 to 31) of SIGNED(15 downto 0);
    signal u0_m0_wo0_cma0_l : u0_m0_wo0_cma0_ltype;
    type u0_m0_wo0_cma0_rtype is array(0 to 31) of SIGNED(12 downto 0);
    signal u0_m0_wo0_cma0_r : u0_m0_wo0_cma0_rtype;
    type u0_m0_wo0_cma0_ptype is array(0 to 31) of SIGNED(28 downto 0);
    signal u0_m0_wo0_cma0_p : u0_m0_wo0_cma0_ptype;
    type u0_m0_wo0_cma0_utype is array(0 to 31) of SIGNED(33 downto 0);
    signal u0_m0_wo0_cma0_u : u0_m0_wo0_cma0_utype;
    type u0_m0_wo0_cma0_wtype is array(0 to 31) of SIGNED(33 downto 0);
    signal u0_m0_wo0_cma0_w : u0_m0_wo0_cma0_wtype;
    type u0_m0_wo0_cma0_xtype is array(0 to 31) of SIGNED(33 downto 0);
    signal u0_m0_wo0_cma0_x : u0_m0_wo0_cma0_xtype;
    type u0_m0_wo0_cma0_ytype is array(0 to 31) of SIGNED(33 downto 0);
    signal u0_m0_wo0_cma0_y : u0_m0_wo0_cma0_ytype;
    type u0_m0_wo0_cma0_romtype is array(0 to 7) of SIGNED(12 downto 0);
    signal u0_m0_wo0_cma0_k0 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-732,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k1 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-1938,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k2 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-2423,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k3 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-1983,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k4 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-766,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k5 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(775,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k6 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(2054,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k7 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(2570,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k8 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(2105,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k9 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(814,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k10 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-824,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k11 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-2185,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k12 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-2736,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k13 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-2242,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k14 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-868,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k15 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(879,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k16 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(2334,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k17 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(2925,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k18 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(2399,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k19 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(929,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k20 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-942,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k21 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-2504,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k22 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-3141,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k23 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-2580,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k24 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-1000,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k25 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(1016,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k26 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(2701,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k27 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(3393,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k28 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(2789,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k29 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(1083,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k30 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-1101,13),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k31 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-2932,13),
        others => (others => '0'));
    type u0_m0_wo0_cma0_stype is array(0 to 31) of SIGNED(33 downto 0);
    signal u0_m0_wo0_cma0_s : u0_m0_wo0_cma0_stype;
    signal u0_m0_wo0_cma0_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_cma0_q : STD_LOGIC_VECTOR (33 downto 0);
    type u0_m0_wo0_cma1_atype is array(0 to 31) of SIGNED(14 downto 0);
    signal u0_m0_wo0_cma1_a0 : u0_m0_wo0_cma1_atype;
    attribute preserve of u0_m0_wo0_cma1_a0 : signal is true;
    type u0_m0_wo0_cma1_btype is array(0 to 31) of SIGNED(14 downto 0);
    signal u0_m0_wo0_cma1_b0 : u0_m0_wo0_cma1_btype;
    attribute preserve of u0_m0_wo0_cma1_b0 : signal is true;
    type u0_m0_wo0_cma1_ctype is array(0 to 31) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_cma1_c0 : u0_m0_wo0_cma1_ctype;
    attribute preserve of u0_m0_wo0_cma1_c0 : signal is true;
    type u0_m0_wo0_cma1_dtype is array(0 to 31) of SIGNED(14 downto 0);
    signal u0_m0_wo0_cma1_d : u0_m0_wo0_cma1_dtype;
    attribute preserve of u0_m0_wo0_cma1_d : signal is true;
    type u0_m0_wo0_cma1_ltype is array(0 to 31) of SIGNED(15 downto 0);
    signal u0_m0_wo0_cma1_l : u0_m0_wo0_cma1_ltype;
    type u0_m0_wo0_cma1_rtype is array(0 to 31) of SIGNED(13 downto 0);
    signal u0_m0_wo0_cma1_r : u0_m0_wo0_cma1_rtype;
    type u0_m0_wo0_cma1_ptype is array(0 to 31) of SIGNED(29 downto 0);
    signal u0_m0_wo0_cma1_p : u0_m0_wo0_cma1_ptype;
    type u0_m0_wo0_cma1_utype is array(0 to 31) of SIGNED(34 downto 0);
    signal u0_m0_wo0_cma1_u : u0_m0_wo0_cma1_utype;
    type u0_m0_wo0_cma1_wtype is array(0 to 31) of SIGNED(34 downto 0);
    signal u0_m0_wo0_cma1_w : u0_m0_wo0_cma1_wtype;
    type u0_m0_wo0_cma1_xtype is array(0 to 31) of SIGNED(34 downto 0);
    signal u0_m0_wo0_cma1_x : u0_m0_wo0_cma1_xtype;
    type u0_m0_wo0_cma1_ytype is array(0 to 31) of SIGNED(34 downto 0);
    signal u0_m0_wo0_cma1_y : u0_m0_wo0_cma1_ytype;
    type u0_m0_wo0_cma1_romtype is array(0 to 7) of SIGNED(13 downto 0);
    signal u0_m0_wo0_cma1_k0 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(-3688,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k1 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(-3036,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k2 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(-1180,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k3 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(1202,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k4 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(3206,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k5 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(4039,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k6 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(3331,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k7 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(1297,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k8 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(-1323,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k9 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(-3537,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k10 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(-4464,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k11 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(-3689,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k12 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(-1440,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k13 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(1472,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k14 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(3944,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k15 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(4990,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k16 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(4134,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k17 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(1618,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k18 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(-1659,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k19 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(-4456,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k20 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(-5655,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k21 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(-4700,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k22 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(-1846,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k23 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(1899,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k24 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(5121,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k25 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(6525,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k26 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(5446,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k27 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(2148,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k28 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(-2221,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k29 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(-6020,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k30 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(-7711,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k31 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(-6474,14),
        others => (others => '0'));
    type u0_m0_wo0_cma1_stype is array(0 to 31) of SIGNED(34 downto 0);
    signal u0_m0_wo0_cma1_s : u0_m0_wo0_cma1_stype;
    signal u0_m0_wo0_cma1_qq : STD_LOGIC_VECTOR (34 downto 0);
    signal u0_m0_wo0_cma1_q : STD_LOGIC_VECTOR (34 downto 0);
    type u0_m0_wo0_cma2_atype is array(0 to 25) of SIGNED(14 downto 0);
    signal u0_m0_wo0_cma2_a0 : u0_m0_wo0_cma2_atype;
    attribute preserve of u0_m0_wo0_cma2_a0 : signal is true;
    type u0_m0_wo0_cma2_btype is array(0 to 25) of SIGNED(14 downto 0);
    signal u0_m0_wo0_cma2_b0 : u0_m0_wo0_cma2_btype;
    attribute preserve of u0_m0_wo0_cma2_b0 : signal is true;
    type u0_m0_wo0_cma2_ctype is array(0 to 25) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_cma2_c0 : u0_m0_wo0_cma2_ctype;
    attribute preserve of u0_m0_wo0_cma2_c0 : signal is true;
    type u0_m0_wo0_cma2_dtype is array(0 to 25) of SIGNED(14 downto 0);
    signal u0_m0_wo0_cma2_d : u0_m0_wo0_cma2_dtype;
    attribute preserve of u0_m0_wo0_cma2_d : signal is true;
    type u0_m0_wo0_cma2_ltype is array(0 to 25) of SIGNED(15 downto 0);
    signal u0_m0_wo0_cma2_l : u0_m0_wo0_cma2_ltype;
    type u0_m0_wo0_cma2_rtype is array(0 to 25) of SIGNED(17 downto 0);
    signal u0_m0_wo0_cma2_r : u0_m0_wo0_cma2_rtype;
    type u0_m0_wo0_cma2_ptype is array(0 to 25) of SIGNED(33 downto 0);
    signal u0_m0_wo0_cma2_p : u0_m0_wo0_cma2_ptype;
    type u0_m0_wo0_cma2_utype is array(0 to 25) of SIGNED(38 downto 0);
    signal u0_m0_wo0_cma2_u : u0_m0_wo0_cma2_utype;
    type u0_m0_wo0_cma2_wtype is array(0 to 25) of SIGNED(38 downto 0);
    signal u0_m0_wo0_cma2_w : u0_m0_wo0_cma2_wtype;
    type u0_m0_wo0_cma2_xtype is array(0 to 25) of SIGNED(38 downto 0);
    signal u0_m0_wo0_cma2_x : u0_m0_wo0_cma2_xtype;
    type u0_m0_wo0_cma2_ytype is array(0 to 25) of SIGNED(38 downto 0);
    signal u0_m0_wo0_cma2_y : u0_m0_wo0_cma2_ytype;
    type u0_m0_wo0_cma2_romtype is array(0 to 7) of SIGNED(17 downto 0);
    signal u0_m0_wo0_cma2_k0 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(-2570,18),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k1 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(2674,18),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k2 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(7301,18),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k3 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(9425,18),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k4 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(7980,18),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k5 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(3196,18),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k6 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(-3360,18),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k7 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(-9274,18),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k8 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(-12118,18),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k9 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(-10398,18),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k10 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(-4228,18),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k11 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(4519,18),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k12 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(12709,18),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k13 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(16966,18),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k14 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(14919,18),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k15 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(6241,18),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k16 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(-6898,18),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k17 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(-20185,18),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k18 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(-28276,18),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k19 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(-26396,18),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k20 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(-11915,18),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k21 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(14563,18),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k22 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(49021,18),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k23 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(84830,18),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k24 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(114382,18),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k25 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(131071,18),
        others => (others => '0'));
    type u0_m0_wo0_cma2_stype is array(0 to 25) of SIGNED(38 downto 0);
    signal u0_m0_wo0_cma2_s : u0_m0_wo0_cma2_stype;
    signal u0_m0_wo0_cma2_qq : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_cma2_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_add0_0_a : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_add0_0_b : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_add0_0_o : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_add0_0_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_add1_0_a : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_add1_0_b : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_add1_0_o : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_add1_0_q : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_oseq_gated_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_delayr32_mem_ia : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_mem_iq : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_mem_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_delayr32_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi0_r0_delayr32_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi0_r0_delayr32_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi0_r0_delayr32_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_mem_top_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_delayr32_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi0_r0_delayr32_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_rdmux_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_cmp_a : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr116_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr148_q : STD_LOGIC_VECTOR (14 downto 0);
    signal out0_m0_wo0_lineup_select_delay_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_split32_in : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_wi0_r0_split32_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_wi0_r0_split32_c : STD_LOGIC_VECTOR (14 downto 0);
    signal out0_m0_wo0_assign_id3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_join32_q : STD_LOGIC_VECTOR (29 downto 0);

begin


    -- VCC(CONSTANT,1)@0
    VCC_q <= "1";

    -- xIn(PORTIN,2)@10

    -- u0_m0_wo0_wi0_r0_delayr32_notEnable(LOGICAL,433)@10
    u0_m0_wo0_wi0_r0_delayr32_notEnable_a <= STD_LOGIC_VECTOR(xIn_v);
    u0_m0_wo0_wi0_r0_delayr32_notEnable_q <= not (u0_m0_wo0_wi0_r0_delayr32_notEnable_a);

    -- u0_m0_wo0_wi0_r0_delayr32_nor(LOGICAL,434)@10
    u0_m0_wo0_wi0_r0_delayr32_nor_a <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr32_notEnable_q);
    u0_m0_wo0_wi0_r0_delayr32_nor_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr32_sticky_ena_q);
    u0_m0_wo0_wi0_r0_delayr32_nor_q <= not (u0_m0_wo0_wi0_r0_delayr32_nor_a or u0_m0_wo0_wi0_r0_delayr32_nor_b);

    -- u0_m0_wo0_wi0_r0_delayr32_mem_top(CONSTANT,430)
    u0_m0_wo0_wi0_r0_delayr32_mem_top_q <= "011110";

    -- u0_m0_wo0_wi0_r0_delayr32_cmp(LOGICAL,431)@10
    u0_m0_wo0_wi0_r0_delayr32_cmp_a <= u0_m0_wo0_wi0_r0_delayr32_mem_top_q;
    u0_m0_wo0_wi0_r0_delayr32_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_r0_delayr32_rdmux_q);
    u0_m0_wo0_wi0_r0_delayr32_cmp_q <= "1" WHEN u0_m0_wo0_wi0_r0_delayr32_cmp_a = u0_m0_wo0_wi0_r0_delayr32_cmp_b ELSE "0";

    -- u0_m0_wo0_wi0_r0_delayr32_cmpReg(REG,432)@10 + 1
    u0_m0_wo0_wi0_r0_delayr32_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_delayr32_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi0_r0_delayr32_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr32_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_delayr32_sticky_ena(REG,435)@10 + 1
    u0_m0_wo0_wi0_r0_delayr32_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_delayr32_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi0_r0_delayr32_nor_q = "1") THEN
                u0_m0_wo0_wi0_r0_delayr32_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr32_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_delayr32_enaAnd(LOGICAL,436)@10
    u0_m0_wo0_wi0_r0_delayr32_enaAnd_a <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr32_sticky_ena_q);
    u0_m0_wo0_wi0_r0_delayr32_enaAnd_b <= STD_LOGIC_VECTOR(xIn_v);
    u0_m0_wo0_wi0_r0_delayr32_enaAnd_q <= u0_m0_wo0_wi0_r0_delayr32_enaAnd_a and u0_m0_wo0_wi0_r0_delayr32_enaAnd_b;

    -- u0_m0_wo0_wi0_r0_delayr32_rdcnt(COUNTER,427)@10 + 1
    -- low=0, high=30, step=1, init=1
    u0_m0_wo0_wi0_r0_delayr32_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_delayr32_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi0_r0_delayr32_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi0_r0_delayr32_rdcnt_i = TO_UNSIGNED(29, 5)) THEN
                    u0_m0_wo0_wi0_r0_delayr32_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi0_r0_delayr32_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi0_r0_delayr32_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi0_r0_delayr32_rdcnt_i <= u0_m0_wo0_wi0_r0_delayr32_rdcnt_i - 30;
                ELSE
                    u0_m0_wo0_wi0_r0_delayr32_rdcnt_i <= u0_m0_wo0_wi0_r0_delayr32_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_delayr32_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_delayr32_rdcnt_i, 5)));

    -- u0_m0_wo0_wi0_r0_delayr32_rdmux(MUX,428)@10
    u0_m0_wo0_wi0_r0_delayr32_rdmux_s <= xIn_v;
    u0_m0_wo0_wi0_r0_delayr32_rdmux_combproc: PROCESS (u0_m0_wo0_wi0_r0_delayr32_rdmux_s, u0_m0_wo0_wi0_r0_delayr32_wraddr_q, u0_m0_wo0_wi0_r0_delayr32_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi0_r0_delayr32_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi0_r0_delayr32_rdmux_q <= u0_m0_wo0_wi0_r0_delayr32_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi0_r0_delayr32_rdmux_q <= u0_m0_wo0_wi0_r0_delayr32_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi0_r0_delayr32_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_join32(BITJOIN,45)@10
    u0_m0_wo0_wi0_r0_join32_q <= u0_m0_wo0_wi0_r0_split32_b & xIn_0;

    -- u0_m0_wo0_wi0_r0_delayr32_wraddr(REG,429)@10 + 1
    u0_m0_wo0_wi0_r0_delayr32_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_delayr32_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi0_r0_delayr32_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr32_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_delayr32_mem(DUALMEM,426)@10 + 2
    u0_m0_wo0_wi0_r0_delayr32_mem_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join32_q);
    u0_m0_wo0_wi0_r0_delayr32_mem_aa <= u0_m0_wo0_wi0_r0_delayr32_wraddr_q;
    u0_m0_wo0_wi0_r0_delayr32_mem_ab <= u0_m0_wo0_wi0_r0_delayr32_rdmux_q;
    u0_m0_wo0_wi0_r0_delayr32_mem_reset0 <= areset;
    u0_m0_wo0_wi0_r0_delayr32_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 30,
        widthad_a => 5,
        numwords_a => 31,
        width_b => 30,
        widthad_b => 5,
        numwords_b => 31,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => u0_m0_wo0_wi0_r0_delayr32_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi0_r0_delayr32_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi0_r0_delayr32_mem_aa,
        data_a => u0_m0_wo0_wi0_r0_delayr32_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi0_r0_delayr32_mem_ab,
        q_b => u0_m0_wo0_wi0_r0_delayr32_mem_iq
    );
    u0_m0_wo0_wi0_r0_delayr32_mem_q <= u0_m0_wo0_wi0_r0_delayr32_mem_iq(29 downto 0);

    -- u0_m0_wo0_wi0_r0_split32(BITSELECT,46)@10
    u0_m0_wo0_wi0_r0_split32_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr32_mem_q);
    u0_m0_wo0_wi0_r0_split32_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split32_in(14 downto 0));
    u0_m0_wo0_wi0_r0_split32_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split32_in(29 downto 15));

    -- u0_m0_wo0_wi0_r0_delayr90(DELAY,104)@10
    u0_m0_wo0_wi0_r0_delayr90 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => u0_m0_wo0_wi0_r0_delayr90_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr90_q_11(DELAY,415)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr90_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr90_q, xout => d_u0_m0_wo0_wi0_r0_delayr90_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr89_q_11(DELAY,414)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr89_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => d_u0_m0_wo0_wi0_r0_delayr89_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr91(DELAY,105)@10
    u0_m0_wo0_wi0_r0_delayr91 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr90_q, xout => u0_m0_wo0_wi0_r0_delayr91_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr91_q_11(DELAY,416)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr91_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr91_q, xout => d_u0_m0_wo0_wi0_r0_delayr91_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr88_q_11(DELAY,413)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr88_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => d_u0_m0_wo0_wi0_r0_delayr88_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr92(DELAY,106)@10
    u0_m0_wo0_wi0_r0_delayr92 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr91_q, xout => u0_m0_wo0_wi0_r0_delayr92_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr92_q_11(DELAY,417)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr92_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr92_q, xout => d_u0_m0_wo0_wi0_r0_delayr92_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr87_q_11(DELAY,412)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr87_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => d_u0_m0_wo0_wi0_r0_delayr87_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr93(DELAY,107)@10
    u0_m0_wo0_wi0_r0_delayr93 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr92_q, xout => u0_m0_wo0_wi0_r0_delayr93_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr93_q_11(DELAY,418)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr93_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr93_q, xout => d_u0_m0_wo0_wi0_r0_delayr93_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr86_q_11(DELAY,411)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr86_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => d_u0_m0_wo0_wi0_r0_delayr86_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr94(DELAY,108)@10
    u0_m0_wo0_wi0_r0_delayr94 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr93_q, xout => u0_m0_wo0_wi0_r0_delayr94_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr94_q_11(DELAY,419)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr94_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr94_q, xout => d_u0_m0_wo0_wi0_r0_delayr94_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr85_q_11(DELAY,410)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr85_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => d_u0_m0_wo0_wi0_r0_delayr85_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr95(DELAY,109)@10
    u0_m0_wo0_wi0_r0_delayr95 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr94_q, xout => u0_m0_wo0_wi0_r0_delayr95_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr95_q_11(DELAY,420)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr95_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr95_q, xout => d_u0_m0_wo0_wi0_r0_delayr95_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr84_q_11(DELAY,409)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr84_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => d_u0_m0_wo0_wi0_r0_delayr84_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr96(DELAY,110)@10
    u0_m0_wo0_wi0_r0_delayr96 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr95_q, xout => u0_m0_wo0_wi0_r0_delayr96_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr96_q_11(DELAY,421)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr96_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr96_q, xout => d_u0_m0_wo0_wi0_r0_delayr96_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr83_q_11(DELAY,408)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr83_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => d_u0_m0_wo0_wi0_r0_delayr83_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr97(DELAY,111)@10
    u0_m0_wo0_wi0_r0_delayr97 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr96_q, xout => u0_m0_wo0_wi0_r0_delayr97_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr97_q_11(DELAY,422)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr97_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr97_q, xout => d_u0_m0_wo0_wi0_r0_delayr97_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr82_q_11(DELAY,407)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr82_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => d_u0_m0_wo0_wi0_r0_delayr82_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr98(DELAY,112)@10
    u0_m0_wo0_wi0_r0_delayr98 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr97_q, xout => u0_m0_wo0_wi0_r0_delayr98_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr98_q_11(DELAY,423)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr98_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr98_q, xout => d_u0_m0_wo0_wi0_r0_delayr98_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr81_q_11(DELAY,406)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr81_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => d_u0_m0_wo0_wi0_r0_delayr81_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr99(DELAY,113)@10
    u0_m0_wo0_wi0_r0_delayr99 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr98_q, xout => u0_m0_wo0_wi0_r0_delayr99_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr99_q_11(DELAY,424)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr99_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr99_q, xout => d_u0_m0_wo0_wi0_r0_delayr99_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr80_q_11(DELAY,405)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr80_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => d_u0_m0_wo0_wi0_r0_delayr80_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr100(DELAY,114)@10
    u0_m0_wo0_wi0_r0_delayr100 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr99_q, xout => u0_m0_wo0_wi0_r0_delayr100_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr100_q_11(DELAY,425)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr100_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr100_q, xout => d_u0_m0_wo0_wi0_r0_delayr100_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr79_q_11(DELAY,404)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr79_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => d_u0_m0_wo0_wi0_r0_delayr79_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr78_q_11(DELAY,403)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr78_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => d_u0_m0_wo0_wi0_r0_delayr78_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr77_q_11(DELAY,402)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr77_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => d_u0_m0_wo0_wi0_r0_delayr77_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr76_q_11(DELAY,401)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr76_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => d_u0_m0_wo0_wi0_r0_delayr76_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr75_q_11(DELAY,400)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr75_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => d_u0_m0_wo0_wi0_r0_delayr75_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr74_q_11(DELAY,399)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr74_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => d_u0_m0_wo0_wi0_r0_delayr74_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr73_q_11(DELAY,398)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr73_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => d_u0_m0_wo0_wi0_r0_delayr73_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr72_q_11(DELAY,397)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr72_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => d_u0_m0_wo0_wi0_r0_delayr72_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr71_q_11(DELAY,396)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr71_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => d_u0_m0_wo0_wi0_r0_delayr71_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr70_q_11(DELAY,395)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr70_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => d_u0_m0_wo0_wi0_r0_delayr70_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr69_q_11(DELAY,394)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr69_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => d_u0_m0_wo0_wi0_r0_delayr69_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr68_q_11(DELAY,393)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr68_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => d_u0_m0_wo0_wi0_r0_delayr68_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr67_q_11(DELAY,392)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr67_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => d_u0_m0_wo0_wi0_r0_delayr67_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr66_q_11(DELAY,391)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr66_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => d_u0_m0_wo0_wi0_r0_delayr66_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr65_q_11(DELAY,390)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr65_q_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => d_u0_m0_wo0_wi0_r0_delayr65_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_split32_c_11(DELAY,389)@10 + 1
    d_u0_m0_wo0_wi0_r0_split32_c_11 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split32_c, xout => d_u0_m0_wo0_wi0_r0_split32_c_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_12(DELAY,387)@11 + 1
    d_u0_m0_wo0_compute_q_12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_11_q, xout => d_u0_m0_wo0_compute_q_12_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_11(DELAY,386)@10 + 1
    d_u0_m0_wo0_compute_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_v, xout => d_u0_m0_wo0_compute_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cma2(CHAINMULTADD,376)@11 + 2
    u0_m0_wo0_cma2_l(0) <= RESIZE(u0_m0_wo0_cma2_a0(0),16) + RESIZE(u0_m0_wo0_cma2_b0(0),16);
    u0_m0_wo0_cma2_l(1) <= RESIZE(u0_m0_wo0_cma2_a0(1),16) + RESIZE(u0_m0_wo0_cma2_b0(1),16);
    u0_m0_wo0_cma2_l(2) <= RESIZE(u0_m0_wo0_cma2_a0(2),16) + RESIZE(u0_m0_wo0_cma2_b0(2),16);
    u0_m0_wo0_cma2_l(3) <= RESIZE(u0_m0_wo0_cma2_a0(3),16) + RESIZE(u0_m0_wo0_cma2_b0(3),16);
    u0_m0_wo0_cma2_l(4) <= RESIZE(u0_m0_wo0_cma2_a0(4),16) + RESIZE(u0_m0_wo0_cma2_b0(4),16);
    u0_m0_wo0_cma2_l(5) <= RESIZE(u0_m0_wo0_cma2_a0(5),16) + RESIZE(u0_m0_wo0_cma2_b0(5),16);
    u0_m0_wo0_cma2_l(6) <= RESIZE(u0_m0_wo0_cma2_a0(6),16) + RESIZE(u0_m0_wo0_cma2_b0(6),16);
    u0_m0_wo0_cma2_l(7) <= RESIZE(u0_m0_wo0_cma2_a0(7),16) + RESIZE(u0_m0_wo0_cma2_b0(7),16);
    u0_m0_wo0_cma2_l(8) <= RESIZE(u0_m0_wo0_cma2_a0(8),16) + RESIZE(u0_m0_wo0_cma2_b0(8),16);
    u0_m0_wo0_cma2_l(9) <= RESIZE(u0_m0_wo0_cma2_a0(9),16) + RESIZE(u0_m0_wo0_cma2_b0(9),16);
    u0_m0_wo0_cma2_l(10) <= RESIZE(u0_m0_wo0_cma2_a0(10),16) + RESIZE(u0_m0_wo0_cma2_b0(10),16);
    u0_m0_wo0_cma2_l(11) <= RESIZE(u0_m0_wo0_cma2_a0(11),16) + RESIZE(u0_m0_wo0_cma2_b0(11),16);
    u0_m0_wo0_cma2_l(12) <= RESIZE(u0_m0_wo0_cma2_a0(12),16) + RESIZE(u0_m0_wo0_cma2_b0(12),16);
    u0_m0_wo0_cma2_l(13) <= RESIZE(u0_m0_wo0_cma2_a0(13),16) + RESIZE(u0_m0_wo0_cma2_b0(13),16);
    u0_m0_wo0_cma2_l(14) <= RESIZE(u0_m0_wo0_cma2_a0(14),16) + RESIZE(u0_m0_wo0_cma2_b0(14),16);
    u0_m0_wo0_cma2_l(15) <= RESIZE(u0_m0_wo0_cma2_a0(15),16) + RESIZE(u0_m0_wo0_cma2_b0(15),16);
    u0_m0_wo0_cma2_l(16) <= RESIZE(u0_m0_wo0_cma2_a0(16),16) + RESIZE(u0_m0_wo0_cma2_b0(16),16);
    u0_m0_wo0_cma2_l(17) <= RESIZE(u0_m0_wo0_cma2_a0(17),16) + RESIZE(u0_m0_wo0_cma2_b0(17),16);
    u0_m0_wo0_cma2_l(18) <= RESIZE(u0_m0_wo0_cma2_a0(18),16) + RESIZE(u0_m0_wo0_cma2_b0(18),16);
    u0_m0_wo0_cma2_l(19) <= RESIZE(u0_m0_wo0_cma2_a0(19),16) + RESIZE(u0_m0_wo0_cma2_b0(19),16);
    u0_m0_wo0_cma2_l(20) <= RESIZE(u0_m0_wo0_cma2_a0(20),16) + RESIZE(u0_m0_wo0_cma2_b0(20),16);
    u0_m0_wo0_cma2_l(21) <= RESIZE(u0_m0_wo0_cma2_a0(21),16) + RESIZE(u0_m0_wo0_cma2_b0(21),16);
    u0_m0_wo0_cma2_l(22) <= RESIZE(u0_m0_wo0_cma2_a0(22),16) + RESIZE(u0_m0_wo0_cma2_b0(22),16);
    u0_m0_wo0_cma2_l(23) <= RESIZE(u0_m0_wo0_cma2_a0(23),16) + RESIZE(u0_m0_wo0_cma2_b0(23),16);
    u0_m0_wo0_cma2_l(24) <= RESIZE(u0_m0_wo0_cma2_a0(24),16) + RESIZE(u0_m0_wo0_cma2_b0(24),16);
    u0_m0_wo0_cma2_l(25) <= RESIZE(u0_m0_wo0_cma2_a0(25),16) + RESIZE(u0_m0_wo0_cma2_b0(25),16);
    -- altera synthesis_off
    u0_m0_wo0_cma2_k0 <= (
        0 => TO_SIGNED(-2570,18),
        others => (others => '0'));
    u0_m0_wo0_cma2_k1 <= (
        0 => TO_SIGNED(2674,18),
        others => (others => '0'));
    u0_m0_wo0_cma2_k2 <= (
        0 => TO_SIGNED(7301,18),
        others => (others => '0'));
    u0_m0_wo0_cma2_k3 <= (
        0 => TO_SIGNED(9425,18),
        others => (others => '0'));
    u0_m0_wo0_cma2_k4 <= (
        0 => TO_SIGNED(7980,18),
        others => (others => '0'));
    u0_m0_wo0_cma2_k5 <= (
        0 => TO_SIGNED(3196,18),
        others => (others => '0'));
    u0_m0_wo0_cma2_k6 <= (
        0 => TO_SIGNED(-3360,18),
        others => (others => '0'));
    u0_m0_wo0_cma2_k7 <= (
        0 => TO_SIGNED(-9274,18),
        others => (others => '0'));
    u0_m0_wo0_cma2_k8 <= (
        0 => TO_SIGNED(-12118,18),
        others => (others => '0'));
    u0_m0_wo0_cma2_k9 <= (
        0 => TO_SIGNED(-10398,18),
        others => (others => '0'));
    u0_m0_wo0_cma2_k10 <= (
        0 => TO_SIGNED(-4228,18),
        others => (others => '0'));
    u0_m0_wo0_cma2_k11 <= (
        0 => TO_SIGNED(4519,18),
        others => (others => '0'));
    u0_m0_wo0_cma2_k12 <= (
        0 => TO_SIGNED(12709,18),
        others => (others => '0'));
    u0_m0_wo0_cma2_k13 <= (
        0 => TO_SIGNED(16966,18),
        others => (others => '0'));
    u0_m0_wo0_cma2_k14 <= (
        0 => TO_SIGNED(14919,18),
        others => (others => '0'));
    u0_m0_wo0_cma2_k15 <= (
        0 => TO_SIGNED(6241,18),
        others => (others => '0'));
    u0_m0_wo0_cma2_k16 <= (
        0 => TO_SIGNED(-6898,18),
        others => (others => '0'));
    u0_m0_wo0_cma2_k17 <= (
        0 => TO_SIGNED(-20185,18),
        others => (others => '0'));
    u0_m0_wo0_cma2_k18 <= (
        0 => TO_SIGNED(-28276,18),
        others => (others => '0'));
    u0_m0_wo0_cma2_k19 <= (
        0 => TO_SIGNED(-26396,18),
        others => (others => '0'));
    u0_m0_wo0_cma2_k20 <= (
        0 => TO_SIGNED(-11915,18),
        others => (others => '0'));
    u0_m0_wo0_cma2_k21 <= (
        0 => TO_SIGNED(14563,18),
        others => (others => '0'));
    u0_m0_wo0_cma2_k22 <= (
        0 => TO_SIGNED(49021,18),
        others => (others => '0'));
    u0_m0_wo0_cma2_k23 <= (
        0 => TO_SIGNED(84830,18),
        others => (others => '0'));
    u0_m0_wo0_cma2_k24 <= (
        0 => TO_SIGNED(114382,18),
        others => (others => '0'));
    u0_m0_wo0_cma2_k25 <= (
        0 => TO_SIGNED(131071,18),
        others => (others => '0'));
    -- altera synthesis_on
    u0_m0_wo0_cma2_r(0) <= u0_m0_wo0_cma2_k0(TO_INTEGER(u0_m0_wo0_cma2_c0(0)));
    u0_m0_wo0_cma2_r(1) <= u0_m0_wo0_cma2_k1(TO_INTEGER(u0_m0_wo0_cma2_c0(1)));
    u0_m0_wo0_cma2_r(2) <= u0_m0_wo0_cma2_k2(TO_INTEGER(u0_m0_wo0_cma2_c0(2)));
    u0_m0_wo0_cma2_r(3) <= u0_m0_wo0_cma2_k3(TO_INTEGER(u0_m0_wo0_cma2_c0(3)));
    u0_m0_wo0_cma2_r(4) <= u0_m0_wo0_cma2_k4(TO_INTEGER(u0_m0_wo0_cma2_c0(4)));
    u0_m0_wo0_cma2_r(5) <= u0_m0_wo0_cma2_k5(TO_INTEGER(u0_m0_wo0_cma2_c0(5)));
    u0_m0_wo0_cma2_r(6) <= u0_m0_wo0_cma2_k6(TO_INTEGER(u0_m0_wo0_cma2_c0(6)));
    u0_m0_wo0_cma2_r(7) <= u0_m0_wo0_cma2_k7(TO_INTEGER(u0_m0_wo0_cma2_c0(7)));
    u0_m0_wo0_cma2_r(8) <= u0_m0_wo0_cma2_k8(TO_INTEGER(u0_m0_wo0_cma2_c0(8)));
    u0_m0_wo0_cma2_r(9) <= u0_m0_wo0_cma2_k9(TO_INTEGER(u0_m0_wo0_cma2_c0(9)));
    u0_m0_wo0_cma2_r(10) <= u0_m0_wo0_cma2_k10(TO_INTEGER(u0_m0_wo0_cma2_c0(10)));
    u0_m0_wo0_cma2_r(11) <= u0_m0_wo0_cma2_k11(TO_INTEGER(u0_m0_wo0_cma2_c0(11)));
    u0_m0_wo0_cma2_r(12) <= u0_m0_wo0_cma2_k12(TO_INTEGER(u0_m0_wo0_cma2_c0(12)));
    u0_m0_wo0_cma2_r(13) <= u0_m0_wo0_cma2_k13(TO_INTEGER(u0_m0_wo0_cma2_c0(13)));
    u0_m0_wo0_cma2_r(14) <= u0_m0_wo0_cma2_k14(TO_INTEGER(u0_m0_wo0_cma2_c0(14)));
    u0_m0_wo0_cma2_r(15) <= u0_m0_wo0_cma2_k15(TO_INTEGER(u0_m0_wo0_cma2_c0(15)));
    u0_m0_wo0_cma2_r(16) <= u0_m0_wo0_cma2_k16(TO_INTEGER(u0_m0_wo0_cma2_c0(16)));
    u0_m0_wo0_cma2_r(17) <= u0_m0_wo0_cma2_k17(TO_INTEGER(u0_m0_wo0_cma2_c0(17)));
    u0_m0_wo0_cma2_r(18) <= u0_m0_wo0_cma2_k18(TO_INTEGER(u0_m0_wo0_cma2_c0(18)));
    u0_m0_wo0_cma2_r(19) <= u0_m0_wo0_cma2_k19(TO_INTEGER(u0_m0_wo0_cma2_c0(19)));
    u0_m0_wo0_cma2_r(20) <= u0_m0_wo0_cma2_k20(TO_INTEGER(u0_m0_wo0_cma2_c0(20)));
    u0_m0_wo0_cma2_r(21) <= u0_m0_wo0_cma2_k21(TO_INTEGER(u0_m0_wo0_cma2_c0(21)));
    u0_m0_wo0_cma2_r(22) <= u0_m0_wo0_cma2_k22(TO_INTEGER(u0_m0_wo0_cma2_c0(22)));
    u0_m0_wo0_cma2_r(23) <= u0_m0_wo0_cma2_k23(TO_INTEGER(u0_m0_wo0_cma2_c0(23)));
    u0_m0_wo0_cma2_r(24) <= u0_m0_wo0_cma2_k24(TO_INTEGER(u0_m0_wo0_cma2_c0(24)));
    u0_m0_wo0_cma2_r(25) <= u0_m0_wo0_cma2_k25(TO_INTEGER(u0_m0_wo0_cma2_c0(25)));
    u0_m0_wo0_cma2_p(0) <= u0_m0_wo0_cma2_l(0) * u0_m0_wo0_cma2_r(0);
    u0_m0_wo0_cma2_p(1) <= u0_m0_wo0_cma2_l(1) * u0_m0_wo0_cma2_r(1);
    u0_m0_wo0_cma2_p(2) <= u0_m0_wo0_cma2_l(2) * u0_m0_wo0_cma2_r(2);
    u0_m0_wo0_cma2_p(3) <= u0_m0_wo0_cma2_l(3) * u0_m0_wo0_cma2_r(3);
    u0_m0_wo0_cma2_p(4) <= u0_m0_wo0_cma2_l(4) * u0_m0_wo0_cma2_r(4);
    u0_m0_wo0_cma2_p(5) <= u0_m0_wo0_cma2_l(5) * u0_m0_wo0_cma2_r(5);
    u0_m0_wo0_cma2_p(6) <= u0_m0_wo0_cma2_l(6) * u0_m0_wo0_cma2_r(6);
    u0_m0_wo0_cma2_p(7) <= u0_m0_wo0_cma2_l(7) * u0_m0_wo0_cma2_r(7);
    u0_m0_wo0_cma2_p(8) <= u0_m0_wo0_cma2_l(8) * u0_m0_wo0_cma2_r(8);
    u0_m0_wo0_cma2_p(9) <= u0_m0_wo0_cma2_l(9) * u0_m0_wo0_cma2_r(9);
    u0_m0_wo0_cma2_p(10) <= u0_m0_wo0_cma2_l(10) * u0_m0_wo0_cma2_r(10);
    u0_m0_wo0_cma2_p(11) <= u0_m0_wo0_cma2_l(11) * u0_m0_wo0_cma2_r(11);
    u0_m0_wo0_cma2_p(12) <= u0_m0_wo0_cma2_l(12) * u0_m0_wo0_cma2_r(12);
    u0_m0_wo0_cma2_p(13) <= u0_m0_wo0_cma2_l(13) * u0_m0_wo0_cma2_r(13);
    u0_m0_wo0_cma2_p(14) <= u0_m0_wo0_cma2_l(14) * u0_m0_wo0_cma2_r(14);
    u0_m0_wo0_cma2_p(15) <= u0_m0_wo0_cma2_l(15) * u0_m0_wo0_cma2_r(15);
    u0_m0_wo0_cma2_p(16) <= u0_m0_wo0_cma2_l(16) * u0_m0_wo0_cma2_r(16);
    u0_m0_wo0_cma2_p(17) <= u0_m0_wo0_cma2_l(17) * u0_m0_wo0_cma2_r(17);
    u0_m0_wo0_cma2_p(18) <= u0_m0_wo0_cma2_l(18) * u0_m0_wo0_cma2_r(18);
    u0_m0_wo0_cma2_p(19) <= u0_m0_wo0_cma2_l(19) * u0_m0_wo0_cma2_r(19);
    u0_m0_wo0_cma2_p(20) <= u0_m0_wo0_cma2_l(20) * u0_m0_wo0_cma2_r(20);
    u0_m0_wo0_cma2_p(21) <= u0_m0_wo0_cma2_l(21) * u0_m0_wo0_cma2_r(21);
    u0_m0_wo0_cma2_p(22) <= u0_m0_wo0_cma2_l(22) * u0_m0_wo0_cma2_r(22);
    u0_m0_wo0_cma2_p(23) <= u0_m0_wo0_cma2_l(23) * u0_m0_wo0_cma2_r(23);
    u0_m0_wo0_cma2_p(24) <= u0_m0_wo0_cma2_l(24) * u0_m0_wo0_cma2_r(24);
    u0_m0_wo0_cma2_p(25) <= u0_m0_wo0_cma2_l(25) * u0_m0_wo0_cma2_r(25);
    u0_m0_wo0_cma2_u(0) <= RESIZE(u0_m0_wo0_cma2_p(0),39);
    u0_m0_wo0_cma2_u(1) <= RESIZE(u0_m0_wo0_cma2_p(1),39);
    u0_m0_wo0_cma2_u(2) <= RESIZE(u0_m0_wo0_cma2_p(2),39);
    u0_m0_wo0_cma2_u(3) <= RESIZE(u0_m0_wo0_cma2_p(3),39);
    u0_m0_wo0_cma2_u(4) <= RESIZE(u0_m0_wo0_cma2_p(4),39);
    u0_m0_wo0_cma2_u(5) <= RESIZE(u0_m0_wo0_cma2_p(5),39);
    u0_m0_wo0_cma2_u(6) <= RESIZE(u0_m0_wo0_cma2_p(6),39);
    u0_m0_wo0_cma2_u(7) <= RESIZE(u0_m0_wo0_cma2_p(7),39);
    u0_m0_wo0_cma2_u(8) <= RESIZE(u0_m0_wo0_cma2_p(8),39);
    u0_m0_wo0_cma2_u(9) <= RESIZE(u0_m0_wo0_cma2_p(9),39);
    u0_m0_wo0_cma2_u(10) <= RESIZE(u0_m0_wo0_cma2_p(10),39);
    u0_m0_wo0_cma2_u(11) <= RESIZE(u0_m0_wo0_cma2_p(11),39);
    u0_m0_wo0_cma2_u(12) <= RESIZE(u0_m0_wo0_cma2_p(12),39);
    u0_m0_wo0_cma2_u(13) <= RESIZE(u0_m0_wo0_cma2_p(13),39);
    u0_m0_wo0_cma2_u(14) <= RESIZE(u0_m0_wo0_cma2_p(14),39);
    u0_m0_wo0_cma2_u(15) <= RESIZE(u0_m0_wo0_cma2_p(15),39);
    u0_m0_wo0_cma2_u(16) <= RESIZE(u0_m0_wo0_cma2_p(16),39);
    u0_m0_wo0_cma2_u(17) <= RESIZE(u0_m0_wo0_cma2_p(17),39);
    u0_m0_wo0_cma2_u(18) <= RESIZE(u0_m0_wo0_cma2_p(18),39);
    u0_m0_wo0_cma2_u(19) <= RESIZE(u0_m0_wo0_cma2_p(19),39);
    u0_m0_wo0_cma2_u(20) <= RESIZE(u0_m0_wo0_cma2_p(20),39);
    u0_m0_wo0_cma2_u(21) <= RESIZE(u0_m0_wo0_cma2_p(21),39);
    u0_m0_wo0_cma2_u(22) <= RESIZE(u0_m0_wo0_cma2_p(22),39);
    u0_m0_wo0_cma2_u(23) <= RESIZE(u0_m0_wo0_cma2_p(23),39);
    u0_m0_wo0_cma2_u(24) <= RESIZE(u0_m0_wo0_cma2_p(24),39);
    u0_m0_wo0_cma2_u(25) <= RESIZE(u0_m0_wo0_cma2_p(25),39);
    u0_m0_wo0_cma2_w(0) <= u0_m0_wo0_cma2_u(0);
    u0_m0_wo0_cma2_w(1) <= u0_m0_wo0_cma2_u(1);
    u0_m0_wo0_cma2_w(2) <= u0_m0_wo0_cma2_u(2);
    u0_m0_wo0_cma2_w(3) <= u0_m0_wo0_cma2_u(3);
    u0_m0_wo0_cma2_w(4) <= u0_m0_wo0_cma2_u(4);
    u0_m0_wo0_cma2_w(5) <= u0_m0_wo0_cma2_u(5);
    u0_m0_wo0_cma2_w(6) <= u0_m0_wo0_cma2_u(6);
    u0_m0_wo0_cma2_w(7) <= u0_m0_wo0_cma2_u(7);
    u0_m0_wo0_cma2_w(8) <= u0_m0_wo0_cma2_u(8);
    u0_m0_wo0_cma2_w(9) <= u0_m0_wo0_cma2_u(9);
    u0_m0_wo0_cma2_w(10) <= u0_m0_wo0_cma2_u(10);
    u0_m0_wo0_cma2_w(11) <= u0_m0_wo0_cma2_u(11);
    u0_m0_wo0_cma2_w(12) <= u0_m0_wo0_cma2_u(12);
    u0_m0_wo0_cma2_w(13) <= u0_m0_wo0_cma2_u(13);
    u0_m0_wo0_cma2_w(14) <= u0_m0_wo0_cma2_u(14);
    u0_m0_wo0_cma2_w(15) <= u0_m0_wo0_cma2_u(15);
    u0_m0_wo0_cma2_w(16) <= u0_m0_wo0_cma2_u(16);
    u0_m0_wo0_cma2_w(17) <= u0_m0_wo0_cma2_u(17);
    u0_m0_wo0_cma2_w(18) <= u0_m0_wo0_cma2_u(18);
    u0_m0_wo0_cma2_w(19) <= u0_m0_wo0_cma2_u(19);
    u0_m0_wo0_cma2_w(20) <= u0_m0_wo0_cma2_u(20);
    u0_m0_wo0_cma2_w(21) <= u0_m0_wo0_cma2_u(21);
    u0_m0_wo0_cma2_w(22) <= u0_m0_wo0_cma2_u(22);
    u0_m0_wo0_cma2_w(23) <= u0_m0_wo0_cma2_u(23);
    u0_m0_wo0_cma2_w(24) <= u0_m0_wo0_cma2_u(24);
    u0_m0_wo0_cma2_w(25) <= u0_m0_wo0_cma2_u(25);
    u0_m0_wo0_cma2_x(0) <= u0_m0_wo0_cma2_w(0);
    u0_m0_wo0_cma2_x(1) <= u0_m0_wo0_cma2_w(1);
    u0_m0_wo0_cma2_x(2) <= u0_m0_wo0_cma2_w(2);
    u0_m0_wo0_cma2_x(3) <= u0_m0_wo0_cma2_w(3);
    u0_m0_wo0_cma2_x(4) <= u0_m0_wo0_cma2_w(4);
    u0_m0_wo0_cma2_x(5) <= u0_m0_wo0_cma2_w(5);
    u0_m0_wo0_cma2_x(6) <= u0_m0_wo0_cma2_w(6);
    u0_m0_wo0_cma2_x(7) <= u0_m0_wo0_cma2_w(7);
    u0_m0_wo0_cma2_x(8) <= u0_m0_wo0_cma2_w(8);
    u0_m0_wo0_cma2_x(9) <= u0_m0_wo0_cma2_w(9);
    u0_m0_wo0_cma2_x(10) <= u0_m0_wo0_cma2_w(10);
    u0_m0_wo0_cma2_x(11) <= u0_m0_wo0_cma2_w(11);
    u0_m0_wo0_cma2_x(12) <= u0_m0_wo0_cma2_w(12);
    u0_m0_wo0_cma2_x(13) <= u0_m0_wo0_cma2_w(13);
    u0_m0_wo0_cma2_x(14) <= u0_m0_wo0_cma2_w(14);
    u0_m0_wo0_cma2_x(15) <= u0_m0_wo0_cma2_w(15);
    u0_m0_wo0_cma2_x(16) <= u0_m0_wo0_cma2_w(16);
    u0_m0_wo0_cma2_x(17) <= u0_m0_wo0_cma2_w(17);
    u0_m0_wo0_cma2_x(18) <= u0_m0_wo0_cma2_w(18);
    u0_m0_wo0_cma2_x(19) <= u0_m0_wo0_cma2_w(19);
    u0_m0_wo0_cma2_x(20) <= u0_m0_wo0_cma2_w(20);
    u0_m0_wo0_cma2_x(21) <= u0_m0_wo0_cma2_w(21);
    u0_m0_wo0_cma2_x(22) <= u0_m0_wo0_cma2_w(22);
    u0_m0_wo0_cma2_x(23) <= u0_m0_wo0_cma2_w(23);
    u0_m0_wo0_cma2_x(24) <= u0_m0_wo0_cma2_w(24);
    u0_m0_wo0_cma2_x(25) <= u0_m0_wo0_cma2_w(25);
    u0_m0_wo0_cma2_y(0) <= u0_m0_wo0_cma2_s(1) + u0_m0_wo0_cma2_x(0);
    u0_m0_wo0_cma2_y(1) <= u0_m0_wo0_cma2_s(2) + u0_m0_wo0_cma2_x(1);
    u0_m0_wo0_cma2_y(2) <= u0_m0_wo0_cma2_s(3) + u0_m0_wo0_cma2_x(2);
    u0_m0_wo0_cma2_y(3) <= u0_m0_wo0_cma2_s(4) + u0_m0_wo0_cma2_x(3);
    u0_m0_wo0_cma2_y(4) <= u0_m0_wo0_cma2_s(5) + u0_m0_wo0_cma2_x(4);
    u0_m0_wo0_cma2_y(5) <= u0_m0_wo0_cma2_s(6) + u0_m0_wo0_cma2_x(5);
    u0_m0_wo0_cma2_y(6) <= u0_m0_wo0_cma2_s(7) + u0_m0_wo0_cma2_x(6);
    u0_m0_wo0_cma2_y(7) <= u0_m0_wo0_cma2_s(8) + u0_m0_wo0_cma2_x(7);
    u0_m0_wo0_cma2_y(8) <= u0_m0_wo0_cma2_s(9) + u0_m0_wo0_cma2_x(8);
    u0_m0_wo0_cma2_y(9) <= u0_m0_wo0_cma2_s(10) + u0_m0_wo0_cma2_x(9);
    u0_m0_wo0_cma2_y(10) <= u0_m0_wo0_cma2_s(11) + u0_m0_wo0_cma2_x(10);
    u0_m0_wo0_cma2_y(11) <= u0_m0_wo0_cma2_s(12) + u0_m0_wo0_cma2_x(11);
    u0_m0_wo0_cma2_y(12) <= u0_m0_wo0_cma2_s(13) + u0_m0_wo0_cma2_x(12);
    u0_m0_wo0_cma2_y(13) <= u0_m0_wo0_cma2_s(14) + u0_m0_wo0_cma2_x(13);
    u0_m0_wo0_cma2_y(14) <= u0_m0_wo0_cma2_s(15) + u0_m0_wo0_cma2_x(14);
    u0_m0_wo0_cma2_y(15) <= u0_m0_wo0_cma2_s(16) + u0_m0_wo0_cma2_x(15);
    u0_m0_wo0_cma2_y(16) <= u0_m0_wo0_cma2_s(17) + u0_m0_wo0_cma2_x(16);
    u0_m0_wo0_cma2_y(17) <= u0_m0_wo0_cma2_s(18) + u0_m0_wo0_cma2_x(17);
    u0_m0_wo0_cma2_y(18) <= u0_m0_wo0_cma2_s(19) + u0_m0_wo0_cma2_x(18);
    u0_m0_wo0_cma2_y(19) <= u0_m0_wo0_cma2_s(20) + u0_m0_wo0_cma2_x(19);
    u0_m0_wo0_cma2_y(20) <= u0_m0_wo0_cma2_s(21) + u0_m0_wo0_cma2_x(20);
    u0_m0_wo0_cma2_y(21) <= u0_m0_wo0_cma2_s(22) + u0_m0_wo0_cma2_x(21);
    u0_m0_wo0_cma2_y(22) <= u0_m0_wo0_cma2_s(23) + u0_m0_wo0_cma2_x(22);
    u0_m0_wo0_cma2_y(23) <= u0_m0_wo0_cma2_s(24) + u0_m0_wo0_cma2_x(23);
    u0_m0_wo0_cma2_y(24) <= u0_m0_wo0_cma2_s(25) + u0_m0_wo0_cma2_x(24);
    u0_m0_wo0_cma2_y(25) <= u0_m0_wo0_cma2_x(25);
    u0_m0_wo0_cma2_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cma2_a0 <= (others => (others => '0'));
            u0_m0_wo0_cma2_b0 <= (others => (others => '0'));
            u0_m0_wo0_cma2_c0 <= (others => (others => '0'));
            u0_m0_wo0_cma2_d <= (others => (others => '0'));
            u0_m0_wo0_cma2_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_11_q = "1") THEN
                u0_m0_wo0_cma2_a0(0) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_split32_c_11_q),15);
                u0_m0_wo0_cma2_a0(1) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr65_q_11_q),15);
                u0_m0_wo0_cma2_a0(2) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr66_q_11_q),15);
                u0_m0_wo0_cma2_a0(3) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr67_q_11_q),15);
                u0_m0_wo0_cma2_a0(4) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr68_q_11_q),15);
                u0_m0_wo0_cma2_a0(5) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr69_q_11_q),15);
                u0_m0_wo0_cma2_a0(6) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr70_q_11_q),15);
                u0_m0_wo0_cma2_a0(7) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr71_q_11_q),15);
                u0_m0_wo0_cma2_a0(8) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr72_q_11_q),15);
                u0_m0_wo0_cma2_a0(9) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr73_q_11_q),15);
                u0_m0_wo0_cma2_a0(10) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr74_q_11_q),15);
                u0_m0_wo0_cma2_a0(11) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr75_q_11_q),15);
                u0_m0_wo0_cma2_a0(12) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr76_q_11_q),15);
                u0_m0_wo0_cma2_a0(13) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr77_q_11_q),15);
                u0_m0_wo0_cma2_a0(14) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr78_q_11_q),15);
                u0_m0_wo0_cma2_a0(15) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr79_q_11_q),15);
                u0_m0_wo0_cma2_a0(16) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr80_q_11_q),15);
                u0_m0_wo0_cma2_a0(17) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr81_q_11_q),15);
                u0_m0_wo0_cma2_a0(18) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr82_q_11_q),15);
                u0_m0_wo0_cma2_a0(19) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr83_q_11_q),15);
                u0_m0_wo0_cma2_a0(20) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr84_q_11_q),15);
                u0_m0_wo0_cma2_a0(21) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr85_q_11_q),15);
                u0_m0_wo0_cma2_a0(22) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr86_q_11_q),15);
                u0_m0_wo0_cma2_a0(23) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr87_q_11_q),15);
                u0_m0_wo0_cma2_a0(24) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr88_q_11_q),15);
                u0_m0_wo0_cma2_a0(25) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr89_q_11_q),15);
                u0_m0_wo0_cma2_b0(0) <= u0_m0_wo0_cma2_d(1);
                u0_m0_wo0_cma2_b0(1) <= u0_m0_wo0_cma2_d(2);
                u0_m0_wo0_cma2_b0(2) <= u0_m0_wo0_cma2_d(3);
                u0_m0_wo0_cma2_b0(3) <= u0_m0_wo0_cma2_d(4);
                u0_m0_wo0_cma2_b0(4) <= u0_m0_wo0_cma2_d(5);
                u0_m0_wo0_cma2_b0(5) <= u0_m0_wo0_cma2_d(6);
                u0_m0_wo0_cma2_b0(6) <= u0_m0_wo0_cma2_d(7);
                u0_m0_wo0_cma2_b0(7) <= u0_m0_wo0_cma2_d(8);
                u0_m0_wo0_cma2_b0(8) <= u0_m0_wo0_cma2_d(9);
                u0_m0_wo0_cma2_b0(9) <= u0_m0_wo0_cma2_d(10);
                u0_m0_wo0_cma2_b0(10) <= u0_m0_wo0_cma2_d(11);
                u0_m0_wo0_cma2_b0(11) <= u0_m0_wo0_cma2_d(12);
                u0_m0_wo0_cma2_b0(12) <= u0_m0_wo0_cma2_d(13);
                u0_m0_wo0_cma2_b0(13) <= u0_m0_wo0_cma2_d(14);
                u0_m0_wo0_cma2_b0(14) <= u0_m0_wo0_cma2_d(15);
                u0_m0_wo0_cma2_b0(15) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr100_q_11_q),15);
                u0_m0_wo0_cma2_b0(16) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr99_q_11_q),15);
                u0_m0_wo0_cma2_b0(17) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr98_q_11_q),15);
                u0_m0_wo0_cma2_b0(18) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr97_q_11_q),15);
                u0_m0_wo0_cma2_b0(19) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr96_q_11_q),15);
                u0_m0_wo0_cma2_b0(20) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr95_q_11_q),15);
                u0_m0_wo0_cma2_b0(21) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr94_q_11_q),15);
                u0_m0_wo0_cma2_b0(22) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr93_q_11_q),15);
                u0_m0_wo0_cma2_b0(23) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr92_q_11_q),15);
                u0_m0_wo0_cma2_b0(24) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr91_q_11_q),15);
                u0_m0_wo0_cma2_b0(25) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_r0_delayr90_q_11_q),15);
                u0_m0_wo0_cma2_c0(0) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(1) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(2) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(3) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(4) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(5) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(6) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(7) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(8) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(9) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(10) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(11) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(12) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(13) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(14) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(15) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(16) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(17) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(18) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(19) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(20) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(21) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(22) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(23) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(24) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(25) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_d(0) <= u0_m0_wo0_cma2_b0(0);
                u0_m0_wo0_cma2_d(1) <= u0_m0_wo0_cma2_b0(1);
                u0_m0_wo0_cma2_d(2) <= u0_m0_wo0_cma2_b0(2);
                u0_m0_wo0_cma2_d(3) <= u0_m0_wo0_cma2_b0(3);
                u0_m0_wo0_cma2_d(4) <= u0_m0_wo0_cma2_b0(4);
                u0_m0_wo0_cma2_d(5) <= u0_m0_wo0_cma2_b0(5);
                u0_m0_wo0_cma2_d(6) <= u0_m0_wo0_cma2_b0(6);
                u0_m0_wo0_cma2_d(7) <= u0_m0_wo0_cma2_b0(7);
                u0_m0_wo0_cma2_d(8) <= u0_m0_wo0_cma2_b0(8);
                u0_m0_wo0_cma2_d(9) <= u0_m0_wo0_cma2_b0(9);
                u0_m0_wo0_cma2_d(10) <= u0_m0_wo0_cma2_b0(10);
                u0_m0_wo0_cma2_d(11) <= u0_m0_wo0_cma2_b0(11);
                u0_m0_wo0_cma2_d(12) <= u0_m0_wo0_cma2_b0(12);
                u0_m0_wo0_cma2_d(13) <= u0_m0_wo0_cma2_b0(13);
                u0_m0_wo0_cma2_d(14) <= u0_m0_wo0_cma2_b0(14);
                u0_m0_wo0_cma2_d(15) <= u0_m0_wo0_cma2_b0(15);
                u0_m0_wo0_cma2_d(16) <= u0_m0_wo0_cma2_b0(16);
                u0_m0_wo0_cma2_d(17) <= u0_m0_wo0_cma2_b0(17);
                u0_m0_wo0_cma2_d(18) <= u0_m0_wo0_cma2_b0(18);
                u0_m0_wo0_cma2_d(19) <= u0_m0_wo0_cma2_b0(19);
                u0_m0_wo0_cma2_d(20) <= u0_m0_wo0_cma2_b0(20);
                u0_m0_wo0_cma2_d(21) <= u0_m0_wo0_cma2_b0(21);
                u0_m0_wo0_cma2_d(22) <= u0_m0_wo0_cma2_b0(22);
                u0_m0_wo0_cma2_d(23) <= u0_m0_wo0_cma2_b0(23);
                u0_m0_wo0_cma2_d(24) <= u0_m0_wo0_cma2_b0(24);
                u0_m0_wo0_cma2_d(25) <= u0_m0_wo0_cma2_b0(25);
            END IF;
            IF (d_u0_m0_wo0_compute_q_12_q = "1") THEN
                u0_m0_wo0_cma2_s(0) <= u0_m0_wo0_cma2_y(0);
                u0_m0_wo0_cma2_s(1) <= u0_m0_wo0_cma2_y(1);
                u0_m0_wo0_cma2_s(2) <= u0_m0_wo0_cma2_y(2);
                u0_m0_wo0_cma2_s(3) <= u0_m0_wo0_cma2_y(3);
                u0_m0_wo0_cma2_s(4) <= u0_m0_wo0_cma2_y(4);
                u0_m0_wo0_cma2_s(5) <= u0_m0_wo0_cma2_y(5);
                u0_m0_wo0_cma2_s(6) <= u0_m0_wo0_cma2_y(6);
                u0_m0_wo0_cma2_s(7) <= u0_m0_wo0_cma2_y(7);
                u0_m0_wo0_cma2_s(8) <= u0_m0_wo0_cma2_y(8);
                u0_m0_wo0_cma2_s(9) <= u0_m0_wo0_cma2_y(9);
                u0_m0_wo0_cma2_s(10) <= u0_m0_wo0_cma2_y(10);
                u0_m0_wo0_cma2_s(11) <= u0_m0_wo0_cma2_y(11);
                u0_m0_wo0_cma2_s(12) <= u0_m0_wo0_cma2_y(12);
                u0_m0_wo0_cma2_s(13) <= u0_m0_wo0_cma2_y(13);
                u0_m0_wo0_cma2_s(14) <= u0_m0_wo0_cma2_y(14);
                u0_m0_wo0_cma2_s(15) <= u0_m0_wo0_cma2_y(15);
                u0_m0_wo0_cma2_s(16) <= u0_m0_wo0_cma2_y(16);
                u0_m0_wo0_cma2_s(17) <= u0_m0_wo0_cma2_y(17);
                u0_m0_wo0_cma2_s(18) <= u0_m0_wo0_cma2_y(18);
                u0_m0_wo0_cma2_s(19) <= u0_m0_wo0_cma2_y(19);
                u0_m0_wo0_cma2_s(20) <= u0_m0_wo0_cma2_y(20);
                u0_m0_wo0_cma2_s(21) <= u0_m0_wo0_cma2_y(21);
                u0_m0_wo0_cma2_s(22) <= u0_m0_wo0_cma2_y(22);
                u0_m0_wo0_cma2_s(23) <= u0_m0_wo0_cma2_y(23);
                u0_m0_wo0_cma2_s(24) <= u0_m0_wo0_cma2_y(24);
                u0_m0_wo0_cma2_s(25) <= u0_m0_wo0_cma2_y(25);
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_cma2_delay : dspba_delay
    GENERIC MAP ( width => 39, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(u0_m0_wo0_cma2_s(0)(38 downto 0)), xout => u0_m0_wo0_cma2_qq, clk => clk, aclr => areset );
    u0_m0_wo0_cma2_q <= STD_LOGIC_VECTOR(u0_m0_wo0_cma2_qq(38 downto 0));

    -- u0_m0_wo0_wi0_r0_delayr116(DELAY,130)@10
    u0_m0_wo0_wi0_r0_delayr116_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr100_q);

    -- u0_m0_wo0_cma1(CHAINMULTADD,375)@10 + 2
    u0_m0_wo0_cma1_l(0) <= RESIZE(u0_m0_wo0_cma1_a0(0),16) + RESIZE(u0_m0_wo0_cma1_b0(0),16);
    u0_m0_wo0_cma1_l(1) <= RESIZE(u0_m0_wo0_cma1_a0(1),16) + RESIZE(u0_m0_wo0_cma1_b0(1),16);
    u0_m0_wo0_cma1_l(2) <= RESIZE(u0_m0_wo0_cma1_a0(2),16) + RESIZE(u0_m0_wo0_cma1_b0(2),16);
    u0_m0_wo0_cma1_l(3) <= RESIZE(u0_m0_wo0_cma1_a0(3),16) + RESIZE(u0_m0_wo0_cma1_b0(3),16);
    u0_m0_wo0_cma1_l(4) <= RESIZE(u0_m0_wo0_cma1_a0(4),16) + RESIZE(u0_m0_wo0_cma1_b0(4),16);
    u0_m0_wo0_cma1_l(5) <= RESIZE(u0_m0_wo0_cma1_a0(5),16) + RESIZE(u0_m0_wo0_cma1_b0(5),16);
    u0_m0_wo0_cma1_l(6) <= RESIZE(u0_m0_wo0_cma1_a0(6),16) + RESIZE(u0_m0_wo0_cma1_b0(6),16);
    u0_m0_wo0_cma1_l(7) <= RESIZE(u0_m0_wo0_cma1_a0(7),16) + RESIZE(u0_m0_wo0_cma1_b0(7),16);
    u0_m0_wo0_cma1_l(8) <= RESIZE(u0_m0_wo0_cma1_a0(8),16) + RESIZE(u0_m0_wo0_cma1_b0(8),16);
    u0_m0_wo0_cma1_l(9) <= RESIZE(u0_m0_wo0_cma1_a0(9),16) + RESIZE(u0_m0_wo0_cma1_b0(9),16);
    u0_m0_wo0_cma1_l(10) <= RESIZE(u0_m0_wo0_cma1_a0(10),16) + RESIZE(u0_m0_wo0_cma1_b0(10),16);
    u0_m0_wo0_cma1_l(11) <= RESIZE(u0_m0_wo0_cma1_a0(11),16) + RESIZE(u0_m0_wo0_cma1_b0(11),16);
    u0_m0_wo0_cma1_l(12) <= RESIZE(u0_m0_wo0_cma1_a0(12),16) + RESIZE(u0_m0_wo0_cma1_b0(12),16);
    u0_m0_wo0_cma1_l(13) <= RESIZE(u0_m0_wo0_cma1_a0(13),16) + RESIZE(u0_m0_wo0_cma1_b0(13),16);
    u0_m0_wo0_cma1_l(14) <= RESIZE(u0_m0_wo0_cma1_a0(14),16) + RESIZE(u0_m0_wo0_cma1_b0(14),16);
    u0_m0_wo0_cma1_l(15) <= RESIZE(u0_m0_wo0_cma1_a0(15),16) + RESIZE(u0_m0_wo0_cma1_b0(15),16);
    u0_m0_wo0_cma1_l(16) <= RESIZE(u0_m0_wo0_cma1_a0(16),16) + RESIZE(u0_m0_wo0_cma1_b0(16),16);
    u0_m0_wo0_cma1_l(17) <= RESIZE(u0_m0_wo0_cma1_a0(17),16) + RESIZE(u0_m0_wo0_cma1_b0(17),16);
    u0_m0_wo0_cma1_l(18) <= RESIZE(u0_m0_wo0_cma1_a0(18),16) + RESIZE(u0_m0_wo0_cma1_b0(18),16);
    u0_m0_wo0_cma1_l(19) <= RESIZE(u0_m0_wo0_cma1_a0(19),16) + RESIZE(u0_m0_wo0_cma1_b0(19),16);
    u0_m0_wo0_cma1_l(20) <= RESIZE(u0_m0_wo0_cma1_a0(20),16) + RESIZE(u0_m0_wo0_cma1_b0(20),16);
    u0_m0_wo0_cma1_l(21) <= RESIZE(u0_m0_wo0_cma1_a0(21),16) + RESIZE(u0_m0_wo0_cma1_b0(21),16);
    u0_m0_wo0_cma1_l(22) <= RESIZE(u0_m0_wo0_cma1_a0(22),16) + RESIZE(u0_m0_wo0_cma1_b0(22),16);
    u0_m0_wo0_cma1_l(23) <= RESIZE(u0_m0_wo0_cma1_a0(23),16) + RESIZE(u0_m0_wo0_cma1_b0(23),16);
    u0_m0_wo0_cma1_l(24) <= RESIZE(u0_m0_wo0_cma1_a0(24),16) + RESIZE(u0_m0_wo0_cma1_b0(24),16);
    u0_m0_wo0_cma1_l(25) <= RESIZE(u0_m0_wo0_cma1_a0(25),16) + RESIZE(u0_m0_wo0_cma1_b0(25),16);
    u0_m0_wo0_cma1_l(26) <= RESIZE(u0_m0_wo0_cma1_a0(26),16) + RESIZE(u0_m0_wo0_cma1_b0(26),16);
    u0_m0_wo0_cma1_l(27) <= RESIZE(u0_m0_wo0_cma1_a0(27),16) + RESIZE(u0_m0_wo0_cma1_b0(27),16);
    u0_m0_wo0_cma1_l(28) <= RESIZE(u0_m0_wo0_cma1_a0(28),16) + RESIZE(u0_m0_wo0_cma1_b0(28),16);
    u0_m0_wo0_cma1_l(29) <= RESIZE(u0_m0_wo0_cma1_a0(29),16) + RESIZE(u0_m0_wo0_cma1_b0(29),16);
    u0_m0_wo0_cma1_l(30) <= RESIZE(u0_m0_wo0_cma1_a0(30),16) + RESIZE(u0_m0_wo0_cma1_b0(30),16);
    u0_m0_wo0_cma1_l(31) <= RESIZE(u0_m0_wo0_cma1_a0(31),16) + RESIZE(u0_m0_wo0_cma1_b0(31),16);
    -- altera synthesis_off
    u0_m0_wo0_cma1_k0 <= (
        0 => TO_SIGNED(-3688,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k1 <= (
        0 => TO_SIGNED(-3036,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k2 <= (
        0 => TO_SIGNED(-1180,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k3 <= (
        0 => TO_SIGNED(1202,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k4 <= (
        0 => TO_SIGNED(3206,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k5 <= (
        0 => TO_SIGNED(4039,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k6 <= (
        0 => TO_SIGNED(3331,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k7 <= (
        0 => TO_SIGNED(1297,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k8 <= (
        0 => TO_SIGNED(-1323,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k9 <= (
        0 => TO_SIGNED(-3537,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k10 <= (
        0 => TO_SIGNED(-4464,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k11 <= (
        0 => TO_SIGNED(-3689,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k12 <= (
        0 => TO_SIGNED(-1440,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k13 <= (
        0 => TO_SIGNED(1472,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k14 <= (
        0 => TO_SIGNED(3944,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k15 <= (
        0 => TO_SIGNED(4990,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k16 <= (
        0 => TO_SIGNED(4134,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k17 <= (
        0 => TO_SIGNED(1618,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k18 <= (
        0 => TO_SIGNED(-1659,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k19 <= (
        0 => TO_SIGNED(-4456,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k20 <= (
        0 => TO_SIGNED(-5655,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k21 <= (
        0 => TO_SIGNED(-4700,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k22 <= (
        0 => TO_SIGNED(-1846,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k23 <= (
        0 => TO_SIGNED(1899,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k24 <= (
        0 => TO_SIGNED(5121,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k25 <= (
        0 => TO_SIGNED(6525,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k26 <= (
        0 => TO_SIGNED(5446,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k27 <= (
        0 => TO_SIGNED(2148,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k28 <= (
        0 => TO_SIGNED(-2221,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k29 <= (
        0 => TO_SIGNED(-6020,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k30 <= (
        0 => TO_SIGNED(-7711,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k31 <= (
        0 => TO_SIGNED(-6474,14),
        others => (others => '0'));
    -- altera synthesis_on
    u0_m0_wo0_cma1_r(0) <= u0_m0_wo0_cma1_k0(TO_INTEGER(u0_m0_wo0_cma1_c0(0)));
    u0_m0_wo0_cma1_r(1) <= u0_m0_wo0_cma1_k1(TO_INTEGER(u0_m0_wo0_cma1_c0(1)));
    u0_m0_wo0_cma1_r(2) <= u0_m0_wo0_cma1_k2(TO_INTEGER(u0_m0_wo0_cma1_c0(2)));
    u0_m0_wo0_cma1_r(3) <= u0_m0_wo0_cma1_k3(TO_INTEGER(u0_m0_wo0_cma1_c0(3)));
    u0_m0_wo0_cma1_r(4) <= u0_m0_wo0_cma1_k4(TO_INTEGER(u0_m0_wo0_cma1_c0(4)));
    u0_m0_wo0_cma1_r(5) <= u0_m0_wo0_cma1_k5(TO_INTEGER(u0_m0_wo0_cma1_c0(5)));
    u0_m0_wo0_cma1_r(6) <= u0_m0_wo0_cma1_k6(TO_INTEGER(u0_m0_wo0_cma1_c0(6)));
    u0_m0_wo0_cma1_r(7) <= u0_m0_wo0_cma1_k7(TO_INTEGER(u0_m0_wo0_cma1_c0(7)));
    u0_m0_wo0_cma1_r(8) <= u0_m0_wo0_cma1_k8(TO_INTEGER(u0_m0_wo0_cma1_c0(8)));
    u0_m0_wo0_cma1_r(9) <= u0_m0_wo0_cma1_k9(TO_INTEGER(u0_m0_wo0_cma1_c0(9)));
    u0_m0_wo0_cma1_r(10) <= u0_m0_wo0_cma1_k10(TO_INTEGER(u0_m0_wo0_cma1_c0(10)));
    u0_m0_wo0_cma1_r(11) <= u0_m0_wo0_cma1_k11(TO_INTEGER(u0_m0_wo0_cma1_c0(11)));
    u0_m0_wo0_cma1_r(12) <= u0_m0_wo0_cma1_k12(TO_INTEGER(u0_m0_wo0_cma1_c0(12)));
    u0_m0_wo0_cma1_r(13) <= u0_m0_wo0_cma1_k13(TO_INTEGER(u0_m0_wo0_cma1_c0(13)));
    u0_m0_wo0_cma1_r(14) <= u0_m0_wo0_cma1_k14(TO_INTEGER(u0_m0_wo0_cma1_c0(14)));
    u0_m0_wo0_cma1_r(15) <= u0_m0_wo0_cma1_k15(TO_INTEGER(u0_m0_wo0_cma1_c0(15)));
    u0_m0_wo0_cma1_r(16) <= u0_m0_wo0_cma1_k16(TO_INTEGER(u0_m0_wo0_cma1_c0(16)));
    u0_m0_wo0_cma1_r(17) <= u0_m0_wo0_cma1_k17(TO_INTEGER(u0_m0_wo0_cma1_c0(17)));
    u0_m0_wo0_cma1_r(18) <= u0_m0_wo0_cma1_k18(TO_INTEGER(u0_m0_wo0_cma1_c0(18)));
    u0_m0_wo0_cma1_r(19) <= u0_m0_wo0_cma1_k19(TO_INTEGER(u0_m0_wo0_cma1_c0(19)));
    u0_m0_wo0_cma1_r(20) <= u0_m0_wo0_cma1_k20(TO_INTEGER(u0_m0_wo0_cma1_c0(20)));
    u0_m0_wo0_cma1_r(21) <= u0_m0_wo0_cma1_k21(TO_INTEGER(u0_m0_wo0_cma1_c0(21)));
    u0_m0_wo0_cma1_r(22) <= u0_m0_wo0_cma1_k22(TO_INTEGER(u0_m0_wo0_cma1_c0(22)));
    u0_m0_wo0_cma1_r(23) <= u0_m0_wo0_cma1_k23(TO_INTEGER(u0_m0_wo0_cma1_c0(23)));
    u0_m0_wo0_cma1_r(24) <= u0_m0_wo0_cma1_k24(TO_INTEGER(u0_m0_wo0_cma1_c0(24)));
    u0_m0_wo0_cma1_r(25) <= u0_m0_wo0_cma1_k25(TO_INTEGER(u0_m0_wo0_cma1_c0(25)));
    u0_m0_wo0_cma1_r(26) <= u0_m0_wo0_cma1_k26(TO_INTEGER(u0_m0_wo0_cma1_c0(26)));
    u0_m0_wo0_cma1_r(27) <= u0_m0_wo0_cma1_k27(TO_INTEGER(u0_m0_wo0_cma1_c0(27)));
    u0_m0_wo0_cma1_r(28) <= u0_m0_wo0_cma1_k28(TO_INTEGER(u0_m0_wo0_cma1_c0(28)));
    u0_m0_wo0_cma1_r(29) <= u0_m0_wo0_cma1_k29(TO_INTEGER(u0_m0_wo0_cma1_c0(29)));
    u0_m0_wo0_cma1_r(30) <= u0_m0_wo0_cma1_k30(TO_INTEGER(u0_m0_wo0_cma1_c0(30)));
    u0_m0_wo0_cma1_r(31) <= u0_m0_wo0_cma1_k31(TO_INTEGER(u0_m0_wo0_cma1_c0(31)));
    u0_m0_wo0_cma1_p(0) <= u0_m0_wo0_cma1_l(0) * u0_m0_wo0_cma1_r(0);
    u0_m0_wo0_cma1_p(1) <= u0_m0_wo0_cma1_l(1) * u0_m0_wo0_cma1_r(1);
    u0_m0_wo0_cma1_p(2) <= u0_m0_wo0_cma1_l(2) * u0_m0_wo0_cma1_r(2);
    u0_m0_wo0_cma1_p(3) <= u0_m0_wo0_cma1_l(3) * u0_m0_wo0_cma1_r(3);
    u0_m0_wo0_cma1_p(4) <= u0_m0_wo0_cma1_l(4) * u0_m0_wo0_cma1_r(4);
    u0_m0_wo0_cma1_p(5) <= u0_m0_wo0_cma1_l(5) * u0_m0_wo0_cma1_r(5);
    u0_m0_wo0_cma1_p(6) <= u0_m0_wo0_cma1_l(6) * u0_m0_wo0_cma1_r(6);
    u0_m0_wo0_cma1_p(7) <= u0_m0_wo0_cma1_l(7) * u0_m0_wo0_cma1_r(7);
    u0_m0_wo0_cma1_p(8) <= u0_m0_wo0_cma1_l(8) * u0_m0_wo0_cma1_r(8);
    u0_m0_wo0_cma1_p(9) <= u0_m0_wo0_cma1_l(9) * u0_m0_wo0_cma1_r(9);
    u0_m0_wo0_cma1_p(10) <= u0_m0_wo0_cma1_l(10) * u0_m0_wo0_cma1_r(10);
    u0_m0_wo0_cma1_p(11) <= u0_m0_wo0_cma1_l(11) * u0_m0_wo0_cma1_r(11);
    u0_m0_wo0_cma1_p(12) <= u0_m0_wo0_cma1_l(12) * u0_m0_wo0_cma1_r(12);
    u0_m0_wo0_cma1_p(13) <= u0_m0_wo0_cma1_l(13) * u0_m0_wo0_cma1_r(13);
    u0_m0_wo0_cma1_p(14) <= u0_m0_wo0_cma1_l(14) * u0_m0_wo0_cma1_r(14);
    u0_m0_wo0_cma1_p(15) <= u0_m0_wo0_cma1_l(15) * u0_m0_wo0_cma1_r(15);
    u0_m0_wo0_cma1_p(16) <= u0_m0_wo0_cma1_l(16) * u0_m0_wo0_cma1_r(16);
    u0_m0_wo0_cma1_p(17) <= u0_m0_wo0_cma1_l(17) * u0_m0_wo0_cma1_r(17);
    u0_m0_wo0_cma1_p(18) <= u0_m0_wo0_cma1_l(18) * u0_m0_wo0_cma1_r(18);
    u0_m0_wo0_cma1_p(19) <= u0_m0_wo0_cma1_l(19) * u0_m0_wo0_cma1_r(19);
    u0_m0_wo0_cma1_p(20) <= u0_m0_wo0_cma1_l(20) * u0_m0_wo0_cma1_r(20);
    u0_m0_wo0_cma1_p(21) <= u0_m0_wo0_cma1_l(21) * u0_m0_wo0_cma1_r(21);
    u0_m0_wo0_cma1_p(22) <= u0_m0_wo0_cma1_l(22) * u0_m0_wo0_cma1_r(22);
    u0_m0_wo0_cma1_p(23) <= u0_m0_wo0_cma1_l(23) * u0_m0_wo0_cma1_r(23);
    u0_m0_wo0_cma1_p(24) <= u0_m0_wo0_cma1_l(24) * u0_m0_wo0_cma1_r(24);
    u0_m0_wo0_cma1_p(25) <= u0_m0_wo0_cma1_l(25) * u0_m0_wo0_cma1_r(25);
    u0_m0_wo0_cma1_p(26) <= u0_m0_wo0_cma1_l(26) * u0_m0_wo0_cma1_r(26);
    u0_m0_wo0_cma1_p(27) <= u0_m0_wo0_cma1_l(27) * u0_m0_wo0_cma1_r(27);
    u0_m0_wo0_cma1_p(28) <= u0_m0_wo0_cma1_l(28) * u0_m0_wo0_cma1_r(28);
    u0_m0_wo0_cma1_p(29) <= u0_m0_wo0_cma1_l(29) * u0_m0_wo0_cma1_r(29);
    u0_m0_wo0_cma1_p(30) <= u0_m0_wo0_cma1_l(30) * u0_m0_wo0_cma1_r(30);
    u0_m0_wo0_cma1_p(31) <= u0_m0_wo0_cma1_l(31) * u0_m0_wo0_cma1_r(31);
    u0_m0_wo0_cma1_u(0) <= RESIZE(u0_m0_wo0_cma1_p(0),35);
    u0_m0_wo0_cma1_u(1) <= RESIZE(u0_m0_wo0_cma1_p(1),35);
    u0_m0_wo0_cma1_u(2) <= RESIZE(u0_m0_wo0_cma1_p(2),35);
    u0_m0_wo0_cma1_u(3) <= RESIZE(u0_m0_wo0_cma1_p(3),35);
    u0_m0_wo0_cma1_u(4) <= RESIZE(u0_m0_wo0_cma1_p(4),35);
    u0_m0_wo0_cma1_u(5) <= RESIZE(u0_m0_wo0_cma1_p(5),35);
    u0_m0_wo0_cma1_u(6) <= RESIZE(u0_m0_wo0_cma1_p(6),35);
    u0_m0_wo0_cma1_u(7) <= RESIZE(u0_m0_wo0_cma1_p(7),35);
    u0_m0_wo0_cma1_u(8) <= RESIZE(u0_m0_wo0_cma1_p(8),35);
    u0_m0_wo0_cma1_u(9) <= RESIZE(u0_m0_wo0_cma1_p(9),35);
    u0_m0_wo0_cma1_u(10) <= RESIZE(u0_m0_wo0_cma1_p(10),35);
    u0_m0_wo0_cma1_u(11) <= RESIZE(u0_m0_wo0_cma1_p(11),35);
    u0_m0_wo0_cma1_u(12) <= RESIZE(u0_m0_wo0_cma1_p(12),35);
    u0_m0_wo0_cma1_u(13) <= RESIZE(u0_m0_wo0_cma1_p(13),35);
    u0_m0_wo0_cma1_u(14) <= RESIZE(u0_m0_wo0_cma1_p(14),35);
    u0_m0_wo0_cma1_u(15) <= RESIZE(u0_m0_wo0_cma1_p(15),35);
    u0_m0_wo0_cma1_u(16) <= RESIZE(u0_m0_wo0_cma1_p(16),35);
    u0_m0_wo0_cma1_u(17) <= RESIZE(u0_m0_wo0_cma1_p(17),35);
    u0_m0_wo0_cma1_u(18) <= RESIZE(u0_m0_wo0_cma1_p(18),35);
    u0_m0_wo0_cma1_u(19) <= RESIZE(u0_m0_wo0_cma1_p(19),35);
    u0_m0_wo0_cma1_u(20) <= RESIZE(u0_m0_wo0_cma1_p(20),35);
    u0_m0_wo0_cma1_u(21) <= RESIZE(u0_m0_wo0_cma1_p(21),35);
    u0_m0_wo0_cma1_u(22) <= RESIZE(u0_m0_wo0_cma1_p(22),35);
    u0_m0_wo0_cma1_u(23) <= RESIZE(u0_m0_wo0_cma1_p(23),35);
    u0_m0_wo0_cma1_u(24) <= RESIZE(u0_m0_wo0_cma1_p(24),35);
    u0_m0_wo0_cma1_u(25) <= RESIZE(u0_m0_wo0_cma1_p(25),35);
    u0_m0_wo0_cma1_u(26) <= RESIZE(u0_m0_wo0_cma1_p(26),35);
    u0_m0_wo0_cma1_u(27) <= RESIZE(u0_m0_wo0_cma1_p(27),35);
    u0_m0_wo0_cma1_u(28) <= RESIZE(u0_m0_wo0_cma1_p(28),35);
    u0_m0_wo0_cma1_u(29) <= RESIZE(u0_m0_wo0_cma1_p(29),35);
    u0_m0_wo0_cma1_u(30) <= RESIZE(u0_m0_wo0_cma1_p(30),35);
    u0_m0_wo0_cma1_u(31) <= RESIZE(u0_m0_wo0_cma1_p(31),35);
    u0_m0_wo0_cma1_w(0) <= u0_m0_wo0_cma1_u(0);
    u0_m0_wo0_cma1_w(1) <= u0_m0_wo0_cma1_u(1);
    u0_m0_wo0_cma1_w(2) <= u0_m0_wo0_cma1_u(2);
    u0_m0_wo0_cma1_w(3) <= u0_m0_wo0_cma1_u(3);
    u0_m0_wo0_cma1_w(4) <= u0_m0_wo0_cma1_u(4);
    u0_m0_wo0_cma1_w(5) <= u0_m0_wo0_cma1_u(5);
    u0_m0_wo0_cma1_w(6) <= u0_m0_wo0_cma1_u(6);
    u0_m0_wo0_cma1_w(7) <= u0_m0_wo0_cma1_u(7);
    u0_m0_wo0_cma1_w(8) <= u0_m0_wo0_cma1_u(8);
    u0_m0_wo0_cma1_w(9) <= u0_m0_wo0_cma1_u(9);
    u0_m0_wo0_cma1_w(10) <= u0_m0_wo0_cma1_u(10);
    u0_m0_wo0_cma1_w(11) <= u0_m0_wo0_cma1_u(11);
    u0_m0_wo0_cma1_w(12) <= u0_m0_wo0_cma1_u(12);
    u0_m0_wo0_cma1_w(13) <= u0_m0_wo0_cma1_u(13);
    u0_m0_wo0_cma1_w(14) <= u0_m0_wo0_cma1_u(14);
    u0_m0_wo0_cma1_w(15) <= u0_m0_wo0_cma1_u(15);
    u0_m0_wo0_cma1_w(16) <= u0_m0_wo0_cma1_u(16);
    u0_m0_wo0_cma1_w(17) <= u0_m0_wo0_cma1_u(17);
    u0_m0_wo0_cma1_w(18) <= u0_m0_wo0_cma1_u(18);
    u0_m0_wo0_cma1_w(19) <= u0_m0_wo0_cma1_u(19);
    u0_m0_wo0_cma1_w(20) <= u0_m0_wo0_cma1_u(20);
    u0_m0_wo0_cma1_w(21) <= u0_m0_wo0_cma1_u(21);
    u0_m0_wo0_cma1_w(22) <= u0_m0_wo0_cma1_u(22);
    u0_m0_wo0_cma1_w(23) <= u0_m0_wo0_cma1_u(23);
    u0_m0_wo0_cma1_w(24) <= u0_m0_wo0_cma1_u(24);
    u0_m0_wo0_cma1_w(25) <= u0_m0_wo0_cma1_u(25);
    u0_m0_wo0_cma1_w(26) <= u0_m0_wo0_cma1_u(26);
    u0_m0_wo0_cma1_w(27) <= u0_m0_wo0_cma1_u(27);
    u0_m0_wo0_cma1_w(28) <= u0_m0_wo0_cma1_u(28);
    u0_m0_wo0_cma1_w(29) <= u0_m0_wo0_cma1_u(29);
    u0_m0_wo0_cma1_w(30) <= u0_m0_wo0_cma1_u(30);
    u0_m0_wo0_cma1_w(31) <= u0_m0_wo0_cma1_u(31);
    u0_m0_wo0_cma1_x(0) <= u0_m0_wo0_cma1_w(0);
    u0_m0_wo0_cma1_x(1) <= u0_m0_wo0_cma1_w(1);
    u0_m0_wo0_cma1_x(2) <= u0_m0_wo0_cma1_w(2);
    u0_m0_wo0_cma1_x(3) <= u0_m0_wo0_cma1_w(3);
    u0_m0_wo0_cma1_x(4) <= u0_m0_wo0_cma1_w(4);
    u0_m0_wo0_cma1_x(5) <= u0_m0_wo0_cma1_w(5);
    u0_m0_wo0_cma1_x(6) <= u0_m0_wo0_cma1_w(6);
    u0_m0_wo0_cma1_x(7) <= u0_m0_wo0_cma1_w(7);
    u0_m0_wo0_cma1_x(8) <= u0_m0_wo0_cma1_w(8);
    u0_m0_wo0_cma1_x(9) <= u0_m0_wo0_cma1_w(9);
    u0_m0_wo0_cma1_x(10) <= u0_m0_wo0_cma1_w(10);
    u0_m0_wo0_cma1_x(11) <= u0_m0_wo0_cma1_w(11);
    u0_m0_wo0_cma1_x(12) <= u0_m0_wo0_cma1_w(12);
    u0_m0_wo0_cma1_x(13) <= u0_m0_wo0_cma1_w(13);
    u0_m0_wo0_cma1_x(14) <= u0_m0_wo0_cma1_w(14);
    u0_m0_wo0_cma1_x(15) <= u0_m0_wo0_cma1_w(15);
    u0_m0_wo0_cma1_x(16) <= u0_m0_wo0_cma1_w(16);
    u0_m0_wo0_cma1_x(17) <= u0_m0_wo0_cma1_w(17);
    u0_m0_wo0_cma1_x(18) <= u0_m0_wo0_cma1_w(18);
    u0_m0_wo0_cma1_x(19) <= u0_m0_wo0_cma1_w(19);
    u0_m0_wo0_cma1_x(20) <= u0_m0_wo0_cma1_w(20);
    u0_m0_wo0_cma1_x(21) <= u0_m0_wo0_cma1_w(21);
    u0_m0_wo0_cma1_x(22) <= u0_m0_wo0_cma1_w(22);
    u0_m0_wo0_cma1_x(23) <= u0_m0_wo0_cma1_w(23);
    u0_m0_wo0_cma1_x(24) <= u0_m0_wo0_cma1_w(24);
    u0_m0_wo0_cma1_x(25) <= u0_m0_wo0_cma1_w(25);
    u0_m0_wo0_cma1_x(26) <= u0_m0_wo0_cma1_w(26);
    u0_m0_wo0_cma1_x(27) <= u0_m0_wo0_cma1_w(27);
    u0_m0_wo0_cma1_x(28) <= u0_m0_wo0_cma1_w(28);
    u0_m0_wo0_cma1_x(29) <= u0_m0_wo0_cma1_w(29);
    u0_m0_wo0_cma1_x(30) <= u0_m0_wo0_cma1_w(30);
    u0_m0_wo0_cma1_x(31) <= u0_m0_wo0_cma1_w(31);
    u0_m0_wo0_cma1_y(0) <= u0_m0_wo0_cma1_s(1) + u0_m0_wo0_cma1_x(0);
    u0_m0_wo0_cma1_y(1) <= u0_m0_wo0_cma1_s(2) + u0_m0_wo0_cma1_x(1);
    u0_m0_wo0_cma1_y(2) <= u0_m0_wo0_cma1_s(3) + u0_m0_wo0_cma1_x(2);
    u0_m0_wo0_cma1_y(3) <= u0_m0_wo0_cma1_s(4) + u0_m0_wo0_cma1_x(3);
    u0_m0_wo0_cma1_y(4) <= u0_m0_wo0_cma1_s(5) + u0_m0_wo0_cma1_x(4);
    u0_m0_wo0_cma1_y(5) <= u0_m0_wo0_cma1_s(6) + u0_m0_wo0_cma1_x(5);
    u0_m0_wo0_cma1_y(6) <= u0_m0_wo0_cma1_s(7) + u0_m0_wo0_cma1_x(6);
    u0_m0_wo0_cma1_y(7) <= u0_m0_wo0_cma1_s(8) + u0_m0_wo0_cma1_x(7);
    u0_m0_wo0_cma1_y(8) <= u0_m0_wo0_cma1_s(9) + u0_m0_wo0_cma1_x(8);
    u0_m0_wo0_cma1_y(9) <= u0_m0_wo0_cma1_s(10) + u0_m0_wo0_cma1_x(9);
    u0_m0_wo0_cma1_y(10) <= u0_m0_wo0_cma1_s(11) + u0_m0_wo0_cma1_x(10);
    u0_m0_wo0_cma1_y(11) <= u0_m0_wo0_cma1_s(12) + u0_m0_wo0_cma1_x(11);
    u0_m0_wo0_cma1_y(12) <= u0_m0_wo0_cma1_s(13) + u0_m0_wo0_cma1_x(12);
    u0_m0_wo0_cma1_y(13) <= u0_m0_wo0_cma1_s(14) + u0_m0_wo0_cma1_x(13);
    u0_m0_wo0_cma1_y(14) <= u0_m0_wo0_cma1_s(15) + u0_m0_wo0_cma1_x(14);
    u0_m0_wo0_cma1_y(15) <= u0_m0_wo0_cma1_s(16) + u0_m0_wo0_cma1_x(15);
    u0_m0_wo0_cma1_y(16) <= u0_m0_wo0_cma1_s(17) + u0_m0_wo0_cma1_x(16);
    u0_m0_wo0_cma1_y(17) <= u0_m0_wo0_cma1_s(18) + u0_m0_wo0_cma1_x(17);
    u0_m0_wo0_cma1_y(18) <= u0_m0_wo0_cma1_s(19) + u0_m0_wo0_cma1_x(18);
    u0_m0_wo0_cma1_y(19) <= u0_m0_wo0_cma1_s(20) + u0_m0_wo0_cma1_x(19);
    u0_m0_wo0_cma1_y(20) <= u0_m0_wo0_cma1_s(21) + u0_m0_wo0_cma1_x(20);
    u0_m0_wo0_cma1_y(21) <= u0_m0_wo0_cma1_s(22) + u0_m0_wo0_cma1_x(21);
    u0_m0_wo0_cma1_y(22) <= u0_m0_wo0_cma1_s(23) + u0_m0_wo0_cma1_x(22);
    u0_m0_wo0_cma1_y(23) <= u0_m0_wo0_cma1_s(24) + u0_m0_wo0_cma1_x(23);
    u0_m0_wo0_cma1_y(24) <= u0_m0_wo0_cma1_s(25) + u0_m0_wo0_cma1_x(24);
    u0_m0_wo0_cma1_y(25) <= u0_m0_wo0_cma1_s(26) + u0_m0_wo0_cma1_x(25);
    u0_m0_wo0_cma1_y(26) <= u0_m0_wo0_cma1_s(27) + u0_m0_wo0_cma1_x(26);
    u0_m0_wo0_cma1_y(27) <= u0_m0_wo0_cma1_s(28) + u0_m0_wo0_cma1_x(27);
    u0_m0_wo0_cma1_y(28) <= u0_m0_wo0_cma1_s(29) + u0_m0_wo0_cma1_x(28);
    u0_m0_wo0_cma1_y(29) <= u0_m0_wo0_cma1_s(30) + u0_m0_wo0_cma1_x(29);
    u0_m0_wo0_cma1_y(30) <= u0_m0_wo0_cma1_s(31) + u0_m0_wo0_cma1_x(30);
    u0_m0_wo0_cma1_y(31) <= u0_m0_wo0_cma1_x(31);
    u0_m0_wo0_cma1_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cma1_a0 <= (others => (others => '0'));
            u0_m0_wo0_cma1_b0 <= (others => (others => '0'));
            u0_m0_wo0_cma1_c0 <= (others => (others => '0'));
            u0_m0_wo0_cma1_d <= (others => (others => '0'));
            u0_m0_wo0_cma1_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_cma1_a0(0) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(1) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(2) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(3) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(4) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(5) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(6) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(7) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(8) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(9) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(10) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(11) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(12) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(13) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(14) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(15) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(16) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(17) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(18) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(19) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(20) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(21) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(22) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(23) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(24) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(25) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(26) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(27) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(28) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(29) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(30) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_a0(31) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split32_b),15);
                u0_m0_wo0_cma1_b0(0) <= u0_m0_wo0_cma1_d(1);
                u0_m0_wo0_cma1_b0(1) <= u0_m0_wo0_cma1_d(2);
                u0_m0_wo0_cma1_b0(2) <= u0_m0_wo0_cma1_d(3);
                u0_m0_wo0_cma1_b0(3) <= u0_m0_wo0_cma1_d(4);
                u0_m0_wo0_cma1_b0(4) <= u0_m0_wo0_cma1_d(5);
                u0_m0_wo0_cma1_b0(5) <= u0_m0_wo0_cma1_d(6);
                u0_m0_wo0_cma1_b0(6) <= u0_m0_wo0_cma1_d(7);
                u0_m0_wo0_cma1_b0(7) <= u0_m0_wo0_cma1_d(8);
                u0_m0_wo0_cma1_b0(8) <= u0_m0_wo0_cma1_d(9);
                u0_m0_wo0_cma1_b0(9) <= u0_m0_wo0_cma1_d(10);
                u0_m0_wo0_cma1_b0(10) <= u0_m0_wo0_cma1_d(11);
                u0_m0_wo0_cma1_b0(11) <= u0_m0_wo0_cma1_d(12);
                u0_m0_wo0_cma1_b0(12) <= u0_m0_wo0_cma1_d(13);
                u0_m0_wo0_cma1_b0(13) <= u0_m0_wo0_cma1_d(14);
                u0_m0_wo0_cma1_b0(14) <= u0_m0_wo0_cma1_d(15);
                u0_m0_wo0_cma1_b0(15) <= u0_m0_wo0_cma1_d(16);
                u0_m0_wo0_cma1_b0(16) <= u0_m0_wo0_cma1_d(17);
                u0_m0_wo0_cma1_b0(17) <= u0_m0_wo0_cma1_d(18);
                u0_m0_wo0_cma1_b0(18) <= u0_m0_wo0_cma1_d(19);
                u0_m0_wo0_cma1_b0(19) <= u0_m0_wo0_cma1_d(20);
                u0_m0_wo0_cma1_b0(20) <= u0_m0_wo0_cma1_d(21);
                u0_m0_wo0_cma1_b0(21) <= u0_m0_wo0_cma1_d(22);
                u0_m0_wo0_cma1_b0(22) <= u0_m0_wo0_cma1_d(23);
                u0_m0_wo0_cma1_b0(23) <= u0_m0_wo0_cma1_d(24);
                u0_m0_wo0_cma1_b0(24) <= u0_m0_wo0_cma1_d(25);
                u0_m0_wo0_cma1_b0(25) <= u0_m0_wo0_cma1_d(26);
                u0_m0_wo0_cma1_b0(26) <= u0_m0_wo0_cma1_d(27);
                u0_m0_wo0_cma1_b0(27) <= u0_m0_wo0_cma1_d(28);
                u0_m0_wo0_cma1_b0(28) <= u0_m0_wo0_cma1_d(29);
                u0_m0_wo0_cma1_b0(29) <= u0_m0_wo0_cma1_d(30);
                u0_m0_wo0_cma1_b0(30) <= u0_m0_wo0_cma1_d(31);
                u0_m0_wo0_cma1_b0(31) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_delayr116_q),15);
                u0_m0_wo0_cma1_c0(0) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(1) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(2) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(3) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(4) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(5) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(6) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(7) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(8) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(9) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(10) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(11) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(12) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(13) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(14) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(15) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(16) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(17) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(18) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(19) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(20) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(21) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(22) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(23) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(24) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(25) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(26) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(27) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(28) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(29) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(30) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(31) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_d(0) <= u0_m0_wo0_cma1_b0(0);
                u0_m0_wo0_cma1_d(1) <= u0_m0_wo0_cma1_b0(1);
                u0_m0_wo0_cma1_d(2) <= u0_m0_wo0_cma1_b0(2);
                u0_m0_wo0_cma1_d(3) <= u0_m0_wo0_cma1_b0(3);
                u0_m0_wo0_cma1_d(4) <= u0_m0_wo0_cma1_b0(4);
                u0_m0_wo0_cma1_d(5) <= u0_m0_wo0_cma1_b0(5);
                u0_m0_wo0_cma1_d(6) <= u0_m0_wo0_cma1_b0(6);
                u0_m0_wo0_cma1_d(7) <= u0_m0_wo0_cma1_b0(7);
                u0_m0_wo0_cma1_d(8) <= u0_m0_wo0_cma1_b0(8);
                u0_m0_wo0_cma1_d(9) <= u0_m0_wo0_cma1_b0(9);
                u0_m0_wo0_cma1_d(10) <= u0_m0_wo0_cma1_b0(10);
                u0_m0_wo0_cma1_d(11) <= u0_m0_wo0_cma1_b0(11);
                u0_m0_wo0_cma1_d(12) <= u0_m0_wo0_cma1_b0(12);
                u0_m0_wo0_cma1_d(13) <= u0_m0_wo0_cma1_b0(13);
                u0_m0_wo0_cma1_d(14) <= u0_m0_wo0_cma1_b0(14);
                u0_m0_wo0_cma1_d(15) <= u0_m0_wo0_cma1_b0(15);
                u0_m0_wo0_cma1_d(16) <= u0_m0_wo0_cma1_b0(16);
                u0_m0_wo0_cma1_d(17) <= u0_m0_wo0_cma1_b0(17);
                u0_m0_wo0_cma1_d(18) <= u0_m0_wo0_cma1_b0(18);
                u0_m0_wo0_cma1_d(19) <= u0_m0_wo0_cma1_b0(19);
                u0_m0_wo0_cma1_d(20) <= u0_m0_wo0_cma1_b0(20);
                u0_m0_wo0_cma1_d(21) <= u0_m0_wo0_cma1_b0(21);
                u0_m0_wo0_cma1_d(22) <= u0_m0_wo0_cma1_b0(22);
                u0_m0_wo0_cma1_d(23) <= u0_m0_wo0_cma1_b0(23);
                u0_m0_wo0_cma1_d(24) <= u0_m0_wo0_cma1_b0(24);
                u0_m0_wo0_cma1_d(25) <= u0_m0_wo0_cma1_b0(25);
                u0_m0_wo0_cma1_d(26) <= u0_m0_wo0_cma1_b0(26);
                u0_m0_wo0_cma1_d(27) <= u0_m0_wo0_cma1_b0(27);
                u0_m0_wo0_cma1_d(28) <= u0_m0_wo0_cma1_b0(28);
                u0_m0_wo0_cma1_d(29) <= u0_m0_wo0_cma1_b0(29);
                u0_m0_wo0_cma1_d(30) <= u0_m0_wo0_cma1_b0(30);
                u0_m0_wo0_cma1_d(31) <= u0_m0_wo0_cma1_b0(31);
            END IF;
            IF (d_u0_m0_wo0_compute_q_11_q = "1") THEN
                u0_m0_wo0_cma1_s(0) <= u0_m0_wo0_cma1_y(0);
                u0_m0_wo0_cma1_s(1) <= u0_m0_wo0_cma1_y(1);
                u0_m0_wo0_cma1_s(2) <= u0_m0_wo0_cma1_y(2);
                u0_m0_wo0_cma1_s(3) <= u0_m0_wo0_cma1_y(3);
                u0_m0_wo0_cma1_s(4) <= u0_m0_wo0_cma1_y(4);
                u0_m0_wo0_cma1_s(5) <= u0_m0_wo0_cma1_y(5);
                u0_m0_wo0_cma1_s(6) <= u0_m0_wo0_cma1_y(6);
                u0_m0_wo0_cma1_s(7) <= u0_m0_wo0_cma1_y(7);
                u0_m0_wo0_cma1_s(8) <= u0_m0_wo0_cma1_y(8);
                u0_m0_wo0_cma1_s(9) <= u0_m0_wo0_cma1_y(9);
                u0_m0_wo0_cma1_s(10) <= u0_m0_wo0_cma1_y(10);
                u0_m0_wo0_cma1_s(11) <= u0_m0_wo0_cma1_y(11);
                u0_m0_wo0_cma1_s(12) <= u0_m0_wo0_cma1_y(12);
                u0_m0_wo0_cma1_s(13) <= u0_m0_wo0_cma1_y(13);
                u0_m0_wo0_cma1_s(14) <= u0_m0_wo0_cma1_y(14);
                u0_m0_wo0_cma1_s(15) <= u0_m0_wo0_cma1_y(15);
                u0_m0_wo0_cma1_s(16) <= u0_m0_wo0_cma1_y(16);
                u0_m0_wo0_cma1_s(17) <= u0_m0_wo0_cma1_y(17);
                u0_m0_wo0_cma1_s(18) <= u0_m0_wo0_cma1_y(18);
                u0_m0_wo0_cma1_s(19) <= u0_m0_wo0_cma1_y(19);
                u0_m0_wo0_cma1_s(20) <= u0_m0_wo0_cma1_y(20);
                u0_m0_wo0_cma1_s(21) <= u0_m0_wo0_cma1_y(21);
                u0_m0_wo0_cma1_s(22) <= u0_m0_wo0_cma1_y(22);
                u0_m0_wo0_cma1_s(23) <= u0_m0_wo0_cma1_y(23);
                u0_m0_wo0_cma1_s(24) <= u0_m0_wo0_cma1_y(24);
                u0_m0_wo0_cma1_s(25) <= u0_m0_wo0_cma1_y(25);
                u0_m0_wo0_cma1_s(26) <= u0_m0_wo0_cma1_y(26);
                u0_m0_wo0_cma1_s(27) <= u0_m0_wo0_cma1_y(27);
                u0_m0_wo0_cma1_s(28) <= u0_m0_wo0_cma1_y(28);
                u0_m0_wo0_cma1_s(29) <= u0_m0_wo0_cma1_y(29);
                u0_m0_wo0_cma1_s(30) <= u0_m0_wo0_cma1_y(30);
                u0_m0_wo0_cma1_s(31) <= u0_m0_wo0_cma1_y(31);
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_cma1_delay : dspba_delay
    GENERIC MAP ( width => 35, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(u0_m0_wo0_cma1_s(0)(34 downto 0)), xout => u0_m0_wo0_cma1_qq, clk => clk, aclr => areset );
    u0_m0_wo0_cma1_q <= STD_LOGIC_VECTOR(u0_m0_wo0_cma1_qq(34 downto 0));

    -- u0_m0_wo0_wi0_r0_delayr117(DELAY,131)@10
    u0_m0_wo0_wi0_r0_delayr117 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr116_q, xout => u0_m0_wo0_wi0_r0_delayr117_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr118(DELAY,132)@10
    u0_m0_wo0_wi0_r0_delayr118 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr117_q, xout => u0_m0_wo0_wi0_r0_delayr118_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr119(DELAY,133)@10
    u0_m0_wo0_wi0_r0_delayr119 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr118_q, xout => u0_m0_wo0_wi0_r0_delayr119_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr120(DELAY,134)@10
    u0_m0_wo0_wi0_r0_delayr120 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr119_q, xout => u0_m0_wo0_wi0_r0_delayr120_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr121(DELAY,135)@10
    u0_m0_wo0_wi0_r0_delayr121 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr120_q, xout => u0_m0_wo0_wi0_r0_delayr121_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr122(DELAY,136)@10
    u0_m0_wo0_wi0_r0_delayr122 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr121_q, xout => u0_m0_wo0_wi0_r0_delayr122_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr123(DELAY,137)@10
    u0_m0_wo0_wi0_r0_delayr123 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr122_q, xout => u0_m0_wo0_wi0_r0_delayr123_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr124(DELAY,138)@10
    u0_m0_wo0_wi0_r0_delayr124 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr123_q, xout => u0_m0_wo0_wi0_r0_delayr124_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr125(DELAY,139)@10
    u0_m0_wo0_wi0_r0_delayr125 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr124_q, xout => u0_m0_wo0_wi0_r0_delayr125_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr126(DELAY,140)@10
    u0_m0_wo0_wi0_r0_delayr126 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr125_q, xout => u0_m0_wo0_wi0_r0_delayr126_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr127(DELAY,141)@10
    u0_m0_wo0_wi0_r0_delayr127 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr126_q, xout => u0_m0_wo0_wi0_r0_delayr127_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr128(DELAY,142)@10
    u0_m0_wo0_wi0_r0_delayr128 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr127_q, xout => u0_m0_wo0_wi0_r0_delayr128_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr129(DELAY,143)@10
    u0_m0_wo0_wi0_r0_delayr129 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr128_q, xout => u0_m0_wo0_wi0_r0_delayr129_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr130(DELAY,144)@10
    u0_m0_wo0_wi0_r0_delayr130 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr129_q, xout => u0_m0_wo0_wi0_r0_delayr130_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr131(DELAY,145)@10
    u0_m0_wo0_wi0_r0_delayr131 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr130_q, xout => u0_m0_wo0_wi0_r0_delayr131_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr132(DELAY,146)@10
    u0_m0_wo0_wi0_r0_delayr132 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr131_q, xout => u0_m0_wo0_wi0_r0_delayr132_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr148(DELAY,162)@10
    u0_m0_wo0_wi0_r0_delayr148_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr132_q);

    -- u0_m0_wo0_cma0(CHAINMULTADD,374)@10 + 2
    u0_m0_wo0_cma0_l(0) <= RESIZE(u0_m0_wo0_cma0_a0(0),16) + RESIZE(u0_m0_wo0_cma0_b0(0),16);
    u0_m0_wo0_cma0_l(1) <= RESIZE(u0_m0_wo0_cma0_a0(1),16) + RESIZE(u0_m0_wo0_cma0_b0(1),16);
    u0_m0_wo0_cma0_l(2) <= RESIZE(u0_m0_wo0_cma0_a0(2),16) + RESIZE(u0_m0_wo0_cma0_b0(2),16);
    u0_m0_wo0_cma0_l(3) <= RESIZE(u0_m0_wo0_cma0_a0(3),16) + RESIZE(u0_m0_wo0_cma0_b0(3),16);
    u0_m0_wo0_cma0_l(4) <= RESIZE(u0_m0_wo0_cma0_a0(4),16) + RESIZE(u0_m0_wo0_cma0_b0(4),16);
    u0_m0_wo0_cma0_l(5) <= RESIZE(u0_m0_wo0_cma0_a0(5),16) + RESIZE(u0_m0_wo0_cma0_b0(5),16);
    u0_m0_wo0_cma0_l(6) <= RESIZE(u0_m0_wo0_cma0_a0(6),16) + RESIZE(u0_m0_wo0_cma0_b0(6),16);
    u0_m0_wo0_cma0_l(7) <= RESIZE(u0_m0_wo0_cma0_a0(7),16) + RESIZE(u0_m0_wo0_cma0_b0(7),16);
    u0_m0_wo0_cma0_l(8) <= RESIZE(u0_m0_wo0_cma0_a0(8),16) + RESIZE(u0_m0_wo0_cma0_b0(8),16);
    u0_m0_wo0_cma0_l(9) <= RESIZE(u0_m0_wo0_cma0_a0(9),16) + RESIZE(u0_m0_wo0_cma0_b0(9),16);
    u0_m0_wo0_cma0_l(10) <= RESIZE(u0_m0_wo0_cma0_a0(10),16) + RESIZE(u0_m0_wo0_cma0_b0(10),16);
    u0_m0_wo0_cma0_l(11) <= RESIZE(u0_m0_wo0_cma0_a0(11),16) + RESIZE(u0_m0_wo0_cma0_b0(11),16);
    u0_m0_wo0_cma0_l(12) <= RESIZE(u0_m0_wo0_cma0_a0(12),16) + RESIZE(u0_m0_wo0_cma0_b0(12),16);
    u0_m0_wo0_cma0_l(13) <= RESIZE(u0_m0_wo0_cma0_a0(13),16) + RESIZE(u0_m0_wo0_cma0_b0(13),16);
    u0_m0_wo0_cma0_l(14) <= RESIZE(u0_m0_wo0_cma0_a0(14),16) + RESIZE(u0_m0_wo0_cma0_b0(14),16);
    u0_m0_wo0_cma0_l(15) <= RESIZE(u0_m0_wo0_cma0_a0(15),16) + RESIZE(u0_m0_wo0_cma0_b0(15),16);
    u0_m0_wo0_cma0_l(16) <= RESIZE(u0_m0_wo0_cma0_a0(16),16) + RESIZE(u0_m0_wo0_cma0_b0(16),16);
    u0_m0_wo0_cma0_l(17) <= RESIZE(u0_m0_wo0_cma0_a0(17),16) + RESIZE(u0_m0_wo0_cma0_b0(17),16);
    u0_m0_wo0_cma0_l(18) <= RESIZE(u0_m0_wo0_cma0_a0(18),16) + RESIZE(u0_m0_wo0_cma0_b0(18),16);
    u0_m0_wo0_cma0_l(19) <= RESIZE(u0_m0_wo0_cma0_a0(19),16) + RESIZE(u0_m0_wo0_cma0_b0(19),16);
    u0_m0_wo0_cma0_l(20) <= RESIZE(u0_m0_wo0_cma0_a0(20),16) + RESIZE(u0_m0_wo0_cma0_b0(20),16);
    u0_m0_wo0_cma0_l(21) <= RESIZE(u0_m0_wo0_cma0_a0(21),16) + RESIZE(u0_m0_wo0_cma0_b0(21),16);
    u0_m0_wo0_cma0_l(22) <= RESIZE(u0_m0_wo0_cma0_a0(22),16) + RESIZE(u0_m0_wo0_cma0_b0(22),16);
    u0_m0_wo0_cma0_l(23) <= RESIZE(u0_m0_wo0_cma0_a0(23),16) + RESIZE(u0_m0_wo0_cma0_b0(23),16);
    u0_m0_wo0_cma0_l(24) <= RESIZE(u0_m0_wo0_cma0_a0(24),16) + RESIZE(u0_m0_wo0_cma0_b0(24),16);
    u0_m0_wo0_cma0_l(25) <= RESIZE(u0_m0_wo0_cma0_a0(25),16) + RESIZE(u0_m0_wo0_cma0_b0(25),16);
    u0_m0_wo0_cma0_l(26) <= RESIZE(u0_m0_wo0_cma0_a0(26),16) + RESIZE(u0_m0_wo0_cma0_b0(26),16);
    u0_m0_wo0_cma0_l(27) <= RESIZE(u0_m0_wo0_cma0_a0(27),16) + RESIZE(u0_m0_wo0_cma0_b0(27),16);
    u0_m0_wo0_cma0_l(28) <= RESIZE(u0_m0_wo0_cma0_a0(28),16) + RESIZE(u0_m0_wo0_cma0_b0(28),16);
    u0_m0_wo0_cma0_l(29) <= RESIZE(u0_m0_wo0_cma0_a0(29),16) + RESIZE(u0_m0_wo0_cma0_b0(29),16);
    u0_m0_wo0_cma0_l(30) <= RESIZE(u0_m0_wo0_cma0_a0(30),16) + RESIZE(u0_m0_wo0_cma0_b0(30),16);
    u0_m0_wo0_cma0_l(31) <= RESIZE(u0_m0_wo0_cma0_a0(31),16) + RESIZE(u0_m0_wo0_cma0_b0(31),16);
    -- altera synthesis_off
    u0_m0_wo0_cma0_k0 <= (
        0 => TO_SIGNED(-732,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k1 <= (
        0 => TO_SIGNED(-1938,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k2 <= (
        0 => TO_SIGNED(-2423,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k3 <= (
        0 => TO_SIGNED(-1983,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k4 <= (
        0 => TO_SIGNED(-766,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k5 <= (
        0 => TO_SIGNED(775,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k6 <= (
        0 => TO_SIGNED(2054,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k7 <= (
        0 => TO_SIGNED(2570,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k8 <= (
        0 => TO_SIGNED(2105,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k9 <= (
        0 => TO_SIGNED(814,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k10 <= (
        0 => TO_SIGNED(-824,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k11 <= (
        0 => TO_SIGNED(-2185,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k12 <= (
        0 => TO_SIGNED(-2736,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k13 <= (
        0 => TO_SIGNED(-2242,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k14 <= (
        0 => TO_SIGNED(-868,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k15 <= (
        0 => TO_SIGNED(879,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k16 <= (
        0 => TO_SIGNED(2334,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k17 <= (
        0 => TO_SIGNED(2925,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k18 <= (
        0 => TO_SIGNED(2399,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k19 <= (
        0 => TO_SIGNED(929,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k20 <= (
        0 => TO_SIGNED(-942,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k21 <= (
        0 => TO_SIGNED(-2504,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k22 <= (
        0 => TO_SIGNED(-3141,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k23 <= (
        0 => TO_SIGNED(-2580,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k24 <= (
        0 => TO_SIGNED(-1000,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k25 <= (
        0 => TO_SIGNED(1016,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k26 <= (
        0 => TO_SIGNED(2701,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k27 <= (
        0 => TO_SIGNED(3393,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k28 <= (
        0 => TO_SIGNED(2789,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k29 <= (
        0 => TO_SIGNED(1083,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k30 <= (
        0 => TO_SIGNED(-1101,13),
        others => (others => '0'));
    u0_m0_wo0_cma0_k31 <= (
        0 => TO_SIGNED(-2932,13),
        others => (others => '0'));
    -- altera synthesis_on
    u0_m0_wo0_cma0_r(0) <= u0_m0_wo0_cma0_k0(TO_INTEGER(u0_m0_wo0_cma0_c0(0)));
    u0_m0_wo0_cma0_r(1) <= u0_m0_wo0_cma0_k1(TO_INTEGER(u0_m0_wo0_cma0_c0(1)));
    u0_m0_wo0_cma0_r(2) <= u0_m0_wo0_cma0_k2(TO_INTEGER(u0_m0_wo0_cma0_c0(2)));
    u0_m0_wo0_cma0_r(3) <= u0_m0_wo0_cma0_k3(TO_INTEGER(u0_m0_wo0_cma0_c0(3)));
    u0_m0_wo0_cma0_r(4) <= u0_m0_wo0_cma0_k4(TO_INTEGER(u0_m0_wo0_cma0_c0(4)));
    u0_m0_wo0_cma0_r(5) <= u0_m0_wo0_cma0_k5(TO_INTEGER(u0_m0_wo0_cma0_c0(5)));
    u0_m0_wo0_cma0_r(6) <= u0_m0_wo0_cma0_k6(TO_INTEGER(u0_m0_wo0_cma0_c0(6)));
    u0_m0_wo0_cma0_r(7) <= u0_m0_wo0_cma0_k7(TO_INTEGER(u0_m0_wo0_cma0_c0(7)));
    u0_m0_wo0_cma0_r(8) <= u0_m0_wo0_cma0_k8(TO_INTEGER(u0_m0_wo0_cma0_c0(8)));
    u0_m0_wo0_cma0_r(9) <= u0_m0_wo0_cma0_k9(TO_INTEGER(u0_m0_wo0_cma0_c0(9)));
    u0_m0_wo0_cma0_r(10) <= u0_m0_wo0_cma0_k10(TO_INTEGER(u0_m0_wo0_cma0_c0(10)));
    u0_m0_wo0_cma0_r(11) <= u0_m0_wo0_cma0_k11(TO_INTEGER(u0_m0_wo0_cma0_c0(11)));
    u0_m0_wo0_cma0_r(12) <= u0_m0_wo0_cma0_k12(TO_INTEGER(u0_m0_wo0_cma0_c0(12)));
    u0_m0_wo0_cma0_r(13) <= u0_m0_wo0_cma0_k13(TO_INTEGER(u0_m0_wo0_cma0_c0(13)));
    u0_m0_wo0_cma0_r(14) <= u0_m0_wo0_cma0_k14(TO_INTEGER(u0_m0_wo0_cma0_c0(14)));
    u0_m0_wo0_cma0_r(15) <= u0_m0_wo0_cma0_k15(TO_INTEGER(u0_m0_wo0_cma0_c0(15)));
    u0_m0_wo0_cma0_r(16) <= u0_m0_wo0_cma0_k16(TO_INTEGER(u0_m0_wo0_cma0_c0(16)));
    u0_m0_wo0_cma0_r(17) <= u0_m0_wo0_cma0_k17(TO_INTEGER(u0_m0_wo0_cma0_c0(17)));
    u0_m0_wo0_cma0_r(18) <= u0_m0_wo0_cma0_k18(TO_INTEGER(u0_m0_wo0_cma0_c0(18)));
    u0_m0_wo0_cma0_r(19) <= u0_m0_wo0_cma0_k19(TO_INTEGER(u0_m0_wo0_cma0_c0(19)));
    u0_m0_wo0_cma0_r(20) <= u0_m0_wo0_cma0_k20(TO_INTEGER(u0_m0_wo0_cma0_c0(20)));
    u0_m0_wo0_cma0_r(21) <= u0_m0_wo0_cma0_k21(TO_INTEGER(u0_m0_wo0_cma0_c0(21)));
    u0_m0_wo0_cma0_r(22) <= u0_m0_wo0_cma0_k22(TO_INTEGER(u0_m0_wo0_cma0_c0(22)));
    u0_m0_wo0_cma0_r(23) <= u0_m0_wo0_cma0_k23(TO_INTEGER(u0_m0_wo0_cma0_c0(23)));
    u0_m0_wo0_cma0_r(24) <= u0_m0_wo0_cma0_k24(TO_INTEGER(u0_m0_wo0_cma0_c0(24)));
    u0_m0_wo0_cma0_r(25) <= u0_m0_wo0_cma0_k25(TO_INTEGER(u0_m0_wo0_cma0_c0(25)));
    u0_m0_wo0_cma0_r(26) <= u0_m0_wo0_cma0_k26(TO_INTEGER(u0_m0_wo0_cma0_c0(26)));
    u0_m0_wo0_cma0_r(27) <= u0_m0_wo0_cma0_k27(TO_INTEGER(u0_m0_wo0_cma0_c0(27)));
    u0_m0_wo0_cma0_r(28) <= u0_m0_wo0_cma0_k28(TO_INTEGER(u0_m0_wo0_cma0_c0(28)));
    u0_m0_wo0_cma0_r(29) <= u0_m0_wo0_cma0_k29(TO_INTEGER(u0_m0_wo0_cma0_c0(29)));
    u0_m0_wo0_cma0_r(30) <= u0_m0_wo0_cma0_k30(TO_INTEGER(u0_m0_wo0_cma0_c0(30)));
    u0_m0_wo0_cma0_r(31) <= u0_m0_wo0_cma0_k31(TO_INTEGER(u0_m0_wo0_cma0_c0(31)));
    u0_m0_wo0_cma0_p(0) <= u0_m0_wo0_cma0_l(0) * u0_m0_wo0_cma0_r(0);
    u0_m0_wo0_cma0_p(1) <= u0_m0_wo0_cma0_l(1) * u0_m0_wo0_cma0_r(1);
    u0_m0_wo0_cma0_p(2) <= u0_m0_wo0_cma0_l(2) * u0_m0_wo0_cma0_r(2);
    u0_m0_wo0_cma0_p(3) <= u0_m0_wo0_cma0_l(3) * u0_m0_wo0_cma0_r(3);
    u0_m0_wo0_cma0_p(4) <= u0_m0_wo0_cma0_l(4) * u0_m0_wo0_cma0_r(4);
    u0_m0_wo0_cma0_p(5) <= u0_m0_wo0_cma0_l(5) * u0_m0_wo0_cma0_r(5);
    u0_m0_wo0_cma0_p(6) <= u0_m0_wo0_cma0_l(6) * u0_m0_wo0_cma0_r(6);
    u0_m0_wo0_cma0_p(7) <= u0_m0_wo0_cma0_l(7) * u0_m0_wo0_cma0_r(7);
    u0_m0_wo0_cma0_p(8) <= u0_m0_wo0_cma0_l(8) * u0_m0_wo0_cma0_r(8);
    u0_m0_wo0_cma0_p(9) <= u0_m0_wo0_cma0_l(9) * u0_m0_wo0_cma0_r(9);
    u0_m0_wo0_cma0_p(10) <= u0_m0_wo0_cma0_l(10) * u0_m0_wo0_cma0_r(10);
    u0_m0_wo0_cma0_p(11) <= u0_m0_wo0_cma0_l(11) * u0_m0_wo0_cma0_r(11);
    u0_m0_wo0_cma0_p(12) <= u0_m0_wo0_cma0_l(12) * u0_m0_wo0_cma0_r(12);
    u0_m0_wo0_cma0_p(13) <= u0_m0_wo0_cma0_l(13) * u0_m0_wo0_cma0_r(13);
    u0_m0_wo0_cma0_p(14) <= u0_m0_wo0_cma0_l(14) * u0_m0_wo0_cma0_r(14);
    u0_m0_wo0_cma0_p(15) <= u0_m0_wo0_cma0_l(15) * u0_m0_wo0_cma0_r(15);
    u0_m0_wo0_cma0_p(16) <= u0_m0_wo0_cma0_l(16) * u0_m0_wo0_cma0_r(16);
    u0_m0_wo0_cma0_p(17) <= u0_m0_wo0_cma0_l(17) * u0_m0_wo0_cma0_r(17);
    u0_m0_wo0_cma0_p(18) <= u0_m0_wo0_cma0_l(18) * u0_m0_wo0_cma0_r(18);
    u0_m0_wo0_cma0_p(19) <= u0_m0_wo0_cma0_l(19) * u0_m0_wo0_cma0_r(19);
    u0_m0_wo0_cma0_p(20) <= u0_m0_wo0_cma0_l(20) * u0_m0_wo0_cma0_r(20);
    u0_m0_wo0_cma0_p(21) <= u0_m0_wo0_cma0_l(21) * u0_m0_wo0_cma0_r(21);
    u0_m0_wo0_cma0_p(22) <= u0_m0_wo0_cma0_l(22) * u0_m0_wo0_cma0_r(22);
    u0_m0_wo0_cma0_p(23) <= u0_m0_wo0_cma0_l(23) * u0_m0_wo0_cma0_r(23);
    u0_m0_wo0_cma0_p(24) <= u0_m0_wo0_cma0_l(24) * u0_m0_wo0_cma0_r(24);
    u0_m0_wo0_cma0_p(25) <= u0_m0_wo0_cma0_l(25) * u0_m0_wo0_cma0_r(25);
    u0_m0_wo0_cma0_p(26) <= u0_m0_wo0_cma0_l(26) * u0_m0_wo0_cma0_r(26);
    u0_m0_wo0_cma0_p(27) <= u0_m0_wo0_cma0_l(27) * u0_m0_wo0_cma0_r(27);
    u0_m0_wo0_cma0_p(28) <= u0_m0_wo0_cma0_l(28) * u0_m0_wo0_cma0_r(28);
    u0_m0_wo0_cma0_p(29) <= u0_m0_wo0_cma0_l(29) * u0_m0_wo0_cma0_r(29);
    u0_m0_wo0_cma0_p(30) <= u0_m0_wo0_cma0_l(30) * u0_m0_wo0_cma0_r(30);
    u0_m0_wo0_cma0_p(31) <= u0_m0_wo0_cma0_l(31) * u0_m0_wo0_cma0_r(31);
    u0_m0_wo0_cma0_u(0) <= RESIZE(u0_m0_wo0_cma0_p(0),34);
    u0_m0_wo0_cma0_u(1) <= RESIZE(u0_m0_wo0_cma0_p(1),34);
    u0_m0_wo0_cma0_u(2) <= RESIZE(u0_m0_wo0_cma0_p(2),34);
    u0_m0_wo0_cma0_u(3) <= RESIZE(u0_m0_wo0_cma0_p(3),34);
    u0_m0_wo0_cma0_u(4) <= RESIZE(u0_m0_wo0_cma0_p(4),34);
    u0_m0_wo0_cma0_u(5) <= RESIZE(u0_m0_wo0_cma0_p(5),34);
    u0_m0_wo0_cma0_u(6) <= RESIZE(u0_m0_wo0_cma0_p(6),34);
    u0_m0_wo0_cma0_u(7) <= RESIZE(u0_m0_wo0_cma0_p(7),34);
    u0_m0_wo0_cma0_u(8) <= RESIZE(u0_m0_wo0_cma0_p(8),34);
    u0_m0_wo0_cma0_u(9) <= RESIZE(u0_m0_wo0_cma0_p(9),34);
    u0_m0_wo0_cma0_u(10) <= RESIZE(u0_m0_wo0_cma0_p(10),34);
    u0_m0_wo0_cma0_u(11) <= RESIZE(u0_m0_wo0_cma0_p(11),34);
    u0_m0_wo0_cma0_u(12) <= RESIZE(u0_m0_wo0_cma0_p(12),34);
    u0_m0_wo0_cma0_u(13) <= RESIZE(u0_m0_wo0_cma0_p(13),34);
    u0_m0_wo0_cma0_u(14) <= RESIZE(u0_m0_wo0_cma0_p(14),34);
    u0_m0_wo0_cma0_u(15) <= RESIZE(u0_m0_wo0_cma0_p(15),34);
    u0_m0_wo0_cma0_u(16) <= RESIZE(u0_m0_wo0_cma0_p(16),34);
    u0_m0_wo0_cma0_u(17) <= RESIZE(u0_m0_wo0_cma0_p(17),34);
    u0_m0_wo0_cma0_u(18) <= RESIZE(u0_m0_wo0_cma0_p(18),34);
    u0_m0_wo0_cma0_u(19) <= RESIZE(u0_m0_wo0_cma0_p(19),34);
    u0_m0_wo0_cma0_u(20) <= RESIZE(u0_m0_wo0_cma0_p(20),34);
    u0_m0_wo0_cma0_u(21) <= RESIZE(u0_m0_wo0_cma0_p(21),34);
    u0_m0_wo0_cma0_u(22) <= RESIZE(u0_m0_wo0_cma0_p(22),34);
    u0_m0_wo0_cma0_u(23) <= RESIZE(u0_m0_wo0_cma0_p(23),34);
    u0_m0_wo0_cma0_u(24) <= RESIZE(u0_m0_wo0_cma0_p(24),34);
    u0_m0_wo0_cma0_u(25) <= RESIZE(u0_m0_wo0_cma0_p(25),34);
    u0_m0_wo0_cma0_u(26) <= RESIZE(u0_m0_wo0_cma0_p(26),34);
    u0_m0_wo0_cma0_u(27) <= RESIZE(u0_m0_wo0_cma0_p(27),34);
    u0_m0_wo0_cma0_u(28) <= RESIZE(u0_m0_wo0_cma0_p(28),34);
    u0_m0_wo0_cma0_u(29) <= RESIZE(u0_m0_wo0_cma0_p(29),34);
    u0_m0_wo0_cma0_u(30) <= RESIZE(u0_m0_wo0_cma0_p(30),34);
    u0_m0_wo0_cma0_u(31) <= RESIZE(u0_m0_wo0_cma0_p(31),34);
    u0_m0_wo0_cma0_w(0) <= u0_m0_wo0_cma0_u(0);
    u0_m0_wo0_cma0_w(1) <= u0_m0_wo0_cma0_u(1);
    u0_m0_wo0_cma0_w(2) <= u0_m0_wo0_cma0_u(2);
    u0_m0_wo0_cma0_w(3) <= u0_m0_wo0_cma0_u(3);
    u0_m0_wo0_cma0_w(4) <= u0_m0_wo0_cma0_u(4);
    u0_m0_wo0_cma0_w(5) <= u0_m0_wo0_cma0_u(5);
    u0_m0_wo0_cma0_w(6) <= u0_m0_wo0_cma0_u(6);
    u0_m0_wo0_cma0_w(7) <= u0_m0_wo0_cma0_u(7);
    u0_m0_wo0_cma0_w(8) <= u0_m0_wo0_cma0_u(8);
    u0_m0_wo0_cma0_w(9) <= u0_m0_wo0_cma0_u(9);
    u0_m0_wo0_cma0_w(10) <= u0_m0_wo0_cma0_u(10);
    u0_m0_wo0_cma0_w(11) <= u0_m0_wo0_cma0_u(11);
    u0_m0_wo0_cma0_w(12) <= u0_m0_wo0_cma0_u(12);
    u0_m0_wo0_cma0_w(13) <= u0_m0_wo0_cma0_u(13);
    u0_m0_wo0_cma0_w(14) <= u0_m0_wo0_cma0_u(14);
    u0_m0_wo0_cma0_w(15) <= u0_m0_wo0_cma0_u(15);
    u0_m0_wo0_cma0_w(16) <= u0_m0_wo0_cma0_u(16);
    u0_m0_wo0_cma0_w(17) <= u0_m0_wo0_cma0_u(17);
    u0_m0_wo0_cma0_w(18) <= u0_m0_wo0_cma0_u(18);
    u0_m0_wo0_cma0_w(19) <= u0_m0_wo0_cma0_u(19);
    u0_m0_wo0_cma0_w(20) <= u0_m0_wo0_cma0_u(20);
    u0_m0_wo0_cma0_w(21) <= u0_m0_wo0_cma0_u(21);
    u0_m0_wo0_cma0_w(22) <= u0_m0_wo0_cma0_u(22);
    u0_m0_wo0_cma0_w(23) <= u0_m0_wo0_cma0_u(23);
    u0_m0_wo0_cma0_w(24) <= u0_m0_wo0_cma0_u(24);
    u0_m0_wo0_cma0_w(25) <= u0_m0_wo0_cma0_u(25);
    u0_m0_wo0_cma0_w(26) <= u0_m0_wo0_cma0_u(26);
    u0_m0_wo0_cma0_w(27) <= u0_m0_wo0_cma0_u(27);
    u0_m0_wo0_cma0_w(28) <= u0_m0_wo0_cma0_u(28);
    u0_m0_wo0_cma0_w(29) <= u0_m0_wo0_cma0_u(29);
    u0_m0_wo0_cma0_w(30) <= u0_m0_wo0_cma0_u(30);
    u0_m0_wo0_cma0_w(31) <= u0_m0_wo0_cma0_u(31);
    u0_m0_wo0_cma0_x(0) <= u0_m0_wo0_cma0_w(0);
    u0_m0_wo0_cma0_x(1) <= u0_m0_wo0_cma0_w(1);
    u0_m0_wo0_cma0_x(2) <= u0_m0_wo0_cma0_w(2);
    u0_m0_wo0_cma0_x(3) <= u0_m0_wo0_cma0_w(3);
    u0_m0_wo0_cma0_x(4) <= u0_m0_wo0_cma0_w(4);
    u0_m0_wo0_cma0_x(5) <= u0_m0_wo0_cma0_w(5);
    u0_m0_wo0_cma0_x(6) <= u0_m0_wo0_cma0_w(6);
    u0_m0_wo0_cma0_x(7) <= u0_m0_wo0_cma0_w(7);
    u0_m0_wo0_cma0_x(8) <= u0_m0_wo0_cma0_w(8);
    u0_m0_wo0_cma0_x(9) <= u0_m0_wo0_cma0_w(9);
    u0_m0_wo0_cma0_x(10) <= u0_m0_wo0_cma0_w(10);
    u0_m0_wo0_cma0_x(11) <= u0_m0_wo0_cma0_w(11);
    u0_m0_wo0_cma0_x(12) <= u0_m0_wo0_cma0_w(12);
    u0_m0_wo0_cma0_x(13) <= u0_m0_wo0_cma0_w(13);
    u0_m0_wo0_cma0_x(14) <= u0_m0_wo0_cma0_w(14);
    u0_m0_wo0_cma0_x(15) <= u0_m0_wo0_cma0_w(15);
    u0_m0_wo0_cma0_x(16) <= u0_m0_wo0_cma0_w(16);
    u0_m0_wo0_cma0_x(17) <= u0_m0_wo0_cma0_w(17);
    u0_m0_wo0_cma0_x(18) <= u0_m0_wo0_cma0_w(18);
    u0_m0_wo0_cma0_x(19) <= u0_m0_wo0_cma0_w(19);
    u0_m0_wo0_cma0_x(20) <= u0_m0_wo0_cma0_w(20);
    u0_m0_wo0_cma0_x(21) <= u0_m0_wo0_cma0_w(21);
    u0_m0_wo0_cma0_x(22) <= u0_m0_wo0_cma0_w(22);
    u0_m0_wo0_cma0_x(23) <= u0_m0_wo0_cma0_w(23);
    u0_m0_wo0_cma0_x(24) <= u0_m0_wo0_cma0_w(24);
    u0_m0_wo0_cma0_x(25) <= u0_m0_wo0_cma0_w(25);
    u0_m0_wo0_cma0_x(26) <= u0_m0_wo0_cma0_w(26);
    u0_m0_wo0_cma0_x(27) <= u0_m0_wo0_cma0_w(27);
    u0_m0_wo0_cma0_x(28) <= u0_m0_wo0_cma0_w(28);
    u0_m0_wo0_cma0_x(29) <= u0_m0_wo0_cma0_w(29);
    u0_m0_wo0_cma0_x(30) <= u0_m0_wo0_cma0_w(30);
    u0_m0_wo0_cma0_x(31) <= u0_m0_wo0_cma0_w(31);
    u0_m0_wo0_cma0_y(0) <= u0_m0_wo0_cma0_s(1) + u0_m0_wo0_cma0_x(0);
    u0_m0_wo0_cma0_y(1) <= u0_m0_wo0_cma0_s(2) + u0_m0_wo0_cma0_x(1);
    u0_m0_wo0_cma0_y(2) <= u0_m0_wo0_cma0_s(3) + u0_m0_wo0_cma0_x(2);
    u0_m0_wo0_cma0_y(3) <= u0_m0_wo0_cma0_s(4) + u0_m0_wo0_cma0_x(3);
    u0_m0_wo0_cma0_y(4) <= u0_m0_wo0_cma0_s(5) + u0_m0_wo0_cma0_x(4);
    u0_m0_wo0_cma0_y(5) <= u0_m0_wo0_cma0_s(6) + u0_m0_wo0_cma0_x(5);
    u0_m0_wo0_cma0_y(6) <= u0_m0_wo0_cma0_s(7) + u0_m0_wo0_cma0_x(6);
    u0_m0_wo0_cma0_y(7) <= u0_m0_wo0_cma0_s(8) + u0_m0_wo0_cma0_x(7);
    u0_m0_wo0_cma0_y(8) <= u0_m0_wo0_cma0_s(9) + u0_m0_wo0_cma0_x(8);
    u0_m0_wo0_cma0_y(9) <= u0_m0_wo0_cma0_s(10) + u0_m0_wo0_cma0_x(9);
    u0_m0_wo0_cma0_y(10) <= u0_m0_wo0_cma0_s(11) + u0_m0_wo0_cma0_x(10);
    u0_m0_wo0_cma0_y(11) <= u0_m0_wo0_cma0_s(12) + u0_m0_wo0_cma0_x(11);
    u0_m0_wo0_cma0_y(12) <= u0_m0_wo0_cma0_s(13) + u0_m0_wo0_cma0_x(12);
    u0_m0_wo0_cma0_y(13) <= u0_m0_wo0_cma0_s(14) + u0_m0_wo0_cma0_x(13);
    u0_m0_wo0_cma0_y(14) <= u0_m0_wo0_cma0_s(15) + u0_m0_wo0_cma0_x(14);
    u0_m0_wo0_cma0_y(15) <= u0_m0_wo0_cma0_s(16) + u0_m0_wo0_cma0_x(15);
    u0_m0_wo0_cma0_y(16) <= u0_m0_wo0_cma0_s(17) + u0_m0_wo0_cma0_x(16);
    u0_m0_wo0_cma0_y(17) <= u0_m0_wo0_cma0_s(18) + u0_m0_wo0_cma0_x(17);
    u0_m0_wo0_cma0_y(18) <= u0_m0_wo0_cma0_s(19) + u0_m0_wo0_cma0_x(18);
    u0_m0_wo0_cma0_y(19) <= u0_m0_wo0_cma0_s(20) + u0_m0_wo0_cma0_x(19);
    u0_m0_wo0_cma0_y(20) <= u0_m0_wo0_cma0_s(21) + u0_m0_wo0_cma0_x(20);
    u0_m0_wo0_cma0_y(21) <= u0_m0_wo0_cma0_s(22) + u0_m0_wo0_cma0_x(21);
    u0_m0_wo0_cma0_y(22) <= u0_m0_wo0_cma0_s(23) + u0_m0_wo0_cma0_x(22);
    u0_m0_wo0_cma0_y(23) <= u0_m0_wo0_cma0_s(24) + u0_m0_wo0_cma0_x(23);
    u0_m0_wo0_cma0_y(24) <= u0_m0_wo0_cma0_s(25) + u0_m0_wo0_cma0_x(24);
    u0_m0_wo0_cma0_y(25) <= u0_m0_wo0_cma0_s(26) + u0_m0_wo0_cma0_x(25);
    u0_m0_wo0_cma0_y(26) <= u0_m0_wo0_cma0_s(27) + u0_m0_wo0_cma0_x(26);
    u0_m0_wo0_cma0_y(27) <= u0_m0_wo0_cma0_s(28) + u0_m0_wo0_cma0_x(27);
    u0_m0_wo0_cma0_y(28) <= u0_m0_wo0_cma0_s(29) + u0_m0_wo0_cma0_x(28);
    u0_m0_wo0_cma0_y(29) <= u0_m0_wo0_cma0_s(30) + u0_m0_wo0_cma0_x(29);
    u0_m0_wo0_cma0_y(30) <= u0_m0_wo0_cma0_s(31) + u0_m0_wo0_cma0_x(30);
    u0_m0_wo0_cma0_y(31) <= u0_m0_wo0_cma0_x(31);
    u0_m0_wo0_cma0_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cma0_a0 <= (others => (others => '0'));
            u0_m0_wo0_cma0_b0 <= (others => (others => '0'));
            u0_m0_wo0_cma0_c0 <= (others => (others => '0'));
            u0_m0_wo0_cma0_d <= (others => (others => '0'));
            u0_m0_wo0_cma0_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_cma0_a0(0) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(1) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(2) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(3) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(4) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(5) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(6) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(7) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(8) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(9) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(10) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(11) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(12) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(13) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(14) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(15) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(16) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(17) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(18) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(19) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(20) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(21) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(22) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(23) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(24) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(25) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(26) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(27) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(28) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(29) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(30) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_a0(31) <= RESIZE(SIGNED(xIn_0),15);
                u0_m0_wo0_cma0_b0(0) <= u0_m0_wo0_cma0_d(1);
                u0_m0_wo0_cma0_b0(1) <= u0_m0_wo0_cma0_d(2);
                u0_m0_wo0_cma0_b0(2) <= u0_m0_wo0_cma0_d(3);
                u0_m0_wo0_cma0_b0(3) <= u0_m0_wo0_cma0_d(4);
                u0_m0_wo0_cma0_b0(4) <= u0_m0_wo0_cma0_d(5);
                u0_m0_wo0_cma0_b0(5) <= u0_m0_wo0_cma0_d(6);
                u0_m0_wo0_cma0_b0(6) <= u0_m0_wo0_cma0_d(7);
                u0_m0_wo0_cma0_b0(7) <= u0_m0_wo0_cma0_d(8);
                u0_m0_wo0_cma0_b0(8) <= u0_m0_wo0_cma0_d(9);
                u0_m0_wo0_cma0_b0(9) <= u0_m0_wo0_cma0_d(10);
                u0_m0_wo0_cma0_b0(10) <= u0_m0_wo0_cma0_d(11);
                u0_m0_wo0_cma0_b0(11) <= u0_m0_wo0_cma0_d(12);
                u0_m0_wo0_cma0_b0(12) <= u0_m0_wo0_cma0_d(13);
                u0_m0_wo0_cma0_b0(13) <= u0_m0_wo0_cma0_d(14);
                u0_m0_wo0_cma0_b0(14) <= u0_m0_wo0_cma0_d(15);
                u0_m0_wo0_cma0_b0(15) <= u0_m0_wo0_cma0_d(16);
                u0_m0_wo0_cma0_b0(16) <= u0_m0_wo0_cma0_d(17);
                u0_m0_wo0_cma0_b0(17) <= u0_m0_wo0_cma0_d(18);
                u0_m0_wo0_cma0_b0(18) <= u0_m0_wo0_cma0_d(19);
                u0_m0_wo0_cma0_b0(19) <= u0_m0_wo0_cma0_d(20);
                u0_m0_wo0_cma0_b0(20) <= u0_m0_wo0_cma0_d(21);
                u0_m0_wo0_cma0_b0(21) <= u0_m0_wo0_cma0_d(22);
                u0_m0_wo0_cma0_b0(22) <= u0_m0_wo0_cma0_d(23);
                u0_m0_wo0_cma0_b0(23) <= u0_m0_wo0_cma0_d(24);
                u0_m0_wo0_cma0_b0(24) <= u0_m0_wo0_cma0_d(25);
                u0_m0_wo0_cma0_b0(25) <= u0_m0_wo0_cma0_d(26);
                u0_m0_wo0_cma0_b0(26) <= u0_m0_wo0_cma0_d(27);
                u0_m0_wo0_cma0_b0(27) <= u0_m0_wo0_cma0_d(28);
                u0_m0_wo0_cma0_b0(28) <= u0_m0_wo0_cma0_d(29);
                u0_m0_wo0_cma0_b0(29) <= u0_m0_wo0_cma0_d(30);
                u0_m0_wo0_cma0_b0(30) <= u0_m0_wo0_cma0_d(31);
                u0_m0_wo0_cma0_b0(31) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_delayr148_q),15);
                u0_m0_wo0_cma0_c0(0) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(1) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(2) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(3) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(4) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(5) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(6) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(7) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(8) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(9) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(10) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(11) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(12) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(13) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(14) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(15) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(16) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(17) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(18) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(19) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(20) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(21) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(22) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(23) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(24) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(25) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(26) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(27) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(28) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(29) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(30) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(31) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_d(0) <= u0_m0_wo0_cma0_b0(0);
                u0_m0_wo0_cma0_d(1) <= u0_m0_wo0_cma0_b0(1);
                u0_m0_wo0_cma0_d(2) <= u0_m0_wo0_cma0_b0(2);
                u0_m0_wo0_cma0_d(3) <= u0_m0_wo0_cma0_b0(3);
                u0_m0_wo0_cma0_d(4) <= u0_m0_wo0_cma0_b0(4);
                u0_m0_wo0_cma0_d(5) <= u0_m0_wo0_cma0_b0(5);
                u0_m0_wo0_cma0_d(6) <= u0_m0_wo0_cma0_b0(6);
                u0_m0_wo0_cma0_d(7) <= u0_m0_wo0_cma0_b0(7);
                u0_m0_wo0_cma0_d(8) <= u0_m0_wo0_cma0_b0(8);
                u0_m0_wo0_cma0_d(9) <= u0_m0_wo0_cma0_b0(9);
                u0_m0_wo0_cma0_d(10) <= u0_m0_wo0_cma0_b0(10);
                u0_m0_wo0_cma0_d(11) <= u0_m0_wo0_cma0_b0(11);
                u0_m0_wo0_cma0_d(12) <= u0_m0_wo0_cma0_b0(12);
                u0_m0_wo0_cma0_d(13) <= u0_m0_wo0_cma0_b0(13);
                u0_m0_wo0_cma0_d(14) <= u0_m0_wo0_cma0_b0(14);
                u0_m0_wo0_cma0_d(15) <= u0_m0_wo0_cma0_b0(15);
                u0_m0_wo0_cma0_d(16) <= u0_m0_wo0_cma0_b0(16);
                u0_m0_wo0_cma0_d(17) <= u0_m0_wo0_cma0_b0(17);
                u0_m0_wo0_cma0_d(18) <= u0_m0_wo0_cma0_b0(18);
                u0_m0_wo0_cma0_d(19) <= u0_m0_wo0_cma0_b0(19);
                u0_m0_wo0_cma0_d(20) <= u0_m0_wo0_cma0_b0(20);
                u0_m0_wo0_cma0_d(21) <= u0_m0_wo0_cma0_b0(21);
                u0_m0_wo0_cma0_d(22) <= u0_m0_wo0_cma0_b0(22);
                u0_m0_wo0_cma0_d(23) <= u0_m0_wo0_cma0_b0(23);
                u0_m0_wo0_cma0_d(24) <= u0_m0_wo0_cma0_b0(24);
                u0_m0_wo0_cma0_d(25) <= u0_m0_wo0_cma0_b0(25);
                u0_m0_wo0_cma0_d(26) <= u0_m0_wo0_cma0_b0(26);
                u0_m0_wo0_cma0_d(27) <= u0_m0_wo0_cma0_b0(27);
                u0_m0_wo0_cma0_d(28) <= u0_m0_wo0_cma0_b0(28);
                u0_m0_wo0_cma0_d(29) <= u0_m0_wo0_cma0_b0(29);
                u0_m0_wo0_cma0_d(30) <= u0_m0_wo0_cma0_b0(30);
                u0_m0_wo0_cma0_d(31) <= u0_m0_wo0_cma0_b0(31);
            END IF;
            IF (d_u0_m0_wo0_compute_q_11_q = "1") THEN
                u0_m0_wo0_cma0_s(0) <= u0_m0_wo0_cma0_y(0);
                u0_m0_wo0_cma0_s(1) <= u0_m0_wo0_cma0_y(1);
                u0_m0_wo0_cma0_s(2) <= u0_m0_wo0_cma0_y(2);
                u0_m0_wo0_cma0_s(3) <= u0_m0_wo0_cma0_y(3);
                u0_m0_wo0_cma0_s(4) <= u0_m0_wo0_cma0_y(4);
                u0_m0_wo0_cma0_s(5) <= u0_m0_wo0_cma0_y(5);
                u0_m0_wo0_cma0_s(6) <= u0_m0_wo0_cma0_y(6);
                u0_m0_wo0_cma0_s(7) <= u0_m0_wo0_cma0_y(7);
                u0_m0_wo0_cma0_s(8) <= u0_m0_wo0_cma0_y(8);
                u0_m0_wo0_cma0_s(9) <= u0_m0_wo0_cma0_y(9);
                u0_m0_wo0_cma0_s(10) <= u0_m0_wo0_cma0_y(10);
                u0_m0_wo0_cma0_s(11) <= u0_m0_wo0_cma0_y(11);
                u0_m0_wo0_cma0_s(12) <= u0_m0_wo0_cma0_y(12);
                u0_m0_wo0_cma0_s(13) <= u0_m0_wo0_cma0_y(13);
                u0_m0_wo0_cma0_s(14) <= u0_m0_wo0_cma0_y(14);
                u0_m0_wo0_cma0_s(15) <= u0_m0_wo0_cma0_y(15);
                u0_m0_wo0_cma0_s(16) <= u0_m0_wo0_cma0_y(16);
                u0_m0_wo0_cma0_s(17) <= u0_m0_wo0_cma0_y(17);
                u0_m0_wo0_cma0_s(18) <= u0_m0_wo0_cma0_y(18);
                u0_m0_wo0_cma0_s(19) <= u0_m0_wo0_cma0_y(19);
                u0_m0_wo0_cma0_s(20) <= u0_m0_wo0_cma0_y(20);
                u0_m0_wo0_cma0_s(21) <= u0_m0_wo0_cma0_y(21);
                u0_m0_wo0_cma0_s(22) <= u0_m0_wo0_cma0_y(22);
                u0_m0_wo0_cma0_s(23) <= u0_m0_wo0_cma0_y(23);
                u0_m0_wo0_cma0_s(24) <= u0_m0_wo0_cma0_y(24);
                u0_m0_wo0_cma0_s(25) <= u0_m0_wo0_cma0_y(25);
                u0_m0_wo0_cma0_s(26) <= u0_m0_wo0_cma0_y(26);
                u0_m0_wo0_cma0_s(27) <= u0_m0_wo0_cma0_y(27);
                u0_m0_wo0_cma0_s(28) <= u0_m0_wo0_cma0_y(28);
                u0_m0_wo0_cma0_s(29) <= u0_m0_wo0_cma0_y(29);
                u0_m0_wo0_cma0_s(30) <= u0_m0_wo0_cma0_y(30);
                u0_m0_wo0_cma0_s(31) <= u0_m0_wo0_cma0_y(31);
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_cma0_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(u0_m0_wo0_cma0_s(0)(33 downto 0)), xout => u0_m0_wo0_cma0_qq, clk => clk, aclr => areset );
    u0_m0_wo0_cma0_q <= STD_LOGIC_VECTOR(u0_m0_wo0_cma0_qq(33 downto 0));

    -- u0_m0_wo0_mtree_add0_0(ADD,377)@12 + 1
    u0_m0_wo0_mtree_add0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 34 => u0_m0_wo0_cma0_q(33)) & u0_m0_wo0_cma0_q));
    u0_m0_wo0_mtree_add0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 35 => u0_m0_wo0_cma1_q(34)) & u0_m0_wo0_cma1_q));
    u0_m0_wo0_mtree_add0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_0_a) + SIGNED(u0_m0_wo0_mtree_add0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_0_q <= u0_m0_wo0_mtree_add0_0_o(35 downto 0);

    -- u0_m0_wo0_mtree_add1_0(ADD,378)@13 + 1
    u0_m0_wo0_mtree_add1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 36 => u0_m0_wo0_mtree_add0_0_q(35)) & u0_m0_wo0_mtree_add0_0_q));
    u0_m0_wo0_mtree_add1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 39 => u0_m0_wo0_cma2_q(38)) & u0_m0_wo0_cma2_q));
    u0_m0_wo0_mtree_add1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_0_a) + SIGNED(u0_m0_wo0_mtree_add1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_0_q <= u0_m0_wo0_mtree_add1_0_o(39 downto 0);

    -- GND(CONSTANT,0)@0
    GND_q <= "0";

    -- d_u0_m0_wo0_compute_q_13(DELAY,388)@12 + 1
    d_u0_m0_wo0_compute_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_12_q, xout => d_u0_m0_wo0_compute_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_oseq_gated_reg(REG,379)@13 + 1
    u0_m0_wo0_oseq_gated_reg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= STD_LOGIC_VECTOR(d_u0_m0_wo0_compute_q_13_q);
        END IF;
    END PROCESS;

    -- out0_m0_wo0_lineup_select_delay_0(DELAY,381)@14
    out0_m0_wo0_lineup_select_delay_0_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_gated_reg_q);

    -- out0_m0_wo0_assign_id3(DELAY,383)@14
    out0_m0_wo0_assign_id3_q <= STD_LOGIC_VECTOR(out0_m0_wo0_lineup_select_delay_0_q);

    -- xOut(PORTOUT,384)@14 + 1
    xOut_v <= out0_m0_wo0_assign_id3_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= STD_LOGIC_VECTOR((40 downto 40 => u0_m0_wo0_mtree_add1_0_q(39)) & u0_m0_wo0_mtree_add1_0_q);

END normal;
