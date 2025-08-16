----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/26/2025 11:20:11 PM
-- Design Name: 
-- Module Name: input_register_can - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity input_register_can is
    Port ( 
        can_clk     : in  std_logic;
        can_phy_rx  : in  std_logic;
        can_rx_sync : out std_logic   
         );
end input_register_can;

architecture Behavioral of input_register_can is
    signal rx_sync_0 : std_logic := '1';  -- initial value = 1
    signal rx_sync_1 : std_logic := '1';  -- initial value = 1
begin
 process(can_clk)
    begin
        if rising_edge(can_clk) then
            rx_sync_0 <= can_phy_rx;
            rx_sync_1 <= rx_sync_0;
        end if;
    end process;

    can_rx_sync <= rx_sync_1;


end Behavioral;
