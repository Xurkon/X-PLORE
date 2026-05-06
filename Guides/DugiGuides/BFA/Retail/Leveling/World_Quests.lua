local Guide = DugisGuideViewer:RegisterModule("DugisGuide_BFA_En_Battle_for_Azeroth_World_Quests")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Battle for Azeroth|r", "Battle for Azeroth World Quests", nil, nil, nil, "D", nil, function()
return [[

N Level 50 Required |N|You need to be at least level 50 to continue with the war campaign quest line| |PL|50|

A Uniting Kul Tiras |QID|51918| |N|(npc:135612) on the {Wind's Redemption} (69.59, 27.01)| |Z|1161| |NPC|135612| |FAC|Alliance|
C Uniting Kul Tiras |QID|51918| |N|Complete the leveling guides until you receive friendly status with each faction<br/><b>(guide:"895(10-50)#895(10-50)#895(10-50)")<br/><b>(guide:"896(10-50)#896(10-50)#896(10-50)")<br/><b>(guide:"942(10-50)#942(10-50)#942(10-50)")| |Z|1161| |NPC|135612| |FAC|Alliance|
T Uniting Kul Tiras |QID|51918| |N|(npc:135612) on the {Wind's Redemption} (69.59, 27.01)| |Z|1161| |NPC|135612| |FAC|Alliance|

A Uniting Zandalar |QID|51916| |N|(npc:135691) in {The Banshee's Wail} (58.43, 62.64)| |Z|862| |NPC|135691| |FAC|Horde|
C Uniting Kul Tiras |QID|51916| |N|Complete the leveling guides until you receive friendly status with each faction<br/><b>(guide:"895(10-50)#895(10-50)#895(10-50)")<br/><b>(guide:"896(10-50)#896(10-50)#896(10-50)")<br/><b>(guide:"942(10-50)#942(10-50)#942(10-50)")| |Z|1161| |NPC|135612| |FAC|Horde|
T Uniting Zandalar |QID|51916| |N|(npc:135691) in {The Banshee's Wail} (58.43, 62.64)| |Z|862| |NPC|135691| |FAC|Horde|

N (aid:13144) |AID|13144| |N|Complete 100 different World Quests in:<br/><b>(choice:1:Kul Tiras)<br/><b>(choice:2:Zandalar)| |AC|3|

N Kul Tiras |AID|13144| |N|Find World Quests in {Tiragarde Sound} & {Drustvar} & {Stormsong Valley}| |D| |AC|3| |CHOICE|1|
N Zandalar |AID|13144| |N|Find World Quests in {Zuldazar} & {Nazmir} & {Vol'Dun}| |D| |AC|3| |CHOICE|2|

]]
end, {description = [[This guide will walk you through completing the (aid:13144) achievement]]})
	end

	function Guide:Unload()
	end
end
