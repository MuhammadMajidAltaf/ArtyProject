-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\LogicProcessor\Simple_Mealy_Chart.vhd
-- Created: 2016-09-07 23:13:55
-- 
-- Generated by MATLAB 9.0 and HDL Coder 3.8
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: Simple_Mealy_Chart
-- Source Path: LogicProcessor/LogicProcessor/mealy_sf/Simple_Mealy_Chart
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.LogicProcessor_pkg.ALL;

ENTITY Simple_Mealy_Chart IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        get_going                         :   IN    std_logic;
        count                             :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        CH2_FREQ_INPUT1                   :   IN    std_logic_vector(31 DOWNTO 0);  -- uint32
        ready                             :   OUT   std_logic;
        count_en                          :   OUT   std_logic
        );
END Simple_Mealy_Chart;


ARCHITECTURE rtl OF Simple_Mealy_Chart IS

  -- Constants
  CONSTANT max_count                      : unsigned(7 DOWNTO 0) := 
    to_unsigned(16#19#, 8);  -- uint8

  -- Signals
  SIGNAL count_unsigned                   : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL CH2_FREQ_INPUT1_unsigned         : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL is_Simple_Mealy_Chart            : T_state_type_is_Simple_Mealy_Chart;  -- uint8
  SIGNAL ready_reg                        : std_logic;
  SIGNAL count_en_reg                     : std_logic;
  SIGNAL is_Simple_Mealy_Chart_next       : T_state_type_is_Simple_Mealy_Chart;  -- enum type state_type_is_Simple_Mealy_Chart (2 enums)
  SIGNAL ready_reg_next                   : std_logic;
  SIGNAL count_en_reg_next                : std_logic;

BEGIN
  count_unsigned <= unsigned(count);

  CH2_FREQ_INPUT1_unsigned <= unsigned(CH2_FREQ_INPUT1);

  Simple_Mealy_Chart_1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      ready_reg <= '1';
      count_en_reg <= '0';
      is_Simple_Mealy_Chart <= IN_IDLE;
    ELSIF clk'EVENT AND clk = '1' THEN
      is_Simple_Mealy_Chart <= is_Simple_Mealy_Chart_next;
      ready_reg <= ready_reg_next;
      count_en_reg <= count_en_reg_next;
    END IF;
  END PROCESS Simple_Mealy_Chart_1_process;

  Simple_Mealy_Chart_1_output : PROCESS (is_Simple_Mealy_Chart, get_going, count_unsigned, ready_reg, count_en_reg)
  BEGIN
    ready_reg_next <= ready_reg;
    count_en_reg_next <= count_en_reg;
    is_Simple_Mealy_Chart_next <= is_Simple_Mealy_Chart;
    CASE is_Simple_Mealy_Chart IS
      WHEN IN_COUNTING =>
        IF count_unsigned = max_count THEN 
          ready_reg_next <= '1';
          count_en_reg_next <= '0';
          is_Simple_Mealy_Chart_next <= IN_IDLE;
        END IF;
      WHEN OTHERS => 
        IF get_going = '1' THEN 
          ready_reg_next <= '0';
          count_en_reg_next <= '1';
          is_Simple_Mealy_Chart_next <= IN_COUNTING;
        END IF;
    END CASE;
  END PROCESS Simple_Mealy_Chart_1_output;

  ready <= ready_reg_next;
  count_en <= count_en_reg_next;

END rtl;

