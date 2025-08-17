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

-- IP VLNV: user.org:user:Gateway_Logik:1.1
-- IP Revision: 20

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY can_test_Gateway_Logik_0_0 IS
  PORT (
    GPIO_LED_0 : OUT STD_LOGIC;
    GPIO_LED_1 : OUT STD_LOGIC;
    GPIO_LED_2 : OUT STD_LOGIC;
    GPIO_LED_3 : OUT STD_LOGIC;
    GPIO_LED_4 : OUT STD_LOGIC;
    GPIO_LED_5 : OUT STD_LOGIC;
    GPIO_LED_6 : OUT STD_LOGIC;
    GPIO_LED_7 : OUT STD_LOGIC;
    can_powerup_stat : OUT STD_LOGIC;
    m00_axi_init_axi_txn : IN STD_LOGIC;
    m00_axi_error : OUT STD_LOGIC;
    m00_axi_txn_done : OUT STD_LOGIC;
    m00_axi_aclk : IN STD_LOGIC;
    m00_axi_aresetn : IN STD_LOGIC;
    m00_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m00_axi_awvalid : OUT STD_LOGIC;
    m00_axi_awready : IN STD_LOGIC;
    m00_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m00_axi_wvalid : OUT STD_LOGIC;
    m00_axi_wready : IN STD_LOGIC;
    m00_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m00_axi_bvalid : IN STD_LOGIC;
    m00_axi_bready : OUT STD_LOGIC;
    m00_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m00_axi_arvalid : OUT STD_LOGIC;
    m00_axi_arready : IN STD_LOGIC;
    m00_axi_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m00_axi_rvalid : IN STD_LOGIC;
    m00_axi_rready : OUT STD_LOGIC;
    m01_axi_init_axi_txn : IN STD_LOGIC;
    m01_axi_error : OUT STD_LOGIC;
    m01_axi_txn_done : OUT STD_LOGIC;
    m01_axi_aclk : IN STD_LOGIC;
    m01_axi_aresetn : IN STD_LOGIC;
    m01_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m01_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m01_axi_awvalid : OUT STD_LOGIC;
    m01_axi_awready : IN STD_LOGIC;
    m01_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m01_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m01_axi_wvalid : OUT STD_LOGIC;
    m01_axi_wready : IN STD_LOGIC;
    m01_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m01_axi_bvalid : IN STD_LOGIC;
    m01_axi_bready : OUT STD_LOGIC;
    m01_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m01_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m01_axi_arvalid : OUT STD_LOGIC;
    m01_axi_arready : IN STD_LOGIC;
    m01_axi_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m01_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m01_axi_rvalid : IN STD_LOGIC;
    m01_axi_rready : OUT STD_LOGIC;
    m02_axi_init_axi_txn : IN STD_LOGIC;
    m02_axi_error : OUT STD_LOGIC;
    m02_axi_txn_done : OUT STD_LOGIC;
    m02_axi_aclk : IN STD_LOGIC;
    m02_axi_aresetn : IN STD_LOGIC;
    m02_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m02_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m02_axi_awvalid : OUT STD_LOGIC;
    m02_axi_awready : IN STD_LOGIC;
    m02_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m02_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m02_axi_wvalid : OUT STD_LOGIC;
    m02_axi_wready : IN STD_LOGIC;
    m02_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m02_axi_bvalid : IN STD_LOGIC;
    m02_axi_bready : OUT STD_LOGIC;
    m02_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m02_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m02_axi_arvalid : OUT STD_LOGIC;
    m02_axi_arready : IN STD_LOGIC;
    m02_axi_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m02_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m02_axi_rvalid : IN STD_LOGIC;
    m02_axi_rready : OUT STD_LOGIC
  );
END can_test_Gateway_Logik_0_0;

