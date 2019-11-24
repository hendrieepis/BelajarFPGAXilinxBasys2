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
    Port ( datasegA : out  STD_LOGIC_VECTOR (7 downto 0); -- sevent seg A-G+dot aktif low
          inSaklar  : in   STD_LOGIC_VECTOR (3 downto 0);
			 AN        : in   STD_LOGIC_VECTOR (1 downto 0);    
          en        : out  STD_LOGIC_VECTOR(3 downto 0)); -- control aktif low
end sevenSegment;

--   aaaa
--  f    b
--  f    b
--   gggg   
--  e    c
--  e    c
--   dddd
architecture Behavioral of sevenSegment is     --   gfedcba
constant seg0  : STD_LOGIC_VECTOR (7 downto 0) := "11000000";
constant seg1  : STD_LOGIC_VECTOR (7 downto 0) := "11111001";
constant seg2  : STD_LOGIC_VECTOR (7 downto 0) := "10100100";
constant seg3  : STD_LOGIC_VECTOR (7 downto 0) := "10110000";
constant seg4  : STD_LOGIC_VECTOR (7 downto 0) := "10011001";
constant seg5  : STD_LOGIC_VECTOR (7 downto 0) := "10010010";
constant seg6  : STD_LOGIC_VECTOR (7 downto 0) := "10000010";
constant seg7  : STD_LOGIC_VECTOR (7 downto 0) := "11111000";
constant seg8  : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
constant seg9  : STD_LOGIC_VECTOR (7 downto 0) := "10010000";
constant segA  : STD_LOGIC_VECTOR (7 downto 0) := "10001000";

begin

  dataSegA<=seg0 when inSaklar = "0000" else
            seg1 when inSaklar = "0001" else
				seg2 when inSaklar = "0010" else
				seg3 when inSaklar = "0011" else
				seg4 when inSaklar = "0100" else
            seg5 when inSaklar = "0101" else
				seg6 when inSaklar = "0110" else
				seg7 when inSaklar = "0111" else
				seg8 when inSaklar = "1000" else		
            seg9 when inSaklar = "1001" else
				segA when inSaklar = "1010" else
				seg0;
	en<="1110" when AN="00" else
       "1101" when AN="01" else
       "1011" when AN="10"	else
       "0111" when AN="11";

end Behavioral;

