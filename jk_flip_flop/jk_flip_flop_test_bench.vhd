library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity jk_flipflop_tb is
end jk_flipflop_tb;

architecture Behavioral of jk_flipflop_tb is
    constant CLOCK_PERIOD : time := 10 ns; -- Define the clock period
    signal clk, reset, J, K : std_logic := '0'; -- Input signals
    signal Q, Qbar : std_logic; -- Output signals
begin

    -- Instantiate the DUT (Device Under Test)
    uut: entity work.jk_flipflop
        port map (
            clk => clk,
            reset => reset,
            J => J,
            K => K,
            Q => Q,
            Qbar => Qbar
        );

    -- Clock process
    clk_process: process
    begin
        while true loop
            clk <= '0';
            wait for CLOCK_PERIOD / 2;
            clk <= '1';
            wait for CLOCK_PERIOD / 2;
        end loop;
    end process;

    -- Stimulus process
    stimulus: process
    begin
        -- Apply reset
        reset <= '1';
        wait for 5 * CLOCK_PERIOD;
        reset <= '0';

        -- Test case 1: No change
        wait for CLOCK_PERIOD;
        
        -- Test case 2: Set
        J <= '1';
        K <= '0';
        wait for CLOCK_PERIOD;

        -- Test case 3: Reset
        J <= '0';
        K <= '1';
        wait for CLOCK_PERIOD;

        -- Test case 4: Toggle
        J <= '1';
        K <= '1';
        wait for CLOCK_PERIOD;

        -- Test case 5: No change
        J <= '0';
        K <= '0';
        wait for CLOCK_PERIOD;

        -- End simulation
        wait;
    end process;

end Behavioral;
