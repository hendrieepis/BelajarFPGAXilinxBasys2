-- Vhdl test bench created from schematic /home/hendri/Documents/workspaceXilinxBasys2/pendeteksiGanjilSch/main.sch - Tue Nov 19 05:15:21 2013
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY main_main_sch_tb IS
END main_main_sch_tb;
ARCHITECTURE behavioral OF main_main_sch_tb IS 

   COMPONENT main
   PORT( a	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          f	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL a	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL f	:	STD_LOGIC;

BEGIN

   UUT: main PORT MAP(
		a => a, 
		f => f
   );

-- *** Test Bench - User Defined Section ***
   tb0 : PROCESS
   BEGIN
      wait for 10ns;
		a(0) <= not a(0);
   END PROCESS;
	
	   tb1 : PROCESS
   BEGIN
      wait for 20ns;
		a(1) <= not a(1);
  END PROCESS;
  
   tb2 : PROCESS
   BEGIN
      wait for 40ns;
		a(2) <= not a(2);
   END PROCESS;

	tb3 : PROCESS
   BEGIN
      wait for 80ns;
		a(3) <= not a(3);
   END PROCESS;
	
	-- *** End Test Bench - User Defined Section ***

END;