ARCHITECTURE can_test_Gateway_Logik_0_0_arch OF can_test_Gateway_Logik_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF can_test_Gateway_Logik_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT Gateway_Logik_v1_0 IS
    GENERIC (
      C_M02_AXI_START_DATA_VALUE : STD_LOGIC_VECTOR;
      C_M02_AXI_TARGET_SLAVE_BASE_ADDR : STD_LOGIC_VECTOR;
      C_M02_AXI_ADDR_WIDTH : INTEGER;
      C_M02_AXI_DATA_WIDTH : INTEGER;
      C_M02_AXI_TRANSACTIONS_NUM : INTEGER;
      C_M01_AXI_START_DATA_VALUE : STD_LOGIC_VECTOR;
      C_M01_AXI_TARGET_SLAVE_BASE_ADDR : STD_LOGIC_VECTOR;
      C_M01_AXI_ADDR_WIDTH : INTEGER;
      C_M01_AXI_DATA_WIDTH : INTEGER;
      C_M01_AXI_TRANSACTIONS_NUM : INTEGER;
      C_M00_AXI_START_DATA_VALUE : STD_LOGIC_VECTOR;
      C_M00_AXI_TARGET_SLAVE_BASE_ADDR : STD_LOGIC_VECTOR;
      C_M00_AXI_ADDR_WIDTH : INTEGER;
      C_M00_AXI_DATA_WIDTH : INTEGER;
      C_M00_AXI_TRANSACTIONS_NUM : INTEGER
    );
    PORT (
      GPIO_LED_0 : OUT STD_LOGIC;
      GPIO_LED_1 : OUT STD_LOGIC;
      GPIO_LED_2 : OUT STD_LOGIC;
      GPIO_LED_3 : OUT STD_LOGIC;
      GPIO_LED_4 : OUT STD_LOGIC;
      GPIO_LED_5 : OUT STD_LOGIC;
      GPIO_LED_6 : OUT STD_LOGIC;
      GPIO_LED_7 : OUT STD_LOGIC;
      can_powerup_stat : OUT STD_LOGIC;
      m00_axi_init_axi_txn : IN STD_LOGIC;
      m00_axi_error : OUT STD_LOGIC;
      m00_axi_txn_done : OUT STD_LOGIC;
      m00_axi_aclk : IN STD_LOGIC;
      m00_axi_aresetn : IN STD_LOGIC;
      m00_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m00_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m00_axi_awvalid : OUT STD_LOGIC;
      m00_axi_awready : IN STD_LOGIC;
      m00_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m00_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m00_axi_wvalid : OUT STD_LOGIC;
      m00_axi_wready : IN STD_LOGIC;
      m00_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m00_axi_bvalid : IN STD_LOGIC;
      m00_axi_bready : OUT STD_LOGIC;
      m00_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m00_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m00_axi_arvalid : OUT STD_LOGIC;
      m00_axi_arready : IN STD_LOGIC;
      m00_axi_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m00_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m00_axi_rvalid : IN STD_LOGIC;
      m00_axi_rready : OUT STD_LOGIC;
      m01_axi_init_axi_txn : IN STD_LOGIC;
      m01_axi_error : OUT STD_LOGIC;
      m01_axi_txn_done : OUT STD_LOGIC;
      m01_axi_aclk : IN STD_LOGIC;
      m01_axi_aresetn : IN STD_LOGIC;
      m01_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m01_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m01_axi_awvalid : OUT STD_LOGIC;
      m01_axi_awready : IN STD_LOGIC;
      m01_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m01_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m01_axi_wvalid : OUT STD_LOGIC;
      m01_axi_wready : IN STD_LOGIC;
      m01_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m01_axi_bvalid : IN STD_LOGIC;
      m01_axi_bready : OUT STD_LOGIC;
      m01_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m01_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m01_axi_arvalid : OUT STD_LOGIC;
      m01_axi_arready : IN STD_LOGIC;
      m01_axi_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m01_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m01_axi_rvalid : IN STD_LOGIC;
      m01_axi_rready : OUT STD_LOGIC;
      m02_axi_init_axi_txn : IN STD_LOGIC;
      m02_axi_error : OUT STD_LOGIC;
      m02_axi_txn_done : OUT STD_LOGIC;
      m02_axi_aclk : IN STD_LOGIC;
      m02_axi_aresetn : IN STD_LOGIC;
      m02_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m02_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m02_axi_awvalid : OUT STD_LOGIC;
      m02_axi_awready : IN STD_LOGIC;
      m02_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m02_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m02_axi_wvalid : OUT STD_LOGIC;
      m02_axi_wready : IN STD_LOGIC;
      m02_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m02_axi_bvalid : IN STD_LOGIC;
      m02_axi_bready : OUT STD_LOGIC;
      m02_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m02_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m02_axi_arvalid : OUT STD_LOGIC;
      m02_axi_arready : IN STD_LOGIC;
      m02_axi_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m02_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m02_axi_rvalid : IN STD_LOGIC;
      m02_axi_rready : OUT STD_LOGIC
    );
  END COMPONENT Gateway_Logik_v1_0;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF m00_axi_aclk: SIGNAL IS "XIL_INTERFACENAME M00_AXI_CLK, ASSOCIATED_BUSIF M00_AXI, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN can_test_clk_wiz_0_2_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m00_axi_aresetn: SIGNAL IS "XIL_INTERFACENAME M00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 M00_AXI_RST RST";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m00_axi_awaddr: SIGNAL IS "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN can_test_clk_wiz_0_2_clk_out1, NUM_READ" & 
