library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_Unsigned.ALL;

entity counter_dataflow is
    Port ( clk,clr : in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (3 downto 0));
end counter_dataflow;

architecture Dataflow of counter_dataflow is
   signal temp :  STD_LOGIC_VECTOR (3 downto 0);
begin
process(clk,clr,temp)
begin
	if(clr='1') then
		temp<="0000";
	elsif rising_edge(clk) then
		temp<=temp + '1';
	end if;
end process;
	q<=temp;
end Dataflow;

