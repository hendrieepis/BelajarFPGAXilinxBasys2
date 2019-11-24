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
           clk1_o : out  STD_LOGIC;
			  clk2_o : out  STD_LOGIC);
end psc7seg;

architecture Behavioral of psc7seg is
constant f_in  : integer :=  50000000;-- 50Mhz
constant f_out1: integer := 50*4; -- in Hz
constant f_out2: integer := 1; -- in Hz

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

signal clk2: t_clk := (
    timeout => f_in/(f_out2*2),
	 sTick  => '0',
	 counter => 0
);

begin
clock1: process (clk_i)
begin
  if rising_edge(clk_i) then
     if clk1.counter<clk1.timeout then
       clk1.counter <= clk1.counter+1;
     else
       clk1.counter<=0;
	    clk1.sTick<= not clk1.sTick;
     end if;
  end if;
end process;

clock2:process (clk_i)
begin
  if rising_edge(clk_i) then
     if clk2.counter<clk2.timeout then
       clk2.counter <= clk2.counter+1;
     else
       clk2.counter<=0;
	    clk2.sTick<= not clk2.sTick;
     end if;
  end if;
end process;

BUFG_inst1 : BUFG
   port map (
      O => clk1_o,     -- Clock buffer output
      I => clk1.sTick      -- Clock buffer input
);

BUFG_inst2 : BUFG
   port map (
      O => clk2_o,     -- Clock buffer output
      I => clk2.sTick  -- Clock buffer input
);
 
end Behavioral;


