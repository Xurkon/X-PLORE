local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Northrend_1_75_Jewelcrafting")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Northrend Leveling|r", "Northrend Jewelcrafting (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Dalaran}. Obviously you can use others as you see fit.| |P|813 1|
N Note! |N|Draenei characters have +10 Jewelcrafting skill because of their passive (spell:28875). An extra 10 Jewelcrafting skill means recipes stay orange for 10 more points, so you can save a lot of gold by doing lower level recipes for 10 more points.| |P|813 1|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Train Northrend Jewelcrafting |N|(npc:28701) in {Carlier & Co. Fine Jewelry} (40.39, 35.18)| |Z|125| |NPC|28701| |P|813 1|
N Learn Jewelcrafting Recipes |N|(npc:28701) in {Carlier & Co. Fine Jewelry} (40.39, 35.18)| |Z|125| |NPC|28701| |P|813 2|
B (item:20815) |N|(npc:28721) in {Carlier & Co. Fine Jewelry} (40.46, 34.60)| |Z|125| |NPC|28721| |L|20515| |P|813 2|
B (item:52188) |N|(npc:28721) in {Carlier & Co. Fine Jewelry} (40.46, 34.60)| |Z|125| |NPC|28721| |L|52188| |P|813 2|

N Materials Required |N|Collect materials for level 1-45<br/><b>15 (item:36917)<br/><b>10 (item:36923)<br/><b>10 (item:37701)<br/><b>46 (item:35624)| |P|813 45|
B (item:36917) |N|Buy 15 (item:36917) from the Auction House or use (spell:31252) on (item:36909)| |L|36917 15|
B (item:36923) |N|Buy 10 (item:36923) from the Auction House or use (spell:31252) on (item:36909)| |L|36923 10|
N 1-10 (spell:53831) |JE| |N|Craft 10 (spell:53831)<br/><b>10 (item:36917)| |P|813 10|
N 10-20 (spell:53854) |JE| |N|Craft 10 (spell:53854)<br/><b>10 (item:36923)| |P|813 20|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Jewelcrafting Recipes |N|Speak to (npc:28701) and learn all available jewelcrafting designs in {Carlier & Co. Fine Jewelry} (40.39, 35.18)| |Z|125| |NPC|28701| |P|813 21|
N 20-25 (spell:56193) |JE| |N|Craft 5 (spell:56193)<br/><b>5 (item:36917)<br/><b>10 (item:37701)<br/>You might have to make more than 5| |P|813 25|
N 25-45 (spell:58145) |JE| |N|Craft 23 (spell:58145)<br/><b>46 (item:35624)| |P|813 45|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Jewelcrafting Recipes |N|Speak to (npc:28701) and learn all available jewelcrafting designs in {Carlier & Co. Fine Jewelry} (40.39, 35.18)| |Z|125| |NPC|28701| |P|813 46|
N Materials Required |N|Collect materials for level 45-75<br/><b>15 (item:41266)<br/><b>15 (item:43102)<br/><b>15 (item:36923)<br/><b>15 (item:36926)<br/><b>15 (item:36932)| |P|813 75|
N 45-60 (spell:55394) |JE| |N|Craft 15 (spell:55394)<br/><b>15 (item:41266)| |P|813 60|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Jewelcrafting Recipes |N|Speak to (npc:28701) and learn all available jewelcrafting designs in {Carlier & Co. Fine Jewelry} (40.39, 35.18)| |Z|125| |NPC|28701| |P|813 61|
N 60-75 (spell:66242) |JE| |N|Craft 15 (spell:66242)<br/><b>15 (item:43102)<br/><b>15 (item:36923)<br/><b>15 (item:36926)<br/><b>15 (item:36932)| |P|813 75|

N Guide Complete |N|You reach 75 Northrend Jewelcrafting|

]]
end, {description = [[This guide covers how to level the Northrend Jewelcrafting profession from 1-75.]]})
    end

	function Guide:Unload()
	end
end
