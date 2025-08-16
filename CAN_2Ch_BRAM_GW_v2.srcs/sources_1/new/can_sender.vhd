library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity can_frame_writer is
  Port (
    clk            : in  std_logic;
    reset          : in  std_logic;

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
    GPIO_LED_0 : out std_logic;
    GPIO_LED_1 : out std_logic;
    GPIO_LED_2 : out std_logic;
    GPIO_LED_3 : out std_logic;
    GPIO_LED_4 : out std_logic;
    GPIO_LED_5 : out std_logic;
    GPIO_LED_6 : out std_logic;
    GPIO_LED_7 : out std_logic
  );
end can_frame_writer;

architecture Behavioral of can_frame_writer is

  -- FSM states
  type state_type is (
    config_start, wait_reset_write, write_brpr, wait_brpr, write_btr, wait_btr, enable_can,
    idle, write_id, wait_id, write_dlc, wait_dlc, write_dw1, wait_dw1,
    write_dw2, wait_dw2, done
  );
  signal state : state_type := config_start;

  -- 1-second tick generator (assuming 100 MHz clock)
  signal timer_cnt : unsigned(26 downto 0) := (others => '0');
  signal tick_1s   : std_logic := '0';

begin


  -- LED status based on FSM state
--  process(state)
--  begin           
--    case state is
--      when config_start =>
--        GPIO_LED_6 <= '0';
--        GPIO_LED_0 <= '1';
--      when write_brpr =>
--        GPIO_LED_1 <= '1';
--        GPIO_LED_0 <= '0';
--      when wait_brpr =>
--        GPIO_LED_1 <= '0';
--        GPIO_LED_2 <= '1';
--      when write_btr =>
--        GPIO_LED_2 <= '0';
--        GPIO_LED_3 <= '1';
--      when wait_btr =>
--        GPIO_LED_3 <= '0';
--        GPIO_LED_4 <= '1';
--      when enable_can =>
--        GPIO_LED_4 <= '0';
--        GPIO_LED_5 <= '1';
--      when idle | done =>
--        GPIO_LED_5 <= '0';  -- Normal operation
--        GPIO_LED_6 <= '1';  -- Normal operation
--      when others =>
--        GPIO_LED_0 <= '1';
--        GPIO_LED_1 <= '1';
--        GPIO_LED_2 <= '1';
--        GPIO_LED_3 <= '1';
--        GPIO_LED_4 <= '1';
--        GPIO_LED_5 <= '1';
--        GPIO_LED_6 <= '1';
--    end case;
--  end process;
  -- 1-second timer
  process(clk)
  begin

    if rising_edge(clk) then
      if reset = '0' then
        timer_cnt <= (others => '0');
        tick_1s   <= '0';
      elsif timer_cnt = 124999999 then
        timer_cnt <= (others => '0');
        tick_1s   <= '1';
      else
        timer_cnt <= timer_cnt + 1;
        tick_1s   <= '0';
      end if;
    end if;
  end process;

  -- CAN frame write FSM
  process(clk)
  begin
    if rising_edge(clk) then
      if reset = '0' then
        s_axi_awaddr  <= (others => '0');
        s_axi_awvalid <= '0';
        s_axi_wdata   <= (others => '0');
        s_axi_wvalid  <= '0';
        s_axi_wstrb   <= "1111";
        s_axi_bready  <= '0';
        state         <= config_start;
      else
        case state is

          when config_start =>
