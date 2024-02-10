library ieee;
use ieee.std_logic_1164.all;

entity full_adder_tb is
end full_adder_tb;

architecture test of full_adder_tb is
	signal x,y,cin,s,c:std_logic;
	component full_adder is 
		port(
		x,y,cin:in std_logic;
		s,c:out std_logic
	);
	end component full_adder;

begin
	fa1:full_adder port map(x=>x,y=>y,cin=>cin,s=>s,c=>c);
	process begin
		wait for 500 ms;
		x<='1';
		y<='1';
		cin<='1';
		wait for 500 ms;
		x<='1';
		y<='0';
		cin<='1';
		wait for 500 ms;
		wait;
	end process;
end test;
		
