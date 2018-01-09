library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fulladder_behaviral is
    Port ( a,b,c : in  STD_LOGIC;
           sum,carry : out  STD_LOGIC);
end fulladder_behaviral;

architecture Behavioral of fulladder_behaviral is
begin
process(a,b,c)
begin
sum<=a xor b xor c;
carry<=(a and b)or (b and c)or (c and a);
end process;

end Behavioral;

