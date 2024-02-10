library ieee;
use ieee.std_logic_1164.all;

entity demux_tb is
end demux_tb;

architecture test of demux_tb is
	signal a,s:std_logic_vector(1 downto 0);
	signal b:std_logic_vector(7 downto 0);
	component demux is 
		port(
		a,s:in std_logic_vector(1 downto 0);
		b:out std_logic_vector(7 downto 0)
	);
	end component;
begin
	d1:demux port map(a=>a,s=>s,b=>b);
	process begin
		
		wait for 500 ms;
		a<="11";
		s<="00";
		wait for 500 ms;

		s<="01";
		wait for 500 ms;
		s<="10";
		wait for 500 ms;
		s<="11";
		wait for 500 ms;
		wait;
	end process;
end test;