"_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m01_axi_aclk: SIGNAL IS "XIL_INTERFACENAME M01_AXI_CLK, ASSOCIATED_BUSIF M01_AXI, ASSOCIATED_RESET m01_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN can_test_clk_wiz_0_2_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m01_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 M01_AXI_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF m01_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m01_axi_aresetn: SIGNAL IS "XIL_INTERFACENAME M01_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m01_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 M01_AXI_RST RST";
  ATTRIBUTE X_INTERFACE_INFO OF m01_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m01_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m01_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m01_axi_awaddr: SIGNAL IS "XIL_INTERFACENAME M01_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN can_test_clk_wiz_0_2_clk_out1, NUM_READ" & 
"_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m01_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m01_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m01_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m01_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m01_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m01_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m01_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m01_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m01_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m01_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m01_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m01_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m01_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m01_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m01_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI WVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m02_axi_aclk: SIGNAL IS "XIL_INTERFACENAME M02_AXI_CLK, ASSOCIATED_BUSIF M02_AXI, ASSOCIATED_RESET m02_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN can_test_clk_wiz_0_2_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m02_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 M02_AXI_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF m02_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m02_axi_aresetn: SIGNAL IS "XIL_INTERFACENAME M02_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m02_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 M02_AXI_RST RST";
  ATTRIBUTE X_INTERFACE_INFO OF m02_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m02_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m02_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m02_axi_awaddr: SIGNAL IS "XIL_INTERFACENAME M02_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN can_test_clk_wiz_0_2_clk_out1, NUM_READ" & 
