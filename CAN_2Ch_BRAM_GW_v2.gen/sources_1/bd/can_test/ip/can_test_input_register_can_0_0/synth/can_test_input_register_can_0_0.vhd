-- (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:input_register_can:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY can_test_input_register_can_0_0 IS
  PORT (
    can_clk : IN STD_LOGIC;
    can_phy_rx : IN STD_LOGIC;
    can_rx_sync : OUT STD_LOGIC
  );
END can_test_input_register_can_0_0;

ARCHITECTURE can_test_input_register_can_0_0_arch OF can_test_input_register_can_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF can_test_input_register_can_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT input_register_can IS
    PORT (
      can_clk : IN STD_LOGIC;
      can_phy_rx : IN STD_LOGIC;
      can_rx_sync : OUT STD_LOGIC
    );
  END COMPONENT input_register_can;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF can_test_input_register_can_0_0_arch: ARCHITECTURE IS "input_register_can,Vivado 2022.2.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF can_test_input_register_can_0_0_arch : ARCHITECTURE IS "can_test_input_register_can_0_0,input_register_can,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF can_test_input_register_can_0_0_arch: ARCHITECTURE IS "can_test_input_register_can_0_0,input_register_can,{x_ipProduct=Vivado 2022.2.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=input_register_can,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF can_test_input_register_can_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF can_clk: SIGNAL IS "XIL_INTERFACENAME can_clk, FREQ_HZ 24000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN can_test_clk_wiz_0_2_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF can_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 can_clk CLK";
BEGIN
  U0 : input_register_can
    PORT MAP (
      can_clk => can_clk,
      can_phy_rx => can_phy_rx,
      can_rx_sync => can_rx_sync
    );
END can_test_input_register_can_0_0_arch;
