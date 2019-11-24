--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.5
--  \   \         Application : sch2hdl
--  /   /         Filename : Blinker.vhf
-- /___/   /\     Timestamp : 11/24/2013 19:26:47
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath /home/hendri/Documents/workspaceXilinxBasys2/P2_BlinkerSCH/ipcore_dir -intstyle ise -family spartan3e -flat -suppress -vhdl /home/hendri/Documents/workspaceXilinxBasys2/P2_BlinkerSCH/Blinker.vhf -w /home/hendri/Documents/workspaceXilinxBasys2/P2_BlinkerSCH/Blinker.sch
--Design Name: Blinker
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Blinker is
   port ( clk_in  : in    std_logic; 
          clk_out : out   std_logic_vector (24 downto 0));
end Blinker;

architecture BEHAVIORAL of Blinker is
   component counter
      port ( clk     : in    std_logic; 
             thresh0 : out   std_logic; 
             q       : out   std_logic_vector (24 downto 0));
   end component;
   
begin
   XLXI_5 : counter
      port map (clk=>clk_in,
                q(24 downto 0)=>clk_out(24 downto 0),
                thresh0=>open);
   
end BEHAVIORAL;


