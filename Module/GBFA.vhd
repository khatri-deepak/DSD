---------------------------------------------------------
--Gated Binary Full Adder
---------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity GBFA is
Port( A,B,Cin,Mgate: in std_logic;
      S,Cout:out STD_LOGIC);
end GBFA;

architecture behave of GBFA is

component Full_Adder is
port(
      a,b,c:in STD_LOGIC;
      sum,carry:out STD_LOGIC);  
end component;

component AND2 
  port( A,B:in STD_LOGIC;
        Y:out STD_LOGIC);
end component;

signal and1_to_FA : STD_LOGIC;

begin
      c1: AND2 port map(A,Mgate,and1_to_FA);
      c2: Full_Adder port map(and1_to_FA,B,Cin,S,Cout);
end behave;