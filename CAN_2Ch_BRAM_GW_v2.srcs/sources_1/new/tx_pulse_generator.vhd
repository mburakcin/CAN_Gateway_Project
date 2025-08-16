library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tx_pulse_generator is
    generic(
        c_clkfreq : integer := 100_000_000
        );
    Port ( 
        AXI_CLK     : in  std_logic;
        CAN_POWERUP : in std_logic;
        TX_PULSE  : out  std_logic
        --reset : in std_logic
        );
         
end tx_pulse_generator;

architecture Behavioral of tx_pulse_generator is
--    signal rx_sync_0 : std_logic := '1';  -- initial value = 1
--    signal rx_sync_1 : std_logic := '1';  -- initial value = 1
      signal timer : integer range 0 to c_clkfreq := 0;
begin
 process(AXI_CLK)
    begin
        if rising_edge(AXI_CLK) then
            --if (reset = '0' ) then                                                
--                timer <= 0;  
--                TX_PULSE <= '0';                                                     
--	       else       
                if CAN_POWERUP = '1' then     
                    if timer >= c_clkfreq - 1 then
                        timer <= 0;
                        TX_PULSE <= '0';
                    elsif timer = 0 then
                        TX_PULSE <= '0';
                        timer <= timer + 1;
                    else
                        TX_PULSE <= '1';
                        timer <= timer + 1;
                    end if;
                else              
                    if timer >=c_clkfreq -1  then
                        timer <= 0;
                        TX_PULSE <= '0';
                    elsif timer = 0 then
                        TX_PULSE <= '0';
                        timer <= timer + 1;
                    else
                        TX_PULSE <= '1';
                        timer <= timer + 1;
                    end if;
                end if;
            end if;
        --end if;
    end process;

end Behavioral;