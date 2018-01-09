LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY mux4_dataflow_tb IS
END mux4_dataflow_tb;
 
ARCHITECTURE behavior OF mux4_dataflow_tb IS 
 
    COMPONENT mux4_dataflow
    PORT(
         i : IN  std_logic_vector(3 downto 0);
         s : IN  std_logic_vector(1 downto 0);
         y : OUT  std_logic
        );
    END COMPONENT;
    
   signal i : std_logic_vector(3 downto 0) := (others => '0');
   signal s : std_logic_vector(1 downto 0) := (others => '0');

   signal y : std_logic;

BEGIN

   uut: mux4_dataflow PORT MAP (
          i => i,
          s => s,
          y => y
        );

		  stim_proc: process
   begin		
      wait for 100 ns;	
		i<="1001";
		s<="00";
	    wait for 100 ns;	
		 s<="01";
	    wait for 100 ns;	
		 s<="10";
	    wait for 100 ns;	
		 s<="11";
		
   end process;

END;
