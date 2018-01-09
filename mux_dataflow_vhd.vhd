library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4_dataflow is
    Port ( i : in  STD_LOGIC_VECTOR (3 downto 0);
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           y : out  STD_LOGIC);
end mux4_dataflow;

architecture dataflow of mux4_dataflow is

begin

y<=(not s(1) and not s(0) and i(0)) or
   (not s(1) and s(0) and i(1)) or
   (s(1) and not s(0) and i(2)) or
   ( s(1) and s(0) and i(3));
end dataflow;

