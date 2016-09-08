-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\mealy_moore\FightToTheEnd.vhd
-- Created: 2016-09-07 21:17:00
-- 
-- Generated by MATLAB 9.0 and HDL Coder 3.8
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: FightToTheEnd
-- Source Path: mealy_moore/Meanly-Moore/FightToTheEnd
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY FightToTheEnd IS
  PORT( u                                 :   IN    std_logic;
        y                                 :   OUT   std_logic
        );
END FightToTheEnd;


ARCHITECTURE rtl OF FightToTheEnd IS

BEGIN
  --MATLAB Function 'Meanly-Moore/FightToTheEnd': '<S2>:1'
  --'<S2>:1:4'
  y <= u;

END rtl;
