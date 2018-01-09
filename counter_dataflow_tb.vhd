LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY counter_dataflow_tb IS
END counter_dataflow_tb;
 
ARCHITECTURE behavior OF counter_dataflow_tb IS 
    COMPONENT counter_dataflow
    PORT(
         clk : IN  std_logic;
         clr : IN  std_logic;
         q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;

   signal clk : std_logic := '0';
   signal clr : std_logic := '0';

   signal q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter_dataflow PORT MAP (
          clk => clk,
          clr => clr,
          q => q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;	
      wait for clk_period*10;
			clr<='1';
      wait for 100 ns;	
      wait for clk_period*10;
			clr<='0';

   end process;

END;
