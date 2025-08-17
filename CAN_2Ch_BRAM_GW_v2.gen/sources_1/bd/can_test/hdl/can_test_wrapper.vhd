--Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
--Date        : Sun Aug 17 09:50:27 2025
--Host        : work5.itiv.kit.edu running 64-bit Rocky Linux 9.6 (Blue Onyx)
--Command     : generate_target can_test_wrapper.bd
--Design      : can_test_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity can_test_wrapper is
  port (
    CPU_RESET : in STD_LOGIC;
    GPIO_LED_0 : out STD_LOGIC;
    GPIO_LED_1 : out STD_LOGIC;
    GPIO_LED_2 : out STD_LOGIC;
    GPIO_LED_3 : out STD_LOGIC;
    GPIO_LED_4 : out STD_LOGIC;
    GPIO_LED_5 : out STD_LOGIC;
    GPIO_LED_6 : out STD_LOGIC;
    GPIO_LED_7 : out STD_LOGIC;
    PMOD0_3 : out STD_LOGIC;
    PMOD0_5 : out STD_LOGIC;
    can_phy_rx_0 : in STD_LOGIC;
    can_phy_rx_1 : in STD_LOGIC;
    can_phy_tx_0 : out STD_LOGIC;
    can_phy_tx_1 : out STD_LOGIC;
    user_si570_sysclk_clk_n : in STD_LOGIC;
    user_si570_sysclk_clk_p : in STD_LOGIC
  );
end can_test_wrapper;

architecture STRUCTURE of can_test_wrapper is
  component can_test is
  port (
    user_si570_sysclk_clk_n : in STD_LOGIC;
    user_si570_sysclk_clk_p : in STD_LOGIC;
    CPU_RESET : in STD_LOGIC;
    PMOD0_3 : out STD_LOGIC;
    PMOD0_5 : out STD_LOGIC;
    GPIO_LED_0 : out STD_LOGIC;
    GPIO_LED_2 : out STD_LOGIC;
    GPIO_LED_3 : out STD_LOGIC;
    GPIO_LED_4 : out STD_LOGIC;
    GPIO_LED_6 : out STD_LOGIC;
    GPIO_LED_7 : out STD_LOGIC;
    GPIO_LED_1 : out STD_LOGIC;
    can_phy_rx_0 : in STD_LOGIC;
    can_phy_rx_1 : in STD_LOGIC;
    can_phy_tx_0 : out STD_LOGIC;
    can_phy_tx_1 : out STD_LOGIC;
    GPIO_LED_5 : out STD_LOGIC
  );
  end component can_test;
begin
can_test_i: component can_test
     port map (
      CPU_RESET => CPU_RESET,
      GPIO_LED_0 => GPIO_LED_0,
      GPIO_LED_1 => GPIO_LED_1,
      GPIO_LED_2 => GPIO_LED_2,
      GPIO_LED_3 => GPIO_LED_3,
      GPIO_LED_4 => GPIO_LED_4,
      GPIO_LED_5 => GPIO_LED_5,
      GPIO_LED_6 => GPIO_LED_6,
      GPIO_LED_7 => GPIO_LED_7,
      PMOD0_3 => PMOD0_3,
      PMOD0_5 => PMOD0_5,
      can_phy_rx_0 => can_phy_rx_0,
      can_phy_rx_1 => can_phy_rx_1,
      can_phy_tx_0 => can_phy_tx_0,
      can_phy_tx_1 => can_phy_tx_1,
      user_si570_sysclk_clk_n => user_si570_sysclk_clk_n,
      user_si570_sysclk_clk_p => user_si570_sysclk_clk_p
    );
end STRUCTURE;
