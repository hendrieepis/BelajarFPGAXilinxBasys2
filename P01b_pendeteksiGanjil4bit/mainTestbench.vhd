--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:12:57 11/18/2013
-- Design Name:   
-- Module Name:   /home/hendri/Documents/workspaceXilinxBasys2/pendeteksiGanjil4bit/mainTestbench.vhd
-- Project Name:  pendeteksiGanjil4bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: main
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY mainTestbench IS
END mainTestbench;
 
ARCHITECTURE behavior OF mainTestbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT main
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         f : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal f : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: main PORT MAP (
          a => a,
          f => f
        );


	stim_proc4: process
   begin		
      -- hold reset state for 100 ns.
      wait for 80 ns;
      a(3) <= not a(3);		
   end process;
	
   stim_proc3: process
   begin		
      -- hold reset state for 100 ns.
      wait for 40 ns;
      a(2) <= not a(2);		
   end process;
	
   stim_proc2: process
   begin		
      -- hold reset state for 100 ns.
      wait for 20 ns;
      a(1) <= not a(1);		
   end process;
	
   stim_proc1: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;
      a(0) <= not a(0);		
   end process;
	
END;
