----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/28/2025 08:28:31 AM
-- Design Name: 
-- Module Name: frequency_test - Behavioral
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

entity frequency_test is

Port ( 

main_freq_in : in std_logic;
can_clk_in : in std_logic;
main_freq_test_probe_out : out std_logic;
can_clk_test_probe_out : out std_logic

 );
end frequency_test;

architecture Behavioral of frequency_test is

begin

main_freq_test_probe_out  <= main_freq_in;
can_clk_test_probe_out <= can_clk_in;


end Behavioral;
