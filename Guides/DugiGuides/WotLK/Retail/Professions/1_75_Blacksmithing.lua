local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Northrend_1_75_Blacksmithing")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Northrend Leveling|r", "Northrend Blacksmithing (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Dalaran}. Obviously you can use others as you see fit.| |P|577 1|
N Note! |N|Lightforged Draenei characters have +10 Blacksmithing skill because of their passive (spell:255650). An extra 10 Blacksmithing skill means recipes stay orange for 10 more points, so you can save a lot of gold by doing lower level recipes for 10 more points.| |P|577 1|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Train Northrend Blacksmithing |N|(npc:28694) in {Tanks for Everything} (45.28, 28.02)| |Z|125| |NPC|28694| |P|577 1|
N Learn Blacksmithing Plans |N|Speak to (npc:20124) and learn all available blacksmithing plans in {Tanks for Everything} (45.28, 28.02)| |Z|111| |NPC|28694| |P|577 2|

N Materials Required |N|Gather materials for level 1-45<br/><b>180 (item:36916)<br/><b>175 (item:36913)<br/><b>30 (item:37700)| |P|577 45|
N 1-5 (spell:55835) |BL| |N|Craft 4 (spell:55835)<br/><b>20 (item:36916)| |P|577 5|
N 5-10 (spell:54918) |BL| |N|Craft 5 (spell:54918)<br/><b>35 (item:36916)| |P|577 10|
N 10-15 (spell:54941) |BL| |N|Craft 5 (spell:54941)<br/><b>35 (item:36916)| |P|577 15|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Blacksmithing Plans |N|Speak to (npc:20124) and learn all available blacksmithing plans in {Tanks for Everything} (45.28, 28.02)| |Z|111| |NPC|28694| |P|577 16|
N 15-20 (spell:55204) |BL| |N|Craft 5 (spell:55204)<br/><b>50 (item:36916)| |P|577 20|
N 20-25 (spell:55206) |BL| |N|Craft 5 (spell:55206)<br/><b>35 (item:36913)<br/><b>10 (item:37700)| |P|577 25|
N 25-30 (spell:54949) |BL| |N|Craft 5 (spell:54949)<br/><b>40 (item:36916)| |P|577 30|
N 30-40 (spell:55206) |BL| |N|Craft 10 (spell:52206)<br/>70 (item:36913)<br/><b>20 (item:37700)| |P|577 40|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Blacksmithing Plans |N|Speak to (npc:20124) and learn all available blacksmithing plans in {Tanks for Everything} (45.28, 28.02)| |Z|111| |NPC|28694| |P|577 41|
N 40-45 (spell:55015) |BL| |N|Craft 5 (spell:55015)<br/><b>70 (item:36913)| |P|577 45|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Blacksmithing Plans |N|Speak to (npc:20124) and learn all available blacksmithing plans in {Tanks for Everything} (45.28, 28.02)| |Z|111| |NPC|28694| |P|577 46|
N Materials Required |N|Gather materials for level 45-75<br/><b>546 (item:36913)<br/><b>5 (item:41163)<br/><b>39 (item:35624)| |P|577 75|
N 45-50 (spell:55839) |BL| |N|Craft 5 (spell:55839)<br/><b>10 (item:36913)<br/><b>5 (item:41163)| |P|577 50|
N 50-55 (spell:55301) |BL| |N|Craft 5 (spell:55301)<br/><b>60 (item:36913)<br/><b>5 (item:35624)| |P|577 55|
N 55-70 (spell:55303) |BL| |N|Craft 17 (spell:55303)<br/><b>238 (item:36913)<br/><b>17 (item:35624)| |P|577 70|
N 70-75 (spell:55303) |BL| |N|Craft 17 (spell:55303)<br/><b>238 (item:36913)<br/><b>17 (item:35624)| |P|577 75|

N Guide Complete |N|You reach 75 Northrend Blacksmithing|

]]
end, {description = [[This guide covers how to level the Northrend Blacksmithing profession from 1-75.]]})
    end

	function Guide:Unload()
	end
end
