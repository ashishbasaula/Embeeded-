
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity two_bit_multiplexer_code is
    Port ( in_a : in  STD_LOGIC_VECTOR(1 downto 0);
           in_b : in  STD_LOGIC_VECTOR(1 downto 0);
           in_c : in  STD_LOGIC_VECTOR(1 downto 0);
           in_d : in  STD_LOGIC_VECTOR(1 downto 0);
           sel : in  STD_LOGIC_VECTOR(1 downto 0);
           z_out : out  STD_LOGIC_VECTOR(1 downto 0));
end two_bit_multiplexer_code;

architecture mux_arch of two_bit_multiplexer_code is

begin
proc:process(in_a,in_b,in_c,in_d,sel)
begin
	if(sel="00") then
		z_out<=in_a;
	elsif(sel="01")then
		z_out<=in_b;
	elsif(sel="10")then
		z_out<=in_c;
	else
		z_out<=in_d;
	end if;
end process proc;
end mux_arch;

