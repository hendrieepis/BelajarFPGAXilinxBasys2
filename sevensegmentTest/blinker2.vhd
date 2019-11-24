library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity blink is
    Port ( clk_i : in  STD_LOGIC;
           blinkout : out  STD_LOGIC);
end blink;

architecture Behavioral of blink is
 -- change these parameters for changing the output freq(in hz).
   constant f_in       : integer := 50000000; -- input freq.    
	constant f_out      : integer := 1; -- output freq
   constant cnttimeout : integer := f_in/(f_out*2) ; --  timeout
signal psc:  integer range 0 to 50000001 :=0;
signal s_inv: std_logic;
begin
process (clk_i) 
begin
   if rising_edge(clk_i) then
		 if (psc < cnttimeout) then
		    	    psc<= psc+1;
		 else
		     psc <= 0;
			  s_inv <= not s_inv;
		 end if;
	end if;
end process;
   blinkout <= s_inv ;
end Behavioral;
