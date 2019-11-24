<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="b" />
        <signal name="a" />
        <signal name="f" />
        <signal name="c" />
        <port polarity="Input" name="b" />
        <port polarity="Input" name="a" />
        <port polarity="Output" name="f" />
        <port polarity="Input" name="c" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="b" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="XLXN_2" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="f" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="c" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1152" y="1248" name="XLXI_1" orien="R0" />
        <instance x="1456" y="1360" name="XLXI_3" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1424" y1="1152" y2="1152" x1="1408" />
            <wire x2="1424" y1="1152" y2="1232" x1="1424" />
            <wire x2="1456" y1="1232" y2="1232" x1="1424" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1440" y1="1328" y2="1328" x1="1376" />
            <wire x2="1456" y1="1296" y2="1296" x1="1440" />
            <wire x2="1440" y1="1296" y2="1328" x1="1440" />
        </branch>
        <branch name="b">
            <wire x2="1152" y1="1184" y2="1184" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="1120" y="1184" name="b" orien="R180" />
        <branch name="a">
            <wire x2="1152" y1="1120" y2="1120" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="1120" y="1120" name="a" orien="R180" />
        <branch name="f">
            <wire x2="1744" y1="1264" y2="1264" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1744" y="1264" name="f" orien="R0" />
        <branch name="c">
            <wire x2="1152" y1="1328" y2="1328" x1="1136" />
        </branch>
        <instance x="1152" y="1360" name="XLXI_2" orien="R0" />
        <iomarker fontsize="28" x="1136" y="1328" name="c" orien="R180" />
    </sheet>
</drawing>