--            s_axi_awaddr  <= x"00000000";         -- SRR register
--            s_axi_wdata   <= x"00000001";         -- SRST = 1
--            s_axi_awvalid <= '1';
--            s_axi_wvalid  <= '1';
--            s_axi_bready  <= '1';
--            state         <= write_brpr;
              s_axi_awaddr  <= x"00000000";
              s_axi_wdata   <= x"00000001";
              s_axi_awvalid <= '1';
              s_axi_wvalid  <= '1';
              s_axi_wstrb   <= "1111";
              s_axi_bready  <= '1';
              state         <= wait_reset_write;
              GPIO_LED_0 <= '1';
          when wait_reset_write =>
              if s_axi_awready = '1' and s_axi_wready = '1' then
                s_axi_awvalid <= '0';
                s_axi_wvalid  <= '0';
              end if;
            
              if s_axi_bvalid = '1' then
                s_axi_bready  <= '0';
                state         <= write_brpr;
              end if;
            
          when write_brpr =>
                if s_axi_awready = '1' and s_axi_wready = '1' then
                  s_axi_awvalid <= '0';
                  s_axi_wvalid  <= '0';
                else 
                    state <= config_start;
                end if;
                if s_axi_bvalid = '1' then
                  s_axi_awaddr  <= x"00000008";       -- BRPR register
                  s_axi_wdata   <= x"00000003";       -- Prescaler = 3
                  s_axi_awvalid <= '1';
                  s_axi_wvalid  <= '1';
                  state         <= wait_brpr;
                else
                    state <= config_start;
                end if;

      
          when wait_brpr =>
            if s_axi_awready = '1' and s_axi_wready = '1' then
              s_axi_awvalid <= '0';
              s_axi_wvalid  <= '0';
            else           
              state <= write_brpr;
              
            end if;
            if s_axi_bvalid = '1' then
              s_axi_awaddr  <= x"0000000C";       -- BTR register
              s_axi_wdata   <= x"0000003A";       -- SJW=1, TS2=4, TS1=11
              s_axi_awvalid <= '1';
              s_axi_wvalid  <= '1';
              state         <= wait_btr;
            else           
              state <= write_brpr;
            end if;

          when wait_btr =>
            if s_axi_awready = '1' and s_axi_wready = '1' then
              s_axi_awvalid <= '0';
              s_axi_wvalid  <= '0';
            else 
                state <= wait_brpr;
            end if;
            if s_axi_bvalid = '1' then
              s_axi_awaddr  <= x"00000000";       -- SRR register
              s_axi_wdata   <= x"00000002";       -- CEN = 1, SRST = 0
              s_axi_awvalid <= '1';
              s_axi_wvalid  <= '1';
              state         <= enable_can;
            else
                state <= wait_brpr;
            end if;

          when enable_can =>
            if s_axi_awready = '1' and s_axi_wready = '1' then
              s_axi_awvalid <= '0';
              s_axi_wvalid  <= '0';
            else
                state <= wait_btr;
             
            end if;
            if s_axi_bvalid = '1' then
              state <= idle;
            else
                state<= wait_btr;
            end if;

          when idle =>
            if tick_1s = '1' then
              s_axi_awaddr  <= x"00000030";         -- TXFIFO-ID
              s_axi_wdata   <= x"CF980000";         -- CAN ID
              s_axi_awvalid <= '1';
              s_axi_wvalid  <= '1';
              s_axi_bready  <= '1';
              state         <= wait_id;
              GPIO_LED_7 <= '1';
            else
              GPIO_LED_7 <= '0';

            end if;

          when wait_id =>
            if s_axi_awready = '1' and s_axi_wready = '1' then
              s_axi_awvalid <= '0';
              s_axi_wvalid  <= '0';
            end if;
            if s_axi_bvalid = '1' then
              state <= write_dlc;
            end if;

          when write_dlc =>
            s_axi_awaddr  <= x"00000034";           -- TXFIFO-DLC
            s_axi_wdata   <= x"80000000";           -- DLC = 8 (bits 31:28)
            s_axi_awvalid <= '1';
            s_axi_wvalid  <= '1';
            state         <= wait_dlc;

          when wait_dlc =>
            if s_axi_awready = '1' and s_axi_wready = '1' then
              s_axi_awvalid <= '0';
              s_axi_wvalid  <= '0';
            end if;
            if s_axi_bvalid = '1' then
              state <= write_dw1;
            end if;

          when write_dw1 =>
            s_axi_awaddr  <= x"00000038";           -- TXFIFO-DW1
            s_axi_wdata   <= x"33221100";           -- Data[0-3]
            s_axi_awvalid <= '1';
            s_axi_wvalid  <= '1';
            state         <= wait_dw1;

          when wait_dw1 =>
            if s_axi_awready = '1' and s_axi_wready = '1' then
              s_axi_awvalid <= '0';
              s_axi_wvalid  <= '0';
            end if;
            if s_axi_bvalid = '1' then
              state <= write_dw2;
            end if;

          when write_dw2 =>
            s_axi_awaddr  <= x"0000003C";           -- TXFIFO-DW2
            s_axi_wdata   <= x"77665544";           -- Data[4-7]
            s_axi_awvalid <= '1';
            s_axi_wvalid  <= '1';
            state         <= wait_dw2;

          when wait_dw2 =>
            if s_axi_awready = '1' and s_axi_wready = '1' then
              s_axi_awvalid <= '0';
              s_axi_wvalid  <= '0';
            end if;
            if s_axi_bvalid = '1' then
              state <= done;
            end if;

          when done =>
            s_axi_bready <= '0';
            state <= idle;

          when others =>
            state <= idle;

        end case;
      end if;
    end if;
  end process;

end Behavioral;
