----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/20/2025 10:01:09 PM
-- Design Name: 
-- Module Name: tb_top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tb_top is

--  Port ( );
end tb_top;

architecture Behavioral of tb_top is
component can_test_wrapper is  
  port (
    CPU_RESET : in STD_LOGIC;
    GPIO_LED_0 : out STD_LOGIC;
    GPIO_LED_1 : out STD_LOGIC;
    GPIO_LED_2 : out STD_LOGIC;
    GPIO_LED_3 : out STD_LOGIC;
    GPIO_LED_7 : out STD_LOGIC;
    GPIO_LED_4 : out STD_LOGIC;
    GPIO_LED_5 : out STD_LOGIC;
    GPIO_LED_6 : out STD_LOGIC;
    --USER_SI570_N : in STD_LOGIC;
    --USER_SI570_P : in STD_LOGIC;
    user_si570_sysclk_p : in STD_LOGIC;
    user_si570_sysclk_n : in STD_LOGIC;
    can_phy_rx_0 : in STD_LOGIC;
    can_phy_tx_0 : out STD_LOGIC
   -- GPIO_DIP_SW7 : in STD_LOGIC
  );
end component;

signal CPU_RESET : std_logic := '0';
signal GPIO_LED_0 : std_logic;
signal GPIO_LED_1 : std_logic;
signal GPIO_LED_2: std_logic;
signal GPIO_LED_3: std_logic;
signal GPIO_LED_7: std_logic;
signal GPIO_LED_4: std_logic;
signal GPIO_LED_5: std_logic;
signal GPIO_LED_6: std_logic;
signal user_si570_sysclk_n : std_logic := '0';
signal user_si570_sysclk_p : std_logic := '0';
signal can_phy_rx_0 : std_logic := '1';
signal can_phy_tx_0 : std_logic;
--signal GPIO_DIP_SW7 : std_logic := '1';

constant c_clkperiod : time := 10ns;

begin


DUT : can_test_wrapper

port map (

CPU_RESET =>      CPU_RESET ,
GPIO_LED_0 =>     GPIO_LED_0 ,
GPIO_LED_1 =>     GPIO_LED_1 ,
GPIO_LED_2 =>     GPIO_LED_2 ,
GPIO_LED_3 =>     GPIO_LED_3 ,
GPIO_LED_7 =>     GPIO_LED_7 ,
GPIO_LED_5 =>     GPIO_LED_5 ,
GPIO_LED_4 =>     GPIO_LED_4 ,
GPIO_LED_6 =>     GPIO_LED_6 ,
user_si570_sysclk_p =>   user_si570_sysclk_p  ,
user_si570_sysclk_n =>   user_si570_sysclk_n  ,
can_phy_rx_0 =>   can_phy_rx_0  ,
can_phy_tx_0 =>   can_phy_tx_0 
--GPIO_DIP_SW7 =>   GPIO_DIP_SW7  
);

P_CLKGEN: process begin
user_si570_sysclk_n <= '0';
user_si570_sysclk_p <= '1';
wait for c_clkperiod/2;
user_si570_sysclk_n <= '1';
user_si570_sysclk_p <= '0';
wait for c_clkperiod/2;
end process;

--P_AXIPULSE : process begin
--GPIO_DIP_SW7 <= '1';
--wait for 960us;
--GPIO_DIP_SW7 <= '0';
--wait for c_clkperiod;
--GPIO_DIP_SW7 <= '1';
--wait for c_clkperiod;
--GPIO_DIP_SW7 <= '0';
--wait for c_clkperiod;
--GPIO_DIP_SW7 <= '1';

--end process;


P_PULSE : process begin

CPU_RESET <= '0';
wait for 1000us;
CPU_RESET <= '1';
wait for c_clkperiod;
CPU_RESET <= '0';


wait for 1000ms;
assert false
report "SIM DONE"
severity failure;
end process;

--P_RX_11_CONS : process begin
---- 11 consecutive bit
--wait for 11*c_clkperiod;
--can_phy_rx_0 <= '1';
--wait for 11*c_clkperiod;
--can_phy_rx_0 <= '0';
--end process;

--P_INIT_PULSE_GENERATOR : process begin

--wait for 2*c_clkperiod;
--GPIO_DIP_SW7 <= '1';
--wait for 2*c_clkperiod;
--GPIO_DIP_SW7 <= '0';
--wait for 1us;
--end process;

--P_STIMULI : process begin
--    -- Hold reset low for a few cycles
--    CPU_RESET <= '0';
--    wait for 50 ns;
--    CPU_RESET <= '1';

----    -- Wait a few clock cycles before triggering
----    wait for 2ms;

----    -- Generate rising edge on INIT_AXI_TXN
----    wait for c_clkperiod/4;  -- One clock cycle
----    GPIO_DIP_SW7 <= '0';
----    wait for c_clkperiod/4; 
----    GPIO_DIP_SW7 <= '1';

--    -- Let simulation run for some time
--    wait for 200 ms;

--    -- Finish simulation
--    assert false report "Simulation finished" severity failure;
--end process;
--P_STIMULI : process begin

--CPU_RESET <= '0';
--wait for 10ns;
--CPU_RESET <= '1';

--wait for 3000ms;
--assert false
--report "SIM DONE"
--severity failure;
--end process;



end Behavioral;
