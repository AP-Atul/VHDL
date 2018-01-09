library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity fulladder_structural1 is
    Port ( a,b,c : in  STD_LOGIC;
           sum,carry : out  STD_LOGIC);
end fulladder_structural1;

architecture structural of fulladder_structural1 is
component xor1
    Port ( p,q,r : in  STD_LOGIC;
           y : out  STD_LOGIC);
end component;

component and1
    Port ( x,y : in  STD_LOGIC;
           z : out  STD_LOGIC);
end component;

component or1
    Port ( d,e,f : in  STD_LOGIC;
           g : out  STD_LOGIC);
end component;
signal c1,c2,c3:std_logic;
begin
u0:xor1 port map(a,b,c,sum);
u1:and1 port map(a,b,c1);
u2:and1 port map(a,c,c2);
u3:and1 port map(b,c,c3);
u4:or1 port map(c1,c2,c3,carry);
end structural;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity xor1 is
   Port ( p,q,r : in  STD_LOGIC;
           y : out  STD_LOGIC);	
end xor1;
architecture arch_xor1 of xor1 is
begin
	y<=p xor q xor r;
end arch_xor1;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity and1 is
    Port ( x,y : in  STD_LOGIC;
           z : out  STD_LOGIC);
end and1;
architecture arch_and1 of and1 is
begin
	z<=x and y;
end arch_and1;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity or1 is
   Port ( d,e,f : in  STD_LOGIC;
           g : out  STD_LOGIC);	
end or1;
architecture arch_or1 of or1 is
begin
	g<=d or e or f;
end arch_or1;
