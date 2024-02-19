library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_aader_using_half_and_or_code is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC;
           C : out  STD_LOGIC);
end full_aader_using_half_and_or_code;

architecture structural of full_aader_using_half_and_or_code is
    component or_gate is
        port( 
            x: in std_logic;
            y: in std_logic;
            z: out std_logic
        );
    end component or_gate;

    -- this is for the half adder 
    component half_adder is
        port( 
            a: in std_logic;
            b: in std_logic;
            s: out std_logic;
            c: out std_logic
        );
    end component half_adder;

    signal S1, C1, C2: std_logic;
begin
    HA1: half_adder port map(a => A, b => B, s => S1, c => C1);
    HA2: half_adder port map(a => S1, b => Cin, s => S, c => C2);
    OR1: or_gate port map(x => C1, y => C2, z => C);
end structural;
