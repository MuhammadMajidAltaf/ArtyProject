-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\mealy_moore\Meanly_Moore_pkg.vhd
-- Created: 2016-09-07 21:17:00
-- 
-- Generated by MATLAB 9.0 and HDL Coder 3.8
-- 
-- -------------------------------------------------------------


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

PACKAGE Meanly_Moore_pkg IS
  TYPE T_state_type_is_Simple_Mealy_Chart IS (IN_COUNTING, IN_IDLE);
  TYPE T_state_type_is_Simple_Moore_Chart IS (IN_COUNTING, IN_IDLE);
END Meanly_Moore_pkg;

