library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Gateway_Logik_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Master Bus Interface M00_AXI
		C_M00_AXI_START_DATA_VALUE	: std_logic_vector	:= x"00000000";
		C_M00_AXI_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"00000000";
		C_M00_AXI_ADDR_WIDTH	: integer	:= 32;
		C_M00_AXI_DATA_WIDTH	: integer	:= 32;
		C_M00_AXI_TRANSACTIONS_NUM	: integer	:= 6;

		-- Parameters of Axi Master Bus Interface M01_AXI
		C_M01_AXI_START_DATA_VALUE	: std_logic_vector	:= x"00000000";
		C_M01_AXI_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"00000000";
		C_M01_AXI_ADDR_WIDTH	: integer	:= 32;
		C_M01_AXI_DATA_WIDTH	: integer	:= 32;
		C_M01_AXI_TRANSACTIONS_NUM	: integer	:= 6;

		-- Parameters of Axi Master Bus Interface M02_AXI
		C_M02_AXI_START_DATA_VALUE	: std_logic_vector	:= x"00000000";
		C_M02_AXI_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"00000000";
		C_M02_AXI_ADDR_WIDTH	: integer	:= 32;
		C_M02_AXI_DATA_WIDTH	: integer	:= 32;
		C_M02_AXI_TRANSACTIONS_NUM	: integer	:= 3
	);
	port (
		-- Users to add ports here
        GPIO_LED_0 : out std_logic;
        GPIO_LED_1 : out std_logic;
        GPIO_LED_2 : out std_logic;
        GPIO_LED_3 : out std_logic;
        GPIO_LED_4 : out std_logic;
        GPIO_LED_5 : out std_logic;
        GPIO_LED_6 : out std_logic;
        GPIO_LED_7 : out std_logic;
        can_powerup_stat : out std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Master Bus Interface M00_AXI
		m00_axi_init_axi_txn	: in std_logic;
		m00_axi_error	: out std_logic;
		m00_axi_txn_done	: out std_logic;
		m00_axi_aclk	: in std_logic;
		m00_axi_aresetn	: in std_logic;
		m00_axi_awaddr	: out std_logic_vector(C_M00_AXI_ADDR_WIDTH-1 downto 0);
		m00_axi_awprot	: out std_logic_vector(2 downto 0);
		m00_axi_awvalid	: out std_logic;
		m00_axi_awready	: in std_logic;
		m00_axi_wdata	: out std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0);
		m00_axi_wstrb	: out std_logic_vector(C_M00_AXI_DATA_WIDTH/8-1 downto 0);
		m00_axi_wvalid	: out std_logic;
		m00_axi_wready	: in std_logic;
		m00_axi_bresp	: in std_logic_vector(1 downto 0);
		m00_axi_bvalid	: in std_logic;
		m00_axi_bready	: out std_logic;
		m00_axi_araddr	: out std_logic_vector(C_M00_AXI_ADDR_WIDTH-1 downto 0);
		m00_axi_arprot	: out std_logic_vector(2 downto 0);
		m00_axi_arvalid	: out std_logic;
		m00_axi_arready	: in std_logic;
		m00_axi_rdata	: in std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0);
		m00_axi_rresp	: in std_logic_vector(1 downto 0);
		m00_axi_rvalid	: in std_logic;
		m00_axi_rready	: out std_logic;

		-- Ports of Axi Master Bus Interface M01_AXI
		m01_axi_init_axi_txn	: in std_logic;
		m01_axi_error	: out std_logic;
		m01_axi_txn_done	: out std_logic;
		m01_axi_aclk	: in std_logic;
		m01_axi_aresetn	: in std_logic;
		m01_axi_awaddr	: out std_logic_vector(C_M01_AXI_ADDR_WIDTH-1 downto 0);
		m01_axi_awprot	: out std_logic_vector(2 downto 0);
		m01_axi_awvalid	: out std_logic;
		m01_axi_awready	: in std_logic;
		m01_axi_wdata	: out std_logic_vector(C_M01_AXI_DATA_WIDTH-1 downto 0);
		m01_axi_wstrb	: out std_logic_vector(C_M01_AXI_DATA_WIDTH/8-1 downto 0);
		m01_axi_wvalid	: out std_logic;
		m01_axi_wready	: in std_logic;
		m01_axi_bresp	: in std_logic_vector(1 downto 0);
		m01_axi_bvalid	: in std_logic;
		m01_axi_bready	: out std_logic;
		m01_axi_araddr	: out std_logic_vector(C_M01_AXI_ADDR_WIDTH-1 downto 0);
		m01_axi_arprot	: out std_logic_vector(2 downto 0);
		m01_axi_arvalid	: out std_logic;
		m01_axi_arready	: in std_logic;
		m01_axi_rdata	: in std_logic_vector(C_M01_AXI_DATA_WIDTH-1 downto 0);
		m01_axi_rresp	: in std_logic_vector(1 downto 0);
		m01_axi_rvalid	: in std_logic;
		m01_axi_rready	: out std_logic;

		-- Ports of Axi Master Bus Interface M02_AXI
		m02_axi_init_axi_txn	: in std_logic;
		m02_axi_error	: out std_logic;
		m02_axi_txn_done	: out std_logic;
		m02_axi_aclk	: in std_logic;
		m02_axi_aresetn	: in std_logic;
		m02_axi_awaddr	: out std_logic_vector(C_M02_AXI_ADDR_WIDTH-1 downto 0);
		m02_axi_awprot	: out std_logic_vector(2 downto 0);
		m02_axi_awvalid	: out std_logic;
		m02_axi_awready	: in std_logic;
		m02_axi_wdata	: out std_logic_vector(C_M02_AXI_DATA_WIDTH-1 downto 0);
		m02_axi_wstrb	: out std_logic_vector(C_M02_AXI_DATA_WIDTH/8-1 downto 0);
		m02_axi_wvalid	: out std_logic;
		m02_axi_wready	: in std_logic;
		m02_axi_bresp	: in std_logic_vector(1 downto 0);
		m02_axi_bvalid	: in std_logic;
		m02_axi_bready	: out std_logic;
		m02_axi_araddr	: out std_logic_vector(C_M02_AXI_ADDR_WIDTH-1 downto 0);
		m02_axi_arprot	: out std_logic_vector(2 downto 0);
		m02_axi_arvalid	: out std_logic;
		m02_axi_arready	: in std_logic;
		m02_axi_rdata	: in std_logic_vector(C_M02_AXI_DATA_WIDTH-1 downto 0);
		m02_axi_rresp	: in std_logic_vector(1 downto 0);
		m02_axi_rvalid	: in std_logic;
		m02_axi_rready	: out std_logic
	);
