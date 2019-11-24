----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:55:36 11/21/2013 
-- Design Name: 
-- Module Name:    psc7seg - Behavioral 
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

entity psc7seg is
    Port ( clk_i : in  STD_LOGIC;
           clk_o : out  STD_LOGIC);
end psc7seg;

architecture Behavioral of psc7seg is
constant f_in  : integer :=  50000000;-- 50Mhz
constant sampling: integer := 50; -- in Hz
constant timeout: integer := f_in/(sampling*2*4);
signal   sInv   : std_logic;
signal   psc    : integer range 0 to 50000000 :=0;

begin
process (clk_i)
begin
  if rising_edge(clk_i) then
     if psc<timeout then
       psc <= psc+1;
     else
       psc<=0;
	    sInv<= not sInv;
     end if;
  end if;
end process;

BUFG_inst : BUFG
   port map (
      O => clk_o,     -- Clock buffer output
      I => sInv      -- Clock buffer input
 );
end Behavioral;


