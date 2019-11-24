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

entity traficLight is
    Port (clk        : in   STD_LOGIC;
        reset_in   : in   STD_LOGIC;
        merah_out  : out  STD_LOGIC;
        kuning_out : out  STD_LOGIC;
        hijau_out  : out  STD_LOGIC;
        tick       : out  STD_LOGIC); -- control aktif low
end traficLight;

architecture Behavioral of traficLight is     --   gfedcba
    constant f_in  : integer := 50000000;
    constant f_out : integer := 2;
    constant timeout : integer := f_in/f_out;



--type <type_name> is array integer range 0 to 9;

    signal   psc    : integer range 0 to 50000000 := 0;
    signal   sInv   : std_logic;
    signal   clock_o : std_logic := '0';
    type t_State is (sMERAH,sMERAHKUNING,sHIJAU,sKUNING);
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

    process(clock_o)
    begin
        if rising_edge(clock_o) then
            if reset_in = '1' then
                mystate <= sMERAH;
            else
                case mystate is
                    when sMERAH =>
                        merah_out <= '1';
                        kuning_out <= '0';
                        hijau_out <= '0';
                        mystate  <= sMERAHKUNING;
                    when sMERAHKUNING =>
                        merah_out <=  '1';
                        kuning_out <= '1';
                        hijau_out <= '0';
                        mystate  <= sHIJAU;
                    when sHIJAU =>
                        merah_out <= '0';
                        kuning_out <= '0';
                        hijau_out <= '1';
                        mystate  <= sKUNING;
                    when sKUNING =>
                        merah_out <= '0';
                        kuning_out <= '1';
                        hijau_out <= '0';
                        mystate  <= sMERAH;
                        
                end case;
            end if;
        end if;
    end process;
end Behavioral;


