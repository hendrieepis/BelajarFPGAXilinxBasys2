library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counterLED is
    Port ( clk_in : in  STD_LOGIC;
        cnt_out : out  STD_LOGIC_VECTOR(7 downto 0);
        clk_out : out  STD_LOGIC
    );
end counterLED;

architecture Behavioral of counterLED is
 -- change these parameters for changing the output freq(in hz).
    constant f_in       : integer := 50000000; -- input freq.
    constant f_out      : integer := 1; -- output freq
    constant cnttimeout : integer := f_in/(f_out*2) ; --  timeout
    signal   s_counter    : std_logic_vector(7 downto 0) := (others => '0');
    signal prescaller :  integer range 0 to 50000000 := 0;
    signal s_inv : std_logic;
begin
    clk_out <= s_inv ;
    cnt_out <= s_counter;
    process (clk_in)
    begin
        if rising_edge(clk_in) then
            if (prescaller < cnttimeout) then
                prescaller <= prescaller+1;
            else
                prescaller <= 0;
                s_inv <= not s_inv;
                s_counter <= s_counter + 1;
            end if;
        end if;
    end process;

end Behavioral;
