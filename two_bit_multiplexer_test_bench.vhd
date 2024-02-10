LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY two_bit_multiplexer_test_bench IS
END two_bit_multiplexer_test_bench;

ARCHITECTURE behavior OF two_bit_multiplexer_test_bench IS
    -- Component declaration for the two-bit multiplexer
    COMPONENT two_bit_multiplexer_code
    PORT (
        in_a, in_b, in_c, in_d: IN std_logic_vector(1 downto 0);
        sel: IN std_logic_vector(1 downto 0);
        z_out: OUT std_logic_vector(1 downto 0)
    );
    END COMPONENT;

    -- Signals for testbench
    signal in_a_tb, in_b_tb, in_c_tb, in_d_tb: std_logic_vector(1 downto 0);
    signal sel_tb: std_logic_vector(1 downto 0);
    signal z_out_tb: std_logic_vector(1 downto 0);

    -- Clock signal for testbench
    signal clock_tb: std_logic := '0';
    constant clock_period : time := 10 ns;

BEGIN
    -- Instantiate the two-bit multiplexer
    uut: two_bit_multiplexer_code PORT MAP (
        in_a => in_a_tb,
        in_b => in_b_tb,
        in_c => in_c_tb,
        in_d => in_d_tb,
        sel => sel_tb,
        z_out => z_out_tb
    );

    -- Clock process definitions
    clock_process: process
    begin
        clock_tb <= '0';
        wait for clock_period/2;
        clock_tb <= '1';
        wait for clock_period/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- hold reset state for 100 ns.
        wait for 100 ns;

        -- Test Case 1: Select input 'in_a'
        in_a_tb <= "00";
        in_b_tb <= "11";
        in_c_tb <= "10";
        in_d_tb <= "01";
        sel_tb <= "00";
        wait for clock_period*10;

        -- Test Case 2: Select input 'in_b'
        in_a_tb <= "00";
        in_b_tb <= "11";
        in_c_tb <= "10";
        in_d_tb <= "01";
        sel_tb <= "01";
        wait for clock_period*10;

        -- Test Case 3: Select input 'in_c'
        in_a_tb <= "00";
        in_b_tb <= "11";
        in_c_tb <= "10";
        in_d_tb <= "01";
        sel_tb <= "10";
        wait for clock_period*10;

        -- Test Case 4: Select input 'in_d'
        in_a_tb <= "00";
        in_b_tb <= "11";
        in_c_tb <= "10";
        in_d_tb <= "01";
        sel_tb <= "11";
        wait for clock_period*10;

        -- Add more test cases as needed...

        wait;
    end process;

END behavior;
