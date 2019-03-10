<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.3.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="3" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="15" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="15" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="yes" active="yes"/>
<layer number="101" name="Hidden" color="15" fill="1" visible="yes" active="yes"/>
<layer number="102" name="Changes" color="12" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="diy-modules">
<description>&lt;b&gt;DIY Modules for Arduino, Raspberry Pi, CubieBoard etc.&lt;/b&gt;
&lt;br&gt;&lt;br&gt;
The library contains a list of symbols and footprints for popular, cheap and easy-to-use electronic modules.&lt;br&gt;
The modules are intend to work with microprocessor-based platforms such as &lt;a href="http://arduino.cc"&gt;Arduino&lt;/a&gt;, &lt;a href="http://raspberrypi.org/"&gt;Raspberry Pi&lt;/a&gt;, &lt;a href="http://cubieboard.org/"&gt;CubieBoard&lt;/a&gt;, &lt;a href="http://beagleboard.org/"&gt;BeagleBone&lt;/a&gt; and many others. There are many manufacturers of the modules in the world. Almost all of them can be bought on &lt;a href="ebay.com"&gt;ebay.com&lt;/a&gt;.&lt;br&gt;
&lt;br&gt;
By using this library, you can design a PCB for devices created with usage of modules. Even if you do not need to create PCB design, you can also use the library to quickly document your work by drawing schematics of devices built by you.&lt;br&gt;
&lt;br&gt;
The latest version, examples, photos and much more can be found at: &lt;b&gt;&lt;a href="http://diymodules.org/eagle"&gt;diymodules.org/eagle&lt;/a&gt;&lt;/b&gt;&lt;br&gt;&lt;br&gt;
Comments, suggestions and bug reports please send to: &lt;b&gt;&lt;a href="mailto:eagle@diymodules.org"&gt;eagle@diymodules.org&lt;/b&gt;&lt;/a&gt;&lt;br&gt;&lt;br&gt;
&lt;i&gt;Version: 1.8.0 (2017-Jul-02)&lt;/i&gt;&lt;br&gt;
&lt;i&gt;Created by: Miroslaw Brudnowski&lt;/i&gt;&lt;br&gt;&lt;br&gt;
&lt;i&gt;Released under the Creative Commons Attribution 4.0 International License: &lt;a href="http://creativecommons.org/licenses/by/4.0"&gt;http://creativecommons.org/licenses/by/4.0&lt;/a&gt;&lt;/i&gt;
&lt;br&gt;&lt;br&gt;
&lt;center&gt;
&lt;a href="http://diymodules.org/eagle"&gt;&lt;img src="http://www.diymodules.org/img/diymodules-lbr-image.php?v=1.8.0" alt="DIYmodules.org"&gt;&lt;/a&gt;
&lt;/center&gt;</description>
<packages>
<package name="WIRELESS-BLUETOOTH-HC-05">
<description>&lt;b&gt;Bluetooth Transceiver Module&lt;/b&gt; based on &lt;b&gt;HC-05&lt;/b&gt; board</description>
<pad name="2" x="-3.81" y="-17.145" drill="1"/>
<pad name="1" x="-6.35" y="-17.145" drill="1" shape="square"/>
<pad name="3" x="-1.27" y="-17.145" drill="1"/>
<wire x1="-8.255" y1="-18.415" x2="-6.985" y2="-18.415" width="0.127" layer="21"/>
<wire x1="-6.985" y1="-18.415" x2="-5.715" y2="-18.415" width="0.127" layer="21"/>
<wire x1="-5.715" y1="-18.415" x2="-4.445" y2="-18.415" width="0.127" layer="21"/>
<wire x1="-4.445" y1="-18.415" x2="-3.175" y2="-18.415" width="0.127" layer="21"/>
<wire x1="-3.175" y1="-18.415" x2="-1.905" y2="-18.415" width="0.127" layer="21"/>
<wire x1="-1.905" y1="-18.415" x2="-0.635" y2="-18.415" width="0.127" layer="21"/>
<wire x1="-0.635" y1="-18.415" x2="8.255" y2="-18.415" width="0.127" layer="21"/>
<wire x1="8.255" y1="-18.415" x2="8.255" y2="18.415" width="0.127" layer="21"/>
<wire x1="8.255" y1="18.415" x2="6.604" y2="18.415" width="0.127" layer="21"/>
<wire x1="6.604" y1="18.415" x2="-6.604" y2="18.415" width="0.127" layer="21"/>
<wire x1="-6.604" y1="18.415" x2="-8.255" y2="18.415" width="0.127" layer="21"/>
<wire x1="-8.255" y1="18.415" x2="-8.255" y2="-18.415" width="0.127" layer="21"/>
<wire x1="0" y1="-16.51" x2="0.635" y2="-15.875" width="0.127" layer="21"/>
<wire x1="0.635" y1="-15.875" x2="1.905" y2="-15.875" width="0.127" layer="21"/>
<wire x1="1.905" y1="-15.875" x2="2.54" y2="-16.51" width="0.127" layer="21"/>
<wire x1="2.54" y1="-16.51" x2="3.175" y2="-15.875" width="0.127" layer="21"/>
<wire x1="3.175" y1="-15.875" x2="4.445" y2="-15.875" width="0.127" layer="21"/>
<wire x1="4.445" y1="-15.875" x2="5.08" y2="-16.51" width="0.127" layer="21"/>
<wire x1="5.08" y1="-16.51" x2="5.715" y2="-15.875" width="0.127" layer="21"/>
<wire x1="5.715" y1="-15.875" x2="6.985" y2="-15.875" width="0.127" layer="21"/>
<wire x1="7.62" y1="-17.78" x2="6.985" y2="-18.415" width="0.127" layer="21"/>
<wire x1="5.715" y1="-18.415" x2="5.08" y2="-17.78" width="0.127" layer="21"/>
<wire x1="5.08" y1="-17.78" x2="4.445" y2="-18.415" width="0.127" layer="21"/>
<wire x1="3.175" y1="-18.415" x2="2.54" y2="-17.78" width="0.127" layer="21"/>
<wire x1="2.54" y1="-17.78" x2="1.905" y2="-18.415" width="0.127" layer="21"/>
<wire x1="0.635" y1="-18.415" x2="0" y2="-17.78" width="0.127" layer="21"/>
<text x="0" y="19.685" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-19.685" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
<wire x1="7.62" y1="-17.78" x2="7.62" y2="-16.51" width="0.127" layer="21"/>
<wire x1="7.62" y1="-16.51" x2="6.985" y2="-15.875" width="0.127" layer="21"/>
<pad name="4" x="1.27" y="-17.145" drill="1"/>
<pad name="5" x="3.81" y="-17.145" drill="1"/>
<pad name="6" x="6.35" y="-17.145" drill="1"/>
<wire x1="0" y1="-16.51" x2="-0.635" y2="-15.875" width="0.127" layer="21"/>
<wire x1="-0.635" y1="-15.875" x2="-1.905" y2="-15.875" width="0.127" layer="21"/>
<wire x1="-1.905" y1="-15.875" x2="-2.54" y2="-16.51" width="0.127" layer="21"/>
<wire x1="-2.54" y1="-16.51" x2="-3.175" y2="-15.875" width="0.127" layer="21"/>
<wire x1="-3.175" y1="-15.875" x2="-4.445" y2="-15.875" width="0.127" layer="21"/>
<wire x1="-4.445" y1="-15.875" x2="-5.08" y2="-16.51" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-16.51" x2="-5.715" y2="-15.875" width="0.127" layer="21"/>
<wire x1="-5.715" y1="-15.875" x2="-6.985" y2="-15.875" width="0.127" layer="21"/>
<wire x1="-6.985" y1="-15.875" x2="-7.62" y2="-16.51" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-16.51" x2="-7.62" y2="-17.78" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-17.78" x2="-6.985" y2="-18.415" width="0.127" layer="21"/>
<wire x1="-5.715" y1="-18.415" x2="-5.08" y2="-17.78" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-17.78" x2="-4.445" y2="-18.415" width="0.127" layer="21"/>
<wire x1="-3.175" y1="-18.415" x2="-2.54" y2="-17.78" width="0.127" layer="21"/>
<wire x1="-2.54" y1="-17.78" x2="-1.905" y2="-18.415" width="0.127" layer="21"/>
<wire x1="-0.635" y1="-18.415" x2="0" y2="-17.78" width="0.127" layer="21"/>
<wire x1="-6.604" y1="18.415" x2="-6.604" y2="14.605" width="0.127" layer="21"/>
<wire x1="-6.604" y1="14.605" x2="-6.604" y2="-8.255" width="0.127" layer="21"/>
<wire x1="-6.604" y1="-8.255" x2="6.604" y2="-8.255" width="0.127" layer="21"/>
<wire x1="6.604" y1="-8.255" x2="6.604" y2="14.605" width="0.127" layer="21"/>
<text x="-6.35" y="-15.24" size="1.27" layer="21" rot="R90" align="center-left">STATE</text>
<text x="-3.81" y="-15.24" size="1.27" layer="21" rot="R90" align="center-left">RX</text>
<text x="-1.27" y="-15.24" size="1.27" layer="21" rot="R90" align="center-left">TX</text>
<text x="1.27" y="-15.24" size="1.27" layer="21" rot="R90" align="center-left">GND</text>
<text x="3.81" y="-15.24" size="1.27" layer="21" rot="R90" align="center-left">+5V</text>
<text x="6.35" y="-15.24" size="1.27" layer="21" rot="R90" align="center-left">EN</text>
<wire x1="6.604" y1="14.605" x2="6.604" y2="18.415" width="0.127" layer="21"/>
<wire x1="-6.604" y1="14.605" x2="6.604" y2="14.605" width="0.127" layer="21"/>
<text x="0" y="16.51" size="1.524" layer="21" align="center">ANTENNA</text>
</package>
<package name="ARDUINO-NANO-3.0#ISP">
<description>&lt;b&gt;Arduino Nano 3.0&lt;/b&gt;&lt;br&gt;
Footprint with ISP pads</description>
<pad name="J1.1" x="17.78" y="7.62" drill="1" shape="square"/>
<pad name="J1.2" x="15.24" y="7.62" drill="1"/>
<pad name="J1.3" x="12.7" y="7.62" drill="1"/>
<pad name="J1.4" x="10.16" y="7.62" drill="1"/>
<pad name="J1.5" x="7.62" y="7.62" drill="1"/>
<pad name="J1.6" x="5.08" y="7.62" drill="1"/>
<pad name="J1.7" x="2.54" y="7.62" drill="1"/>
<pad name="J1.8" x="0" y="7.62" drill="1"/>
<pad name="J1.9" x="-2.54" y="7.62" drill="1"/>
<pad name="J1.10" x="-5.08" y="7.62" drill="1"/>
<pad name="J1.11" x="-7.62" y="7.62" drill="1"/>
<pad name="J1.12" x="-10.16" y="7.62" drill="1"/>
<wire x1="19.05" y1="8.255" x2="18.415" y2="8.89" width="0.127" layer="21"/>
<wire x1="17.145" y1="8.89" x2="16.51" y2="8.255" width="0.127" layer="21"/>
<wire x1="14.605" y1="8.89" x2="13.97" y2="8.255" width="0.127" layer="21"/>
<wire x1="13.97" y1="8.255" x2="13.335" y2="8.89" width="0.127" layer="21"/>
<wire x1="11.43" y1="8.255" x2="10.795" y2="8.89" width="0.127" layer="21"/>
<wire x1="9.525" y1="8.89" x2="8.89" y2="8.255" width="0.127" layer="21"/>
<wire x1="8.89" y1="8.255" x2="8.255" y2="8.89" width="0.127" layer="21"/>
<wire x1="6.985" y1="8.89" x2="6.35" y2="8.255" width="0.127" layer="21"/>
<wire x1="6.35" y1="8.255" x2="5.715" y2="8.89" width="0.127" layer="21"/>
<wire x1="4.445" y1="8.89" x2="3.81" y2="8.255" width="0.127" layer="21"/>
<wire x1="3.81" y1="8.255" x2="3.175" y2="8.89" width="0.127" layer="21"/>
<wire x1="1.905" y1="8.89" x2="1.27" y2="8.255" width="0.127" layer="21"/>
<wire x1="1.27" y1="8.255" x2="0.635" y2="8.89" width="0.127" layer="21"/>
<wire x1="-0.635" y1="8.89" x2="-1.27" y2="8.255" width="0.127" layer="21"/>
<wire x1="-1.27" y1="8.255" x2="-1.905" y2="8.89" width="0.127" layer="21"/>
<wire x1="-3.175" y1="8.89" x2="-3.81" y2="8.255" width="0.127" layer="21"/>
<wire x1="-5.715" y1="8.89" x2="-6.35" y2="8.255" width="0.127" layer="21"/>
<wire x1="-6.35" y1="8.255" x2="-6.985" y2="8.89" width="0.127" layer="21"/>
<wire x1="-8.255" y1="8.89" x2="-8.89" y2="8.255" width="0.127" layer="21"/>
<wire x1="-8.89" y1="8.255" x2="-9.525" y2="8.89" width="0.127" layer="21"/>
<wire x1="-10.795" y1="8.89" x2="-11.43" y2="8.255" width="0.127" layer="21"/>
<wire x1="-11.43" y1="6.985" x2="-10.795" y2="6.35" width="0.127" layer="21"/>
<wire x1="-10.795" y1="6.35" x2="-9.525" y2="6.35" width="0.127" layer="21"/>
<wire x1="-9.525" y1="6.35" x2="-8.89" y2="6.985" width="0.127" layer="21"/>
<wire x1="-8.89" y1="6.985" x2="-8.255" y2="6.35" width="0.127" layer="21"/>
<wire x1="-8.255" y1="6.35" x2="-6.985" y2="6.35" width="0.127" layer="21"/>
<wire x1="-6.985" y1="6.35" x2="-6.35" y2="6.985" width="0.127" layer="21"/>
<wire x1="-6.35" y1="6.985" x2="-5.715" y2="6.35" width="0.127" layer="21"/>
<wire x1="-5.715" y1="6.35" x2="-4.445" y2="6.35" width="0.127" layer="21"/>
<wire x1="-4.445" y1="6.35" x2="-3.81" y2="6.985" width="0.127" layer="21"/>
<wire x1="-3.81" y1="6.985" x2="-3.175" y2="6.35" width="0.127" layer="21"/>
<wire x1="-3.175" y1="6.35" x2="-1.905" y2="6.35" width="0.127" layer="21"/>
<wire x1="-1.905" y1="6.35" x2="-1.27" y2="6.985" width="0.127" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-0.635" y2="6.35" width="0.127" layer="21"/>
<wire x1="-0.635" y1="6.35" x2="0.635" y2="6.35" width="0.127" layer="21"/>
<wire x1="0.635" y1="6.35" x2="1.27" y2="6.985" width="0.127" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.905" y2="6.35" width="0.127" layer="21"/>
<wire x1="1.905" y1="6.35" x2="3.175" y2="6.35" width="0.127" layer="21"/>
<wire x1="3.175" y1="6.35" x2="3.81" y2="6.985" width="0.127" layer="21"/>
<wire x1="3.81" y1="6.985" x2="4.445" y2="6.35" width="0.127" layer="21"/>
<wire x1="4.445" y1="6.35" x2="5.715" y2="6.35" width="0.127" layer="21"/>
<wire x1="5.715" y1="6.35" x2="6.35" y2="6.985" width="0.127" layer="21"/>
<wire x1="6.35" y1="6.985" x2="6.985" y2="6.35" width="0.127" layer="21"/>
<wire x1="6.985" y1="6.35" x2="8.255" y2="6.35" width="0.127" layer="21"/>
<wire x1="8.255" y1="6.35" x2="8.89" y2="6.985" width="0.127" layer="21"/>
<wire x1="8.89" y1="6.985" x2="9.525" y2="6.35" width="0.127" layer="21"/>
<wire x1="9.525" y1="6.35" x2="10.795" y2="6.35" width="0.127" layer="21"/>
<wire x1="10.795" y1="6.35" x2="11.43" y2="6.985" width="0.127" layer="21"/>
<wire x1="11.43" y1="6.985" x2="12.065" y2="6.35" width="0.127" layer="21"/>
<wire x1="12.065" y1="6.35" x2="13.335" y2="6.35" width="0.127" layer="21"/>
<wire x1="13.335" y1="6.35" x2="13.97" y2="6.985" width="0.127" layer="21"/>
<wire x1="13.97" y1="6.985" x2="14.605" y2="6.35" width="0.127" layer="21"/>
<wire x1="14.605" y1="6.35" x2="15.875" y2="6.35" width="0.127" layer="21"/>
<wire x1="15.875" y1="6.35" x2="16.51" y2="6.985" width="0.127" layer="21"/>
<wire x1="16.51" y1="6.985" x2="17.145" y2="6.35" width="0.127" layer="21"/>
<wire x1="17.145" y1="6.35" x2="18.415" y2="6.35" width="0.127" layer="21"/>
<wire x1="18.415" y1="6.35" x2="19.05" y2="6.985" width="0.127" layer="21"/>
<pad name="J2.1" x="17.78" y="-7.62" drill="1"/>
<pad name="J2.2" x="15.24" y="-7.62" drill="1"/>
<pad name="J2.3" x="12.7" y="-7.62" drill="1"/>
<pad name="J2.4" x="10.16" y="-7.62" drill="1"/>
<pad name="J2.5" x="7.62" y="-7.62" drill="1"/>
<pad name="J2.6" x="5.08" y="-7.62" drill="1"/>
<pad name="J2.8" x="0" y="-7.62" drill="1"/>
<pad name="J2.9" x="-2.54" y="-7.62" drill="1"/>
<pad name="J2.11" x="-7.62" y="-7.62" drill="1"/>
<pad name="J2.12" x="-10.16" y="-7.62" drill="1"/>
<wire x1="19.05" y1="-6.985" x2="18.415" y2="-6.35" width="0.127" layer="21"/>
<wire x1="-10.795" y1="-6.35" x2="-11.43" y2="-6.985" width="0.127" layer="21"/>
<wire x1="18.415" y1="-8.89" x2="19.05" y2="-8.255" width="0.127" layer="21"/>
<wire x1="-10.795" y1="-8.89" x2="-11.43" y2="-8.255" width="0.127" layer="21"/>
<pad name="J2.10" x="-5.08" y="-7.62" drill="1"/>
<pad name="J2.7" x="2.54" y="-7.62" drill="1"/>
<wire x1="21.59" y1="8.89" x2="15.875" y2="8.89" width="0.127" layer="21"/>
<wire x1="15.875" y1="8.89" x2="12.065" y2="8.89" width="0.127" layer="21"/>
<wire x1="12.065" y1="8.89" x2="-4.445" y2="8.89" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-8.89" x2="-8.255" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-8.89" x2="-6.985" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-6.985" y1="-8.89" x2="-5.715" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-5.715" y1="-8.89" x2="-4.445" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-4.445" y1="-8.89" x2="-3.175" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-3.175" y1="-8.89" x2="-1.905" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-1.905" y1="-8.89" x2="-0.635" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-0.635" y1="-8.89" x2="0.635" y2="-8.89" width="0.127" layer="21"/>
<wire x1="0.635" y1="-8.89" x2="1.905" y2="-8.89" width="0.127" layer="21"/>
<wire x1="1.905" y1="-8.89" x2="3.175" y2="-8.89" width="0.127" layer="21"/>
<wire x1="3.175" y1="-8.89" x2="4.445" y2="-8.89" width="0.127" layer="21"/>
<wire x1="4.445" y1="-8.89" x2="5.715" y2="-8.89" width="0.127" layer="21"/>
<wire x1="5.715" y1="-8.89" x2="6.985" y2="-8.89" width="0.127" layer="21"/>
<wire x1="6.985" y1="-8.89" x2="8.255" y2="-8.89" width="0.127" layer="21"/>
<wire x1="8.255" y1="-8.89" x2="9.525" y2="-8.89" width="0.127" layer="21"/>
<wire x1="9.525" y1="-8.89" x2="10.795" y2="-8.89" width="0.127" layer="21"/>
<wire x1="10.795" y1="-8.89" x2="12.065" y2="-8.89" width="0.127" layer="21"/>
<wire x1="12.065" y1="-8.89" x2="13.335" y2="-8.89" width="0.127" layer="21"/>
<wire x1="13.335" y1="-8.89" x2="14.605" y2="-8.89" width="0.127" layer="21"/>
<wire x1="14.605" y1="-8.89" x2="15.875" y2="-8.89" width="0.127" layer="21"/>
<wire x1="15.875" y1="-8.89" x2="17.145" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-3.81" y1="8.255" x2="-4.445" y2="8.89" width="0.127" layer="21"/>
<wire x1="16.51" y1="8.255" x2="15.875" y2="8.89" width="0.127" layer="21"/>
<wire x1="11.43" y1="8.255" x2="12.065" y2="8.89" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-8.89" x2="-8.89" y2="-8.255" width="0.127" layer="21"/>
<wire x1="-8.89" y1="-8.255" x2="-8.255" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-6.985" y1="-8.89" x2="-6.35" y2="-8.255" width="0.127" layer="21"/>
<wire x1="-6.35" y1="-8.255" x2="-5.715" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-4.445" y1="-8.89" x2="-3.81" y2="-8.255" width="0.127" layer="21"/>
<wire x1="-3.81" y1="-8.255" x2="-3.175" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-1.905" y1="-8.89" x2="-1.27" y2="-8.255" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-8.255" x2="-0.635" y2="-8.89" width="0.127" layer="21"/>
<wire x1="0.635" y1="-8.89" x2="1.27" y2="-8.255" width="0.127" layer="21"/>
<wire x1="1.27" y1="-8.255" x2="1.905" y2="-8.89" width="0.127" layer="21"/>
<wire x1="3.175" y1="-8.89" x2="3.81" y2="-8.255" width="0.127" layer="21"/>
<wire x1="3.81" y1="-8.255" x2="4.445" y2="-8.89" width="0.127" layer="21"/>
<wire x1="5.715" y1="-8.89" x2="6.35" y2="-8.255" width="0.127" layer="21"/>
<wire x1="6.35" y1="-8.255" x2="6.985" y2="-8.89" width="0.127" layer="21"/>
<wire x1="8.255" y1="-8.89" x2="8.89" y2="-8.255" width="0.127" layer="21"/>
<wire x1="8.89" y1="-8.255" x2="9.525" y2="-8.89" width="0.127" layer="21"/>
<wire x1="10.795" y1="-8.89" x2="11.43" y2="-8.255" width="0.127" layer="21"/>
<wire x1="11.43" y1="-8.255" x2="12.065" y2="-8.89" width="0.127" layer="21"/>
<wire x1="13.335" y1="-8.89" x2="13.97" y2="-8.255" width="0.127" layer="21"/>
<wire x1="13.97" y1="-8.255" x2="14.605" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-10.795" y1="-6.35" x2="-9.525" y2="-6.35" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-6.35" x2="-8.89" y2="-6.985" width="0.127" layer="21"/>
<wire x1="-8.89" y1="-6.985" x2="-8.255" y2="-6.35" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-6.35" x2="-6.985" y2="-6.35" width="0.127" layer="21"/>
<wire x1="-6.985" y1="-6.35" x2="-6.35" y2="-6.985" width="0.127" layer="21"/>
<wire x1="-6.35" y1="-6.985" x2="-5.715" y2="-6.35" width="0.127" layer="21"/>
<wire x1="-5.715" y1="-6.35" x2="-4.445" y2="-6.35" width="0.127" layer="21"/>
<wire x1="-4.445" y1="-6.35" x2="-3.81" y2="-6.985" width="0.127" layer="21"/>
<wire x1="-3.81" y1="-6.985" x2="-3.175" y2="-6.35" width="0.127" layer="21"/>
<wire x1="-3.175" y1="-6.35" x2="-1.905" y2="-6.35" width="0.127" layer="21"/>
<wire x1="-1.905" y1="-6.35" x2="-1.27" y2="-6.985" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-6.985" x2="-0.635" y2="-6.35" width="0.127" layer="21"/>
<wire x1="-0.635" y1="-6.35" x2="0.635" y2="-6.35" width="0.127" layer="21"/>
<wire x1="0.635" y1="-6.35" x2="1.27" y2="-6.985" width="0.127" layer="21"/>
<wire x1="1.27" y1="-6.985" x2="1.905" y2="-6.35" width="0.127" layer="21"/>
<wire x1="1.905" y1="-6.35" x2="3.175" y2="-6.35" width="0.127" layer="21"/>
<wire x1="3.175" y1="-6.35" x2="3.81" y2="-6.985" width="0.127" layer="21"/>
<wire x1="3.81" y1="-6.985" x2="4.445" y2="-6.35" width="0.127" layer="21"/>
<wire x1="4.445" y1="-6.35" x2="5.715" y2="-6.35" width="0.127" layer="21"/>
<wire x1="5.715" y1="-6.35" x2="6.35" y2="-6.985" width="0.127" layer="21"/>
<wire x1="6.35" y1="-6.985" x2="6.985" y2="-6.35" width="0.127" layer="21"/>
<wire x1="6.985" y1="-6.35" x2="8.255" y2="-6.35" width="0.127" layer="21"/>
<wire x1="8.255" y1="-6.35" x2="8.89" y2="-6.985" width="0.127" layer="21"/>
<wire x1="8.89" y1="-6.985" x2="9.525" y2="-6.35" width="0.127" layer="21"/>
<wire x1="9.525" y1="-6.35" x2="10.795" y2="-6.35" width="0.127" layer="21"/>
<wire x1="10.795" y1="-6.35" x2="11.43" y2="-6.985" width="0.127" layer="21"/>
<wire x1="11.43" y1="-6.985" x2="12.065" y2="-6.35" width="0.127" layer="21"/>
<wire x1="12.065" y1="-6.35" x2="13.335" y2="-6.35" width="0.127" layer="21"/>
<wire x1="13.335" y1="-6.35" x2="13.97" y2="-6.985" width="0.127" layer="21"/>
<wire x1="13.97" y1="-6.985" x2="14.605" y2="-6.35" width="0.127" layer="21"/>
<wire x1="14.605" y1="-6.35" x2="15.875" y2="-6.35" width="0.127" layer="21"/>
<wire x1="15.875" y1="-6.35" x2="16.51" y2="-6.985" width="0.127" layer="21"/>
<wire x1="16.51" y1="-6.985" x2="17.145" y2="-6.35" width="0.127" layer="21"/>
<wire x1="17.145" y1="-6.35" x2="18.415" y2="-6.35" width="0.127" layer="21"/>
<wire x1="17.145" y1="-8.89" x2="16.51" y2="-8.255" width="0.127" layer="21"/>
<wire x1="16.51" y1="-8.255" x2="15.875" y2="-8.89" width="0.127" layer="21"/>
<text x="0" y="10.16" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-10.16" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
<pad name="J1.13" x="-12.7" y="7.62" drill="1"/>
<pad name="J1.14" x="-15.24" y="7.62" drill="1"/>
<pad name="J1.15" x="-17.78" y="7.62" drill="1"/>
<pad name="J2.13" x="-12.7" y="-7.62" drill="1"/>
<pad name="J2.14" x="-15.24" y="-7.62" drill="1"/>
<pad name="J2.15" x="-17.78" y="-7.62" drill="1"/>
<hole x="-20.32" y="7.62" drill="1.651"/>
<hole x="-20.32" y="-7.62" drill="1.651"/>
<hole x="20.32" y="-7.62" drill="1.651"/>
<hole x="20.32" y="7.62" drill="1.651"/>
<wire x1="-4.445" y1="8.89" x2="-12.065" y2="8.89" width="0.127" layer="21"/>
<wire x1="-12.065" y1="8.89" x2="-13.335" y2="8.89" width="0.127" layer="21"/>
<wire x1="-13.335" y1="8.89" x2="-14.605" y2="8.89" width="0.127" layer="21"/>
<wire x1="-14.605" y1="8.89" x2="-15.875" y2="8.89" width="0.127" layer="21"/>
<wire x1="-15.875" y1="8.89" x2="-17.145" y2="8.89" width="0.127" layer="21"/>
<wire x1="-17.145" y1="8.89" x2="-18.415" y2="8.89" width="0.127" layer="21"/>
<wire x1="-18.415" y1="8.89" x2="-21.59" y2="8.89" width="0.127" layer="21"/>
<wire x1="-21.59" y1="8.89" x2="-21.59" y2="3.175" width="0.127" layer="21"/>
<wire x1="-21.59" y1="-3.175" x2="-21.59" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-21.59" y1="-8.89" x2="-18.415" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-18.415" y1="-8.89" x2="-17.145" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-17.145" y1="-8.89" x2="-15.875" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-15.875" y1="-8.89" x2="-14.605" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-14.605" y1="-8.89" x2="-13.335" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-13.335" y1="-8.89" x2="-12.065" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-12.065" y1="-8.89" x2="-9.525" y2="-8.89" width="0.127" layer="21"/>
<wire x1="21.59" y1="8.89" x2="21.59" y2="3.175" width="0.127" layer="21"/>
<wire x1="21.59" y1="3.175" x2="21.59" y2="-3.175" width="0.127" layer="21"/>
<wire x1="21.59" y1="-3.175" x2="21.59" y2="-8.89" width="0.127" layer="21"/>
<wire x1="21.59" y1="-8.89" x2="17.145" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-11.43" y1="8.255" x2="-12.065" y2="8.89" width="0.127" layer="21"/>
<wire x1="-13.335" y1="8.89" x2="-13.97" y2="8.255" width="0.127" layer="21"/>
<wire x1="-13.97" y1="8.255" x2="-14.605" y2="8.89" width="0.127" layer="21"/>
<wire x1="-15.875" y1="8.89" x2="-16.51" y2="8.255" width="0.127" layer="21"/>
<wire x1="-16.51" y1="8.255" x2="-17.145" y2="8.89" width="0.127" layer="21"/>
<wire x1="-18.415" y1="8.89" x2="-19.05" y2="8.255" width="0.127" layer="21"/>
<wire x1="-19.05" y1="8.255" x2="-19.05" y2="6.985" width="0.127" layer="21"/>
<wire x1="-19.05" y1="6.985" x2="-18.415" y2="6.35" width="0.127" layer="21"/>
<wire x1="-18.415" y1="6.35" x2="-17.145" y2="6.35" width="0.127" layer="21"/>
<wire x1="-17.145" y1="6.35" x2="-16.51" y2="6.985" width="0.127" layer="21"/>
<wire x1="-16.51" y1="6.985" x2="-15.875" y2="6.35" width="0.127" layer="21"/>
<wire x1="-15.875" y1="6.35" x2="-14.605" y2="6.35" width="0.127" layer="21"/>
<wire x1="-14.605" y1="6.35" x2="-13.97" y2="6.985" width="0.127" layer="21"/>
<wire x1="-13.97" y1="6.985" x2="-13.335" y2="6.35" width="0.127" layer="21"/>
<wire x1="-13.335" y1="6.35" x2="-12.065" y2="6.35" width="0.127" layer="21"/>
<wire x1="-12.065" y1="6.35" x2="-11.43" y2="6.985" width="0.127" layer="21"/>
<wire x1="19.05" y1="8.255" x2="19.05" y2="6.985" width="0.127" layer="21"/>
<wire x1="19.05" y1="-6.985" x2="19.05" y2="-8.255" width="0.127" layer="21"/>
<wire x1="-11.43" y1="-6.985" x2="-12.065" y2="-6.35" width="0.127" layer="21"/>
<wire x1="-12.065" y1="-6.35" x2="-13.335" y2="-6.35" width="0.127" layer="21"/>
<wire x1="-13.335" y1="-6.35" x2="-13.97" y2="-6.985" width="0.127" layer="21"/>
<wire x1="-13.97" y1="-6.985" x2="-14.605" y2="-6.35" width="0.127" layer="21"/>
<wire x1="-14.605" y1="-6.35" x2="-15.875" y2="-6.35" width="0.127" layer="21"/>
<wire x1="-15.875" y1="-6.35" x2="-16.51" y2="-6.985" width="0.127" layer="21"/>
<wire x1="-16.51" y1="-6.985" x2="-17.145" y2="-6.35" width="0.127" layer="21"/>
<wire x1="-17.145" y1="-6.35" x2="-18.415" y2="-6.35" width="0.127" layer="21"/>
<wire x1="-18.415" y1="-6.35" x2="-19.05" y2="-6.985" width="0.127" layer="21"/>
<wire x1="-19.05" y1="-6.985" x2="-19.05" y2="-8.255" width="0.127" layer="21"/>
<wire x1="-19.05" y1="-8.255" x2="-18.415" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-17.145" y1="-8.89" x2="-16.51" y2="-8.255" width="0.127" layer="21"/>
<wire x1="-16.51" y1="-8.255" x2="-15.875" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-14.605" y1="-8.89" x2="-13.97" y2="-8.255" width="0.127" layer="21"/>
<wire x1="-13.97" y1="-8.255" x2="-13.335" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-12.065" y1="-8.89" x2="-11.43" y2="-8.255" width="0.127" layer="21"/>
<pad name="J4.1" x="20.32" y="-2.54" drill="1" shape="square"/>
<pad name="J4.2" x="17.78" y="-2.54" drill="1"/>
<pad name="J4.3" x="20.32" y="0" drill="1"/>
<pad name="J4.4" x="17.78" y="0" drill="1"/>
<pad name="J4.5" x="20.32" y="2.54" drill="1"/>
<pad name="J4.6" x="17.78" y="2.54" drill="1"/>
<wire x1="21.59" y1="3.175" x2="20.955" y2="3.81" width="0.127" layer="21"/>
<wire x1="20.955" y1="3.81" x2="19.685" y2="3.81" width="0.127" layer="21"/>
<wire x1="19.685" y1="3.81" x2="19.05" y2="3.175" width="0.127" layer="21"/>
<wire x1="19.05" y1="3.175" x2="18.415" y2="3.81" width="0.127" layer="21"/>
<wire x1="18.415" y1="3.81" x2="17.145" y2="3.81" width="0.127" layer="21"/>
<wire x1="17.145" y1="3.81" x2="16.51" y2="3.175" width="0.127" layer="21"/>
<wire x1="16.51" y1="3.175" x2="16.51" y2="1.905" width="0.127" layer="21"/>
<wire x1="16.51" y1="1.905" x2="17.145" y2="1.27" width="0.127" layer="21"/>
<wire x1="17.145" y1="1.27" x2="16.51" y2="0.635" width="0.127" layer="21"/>
<wire x1="16.51" y1="0.635" x2="16.51" y2="-0.635" width="0.127" layer="21"/>
<wire x1="16.51" y1="-0.635" x2="17.145" y2="-1.27" width="0.127" layer="21"/>
<wire x1="17.145" y1="-1.27" x2="16.51" y2="-1.905" width="0.127" layer="21"/>
<wire x1="16.51" y1="-1.905" x2="16.51" y2="-3.175" width="0.127" layer="21"/>
<wire x1="16.51" y1="-3.175" x2="17.145" y2="-3.81" width="0.127" layer="21"/>
<wire x1="17.145" y1="-3.81" x2="18.415" y2="-3.81" width="0.127" layer="21"/>
<wire x1="18.415" y1="-3.81" x2="19.05" y2="-3.175" width="0.127" layer="21"/>
<wire x1="19.05" y1="-3.175" x2="19.685" y2="-3.81" width="0.127" layer="21"/>
<wire x1="19.685" y1="-3.81" x2="20.955" y2="-3.81" width="0.127" layer="21"/>
<wire x1="20.955" y1="-3.81" x2="21.59" y2="-3.175" width="0.127" layer="21"/>
<wire x1="-21.59" y1="3.175" x2="-13.97" y2="3.175" width="0.127" layer="21"/>
<wire x1="-13.97" y1="3.175" x2="-13.97" y2="-3.175" width="0.127" layer="21"/>
<wire x1="-13.97" y1="-3.175" x2="-21.59" y2="-3.175" width="0.127" layer="21"/>
<text x="-17.78" y="0" size="1.778" layer="21" align="center">USB</text>
<wire x1="-21.59" y1="3.175" x2="-22.86" y2="3.175" width="0.127" layer="21"/>
<wire x1="-22.86" y1="3.175" x2="-22.86" y2="-3.175" width="0.127" layer="21"/>
<wire x1="-22.86" y1="-3.175" x2="-21.59" y2="-3.175" width="0.127" layer="21"/>
<wire x1="1.27" y1="-2.54" x2="3.81" y2="-2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="-2.54" x2="3.81" y2="1.27" width="0.127" layer="21"/>
<wire x1="3.81" y1="1.27" x2="1.27" y2="1.27" width="0.127" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="-2.54" width="0.127" layer="21"/>
<circle x="2.54" y="-0.635" radius="0.762" width="0.127" layer="21"/>
<text x="5.08" y="-0.635" size="1.016" layer="21" rot="R90" align="center">RESET</text>
</package>
</packages>
<symbols>
<symbol name="WIRELESS-BLUETOOTH-HC-05">
<description>&lt;b&gt;Bluetooth Transceiver Module&lt;/b&gt; based on &lt;b&gt;HC-05&lt;/b&gt; board</description>
<pin name="STATE" x="-20.32" y="5.08" length="middle"/>
<wire x1="15.24" y1="7.62" x2="15.24" y2="-10.16" width="0.254" layer="94"/>
<wire x1="15.24" y1="-10.16" x2="-15.24" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-10.16" x2="-15.24" y2="7.62" width="0.254" layer="94"/>
<wire x1="-15.24" y1="7.62" x2="15.24" y2="7.62" width="0.254" layer="94"/>
<text x="-15.24" y="12.7" size="1.778" layer="95">&gt;NAME</text>
<text x="-15.24" y="10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="RX" x="-20.32" y="2.54" length="middle"/>
<pin name="TX" x="-20.32" y="0" length="middle"/>
<pin name="GND" x="-20.32" y="-2.54" length="middle" direction="pwr"/>
<pin name="+5V" x="-20.32" y="-5.08" length="middle" direction="pwr"/>
<pin name="EN" x="-20.32" y="-7.62" length="middle"/>
</symbol>
<symbol name="ARDUINO-NANO-3.0#ISP">
<description>&lt;b&gt;Arduino Nano 3.0&lt;/b&gt; with ISP pads</description>
<pin name="D1/TX" x="-20.32" y="17.78" length="middle"/>
<pin name="D0/RX" x="-20.32" y="15.24" length="middle"/>
<pin name="RST.1" x="-20.32" y="12.7" length="middle"/>
<pin name="GND.1" x="-20.32" y="10.16" length="middle" direction="pwr"/>
<pin name="D2" x="-20.32" y="7.62" length="middle"/>
<pin name="D3" x="-20.32" y="5.08" length="middle"/>
<pin name="D4" x="-20.32" y="2.54" length="middle"/>
<pin name="D5" x="-20.32" y="0" length="middle"/>
<pin name="D6" x="-20.32" y="-2.54" length="middle"/>
<pin name="D7" x="-20.32" y="-5.08" length="middle"/>
<pin name="D8" x="-20.32" y="-7.62" length="middle"/>
<pin name="D9" x="-20.32" y="-10.16" length="middle"/>
<pin name="D10" x="-20.32" y="-12.7" length="middle"/>
<pin name="D11/MOSI" x="-20.32" y="-15.24" length="middle"/>
<pin name="D12/MISO" x="-20.32" y="-17.78" length="middle"/>
<pin name="VIN" x="17.78" y="17.78" length="middle" direction="pwr" rot="R180"/>
<pin name="GND.2" x="17.78" y="15.24" length="middle" direction="pwr" rot="R180"/>
<pin name="RST.2" x="17.78" y="12.7" length="middle" rot="R180"/>
<pin name="5V" x="17.78" y="10.16" length="middle" direction="pwr" rot="R180"/>
<pin name="A7" x="17.78" y="7.62" length="middle" rot="R180"/>
<pin name="A6" x="17.78" y="5.08" length="middle" rot="R180"/>
<pin name="A5" x="17.78" y="2.54" length="middle" rot="R180"/>
<pin name="A4" x="17.78" y="0" length="middle" rot="R180"/>
<pin name="A3" x="17.78" y="-2.54" length="middle" rot="R180"/>
<pin name="A2" x="17.78" y="-5.08" length="middle" rot="R180"/>
<pin name="A1" x="17.78" y="-7.62" length="middle" rot="R180"/>
<pin name="A0" x="17.78" y="-10.16" length="middle" rot="R180"/>
<pin name="AREF" x="17.78" y="-12.7" length="middle" rot="R180"/>
<pin name="3V3" x="17.78" y="-15.24" length="middle" direction="pwr" rot="R180"/>
<pin name="D13/SCK" x="17.78" y="-17.78" length="middle" rot="R180"/>
<pin name="ISP_MISO" x="5.08" y="38.1" length="middle" rot="R270"/>
<pin name="ISP_5V" x="2.54" y="38.1" length="middle" rot="R270"/>
<pin name="ISP_SCK" x="0" y="38.1" length="middle" rot="R270"/>
<pin name="ISP_MOSI" x="-2.54" y="38.1" length="middle" rot="R270"/>
<pin name="ISP_RST" x="-5.08" y="38.1" length="middle" rot="R270"/>
<pin name="ISP_GND" x="-7.62" y="38.1" length="middle" rot="R270"/>
<wire x1="-15.24" y1="33.02" x2="12.7" y2="33.02" width="0.254" layer="94"/>
<wire x1="12.7" y1="33.02" x2="12.7" y2="-33.02" width="0.254" layer="94"/>
<wire x1="12.7" y1="-33.02" x2="5.08" y2="-33.02" width="0.254" layer="94"/>
<wire x1="5.08" y1="-33.02" x2="-7.62" y2="-33.02" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-33.02" x2="-15.24" y2="-33.02" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-33.02" x2="-15.24" y2="33.02" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-33.02" x2="-7.62" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-22.86" x2="5.08" y2="-22.86" width="0.254" layer="94"/>
<wire x1="5.08" y1="-22.86" x2="5.08" y2="-33.02" width="0.254" layer="94"/>
<text x="-1.27" y="-27.94" size="2.54" layer="94" align="center">USB</text>
<text x="15.24" y="30.48" size="1.778" layer="95">&gt;NAME</text>
<text x="15.24" y="27.94" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="WIRELESS-BLUETOOTH-HC-05">
<description>&lt;b&gt;Bluetooth Transceiver Module&lt;/b&gt; based on &lt;b&gt;HC-05&lt;/b&gt; board
&lt;p&gt;Tutorial is available here:&lt;br /&gt;
&lt;a href="https://arduino-info.wikispaces.com/BlueTooth-HC05-HC06-Modules-How-To"&gt;https://arduino-info.wikispaces.com/BlueTooth-HC05-HC06-Modules-How-To&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;&lt;b&gt;&lt;a href="http://www.ebay.com/sch/hc-05+module+rs232"&gt;Click here to find device on ebay.com&lt;/a&gt;&lt;/b&gt;&lt;/p&gt;
&lt;p&gt;&lt;img alt="photo" src="http://www.diymodules.org/img/device-photo.php?name=WIRELESS-BLUETOOTH-HC-05"&gt;&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="WIRELESS-BLUETOOTH-HC-05" x="0" y="0"/>
</gates>
<devices>
<device name="" package="WIRELESS-BLUETOOTH-HC-05">
<connects>
<connect gate="G$1" pin="+5V" pad="5"/>
<connect gate="G$1" pin="EN" pad="6"/>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="RX" pad="2"/>
<connect gate="G$1" pin="STATE" pad="1"/>
<connect gate="G$1" pin="TX" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ARDUINO-NANO-3.0#ISP" prefix="M">
<description>&lt;b&gt;Arduino Nano 3.0&lt;/b&gt; (and compatible devices) with ISP pads
&lt;p&gt;More details available here:&lt;br&gt;
&lt;a href="https://www.arduino.cc/en/Main/ArduinoBoardNano"&gt;https://www.arduino.cc/en/Main/ArduinoBoardNano&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;&lt;b&gt;&lt;a href="http://www.ebay.com/sch/arduino+nano"&gt;Click here to find device on ebay.com&lt;/a&gt;&lt;/b&gt;&lt;/p&gt;

