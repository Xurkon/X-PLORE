local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Outland_1_75_Jewelcrafting")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Outland Leveling|r", "Outland Jewelcrafting (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Shattrath City}. Obviously you can use others as you see fit.| |P|815 1|
N Note! |N|Draenei characters have +10 Jewelcrafting skill because of their passive (spell:28875). An extra 10 Jewelcrafting skill means recipes stay orange for 10 more points, so you can save a lot of gold by doing lower level recipes for 10 more points.| |P|815 1|

R Shattrath City |N|Travel to {Shattrath City} (63.94, 41.31)| |Z|111|
N Train Outland Jewelcrafting |N|(npc:33614) in {The Seer's Library} (43.99, 91.07)| |Z|111| |NPC|33614| |P|815 1| |REP|934, 2|
B (item:20815) |N|Buy a (item:20815) from (npc:19244) in {Scryer's Tier} (56.69)| |Z|111| |NPC|19244| |P|815 1| |L|20815| |REP|934, 2|
N Train Outland Jewelcrafting |N|(npc:19063) in {Aldor Rise} (35.89, 20.62)| |Z|111| |NPC|33682| |P|815 1| |REP|932, 2|
B (item:20815) |N|Buy a (item:20815) from (npc:19065) (35.63, 19.77)| |Z|111| |NPC|19065| |P|815 1| |L|20815| |REP|932, 2|

N Materials Required |N|Collect materials for level 1-50<br/><b>35 (item:23077)<br/><b>40 (item:24243)<br/><b>10 (item:22452)<br/><b>5-10 (item:23107)<br/><b>5-10 (item:23117)<br/><b>10 (item:23446)<br/><b>10 (item:31079)| |P|815 50|
N 1-25 (spell:28905) |JE| |N|Craft 30-35 (spell:28905)<br/><b>35 (item:23077)| |P|815 20|

R Shattrath City |N|Travel to {Shattrath City} (63.94, 41.31)| |Z|111|
N Learn Jewelcrafting Recipes |N|Speak to (npc:33614) and learn Jewelcrafting Recipes (43.99, 91.07)| |Z|111| |NPC|33614| |P|815 25| |REP|934, 2|
N Learn Jewelcrafting Recipes |N|Speak to (npc:19063) and learn Jewelcrafting Recipes (35.89, 20.62)| |Z|111| |NPC|19063| |P|815 25| |REP|932, 2|

N (item:24243) |JE| |N|Use your (spell:31252) on 200 (item:24243)| |L|24243 200|
N 25-35 (spell:38068) |JE| |N|Craft 10 (spell:38068)<br/><b>40 (item:24243)<br/><b>10 (item:22452)| |P|815 35|
N 25-35 (spell:28936) |JE| |N|Craft a few of (spell:28936) to level to 35<br/><b>5-10 (item:23107)| |P|815 35| |O|

R Shattrath City |N|Travel to {Shattrath City} (63.94, 41.31)| |Z|111|
N Learn Jewelcrafting Recipes |N|Speak to (npc:33614) and learn Jewelcrafting Recipes (43.99, 91.07)| |Z|111| |NPC|33614| |P|815 35| |REP|934, 2|
N Learn Jewelcrafting Recipes |N|Speak to (npc:19063) and learn Jewelcrafting Recipes (35.89, 20.62)| |Z|111| |NPC|19063| |P|815 35| |REP|932, 2|

N 35-40 (spell:28948) |JE| |N|Craft 5-10 (spell:28948)<br/><b>5-10 (item:23117)| |P|815 40|

R Shattrath City |N|Travel to {Shattrath City} (63.94, 41.31)| |Z|111|
N Learn Jewelcrafting Recipes |N|Speak to (npc:33614) and learn Jewelcrafting Recipes (43.99, 91.07)| |Z|111| |NPC|33614| |P|815 40| |REP|934, 2|
N Learn Jewelcrafting Recipes |N|Speak to (npc:19063) and learn Jewelcrafting Recipes (35.89, 20.62)| |Z|111| |NPC|19063| |P|815 40| |REP|932, 2|

N 40-50 (spell:31052) |JE| |N|Craft 10 (spell:31052)<br/><b>10 (item:23446)<br/><b>10 (item:31079)| |P|815 50|

R Shattrath City |N|Travel to {Shattrath City} (63.94, 41.31)| |Z|111|
N Learn Jewelcrafting Recipes |N|Speak to (npc:33614) and learn Jewelcrafting Recipes (43.99, 91.07)| |Z|111| |NPC|33614| |P|815 50| |REP|934, 2|
N Learn Jewelcrafting Recipes |N|Speak to (npc:19063) and learn Jewelcrafting Recipes (35.89, 20.62)| |Z|111| |NPC|19063| |P|815 50| |REP|932, 2|

N Materials Required |N|Collect materials for level 50-60<br/><b>12 (item:23440)| |P|815 60|
N 50-60 Halaa |N|Halaa is a small town on a plateau in the middle of Nagrand. The faction controlling the town gains access to the NPCs spawned inside Halaa. This means you can't buy the recipes needed if your faction doesn't control Halaa. But since there are usually no one doing PvP in this zone, you can safely turn in War Mode.<br/>Tick this step| |P|815 60|
R Halaa |N|Travel to {Halaa} (42.90, 43.93)| |Z|107|
K (npc:18292) |N|Kill 15 (npc:18292) in {Halaa} (42.53, 43.78)<br/>Tick this step| |Z|107| |NPC|18292| |Alliance|
K (npc:18256) |N|Kill 15 (npc:18256) in {Halaa} (42.53, 43.78)<br/>Tick this step| |Z|107| |NPC|18256| |Horde|
N Take Halaa |N|Stand next to the flag until your faction takes control (42.90, 43.93)| |Z|107|
B (item:24208) |N|Speak to (npc:21485) and buy (item:24208) in {Halaa} (42.88, 42.51)<br/>This recipe is a limited supply recipe, so if someone bought it before you, then you will have to wait for it to respawn. (around 15min)| |Z|107| |NPC|21485| |L|24208| |FAC|Alliance|
B (item:24208) |N|Speak to (npc:21474) and buy (item:24208) in {Halaa} (42.88, 42.51)<br/>This recipe is a limited supply recipe, so if someone bought it before you, then you will have to wait for it to respawn. (around 15min)| |Z|107| |NPC|21474| |L|24208| |FAC|Horde|
N 50-60 (spell:31101) |JE| |N|Craft 12 (spell:31101)<br/><b>12 (item:23440)| |P|815 60|

R Shattrath City |N|Travel to {Shattrath City} (63.94, 41.31)| |Z|111|
N Learn Jewelcrafting Recipes |N|Speak to (npc:33614) and learn Jewelcrafting Recipes (43.99, 91.07)| |Z|111| |NPC|33614| |P|815 60| |REP|934, 2|
N Learn Jewelcrafting Recipes |N|Speak to (npc:19063) and learn Jewelcrafting Recipes (35.89, 20.62)| |Z|111| |NPC|19063| |P|815 60| |REP|932, 2|

N Materials Required |N|Collect materials for level 60-75<br/><b>12 (item:23436)<br/><b>5 (item:25867)| |P|815 75|
N Get Honored with (fac:935) |N|Queue for the following dungeons:<br/><b>{The Botanica} Heroic<br/><b>{The Botanica} Normal| |I| |REP|935, 2|
B (item:33155) |N|(npc:21432) in {Terrace of Light} (51.6, 41.6)| |Z|111| |NPC|21432| |L|33155| |REP|935, 2|
N 60-70 (spell:42588) |JE| |N|Craft 10 (spell:42588)<br/><b>12 (item:23436)| |P|815 70|
B (item:25904) |N|(npc:21432) in {Terrace of Light} (51.6, 41.6)| |Z|111| |NPC|21432| |L|25904| |REP|935, 2|
N 70-75 (spell:32870) |JE| |N|Craft 5 (spell:32870)<br/><b>5 (item:25867)| |P|815 75|

N Guide Complete |N|You have reach level 75 Outland Jewelcrafting|

]]
end, {description = [[This guide covers how to level the Outland Jewelcrafting profession from 1-75.]]})
    end

	function Guide:Unload()
	end
end
