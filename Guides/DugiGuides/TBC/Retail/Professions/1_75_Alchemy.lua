local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Outland_1_75_Alchemy")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Outland Leveling|r", "Outland Alchemy (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Shattrath City}. Obviously you can use others as you see fit.| |P|602 1|
N Note! |N|Goblin characters have +15 Alchemy skill because of their passive (spell:69045). An extra 15 Alchemy skill means recipes stay orange for 15 more points. You can save a lot of gold by doing lower level recipes for 15 more points.| |P|602 1|

R Shattrath City |N|Travel to {Shattrath City} (63.94, 41.31)| |Z|111|
N Train Outland Alchemy |N|(npc:19052) (45.79, 21.49)| |Z|111| |P|602 1| |NPC|19052|
B (item:3371) |N|Speak to (npc:19074) and buy 100 (item:3371) (45.96, 20.14)| |Z|111| |L|3371 100|

N Materials Required 1-75 |N|Collect materials for level 1-75<br/><b>14 (item:13464)<br/><b>44 (item:22785)<br/><b>10 (item:13465)<br/><b>80 (item:22786)<br/><b>10 (item:22789)<br/><b>10 (item:22791)<br/><b>40 (item:22792)| |P|602 75|
N 1-15 (item:28100) |AL| |N|<b>14 (item:13464)<br/><b>14 (item:22785)| |P|602 15|
N 15-25 (item:22825) |AL| |N|<b>10 (item:13465)<br/><b>10 (item:22786)| |P|602 25|
N 25-35 (item:32067) |AL| |N|<b>10 (item:22789)<br/><b>10 (item:22785)| |P|602 35|
N 35-40 (item:22829) |AL| |N|<b>10 (item:22791)<br/><b>5 (item:22785)| |P|602 40|

R Telredor |N|Travel to Telredor (67.86, 51.36)| |Z|102| |FAC|Alliance|
B (item:22907) |N|Speak to (npc:18005) and buy (item:22907)(67.86, 51.36)| |Z|102| |NPC|18005| |L|22907| |FAC|Alliance|
R Allerian Stronghold |N|Travel to {Allerian Stronghold} (59.45, 55.20)| |Z|108| |FAC|Alliance|
B (item:22911) |N|Speak to (npc:19042) and buy (item:22911) (57.72, 53.34)| |Z|108| |NPC|19042| |L|22911| |FAC|Alliance|

R Thunderlord Stronghold |N|Travel to {Thunderlord Stronghold} (52.05, 54.14)| |Z|105| |FAC|Horde|
B (item:22907) |N|Speak to (npc:19837) and buy (item:22907) (51.08, 57.68)| |Z|105| |NPC|19837| |L|22907| |FAC|Horde|
B (item:22911) |N|Speak to (npc:19837) and buy (item:22911) (51.08, 57.68)| |Z|105| |NPC|19837| |L|22911| |FAC|Horde|
N 40-55 (item:22832) |AL| |N|<b>30 (item:22786)<br/><b>15 (item:22785)| |P|602 55|
N 55-75 (item:22836) |AL| |N|<b>40 (item:22786)<br/><b>40 (item:22792)| |P|602 75|

N Guide Complete |N|You have reach level 75 Outland Alchemy|

]]
end, {description = [[This guide covers how to level the Outland Alchemy profession from 1-75.]]})
    end

	function Guide:Unload()
	end
end
