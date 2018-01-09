LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY fulladder_structural1_tb IS
END fulladder_structural1_tb;
 
ARCHITECTURE behavior OF fulladder_structural1_tb IS 
 
    COMPONENT fulladder_structural1
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         sum : OUT  std_logic;
         carry : OUT  std_logic
        );
    END COMPONENT;
    
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';

   signal sum : std_logic;
   signal carry : std_logic;
 
BEGIN
 
   uut: fulladder_structural1 PORT MAP (
          a => a,
          b => b,
          c => c,
          sum => sum,
          carry => carry
        );

   stim_proc: process
   begin		
  wait for 100 ns;	
	a<='0';b<='0';c<='0';
      wait for 100 ns;	
	a<='0';b<='0';c<='1';
      wait for 100 ns;	
	a<='0';b<='1';c<='0';
      wait for 100 ns;	
	a<='0';b<='1';c<='1';
      wait for 100 ns;	
	a<='1';b<='0';c<='0';
      wait for 100 ns;	
	a<='1';b<='0';c<='1';
      wait for 100 ns;	
	a<='1';b<='1';c<='0';
      wait for 100 ns;	
	a<='1';b<='1';c<='1';

   end process;

END;
