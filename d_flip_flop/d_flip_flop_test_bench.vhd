
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY d_flip_flop_test_bench IS
END d_flip_flop_test_bench;
 
ARCHITECTURE behavior OF d_flip_flop_test_bench IS 
 

 
    COMPONENT d_flipflop_code
    PORT(
         D : IN  std_logic;
         CLK : IN  std_logic;
         RESET : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: d_flipflop_code PORT MAP (
          D => D,
          CLK => CLK,
          RESET => RESET,
          Q => Q
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
    RESET <= '1';
      wait for 100 ns;
      RESET <= '0';
      wait for CLK_period;  -- Wait for one clock cycle

      -- Test case 1: Input D is '0'
      D <= '0';
      wait for CLK_period * 5;  -- Wait for 5 clock cycles

      -- Test case 2: Input D is '1'
      D <= '1';
      wait for CLK_period * 5;  -- Wait for 5 clock cycles

      -- Test case 3: Reset the flip-flop
      RESET <= '1';
      wait for CLK_period;
      RESET <= '0';
      wait for CLK_period * 5;  -- Wait for 5 clock cycles

      wait;
   end process;

END;
