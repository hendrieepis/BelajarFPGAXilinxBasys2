----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:45:55 11/27/2013 
-- Design Name: 
-- Module Name:    debouncingCircuit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity debouncingCircuit is
    Port (
	     rst        : in STD_LOGIC;
        clk        : in   STD_LOGIC;
        sw1_in     : in   STD_LOGIC;
        sw1_out     : OUT   STD_LOGIC;
        sw2_in     : in   STD_LOGIC;
        sw2_out     : OUT   STD_LOGIC		  
		  );
end debouncingCircuit;

architecture Behavioral of debouncingCircuit is
type sw_t is
 record
   Q1:  std_logic;
   Q2  : std_logic;
   Q3  : std_logic;
 end record;

signal sw1,sw2: sw_t;
   
begin

--**Insert the following after the 'begin' keyword**
procsw1:process(clk)
begin
   if (rising_edge(clk)) then
      if ( rst= '1') then
         sw1.Q1 <= '0';
         sw1.Q2 <= '0';
         sw1.Q3 <= '0'; 
      else
         sw1.Q1 <= sw1_in;
         sw1.Q2 <= sw1.Q1;
         sw1.Q3 <= sw1.Q2;
      end if;
   end if;
end process;

procsw2:process(clk)
begin
   if (rising_edge(clk)) then
      if ( rst= '1') then
         sw2.Q1 <= '0';
         sw2.Q2 <= '0';
         sw2.Q3 <= '0'; 
      else
         sw2.Q1 <= sw2_in;
         sw2.Q2 <= sw2.Q1;
         sw2.Q3 <= sw2.Q2;
      end if;
   end if;
end process;

  sw1_out <= sw1.Q1 and sw1.Q2 and (not sw1.Q3);
  sw2_out <= sw2.Q1 and sw2.Q2 and (not sw2.Q3);
end Behavioral;

