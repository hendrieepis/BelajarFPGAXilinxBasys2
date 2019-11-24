----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:18:29 12/16/2013 
-- Design Name: 
-- Module Name:    system - Behavioral 
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

entity system is
    Port ( sw_IN : IN std_logic_vector(3 downto 0); 
           seg_OUT : OUT std_logic_vector(6 downto 0);
           enA_OUT : out  STD_LOGIC;
           clk_IN : in  STD_LOGIC;
           clk_OUT : out  STD_LOGIC);
end system;

architecture Behavioral of system is
	COMPONENT blink
	PORT(
		clk_i : IN std_logic;          
		blinkout : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT sevenSegment
	PORT(
		switchIN : IN std_logic_vector(3 downto 0);          
		enA : OUT std_logic;
		segmentOut : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;
	
begin
	Inst_blink: blink PORT MAP(
		clk_i => clk_IN,
		blinkout => clk_OUT
	);
	
		Inst_sevenSegment: sevenSegment PORT MAP(
		switchIN => sw_IN,
		enA => enA_OUT,
		segmentOut => seg_OUT
	);

end Behavioral;

