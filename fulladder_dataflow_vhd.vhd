library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fulladder_data is
    Port ( a,b,c : in  STD_LOGIC;
           sum,carry : out  STD_LOGIC);
end fulladder_data;

architecture Dataflow of fulladder_data is

begin
sum<=a xor b xor c;
carry<=(a and b) or (b and c) or (c and a);

end Dataflow;