end Gateway_Logik_v1_0;

architecture arch_imp of Gateway_Logik_v1_0 is

    --signal
    signal tx_interrupt_can1_s : std_logic;
    signal can1_write_frame_id : std_logic_vector (31 downto 0);
    signal can1_write_frame_dw1 : std_logic_vector (31 downto 0);
    signal can1_write_frame_dw2 : std_logic_vector (31 downto 0);
	-- component declaration
	component Gateway_Logik_v1_0_M00_AXI is
		generic (
		C_M_START_DATA_VALUE	: std_logic_vector	:= x"00000000";
		C_M_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"00000000";
		C_M_AXI_ADDR_WIDTH	: integer	:= 32;
		C_M_AXI_DATA_WIDTH	: integer	:= 32;
		C_M_TRANSACTIONS_NUM	: integer	:= 6
		);
		port (
		INIT_AXI_TXN	: in std_logic;
		ERROR	: out std_logic;
		TXN_DONE	: out std_logic;
		M_AXI_ACLK	: in std_logic;
		M_AXI_ARESETN	: in std_logic;
		M_AXI_AWADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		M_AXI_AWPROT	: out std_logic_vector(2 downto 0);
		M_AXI_AWVALID	: out std_logic;
		M_AXI_AWREADY	: in std_logic;
		M_AXI_WDATA	: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		M_AXI_WSTRB	: out std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);
		M_AXI_WVALID	: out std_logic;
		M_AXI_WREADY	: in std_logic;
		M_AXI_BRESP	: in std_logic_vector(1 downto 0);
		M_AXI_BVALID	: in std_logic;
		M_AXI_BREADY	: out std_logic;
		M_AXI_ARADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		M_AXI_ARPROT	: out std_logic_vector(2 downto 0);
		M_AXI_ARVALID	: out std_logic;
		M_AXI_ARREADY	: in std_logic;
		M_AXI_RDATA	: in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		M_AXI_RRESP	: in std_logic_vector(1 downto 0);
		M_AXI_RVALID	: in std_logic;
		M_AXI_RREADY	: out std_logic;
		TX_INTERRUPT_TO_CAN1 : out std_logic;
        CAN0_FRAME_IsReceived_ID  : out std_logic_vector(31 downto 0);
        CAN0_FRAME_IsReceived_DW1 : out std_logic_vector(31 downto 0);
        CAN0_FRAME_IsReceived_DW2 : out std_logic_vector(31 downto 0);
  --CAN_FRAME_ToSend_ID         :       in std_logic_vector(31 downto 0);
  --CAN_FRAME_ToSend_DW1        :      in std_logic_vector(31 downto 0);
  --CAN_FRAME_ToSend_DW2        :      in std_logic_vector(31 downto 0);
  --RX_INTERRUPT_FROM_BRAM      : in std_logic;
  --WRITE_INTERRUPT_TO_BRAM     : out std_logic;		
		
		led_vector : out std_logic_vector;
		--led_vector_core_stat : out std_logic_vector;
		can_powerup_stat : out std_logic;
		can_enabled_stat_led: out std_logic;
        --can_config_stat_led : out std_logic;
        frame_received_led :out std_logic;
        interrupt_enabled_led: out std_logic
		);
	end component Gateway_Logik_v1_0_M00_AXI;

	component Gateway_Logik_v1_0_M01_AXI is
		generic (
		C_M_START_DATA_VALUE	: std_logic_vector	:= x"00000000";
		C_M_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"00000000";
		C_M_AXI_ADDR_WIDTH	: integer	:= 32;
		C_M_AXI_DATA_WIDTH	: integer	:= 32;
		C_M_TRANSACTIONS_NUM	: integer	:= 6
		);
		port (
		INIT_AXI_TXN	: in std_logic;
		ERROR	: out std_logic;
		TXN_DONE	: out std_logic;
		M_AXI_ACLK	: in std_logic;
		M_AXI_ARESETN	: in std_logic;
		M_AXI_AWADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		M_AXI_AWPROT	: out std_logic_vector(2 downto 0);
		M_AXI_AWVALID	: out std_logic;
		M_AXI_AWREADY	: in std_logic;
		M_AXI_WDATA	: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		M_AXI_WSTRB	: out std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);
		M_AXI_WVALID	: out std_logic;
		M_AXI_WREADY	: in std_logic;
		M_AXI_BRESP	: in std_logic_vector(1 downto 0);
		M_AXI_BVALID	: in std_logic;
		M_AXI_BREADY	: out std_logic;
		M_AXI_ARADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		M_AXI_ARPROT	: out std_logic_vector(2 downto 0);
		M_AXI_ARVALID	: out std_logic;
		M_AXI_ARREADY	: in std_logic;
		M_AXI_RDATA	: in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		M_AXI_RRESP	: in std_logic_vector(1 downto 0);
		M_AXI_RVALID	: in std_logic;
		M_AXI_RREADY	: out std_logic;
		TX_INTERRUPT_TO_CAN1 : in std_logic;
		CAN1_WRITE_CANID   : in std_logic_vector(31 downto 0);
        CAN1_WRITE_CANDW1  : in std_logic_vector(31 downto 0);
        CAN1_WRITE_CANDW2  : in std_logic_vector(31 downto 0);
		can1_enabled_stat_led : out std_logic
	--	CAN_FRAME_IsReceived_ID : out std_logic_vector(31 downto 0);
    --  CAN_FRAME_IsReceived_DW1 : out std_logic_vector(31 downto 0);
    --  CAN_FRAME_IsReceived_DW2 : out std_logic_vector(31 downto 0);
    --  CAN_FRAME_ToSend_ID : in std_logic_vector(31 downto 0);
    --  CAN_FRAME_ToSend_DW1 : in std_logic_vector(31 downto 0);
    --  CAN_FRAME_ToSend_DW2 : in std_logic_vector(31 downto 0);
    --  RX_INTERRUPT_FROM_BRAM : in std_logic;
    --  WRITE_INTERRUPT_TO_BRAM : out std_logic
		--led_vector : out std_logic_vector;
		--led_vector_core_stat : out std_logic_vector;
		--can_powerup_stat : out std_logic;
		--can_enabled_stat_led: out std_logic
        --can_config_stat_led : out std_logic;
        --debug_led_stat : out std_logic
		);
	end component Gateway_Logik_v1_0_M01_AXI;

	component Gateway_Logik_v1_0_M02_AXI is
		generic (
		C_M_START_DATA_VALUE	: std_logic_vector	:= x"00000000";
		C_M_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"00000000";
		C_M_AXI_ADDR_WIDTH	: integer	:= 32;
		C_M_AXI_DATA_WIDTH	: integer	:= 32;
		C_M_TRANSACTIONS_NUM	: integer	:= 3
		);
		port (
		INIT_AXI_TXN	: in std_logic;
		ERROR	: out std_logic;
		TXN_DONE	: out std_logic;
		M_AXI_ACLK	: in std_logic;
		M_AXI_ARESETN	: in std_logic;
		M_AXI_AWADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		M_AXI_AWPROT	: out std_logic_vector(2 downto 0);
		M_AXI_AWVALID	: out std_logic;
		M_AXI_AWREADY	: in std_logic;
		M_AXI_WDATA	: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		M_AXI_WSTRB	: out std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);
		M_AXI_WVALID	: out std_logic;
		M_AXI_WREADY	: in std_logic;
		M_AXI_BRESP	: in std_logic_vector(1 downto 0);
		M_AXI_BVALID	: in std_logic;
		M_AXI_BREADY	: out std_logic;
		M_AXI_ARADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		M_AXI_ARPROT	: out std_logic_vector(2 downto 0);
		M_AXI_ARVALID	: out std_logic;
		M_AXI_ARREADY	: in std_logic;
		M_AXI_RDATA	: in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		M_AXI_RRESP	: in std_logic_vector(1 downto 0);
		M_AXI_RVALID	: in std_logic;
		M_AXI_RREADY	: out std_logic
		
		
