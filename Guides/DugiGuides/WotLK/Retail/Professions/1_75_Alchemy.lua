local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Northrend_1_75_Alchemy")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Northrend Leveling|r", "Northrend Alchemy (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Dalaran}. Obviously you can use others as you see fit.| |P|600 1|
N Note! |N|Goblin characters have +15 Alchemy skill because of their passive (spell:69045). An extra 15 Alchemy skill means recipes stay orange for 15 more points. You can save a lot of gold by doing lower level recipes for 15 more points.| |P|600 1|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Train Northrend Alchemy |N|(npc:28703) in {The Agronomical Apothecary} (42.36, 31.95)| |Z|125| |NPC|28703| |P|600 1|
N Learn Alchemy Recipes |N|Speak to (npc:28703) and learn all available Alchemy recipes (42.36, 31.95)| |Z|125| |NPC|28703| |P|600 2|
B (item:3371) |N|Speak to (npc:28725) and buy 100 (item:3371) (41.76, 32.70)| |Z|125| |L|3371 100| |P|600 2|

N Materials Required |N|Collect materials for level 1-75<br/><b>20 (item:36907)<br/><b>44 (item:36901)<br/><b>20 (item:36904)<br/><b>20 (item:36906)<br/><b>135 (item:36905)<br/><b>5 (item:36932)<br/><b>5 (item:36929)<br/><b>5 (item:36860)<br/>or<br/><b>105 (item:36905)<br/><b>45 (item:37704)<br/><b>15 (item:36908)| |P|600 75|
N 1-5 (spell:53839) |AL| |N|Craft 5 (spell:53839)<br/><b>10 (item:36907)| |P|600 5|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Alchemy Recipes |N|Speak to (npc:28703) and learn all available Alchemy recipes (42.36, 31.95)| |Z|125| |NPC|28703| |P|600 6|
N 5-10 (spell:53900) |AL| |N|Craft 5 (spell:53900)<br/><b>5 (item:36901)<br/><b>10 (item:36907)| |P|600 10|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Alchemy Recipes |N|Speak to (npc:28703) and learn all available Alchemy recipes (42.36, 31.95)| |Z|125| |NPC|28703| |P|600 11|
N 10-20 (spell:54218) |AL| |N|Craft 10 (spell:54218)<br/><b>20 (item:36904)<br/>This recipe will be yellow for the last 5 points, you might need to make more than 10.| |P|600 20|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Alchemy Recipes |N|Speak to (npc:28703) and learn all available Alchemy recipes (42.36, 31.95)| |Z|125| |NPC|28703| |P|600 21|
N 20-30 (spell:53840) |AL| |N|Craft 12 (spell:53840)<br/><b>24 (item:36901)<br/><b>24 (item:36903)| |P|600 30|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Alchemy Recipes |N|Speak to (npc:28703) and learn all available Alchemy recipes (42.36, 31.95)| |Z|125| |NPC|28703| |P|600 31|
N 30-40 (spell:53905) |AL| |N|Craft 10 (spell:53905)<br/><b>20 (item:36906)| |P|600 40|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Alchemy Recipes |N|Speak to (npc:28703) and learn all available Alchemy recipes (42.36, 31.95)| |Z|125| |NPC|28703| |P|600 41|
N 40-55 (spell:53837) |AL| |N|Craft 30 (spell:53837)<br/><b>15 (item:36901)<br/><b>30 (item:36905)| |P|600 55|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Alchemy Recipes |N|Speak to (npc:28703) and learn all available Alchemy recipes (42.36, 31.95)| |Z|125| |NPC|28703| |P|600 56|
N 55-60 (spell:57427) |AL| |N|5 (spell:57427)<br/><b>5 (item:36932)<br/><b>5 (item:36929)<br/><b>5 (item:36860)| |P|600 60|
N 55-60 (spell:57425) |AL| |N|5 (spell:57425)<br/><b>5 (item:36917)<br/><b>5 (item:36923)<br/><b>5 (item:35623)| |P|600 60| |O|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Alchemy Recipes |N|Speak to (npc:28703) and learn all available Alchemy recipes (42.36, 31.95)| |Z|125| |NPC|28703| |P|600 61|
N 60-75 (spell:53902) |AL| |N|Craft 15 (spell:53902)<br/><b>105 (item:36905)<br/><b>45 (item:37704)<br/><b>15 (item:36908)| |P|600 75|

N Guide Complete |N|You reach 75 Northrend Alchemy|

]]
end, {description = [[This guide covers how to level the Northrend Alchemy profession from 1-75.]]})
    end

	function Guide:Unload()
	end
end
