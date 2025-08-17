--Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
--Date        : Sun Aug 17 19:16:10 2025
--Host        : work5.itiv.kit.edu running 64-bit Rocky Linux 9.6 (Blue Onyx)
--Command     : generate_target can_test.bd
--Design      : can_test
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_15B6EX is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_15B6EX;

architecture STRUCTURE of s00_couplers_imp_15B6EX is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= s00_couplers_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= s00_couplers_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= s00_couplers_to_s00_couplers_AWVALID;
  M_AXI_bready <= s00_couplers_to_s00_couplers_BREADY;
  M_AXI_rready <= s00_couplers_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s00_couplers_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s00_couplers_to_s00_couplers_WVALID;
  S_AXI_arready <= s00_couplers_to_s00_couplers_ARREADY;
  S_AXI_awready <= s00_couplers_to_s00_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_s00_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_s00_couplers_RVALID;
  S_AXI_wready <= s00_couplers_to_s00_couplers_WREADY;
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_couplers_ARREADY <= M_AXI_arready;
  s00_couplers_to_s00_couplers_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_s00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_couplers_AWREADY <= M_AXI_awready;
  s00_couplers_to_s00_couplers_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_s00_couplers_BREADY <= S_AXI_bready;
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID <= M_AXI_bvalid;
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RREADY <= S_AXI_rready;
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID <= M_AXI_rvalid;
  s00_couplers_to_s00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_s00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1G41L2L is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_1G41L2L;

architecture STRUCTURE of s00_couplers_imp_1G41L2L is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= s00_couplers_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= s00_couplers_to_s00_couplers_AWVALID;
  M_AXI_bready <= s00_couplers_to_s00_couplers_BREADY;
  M_AXI_rready <= s00_couplers_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s00_couplers_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s00_couplers_to_s00_couplers_WVALID;
  S_AXI_arready <= s00_couplers_to_s00_couplers_ARREADY;
  S_AXI_awready <= s00_couplers_to_s00_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_s00_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_s00_couplers_RVALID;
  S_AXI_wready <= s00_couplers_to_s00_couplers_WREADY;
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARREADY <= M_AXI_arready;
  s00_couplers_to_s00_couplers_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_s00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_couplers_AWREADY <= M_AXI_awready;
  s00_couplers_to_s00_couplers_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_s00_couplers_BREADY <= S_AXI_bready;
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID <= M_AXI_bvalid;
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RREADY <= S_AXI_rready;
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID <= M_AXI_rvalid;
  s00_couplers_to_s00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_s00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_NYYE1T is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_NYYE1T;

architecture STRUCTURE of s00_couplers_imp_NYYE1T is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= s00_couplers_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= s00_couplers_to_s00_couplers_AWVALID;
  M_AXI_bready <= s00_couplers_to_s00_couplers_BREADY;
  M_AXI_rready <= s00_couplers_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s00_couplers_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s00_couplers_to_s00_couplers_WVALID;
  S_AXI_arready <= s00_couplers_to_s00_couplers_ARREADY;
  S_AXI_awready <= s00_couplers_to_s00_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_s00_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_s00_couplers_RVALID;
  S_AXI_wready <= s00_couplers_to_s00_couplers_WREADY;
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARREADY <= M_AXI_arready;
  s00_couplers_to_s00_couplers_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_s00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_couplers_AWREADY <= M_AXI_awready;
  s00_couplers_to_s00_couplers_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_s00_couplers_BREADY <= S_AXI_bready;
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID <= M_AXI_bvalid;
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RREADY <= S_AXI_rready;
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID <= M_AXI_rvalid;
  s00_couplers_to_s00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_s00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity can_test_Gateway_Logik_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end can_test_Gateway_Logik_0_axi_periph_0;

architecture STRUCTURE of can_test_Gateway_Logik_0_axi_periph_0 is
  signal Gateway_Logik_0_axi_periph_ACLK_net : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Gateway_Logik_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Gateway_Logik_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Gateway_Logik_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_ARREADY : STD_LOGIC;
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_ARVALID : STD_LOGIC;
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_AWREADY : STD_LOGIC;
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_AWVALID : STD_LOGIC;
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_BREADY : STD_LOGIC;
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_BVALID : STD_LOGIC;
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_RREADY : STD_LOGIC;
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_RVALID : STD_LOGIC;
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_WREADY : STD_LOGIC;
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_WVALID : STD_LOGIC;
begin
  Gateway_Logik_0_axi_periph_ACLK_net <= M00_ACLK;
  Gateway_Logik_0_axi_periph_ARESETN_net <= M00_ARESETN;
  Gateway_Logik_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  Gateway_Logik_0_axi_periph_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  Gateway_Logik_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  Gateway_Logik_0_axi_periph_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  Gateway_Logik_0_axi_periph_to_s00_couplers_BREADY <= S00_AXI_bready;
  Gateway_Logik_0_axi_periph_to_s00_couplers_RREADY <= S00_AXI_rready;
  Gateway_Logik_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  Gateway_Logik_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  Gateway_Logik_0_axi_periph_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  M00_AXI_araddr(31 downto 0) <= s00_couplers_to_Gateway_Logik_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arvalid <= s00_couplers_to_Gateway_Logik_0_axi_periph_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= s00_couplers_to_Gateway_Logik_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awvalid <= s00_couplers_to_Gateway_Logik_0_axi_periph_AWVALID;
  M00_AXI_bready <= s00_couplers_to_Gateway_Logik_0_axi_periph_BREADY;
  M00_AXI_rready <= s00_couplers_to_Gateway_Logik_0_axi_periph_RREADY;
  M00_AXI_wdata(31 downto 0) <= s00_couplers_to_Gateway_Logik_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= s00_couplers_to_Gateway_Logik_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid <= s00_couplers_to_Gateway_Logik_0_axi_periph_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= Gateway_Logik_0_axi_periph_to_s00_couplers_ARREADY;
  S00_AXI_awready <= Gateway_Logik_0_axi_periph_to_s00_couplers_AWREADY;
  S00_AXI_bresp(1 downto 0) <= Gateway_Logik_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= Gateway_Logik_0_axi_periph_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= Gateway_Logik_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= Gateway_Logik_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= Gateway_Logik_0_axi_periph_to_s00_couplers_RVALID;
  S00_AXI_wready <= Gateway_Logik_0_axi_periph_to_s00_couplers_WREADY;
  s00_couplers_to_Gateway_Logik_0_axi_periph_ARREADY <= M00_AXI_arready;
  s00_couplers_to_Gateway_Logik_0_axi_periph_AWREADY <= M00_AXI_awready;
  s00_couplers_to_Gateway_Logik_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  s00_couplers_to_Gateway_Logik_0_axi_periph_BVALID <= M00_AXI_bvalid;
  s00_couplers_to_Gateway_Logik_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  s00_couplers_to_Gateway_Logik_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  s00_couplers_to_Gateway_Logik_0_axi_periph_RVALID <= M00_AXI_rvalid;
  s00_couplers_to_Gateway_Logik_0_axi_periph_WREADY <= M00_AXI_wready;
