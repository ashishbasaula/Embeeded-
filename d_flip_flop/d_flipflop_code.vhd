
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity d_flipflop_code is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end d_flipflop_code;

architecture Behavioral of d_flipflop_code is
signal Q_internal : std_logic;
begin
 process(CLK, RESET)
    begin
        if RESET = '1' then
            Q_internal <= '0';
        elsif rising_edge(CLK) then
            Q_internal <= D;
        end if;
    end process;

    Q <= Q_internal;

end Behavioral;

