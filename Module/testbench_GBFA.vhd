---------------------------------------------------------
--testbench for Gated Binary Full Adder
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
library ieee;
use ieee.std_logic_1164.all;

entity testbench_GBFA is
end testbench_GBFA;
 
architecture  behavioral of testbench_GBFA is

 component GBFA 
 Port( A,B,Cin,Mgate: in std_logic;
 S,Cout:out STD_LOGIC); 
 end component;
 
 signal Ai,Bi,Cin,Mgate: std_logic:='0';
 signal S,Cout: std_logic;

begin

 uut:GBFA port map 
   (
    A => Ai,
    B => Bi,
    Cin => Cin,
    Mgate => Mgate,
    S => S,
    Cout => Cout 
   );
  process
  begin
   Ai <= '1';
   Bi <= '1';
   Cin <= '1';
   Mgate<='0';
   wait for 50 ns; 
   Ai <= '1';
   Bi <= '1';
   Cin <= '0';
   Mgate<='0';
   wait for 50 ns; 
   Ai <= '1';
   Bi <= '0';
   Cin <= '1';
   Mgate<='0';
   wait for 50 ns;
   Ai <= '0';
   Bi <= '0';
   Cin <= '0';
   Mgate<='0';
   wait for 50 ns;
   Ai <= '0';
   Bi <= '0';
   Cin <= '1';
   Mgate<='0';
   wait for 50 ns;   
   Ai <= '0';
   Bi <= '1';
   Cin <= '0';
   Mgate<='0';
   wait for 50 ns;
   Ai <= '0';
   Bi <= '1';
   Cin <= '1';
   Mgate<='0';
   wait for 50 ns;
   Ai <= '1';
   Bi <= '0';
   Cin <= '0';
   Mgate<='0';
   wait for 50 ns;
  
    Ai <= '1';
   Bi <= '1';
   Cin <= '1';
   Mgate<='1';
   wait for 50 ns; 
   Ai <= '1';
   Bi <= '1';
   Cin <= '0';
   Mgate<='1';
   wait for 50 ns; 
   Ai <= '1';
   Bi <= '0';
   Cin <= '1';
   Mgate<='1';
   wait for 50 ns;
   Ai <= '0';
   Bi <= '0';
   Cin <= '0';
   Mgate<='1';
   wait for 50 ns;
   Ai <= '0';
   Bi <= '0';
   Cin <= '1';
   Mgate<='1';
   wait for 50 ns;   
   Ai <= '0';
   Bi <= '1';
   Cin <= '0';
   Mgate<='1';
   wait for 50 ns;
   Ai <= '0';
   Bi <= '1';
   Cin <= '1';
   Mgate<='1';
   wait for 50 ns;
   Ai <= '1';
   Bi <= '0';
   Cin <= '0';
   Mgate<='1';
   wait for 50 ns;

  end process;
      
end behavioral; 