----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/19/2025 01:42:20 PM
-- Design Name: 
-- Module Name: can_frame_sender_v2 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity can_frame_sender_v2 is
--  Port ( );
  Port (
    clk            : in  std_logic;

    -- AXI4-Lite interface to CAN IP core
    s_axi_awaddr   : out std_logic_vector(31 downto 0);
    s_axi_awvalid  : out std_logic;
    s_axi_awready  : in  std_logic;

    s_axi_wdata    : out std_logic_vector(31 downto 0);
    s_axi_wvalid   : out std_logic;
    s_axi_wready   : in  std_logic;
    s_axi_wstrb    : out std_logic_vector(3 downto 0);

    s_axi_bresp    : in  std_logic_vector(1 downto 0);
    s_axi_bvalid   : in  std_logic;
    s_axi_bready   : out std_logic;
    s_axi_aresetn : in std_logic
  );
end can_frame_sender_v2;

architecture Behavioral of can_frame_sender_v2 is

type state_type is (idle, write_id, wait_id, write_dlc, wait_dlc, write_dw1, wait_dw1, write_dw2, wait_dw2, done);
signal state : state_type := idle;

signal timer_cnt : unsigned(26 downto 0) := (others => '0');
signal tick_1s : std_logic := '0';

begin

    process(clk)
    begin 
        if rising_edge(clk) then
            if s_axi_aresetn = '0' then
                timer_cnt <= (others => '0');
                tick_1s <= '0';
            elsif timer_cnt = 99999999 then
                timer_cnt <= (others => '0');
                tick_1s <= '1';
            else
                timer_cnt <= timer_cnt + 1;
                tick_1s <= '0';
            end if;
       end if;
    end process;
    
    
    process (clk)
    begin
        if rising_edge (clk) then
            if s_axi_aresetn = '0' then
                s_axi_wvalid <= '0';
                state <= idle;
            else 
                case state is
                    when idle =>
                        if tick_1s = '1' then
                            s_axi_awaddr <= x"030";
                            s_axi_wdata <= x"CF980000";
                            s_axi_awvalid <= '1';
                            s_axi_wvalid <= '1';
                            s_axi_bready <= '1';
                            state <= wait_id;
                        end if;
                    when wait_id =>
                        if s_axi_awready = '1' and s_axi_wready = '1' then
                            s_axi_awvalid <= '0';
                            s_axi_wvalid <= '0';
                        end if;
                        if s_axi_bvalid = '1' then
                            state <= write_dlc;
                        end if;

end if


end Behavioral;
