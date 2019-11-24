----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:17:07 11/17/2013 
-- Design Name: 
-- Module Name:    sevenSegment - Behavioral 
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

entity sevenSegment is
    Port ( a : out  STD_LOGIC; -- sevent seg A-G aktif low
           b : out  STD_LOGIC;
           c : out  STD_LOGIC;
           d : out  STD_LOGIC;
           e : out  STD_LOGIC;
           f : out  STD_LOGIC;
			  g : out  STD_LOGIC;
           dot : out  STD_LOGIC;
           enA : out  STD_LOGIC); -- control aktif low
end sevenSegment;

architecture Behavioral of sevenSegment is

begin
  a<='0';
  b<='0';
  c<='0';
  d<='0';
  e<='0';
  f<='0';
  g<='1';
  dot<='0';
  enA<='0';

end Behavioral;

