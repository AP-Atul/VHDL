library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4_behaviral is
    Port ( i : in  STD_LOGIC_VECTOR (3 downto 0);
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           y : out  STD_LOGIC);
end mux4_behaviral;

architecture Behavioral of mux4_behaviral is
begin
process(i,s)
begin
y<=(not s(1) and not s(0) and i(0)) or
   (not s(1) and s(0) and i(1)) or
   (s(1) and not s(0) and i(2)) or
   ( s(1) and s(0) and i(3));
end process;
end Behavioral;

