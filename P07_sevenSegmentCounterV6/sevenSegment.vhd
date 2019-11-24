library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity sevenSegment is
    Port ( datasegA : out  STD_LOGIC_VECTOR (6 downto 0); -- sevent seg A-G+dot aktif low
        clk       : in   STD_LOGIC;
        tp1_out   : out  STD_LOGIC;
        tp2_out   : out  STD_LOGIC;
		  dp_out    : out  STD_LOGIC;
        en        : out  STD_LOGIC_VECTOR (3 downto 0)); -- control aktif low
end sevenSegment;

architecture Behavioral of sevenSegment is     --   gfedcba
    type ROM is array (0 to 9) of STD_LOGIC_VECTOR (6 downto 0);
    constant SegmenROM : ROM :=
    (
        "1000000", "1111001", "0100100", "0110000", "0011001",
        "0010010", "0000010", "1111000", "0000000", "0010000"
    );
    signal SegmenBuf : ROM := SegmenROM;
    signal   sclk1 : std_logic := '0';
    signal   sclk2 : std_logic := '0';
    signal   testTick : std_logic := '0';
	 signal   s_dp     :std_logic  :='0';
    COMPONENT psc7seg
        PORT(
            clk_i : IN std_logic;
            clk1_o : OUT std_logic;
            clk2_o : OUT std_logic
        );
    END COMPONENT;

begin
    tp1_out <= testTick;
	 dp_out <= sclk2;
	 

    Inst_psc7seg : psc7seg PORT MAP(
        clk_i => clk,
        clk1_o => sclk1,
        clk2_o => sclk2
    );

    BUFG_inst : BUFG
    port map (
        O => tp2_out,     -- Clock buffer output
        I => sclk2      -- Clock buffer input
    );

    switchEN : process(sclk1)
        variable counter : integer range 0 to 9 := 0;
    begin
        if rising_edge(sclk1) then
            case counter is
                when 0 =>
                    dataSegA <= SegmenBuf(0);
                    en <= "1110";
                when 1 =>
                    dataSegA <= SegmenBuf(1);
                    en <= "1101";
                when 2 =>
                    dataSegA <= SegmenBuf(2);
                    en <= "1011";
                when 3 =>
                    dataSegA <= SegmenBuf(3);
                    en <= "0111";
                when others =>
                    null;
            end case;
            if counter <= 3 then
                counter := counter+1;
            else
                testTick <= not testTick;
                counter := 0;
            end if;
        end if;
    end process;

    updateSec0 : process(sclk2)
        variable cnt1,cnt2,cnt3,cnt4 : integer range 0 to 10 := 0;
    begin
        if rising_edge(sclk2) then
            SegmenBuf(0) <= SegmenROM(cnt1);
            SegmenBuf(1) <= SegmenROM(cnt2);
            SegmenBuf(2) <= SegmenROM(cnt3);
            SegmenBuf(3) <= SegmenROM(cnt4);
            if cnt1 < 9 then
                cnt1 := cnt1+1;
            else
                cnt1 := 0;
                cnt2 := cnt2+1;
                if cnt2 > 5 then
                    cnt2 := 0;
                    cnt3 := cnt3+1;
                    if cnt3 > 9 then
                        cnt3 := 0;
                        cnt4 := cnt4+1;
                        if cnt4 > 5 then
                            cnt4 := 0;
                        end if;
                    end if;
                end if;
            end if;
        end if;
    end process;

end Behavioral;
