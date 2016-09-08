-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\mealy_moore\mealy_sf.vhd
-- Created: 2016-09-07 20:48:34
-- 
-- Generated by MATLAB 9.0 and HDL Coder 3.8
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: mealy_sf
-- Source Path: mealy_moore/Meanly-Moore/mealy_sf
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY mealy_sf IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        get_going                         :   IN    std_logic;
        ready                             :   OUT   std_logic;
        enable                            :   OUT   std_logic
        );
END mealy_sf;


ARCHITECTURE rtl OF mealy_sf IS

  -- Component Declarations
  COMPONENT Simple_Mealy_Chart
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          get_going                       :   IN    std_logic;
          count                           :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
          ready                           :   OUT   std_logic;
          count_en                        :   OUT   std_logic
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : Simple_Mealy_Chart
    USE ENTITY work.Simple_Mealy_Chart(rtl);

  -- Signals
  SIGNAL HDL_Counter_out1                 : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL count_en                         : std_logic;
  SIGNAL HDL_Counter_stepreg              : unsigned(7 DOWNTO 0);  -- uint8

BEGIN
  -- <S2>/Simple_Mealy_Chart
  u_Simple_Mealy_Chart : Simple_Mealy_Chart
    PORT MAP( clk => clk,
              reset => reset,
              get_going => get_going,
              count => std_logic_vector(HDL_Counter_out1),  -- uint8
              ready => ready,
              count_en => count_en
              );

  -- Count limited, Unsigned Counter
  --  initial value   = 0
  --  step value      = 1
  --  count to value  = 25
  -- 
  -- <S2>/HDL Counter
  HDL_Counter_step_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      HDL_Counter_stepreg <= to_unsigned(16#01#, 8);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF count_en = '1' THEN 
        IF HDL_Counter_out1 = to_unsigned(16#18#, 8) THEN 
          HDL_Counter_stepreg <= to_unsigned(16#E7#, 8);
        ELSE 
          HDL_Counter_stepreg <= to_unsigned(16#01#, 8);
        END IF;
      END IF;
    END IF;
  END PROCESS HDL_Counter_step_process;


  HDL_Counter_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      HDL_Counter_out1 <= to_unsigned(16#00#, 8);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF count_en = '1' THEN 
        HDL_Counter_out1 <= HDL_Counter_out1 + HDL_Counter_stepreg;
      END IF;
    END IF;
  END PROCESS HDL_Counter_process;


  enable <= count_en;

END rtl;