--	RECEIVE_FROM_CAN0_CANID : in std_logic_vector(31 downto 0);
--      RECEIVE_FROM_CAN0_CANDW1 : in std_logic_vector(31 downto 0);
--      RECEIVE_FROM_CAN0_CANDW2 : in std_logic_vector(31 downto 0);
--      RECEIVE_FROM_CAN1_CANID : in std_logic_vector(31 downto 0);
--      RECEIVE_FROM_CAN1_CANDW1 : in std_logic_vector(31 downto 0);
--      RECEIVE_FROM_CAN1_CANDW2 : in std_logic_vector(31 downto 0);
--      
--      SEND_TO_CAN0_CANID : out std_logic_vector(31 downto 0);
--      SEND_TO_CAN0_CANDW1 : out std_logic_vector(31 downto 0);
--      SEND_TO_CAN0_CANDW2 : out std_logic_vector(31 downto 0);
--      SEND_TO_CAN1_CANID : out std_logic_vector(31 downto 0);
--      SEND_TO_CAN1_CANDW1 : out std_logic_vector(31 downto 0);
--      SEND_TO_CAN1_CANDW2 : out std_logic_vector(31 downto 0);
        
 --   RX_INTERRUPT_FROM_CAN0 : in std_logic;
 --   RX_INTERRUPT_FROM_CAN1 : in std_logic;
 --   TX_INTERRUPT_TO_CAN0 : out std_logic;
 --   TX_INTERRUPT_TO_CAN1 : out std_logic
		);
	end component Gateway_Logik_v1_0_M02_AXI;

