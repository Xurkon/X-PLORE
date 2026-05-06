local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Events_En_Childrens_Quests_H")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Children's Week|r ", "Children's Week Quests", nil, "Horde", nil, "E", "|SG|DugisGuideViewer.SuggestCurrentHolidayPredicate([[Calendar_ChildrensWeek]])|", function() 
return [[

A Children's Week |QID|172| |N|(npc:14451) in {Orgrimmar} (70.72,25.20)| |Z|1454| |NPC|14451|
T Children's Week |QID|172| |N|Use (item:18597) to summon (npc:14444) in {Orgrimmar}| |PPOS| |U|18597| |NPC|14451|
A Lordaeron Throne Room |QID|1800| |N|(npc:14444) in {Orgrimmar}| |PPOS| |U|18597| |NPC|14451|
A Down at the Docks |QID|910| |N|(npc:14444) in {Orgrimmar}| |PPOS| |U|18597| |NPC|14451|
A Gateway to the Frontier |QID|911| |N|(npc:14444) in {Orgrimmar}| |PPOS| |U|18597| |NPC|14451|

C Down at the Docks |QID|910.1| |N|Go to the Docks of Ratchet and use (item:18597) to summon (npc:14444) in {The Barrens} (62.99,38.08)| |Z|1413| |U|18597| |NPC|14451|
C Gateway to the Frontier |QID|911.1| |N|Go to the Mor'shan Rampart and use (item:18597) to summon (npc:14444) in {The Barrens} (47.84,5.25)| |Z|1413| |U|18597| |NPC|14451|
C Lordaeron Throne Room |QID|1800.1| |N|Go to the Old Lordaeron Throne Room and use (item:18597) to summon (npc:14444) in {Undercity} (66.02,36.82)| |Z|1458| |U|18597| |NPC|14451|

T Lordaeron Throne Room |QID|1800| |N|Use (item:18597) to summon (npc:14444)| |PPOS| |U|18597|
T Down at the Docks |QID|910| |N|Use (item:18597) to summon (npc:14444)| |PPOS| |U|18597|
T Gateway to the Frontier |QID|911| |N|Use (item:18597) to summon (npc:14444)| |PPOS| |U|18597|
A You Scream, I Scream... |QID|915| |N|Use (item:18597) to summon (npc:14444)| |PPOS| |U|18597|
A Cairne's Hoofprint |QID|925| |N|Use (item:18597) to summon (npc:14444)| |PPOS| |U|18597|

B (item:7228) |QID|915| |N|Speak to (npc:14480) and buy (item:7228) in {Orgrimmar} (52.23,69.06)| |Z|1454| |NPC|14480|
C Cairne's Hoofprint |QID|925| |N|Speak to (npc:3057) to cllect Cairne's Hoofprint in {Thunder Bluff} (60.26,51.69)| |Z|1456| |NPC|3057|

T You Scream, I Scream... |QID|915| |N|Use (item:18597) to summon (npc:14444)| |PPOS| |U|18597|
T Cairne's Hoofprint |QID|925| |N|Use (item:18597) to summon (npc:14444)| |PPOS| |U|18597|
A A Warden of the Horde |QID|5502| |N|Use (item:18597) to summon (npc:14444)| |PPOS| |U|18597|
T A Warden of the Horde |QID|5502| |N|(npc:14451) in {Orgrimmar} (70.72,25.20)| |Z|1454| |NPC|14451|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end
