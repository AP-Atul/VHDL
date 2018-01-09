library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity mux4_structural is
    Port ( i : in  STD_LOGIC_VECTOR (3 downto 0);
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           y : out  STD_LOGIC);
end mux4_structural;

architecture structural of mux4_structural is
component not1
	port(pin:in std_logic;
			pout:out std_logic);
end component;
component and1
	port(a,b,c:in std_logic;
			d :out std_logic);
end component;
component or1
	port(d,e,f,g:in std_logic;
			h :out std_logic);
end component;
signal s0bar,s1bar,t1,t2,t3,t4:std_logic;
begin
u0:not1 port map(s(0),s0bar);
u1:not1 port map(s(1),s1bar);
u2:and1 port map(s0bar,s1bar,i(0),t1);
u3:and1 port map(s0bar,s(1),i(1),t2);
u4:and1 port map(s(0),s1bar,i(2),t3);
u5:and1 port map(s(0),s(1),i(3),t4);
u6:or1  port map(t1,t2,t3,t4,y);
end structural;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity not1 is
	port(pin:in std_logic;
			pout:out std_logic);
end not1; 
architecture arch_not1 of not1 is
begin
pout<=not pin;
end arch_not1;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity and1 is
port(a,b,c:in std_logic;
			d :out std_logic);
end and1; 
architecture arch_and1 of and1 is
begin
d<=a and b and c;
end arch_and1;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity or1 is
	port(d,e,f,g:in std_logic;
			h :out std_logic);
end or1; 
architecture arch_or1 of or1 is
begin
h<=d or e or f or g;
end arch_or1;