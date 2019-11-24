----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:52:10 11/18/2013 
-- Design Name: 
-- Module Name:    main - Behavioral 
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
use  IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           f : out  STD_LOGIC);
end main;

architecture Behavioral of main is

begin
 f<=  a(0) OR 
     (a(1) AND a(0)) OR 
	  (a(2)AND a(0)) OR 
     (a(2) AND A (1) AND A (0)) OR 
	  (a(3) AND A (0)) OR
	  (a(3) AND A (1) AND A (0)) OR
	  (a(3) AND A (2) AND A (0)) OR 
	  (a(3) AND A (2) AND A (1) AND A (0));
end Behavioral;

