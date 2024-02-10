library ieee;
use ieee.std_logic_1164.all;

entity or_gate is
	port (
		x,y:in std_logic;
		z:out std_logic
	);

end or_gate;

architecture or_arch of or_gate is
begin
		z<=x or y;
end or_arch;



library ieee;
use ieee.std_logic_1164.all;

entity half_adder is
        port (
                x,y:in std_logic;
                s,c:out std_logic
        );        
        
end half_adder;

architecture half_adder_arch of half_adder is
begin
        ha:process (x,y)
	begin
                s<=x xor y;
		c<=x and y;
        end process ha;
end half_adder_arch;

library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
        port (
                x,y,cin:in std_logic;
                s,c:out std_logic
        );        
        
end full_adder;

architecture full_adder_arch of full_adder is
	component or_gate is
		port (
                x,y:in std_logic;
                z:out std_logic

		     );
		end component or_gate;

	component half_adder is
        	port (
                x,y:in std_logic;
                s,c:out std_logic
        ) ;       	
	end component half_adder;
	signal s1,c1,c2:std_logic; 
begin
                ha1:half_adder port map(x=>x,y=>y,s=>s1,c=>c1);
		ha2:half_adder port map(x=>s1,y=>cin,s=>s,c=>c2);
		or1:or_gate port map(x=>c1,y=>c2,z=>c);
end full_adder_arch;

