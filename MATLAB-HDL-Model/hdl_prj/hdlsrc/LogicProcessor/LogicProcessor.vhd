-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\LogicProcessor\LogicPRocessor.vhd
-- Created: 2016-09-07 22:35:06
-- 
-- Generated by MATLAB 9.0 and HDL Coder 3.8
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Model base rate: 1
-- Target subsystem base rate: 1
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: LogicPRocessor
-- Source Path: LogicProcessor/LogicPRocessor
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY LogicPRocessor IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        In1                               :   IN    std_logic;
        In2                               :   IN    std_logic;
        In3                               :   IN    std_logic;
        In4                               :   IN    std_logic;
        In5                               :   IN    std_logic;
        In6                               :   IN    std_logic;
        In7                               :   IN    std_logic;
        In8                               :   IN    std_logic;
        Out1                              :   OUT   std_logic;
        Out2                              :   OUT   std_logic;
        Out3                              :   OUT   std_logic;
        Out4                              :   OUT   std_logic;
        Out5                              :   OUT   std_logic;
        Out6                              :   OUT   std_logic;
        Out7                              :   OUT   std_logic;
        Out8                              :   OUT   std_logic;
        Out9                              :   OUT   std_logic;
        Out10                             :   OUT   std_logic;
        Out11                             :   OUT   std_logic;
        Out12                             :   OUT   std_logic;
        Out13                             :   OUT   std_logic;
        Out14                             :   OUT   std_logic;
        Out15                             :   OUT   std_logic;
        Out16                             :   OUT   std_logic
        );
END LogicPRocessor;


ARCHITECTURE rtl OF LogicPRocessor IS

  -- Component Declarations
  COMPONENT moore_sf
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          get_going                       :   IN    std_logic;
          ready                           :   OUT   std_logic;
          enable                          :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT mealy_sf
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          get_going                       :   IN    std_logic;
          ready                           :   OUT   std_logic;
          enable                          :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT moore_sf1
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          get_going                       :   IN    std_logic;
          ready                           :   OUT   std_logic;
          enable                          :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT mealy_sf1
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          get_going                       :   IN    std_logic;
          ready                           :   OUT   std_logic;
          enable                          :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT moore_sf2
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          get_going                       :   IN    std_logic;
          ready                           :   OUT   std_logic;
          enable                          :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT mealy_sf2
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          get_going                       :   IN    std_logic;
          ready                           :   OUT   std_logic;
          enable                          :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT moore_sf3
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          get_going                       :   IN    std_logic;
          ready                           :   OUT   std_logic;
          enable                          :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT mealy_sf3
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          get_going                       :   IN    std_logic;
          ready                           :   OUT   std_logic;
          enable                          :   OUT   std_logic
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : moore_sf
    USE ENTITY work.moore_sf(rtl);

  FOR ALL : mealy_sf
    USE ENTITY work.mealy_sf(rtl);

  FOR ALL : moore_sf1
    USE ENTITY work.moore_sf1(rtl);

  FOR ALL : mealy_sf1
    USE ENTITY work.mealy_sf1(rtl);

  FOR ALL : moore_sf2
    USE ENTITY work.moore_sf2(rtl);

  FOR ALL : mealy_sf2
    USE ENTITY work.mealy_sf2(rtl);

  FOR ALL : moore_sf3
    USE ENTITY work.moore_sf3(rtl);

  FOR ALL : mealy_sf3
    USE ENTITY work.mealy_sf3(rtl);

  -- Signals
  SIGNAL ready                            : std_logic;
  SIGNAL counter_en                       : std_logic;
  SIGNAL ready_1                          : std_logic;
  SIGNAL counter_en_1                     : std_logic;
  SIGNAL ready_2                          : std_logic;
  SIGNAL counter_en_2                     : std_logic;
  SIGNAL ready_3                          : std_logic;
  SIGNAL counter_en_3                     : std_logic;
  SIGNAL ready_4                          : std_logic;
  SIGNAL counter_en_4                     : std_logic;
  SIGNAL ready_5                          : std_logic;
  SIGNAL counter_en_5                     : std_logic;
  SIGNAL ready_6                          : std_logic;
  SIGNAL counter_en_6                     : std_logic;
  SIGNAL ready_7                          : std_logic;
  SIGNAL counter_en_7                     : std_logic;

BEGIN
  u_moore_sf : moore_sf
    PORT MAP( clk => clk,
              reset => reset,
              get_going => In1,
              ready => ready,
              enable => counter_en
              );

  u_mealy_sf : mealy_sf
    PORT MAP( clk => clk,
              reset => reset,
              get_going => In2,
              ready => ready_1,
              enable => counter_en_1
              );

  u_moore_sf1 : moore_sf1
    PORT MAP( clk => clk,
              reset => reset,
              get_going => In3,
              ready => ready_2,
              enable => counter_en_2
              );

  u_mealy_sf1 : mealy_sf1
    PORT MAP( clk => clk,
              reset => reset,
              get_going => In4,
              ready => ready_3,
              enable => counter_en_3
              );

  u_moore_sf2 : moore_sf2
    PORT MAP( clk => clk,
              reset => reset,
              get_going => In5,
              ready => ready_4,
              enable => counter_en_4
              );

  u_mealy_sf2 : mealy_sf2
    PORT MAP( clk => clk,
              reset => reset,
              get_going => In6,
              ready => ready_5,
              enable => counter_en_5
              );

  u_moore_sf3 : moore_sf3
    PORT MAP( clk => clk,
              reset => reset,
              get_going => In7,
              ready => ready_6,
              enable => counter_en_6
              );

  u_mealy_sf3 : mealy_sf3
    PORT MAP( clk => clk,
              reset => reset,
              get_going => In8,
              ready => ready_7,
              enable => counter_en_7
              );

  Out1 <= ready;

  Out2 <= counter_en;

  Out3 <= ready_1;

  Out4 <= counter_en_1;

  Out5 <= ready_2;

  Out6 <= counter_en_2;

  Out7 <= ready_3;

  Out8 <= counter_en_3;

  Out9 <= ready_4;

  Out10 <= counter_en_4;

  Out11 <= ready_5;

  Out12 <= counter_en_5;

  Out13 <= ready_6;

  Out14 <= counter_en_6;

  Out15 <= ready_7;

  Out16 <= counter_en_7;

END rtl;

