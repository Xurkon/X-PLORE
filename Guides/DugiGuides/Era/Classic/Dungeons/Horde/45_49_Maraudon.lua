local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Horde_En_45_49_Maraudon")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dungeons Azeroth|r", "Maraudon (45-49)", "Sunken Temple (48-52)", "Horde", nil, "I", nil, function()
return [[

N Level 45 Required |N|You will need to be at least level 45 to pick up the following quests| |QID|7068| |PL|45|

R Orgrimmar |QID|7068| |N|Travel to Orgimmar (39, 85.9)| |Z|1454|
A Shadowshard Fragments |QID|7068| |N|(npc:7311) in {Orgrimmar} (39, 85.9)| |Z|1454| |NPC|7311|

R Shadowprey Village |QID|7029| |N|Travel to {Shadowprey Village} (24.1, 68.4)| |Z|1443|
h Shadowprey Village|QID|7029| |N|(npc:11106) in {Shadowprey Village} (24.1, 68.4)| |Z|1443| |NPC|11106|
A Vyletongue Corruption |QID|7029| |N|(npc:11823) in {Shadowprey Village} (23.2, 70.2)| |Z|1443|
A Corruption of Earth and Seed |QID|7064| |N|(npc:13699) in {Shadowprey Village} (26.9, 77.7)| |Z|1443|
A The Pariah's Instructions |QID|7067| |N|(npc:13717) in {Desolace} (43.4, 84.8), (50.5, 86.6)| |Z|1443| |LOOP| |NPC|13717|
A Twisted Evils |QID|7028| |N|(npc:13656) in {Desolace} (62.2, 39.6)| |Z|1443| |NPC|13656|

R Mauradon  |QID|7067| |N|Travel to Mauradon cave area (29.7, 62.5)| |Z|1443| |QID|7044|
K (npc:13718) |QID|7067| |N|Kill The (npc:13718) and collect (item:17757) he's a level 41-43 elite, you should be able to solo him at level 45 (28.15, 64.20) (28.5, 63) | |Z|1443| |L|17757| |DMAP|Maraudon_Preinstance_H| |NPC|13718|
K (npc:12240) |QID|7067| |N|Use (item:17757) on the (npc:12240) then kill it and get (item:17761) (29.67, 60.49)| |U|17757| |L|17761| |Z|1443| |DMAP|Maraudon_Preinstance_H| |NPC|12240|
K (npc:12239) |QID|7067| |N|Use (item:17757) on the (npc:12239) then kill it and get (item:17762) (28.7, 57.67)| |U|17757| |L|17762| |Z|1443| |DMAP|Maraudon_Preinstance_H| |NPC|12239|
C Shadowshard Fragments |QID|7068| |N|Kill Shadowshard mobs and collect 10 (item:17756) (26.73, 57.3)| |Z|1443| |W| |DMAP|Maraudon_Preinstance_H| |NPC|11778, 11777|
A Legends of Maraudon |QID|7044| |N|(npc:13697) in {Mauradon} (32, 63.8)<br/><br/>Head back out towards the entrance and stick to the right side and follow the orange stone area to find| |Z|1443| |DMAP|Maraudon_Preinstance_H| |NPC|13697|
N (item:17763) |QID|7029| |N|Use the (item:17693) in the orange pool to get (item:17763) (33.1, 65.7)| |Z|1443| |U|17693| |L|17763| |DMAP|Maraudon_Preinstance_H|
K (npc:12241) |QID|7067| |N|Use (item:17757) on the (npc:12241) then kill it and get (item:17763) (35.14, 60.13)| |Z|1443| |U|17757| |L|17763| |DMAP|Maraudon_Preinstance_H| |NPC|12241|

R Maraudon |QID|7046| |N|Zone into Maraudon - Purple Crystals entrance| |I| |DMAP|Maraudon_Preinstance_H|
K (npc:12242) |QID|7067| |N|Use (item:17757) on the (npc:12242) in the Purple Crystal area then kill it and get (item:17764)| |U|17757| |L|17764| |DMAP|Maraudon_H| |NPC|12242|
K (npc:12236) |QID|7044| |N|Kill (npc:12236) and get (item:17703)| |L|17703| |DMAP|Maraudon_H| |NPC|12236|

K (npc:12243) |QID|7067| |N|Use (item:17757) on the (npc:12243) in the Orange Crystal area then kill it and get (item:17765)| |U|17757| |L|17765| |DMAP|Maraudon_H| |NPC|12243|
C The Pariah's Instructions |QID|7067| |N|Use (item:17765) to combine all the gems to create (item:17758)| |U|17765| |DMAP|Maraudon_H|
C Vyletongue Corruption |QID|7029| |N|Heal 8 vines are located inside the instance. Use the (item:17696) on the wines Two or three (npc:13696) spawns and you need to kill 8 of these in total to complete the quest| |U|17696| |DMAP|Maraudon_H| |NPC|13696|
K (npc:13282) |QID|7044| |N|Kill (npc:13282) and get (item:17702)| |L|17702| |DMAP|Maraudon_H| |NPC|13282|
T Legends of Maraudon |QID|7044| |N|(npc:13716) in {Mauradon}<br/><br/>Kill (npc:12225) at the poison falls and (npc:13716) will appear for you to turn in the quest| |DMAP|Maraudon_H| |NPC|12225, 13716|
A The Scepter of Celebras |QID|7046| |N|(npc:13716) in {Mauradon}| |DMAP|Maraudon_H| |NPC|13716|
C The Scepter of Celebras |QID|7046| |N|Defend (npc:13716) in {Mauradon} and talk to him once the ritual is over| |DMAP|Maraudon_H| |NPC|13716|
T The Scepter of Celebras |QID|7046||N|(npc:13716) in {Mauradon}| |DMAP|Maraudon_H| |NPC|13716|

R Shadowprey Village |TID|7028| | |N|Travel to {Shadowprey Village} (23.2, 70.2)| |Z|1443|
T Vyletongue Corruption |QID|7029| |N|(npc:11823) in {Shadowprey Village} (23.2, 70.2)| |Z|1443| |NPC|11823|
T The Pariah's Instructions |QID|7067| |N|(npc:13717) in {Desolace} (43.4, 84.8), (50.5, 86.6)| |Z|1443| |LOOP| |NPC|13717|
T Twisted Evils |QID|7028| |N|(npc:13656) in {Desolace} (62.2, 39.6)| |Z|1443| |NPC|13656|

R Maraudon - Inner |QID|7064| |N|Zone into inner Maraudon, tick this step| |I| |QID|7066| |DMAP|Maraudon_Preinstance_H|
C Corruption of Earth and Seed |QID|7064| |N|Kill (npc:12201) the final boss in Maraudon Inner| |NPC|12201|
A Seed of Life  |QID|7066| |N|(npc:12238) he appears after you kill the Princess| |NPC|12238|

R Shadowprey Village |TID|7064| |N|Travel to {Shadowprey Village} (26.9, 77.7)| |Z|1443| 
T Corruption of Earth and Seed |QID|7064| |N|(npc:13699) in {Shadowprey Village} (26.9, 77.7)| |Z|1443|

R Orgrimmar |TID|7068| |N|Travel to {Orgrimmar} (39, 85.9| |Z|1454|
T Shadowshard Fragments |QID|7068| |N|(npc:7311) in {Orgrimmar} (39, 85.9| |Z|1454|

R Moonglade |TID|7066| |N|Travel to Moonglade (36.5, 42.1)| |Z|1450|
T Seed of Life |QID|7066| |N|(npc:11832) in {Moonglade} (36.5, 42.1)| |Z|1450| |NPC|11832|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end