---------------------------------------------------------
-- testbench for 4x8 MULTIPLIER
---------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity testbench_MUL4x8 is
end testbench_MUL4x8;
 
architecture  behavioral of testbench_MUL4x8 is

 component MUL4x8 
 port(
    A:in std_logic_vector (7 downto 0);
    B:in std_logic_vector (3 downto 0);
    P:out std_logic_vector (7 downto 0);
    C:out std_logic);
 end component;
 
 signal Ai: std_logic_vector (7 downto 0);
 signal Bi: std_logic_vector (3 downto 0);
 signal P: std_logic_vector (7 downto 0);
 signal C: std_logic;

begin

 uut:MUL4x8 port map 
   (
    A => Ai,
    B => Bi,
    P => P,
    C => C 
   );
  process
  begin

   Ai <= "00110011";
   Bi <= "1010";
   wait for 50 ns;
    
   Ai <= "00111101";
   Bi <= "1011";
   wait for 50 ns;
    
   Ai <= "01110101";
   Bi <= "1110";
   wait for 50 ns;
    
   Ai <= "10101010";
   Bi <= "1001";
   wait for 50 ns;

  end process;
      
end behavioral; 