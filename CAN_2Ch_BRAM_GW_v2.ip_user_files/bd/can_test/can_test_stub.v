// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Mon Aug 18 20:55:22 2025
// Host        : work5.itiv.kit.edu running 64-bit Rocky Linux 9.6 (Blue Onyx)
// Command     : write_verilog -force -mode synth_stub
//               /home/upkmy/CAN_2Ch_BRAM_GW_v2/CAN_2Ch_BRAM_GW_v2.gen/sources_1/bd/can_test/can_test_stub.v
// Design      : can_test
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module can_test(CPU_RESET, GPIO_LED_0, GPIO_LED_1, GPIO_LED_2, 
  GPIO_LED_3, GPIO_LED_4, GPIO_LED_5, GPIO_LED_6, GPIO_LED_7, PMOD0_3, PMOD0_5, can_phy_rx_0, 
  can_phy_rx_1, can_phy_tx_0, can_phy_tx_1, user_si570_sysclk_clk_n, 
  user_si570_sysclk_clk_p)
/* synthesis syn_black_box black_box_pad_pin="CPU_RESET,GPIO_LED_0,GPIO_LED_1,GPIO_LED_2,GPIO_LED_3,GPIO_LED_4,GPIO_LED_5,GPIO_LED_6,GPIO_LED_7,PMOD0_3,PMOD0_5,can_phy_rx_0,can_phy_rx_1,can_phy_tx_0,can_phy_tx_1,user_si570_sysclk_clk_n,user_si570_sysclk_clk_p" */;
  input CPU_RESET;
  output GPIO_LED_0;
  output GPIO_LED_1;
  output GPIO_LED_2;
  output GPIO_LED_3;
  output GPIO_LED_4;
  output GPIO_LED_5;
  output GPIO_LED_6;
  output GPIO_LED_7;
  output PMOD0_3;
  output PMOD0_5;
  input can_phy_rx_0;
  input can_phy_rx_1;
  output can_phy_tx_0;
  output can_phy_tx_1;
  input user_si570_sysclk_clk_n;
  input user_si570_sysclk_clk_p;
endmodule
