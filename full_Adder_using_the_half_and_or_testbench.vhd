LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY full_Adder_using_the_half_and_or_testbench IS
END full_Adder_using_the_half_and_or_testbench;

ARCHITECTURE behavior OF full_Adder_using_the_half_and_or_testbench IS

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT full_aader_using_half_and_or_code
        PORT(
             A : IN  std_logic;
             B : IN  std_logic;
             Cin : IN  std_logic;
             S : OUT  std_logic;
             C : OUT  std_logic
            );
    END COMPONENT;

    --Inputs
    signal A : std_logic := '0';
    signal B : std_logic := '0';
    signal Cin : std_logic := '0';
    
    --Outputs
    signal S : std_logic;
    signal C : std_logic;

    -- Define clock signal and its period
    signal clk : std_logic := '0';
    constant clk_period : time := 10 ns;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: full_aader_using_half_and_or_code PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          S => S,
          C => C
        );

    -- Clock process definitions
    clk_process: process
    begin
        while true loop
            clk <= '0';
            wait for clk_period/2;
            clk <= '1';
            wait for clk_period/2;
        end loop;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Hold reset state for 100 ns.
        wait for 100 ns;

        -- Test case 1: A=0, B=0, Cin=0
        A <= '0';
        B <= '0';
        Cin <= '0';
        wait for 10 ns;
        
        -- Test case 2: A=1, B=1, Cin=0
        A <= '1';
        B <= '1';
        Cin <= '0';
        wait for 10 ns;
        
        -- Test case 3: A=1, B=1, Cin=1
        A <= '1';
        B <= '1';
        Cin <= '1';
        wait for 10 ns;

        -- Add more test cases here if needed

        wait;
    end process;

END behavior;