s00_couplers: entity work.s00_couplers_imp_NYYE1T
     port map (
      M_ACLK => Gateway_Logik_0_axi_periph_ACLK_net,
      M_ARESETN => Gateway_Logik_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_Gateway_Logik_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => s00_couplers_to_Gateway_Logik_0_axi_periph_ARREADY,
      M_AXI_arvalid => s00_couplers_to_Gateway_Logik_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_Gateway_Logik_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => s00_couplers_to_Gateway_Logik_0_axi_periph_AWREADY,
      M_AXI_awvalid => s00_couplers_to_Gateway_Logik_0_axi_periph_AWVALID,
      M_AXI_bready => s00_couplers_to_Gateway_Logik_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_Gateway_Logik_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_Gateway_Logik_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => s00_couplers_to_Gateway_Logik_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_Gateway_Logik_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_Gateway_Logik_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_Gateway_Logik_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => s00_couplers_to_Gateway_Logik_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_Gateway_Logik_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_Gateway_Logik_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_Gateway_Logik_0_axi_periph_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => Gateway_Logik_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arready => Gateway_Logik_0_axi_periph_to_s00_couplers_ARREADY,
      S_AXI_arvalid => Gateway_Logik_0_axi_periph_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => Gateway_Logik_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awready => Gateway_Logik_0_axi_periph_to_s00_couplers_AWREADY,
      S_AXI_awvalid => Gateway_Logik_0_axi_periph_to_s00_couplers_AWVALID,
      S_AXI_bready => Gateway_Logik_0_axi_periph_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => Gateway_Logik_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => Gateway_Logik_0_axi_periph_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => Gateway_Logik_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rready => Gateway_Logik_0_axi_periph_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => Gateway_Logik_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => Gateway_Logik_0_axi_periph_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => Gateway_Logik_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wready => Gateway_Logik_0_axi_periph_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => Gateway_Logik_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => Gateway_Logik_0_axi_periph_to_s00_couplers_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity can_test_Gateway_Logik_0_axi_periph_1_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end can_test_Gateway_Logik_0_axi_periph_1_0;

architecture STRUCTURE of can_test_Gateway_Logik_0_axi_periph_1_0 is
  signal Gateway_Logik_0_axi_periph_1_ACLK_net : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_1_ARESETN_net : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_1_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_axi_periph_1_to_s00_couplers_ARREADY : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_1_to_s00_couplers_ARVALID : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_1_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_axi_periph_1_to_s00_couplers_AWREADY : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_1_to_s00_couplers_AWVALID : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_1_to_s00_couplers_BREADY : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_1_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Gateway_Logik_0_axi_periph_1_to_s00_couplers_BVALID : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_1_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_axi_periph_1_to_s00_couplers_RREADY : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_1_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Gateway_Logik_0_axi_periph_1_to_s00_couplers_RVALID : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_1_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_axi_periph_1_to_s00_couplers_WREADY : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_1_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Gateway_Logik_0_axi_periph_1_to_s00_couplers_WVALID : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_1_ARREADY : STD_LOGIC;
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_1_ARVALID : STD_LOGIC;
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_1_AWREADY : STD_LOGIC;
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_1_AWVALID : STD_LOGIC;
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_1_BREADY : STD_LOGIC;
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_1_BVALID : STD_LOGIC;
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_1_RREADY : STD_LOGIC;
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_1_RVALID : STD_LOGIC;
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_1_WREADY : STD_LOGIC;
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_Gateway_Logik_0_axi_periph_1_WVALID : STD_LOGIC;
begin
  Gateway_Logik_0_axi_periph_1_ACLK_net <= M00_ACLK;
  Gateway_Logik_0_axi_periph_1_ARESETN_net <= M00_ARESETN;
  Gateway_Logik_0_axi_periph_1_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  Gateway_Logik_0_axi_periph_1_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  Gateway_Logik_0_axi_periph_1_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  Gateway_Logik_0_axi_periph_1_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  Gateway_Logik_0_axi_periph_1_to_s00_couplers_BREADY <= S00_AXI_bready;
  Gateway_Logik_0_axi_periph_1_to_s00_couplers_RREADY <= S00_AXI_rready;
  Gateway_Logik_0_axi_periph_1_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  Gateway_Logik_0_axi_periph_1_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  Gateway_Logik_0_axi_periph_1_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  M00_AXI_araddr(31 downto 0) <= s00_couplers_to_Gateway_Logik_0_axi_periph_1_ARADDR(31 downto 0);
  M00_AXI_arvalid <= s00_couplers_to_Gateway_Logik_0_axi_periph_1_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= s00_couplers_to_Gateway_Logik_0_axi_periph_1_AWADDR(31 downto 0);
  M00_AXI_awvalid <= s00_couplers_to_Gateway_Logik_0_axi_periph_1_AWVALID;
  M00_AXI_bready <= s00_couplers_to_Gateway_Logik_0_axi_periph_1_BREADY;
  M00_AXI_rready <= s00_couplers_to_Gateway_Logik_0_axi_periph_1_RREADY;
  M00_AXI_wdata(31 downto 0) <= s00_couplers_to_Gateway_Logik_0_axi_periph_1_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= s00_couplers_to_Gateway_Logik_0_axi_periph_1_WSTRB(3 downto 0);
  M00_AXI_wvalid <= s00_couplers_to_Gateway_Logik_0_axi_periph_1_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= Gateway_Logik_0_axi_periph_1_to_s00_couplers_ARREADY;
  S00_AXI_awready <= Gateway_Logik_0_axi_periph_1_to_s00_couplers_AWREADY;
  S00_AXI_bresp(1 downto 0) <= Gateway_Logik_0_axi_periph_1_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= Gateway_Logik_0_axi_periph_1_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= Gateway_Logik_0_axi_periph_1_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= Gateway_Logik_0_axi_periph_1_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= Gateway_Logik_0_axi_periph_1_to_s00_couplers_RVALID;
  S00_AXI_wready <= Gateway_Logik_0_axi_periph_1_to_s00_couplers_WREADY;
  s00_couplers_to_Gateway_Logik_0_axi_periph_1_ARREADY <= M00_AXI_arready;
  s00_couplers_to_Gateway_Logik_0_axi_periph_1_AWREADY <= M00_AXI_awready;
  s00_couplers_to_Gateway_Logik_0_axi_periph_1_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  s00_couplers_to_Gateway_Logik_0_axi_periph_1_BVALID <= M00_AXI_bvalid;
  s00_couplers_to_Gateway_Logik_0_axi_periph_1_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  s00_couplers_to_Gateway_Logik_0_axi_periph_1_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  s00_couplers_to_Gateway_Logik_0_axi_periph_1_RVALID <= M00_AXI_rvalid;
  s00_couplers_to_Gateway_Logik_0_axi_periph_1_WREADY <= M00_AXI_wready;
s00_couplers: entity work.s00_couplers_imp_1G41L2L
     port map (
      M_ACLK => Gateway_Logik_0_axi_periph_1_ACLK_net,
      M_ARESETN => Gateway_Logik_0_axi_periph_1_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_Gateway_Logik_0_axi_periph_1_ARADDR(31 downto 0),
      M_AXI_arready => s00_couplers_to_Gateway_Logik_0_axi_periph_1_ARREADY,
      M_AXI_arvalid => s00_couplers_to_Gateway_Logik_0_axi_periph_1_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_Gateway_Logik_0_axi_periph_1_AWADDR(31 downto 0),
      M_AXI_awready => s00_couplers_to_Gateway_Logik_0_axi_periph_1_AWREADY,
      M_AXI_awvalid => s00_couplers_to_Gateway_Logik_0_axi_periph_1_AWVALID,
      M_AXI_bready => s00_couplers_to_Gateway_Logik_0_axi_periph_1_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_Gateway_Logik_0_axi_periph_1_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_Gateway_Logik_0_axi_periph_1_BVALID,
      M_AXI_rdata(31 downto 0) => s00_couplers_to_Gateway_Logik_0_axi_periph_1_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_Gateway_Logik_0_axi_periph_1_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_Gateway_Logik_0_axi_periph_1_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_Gateway_Logik_0_axi_periph_1_RVALID,
      M_AXI_wdata(31 downto 0) => s00_couplers_to_Gateway_Logik_0_axi_periph_1_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_Gateway_Logik_0_axi_periph_1_WREADY,
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_Gateway_Logik_0_axi_periph_1_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_Gateway_Logik_0_axi_periph_1_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => Gateway_Logik_0_axi_periph_1_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arready => Gateway_Logik_0_axi_periph_1_to_s00_couplers_ARREADY,
      S_AXI_arvalid => Gateway_Logik_0_axi_periph_1_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => Gateway_Logik_0_axi_periph_1_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awready => Gateway_Logik_0_axi_periph_1_to_s00_couplers_AWREADY,
      S_AXI_awvalid => Gateway_Logik_0_axi_periph_1_to_s00_couplers_AWVALID,
      S_AXI_bready => Gateway_Logik_0_axi_periph_1_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => Gateway_Logik_0_axi_periph_1_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => Gateway_Logik_0_axi_periph_1_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => Gateway_Logik_0_axi_periph_1_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rready => Gateway_Logik_0_axi_periph_1_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => Gateway_Logik_0_axi_periph_1_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => Gateway_Logik_0_axi_periph_1_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => Gateway_Logik_0_axi_periph_1_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wready => Gateway_Logik_0_axi_periph_1_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => Gateway_Logik_0_axi_periph_1_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => Gateway_Logik_0_axi_periph_1_to_s00_couplers_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity can_test_axi_mem_intercon_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end can_test_axi_mem_intercon_0;

architecture STRUCTURE of can_test_axi_mem_intercon_0 is
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal axi_mem_intercon_ACLK_net : STD_LOGIC;
  signal axi_mem_intercon_ARESETN_net : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_ARREADY : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_ARVALID : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_AWREADY : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_AWVALID : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_BREADY : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_BVALID : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_RREADY : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_RVALID : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_WREADY : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_WVALID : STD_LOGIC;
begin
  M00_AXI_araddr(31 downto 0) <= s00_couplers_to_axi_mem_intercon_ARADDR(31 downto 0);
  M00_AXI_arprot(2 downto 0) <= s00_couplers_to_axi_mem_intercon_ARPROT(2 downto 0);
  M00_AXI_arvalid <= s00_couplers_to_axi_mem_intercon_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= s00_couplers_to_axi_mem_intercon_AWADDR(31 downto 0);
  M00_AXI_awprot(2 downto 0) <= s00_couplers_to_axi_mem_intercon_AWPROT(2 downto 0);
  M00_AXI_awvalid <= s00_couplers_to_axi_mem_intercon_AWVALID;
  M00_AXI_bready <= s00_couplers_to_axi_mem_intercon_BREADY;
  M00_AXI_rready <= s00_couplers_to_axi_mem_intercon_RREADY;
  M00_AXI_wdata(31 downto 0) <= s00_couplers_to_axi_mem_intercon_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= s00_couplers_to_axi_mem_intercon_WSTRB(3 downto 0);
  M00_AXI_wvalid <= s00_couplers_to_axi_mem_intercon_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= axi_mem_intercon_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_mem_intercon_to_s00_couplers_AWREADY;
  S00_AXI_bresp(1 downto 0) <= axi_mem_intercon_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= axi_mem_intercon_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= axi_mem_intercon_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= axi_mem_intercon_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= axi_mem_intercon_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_mem_intercon_to_s00_couplers_WREADY;
  axi_mem_intercon_ACLK_net <= M00_ACLK;
  axi_mem_intercon_ARESETN_net <= M00_ARESETN;
  axi_mem_intercon_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_mem_intercon_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_mem_intercon_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_mem_intercon_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_mem_intercon_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_mem_intercon_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_mem_intercon_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_mem_intercon_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_mem_intercon_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  axi_mem_intercon_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  axi_mem_intercon_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  s00_couplers_to_axi_mem_intercon_ARREADY <= M00_AXI_arready;
  s00_couplers_to_axi_mem_intercon_AWREADY <= M00_AXI_awready;
  s00_couplers_to_axi_mem_intercon_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  s00_couplers_to_axi_mem_intercon_BVALID <= M00_AXI_bvalid;
  s00_couplers_to_axi_mem_intercon_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  s00_couplers_to_axi_mem_intercon_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  s00_couplers_to_axi_mem_intercon_RVALID <= M00_AXI_rvalid;
  s00_couplers_to_axi_mem_intercon_WREADY <= M00_AXI_wready;
s00_couplers: entity work.s00_couplers_imp_15B6EX
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN => axi_mem_intercon_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_axi_mem_intercon_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_axi_mem_intercon_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_axi_mem_intercon_ARREADY,
      M_AXI_arvalid => s00_couplers_to_axi_mem_intercon_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_axi_mem_intercon_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_axi_mem_intercon_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_axi_mem_intercon_AWREADY,
      M_AXI_awvalid => s00_couplers_to_axi_mem_intercon_AWVALID,
      M_AXI_bready => s00_couplers_to_axi_mem_intercon_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_axi_mem_intercon_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_axi_mem_intercon_BVALID,
      M_AXI_rdata(31 downto 0) => s00_couplers_to_axi_mem_intercon_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_axi_mem_intercon_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_axi_mem_intercon_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_axi_mem_intercon_RVALID,
      M_AXI_wdata(31 downto 0) => s00_couplers_to_axi_mem_intercon_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_axi_mem_intercon_WREADY,
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_axi_mem_intercon_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_axi_mem_intercon_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_mem_intercon_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => axi_mem_intercon_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready => axi_mem_intercon_to_s00_couplers_ARREADY,
      S_AXI_arvalid => axi_mem_intercon_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_mem_intercon_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => axi_mem_intercon_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready => axi_mem_intercon_to_s00_couplers_AWREADY,
      S_AXI_awvalid => axi_mem_intercon_to_s00_couplers_AWVALID,
      S_AXI_bready => axi_mem_intercon_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_mem_intercon_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_mem_intercon_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_mem_intercon_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rready => axi_mem_intercon_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_mem_intercon_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_mem_intercon_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_mem_intercon_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wready => axi_mem_intercon_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_mem_intercon_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_mem_intercon_to_s00_couplers_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity can_test is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of can_test : entity is "can_test,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=can_test,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=17,numReposBlks=11,numNonXlnxBlks=1,numHierBlks=6,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=10,da_board_cnt=7,da_bram_cntlr_cnt=1,da_clkrst_cnt=1,synth_mode=OOC_per_BD}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of can_test : entity is "can_test.hwdef";
end can_test;

architecture STRUCTURE of can_test is
  component can_test_can_0_0 is
  port (
    can_clk : in STD_LOGIC;
    can_phy_rx : in STD_LOGIC;
    can_phy_tx : out STD_LOGIC;
    ip2bus_intrevent : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  end component can_test_can_0_0;
  component can_test_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component can_test_proc_sys_reset_0_0;
  component can_test_input_register_can_0_0 is
  port (
    can_clk : in STD_LOGIC;
    can_phy_rx : in STD_LOGIC;
    can_rx_sync : out STD_LOGIC
  );
  end component can_test_input_register_can_0_0;
  component can_test_tx_pulse_generator_0_0 is
  port (
    AXI_CLK : in STD_LOGIC;
    CAN_POWERUP : in STD_LOGIC;
    TX_PULSE : out STD_LOGIC
  );
  end component can_test_tx_pulse_generator_0_0;
  component can_test_frequency_test_0_0 is
  port (
    main_freq_in : in STD_LOGIC;
    can_clk_in : in STD_LOGIC;
    main_freq_test_probe_out : out STD_LOGIC;
    can_clk_test_probe_out : out STD_LOGIC
  );
  end component can_test_frequency_test_0_0;
  component can_test_clk_wiz_0_2 is
  port (
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC
  );
  end component can_test_clk_wiz_0_2;
  component can_test_can_1_0 is
  port (
    can_clk : in STD_LOGIC;
    can_phy_rx : in STD_LOGIC;
    can_phy_tx : out STD_LOGIC;
    ip2bus_intrevent : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  end component can_test_can_1_0;
  component can_test_axi_bram_ctrl_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component can_test_axi_bram_ctrl_0_0;
  component can_test_axi_bram_ctrl_0_bram_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC
  );
  end component can_test_axi_bram_ctrl_0_bram_0;
  component can_test_input_register_can_1_0 is
  port (
    can_clk : in STD_LOGIC;
    can_phy_rx : in STD_LOGIC;
    can_rx_sync : out STD_LOGIC
  );
  end component can_test_input_register_can_1_0;
  component can_test_Gateway_Logik_0_0 is
  port (
    GPIO_LED_0 : out STD_LOGIC;
    GPIO_LED_1 : out STD_LOGIC;
    GPIO_LED_2 : out STD_LOGIC;
    GPIO_LED_3 : out STD_LOGIC;
    GPIO_LED_4 : out STD_LOGIC;
    GPIO_LED_5 : out STD_LOGIC;
    GPIO_LED_6 : out STD_LOGIC;
    GPIO_LED_7 : out STD_LOGIC;
    can_powerup_stat : out STD_LOGIC;
    m00_axi_init_axi_txn : in STD_LOGIC;
    m00_axi_error : out STD_LOGIC;
    m00_axi_txn_done : out STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arvalid : out STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_rready : out STD_LOGIC;
    m01_axi_init_axi_txn : in STD_LOGIC;
    m01_axi_error : out STD_LOGIC;
    m01_axi_txn_done : out STD_LOGIC;
    m01_axi_aclk : in STD_LOGIC;
    m01_axi_aresetn : in STD_LOGIC;
    m01_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m01_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m01_axi_awvalid : out STD_LOGIC;
    m01_axi_awready : in STD_LOGIC;
    m01_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m01_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m01_axi_wvalid : out STD_LOGIC;
    m01_axi_wready : in STD_LOGIC;
    m01_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m01_axi_bvalid : in STD_LOGIC;
    m01_axi_bready : out STD_LOGIC;
    m01_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m01_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m01_axi_arvalid : out STD_LOGIC;
    m01_axi_arready : in STD_LOGIC;
    m01_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m01_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m01_axi_rvalid : in STD_LOGIC;
    m01_axi_rready : out STD_LOGIC;
    m02_axi_init_axi_txn : in STD_LOGIC;
    m02_axi_error : out STD_LOGIC;
    m02_axi_txn_done : out STD_LOGIC;
    m02_axi_aclk : in STD_LOGIC;
    m02_axi_aresetn : in STD_LOGIC;
    m02_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m02_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m02_axi_awvalid : out STD_LOGIC;
    m02_axi_awready : in STD_LOGIC;
    m02_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m02_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m02_axi_wvalid : out STD_LOGIC;
    m02_axi_wready : in STD_LOGIC;
    m02_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m02_axi_bvalid : in STD_LOGIC;
    m02_axi_bready : out STD_LOGIC;
    m02_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m02_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m02_axi_arvalid : out STD_LOGIC;
    m02_axi_arready : in STD_LOGIC;
    m02_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m02_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m02_axi_rvalid : in STD_LOGIC;
    m02_axi_rready : out STD_LOGIC
  );
  end component can_test_Gateway_Logik_0_0;
  signal CPU_RESET_1 : STD_LOGIC;
  signal Gateway_Logik_0_GPIO_LED_0 : STD_LOGIC;
  signal Gateway_Logik_0_GPIO_LED_1 : STD_LOGIC;
  signal Gateway_Logik_0_GPIO_LED_2 : STD_LOGIC;
  signal Gateway_Logik_0_GPIO_LED_3 : STD_LOGIC;
  signal Gateway_Logik_0_GPIO_LED_4 : STD_LOGIC;
  signal Gateway_Logik_0_GPIO_LED_5 : STD_LOGIC;
  signal Gateway_Logik_0_GPIO_LED_6 : STD_LOGIC;
  signal Gateway_Logik_0_GPIO_LED_7 : STD_LOGIC;
  signal Gateway_Logik_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_M00_AXI_ARREADY : STD_LOGIC;
  signal Gateway_Logik_0_M00_AXI_ARVALID : STD_LOGIC;
  signal Gateway_Logik_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_M00_AXI_AWREADY : STD_LOGIC;
  signal Gateway_Logik_0_M00_AXI_AWVALID : STD_LOGIC;
  signal Gateway_Logik_0_M00_AXI_BREADY : STD_LOGIC;
  signal Gateway_Logik_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Gateway_Logik_0_M00_AXI_BVALID : STD_LOGIC;
  signal Gateway_Logik_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_M00_AXI_RREADY : STD_LOGIC;
  signal Gateway_Logik_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Gateway_Logik_0_M00_AXI_RVALID : STD_LOGIC;
  signal Gateway_Logik_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_M00_AXI_WREADY : STD_LOGIC;
  signal Gateway_Logik_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Gateway_Logik_0_M00_AXI_WVALID : STD_LOGIC;
  signal Gateway_Logik_0_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_M01_AXI_ARREADY : STD_LOGIC;
  signal Gateway_Logik_0_M01_AXI_ARVALID : STD_LOGIC;
  signal Gateway_Logik_0_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_M01_AXI_AWREADY : STD_LOGIC;
  signal Gateway_Logik_0_M01_AXI_AWVALID : STD_LOGIC;
  signal Gateway_Logik_0_M01_AXI_BREADY : STD_LOGIC;
  signal Gateway_Logik_0_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Gateway_Logik_0_M01_AXI_BVALID : STD_LOGIC;
  signal Gateway_Logik_0_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_M01_AXI_RREADY : STD_LOGIC;
  signal Gateway_Logik_0_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Gateway_Logik_0_M01_AXI_RVALID : STD_LOGIC;
  signal Gateway_Logik_0_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_M01_AXI_WREADY : STD_LOGIC;
  signal Gateway_Logik_0_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Gateway_Logik_0_M01_AXI_WVALID : STD_LOGIC;
  signal Gateway_Logik_0_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_M02_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Gateway_Logik_0_M02_AXI_ARREADY : STD_LOGIC;
  signal Gateway_Logik_0_M02_AXI_ARVALID : STD_LOGIC;
  signal Gateway_Logik_0_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_M02_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Gateway_Logik_0_M02_AXI_AWREADY : STD_LOGIC;
  signal Gateway_Logik_0_M02_AXI_AWVALID : STD_LOGIC;
  signal Gateway_Logik_0_M02_AXI_BREADY : STD_LOGIC;
  signal Gateway_Logik_0_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Gateway_Logik_0_M02_AXI_BVALID : STD_LOGIC;
  signal Gateway_Logik_0_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_M02_AXI_RREADY : STD_LOGIC;
  signal Gateway_Logik_0_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Gateway_Logik_0_M02_AXI_RVALID : STD_LOGIC;
  signal Gateway_Logik_0_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_M02_AXI_WREADY : STD_LOGIC;
  signal Gateway_Logik_0_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Gateway_Logik_0_M02_AXI_WVALID : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_1_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_axi_periph_1_M00_AXI_ARREADY : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_1_M00_AXI_ARVALID : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_1_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_axi_periph_1_M00_AXI_AWREADY : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_1_M00_AXI_AWVALID : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_1_M00_AXI_BREADY : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_1_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Gateway_Logik_0_axi_periph_1_M00_AXI_BVALID : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_1_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_axi_periph_1_M00_AXI_RREADY : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_1_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Gateway_Logik_0_axi_periph_1_M00_AXI_RVALID : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_1_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_axi_periph_1_M00_AXI_WREADY : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_1_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Gateway_Logik_0_axi_periph_1_M00_AXI_WVALID : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_M00_AXI_BREADY : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Gateway_Logik_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_axi_periph_M00_AXI_RREADY : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Gateway_Logik_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Gateway_Logik_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal Gateway_Logik_0_axi_periph_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Gateway_Logik_0_axi_periph_M00_AXI_WVALID : STD_LOGIC;
  signal Gateway_Logik_0_can_powerup_stat : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_BREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_BVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_M00_AXI_RREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_RVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_M00_AXI_WREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_WVALID : STD_LOGIC;
  signal can_0_can_phy_tx : STD_LOGIC;
  signal can_1_can_phy_tx : STD_LOGIC;
  signal can_phy_rx_0_1 : STD_LOGIC;
  signal can_phy_rx_1_1 : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_clk_out2 : STD_LOGIC;
  signal frequency_test_0_can_clk_test_probe_out : STD_LOGIC;
  signal frequency_test_0_main_freq_test_probe_out : STD_LOGIC;
  signal input_register_can_0_can_rx_sync : STD_LOGIC;
  signal input_register_can_1_can_rx_sync : STD_LOGIC;
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tx_pulse_generator_0_TX_PULSE : STD_LOGIC;
  signal user_si570_sysclk_1_CLK_N : STD_LOGIC;
  signal user_si570_sysclk_1_CLK_P : STD_LOGIC;
  signal NLW_Gateway_Logik_0_m00_axi_error_UNCONNECTED : STD_LOGIC;
  signal NLW_Gateway_Logik_0_m00_axi_txn_done_UNCONNECTED : STD_LOGIC;
  signal NLW_Gateway_Logik_0_m01_axi_error_UNCONNECTED : STD_LOGIC;
  signal NLW_Gateway_Logik_0_m01_axi_txn_done_UNCONNECTED : STD_LOGIC;
  signal NLW_Gateway_Logik_0_m02_axi_error_UNCONNECTED : STD_LOGIC;
  signal NLW_Gateway_Logik_0_m02_axi_txn_done_UNCONNECTED : STD_LOGIC;
  signal NLW_Gateway_Logik_0_m00_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_Gateway_Logik_0_m00_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_Gateway_Logik_0_m01_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_Gateway_Logik_0_m01_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_bram_ctrl_0_bram_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_can_0_ip2bus_intrevent_UNCONNECTED : STD_LOGIC;
  signal NLW_can_1_ip2bus_intrevent_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CPU_RESET : signal is "xilinx.com:signal:reset:1.0 RST.CPU_RESET RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CPU_RESET : signal is "XIL_INTERFACENAME RST.CPU_RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of user_si570_sysclk_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 user_si570_sysclk CLK_N";
  attribute X_INTERFACE_PARAMETER of user_si570_sysclk_clk_n : signal is "XIL_INTERFACENAME user_si570_sysclk, CAN_DEBUG false, FREQ_HZ 300000000";
  attribute X_INTERFACE_INFO of user_si570_sysclk_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 user_si570_sysclk CLK_P";
begin
  CPU_RESET_1 <= CPU_RESET;
  GPIO_LED_0 <= Gateway_Logik_0_GPIO_LED_0;
  GPIO_LED_1 <= Gateway_Logik_0_GPIO_LED_1;
  GPIO_LED_2 <= Gateway_Logik_0_GPIO_LED_2;
  GPIO_LED_3 <= Gateway_Logik_0_GPIO_LED_3;
  GPIO_LED_4 <= Gateway_Logik_0_GPIO_LED_4;
  GPIO_LED_5 <= Gateway_Logik_0_GPIO_LED_5;
  GPIO_LED_6 <= Gateway_Logik_0_GPIO_LED_6;
  GPIO_LED_7 <= Gateway_Logik_0_GPIO_LED_7;
  PMOD0_3 <= frequency_test_0_main_freq_test_probe_out;
  PMOD0_5 <= frequency_test_0_can_clk_test_probe_out;
  can_phy_rx_0_1 <= can_phy_rx_0;
  can_phy_rx_1_1 <= can_phy_rx_1;
  can_phy_tx_0 <= can_0_can_phy_tx;
  can_phy_tx_1 <= can_1_can_phy_tx;
  user_si570_sysclk_1_CLK_N <= user_si570_sysclk_clk_n;
  user_si570_sysclk_1_CLK_P <= user_si570_sysclk_clk_p;
Gateway_Logik_0: component can_test_Gateway_Logik_0_0
     port map (
      GPIO_LED_0 => Gateway_Logik_0_GPIO_LED_0,
      GPIO_LED_1 => Gateway_Logik_0_GPIO_LED_1,
      GPIO_LED_2 => Gateway_Logik_0_GPIO_LED_2,
      GPIO_LED_3 => Gateway_Logik_0_GPIO_LED_3,
      GPIO_LED_4 => Gateway_Logik_0_GPIO_LED_4,
      GPIO_LED_5 => Gateway_Logik_0_GPIO_LED_5,
      GPIO_LED_6 => Gateway_Logik_0_GPIO_LED_6,
      GPIO_LED_7 => Gateway_Logik_0_GPIO_LED_7,
      can_powerup_stat => Gateway_Logik_0_can_powerup_stat,
      m00_axi_aclk => clk_wiz_0_clk_out1,
      m00_axi_araddr(31 downto 0) => Gateway_Logik_0_M00_AXI_ARADDR(31 downto 0),
      m00_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      m00_axi_arprot(2 downto 0) => NLW_Gateway_Logik_0_m00_axi_arprot_UNCONNECTED(2 downto 0),
      m00_axi_arready => Gateway_Logik_0_M00_AXI_ARREADY,
      m00_axi_arvalid => Gateway_Logik_0_M00_AXI_ARVALID,
      m00_axi_awaddr(31 downto 0) => Gateway_Logik_0_M00_AXI_AWADDR(31 downto 0),
      m00_axi_awprot(2 downto 0) => NLW_Gateway_Logik_0_m00_axi_awprot_UNCONNECTED(2 downto 0),
      m00_axi_awready => Gateway_Logik_0_M00_AXI_AWREADY,
      m00_axi_awvalid => Gateway_Logik_0_M00_AXI_AWVALID,
      m00_axi_bready => Gateway_Logik_0_M00_AXI_BREADY,
      m00_axi_bresp(1 downto 0) => Gateway_Logik_0_M00_AXI_BRESP(1 downto 0),
      m00_axi_bvalid => Gateway_Logik_0_M00_AXI_BVALID,
      m00_axi_error => NLW_Gateway_Logik_0_m00_axi_error_UNCONNECTED,
      m00_axi_init_axi_txn => tx_pulse_generator_0_TX_PULSE,
      m00_axi_rdata(31 downto 0) => Gateway_Logik_0_M00_AXI_RDATA(31 downto 0),
      m00_axi_rready => Gateway_Logik_0_M00_AXI_RREADY,
      m00_axi_rresp(1 downto 0) => Gateway_Logik_0_M00_AXI_RRESP(1 downto 0),
      m00_axi_rvalid => Gateway_Logik_0_M00_AXI_RVALID,
      m00_axi_txn_done => NLW_Gateway_Logik_0_m00_axi_txn_done_UNCONNECTED,
      m00_axi_wdata(31 downto 0) => Gateway_Logik_0_M00_AXI_WDATA(31 downto 0),
      m00_axi_wready => Gateway_Logik_0_M00_AXI_WREADY,
      m00_axi_wstrb(3 downto 0) => Gateway_Logik_0_M00_AXI_WSTRB(3 downto 0),
      m00_axi_wvalid => Gateway_Logik_0_M00_AXI_WVALID,
      m01_axi_aclk => clk_wiz_0_clk_out1,
      m01_axi_araddr(31 downto 0) => Gateway_Logik_0_M01_AXI_ARADDR(31 downto 0),
      m01_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      m01_axi_arprot(2 downto 0) => NLW_Gateway_Logik_0_m01_axi_arprot_UNCONNECTED(2 downto 0),
      m01_axi_arready => Gateway_Logik_0_M01_AXI_ARREADY,
      m01_axi_arvalid => Gateway_Logik_0_M01_AXI_ARVALID,
      m01_axi_awaddr(31 downto 0) => Gateway_Logik_0_M01_AXI_AWADDR(31 downto 0),
      m01_axi_awprot(2 downto 0) => NLW_Gateway_Logik_0_m01_axi_awprot_UNCONNECTED(2 downto 0),
      m01_axi_awready => Gateway_Logik_0_M01_AXI_AWREADY,
      m01_axi_awvalid => Gateway_Logik_0_M01_AXI_AWVALID,
      m01_axi_bready => Gateway_Logik_0_M01_AXI_BREADY,
      m01_axi_bresp(1 downto 0) => Gateway_Logik_0_M01_AXI_BRESP(1 downto 0),
      m01_axi_bvalid => Gateway_Logik_0_M01_AXI_BVALID,
      m01_axi_error => NLW_Gateway_Logik_0_m01_axi_error_UNCONNECTED,
      m01_axi_init_axi_txn => tx_pulse_generator_0_TX_PULSE,
      m01_axi_rdata(31 downto 0) => Gateway_Logik_0_M01_AXI_RDATA(31 downto 0),
      m01_axi_rready => Gateway_Logik_0_M01_AXI_RREADY,
      m01_axi_rresp(1 downto 0) => Gateway_Logik_0_M01_AXI_RRESP(1 downto 0),
      m01_axi_rvalid => Gateway_Logik_0_M01_AXI_RVALID,
      m01_axi_txn_done => NLW_Gateway_Logik_0_m01_axi_txn_done_UNCONNECTED,
      m01_axi_wdata(31 downto 0) => Gateway_Logik_0_M01_AXI_WDATA(31 downto 0),
      m01_axi_wready => Gateway_Logik_0_M01_AXI_WREADY,
      m01_axi_wstrb(3 downto 0) => Gateway_Logik_0_M01_AXI_WSTRB(3 downto 0),
      m01_axi_wvalid => Gateway_Logik_0_M01_AXI_WVALID,
      m02_axi_aclk => clk_wiz_0_clk_out1,
      m02_axi_araddr(31 downto 0) => Gateway_Logik_0_M02_AXI_ARADDR(31 downto 0),
      m02_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      m02_axi_arprot(2 downto 0) => Gateway_Logik_0_M02_AXI_ARPROT(2 downto 0),
      m02_axi_arready => Gateway_Logik_0_M02_AXI_ARREADY,
      m02_axi_arvalid => Gateway_Logik_0_M02_AXI_ARVALID,
      m02_axi_awaddr(31 downto 0) => Gateway_Logik_0_M02_AXI_AWADDR(31 downto 0),
      m02_axi_awprot(2 downto 0) => Gateway_Logik_0_M02_AXI_AWPROT(2 downto 0),
      m02_axi_awready => Gateway_Logik_0_M02_AXI_AWREADY,
      m02_axi_awvalid => Gateway_Logik_0_M02_AXI_AWVALID,
      m02_axi_bready => Gateway_Logik_0_M02_AXI_BREADY,
      m02_axi_bresp(1 downto 0) => Gateway_Logik_0_M02_AXI_BRESP(1 downto 0),
      m02_axi_bvalid => Gateway_Logik_0_M02_AXI_BVALID,
      m02_axi_error => NLW_Gateway_Logik_0_m02_axi_error_UNCONNECTED,
      m02_axi_init_axi_txn => tx_pulse_generator_0_TX_PULSE,
      m02_axi_rdata(31 downto 0) => Gateway_Logik_0_M02_AXI_RDATA(31 downto 0),
      m02_axi_rready => Gateway_Logik_0_M02_AXI_RREADY,
      m02_axi_rresp(1 downto 0) => Gateway_Logik_0_M02_AXI_RRESP(1 downto 0),
      m02_axi_rvalid => Gateway_Logik_0_M02_AXI_RVALID,
      m02_axi_txn_done => NLW_Gateway_Logik_0_m02_axi_txn_done_UNCONNECTED,
      m02_axi_wdata(31 downto 0) => Gateway_Logik_0_M02_AXI_WDATA(31 downto 0),
      m02_axi_wready => Gateway_Logik_0_M02_AXI_WREADY,
      m02_axi_wstrb(3 downto 0) => Gateway_Logik_0_M02_AXI_WSTRB(3 downto 0),
      m02_axi_wvalid => Gateway_Logik_0_M02_AXI_WVALID
    );
Gateway_Logik_0_axi_periph: entity work.can_test_Gateway_Logik_0_axi_periph_0
     port map (
      ACLK => clk_wiz_0_clk_out1,
      ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M00_ACLK => clk_wiz_0_clk_out1,
      M00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => Gateway_Logik_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready => Gateway_Logik_0_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid => Gateway_Logik_0_axi_periph_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => Gateway_Logik_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready => Gateway_Logik_0_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid => Gateway_Logik_0_axi_periph_M00_AXI_AWVALID,
      M00_AXI_bready => Gateway_Logik_0_axi_periph_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => Gateway_Logik_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => Gateway_Logik_0_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => Gateway_Logik_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => Gateway_Logik_0_axi_periph_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => Gateway_Logik_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => Gateway_Logik_0_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => Gateway_Logik_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => Gateway_Logik_0_axi_periph_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => Gateway_Logik_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => Gateway_Logik_0_axi_periph_M00_AXI_WVALID,
      S00_ACLK => clk_wiz_0_clk_out1,
      S00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => Gateway_Logik_0_M00_AXI_ARADDR(31 downto 0),
      S00_AXI_arready => Gateway_Logik_0_M00_AXI_ARREADY,
      S00_AXI_arvalid => Gateway_Logik_0_M00_AXI_ARVALID,
      S00_AXI_awaddr(31 downto 0) => Gateway_Logik_0_M00_AXI_AWADDR(31 downto 0),
      S00_AXI_awready => Gateway_Logik_0_M00_AXI_AWREADY,
      S00_AXI_awvalid => Gateway_Logik_0_M00_AXI_AWVALID,
      S00_AXI_bready => Gateway_Logik_0_M00_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => Gateway_Logik_0_M00_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => Gateway_Logik_0_M00_AXI_BVALID,
      S00_AXI_rdata(31 downto 0) => Gateway_Logik_0_M00_AXI_RDATA(31 downto 0),
      S00_AXI_rready => Gateway_Logik_0_M00_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => Gateway_Logik_0_M00_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => Gateway_Logik_0_M00_AXI_RVALID,
      S00_AXI_wdata(31 downto 0) => Gateway_Logik_0_M00_AXI_WDATA(31 downto 0),
      S00_AXI_wready => Gateway_Logik_0_M00_AXI_WREADY,
      S00_AXI_wstrb(3 downto 0) => Gateway_Logik_0_M00_AXI_WSTRB(3 downto 0),
      S00_AXI_wvalid => Gateway_Logik_0_M00_AXI_WVALID
    );
Gateway_Logik_0_axi_periph_1: entity work.can_test_Gateway_Logik_0_axi_periph_1_0
     port map (
      ACLK => clk_wiz_0_clk_out1,
      ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M00_ACLK => clk_wiz_0_clk_out1,
      M00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => Gateway_Logik_0_axi_periph_1_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready => Gateway_Logik_0_axi_periph_1_M00_AXI_ARREADY,
      M00_AXI_arvalid => Gateway_Logik_0_axi_periph_1_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => Gateway_Logik_0_axi_periph_1_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready => Gateway_Logik_0_axi_periph_1_M00_AXI_AWREADY,
      M00_AXI_awvalid => Gateway_Logik_0_axi_periph_1_M00_AXI_AWVALID,
      M00_AXI_bready => Gateway_Logik_0_axi_periph_1_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => Gateway_Logik_0_axi_periph_1_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => Gateway_Logik_0_axi_periph_1_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => Gateway_Logik_0_axi_periph_1_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => Gateway_Logik_0_axi_periph_1_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => Gateway_Logik_0_axi_periph_1_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => Gateway_Logik_0_axi_periph_1_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => Gateway_Logik_0_axi_periph_1_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => Gateway_Logik_0_axi_periph_1_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => Gateway_Logik_0_axi_periph_1_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => Gateway_Logik_0_axi_periph_1_M00_AXI_WVALID,
      S00_ACLK => clk_wiz_0_clk_out1,
      S00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => Gateway_Logik_0_M01_AXI_ARADDR(31 downto 0),
      S00_AXI_arready => Gateway_Logik_0_M01_AXI_ARREADY,
      S00_AXI_arvalid => Gateway_Logik_0_M01_AXI_ARVALID,
      S00_AXI_awaddr(31 downto 0) => Gateway_Logik_0_M01_AXI_AWADDR(31 downto 0),
      S00_AXI_awready => Gateway_Logik_0_M01_AXI_AWREADY,
      S00_AXI_awvalid => Gateway_Logik_0_M01_AXI_AWVALID,
      S00_AXI_bready => Gateway_Logik_0_M01_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => Gateway_Logik_0_M01_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => Gateway_Logik_0_M01_AXI_BVALID,
      S00_AXI_rdata(31 downto 0) => Gateway_Logik_0_M01_AXI_RDATA(31 downto 0),
      S00_AXI_rready => Gateway_Logik_0_M01_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => Gateway_Logik_0_M01_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => Gateway_Logik_0_M01_AXI_RVALID,
      S00_AXI_wdata(31 downto 0) => Gateway_Logik_0_M01_AXI_WDATA(31 downto 0),
      S00_AXI_wready => Gateway_Logik_0_M01_AXI_WREADY,
      S00_AXI_wstrb(3 downto 0) => Gateway_Logik_0_M01_AXI_WSTRB(3 downto 0),
      S00_AXI_wvalid => Gateway_Logik_0_M01_AXI_WVALID
    );
axi_bram_ctrl_0: component can_test_axi_bram_ctrl_0_0
     port map (
      bram_addr_a(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(12 downto 0),
      bram_clk_a => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      bram_en_a => axi_bram_ctrl_0_BRAM_PORTA_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      bram_rst_a => axi_bram_ctrl_0_BRAM_PORTA_RST,
      bram_we_a(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      s_axi_aclk => clk_wiz_0_clk_out1,
      s_axi_araddr(12 downto 0) => axi_mem_intercon_M00_AXI_ARADDR(12 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arprot(2 downto 0) => axi_mem_intercon_M00_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_mem_intercon_M00_AXI_ARREADY,
      s_axi_arvalid => axi_mem_intercon_M00_AXI_ARVALID,
      s_axi_awaddr(12 downto 0) => axi_mem_intercon_M00_AXI_AWADDR(12 downto 0),
      s_axi_awprot(2 downto 0) => axi_mem_intercon_M00_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_mem_intercon_M00_AXI_AWREADY,
      s_axi_awvalid => axi_mem_intercon_M00_AXI_AWVALID,
      s_axi_bready => axi_mem_intercon_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_mem_intercon_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_mem_intercon_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_mem_intercon_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_mem_intercon_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_mem_intercon_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_mem_intercon_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_mem_intercon_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_mem_intercon_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_mem_intercon_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_mem_intercon_M00_AXI_WVALID
    );
axi_bram_ctrl_0_bram: component can_test_axi_bram_ctrl_0_bram_0
     port map (
      addra(31 downto 13) => B"0000000000000000000",
      addra(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(12 downto 0),
      clka => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      dina(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      douta(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      ena => axi_bram_ctrl_0_BRAM_PORTA_EN,
      rsta => axi_bram_ctrl_0_BRAM_PORTA_RST,
      rsta_busy => NLW_axi_bram_ctrl_0_bram_rsta_busy_UNCONNECTED,
      wea(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0)
    );
axi_mem_intercon: entity work.can_test_axi_mem_intercon_0
     port map (
      ACLK => clk_wiz_0_clk_out1,
      ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M00_ACLK => clk_wiz_0_clk_out1,
      M00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => axi_mem_intercon_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_mem_intercon_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arready => axi_mem_intercon_M00_AXI_ARREADY,
      M00_AXI_arvalid => axi_mem_intercon_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_mem_intercon_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_mem_intercon_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awready => axi_mem_intercon_M00_AXI_AWREADY,
      M00_AXI_awvalid => axi_mem_intercon_M00_AXI_AWVALID,
      M00_AXI_bready => axi_mem_intercon_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_mem_intercon_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_mem_intercon_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_mem_intercon_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => axi_mem_intercon_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_mem_intercon_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_mem_intercon_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_mem_intercon_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => axi_mem_intercon_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_mem_intercon_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_mem_intercon_M00_AXI_WVALID,
      S00_ACLK => clk_wiz_0_clk_out1,
      S00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => Gateway_Logik_0_M02_AXI_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => Gateway_Logik_0_M02_AXI_ARPROT(2 downto 0),
      S00_AXI_arready => Gateway_Logik_0_M02_AXI_ARREADY,
      S00_AXI_arvalid => Gateway_Logik_0_M02_AXI_ARVALID,
      S00_AXI_awaddr(31 downto 0) => Gateway_Logik_0_M02_AXI_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => Gateway_Logik_0_M02_AXI_AWPROT(2 downto 0),
      S00_AXI_awready => Gateway_Logik_0_M02_AXI_AWREADY,
      S00_AXI_awvalid => Gateway_Logik_0_M02_AXI_AWVALID,
      S00_AXI_bready => Gateway_Logik_0_M02_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => Gateway_Logik_0_M02_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => Gateway_Logik_0_M02_AXI_BVALID,
      S00_AXI_rdata(31 downto 0) => Gateway_Logik_0_M02_AXI_RDATA(31 downto 0),
      S00_AXI_rready => Gateway_Logik_0_M02_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => Gateway_Logik_0_M02_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => Gateway_Logik_0_M02_AXI_RVALID,
      S00_AXI_wdata(31 downto 0) => Gateway_Logik_0_M02_AXI_WDATA(31 downto 0),
      S00_AXI_wready => Gateway_Logik_0_M02_AXI_WREADY,
      S00_AXI_wstrb(3 downto 0) => Gateway_Logik_0_M02_AXI_WSTRB(3 downto 0),
      S00_AXI_wvalid => Gateway_Logik_0_M02_AXI_WVALID
    );
can_0: component can_test_can_0_0
     port map (
      can_clk => clk_wiz_0_clk_out2,
      can_phy_rx => input_register_can_0_can_rx_sync,
      can_phy_tx => can_0_can_phy_tx,
      ip2bus_intrevent => NLW_can_0_ip2bus_intrevent_UNCONNECTED,
      s_axi_aclk => clk_wiz_0_clk_out1,
      s_axi_araddr(7 downto 0) => Gateway_Logik_0_axi_periph_M00_AXI_ARADDR(7 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => Gateway_Logik_0_axi_periph_M00_AXI_ARREADY,
      s_axi_arvalid => Gateway_Logik_0_axi_periph_M00_AXI_ARVALID,
      s_axi_awaddr(7 downto 0) => Gateway_Logik_0_axi_periph_M00_AXI_AWADDR(7 downto 0),
      s_axi_awready => Gateway_Logik_0_axi_periph_M00_AXI_AWREADY,
      s_axi_awvalid => Gateway_Logik_0_axi_periph_M00_AXI_AWVALID,
      s_axi_bready => Gateway_Logik_0_axi_periph_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => Gateway_Logik_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => Gateway_Logik_0_axi_periph_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => Gateway_Logik_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => Gateway_Logik_0_axi_periph_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => Gateway_Logik_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => Gateway_Logik_0_axi_periph_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => Gateway_Logik_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => Gateway_Logik_0_axi_periph_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => Gateway_Logik_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => Gateway_Logik_0_axi_periph_M00_AXI_WVALID
    );
can_1: component can_test_can_1_0
     port map (
      can_clk => clk_wiz_0_clk_out2,
      can_phy_rx => input_register_can_1_can_rx_sync,
      can_phy_tx => can_1_can_phy_tx,
      ip2bus_intrevent => NLW_can_1_ip2bus_intrevent_UNCONNECTED,
      s_axi_aclk => clk_wiz_0_clk_out1,
      s_axi_araddr(7 downto 0) => Gateway_Logik_0_axi_periph_1_M00_AXI_ARADDR(7 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => Gateway_Logik_0_axi_periph_1_M00_AXI_ARREADY,
      s_axi_arvalid => Gateway_Logik_0_axi_periph_1_M00_AXI_ARVALID,
      s_axi_awaddr(7 downto 0) => Gateway_Logik_0_axi_periph_1_M00_AXI_AWADDR(7 downto 0),
      s_axi_awready => Gateway_Logik_0_axi_periph_1_M00_AXI_AWREADY,
      s_axi_awvalid => Gateway_Logik_0_axi_periph_1_M00_AXI_AWVALID,
      s_axi_bready => Gateway_Logik_0_axi_periph_1_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => Gateway_Logik_0_axi_periph_1_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => Gateway_Logik_0_axi_periph_1_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => Gateway_Logik_0_axi_periph_1_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => Gateway_Logik_0_axi_periph_1_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => Gateway_Logik_0_axi_periph_1_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => Gateway_Logik_0_axi_periph_1_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => Gateway_Logik_0_axi_periph_1_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => Gateway_Logik_0_axi_periph_1_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => Gateway_Logik_0_axi_periph_1_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => Gateway_Logik_0_axi_periph_1_M00_AXI_WVALID
    );
clk_wiz_0: component can_test_clk_wiz_0_2
     port map (
      clk_in1_n => user_si570_sysclk_1_CLK_N,
      clk_in1_p => user_si570_sysclk_1_CLK_P,
      clk_out1 => clk_wiz_0_clk_out1,
      clk_out2 => clk_wiz_0_clk_out2
    );
frequency_test_0: component can_test_frequency_test_0_0
     port map (
      can_clk_in => clk_wiz_0_clk_out2,
      can_clk_test_probe_out => frequency_test_0_can_clk_test_probe_out,
      main_freq_in => clk_wiz_0_clk_out1,
      main_freq_test_probe_out => frequency_test_0_main_freq_test_probe_out
    );
input_register_can_0: component can_test_input_register_can_0_0
     port map (
      can_clk => clk_wiz_0_clk_out2,
      can_phy_rx => can_phy_rx_0_1,
      can_rx_sync => input_register_can_0_can_rx_sync
    );
input_register_can_1: component can_test_input_register_can_1_0
     port map (
      can_clk => clk_wiz_0_clk_out2,
      can_phy_rx => can_phy_rx_1_1,
      can_rx_sync => input_register_can_1_can_rx_sync
    );
proc_sys_reset_0: component can_test_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => CPU_RESET_1,
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_0_clk_out1
    );
tx_pulse_generator_0: component can_test_tx_pulse_generator_0_0
     port map (
      AXI_CLK => clk_wiz_0_clk_out1,
      CAN_POWERUP => Gateway_Logik_0_can_powerup_stat,
      TX_PULSE => tx_pulse_generator_0_TX_PULSE
    );
end STRUCTURE;