begin

-- Instantiation of Axi Bus Interface M00_AXI
Gateway_Logik_v1_0_M00_AXI_inst : Gateway_Logik_v1_0_M00_AXI
	generic map (
		C_M_START_DATA_VALUE	=> C_M00_AXI_START_DATA_VALUE,
		C_M_TARGET_SLAVE_BASE_ADDR	=> C_M00_AXI_TARGET_SLAVE_BASE_ADDR,
		C_M_AXI_ADDR_WIDTH	=> C_M00_AXI_ADDR_WIDTH,
		C_M_AXI_DATA_WIDTH	=> C_M00_AXI_DATA_WIDTH,
		C_M_TRANSACTIONS_NUM	=> C_M00_AXI_TRANSACTIONS_NUM
	)
	port map (
		INIT_AXI_TXN	=> m00_axi_init_axi_txn,
		ERROR	=> m00_axi_error,
		TXN_DONE	=> m00_axi_txn_done,
		M_AXI_ACLK	=> m00_axi_aclk,
		M_AXI_ARESETN	=> m00_axi_aresetn,
		M_AXI_AWADDR	=> m00_axi_awaddr,
		M_AXI_AWPROT	=> m00_axi_awprot,
		M_AXI_AWVALID	=> m00_axi_awvalid,
		M_AXI_AWREADY	=> m00_axi_awready,
		M_AXI_WDATA	=> m00_axi_wdata,
		M_AXI_WSTRB	=> m00_axi_wstrb,
		M_AXI_WVALID	=> m00_axi_wvalid,
		M_AXI_WREADY	=> m00_axi_wready,
		M_AXI_BRESP	=> m00_axi_bresp,
		M_AXI_BVALID	=> m00_axi_bvalid,
		M_AXI_BREADY	=> m00_axi_bready,
		M_AXI_ARADDR	=> m00_axi_araddr,
		M_AXI_ARPROT	=> m00_axi_arprot,
		M_AXI_ARVALID	=> m00_axi_arvalid,
		M_AXI_ARREADY	=> m00_axi_arready,
		M_AXI_RDATA	=> m00_axi_rdata,
		M_AXI_RRESP	=> m00_axi_rresp,
		M_AXI_RVALID	=> m00_axi_rvalid,
		M_AXI_RREADY	=> m00_axi_rready,
		led_vector(0) => GPIO_LED_0,
		led_vector(1) => GPIO_LED_1,
		led_vector(2) => GPIO_LED_2,
		led_vector(3) => GPIO_LED_3,
		can_enabled_stat_led => GPIO_LED_7,
		--can_config_stat_led => GPIO_LED_5,
--               led_three => GPIO_LED_3,
		--led_vector_core_stat(0) => GPIO_LED_7,
		interrupt_enabled_led => GPIO_LED_6,
		frame_received_led => GPIO_LED_4,
		TX_INTERRUPT_TO_CAN1 => tx_interrupt_can1_s,
		CAN0_FRAME_IsReceived_ID  => can1_write_frame_id ,
        CAN0_FRAME_IsReceived_DW1 => can1_write_frame_dw1,
        CAN0_FRAME_IsReceived_DW2 => can1_write_frame_dw2,
		
		
		
	--	CAN_FRAME_IsReceived_ID    =>
    --  CAN_FRAME_IsReceived_DW1   =>
    --  CAN_FRAME_IsReceived_DW2   =>
    --  CAN_FRAME_ToSend_ID        =>
    --  CAN_FRAME_ToSend_DW1       =>
    --  CAN_FRAME_ToSend_DW2       =>
    --  RX_INTERRUPT_FROM_BRAM     =>
    --  WRITE_INTERRUPT_TO_BRAM    =>
		
--		led_two => GPIO_LED_2,
--		led_one => GPIO_LED_1,
		--led_vector_core_stat(2)  => GPIO_LED_5,
		--led_vector_core_stat(3)  => GPIO_LED_4,
		can_powerup_stat => can_powerup_stat
	);

