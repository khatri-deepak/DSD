---------------------------------------------------------
-- Testbench for Gated 8Bit Binary Full Adder
---------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity testbench_G8BFA is
end testbench_G8BFA;
 
architecture  behavioral of testbench_G8BFA is

 component G8BFA 
 Port( 
    A : in STD_LOGIC_VECTOR (7 downto 0);
    B : in STD_LOGIC_VECTOR (7 downto 0);
    Cin,M_Gate: in STD_LOGIC;
    S : out STD_LOGIC_VECTOR (7 downto 0);
    Cout : out STD_LOGIC);
 end component;
 
 signal Ai,Bi,Si: std_logic_vector (7 downto 0);
 signal Cin,Mgate: std_logic:='0';
 signal Cout: std_logic;

begin

 uut:G8BFA port map 
   (
    A => Ai,
    B => Bi,
    Cin => Cin,
    M_Gate => Mgate,
    S => Si,
    Cout => Cout 
   );
  process
  begin
   Ai <= "00110011";
   Bi <= "10101010";
   Cin <= '1';
   Mgate<='0';
   wait for 50 ns;
   
   Ai <= "00110111";
   Bi <= "11101010";
   Cin <= '0';
   Mgate<='1';
   wait for 50 ns;

   Ai <= "00110000";
   Bi <= "10101010";
   Cin <= '0';
   Mgate<='0';
   wait for 50 ns;

   Ai <= "00110000";
   Bi <= "10001010";
   Cin <= '0';
   Mgate<='1';
   wait for 50 ns; 


  end process;
      
end behavioral; 