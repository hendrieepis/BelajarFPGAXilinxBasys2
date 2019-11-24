<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="a(0)" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_8" />
        <signal name="XLXN_11" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_16" />
        <signal name="a(2)" />
        <signal name="a(3)" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="A(3:0)" />
        <port polarity="Input" name="A(3:0)" />
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
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="or7">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="72" y1="-256" y2="-256" x1="0" />
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="48" y1="-448" y2="-448" x1="0" />
            <line x2="48" y1="-384" y2="-384" x1="0" />
            <line x2="192" y1="-256" y2="-256" x1="256" />
            <arc ex="112" ey="-304" sx="192" sy="-256" r="88" cx="116" cy="-216" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <arc ex="192" ey="-256" sx="112" sy="-208" r="88" cx="116" cy="-296" />
            <line x2="48" y1="-304" y2="-304" x1="112" />
            <line x2="48" y1="-448" y2="-304" x1="48" />
            <line x2="48" y1="-64" y2="-208" x1="48" />
            <arc ex="48" ey="-304" sx="48" sy="-208" r="56" cx="16" cy="-256" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="XLXN_23" name="I0" />
            <blockpin signalname="XLXN_22" name="I1" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_2">
            <blockpin signalname="XLXN_26" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="XLXN_24" name="I2" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_3">
            <blockpin signalname="XLXN_30" name="I0" />
            <blockpin signalname="XLXN_29" name="I1" />
            <blockpin signalname="XLXN_28" name="I2" />
            <blockpin signalname="XLXN_27" name="I3" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="a(3)" name="I0" />
            <blockpin signalname="a(2)" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_7">
            <blockpin name="I0" />
            <blockpin name="I1" />
            <blockpin name="I2" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_8">
            <blockpin name="I0" />
            <blockpin name="I1" />
            <blockpin name="I2" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="or7" name="XLXI_10">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="XLXN_16" name="I1" />
            <blockpin signalname="XLXN_11" name="I2" />
            <blockpin signalname="XLXN_14" name="I3" />
            <blockpin signalname="XLXN_3" name="I4" />
            <blockpin signalname="XLXN_2" name="I5" />
            <blockpin signalname="a(0)" name="I6" />
            <blockpin name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2304" y="1280" name="XLXI_10" orien="R0" />
        <branch name="a(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="704" type="branch" />
            <wire x2="1584" y1="704" y2="704" x1="1568" />
            <wire x2="2304" y1="704" y2="704" x1="1584" />
            <wire x2="2304" y1="704" y2="832" x1="2304" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="2288" y1="864" y2="864" x1="1568" />
            <wire x2="2288" y1="864" y2="896" x1="2288" />
            <wire x2="2304" y1="896" y2="896" x1="2288" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="2304" y1="1968" y2="1968" x1="1568" />
            <wire x2="2304" y1="1216" y2="1968" x1="2304" />
        </branch>
        <instance x="1312" y="960" name="XLXI_5" orien="R0" />
        <instance x="1312" y="1616" name="XLXI_3" orien="R0" />
        <branch name="XLXN_16">
            <wire x2="1840" y1="1456" y2="1456" x1="1568" />
            <wire x2="1840" y1="1152" y2="1456" x1="1840" />
            <wire x2="2304" y1="1152" y2="1152" x1="1840" />
        </branch>
        <instance x="1312" y="1120" name="XLXI_1" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="1920" y1="1024" y2="1024" x1="1568" />
            <wire x2="1920" y1="960" y2="1024" x1="1920" />
            <wire x2="2304" y1="960" y2="960" x1="1920" />
        </branch>
        <instance x="1312" y="1296" name="XLXI_2" orien="R0" />
        <branch name="XLXN_14">
            <wire x2="1936" y1="1168" y2="1168" x1="1568" />
            <wire x2="1936" y1="1024" y2="1168" x1="1936" />
            <wire x2="2304" y1="1024" y2="1024" x1="1936" />
        </branch>
        <instance x="1312" y="1856" name="XLXI_7" orien="R0" />
        <branch name="XLXN_11">
            <wire x2="1920" y1="1728" y2="1728" x1="1568" />
            <wire x2="1920" y1="1088" y2="1728" x1="1920" />
            <wire x2="2304" y1="1088" y2="1088" x1="1920" />
        </branch>
        <instance x="1312" y="2096" name="XLXI_8" orien="R0" />
        <branch name="a(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="832" type="branch" />
            <wire x2="1312" y1="832" y2="832" x1="1216" />
        </branch>
        <branch name="a(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="896" type="branch" />
            <wire x2="1312" y1="896" y2="896" x1="1216" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="1312" y1="992" y2="992" x1="1216" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="1312" y1="1056" y2="1056" x1="1216" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1312" y1="1104" y2="1104" x1="1216" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1312" y1="1168" y2="1168" x1="1216" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1312" y1="1232" y2="1232" x1="1216" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="1312" y1="1360" y2="1360" x1="1216" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="1312" y1="1424" y2="1424" x1="1216" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="1312" y1="1488" y2="1488" x1="1216" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="1312" y1="1552" y2="1552" x1="1216" />
        </branch>
        <branch name="A(3:0)">
            <wire x2="1568" y1="560" y2="560" x1="1264" />
        </branch>
        <iomarker fontsize="28" x="1264" y="560" name="A(3:0)" orien="R180" />
    </sheet>
</drawing>