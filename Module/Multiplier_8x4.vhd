---------------------------------------------------------
-- 4x8 MULTIPLIER
---------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity MUL4x8 is
port(
    A:in std_logic_vector (7 downto 0);
    B:in std_logic_vector (3 downto 0);
    P:out std_logic_vector (7 downto 0);
    C:out std_logic);
end MUL4x8;

architecture structural of MUL4x8 is

component G8BFA is
Port( 
    A : in STD_LOGIC_VECTOR (7 downto 0);
    B : in STD_LOGIC_VECTOR (7 downto 0);
    Cin,M_Gate: in STD_LOGIC;
    S : out STD_LOGIC_VECTOR (7 downto 0);
    Cout : out STD_LOGIC);
end component;

signal s1: std_logic_vector(7 downto 0);
signal s2: std_logic_vector(7 downto 0);
signal s3: std_logic_vector(7 downto 0);
signal s4: std_logic_vector(7 downto 0);
signal cr: std_logic_vector(3 downto 0);
signal z: std_logic_vector(7 downto 0);
signal ci: std_logic;
signal CON1: std_logic_vector(7 downto 0);
signal CON2: std_logic_vector(7 downto 0);
signal CON3: std_logic_vector(7 downto 0);

begin 
z<="00000000";
ci<='0';
G8BFA1:G8BFA port map(A,z,ci,B(0),s1,cr(0));
CON1<=cr(0) & s1(7 downto 1);

G8BFA2:G8BFA port map(A,CON1,ci,B(1),s2,cr(1));
CON2<=cr(1) & s2(7 downto 1);

G8BFA3:G8BFA port map(A,CON2,ci,B(2),s3,cr(2));
CON3<=cr(2) & s3(7 downto 1);

G8BFA4:G8BFA port map(A,CON3,ci,B(3),s4,cr(3));
P <=cr(3) & s4(7 downto 1);
C <= cr(3);

end structural;

