----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:57:22 11/26/2013 
-- Design Name: 
-- Module Name:    prescaller - Behavioral 
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
library UNISIM;
use UNISIM.VComponents.all;

entity prescaller is
    Port ( clk_in : in  STD_LOGIC;
           clk_out : out  STD_LOGIC);
end prescaller;

architecture Behavioral of prescaller is
    constant f_in  : integer := 50000000;
    constant f_out : integer := 5;
    constant timeout : integer := f_in/(f_out*2);
	 signal   psc    : integer range 0 to f_in := 0;
	 signal   sInv   : std_logic;
begin
  process (clk_in)
    begin
        if rising_edge(clk_in) then
            if psc < timeout then
                psc <= psc+1;
            else
                psc <= 0;
                sInv <= not sInv;
            end if;
        end if;
    end process;
    clk_out<= sInv;
end Behavioral;
