----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:05:14 11/17/2013 
-- Design Name: 
-- Module Name:    mainHDL - Behavioral 
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

entity mainHDL is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           f : out  STD_LOGIC);
end mainHDL;

architecture Behavioral of mainHDL is

	COMPONENT and2HDL
	PORT(
		a : IN std_logic;
		b : IN std_logic;          
		f : OUT std_logic
		);
	END COMPONENT;
	COMPONENT notHDL
	PORT(
		a : IN std_logic;          
		f : OUT std_logic
		);
	END COMPONENT;
	COMPONENT or2HDL
	PORT(
		a : IN std_logic;
		b : IN std_logic;          
		f : OUT std_logic
		);
	END COMPONENT;
	signal sigA: std_logic;
	signal sigB: std_logic;
begin
	Inst_and2HDL: and2HDL PORT MAP(
		a => a,
		b => b,
		f => sigA
	);

	Inst_notHDL: notHDL PORT MAP(
		a => c,
		f => sigB 
	);
		Inst_or2HDL: or2HDL PORT MAP(
		a => sigA,
		b => sigB,
		f => f
	);
end Behavioral;

