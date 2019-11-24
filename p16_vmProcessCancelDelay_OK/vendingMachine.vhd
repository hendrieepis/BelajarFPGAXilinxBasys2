library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vendingmachine is
    Port (
        clk        : in   STD_LOGIC;
        rst       : in   STD_LOGIC;
        u500_in   : in   STD_LOGIC;
        u1000_in  : in  STD_LOGIC;
        proses_in  : in  STD_LOGIC;
        batal_in  : in  STD_LOGIC;
        debugstate : out std_logic_vector(2 downto 0);
        drop_out  : out  STD_LOGIC;
        kembali500_out  : out  STD_LOGIC;
        kembali1000_out  : out  STD_LOGIC;
        tick_A       : out  STD_LOGIC);
end vendingmachine;

architecture Behavioral of vendingmachine is
    type t_State is (s0,s500,s1000,sK500,sK1000,SL500,SL1000,sDROP);
    signal sbatal,sproses,koin500,koin1000 : std_logic;
    signal s_clk : std_logic;
    signal s_delay : integer range 0 to 400 := 0;
    signal myState : t_State;

    COMPONENT prescaller
        PORT(
            clk_in : IN std_logic;
            clk_out : OUT std_logic
        );
    END COMPONENT;

    COMPONENT debouncingCircuit
        PORT(
            rst : IN std_logic;
            clk : IN std_logic;
            sw1_in : IN std_logic;
            sw2_in : IN std_logic;
            sw3_in : IN std_logic;
            sw4_in : IN std_logic;
            sw1_out : OUT std_logic;
            sw2_out : OUT std_logic;
            sw3_out : OUT std_logic;
            sw4_out : OUT std_logic
        );
    END COMPONENT;

begin
    tick_A <= s_clk;

    Inst_prescaller : prescaller PORT MAP(
        clk_in => clk,
        clk_out => s_clk
    );
    
    Inst_debouncingCircuit : debouncingCircuit PORT MAP(
        rst => rst,
        clk => s_clk,
        sw1_in => u500_in,
        sw1_out => koin500,
        sw2_in => u1000_in,
        sw2_out => koin1000,
        sw3_in => proses_in,
        sw3_out => sproses,
        sw4_in => batal_in,
        sw4_out => sbatal
    );
    
    process(rst,s_clk)
    begin
        if rst = '1' then
            myState <= s0;
            drop_out <= '0';
            kembali500_out <= '0';
            kembali1000_out <= '0';
        elsif rising_edge(s_clk) then
            case myState is
                when s0 =>
                    debugstate <= "000";
                    if koin500 = '1' then
                        myState <= s500;
                    elsif koin1000 = '1' then
                        myState <= s1000;
                    end if;
                when s500 =>
                    debugstate <= "001";
                    if koin500 = '1' then
                        myState <= s1000;
                    elsif koin1000 = '1' then
                        myState <= sL500;
                    elsif sbatal = '1' then
                        myState <= sK500;
                    end if;
                when s1000 =>
                    debugstate <= "010";
                    if koin500 = '1' then
                        myState <= sL500;
                    elsif koin1000 = '1' then
                        myState <= sL1000;
                    elsif sproses = '1' then
                        myState <= sDrop;
                    elsif sbatal = '1' then
                        myState <= sK1000;
                    end if;
                when sDrop =>
                    debugstate <= "011";
                    if s_delay < 50 then
                        drop_out <= '1';
                        s_delay <= s_delay +1;
                    else
                        drop_out <= '0';
                        s_delay <= 0;
                        myState <= s0;
                    end if;
                when sL500 =>
                    debugstate <= "100";
                    if koin500 = '1' then
                        myState <= sL500;
                    elsif koin1000 = '1' then
                        myState <= sL1000;
                    elsif sproses = '1' then
                        myState <= sDrop;
                    elsif sbatal = '1' then
                        myState <= sK1000;
                    end if;
                when sL1000 =>
                    debugstate <= "101";
                    if koin500 = '1' then
                        myState <= sL500;
                    elsif koin1000 = '1' then
                        myState <= sL1000;
                    elsif sproses = '1' then
                        myState <= sDrop;
                    elsif sbatal = '1' then
                        myState <= sK1000;
                    end if;
                when sK500 =>
                    debugstate <= "110";
                    if s_delay < 50 then
                        kembali500_out <= '1';
                        s_delay <= s_delay +1;
                    else
                        kembali500_out <= '0';
                        s_delay <= 0;
                        myState <= s0;
                    end if;
                when sK1000 =>
                    debugstate <= "111";
                    if s_delay < 50 then
                        kembali1000_out <= '1';
                        s_delay <= s_delay +1;
                    else
                        kembali1000_out <= '0';
                        s_delay <= 0;
                        myState <= s0;
                    end if;
            end case;
        end if;
    end process;
end Behavioral;
