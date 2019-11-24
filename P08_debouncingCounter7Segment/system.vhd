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
library UNISIM;
use UNISIM.VComponents.all;

entity mod3_cntdebounce is
    Port ( datasegA : out  STD_LOGIC_VECTOR (7 downto 0); -- sevent seg A-G+dot aktif low
			 clk       : in   STD_LOGIC;
			 tick      : out  STD_LOGIC;
			 D_IN       : in   STD_LOGIC;
			 reset       : in   STD_LOGIC;
          en        : out  STD_LOGIC); -- control aktif low
end mod3_cntdebounce;

architecture Behavioral of mod3_cntdebounce is     --   gfedcba
constant f_in  : integer :=50000000;
constant f_out : integer :=20;
constant timeout: integer := f_in/(f_out*2);
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


--type <type_name> is array integer range 0 to 9;
				
signal   counter_psc    : integer range 0 to 50000000 :=0;
signal   sInv   : std_logic;
signal   sCount : integer range 0 to 10 :=0;
signal   clock_o: std_logic :='0';
signal  Q_OUT:std_logic:='0';
signal  Qclk_OUT:std_logic:='0';
--  Provides a one-shot pulse from a non-clock input, with reset
--**Insert the following between the 'architecture' and
---'begin' keywords**
signal Q1, Q2, Q3 : std_logic;

begin
	en<='0';
	tick<=sInv;
	
proc1:process (clk)
begin
  if rising_edge(clk) then
     if counter_psc<timeout then
       counter_psc <= counter_psc+1;
     else
       counter_psc<=0;
	    sInv<= not sInv;
     end if;
  end if;
end process;


BUFG_inst1 : BUFG
   port map (
      O => clock_o,     -- Clock buffer output
      I => sInv      -- Clock buffer input
 );
 
BUFG_inst2 : BUFG
   port map (
      O => Qclk_OUT,     -- Clock buffer output
      I => Q_OUT       -- Clock buffer input
 );



 
--**Insert the following after the 'begin' keyword**
process(clock_o)
begin
   if (clock_o'event and clock_o = '1') then
      if (reset = '1') then
         Q1 <= '0';
         Q2 <= '0';
         Q3 <= '0'; 
      else
         Q1 <= D_IN;
         Q2 <= Q1;
         Q3 <= Q2;
      end if;
   end if;
end process;
 
Q_OUT <= Q1 and Q2 and (not Q3);
 
				
proc2:process(Qclk_OUT)
begin
  if rising_edge(Qclk_OUT) then
    if sCount<=9 then
		case (sCount) is 
        when 0 =>
            dataSegA<=seg0;
        when 1 =>
            dataSegA<=seg1;
        when 2 =>
            dataSegA<=seg2;
        when 3 =>
            dataSegA<=seg3;
        when 4 =>
            dataSegA<=seg4;
        when 5 =>
            dataSegA<=seg5;
        when 6 =>
            dataSegA<=seg6;
        when 7 =>
            dataSegA<=seg7;
        when 8 =>
            dataSegA<=seg8;		
        when 9 =>
            dataSegA<=seg9;	
        when others=>
 		      dataSegA<=seg5;	
      end case;
	   sCount<=sCount+1;
	else
	   dataSegA<=seg0;
	   sCount<=1;

    end if;	
   end if;
end process;
end Behavioral;