&lt;p&gt;&lt;img alt="photo" src="http://www.diymodules.org/img/device-photo.php?name=ARDUINO-NANO-3.0"&gt;&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="ARDUINO-NANO-3.0#ISP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ARDUINO-NANO-3.0#ISP">
<connects>
<connect gate="G$1" pin="3V3" pad="J2.14"/>
<connect gate="G$1" pin="5V" pad="J2.4"/>
<connect gate="G$1" pin="A0" pad="J2.12"/>
<connect gate="G$1" pin="A1" pad="J2.11"/>
<connect gate="G$1" pin="A2" pad="J2.10"/>
<connect gate="G$1" pin="A3" pad="J2.9"/>
<connect gate="G$1" pin="A4" pad="J2.8"/>
<connect gate="G$1" pin="A5" pad="J2.7"/>
<connect gate="G$1" pin="A6" pad="J2.6"/>
<connect gate="G$1" pin="A7" pad="J2.5"/>
<connect gate="G$1" pin="AREF" pad="J2.13"/>
<connect gate="G$1" pin="D0/RX" pad="J1.2"/>
<connect gate="G$1" pin="D1/TX" pad="J1.1"/>
<connect gate="G$1" pin="D10" pad="J1.13"/>
<connect gate="G$1" pin="D11/MOSI" pad="J1.14"/>
<connect gate="G$1" pin="D12/MISO" pad="J1.15"/>
<connect gate="G$1" pin="D13/SCK" pad="J2.15"/>
<connect gate="G$1" pin="D2" pad="J1.5"/>
<connect gate="G$1" pin="D3" pad="J1.6"/>
<connect gate="G$1" pin="D4" pad="J1.7"/>
<connect gate="G$1" pin="D5" pad="J1.8"/>
<connect gate="G$1" pin="D6" pad="J1.9"/>
<connect gate="G$1" pin="D7" pad="J1.10"/>
<connect gate="G$1" pin="D8" pad="J1.11"/>
<connect gate="G$1" pin="D9" pad="J1.12"/>
<connect gate="G$1" pin="GND.1" pad="J1.4"/>
<connect gate="G$1" pin="GND.2" pad="J2.2"/>
<connect gate="G$1" pin="ISP_5V" pad="J4.2"/>
<connect gate="G$1" pin="ISP_GND" pad="J4.6"/>
<connect gate="G$1" pin="ISP_MISO" pad="J4.1"/>
<connect gate="G$1" pin="ISP_MOSI" pad="J4.4"/>
<connect gate="G$1" pin="ISP_RST" pad="J4.5"/>
<connect gate="G$1" pin="ISP_SCK" pad="J4.3"/>
<connect gate="G$1" pin="RST.1" pad="J1.3"/>
<connect gate="G$1" pin="RST.2" pad="J2.3"/>
<connect gate="G$1" pin="VIN" pad="J2.1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ngspice-simulation" urn="urn:adsk.eagle:library:527439">
<description>SPICE compatible library parts</description>
<packages>
</packages>
<symbols>
<symbol name="0" urn="urn:adsk.eagle:symbol:527455/1" library_version="18">
<description>Simulation ground symbol (spice node 0)</description>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="-2.54" y2="0" width="0.1524" layer="94"/>
<pin name="0" x="0" y="0" visible="off" length="point" direction="sup"/>
</symbol>
<symbol name="R" urn="urn:adsk.eagle:symbol:527454/4" library_version="18">
<description>RESISTOR</description>
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-6.35" size="1.778" layer="97">&gt;SPICEMODEL</text>
<text x="-2.54" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="-8.89" size="1.778" layer="97">&gt;SPICEEXTRA</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:527478/1" prefix="X_" library_version="18">
<description>Simulation ground symbol (spice node 0)</description>
<gates>
<gate name="G$1" symbol="0" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="SPICEGROUND" value=""/>
<attribute name="_EXTERNAL_" value=""/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="R" urn="urn:adsk.eagle:component:527474/6" prefix="R" uservalue="yes" library_version="18">
<description>RESISTOR</description>
<gates>
<gate name="G$1" symbol="R" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="R">
<pinmap gate="G$1" pin="1" pinorder="1"/>
<pinmap gate="G$1" pin="2" pinorder="2"/>
</pinmapping>
</spice>
</deviceset>
</devicesets>
</library>
<library name="MAXLIB">
<packages>
<package name="21-0880B">
<smd name="1" x="-1.3462" y="2.4" dx="0.8128" dy="0.3556" layer="1"/>
<smd name="2" x="-1.3462" y="1.6" dx="0.8128" dy="0.3556" layer="1"/>
<smd name="3" x="-1.3462" y="0.8" dx="0.8128" dy="0.3556" layer="1"/>
<smd name="4" x="-1.3462" y="0" dx="0.8128" dy="0.3556" layer="1"/>
<smd name="5" x="-1.3462" y="-0.799996875" dx="0.8128" dy="0.3556" layer="1"/>
<smd name="6" x="-1.3462" y="-1.6" dx="0.8128" dy="0.3556" layer="1"/>
<smd name="7" x="-1.3462" y="-2.4" dx="0.8128" dy="0.3556" layer="1"/>
<smd name="8" x="1.3462" y="-2.4" dx="0.8128" dy="0.3556" layer="1"/>
<smd name="9" x="1.3462" y="-1.6" dx="0.8128" dy="0.3556" layer="1"/>
<smd name="10" x="1.3462" y="-0.8" dx="0.8128" dy="0.3556" layer="1"/>
<smd name="11" x="1.3462" y="0" dx="0.8128" dy="0.3556" layer="1"/>
<smd name="12" x="1.3462" y="0.799996875" dx="0.8128" dy="0.3556" layer="1"/>
<smd name="13" x="1.3462" y="1.6" dx="0.8128" dy="0.3556" layer="1"/>
<smd name="14" x="1.3462" y="2.4" dx="0.8128" dy="0.3556" layer="1"/>
<wire x1="-2.0066" y1="-2.8194" x2="-2.0066" y2="2.8194" width="0.1524" layer="39"/>
<wire x1="-2.0066" y1="2.8194" x2="-1.7018" y2="2.8194" width="0.1524" layer="39"/>
<wire x1="2.0066" y1="2.8194" x2="1.7018" y2="2.8194" width="0.1524" layer="39"/>
<wire x1="2.0066" y1="2.8194" x2="2.0066" y2="-2.8194" width="0.1524" layer="39"/>
<wire x1="2.0066" y1="-2.8194" x2="1.7018" y2="-2.8194" width="0.1524" layer="39"/>
<wire x1="-2.0066" y1="-2.8194" x2="-1.7018" y2="-2.8194" width="0.1524" layer="39"/>
<wire x1="-1.7018" y1="-3.0988" x2="-1.7018" y2="-2.8194" width="0.1524" layer="39"/>
<wire x1="-1.7018" y1="2.8194" x2="-1.7018" y2="3.0988" width="0.1524" layer="39"/>
<wire x1="-1.7018" y1="3.0988" x2="1.7018" y2="3.0988" width="0.1524" layer="39"/>
<wire x1="1.7018" y1="3.0988" x2="1.7018" y2="2.8194" width="0.1524" layer="39"/>
<wire x1="1.7018" y1="-2.8194" x2="1.7018" y2="-3.0988" width="0.1524" layer="39"/>
<wire x1="1.7018" y1="-3.0988" x2="-1.7018" y2="-3.0988" width="0.1524" layer="39"/>
<polygon width="0.1524" layer="39">
<vertex x="-2.0066" y="-2.8318"/>
<vertex x="-2.0066" y="2.8318"/>
<vertex x="-1.7018" y="2.8318"/>
<vertex x="-1.7018" y="3.0988"/>
<vertex x="1.7018" y="3.0988"/>
<vertex x="1.7018" y="2.8318"/>
<vertex x="2.0066" y="2.8318"/>
<vertex x="2.0066" y="-2.8318"/>
<vertex x="1.7018" y="-2.8318"/>
<vertex x="1.7018" y="-3.0988"/>
<vertex x="-1.7018" y="-3.0988"/>
<vertex x="-1.7018" y="-2.8318"/>
</polygon>
<wire x1="-1.5748" y1="-2.9718" x2="1.5748" y2="-2.9718" width="0.1524" layer="21"/>
<wire x1="1.5748" y1="2.9718" x2="-1.5748" y2="2.9718" width="0.1524" layer="21"/>
<wire x1="-2.1844" y1="2.3876" x2="-2.3368" y2="2.3876" width="0.1524" layer="21" curve="-180"/>
<wire x1="-2.3368" y1="2.3876" x2="-2.1844" y2="2.3876" width="0.1524" layer="21" curve="-180"/>
<wire x1="-1.4478" y1="-2.8448" x2="1.4478" y2="-2.8448" width="0.1524" layer="51"/>
<wire x1="1.4478" y1="-2.8448" x2="1.4478" y2="2.8448" width="0.1524" layer="51"/>
<wire x1="1.4478" y1="2.8448" x2="0.3048" y2="2.8448" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="2.8448" x2="-0.3048" y2="2.8448" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="2.8448" x2="-1.4478" y2="2.8448" width="0.1524" layer="51"/>
<wire x1="-1.4478" y1="2.8448" x2="-1.4478" y2="-2.8448" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="2.3876" x2="-1.016" y2="2.3876" width="0.1524" layer="51" curve="-180"/>
<wire x1="-1.016" y1="2.3876" x2="-0.8636" y2="2.3876" width="0.1524" layer="51" curve="-180"/>
<wire x1="0.3048" y1="2.8448" x2="-0.3048" y2="2.8448" width="0.1524" layer="51" curve="-180"/>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.1524" layer="23"/>
<wire x1="0" y1="-0.254" x2="0" y2="0.254" width="0.1524" layer="23"/>
<text x="-3.2766" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="21-0880B-M">
<smd name="1" x="-1.397" y="2.4" dx="0.9144" dy="0.3556" layer="1"/>
<smd name="2" x="-1.397" y="1.6" dx="0.9144" dy="0.3556" layer="1"/>
<smd name="3" x="-1.397" y="0.8" dx="0.9144" dy="0.3556" layer="1"/>
<smd name="4" x="-1.397" y="0" dx="0.9144" dy="0.3556" layer="1"/>
<smd name="5" x="-1.397" y="-0.799996875" dx="0.9144" dy="0.3556" layer="1"/>
<smd name="6" x="-1.397" y="-1.6" dx="0.9144" dy="0.3556" layer="1"/>
<smd name="7" x="-1.397" y="-2.4" dx="0.9144" dy="0.3556" layer="1"/>
<smd name="8" x="1.397" y="-2.4" dx="0.9144" dy="0.3556" layer="1"/>
<smd name="9" x="1.397" y="-1.6" dx="0.9144" dy="0.3556" layer="1"/>
<smd name="10" x="1.397" y="-0.8" dx="0.9144" dy="0.3556" layer="1"/>
<smd name="11" x="1.397" y="0" dx="0.9144" dy="0.3556" layer="1"/>
<smd name="12" x="1.397" y="0.799996875" dx="0.9144" dy="0.3556" layer="1"/>
<smd name="13" x="1.397" y="1.6" dx="0.9144" dy="0.3556" layer="1"/>
<smd name="14" x="1.397" y="2.4" dx="0.9144" dy="0.3556" layer="1"/>
<wire x1="-2.3622" y1="-3.0734" x2="-2.3622" y2="3.0734" width="0.1524" layer="39"/>
<wire x1="-2.3622" y1="3.0734" x2="-1.9558" y2="3.0734" width="0.1524" layer="39"/>
<wire x1="2.3622" y1="3.0734" x2="1.9558" y2="3.0734" width="0.1524" layer="39"/>
<wire x1="2.3622" y1="3.0734" x2="2.3622" y2="-3.0734" width="0.1524" layer="39"/>
<wire x1="2.3622" y1="-3.0734" x2="1.9558" y2="-3.0734" width="0.1524" layer="39"/>
<wire x1="-2.3622" y1="-3.0734" x2="-1.9558" y2="-3.0734" width="0.1524" layer="39"/>
<wire x1="-1.9558" y1="-3.3528" x2="-1.9558" y2="-3.0734" width="0.1524" layer="39"/>
<wire x1="-1.9558" y1="3.0734" x2="-1.9558" y2="3.3528" width="0.1524" layer="39"/>
<wire x1="-1.9558" y1="3.3528" x2="1.9558" y2="3.3528" width="0.1524" layer="39"/>
<wire x1="1.9558" y1="3.3528" x2="1.9558" y2="3.0734" width="0.1524" layer="39"/>
<wire x1="1.9558" y1="-3.0734" x2="1.9558" y2="-3.3528" width="0.1524" layer="39"/>
<wire x1="1.9558" y1="-3.3528" x2="-1.9558" y2="-3.3528" width="0.1524" layer="39"/>
<polygon width="0.1524" layer="39">
<vertex x="-2.3622" y="-3.0858"/>
<vertex x="-2.3622" y="3.0858"/>
<vertex x="-1.9558" y="3.0858"/>
<vertex x="-1.9558" y="3.3528"/>
<vertex x="1.9558" y="3.3528"/>
<vertex x="1.9558" y="3.0858"/>
<vertex x="2.3622" y="3.0858"/>
<vertex x="2.3622" y="-3.0858"/>
<vertex x="1.9558" y="-3.0858"/>
<vertex x="1.9558" y="-3.3528"/>
<vertex x="-1.9558" y="-3.3528"/>
<vertex x="-1.9558" y="-3.0858"/>
</polygon>
<wire x1="-1.5748" y1="-2.9718" x2="1.5748" y2="-2.9718" width="0.1524" layer="21"/>
<wire x1="1.5748" y1="2.9718" x2="-1.5748" y2="2.9718" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="2.3876" x2="-2.4384" y2="2.3876" width="0.1524" layer="21" curve="-180"/>
<wire x1="-2.4384" y1="2.3876" x2="-2.286" y2="2.3876" width="0.1524" layer="21" curve="-180"/>
<wire x1="-1.4478" y1="-2.8448" x2="1.4478" y2="-2.8448" width="0.1524" layer="51"/>
<wire x1="1.4478" y1="-2.8448" x2="1.4478" y2="2.8448" width="0.1524" layer="51"/>
<wire x1="1.4478" y1="2.8448" x2="0.3048" y2="2.8448" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="2.8448" x2="-0.3048" y2="2.8448" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="2.8448" x2="-1.4478" y2="2.8448" width="0.1524" layer="51"/>
<wire x1="-1.4478" y1="2.8448" x2="-1.4478" y2="-2.8448" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="2.3876" x2="-1.016" y2="2.3876" width="0.1524" layer="51" curve="-180"/>
<wire x1="-1.016" y1="2.3876" x2="-0.8636" y2="2.3876" width="0.1524" layer="51" curve="-180"/>
<wire x1="0.3048" y1="2.8448" x2="-0.3048" y2="2.8448" width="0.1524" layer="51" curve="-180"/>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.1524" layer="23"/>
<wire x1="0" y1="-0.254" x2="0" y2="0.254" width="0.1524" layer="23"/>
<text x="-3.2766" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="21-0880B-L">
<smd name="1" x="-1.2954" y="2.4" dx="0.7112" dy="0.3556" layer="1"/>
<smd name="2" x="-1.2954" y="1.6" dx="0.7112" dy="0.3556" layer="1"/>
<smd name="3" x="-1.2954" y="0.8" dx="0.7112" dy="0.3556" layer="1"/>
<smd name="4" x="-1.2954" y="0" dx="0.7112" dy="0.3556" layer="1"/>
<smd name="5" x="-1.2954" y="-0.799996875" dx="0.7112" dy="0.3556" layer="1"/>
<smd name="6" x="-1.2954" y="-1.6" dx="0.7112" dy="0.3556" layer="1"/>
<smd name="7" x="-1.2954" y="-2.4" dx="0.7112" dy="0.3556" layer="1"/>
<smd name="8" x="1.2954" y="-2.4" dx="0.7112" dy="0.3556" layer="1"/>
<smd name="9" x="1.2954" y="-1.6" dx="0.7112" dy="0.3556" layer="1"/>
<smd name="10" x="1.2954" y="-0.8" dx="0.7112" dy="0.3556" layer="1"/>
<smd name="11" x="1.2954" y="0" dx="0.7112" dy="0.3556" layer="1"/>
<smd name="12" x="1.2954" y="0.799996875" dx="0.7112" dy="0.3556" layer="1"/>
<smd name="13" x="1.2954" y="1.6" dx="0.7112" dy="0.3556" layer="1"/>
<smd name="14" x="1.2954" y="2.4" dx="0.7112" dy="0.3556" layer="1"/>
<wire x1="-1.7526" y1="-2.667" x2="-1.7526" y2="2.667" width="0.1524" layer="39"/>
<wire x1="-1.7526" y1="2.667" x2="-1.5494" y2="2.667" width="0.1524" layer="39"/>
<wire x1="1.7526" y1="2.667" x2="1.5494" y2="2.667" width="0.1524" layer="39"/>
<wire x1="1.7526" y1="2.667" x2="1.7526" y2="-2.667" width="0.1524" layer="39"/>
<wire x1="1.7526" y1="-2.667" x2="1.5494" y2="-2.667" width="0.1524" layer="39"/>
<wire x1="-1.7526" y1="-2.667" x2="-1.5494" y2="-2.667" width="0.1524" layer="39"/>
<wire x1="-1.5494" y1="-2.9464" x2="-1.5494" y2="-2.667" width="0.1524" layer="39"/>
<wire x1="-1.5494" y1="2.667" x2="-1.5494" y2="2.9464" width="0.1524" layer="39"/>
<wire x1="-1.5494" y1="2.9464" x2="1.5494" y2="2.9464" width="0.1524" layer="39"/>
<wire x1="1.5494" y1="2.9464" x2="1.5494" y2="2.667" width="0.1524" layer="39"/>
<wire x1="1.5494" y1="-2.667" x2="1.5494" y2="-2.9464" width="0.1524" layer="39"/>
<wire x1="1.5494" y1="-2.9464" x2="-1.5494" y2="-2.9464" width="0.1524" layer="39"/>
<polygon width="0.1524" layer="39">
<vertex x="-1.7526" y="-2.6794"/>
<vertex x="-1.7526" y="2.6794"/>
<vertex x="-1.5494" y="2.6794"/>
<vertex x="-1.5494" y="2.9464"/>
<vertex x="1.5494" y="2.9464"/>
<vertex x="1.5494" y="2.6794"/>
<vertex x="1.7526" y="2.6794"/>
<vertex x="1.7526" y="-2.6794"/>
<vertex x="1.5494" y="-2.6794"/>
<vertex x="1.5494" y="-2.9464"/>
<vertex x="-1.5494" y="-2.9464"/>
<vertex x="-1.5494" y="-2.6794"/>
</polygon>
<wire x1="-1.5748" y1="-2.9718" x2="1.5748" y2="-2.9718" width="0.1524" layer="21"/>
<wire x1="1.5748" y1="2.9718" x2="-1.5748" y2="2.9718" width="0.1524" layer="21"/>
<wire x1="-2.0828" y1="2.3876" x2="-2.2352" y2="2.3876" width="0.1524" layer="21" curve="-180"/>
<wire x1="-2.2352" y1="2.3876" x2="-2.0828" y2="2.3876" width="0.1524" layer="21" curve="-180"/>
<wire x1="-1.4478" y1="-2.8448" x2="1.4478" y2="-2.8448" width="0.1524" layer="51"/>
<wire x1="1.4478" y1="-2.8448" x2="1.4478" y2="2.8448" width="0.1524" layer="51"/>
<wire x1="1.4478" y1="2.8448" x2="0.3048" y2="2.8448" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="2.8448" x2="-0.3048" y2="2.8448" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="2.8448" x2="-1.4478" y2="2.8448" width="0.1524" layer="51"/>
<wire x1="-1.4478" y1="2.8448" x2="-1.4478" y2="-2.8448" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="2.3876" x2="-1.016" y2="2.3876" width="0.1524" layer="51" curve="-180"/>
<wire x1="-1.016" y1="2.3876" x2="-0.8636" y2="2.3876" width="0.1524" layer="51" curve="-180"/>
<wire x1="0.3048" y1="2.8448" x2="-0.3048" y2="2.8448" width="0.1524" layer="51" curve="-180"/>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.1524" layer="23"/>
<wire x1="0" y1="-0.254" x2="0" y2="0.254" width="0.1524" layer="23"/>
<text x="-3.2766" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
</packages>
<symbols>
<symbol name="MAX30102EFD+">
<pin name="N.C._2" x="2.54" y="0" length="middle" direction="nc"/>
<pin name="SCL" x="2.54" y="-5.08" length="middle" direction="in"/>
<pin name="SDA" x="2.54" y="-10.16" length="middle"/>
<pin name="PGND" x="2.54" y="-15.24" length="middle" direction="pwr"/>
<pin name="R_DRV" x="2.54" y="-20.32" length="middle" direction="pas"/>
<pin name="IR_DRV" x="2.54" y="-25.4" length="middle" direction="pas"/>
<pin name="N.C._3" x="2.54" y="-30.48" length="middle" direction="nc"/>
<pin name="N.C._4" x="63.5" y="-30.48" length="middle" direction="nc" rot="R180"/>
<pin name="VLED+_2" x="63.5" y="-25.4" length="middle" direction="pas" rot="R180"/>
<pin name="VLED+" x="63.5" y="-20.32" length="middle" direction="pas" rot="R180"/>
<pin name="VDD" x="63.5" y="-15.24" length="middle" direction="pwr" rot="R180"/>
<pin name="GND" x="63.5" y="-10.16" length="middle" direction="pwr" rot="R180"/>
<pin name="!INT" x="63.5" y="-5.08" length="middle" direction="pas" rot="R180"/>
<pin name="N.C." x="63.5" y="0" length="middle" direction="nc" rot="R180"/>
<wire x1="7.62" y1="10.16" x2="7.62" y2="-40.64" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-40.64" x2="58.42" y2="-40.64" width="0.1524" layer="94"/>
<wire x1="58.42" y1="-40.64" x2="58.42" y2="10.16" width="0.1524" layer="94"/>
<wire x1="58.42" y1="10.16" x2="7.62" y2="10.16" width="0.1524" layer="94"/>
<text x="28.2956" y="19.2786" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="27.6606" y="14.1986" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="MAX30102EFD+" prefix="U">
<gates>
<gate name="A" symbol="MAX30102EFD+" x="0" y="0"/>
</gates>
<devices>
<device name="" package="21-0880B">
<connects>
<connect gate="A" pin="!INT" pad="13"/>
<connect gate="A" pin="GND" pad="12"/>
<connect gate="A" pin="IR_DRV" pad="6"/>
<connect gate="A" pin="N.C." pad="14"/>
<connect gate="A" pin="N.C._2" pad="1"/>
<connect gate="A" pin="N.C._3" pad="7"/>
<connect gate="A" pin="N.C._4" pad="8"/>
<connect gate="A" pin="PGND" pad="4"/>
<connect gate="A" pin="R_DRV" pad="5"/>
<connect gate="A" pin="SCL" pad="2"/>
<connect gate="A" pin="SDA" pad="3"/>
<connect gate="A" pin="VDD" pad="11"/>
<connect gate="A" pin="VLED+" pad="10"/>
<connect gate="A" pin="VLED+_2" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="MAX30102EFD+" constant="no"/>
<attribute name="VENDOR" value="Maxim Integrated Products" constant="no"/>
</technology>
</technologies>
</device>
<device name="21-0880B-M" package="21-0880B-M">
<connects>
<connect gate="A" pin="!INT" pad="13"/>
<connect gate="A" pin="GND" pad="12"/>
<connect gate="A" pin="IR_DRV" pad="6"/>
<connect gate="A" pin="N.C." pad="14"/>
<connect gate="A" pin="N.C._2" pad="1"/>
<connect gate="A" pin="N.C._3" pad="7"/>
<connect gate="A" pin="N.C._4" pad="8"/>
<connect gate="A" pin="PGND" pad="4"/>
<connect gate="A" pin="R_DRV" pad="5"/>
<connect gate="A" pin="SCL" pad="2"/>
<connect gate="A" pin="SDA" pad="3"/>
<connect gate="A" pin="VDD" pad="11"/>
<connect gate="A" pin="VLED+" pad="10"/>
<connect gate="A" pin="VLED+_2" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="MAX30102EFD+" constant="no"/>
<attribute name="VENDOR" value="Maxim Integrated Products" constant="no"/>
</technology>
</technologies>
</device>
<device name="21-0880B-L" package="21-0880B-L">
<connects>
<connect gate="A" pin="!INT" pad="13"/>
<connect gate="A" pin="GND" pad="12"/>
<connect gate="A" pin="IR_DRV" pad="6"/>
<connect gate="A" pin="N.C." pad="14"/>
<connect gate="A" pin="N.C._2" pad="1"/>
<connect gate="A" pin="N.C._3" pad="7"/>
<connect gate="A" pin="N.C._4" pad="8"/>
<connect gate="A" pin="PGND" pad="4"/>
<connect gate="A" pin="R_DRV" pad="5"/>
<connect gate="A" pin="SCL" pad="2"/>
<connect gate="A" pin="SDA" pad="3"/>
<connect gate="A" pin="VDD" pad="11"/>
<connect gate="A" pin="VLED+" pad="10"/>
<connect gate="A" pin="VLED+_2" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="MAX30102EFD+" constant="no"/>
<attribute name="VENDOR" value="Maxim Integrated Products" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="docu-dummy" urn="urn:adsk.eagle:library:215">
<description>Dummy symbols</description>
<packages>
</packages>
<symbols>
<symbol name="RESISTOR" urn="urn:adsk.eagle:symbol:13162/1" library_version="2">
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0" x2="-2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="5.08" y2="0" width="0.1524" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="R" urn="urn:adsk.eagle:component:13171/1" prefix="R" library_version="2">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="VDD" urn="urn:adsk.eagle:symbol:26943/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.27" y1="-1.905" x2="0" y2="1.27" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VDD" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VDD" urn="urn:adsk.eagle:component:26970/1" prefix="VDD" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VDD" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="diy-modules" deviceset="WIRELESS-BLUETOOTH-HC-05" device=""/>
<part name="M1" library="diy-modules" deviceset="ARDUINO-NANO-3.0#ISP" device=""/>
<part name="GND" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="1K" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="R" device=""/>
<part name="2K" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="R" device=""/>
<part name="SENSOR" library="MAXLIB" deviceset="MAX30102EFD+" device="21-0880B-L"/>
<part name="X_1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="X_2" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="X_3" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="R1K" library="docu-dummy" library_urn="urn:adsk.eagle:library:215" deviceset="R" device=""/>
<part name="R0.5K" library="docu-dummy" library_urn="urn:adsk.eagle:library:215" deviceset="R" device=""/>
<part name="X_4" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="R1" library="docu-dummy" library_urn="urn:adsk.eagle:library:215" deviceset="R" device=""/>
<part name="VDD1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="147.32" y="76.2" smashed="yes">
<attribute name="NAME" x="132.08" y="88.9" size="1.778" layer="95"/>
<attribute name="VALUE" x="132.08" y="86.36" size="1.778" layer="96"/>
</instance>
<instance part="M1" gate="G$1" x="17.78" y="73.66" smashed="yes" rot="R270">
<attribute name="NAME" x="48.26" y="58.42" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="45.72" y="58.42" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="GND" gate="G$1" x="111.76" y="53.34" smashed="yes"/>
<instance part="1K" gate="G$1" x="78.74" y="101.6" smashed="yes">
<attribute name="NAME" x="76.2" y="104.14" size="1.778" layer="95"/>
<attribute name="VALUE" x="76.2" y="97.79" size="1.778" layer="96"/>
</instance>
<instance part="2K" gate="G$1" x="86.36" y="81.28" smashed="yes" rot="R270">
<attribute name="NAME" x="88.9" y="83.82" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="82.55" y="83.82" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="SENSOR" gate="A" x="111.76" y="152.4" smashed="yes">
<attribute name="NAME" x="140.0556" y="171.6786" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="139.4206" y="166.5986" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="X_1" gate="G$1" x="200.66" y="104.14" smashed="yes"/>
<instance part="X_2" gate="G$1" x="33.02" y="35.56" smashed="yes"/>
<instance part="X_3" gate="G$1" x="99.06" y="124.46" smashed="yes"/>
<instance part="R1K" gate="G$1" x="198.12" y="25.4" smashed="yes" rot="R180"/>
<instance part="R0.5K" gate="G$1" x="223.52" y="15.24" smashed="yes" rot="R90"/>
<instance part="X_4" gate="G$1" x="223.52" y="0" smashed="yes"/>
<instance part="R1" gate="G$1" x="210.82" y="162.56" smashed="yes" rot="R270"/>
<instance part="VDD1" gate="G$1" x="210.82" y="187.96" smashed="yes">
<attribute name="VALUE" x="208.28" y="185.42" size="1.778" layer="96" rot="R90"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="0" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GND"/>
<pinref part="GND" gate="G$1" pin="0"/>
<wire x1="127" y1="73.66" x2="111.76" y2="73.66" width="0.1524" layer="91"/>
<wire x1="111.76" y1="73.66" x2="111.76" y2="53.34" width="0.1524" layer="91"/>
<pinref part="2K" gate="G$1" pin="2"/>
<wire x1="86.36" y1="76.2" x2="86.36" y2="73.66" width="0.1524" layer="91"/>
<wire x1="86.36" y1="73.66" x2="111.76" y2="73.66" width="0.1524" layer="91"/>
<junction x="111.76" y="73.66"/>
</segment>
<segment>
<pinref part="SENSOR" gate="A" pin="GND"/>
<wire x1="175.26" y1="142.24" x2="200.66" y2="142.24" width="0.1524" layer="91"/>
<pinref part="X_1" gate="G$1" pin="0"/>
<wire x1="200.66" y1="142.24" x2="200.66" y2="104.14" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="M1" gate="G$1" pin="GND.2"/>
<wire x1="33.02" y1="55.88" x2="33.02" y2="35.56" width="0.1524" layer="91"/>
<pinref part="X_2" gate="G$1" pin="0"/>
</segment>
<segment>
<pinref part="SENSOR" gate="A" pin="PGND"/>
<wire x1="114.3" y1="137.16" x2="99.06" y2="137.16" width="0.1524" layer="91"/>
<wire x1="99.06" y1="137.16" x2="99.06" y2="124.46" width="0.1524" layer="91"/>
<pinref part="X_3" gate="G$1" pin="0"/>
</segment>
<segment>
<pinref part="X_4" gate="G$1" pin="0"/>
<wire x1="223.52" y1="10.16" x2="223.52" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="TX"/>
<wire x1="127" y1="76.2" x2="111.76" y2="76.2" width="0.1524" layer="91"/>
<wire x1="111.76" y1="76.2" x2="111.76" y2="104.14" width="0.1524" layer="91"/>
<pinref part="M1" gate="G$1" pin="D0/RX"/>
<wire x1="111.76" y1="104.14" x2="33.02" y2="104.14" width="0.1524" layer="91"/>
<wire x1="33.02" y1="104.14" x2="33.02" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="1K" gate="G$1" pin="1"/>
<wire x1="73.66" y1="101.6" x2="35.56" y2="101.6" width="0.1524" layer="91"/>
<pinref part="M1" gate="G$1" pin="D1/TX"/>
<wire x1="35.56" y1="101.6" x2="35.56" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="SENSOR" gate="A" pin="SDA"/>
<wire x1="114.3" y1="142.24" x2="-27.94" y2="142.24" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="142.24" x2="-27.94" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="43.18" x2="17.78" y2="43.18" width="0.1524" layer="91"/>
<pinref part="M1" gate="G$1" pin="A4"/>
<wire x1="17.78" y1="43.18" x2="17.78" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="SENSOR" gate="A" pin="SCL"/>
<wire x1="114.3" y1="147.32" x2="-33.02" y2="147.32" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="147.32" x2="-33.02" y2="38.1" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="38.1" x2="20.32" y2="38.1" width="0.1524" layer="91"/>
<pinref part="M1" gate="G$1" pin="A5"/>
<wire x1="20.32" y1="38.1" x2="20.32" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="M1" gate="G$1" pin="5V"/>
<wire x1="27.94" y1="55.88" x2="27.94" y2="25.4" width="0.1524" layer="91"/>
<wire x1="27.94" y1="25.4" x2="121.92" y2="25.4" width="0.1524" layer="91"/>
<wire x1="121.92" y1="25.4" x2="121.92" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="+5V"/>
<wire x1="121.92" y1="71.12" x2="127" y2="71.12" width="0.1524" layer="91"/>
<wire x1="193.04" y1="25.4" x2="121.92" y2="25.4" width="0.1524" layer="91"/>
<junction x="121.92" y="25.4"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="M1" gate="G$1" pin="3V3"/>
<wire x1="2.54" y1="55.88" x2="2.54" y2="20.32" width="0.1524" layer="91"/>
<wire x1="2.54" y1="20.32" x2="187.96" y2="20.32" width="0.1524" layer="91"/>
<pinref part="SENSOR" gate="A" pin="VLED+"/>
<wire x1="187.96" y1="20.32" x2="187.96" y2="127" width="0.1524" layer="91"/>
<wire x1="187.96" y1="127" x2="187.96" y2="132.08" width="0.1524" layer="91"/>
<wire x1="187.96" y1="132.08" x2="175.26" y2="132.08" width="0.1524" layer="91"/>
<pinref part="SENSOR" gate="A" pin="VLED+_2"/>
<wire x1="175.26" y1="127" x2="187.96" y2="127" width="0.1524" layer="91"/>
<junction x="187.96" y="127"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="SENSOR" gate="A" pin="VDD"/>
<wire x1="223.52" y1="137.16" x2="175.26" y2="137.16" width="0.1524" layer="91"/>
<wire x1="223.52" y1="20.32" x2="223.52" y2="25.4" width="0.1524" layer="91"/>
<wire x1="223.52" y1="25.4" x2="223.52" y2="137.16" width="0.1524" layer="91"/>
<wire x1="203.2" y1="25.4" x2="223.52" y2="25.4" width="0.1524" layer="91"/>
<junction x="223.52" y="25.4"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="1K" gate="G$1" pin="2"/>
<wire x1="86.36" y1="101.6" x2="83.82" y2="101.6" width="0.1524" layer="91"/>
<pinref part="2K" gate="G$1" pin="1"/>
<wire x1="86.36" y1="86.36" x2="86.36" y2="101.6" width="0.1524" layer="91"/>
<wire x1="86.36" y1="101.6" x2="93.98" y2="101.6" width="0.1524" layer="91"/>
<junction x="86.36" y="101.6"/>
<pinref part="U$1" gate="G$1" pin="RX"/>
<wire x1="93.98" y1="101.6" x2="93.98" y2="78.74" width="0.1524" layer="91"/>
<wire x1="93.98" y1="78.74" x2="127" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="SENSOR" gate="A" pin="!INT"/>
<wire x1="175.26" y1="147.32" x2="210.82" y2="147.32" width="0.1524" layer="91"/>
<wire x1="210.82" y1="147.32" x2="210.82" y2="157.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VDD" class="0">
<segment>
<pinref part="VDD1" gate="G$1" pin="VDD"/>
<wire x1="210.82" y1="167.64" x2="210.82" y2="185.42" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.4" severity="warning">
Since Version 8.4, EAGLE supports properties for SPICE simulation. 
Probes in schematics and SPICE mapping objects found in parts and library devices
will not be understood with this version. Update EAGLE to the latest version
for full support of SPICE simulation. 
</note>
</compatibility>
</eagle>
