----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:10:39 12/16/2013 
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
    Port ( switchIN : in  STD_LOGIC_VECTOR (3 downto 0);
	        enA      : out STD_LOGIC;
           segmentOut : out  STD_LOGIC_VECTOR (6 downto 0));
end sevenSegment;

architecture Behavioral of sevenSegment is

begin
  enA        <= '0';
  process(switchIN)
  begin
           case switchIN is
            when "0000" => segmentOut <=  "1000000";
            when "0001" => segmentOut <=  "1111001";
            when "0010" => segmentOut <=  "0100100";
            when "0011" => segmentOut <=  "0110000";
            when "0100" => segmentOut <=  "0011001";
            when "0101" => segmentOut <=  "0010010";
            when "0110" => segmentOut <=  "0000010";
            when "0111" => segmentOut <=  "1111000";
			   when "1000" => segmentOut <=  "0000000";
			   when "1001" => segmentOut <=  "0010000";
            when others => segmentOut <=  "1111111";
         end case;
  end process;
end Behavioral;

