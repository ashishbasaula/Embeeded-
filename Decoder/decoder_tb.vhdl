library ieee;
use ieee.std_logic_1164.all;

entity decoder_tb is
end decoder_tb;

architecture test of decoder_tb is
		signal a:in std_logic_vector(1 downto 0);
		signal b:out std_logic_vector(3 downto 0)
	component decoder
			port(
		a:in std_logic_vector(1 downto 0);
		b:out std_logic_vector(3 downto 0)
	);

	end component;
begin
	d1:decoder port map(a=>a,b=>b);
	process begin
		wait for 500 ms;
		a<="00";
		wait for 500 ms;

		a<="01";
		wait for 500 ms;
		a<="10";
		wait for 500 ms;
		a<="11"
		wait;
	end process;
end test;
