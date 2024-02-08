library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity jk_flipflop is
    Port (
        J, K, clk, reset : in  STD_LOGIC;
        Q, Qbar : out STD_LOGIC
    );
end jk_flipflop;

architecture Behavioral of jk_flipflop is
    signal Q_reg, Qbar_reg : std_logic;
begin
    process (clk, reset)
    begin
        if reset = '1' then
            Q_reg <= '0';
            Qbar_reg <= '1';
        elsif rising_edge(clk) then
            if J = '0' and K = '0' then
                Q_reg <= Q_reg;
                Qbar_reg <= Qbar_reg;
            elsif J = '0' and K = '1' then
                Q_reg <= '0';
                Qbar_reg <= '1';
            elsif J = '1' and K = '0' then
                Q_reg <= '1';
                Qbar_reg <= '0';
            elsif J = '1' and K = '1' then
                Q_reg <= not Q_reg;
                Qbar_reg <= not Qbar_reg;
            end if;
        end if;
    end process;

    Q <= Q_reg;
    Qbar <= Qbar_reg;

end Behavioral;
