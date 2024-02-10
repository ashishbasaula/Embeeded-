library ieee;
use ieee.std_logic_1164.all;

entity demux is
	port(
		a,s:in std_logic_vector(1 downto 0);
		b:out std_logic_vector(7 downto 0)
	);

end demux;

architecture behavior of demux is
begin
	d:process(a,s)
	begin
		if s="00" then
			b<=a&"000000";
		elsif s="01" then
			b<="00"&a&"0000";
		elsif s="10" then
			b<="0000"&a&"00";
		else
			b<="000000"&a;

		end if;
	end process d;
end behavior;



