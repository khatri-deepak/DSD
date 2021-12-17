--testbench for AND2
Library IEEE;
USE IEEE.Std_logic_1164.all;


entity Testbench_behavioral_and2 is
end Testbench_behavioral_and2;
 
architecture  behavioral of Testbench_behavioral_and2 is
 component AND2 
   port(
	A,B:in STD_LOGIC;
        Y:out STD_LOGIC);
 end component; 

 signal P,Q: std_logic:='0';
 signal R: std_logic;

begin
uut: AND2 port map(
A => P,B => Q, Y => R);

stim: process

  begin
   P <= '0';
   Q <= '0';
   wait for 50 ps; 
   P <= '0';
   Q <= '1';
   wait for 50 ps; 
   P <= '1';
   Q <= '0';
   wait for 50 ps;
   P <= '1';
   Q <= '1';
   wait for 50 ps;
  
  end process;
      
end behavioral;