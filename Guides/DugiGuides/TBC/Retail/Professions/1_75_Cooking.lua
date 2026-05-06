local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Outland_1_75_Cooking")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Outland Leveling|r", "Outland Cooking (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Shattrath City}. Obviously you can use others as you see fit.| |P|73 1|
N Note! |N|Pandaren characters have +15 Cooking skill because of their passive (spell:107073). An extra 15 Cooking skill means recipes stay orange for 15 more points, so you can save a lot of gold by doing lower level recipes for 15 more points.| |P|74 1|

R Shattrath City |N|Travel to {Shattrath City} (63.94, 41.31)| |Z|111|
N Train Outland Cooking |N|(npc:19185) in {Lower City} (62.63, 68.63)| |Z|111| |NPC|19185| |P|73 1|

N Materials Required |N|Collect materials for level 1-25<br/><b>25 (item:27671)| |P|73 25|

-- Quest chain for Buzzard Bites
Zeppelin Crash |QID|9349| |N|Travel to {Zeppelin Crash} (49.19, 74.76)| |Z|100|
A Ravager Egg Roundup |QID|9349| |N|(npc:19344) (49.2, 74.8) at the {Zeppelin Crash}| |Z|100| |NPC|19344|
R Razorthorn Trail |QID|9349| |N|Travel to {Razorthorn Trail} (41.08, 84.27)|
C Ravager Egg Roundup |QID|9349| |N|Collect 12 (item:23217) from the ground in {Razorthorn Trail}. Also dropped from (npc:16933) (37.21, 88.23)| |NPC|16933| |OBJ|1867|
R Zeppelin Crash |QID|9349| |N|Travel to {Zeppelin Crash} (49.29, 74.70)|
T Ravager Egg Roundup |QID|9349| |N|(npc:19344) (49.2, 74.8) at the {Zeppelin Crash}| |NPC|19344|
A Helboar, the Other White Meat |QID|9361| |N|(npc:19344) (49.2, 74.8) at the {Zeppelin Crash}| |NPC|19344|
C Helboar, the Other White Meat |QID|9361| |N|Kill the (npc:16863) around the {Zeppelin Crash} (48.36, 72.31) to get (item:23268) then use the (item:23268) to purify the meat| |U|23268| |NPC|16863|
T Helboar, the Other White Meat |QID|9361| |N|(npc:19344) (49.2, 74.8) at the {Zeppelin Crash}| |NPC|19344|
A Smooth as Butter |QID|9356| |N|(npc:19344) (49.2, 74.8) at the {Zeppelin Crash}| |NPC|19344|
C Smooth as Butter |QID|9356| |N|Kill the Buzzards which surround the bones found at {The Valley of the Bones} (59, 70)| |NPC|16972|
R Zeppelin Crash |QID|9356| |N|Travel to {Zeppelin Crash} (49.29, 74.70)|
T Smooth as Butter |QID|9356| |N|(npc:19344) (49.2, 74.8) at the {Zeppelin Crash}| |NPC|19344|
N 1-25 (spell:33279) |CO| |N|Cook 25 (spell:33279)<br/><b>25 (item:27671)| |P|73 25|

R Shattrath City |N|Travel to {Shattrath City} (63.94, 41.31)| |Z|111|
N Learn Cooking Recipes |N|(npc:19185) in {Lower City} (62.63, 68.63)| |Z|111| |NPC|19185| |P|73 26|
N Materials Required |N|Collect materials for level 25-75<br/><b>15 (item:27422)<br/><b>15 (item:27682)<br/><b>60 (item:31671)| |P|73 75|
N 25-40 (spell:42296) |CO| |N|Cook 15 (spell:42296)<br/><b>15 (item:27422)| |P|73 40|

R Nagrand |N|Travel to {Nagrand} (78.03, 51.97)| |Z|107|
B (item:27693) |N|(npc:20097) in {Garadar} (58.0, 35.6)| |Z|107| |NPC|20097| |L|27693| |FAC|Horde|
B (item:27693) |N|(npc:20096) in {Telaar} (56.2, 73.2)| |Z|107| |NPC|20096| |L|27693| |FAC|Alliance|
N 40-55 (spell:33289) |CO| |N|Cook 15 (spell:33289)<br/><b>15 (item:27682)| |P|73 55|

R Blade's Edge Mountains |N|Travel to {Blade's Edge Mountains} (36.55, 87.53) |Z|105| |FAC|Alliance|
R Blade's Edge Mountians |N|Travel to {Blade's Edge Mountains} (49.55, 92.19) |Z|105| |FAC|Horde|
N (item:31674) |N|(npc:20916) in {Evergrove} (62.4, 40.2)| |Z|105| |NPC|20916| |L|31674|
N 55-75 (spell:38868) |CO| |N|Cook 60 (spell:38868)<br/><b>60 (item:31671)| |P|73 75|

N Guide Complete |N|You have reach level 75 Outland Cooking|

]]
end, {description = [[This guide covers how to level the Outland Cooking profession from 1-75.]]})
    end

	function Guide:Unload()
	end
end