-- Instantiation of Axi Bus Interface M01_AXI
Gateway_Logik_v1_0_M01_AXI_inst : Gateway_Logik_v1_0_M01_AXI
	generic map (
		C_M_START_DATA_VALUE	=> C_M01_AXI_START_DATA_VALUE,
		C_M_TARGET_SLAVE_BASE_ADDR	=> C_M01_AXI_TARGET_SLAVE_BASE_ADDR,
		C_M_AXI_ADDR_WIDTH	=> C_M01_AXI_ADDR_WIDTH,
		C_M_AXI_DATA_WIDTH	=> C_M01_AXI_DATA_WIDTH,
		C_M_TRANSACTIONS_NUM	=> C_M01_AXI_TRANSACTIONS_NUM
	)
	port map (
		INIT_AXI_TXN	=> m01_axi_init_axi_txn,
		ERROR	=> m01_axi_error,
		TXN_DONE	=> m01_axi_txn_done,
		M_AXI_ACLK	=> m01_axi_aclk,
		M_AXI_ARESETN	=> m01_axi_aresetn,
		M_AXI_AWADDR	=> m01_axi_awaddr,
		M_AXI_AWPROT	=> m01_axi_awprot,
		M_AXI_AWVALID	=> m01_axi_awvalid,
		M_AXI_AWREADY	=> m01_axi_awready,
		M_AXI_WDATA	=> m01_axi_wdata,
		M_AXI_WSTRB	=> m01_axi_wstrb,
		M_AXI_WVALID	=> m01_axi_wvalid,
		M_AXI_WREADY	=> m01_axi_wready,
		M_AXI_BRESP	=> m01_axi_bresp,
		M_AXI_BVALID	=> m01_axi_bvalid,
		M_AXI_BREADY	=> m01_axi_bready,
		M_AXI_ARADDR	=> m01_axi_araddr,
		M_AXI_ARPROT	=> m01_axi_arprot,
		M_AXI_ARVALID	=> m01_axi_arvalid,
		M_AXI_ARREADY	=> m01_axi_arready,
		M_AXI_RDATA	=> m01_axi_rdata,
		M_AXI_RRESP	=> m01_axi_rresp,
		M_AXI_RVALID	=> m01_axi_rvalid,
		M_AXI_RREADY	=> m01_axi_rready,
		TX_INTERRUPT_TO_CAN1 => tx_interrupt_can1_s,
		can1_enabled_stat_led => GPIO_LED_5,
        CAN1_WRITE_CANID   => can1_write_frame_id ,      
        CAN1_WRITE_CANDW1  => can1_write_frame_dw1,
        CAN1_WRITE_CANDW2  => can1_write_frame_dw2

		--can_enabled_stat_led => GPIO_LED_6,
		--can_config_stat_led => GPIO_LED_5,
--               led_three => GPIO_LED_3,
		--led_vector_core_stat(0) => GPIO_LED_7,
--		led_two => GPIO_LED_2,
--		led_one => GPIO_LED_1,
		--led_vector_core_stat(2)  => GPIO_LED_5,
		--led_vector_core_stat(3)  => GPIO_LED_4,
		--can_powerup_stat => can_powerup_stat
	);

