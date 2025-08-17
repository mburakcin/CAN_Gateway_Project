-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
-- Date        : Mon Aug 18 00:25:00 2025
-- Host        : work5.itiv.kit.edu running 64-bit Rocky Linux 9.6 (Blue Onyx)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/upkmy/CAN_2Ch_BRAM_GW_v2/CAN_2Ch_BRAM_GW_v2.gen/sources_1/bd/can_test/can_test_stub.vhdl
-- Design      : can_test
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity can_test is
  Port ( 
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

end can_test;

architecture stub of can_test is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CPU_RESET,GPIO_LED_0,GPIO_LED_1,GPIO_LED_2,GPIO_LED_3,GPIO_LED_4,GPIO_LED_5,GPIO_LED_6,GPIO_LED_7,PMOD0_3,PMOD0_5,can_phy_rx_0,can_phy_rx_1,can_phy_tx_0,can_phy_tx_1,user_si570_sysclk_clk_n,user_si570_sysclk_clk_p";
begin
end;
