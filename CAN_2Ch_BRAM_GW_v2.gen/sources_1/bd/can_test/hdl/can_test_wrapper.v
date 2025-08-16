//Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
//Date        : Tue Jun 17 18:47:46 2025
//Host        : gpu1.itiv.kit.edu running 64-bit Rocky Linux release 9.5 (Blue Onyx)
//Command     : generate_target can_test_wrapper.bd
//Design      : can_test_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module can_test_wrapper
   (clk_100MHz,
    reset);
  input clk_100MHz;
  input reset;

  wire clk_100MHz;
  wire reset;

  can_test can_test_i
       (.clk_100MHz(clk_100MHz),
        .reset(reset));
endmodule
