local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Outland_1_75_Engineering")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Outland Leveling|r", "Outland Engineering (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Shattrath City}. Obviously you can use others as you see fit.| |P|719 1|
N Note! |N|Gnome characters have +15 Engineering skill because of their passive (spell:20593). An extra 15 Engineering skill means recipes stay orange 15 points longer, so you can save a lot of gold by doing lower level recipes for 15 more points.| |P|719 1|

R Shattrath City |N|Travel to {Shattrath City} (63.94, 41.31)| |Z|111|
N Train Outland Engineering |N|(npc:33611) in {The Seer's Library} (43.65, 90.92)| |Z|111| |NPC|33611| |P|719 1| |REP|934, 2|
N Train Outland Engineering |N|(npc:33677) in {Aldor Rise} (37.73, 31.61)| |Z|111| |NPC|33677| |P|719 1| |REP|932, 2|

N Materials Required |N|Collect materials for level 1-75<br/><b>294 (item:23445)<br/><b>20 (item:22573)<br/><b>10 (item:22574)<br/><b>34 (item:22452)<br/><b>6 (item:21884)<br/><b>35 (item:21877)<br/><b>184 (item:23446)<br/><b>6 (item:23786)| |P|719 75|
N Note |N|You will use all of these later, so make them now for free skill points.<br/>Tick this step|
N 1-20 (spell:30305) |ENG| |N|Craft 126 (spell:30305)<br/><b>126 (item:23445)| |P|719 20|
N 1-20 (spell:30303) |ENG| |N|Craft 10 (spell:30303)<br/><b>20 (item:22573)<br/><b>10 (item:22574)| |P|719 20| |O|
N 1-20 (spell:30304) |ENG| |N|Craft 56 (spell:30304)<br/><b>168 (item:23445)| |P|719 20| |O|
N 20-25 (spell:30310) |ENG| |N|Craft 5 (spell:30310)<br/><b>5 (item:23782)<br/><b>10 (item:23783)<br/><b>5 (item:23781)<br/>You might need to make more than 5 of these if you are unlucky with the skill point gains.| |P|719 25|
N 25-35 (spell:30306) |ENG| |N|Craft 34 (spell:30306)<br/><b>136 (item:23446)<br/><b>34 (item:22452)<br/>You will use all of these later but you can stop making them when you reach 35, and make more later.| |P|719 35|

R Shattrath City |N|Travel to {Shattrath City} (63.94, 41.31)| |Z|111|
B (item:23811) |N|Speak to (npc:18484) and buy (item:23811) in {Lower City} (72.30, 31.00)<br/>It's a limited supply item, so if someone bought it before you, then you have to wait it for it to respawn.| |Z|111| |NPC|18484| |L|23811|

N 35-55 (spell:30341) |ENG| |N|Craft 35 (spell:30341)<br/><b>35 (item:21877)<br/><b>35 (item:23781)| |P|719 55|
N 55-60 (spell:30308) |ENG| |N|Craft 6 (spell:30308)<br/><b>(item:23449)<br/><b>6 (item:21884)| |P|719 60|

R Shattrath City |N|Travel to {Shattrath City} (63.94, 41.31)| |Z|111|
B (item:23799) |N|Speak to (npc:19661) and buy (item:23799) in {Lower City} (72.30, 31.00)<br/>It's a limited supply item, so if someone bought it before you, then you have to wait it for it to respawn.| |Z|111| |NPC|19661| |L|23799|

N 60-70 (spell:30313) |ENG| |N|Craft 17 (spell:30313)<br/><b>51 (item:23782)<br/><b>34 (item:23784)<br/><b>68 (item:23783)| |P|719 70|

R Blade's Edge Mountains |N|Travel to {Blade's Edge Mountains} (36.55, 87.53) |Z|105| |FAC|Alliance|
R Blade's Edge Mountians |N|Travel to {Blade's Edge Mountains} (49.55, 92.19) |Z|105| |FAC|Horde|
R Ogri'la |N|Travel to {Ogri'la} (31.31, 38.30)| |Z|105|
K (npc:23385) |LOOP| |N|Kill (npc:23385) until (item:) drops, chance for it to drop is high. You should get it with in the first 4 mobs. (28.80, 46.55)(33.40, 51.82)(31.77, 63.72)(27.40, 68.56)| |Z|105| |NPC|23385| |L|34114|
U (item:34114) |N|Use (item:34114) to learn (spell:44391)| |PPOS| |U|34114|

N 70-75 (spell:44391) |ENG| |N|Craft 6 (spell:44391)<br/><b>6 (item:23786)<br/><b>48 (item:23783)<br/><b>48 (item:23446)| |P|719 75|

N Guide Complete |N|You have reach level 75 Outland Engineering|

]]
end, {description = [[This guide covers how to level the Outland Engineering profession from 1-75.]]})
    end

	function Guide:Unload()
	end
end