"_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m02_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m02_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m02_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m02_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m02_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m02_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m02_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m02_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m02_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m02_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m02_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m02_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m02_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m02_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m02_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M02_AXI WVALID";
BEGIN
  U0 : Gateway_Logik_v1_0
    GENERIC MAP (
      C_M02_AXI_START_DATA_VALUE => X"00000000",
      C_M02_AXI_TARGET_SLAVE_BASE_ADDR => X"00000000",
      C_M02_AXI_ADDR_WIDTH => 32,
      C_M02_AXI_DATA_WIDTH => 32,
      C_M02_AXI_TRANSACTIONS_NUM => 5,
      C_M01_AXI_START_DATA_VALUE => X"00000000",
      C_M01_AXI_TARGET_SLAVE_BASE_ADDR => X"00000000",
      C_M01_AXI_ADDR_WIDTH => 32,
      C_M01_AXI_DATA_WIDTH => 32,
      C_M01_AXI_TRANSACTIONS_NUM => 5,
      C_M00_AXI_START_DATA_VALUE => X"00000000",
      C_M00_AXI_TARGET_SLAVE_BASE_ADDR => X"00000000",
      C_M00_AXI_ADDR_WIDTH => 32,
      C_M00_AXI_DATA_WIDTH => 32,
      C_M00_AXI_TRANSACTIONS_NUM => 6
    )
    PORT MAP (
      GPIO_LED_0 => GPIO_LED_0,
      GPIO_LED_1 => GPIO_LED_1,
      GPIO_LED_2 => GPIO_LED_2,
      GPIO_LED_3 => GPIO_LED_3,
      GPIO_LED_4 => GPIO_LED_4,
      GPIO_LED_5 => GPIO_LED_5,
      GPIO_LED_6 => GPIO_LED_6,
      GPIO_LED_7 => GPIO_LED_7,
      can_powerup_stat => can_powerup_stat,
      m00_axi_init_axi_txn => m00_axi_init_axi_txn,
      m00_axi_error => m00_axi_error,
      m00_axi_txn_done => m00_axi_txn_done,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_aresetn => m00_axi_aresetn,
      m00_axi_awaddr => m00_axi_awaddr,
      m00_axi_awprot => m00_axi_awprot,
      m00_axi_awvalid => m00_axi_awvalid,
      m00_axi_awready => m00_axi_awready,
      m00_axi_wdata => m00_axi_wdata,
      m00_axi_wstrb => m00_axi_wstrb,
      m00_axi_wvalid => m00_axi_wvalid,
      m00_axi_wready => m00_axi_wready,
      m00_axi_bresp => m00_axi_bresp,
      m00_axi_bvalid => m00_axi_bvalid,
      m00_axi_bready => m00_axi_bready,
      m00_axi_araddr => m00_axi_araddr,
      m00_axi_arprot => m00_axi_arprot,
      m00_axi_arvalid => m00_axi_arvalid,
      m00_axi_arready => m00_axi_arready,
      m00_axi_rdata => m00_axi_rdata,
      m00_axi_rresp => m00_axi_rresp,
      m00_axi_rvalid => m00_axi_rvalid,
      m00_axi_rready => m00_axi_rready,
      m01_axi_init_axi_txn => m01_axi_init_axi_txn,
      m01_axi_error => m01_axi_error,
      m01_axi_txn_done => m01_axi_txn_done,
      m01_axi_aclk => m01_axi_aclk,
      m01_axi_aresetn => m01_axi_aresetn,
      m01_axi_awaddr => m01_axi_awaddr,
      m01_axi_awprot => m01_axi_awprot,
      m01_axi_awvalid => m01_axi_awvalid,
      m01_axi_awready => m01_axi_awready,
      m01_axi_wdata => m01_axi_wdata,
      m01_axi_wstrb => m01_axi_wstrb,
      m01_axi_wvalid => m01_axi_wvalid,
      m01_axi_wready => m01_axi_wready,
      m01_axi_bresp => m01_axi_bresp,
      m01_axi_bvalid => m01_axi_bvalid,
      m01_axi_bready => m01_axi_bready,
      m01_axi_araddr => m01_axi_araddr,
      m01_axi_arprot => m01_axi_arprot,
      m01_axi_arvalid => m01_axi_arvalid,
      m01_axi_arready => m01_axi_arready,
      m01_axi_rdata => m01_axi_rdata,
      m01_axi_rresp => m01_axi_rresp,
      m01_axi_rvalid => m01_axi_rvalid,
      m01_axi_rready => m01_axi_rready,
      m02_axi_init_axi_txn => m02_axi_init_axi_txn,
      m02_axi_error => m02_axi_error,
      m02_axi_txn_done => m02_axi_txn_done,
      m02_axi_aclk => m02_axi_aclk,
      m02_axi_aresetn => m02_axi_aresetn,
      m02_axi_awaddr => m02_axi_awaddr,
      m02_axi_awprot => m02_axi_awprot,
      m02_axi_awvalid => m02_axi_awvalid,
      m02_axi_awready => m02_axi_awready,
      m02_axi_wdata => m02_axi_wdata,
      m02_axi_wstrb => m02_axi_wstrb,
      m02_axi_wvalid => m02_axi_wvalid,
      m02_axi_wready => m02_axi_wready,
      m02_axi_bresp => m02_axi_bresp,
      m02_axi_bvalid => m02_axi_bvalid,
      m02_axi_bready => m02_axi_bready,
      m02_axi_araddr => m02_axi_araddr,
      m02_axi_arprot => m02_axi_arprot,
      m02_axi_arvalid => m02_axi_arvalid,
      m02_axi_arready => m02_axi_arready,
      m02_axi_rdata => m02_axi_rdata,
      m02_axi_rresp => m02_axi_rresp,
      m02_axi_rvalid => m02_axi_rvalid,
      m02_axi_rready => m02_axi_rready
    );
END can_test_Gateway_Logik_0_0_arch;
