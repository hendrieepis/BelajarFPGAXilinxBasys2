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
           clk_out : out  STD_LOGIC;
			  clk1hz : out  STD_LOGIC);
end prescaller;

architecture Behavioral of prescaller is
constant f_in  : integer :=  50000000;-- 50Mhz
constant f_out1: integer := 50*4; -- in Hz
constant f_out1Hz: integer := 1; -- in Hz

type t_clk is
 record
  timeout: integer;
  sTick  : std_logic;
  counter: integer range 0 to 50000000;
 end record;

signal clk1: t_clk := (
    timeout => f_in/(f_out1*2),
	 sTick    => '0',
	 counter  => 0
);

signal sClk1Hz: t_clk := (
    timeout => f_in/(f_out1Hz*2),
	 sTick  => '0',
	 counter => 0
);

begin
clock1: process (clk_in)
begin
  if rising_edge(clk_in) then
     if clk1.counter<clk1.timeout then
       clk1.counter <= clk1.counter+1;
     else
       clk1.counter<=0;
	    clk1.sTick<= not clk1.sTick;
     end if;
  end if;
end process;

clock2:process (clk_in)
begin
  if rising_edge(clk_in) then
     if sClk1Hz.counter<sClk1Hz.timeout then
       sClk1Hz.counter <= sClk1Hz.counter+1;
     else
       sClk1Hz.counter<=0;
	    sClk1Hz.sTick<= not sClk1Hz.sTick;
     end if;
  end if;
end process;

BUFG_inst1 : BUFG
   port map (
      O => clk_out,     -- Clock buffer output
      I => clk1.sTick      -- Clock buffer input
);

BUFG_inst2 : BUFG
   port map (
      O => clk1hz,     -- Clock buffer output
      I => sClk1Hz.sTick  -- Clock buffer input
);
 
end Behavioral;

