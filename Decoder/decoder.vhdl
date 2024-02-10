library ieee;
use ieee.std_logic_1164.all;

entity decoder is
	port(
		a:in std_logic_vector(1 downto 0);
		b:out std_logic_vector(3 downto 0)
	);

end decoder;

architecture behavior of decoder is
begin
	d:process(a)
	begin
		if a='00' then
			b<="1000";
		elsif a='01' then
			b<="0100";
		elsif a='10' then
			b<="0010";
		else
			b<="0001";

		end if;
	end process d;
end behavior;



