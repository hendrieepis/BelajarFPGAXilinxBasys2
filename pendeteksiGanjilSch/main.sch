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
        <signal name="XLXN_8" />
        <signal name="XLXN_14" />
        <signal name="a(1)" />
        <signal name="a(2)" />
        <signal name="a(3:0)" />
        <signal name="a(3)" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="f" />
        <port polarity="Input" name="a(3:0)" />
        <port polarity="Output" name="f" />
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
        <blockdef name="or8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-384" y2="-384" x1="0" />
            <line x2="48" y1="-448" y2="-448" x1="0" />
            <line x2="48" y1="-512" y2="-512" x1="0" />
            <line x2="192" y1="-288" y2="-288" x1="256" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <arc ex="112" ey="-336" sx="192" sy="-288" r="88" cx="116" cy="-248" />
            <line x2="48" y1="-240" y2="-240" x1="112" />
            <arc ex="192" ey="-288" sx="112" sy="-240" r="88" cx="116" cy="-328" />
            <arc ex="48" ey="-336" sx="48" sy="-240" r="56" cx="16" cy="-288" />
            <line x2="48" y1="-336" y2="-336" x1="112" />
            <line x2="48" y1="-336" y2="-512" x1="48" />
            <line x2="48" y1="-64" y2="-240" x1="48" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="a(0)" name="I0" />
            <blockpin signalname="a(2)" name="I1" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_2">
            <blockpin signalname="a(0)" name="I0" />
            <blockpin signalname="a(1)" name="I1" />
            <blockpin signalname="a(2)" name="I2" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="a(0)" name="I0" />
            <blockpin signalname="a(1)" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_8">
            <blockpin signalname="a(0)" name="I0" />
            <blockpin signalname="a(2)" name="I1" />
            <blockpin signalname="a(3)" name="I2" />
            <blockpin signalname="XLXN_62" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_11">
            <blockpin signalname="a(3)" name="I0" />
            <blockpin signalname="a(0)" name="I1" />
            <blockpin signalname="XLXN_60" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_12">
            <blockpin signalname="a(0)" name="I0" />
            <blockpin signalname="a(1)" name="I1" />
            <blockpin signalname="a(3)" name="I2" />
            <blockpin signalname="XLXN_61" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_13">
            <blockpin signalname="a(0)" name="I0" />
            <blockpin signalname="a(2)" name="I1" />
            <blockpin signalname="a(1)" name="I2" />
            <blockpin signalname="a(3)" name="I3" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="or8" name="XLXI_14">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="XLXN_62" name="I1" />
            <blockpin signalname="XLXN_61" name="I2" />
            <blockpin signalname="XLXN_60" name="I3" />
            <blockpin signalname="XLXN_14" name="I4" />
            <blockpin signalname="XLXN_3" name="I5" />
            <blockpin signalname="XLXN_2" name="I6" />
            <blockpin signalname="a(0)" name="I7" />
            <blockpin signalname="f" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="a(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="704" type="branch" />
            <wire x2="1584" y1="704" y2="704" x1="1568" />
            <wire x2="2384" y1="704" y2="704" x1="1584" />
            <wire x2="2384" y1="704" y2="816" x1="2384" />
        </branch>
        <instance x="1312" y="960" name="XLXI_5" orien="R0" />
        <instance x="1312" y="1120" name="XLXI_1" orien="R0" />
        <instance x="1312" y="1296" name="XLXI_2" orien="R0" />
        <branch name="XLXN_14">
            <wire x2="1632" y1="1168" y2="1168" x1="1568" />
            <wire x2="1632" y1="1008" y2="1168" x1="1632" />
            <wire x2="2384" y1="1008" y2="1008" x1="1632" />
        </branch>
        <branch name="a(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="832" type="branch" />
            <wire x2="1312" y1="832" y2="832" x1="1216" />
        </branch>
        <branch name="a(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="896" type="branch" />
            <wire x2="1312" y1="896" y2="896" x1="1216" />
        </branch>
        <branch name="a(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="992" type="branch" />
            <wire x2="1312" y1="992" y2="992" x1="1216" />
        </branch>
        <branch name="a(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="1056" type="branch" />
            <wire x2="1312" y1="1056" y2="1056" x1="1216" />
        </branch>
        <branch name="a(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="1104" type="branch" />
            <wire x2="1232" y1="1104" y2="1104" x1="1216" />
            <wire x2="1312" y1="1104" y2="1104" x1="1232" />
        </branch>
        <branch name="a(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="1168" type="branch" />
            <wire x2="1232" y1="1168" y2="1168" x1="1216" />
            <wire x2="1312" y1="1168" y2="1168" x1="1232" />
        </branch>
        <branch name="a(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="1232" type="branch" />
            <wire x2="1232" y1="1232" y2="1232" x1="1216" />
            <wire x2="1312" y1="1232" y2="1232" x1="1232" />
        </branch>
        <branch name="a(3:0)">
            <wire x2="1568" y1="560" y2="560" x1="1264" />
        </branch>
        <iomarker fontsize="28" x="1264" y="560" name="a(3:0)" orien="R180" />
        <instance x="1312" y="1456" name="XLXI_11" orien="R0" />
        <branch name="a(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="1328" type="branch" />
            <wire x2="1312" y1="1328" y2="1328" x1="1216" />
        </branch>
        <branch name="a(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="1392" type="branch" />
            <wire x2="1248" y1="1392" y2="1392" x1="1216" />
            <wire x2="1312" y1="1392" y2="1392" x1="1248" />
        </branch>
        <branch name="a(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="1552" type="branch" />
            <wire x2="1232" y1="1552" y2="1552" x1="1216" />
            <wire x2="1328" y1="1552" y2="1552" x1="1232" />
        </branch>
        <branch name="a(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="1616" type="branch" />
            <wire x2="1232" y1="1616" y2="1616" x1="1216" />
            <wire x2="1328" y1="1616" y2="1616" x1="1232" />
        </branch>
        <branch name="a(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="1680" type="branch" />
            <wire x2="1232" y1="1680" y2="1680" x1="1216" />
            <wire x2="1328" y1="1680" y2="1680" x1="1232" />
        </branch>
        <instance x="1328" y="1744" name="XLXI_12" orien="R0" />
        <instance x="1344" y="1984" name="XLXI_8" orien="R0" />
        <branch name="a(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="1792" type="branch" />
            <wire x2="1232" y1="1792" y2="1792" x1="1216" />
            <wire x2="1344" y1="1792" y2="1792" x1="1232" />
        </branch>
        <branch name="a(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="1856" type="branch" />
            <wire x2="1344" y1="1856" y2="1856" x1="1216" />
        </branch>
        <branch name="a(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="1920" type="branch" />
            <wire x2="1344" y1="1920" y2="1920" x1="1216" />
        </branch>
        <instance x="1360" y="2304" name="XLXI_13" orien="R0" />
        <branch name="a(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="2048" type="branch" />
            <wire x2="1232" y1="2048" y2="2048" x1="1216" />
            <wire x2="1360" y1="2048" y2="2048" x1="1232" />
        </branch>
        <branch name="a(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="2112" type="branch" />
            <wire x2="1360" y1="2112" y2="2112" x1="1216" />
        </branch>
        <branch name="a(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="2176" type="branch" />
            <wire x2="1248" y1="2176" y2="2176" x1="1216" />
            <wire x2="1360" y1="2176" y2="2176" x1="1248" />
        </branch>
        <branch name="a(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="2240" type="branch" />
            <wire x2="1232" y1="2240" y2="2240" x1="1216" />
            <wire x2="1360" y1="2240" y2="2240" x1="1232" />
        </branch>
        <instance x="2384" y="1328" name="XLXI_14" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="1584" y1="864" y2="864" x1="1568" />
            <wire x2="1584" y1="864" y2="880" x1="1584" />
            <wire x2="2384" y1="880" y2="880" x1="1584" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1584" y1="1024" y2="1024" x1="1568" />
            <wire x2="2384" y1="944" y2="944" x1="1584" />
            <wire x2="1584" y1="944" y2="1024" x1="1584" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="2304" y1="2144" y2="2144" x1="1616" />
            <wire x2="2384" y1="1280" y2="1280" x1="2304" />
            <wire x2="2304" y1="1280" y2="2144" x1="2304" />
            <wire x2="2384" y1="1264" y2="1280" x1="2384" />
        </branch>
        <branch name="XLXN_60">
            <wire x2="1696" y1="1360" y2="1360" x1="1568" />
            <wire x2="1696" y1="1072" y2="1360" x1="1696" />
            <wire x2="2384" y1="1072" y2="1072" x1="1696" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="1984" y1="1616" y2="1616" x1="1584" />
            <wire x2="1984" y1="1136" y2="1616" x1="1984" />
            <wire x2="2384" y1="1136" y2="1136" x1="1984" />
        </branch>
        <branch name="XLXN_62">
            <wire x2="2000" y1="1856" y2="1856" x1="1600" />
            <wire x2="2000" y1="1200" y2="1856" x1="2000" />
            <wire x2="2384" y1="1200" y2="1200" x1="2000" />
        </branch>
        <branch name="f">
            <wire x2="2672" y1="1040" y2="1040" x1="2640" />
        </branch>
        <iomarker fontsize="28" x="2672" y="1040" name="f" orien="R0" />
    </sheet>
</drawing>