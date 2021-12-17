---------------------------------------------------------
---AND gate using behavioral model with entity name AND2
---------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity AND2 is
    port(
        A:in STD_LOGIC;
        B:in STD_LOGIC;
        Y:out STD_LOGIC);
end AND2;

architecture behave of AND2 is
begin
process(A,B)
begin
if(A='1' and B='1') then
	Y<='1';
else
	y<='0';
end if;
end process;
end behave;