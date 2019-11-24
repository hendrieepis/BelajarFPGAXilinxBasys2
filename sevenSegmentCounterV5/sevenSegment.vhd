library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity sevenSegment is
    Port ( datasegA : out  STD_LOGIC_VECTOR (7 downto 0); -- sevent seg A-G+dot aktif low
			 clk       : in   STD_LOGIC;
			 tp1_out   : out  STD_LOGIC;
			 tp2_out   : out  STD_LOGIC;
			 en        : out  STD_LOGIC_VECTOR (3 downto 0)); -- control aktif low
end sevenSegment;

architecture Behavioral of sevenSegment is     --   gfedcba
type ROM is array (0 to 9) of STD_LOGIC_VECTOR (7 downto 0);
constant SegmenROM : ROM :=
    (
	     "11000000", "11111001", "10100100", "10110000", "10011001",
		  "10010010", "10000010", "11111000", "10000000", "10010000"
	 );
signal SegmenBuf:ROM :=SegmenROM;
signal   sclk1: std_logic :='0';
signal   sclk2: std_logic :='0';
signal   testTick: std_logic :='0';
	COMPONENT psc7seg
	PORT(
		clk_i : IN std_logic;          
		clk1_o : OUT std_logic;
		clk2_o : OUT std_logic
		);
	END COMPONENT;

begin
	   tp1_out<=testTick;
--		tp2_out<=sclk2;

   	Inst_psc7seg: psc7seg PORT MAP(
		clk_i => clk,
		clk1_o => sclk1,
		clk2_o => sclk2
	);
	
 BUFG_inst : BUFG
   port map (
      O => tp2_out,     -- Clock buffer output
      I =>sclk2      -- Clock buffer input
   );
	
switchEN:process(sclk1)
variable counter: integer range 0 to 9 :=0;
begin
  if rising_edge(sclk1) then
     case counter is
	    when 0 =>
		   dataSegA<=SegmenBuf(0);
		   en<="1110";
	    when 1 =>
	  	   dataSegA<=SegmenBuf(1);
		   en<="1101";
	    when 2 =>
	 	   dataSegA<=SegmenBuf(2);
		   en<="1011";
	    when 3 =>
	 	   dataSegA<=SegmenBuf(3);
		   en<="0111";
	   when others =>
		   null;
    end case;
	 if counter<=3 then
	   counter:=counter+1;
	 else
	   testTick<= not testTick;
	   counter:=0;
	 end if;
   end if;
end process;

updateSeg1:process(sclk2)
variable counter: integer range 0 to 10 :=0;
begin
  if rising_edge(sclk2) then
  	 SegmenBuf(0)<=SegmenROM(counter);
	 if counter<9 then
	   counter:=counter+1;
	 else
	   counter:=0;
	 end if;
  end if;
end process;

end Behavioral;
