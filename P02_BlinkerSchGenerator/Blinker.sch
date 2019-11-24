<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk_in" />
        <signal name="clk_out(24:0)" />
        <port polarity="Input" name="clk_in" />
        <port polarity="Output" name="clk_out(24:0)" />
        <blockdef name="counter">
            <timestamp>2013-11-24T11:0:32</timestamp>
            <rect width="512" x="32" y="32" height="384" />
            <line x2="32" y1="208" y2="208" x1="0" />
            <line x2="544" y1="80" y2="80" x1="576" />
            <line x2="544" y1="144" y2="144" style="linewidth:W" x1="576" />
        </blockdef>
        <block symbolname="counter" name="XLXI_5">
            <blockpin signalname="clk_in" name="clk" />
            <blockpin name="thresh0" />
            <blockpin signalname="clk_out(24:0)" name="q(24:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <iomarker fontsize="28" x="1424" y="1424" name="clk_in" orien="R180" />
        <branch name="clk_in">
            <wire x2="1440" y1="1424" y2="1424" x1="1424" />
            <wire x2="1456" y1="1424" y2="1424" x1="1440" />
        </branch>
        <instance x="1456" y="1216" name="XLXI_5" orien="R0">
        </instance>
        <branch name="clk_out(24:0)">
            <wire x2="2064" y1="1360" y2="1360" x1="2032" />
        </branch>
        <iomarker fontsize="28" x="2064" y="1360" name="clk_out(24:0)" orien="R0" />
    </sheet>
</drawing>