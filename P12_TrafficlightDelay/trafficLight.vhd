library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity traficLight is
    Port (
        clk        : in   STD_LOGIC;
        reset_in   : in   STD_LOGIC;
        merah_out  : out  STD_LOGIC;
        kuning_out : out  STD_LOGIC;
        hijau_out  : out  STD_LOGIC;
        tick       : out  STD_LOGIC);
end traficLight;

architecture Behavioral of traficLight is     --   gfedcba
    constant f_in  : integer := 50000000;
    constant f_out : integer := 2;
    constant timeout : integer := f_in/f_out;
    constant dlyRed  : integer := 1;
    constant dlyYellow : integer := 4;
    constant dlyGreen : integer := 8;

    signal   psc    : integer range 0 to 50000000 := 0;
    signal   s_Count : integer range 0 to 200 := 0;

    signal   sInv   : std_logic;
    signal   clock_o : std_logic := '0';
    type t_State is (sMERAH,sKUNING,sHIJAU);
    signal myState : t_State;
begin
    tick <= sInv;

    process (clk)
    begin
        if rising_edge(clk) then
            if psc < timeout then
                psc <= psc+1;
            else
                psc <= 0;
                sInv <= not sInv;
            end if;
        end if;
    end process;


    BUFG_inst : BUFG
    port map (
        O => clock_o,     -- Clock buffer output
        I => sInv      -- Clock buffer input
    );


    SEQ : process (reset_in, clock_o)
    begin
        if (reset_in = '1') then
            myState <= sMERAH;
        elsif (rising_edge(clock_o)) then
            case myState is
                when sMerah =>
                    merah_out <= '1';
                    kuning_out <= '0';
                    hijau_out <= '0';
                    if s_count <= dlyRed then
                        s_count <= s_count+1;
                    else
                        s_count <= 0;
                        myState <= sKuning;
                    end if;

                when sKuning =>
                    merah_out <= '0';
                    kuning_out <= '1';
                    hijau_out <= '0';
                    if s_count <= dlyYellow then
                        s_count <= s_count+1;
                    else
                        s_count <= 0;
                        myState <= sHijau;
                    end if;
                when sHijau =>
                    merah_out <= '0';
                    kuning_out <= '0';
                    hijau_out <= '1';
                    if s_count <= dlyGreen then
                        s_count <= s_count+1;
                    else
                        s_count <= 0;
                        myState <= sMerah;
                    end if;

            end case;
        end if;
    end process;
end Behavioral;