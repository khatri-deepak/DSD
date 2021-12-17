---------------------------------------------------------
--Gated 8Bit Binary Full Adder
---------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity G8BFA is
Port( 
    A : in STD_LOGIC_VECTOR (7 downto 0);
    B : in STD_LOGIC_VECTOR (7 downto 0);
    Cin,M_Gate: in STD_LOGIC;
    S : out STD_LOGIC_VECTOR (7 downto 0);
    Cout : out STD_LOGIC);
end G8BFA;
    
architecture Behavioral of G8BFA is

component GBFA
Port( A,B,Cin,Mgate: in std_logic;
      S,Cout:out STD_LOGIC);
end component;

signal ci: STD_LOGIC_VECTOR (7 downto 1);

begin

GBFA0: GBFA port map(A(0),B(0),Cin,M_Gate,S(0),ci(1));
GBFA1: GBFA port map(A(1),B(1),ci(1),M_Gate,S(1),ci(2));
GBFA2: GBFA port map(A(2),B(2),ci(2),M_Gate,S(2),ci(3));
GBFA3: GBFA port map(A(3),B(3),ci(3),M_Gate,S(3),ci(4));
GBFA4: GBFA port map(A(4),B(4),ci(4),M_Gate,S(4),ci(5));
GBFA5: GBFA port map(A(5),B(5),ci(5),M_Gate,S(5),ci(6));
GBFA6: GBFA port map(A(6),B(6),ci(6),M_Gate,S(6),ci(7));
GBFA7: GBFA port map(A(7),B(7),ci(7),M_Gate,S(7),Cout);

end Behavioral;