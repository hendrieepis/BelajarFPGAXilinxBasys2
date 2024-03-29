----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:22:37 11/26/2013 
-- Design Name: 
-- Module Name:    vendingmachine - Behavioral 
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
--library UNISIM;
--use UNISIM.VComponents.all;

entity vendingmachine is
    Port (
        clk        : in   STD_LOGIC;
        rst       : in   STD_LOGIC;
        u500_in   : in   STD_LOGIC;
        u1000_in  : in  STD_LOGIC;
        debugstate : out std_logic_vector(2 downto 0);
        drop_out  : out  STD_LOGIC;
		  kembali_out  : out  STD_LOGIC;
        tick       : out  STD_LOGIC);
end vendingmachine;

architecture Behavioral of vendingmachine is
    type t_State is (s0,s500,s1000,sDrop,sKembali);
    signal s_clk,koin500,koin1000 : std_logic;
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
            sw1_out : OUT std_logic;
            sw2_out : OUT std_logic
        );
    END COMPONENT;

begin
    tick <= s_clk;

    Inst_prescaller : prescaller PORT MAP(
        clk_in => clk ,
        clk_out => s_clk
    );

    Inst_debouncingCircuit : debouncingCircuit PORT MAP(
        rst => rst,
        clk => s_clk,
        sw1_in => u500_in,
        sw1_out => koin500,
        sw2_in => u1000_in,
        sw2_out => koin1000
    );
    process(rst,s_clk)
    begin
        if rst = '1' then
            myState <= s0;
            drop_out <= '0';
				kembali_out <= '0';
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
                        myState <= sDrop;
                    end if;
                when s1000 =>
                    debugstate <= "010";
                    if koin500 = '1' then
                        myState <= sDrop;
                    elsif koin1000 = '1' then
                        myState <= sKembali;
                    end if;
                when sDrop =>
                    debugstate <= "011";
                    drop_out <= '1';
                    myState <= s0;
                when sKembali =>
                    debugstate <= "100";
                    kembali_out <= '1';
                    myState <= sDrop;						  
            end case;
        end if;
    end process;
end Behavioral;
