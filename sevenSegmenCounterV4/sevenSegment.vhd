library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity sevenSegment is
    Port ( datasegA : out  STD_LOGIC_VECTOR (7 downto 0); -- sevent seg A-G+dot aktif low
			 clk       : in   STD_LOGIC;
			 tick      : out  STD_LOGIC;
			 en        : out  STD_LOGIC_VECTOR (3 downto 0)); -- control aktif low
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

signal   sCount : integer range 0 to 10 :=0;
signal   clock_o: std_logic :='0';
signal   testTick: std_logic :='0';
COMPONENT psc7seg
 PORT(
		clk_i : IN std_logic;          
		clk_o : OUT std_logic
		);
END COMPONENT;

begin
	tick<=testTick;

Inst_psc7seg: psc7seg PORT MAP(
		clk_i => clk,
		clk_o => clock_o
);	

process(clock_o)
begin
  if rising_edge(clock_o) then
     if sCount=0 then
		dataSegA<=seg0;
		en<="1110";
	  elsif sCount=1 then
		dataSegA<=seg1;
		en<="1101";
	  elsif sCount=2 then
		dataSegA<=seg2;
		en<="1011";
	  elsif sCount=3 then
		dataSegA<=seg3;
		en<="0111";
		testTick<= not testTick;
	  end if;
	  if sCount<=3 then
	    sCount<=sCount+1;
	  else
	    sCount<=0;
	  end if;
   end if;
end process;
end Behavioral;