-- Instantiation of Axi Bus Interface M02_AXI
Gateway_Logik_v1_0_M02_AXI_inst : Gateway_Logik_v1_0_M02_AXI
	generic map (
		C_M_START_DATA_VALUE	=> C_M02_AXI_START_DATA_VALUE,
		C_M_TARGET_SLAVE_BASE_ADDR	=> C_M02_AXI_TARGET_SLAVE_BASE_ADDR,
		C_M_AXI_ADDR_WIDTH	=> C_M02_AXI_ADDR_WIDTH,
		C_M_AXI_DATA_WIDTH	=> C_M02_AXI_DATA_WIDTH,
		C_M_TRANSACTIONS_NUM	=> C_M02_AXI_TRANSACTIONS_NUM
	)
	port map (
		INIT_AXI_TXN	=> m02_axi_init_axi_txn,
		ERROR	=> m02_axi_error,
		TXN_DONE	=> m02_axi_txn_done,
		M_AXI_ACLK	=> m02_axi_aclk,
		M_AXI_ARESETN	=> m02_axi_aresetn,
		M_AXI_AWADDR	=> m02_axi_awaddr,
		M_AXI_AWPROT	=> m02_axi_awprot,
		M_AXI_AWVALID	=> m02_axi_awvalid,
		M_AXI_AWREADY	=> m02_axi_awready,
		M_AXI_WDATA	=> m02_axi_wdata,
		M_AXI_WSTRB	=> m02_axi_wstrb,
		M_AXI_WVALID	=> m02_axi_wvalid,
		M_AXI_WREADY	=> m02_axi_wready,
		M_AXI_BRESP	=> m02_axi_bresp,
		M_AXI_BVALID	=> m02_axi_bvalid,
		M_AXI_BREADY	=> m02_axi_bready,
		M_AXI_ARADDR	=> m02_axi_araddr,
		M_AXI_ARPROT	=> m02_axi_arprot,
		M_AXI_ARVALID	=> m02_axi_arvalid,
		M_AXI_ARREADY	=> m02_axi_arready,
		M_AXI_RDATA	=> m02_axi_rdata,
		M_AXI_RRESP	=> m02_axi_rresp,
		M_AXI_RVALID	=> m02_axi_rvalid,
		M_AXI_RREADY	=> m02_axi_rready
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
