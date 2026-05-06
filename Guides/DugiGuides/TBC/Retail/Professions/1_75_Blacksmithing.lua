local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Outland_1_75_Blacksmithing")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Outland Leveling|r", "Outland Blacksmithing (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Shattrath City}. Obviously you can use others as you see fit.| |P|584 1|
N Note! |N|Lightforged Draenei characters have +10 Blacksmithing skill because of their passive (spell:255650). An extra 10 Blacksmithing skill means recipes stay orange for 10 more points, so you can save a lot of gold by doing lower level recipes for 10 more points.| |P|584 1|

R Shattrath City |N|Travel to {Shattrath City} (63.94, 41.31)| |Z|111|
N Train Outland Blacksmithing |N|(npc:20124) in {Lower City} (69.61, 43.60)| |Z|111| |NPC|20124| |P|584 1|

N Materials Required |N|Collect materials for level 1-60<br/><b>95 (item:23445)<br/><b>55 (item:21877)<br/><b>115 (item:23446)| |P|584 60|
N 1-5 (spell:34607) |BL| |N|Craft 5 (spell:34607)<br/><b>5 (item:23445)<br/><b>5 (item:21877)<br/>The recipe will be yellow so you might have to make a few more.| |P|584 5|
N 5-15 (spell:29547) |BL| |N|Craft 10 (spell:29547)<br/><b>40 (item:23445)| |P|584 15|
N 15-20 (spell:29552) |BL| |N|Craft 5 (spell:29552)<br/><b>25 (item:23445)| |P|584 20|

R Shattrath City |N|Travel to {Shattrath City} (63.94, 41.31)| |Z|111|
N Learn Blacksmithing Plans |N|Speak to (npc:20124) and learn all available blacksmithing plans in {Lower City} (69.61, 43.60)| |Z|111| |NPC|20124| |P|584 21|
N 20-25 (spell:29548) |BL| |N|Craft 5 (spell:29548)<br/><b>30 (item:23445)| |P|584 25|
N 25-35 (spell:32284) |BL| |N|Craft 25 (spell:32284)<br/><b>25 (item:23446)| |P|584 35|

R Shattrath City |N|Travel to {Shattrath City} (63.94, 41.31)| |Z|111|
B (item:23591) |N|(npc:19662) in {Lower City} (64.02, 71.95)| |Z|111| |NPC|19662| |L|23591|
N 35-40 (spell:29568) |BL| |N|Craft 5 (spell:29568)<br/><b>40 (item:23446)| |P|584 40|

R Thrallmar |N|Travel to {Thrallmar} (53.2, 38.2)| |Z|100| |FAC|Horde|
B (item:23638) |N|(npc:16583) in {Thrallmar} (53.2, 38.2)| |Z|100| |NPC|16583| |L|23638| |FAC|Horde|
R Wildhammer Stronghold |N|Travel to {Wildhammer Stronghold} (36.8, 55.0)| |Z|104| |FAC|Alliance|
B (item:23638) |N|(npc:19373) in {Wildhammer Stronghold} (36.8, 55.0)| |Z|104| |NPC|19373| |L|23638| |FAC|Alliance|
N 40-50 (spell:29728) |BL| |N|Craft 25 (spell:29728)<br/><b>25 (item:23446)| |P|584 50|

R Cenarion Refuge |N|Travel to {Cenarion Refuge} (79.2, 63.8)| |Z|102|
B (item:28632) |N|(npc:17904) in {Cenarion Refuge} (79.2, 63.8)| |Z|102| |NPC|17904| |L|23632|
N 50-60 (spell:34608) |BL| |N|Craft 25 (spell:34608)<br/><b>25 (item:23446)<br/><b>50 (item:21877)| |P|584 60|

N Note! |N|The following will require to be Honored with (fac:932) to level 60-75<br/>Tick this step| |REP|932, 2|
N Note! |N|The following will require to be Revered with (fac:934) to level 60-75<br/>Tick this step| |REP|934, 2|

R Shattrath City |QID|10210| |N|Travel to {Shattrath City} (54, 44.5)| |Z|111|
A A'dal |QID|10210| |N|(npc:19684) (58.5, 41) in {Shattrath City}}| |Z|111| |NPC|19684|
T A'dal |QID|10210| |N|(npc:18481) (54, 44.5) in {Shattrath City}| |Z|111| |NPC|18481|
A City of Light |QID|10211| |N|(npc:18166) (54.7, 44.4) in {Shattrath City}| |Z|111| |NPC|18166|
C City of Light |QID|10211| |N|Follow (npc:19685) for 8.5 mins around {Shattrath City} until the quest (qid:10211) is complete. You will have to abandon the quest and start again if you lose sight of the NPC.<br/><br/>Pick up the quest (qid:10037) on the way (65.9, 35.2)(64.1, 16.1)(54.37, 22.99)(54.40, 29.95)(66.2, 50.9)(51.4, 56.6)(46.3, 41.0)(50.3, 42.9)| |Z|111| |NPC|19685|
T City of Light |QID|10211| |N|(npc:18166) (54.7, 44.4) in {Shattrath City}| |Z|111| |NPC|18166|

N Aldor or Scryers |QID|10917| |N|You need to pick which faction you will gain reputation with. For Draenei, it is better to choose Aldor as you will get extra reputation and for Blood Elf, it is better to choose Scryers. For other races, it doesn't really matter which one you choose as you won't be using the reputation for anything, but I suggest Aldor as they will have more quest for extra experience|

A Allegiance to the Aldor |QID|10551| |N|(npc:18166) (54.7, 44.4) in {Shattrath City}| |Z|111| |O| |NPC|18166| |E|
A Ishanah |QID|10554| |N|(npc:18166) (54.7, 44.4) in {Shattrath City}| |Z|111| |NPC|18166| |REP|932, 5|
T Ishanah |QID|10554| |N|(npc:18538) (24.2, 29.5) in {Aldor Rise}| |Z|111| |NPC|18538| |REP|932, 5|
A Restoring the Light |QID|10021| |N|(npc:18538) (24.2, 29.5) in {Aldor Rise}| |Z|111| |NPC|18538| |REP|932, 5|

A Allegiance to the Scryers |QID|10552| |N|(npc:18166) (54.7, 44.4) in {Shattrath City}| |O| |Z|111| |NPC|18166| |E|
A Voren'thal the Seer |QID|10553| |N|(npc:18166) (54.7, 44.4) in {Shattrath City}| |Z|111| |NPC|18166| |REP|934, 5|
T Voren'thal the Seer |QID|10553| |N|(npc:18530) (42.7, 91.5) in {Scryer's Tier}| |Z|111| |NPC|18530| |REP|934, 5|

-- The Aldor -- Honored
A Marks of Kil'jaeden |QID|10325| |N|(npc:18537) in {Aldor Rise} (30.83, 34.60) The Aldor| |Z|111| |NPC|18537| |REP|932, 2|
C Marks of Kil'jaeden |QID|10325| |N|Kill (npc:21661) and collect 10 (item:29425) in {Shadow Tomb} (31.45, 53.06)(40.33, 56.50) The Aldor| |Z|108| |NPC|21660, 21661, 21662| |L|29425 10| |REP|932, 2|
T Marks of Kil'jaeden |QID|10325| |N|(npc:18537) in {Aldor Rise} (30.83, 34.60) The Aldor| |Z|111| |NPC|18537| |REP|932, 2|
C More Marks of Kil'jaeden |QID|10326| |N|Kill (npc:21660), (npc:21661) & (npc:21662) collect 240 (item:29425) in {Shadow Tomb} (31.45, 53.06)(40.33, 56.50) The Aldor| |Z|108| |NPC|21660, 21661, 21662| |L|29425 240| |REP|932, 2| |D|
T More Marks of Kil'jaeden |QID|10326| |N|(npc:18537) in {Aldor Rise} (30.83, 34.60)<br/>Turn in all of your marks until you reach Honored. The Aldor| |Z|111| |NPC|18537| |REP|932, 2| |D|
A A Cleansing Light |QID|10420| |N|(npc:18538) in {Shrine of Unending Light} (24.21, 29.82) The Aldor| |Z|111| |NPC|18538| |REP|932, 2|
C A Cleansing Light |QID|10420| |N|Kill (npc:21661) and collect 1 (item:29740) in {Shadow Tomb} (31.45, 53.06)(40.33, 56.50) The Aldor| |Z|108| |NPC|21660, 21661, 21662| |L|29740| |REP|932, 2|
T A Cleansing Light |QID|10420| |N|(npc:18538) in {Shrine of Unending Light} (24.21, 29.82) The Aldor| |Z|111| |NPC|18538| |REP|932, 2|

-- The Aldor -- Exalted
A Marks of Sargeras |QID|10653| |N|(npc:18537) in {Aldor Rise} (30.83, 34.60) The Aldor| |Z|111| |NPC|18537| |REP|932, 3|
C Marks of Sargeras |QID|10653| |N|Que for the following dungeons<br/><b>{Hellfire Ramparts}<br/><b>{The Blood Furnace}<br/><b>{The Shattered Halls} The Aldor| |L|30809 10| |REP|932, 3| |I|
T Marks of Sargeras |QID|10653| |N|(npc:18537) in {Aldor Rise} (30.83, 34.60) The Aldor| |Z|111| |NPC|18537| |REP|932, 3|
C More Marks of Sargeras |QID|10654| |N|Que for the following dungeons<br/><b>{Hellfire Ramparts}<br/><b>{The Blood Furnace}<br/><b>{The Shattered Halls} The Aldor| |L|30809 10| |REP|932, 3| |D| |I|
T More Marks of Sargeras |QID|10654| |N|(npc:18537) in {Aldor Rise} (30.83, 34.60)<br/>Turn in all of your marks until you reach Exalted. The Aldor| |Z|111| |NPC|18537| |REP|932, 3| |D|
C Fel Armaments |QID|10421| |N|Kill (npc:21661) and collect as many (item:29740) as you can in {Shadow Tomb} (31.45, 53.06)(40.33, 56.50) The Aldor| |Z|108| |NPC|21660, 21661, 21662| |L|29740 500| |REP|932, 3| |D|
T Fel Armaments |QID|10421| |N|(npc:18538) in {Shrine of Unending Light} (24.21, 29.82)Turn in all of your armaments until you reach Exalted. The Aldor| |Z|111| |NPC|18538| |REP|932, 3| |D|

-- The Scryers -- Honored
A Firewing Signets |QID|10412| |N|(npc:18531) in {Scryer's Tier} (45.29, 81.30) The Scryers| |Z|111| |NPC|18531| |REP|934, 2|
C Firewing Signets |QID|10412| |N|Kill (npc:16769), (npc:5355) & (npc:1410) collect 10 (item:29426) in {Firewing Point} (71.07, 37.39) The Scryers| |Z|108| |NPC|16769, 5355, 1410| |L|29426 10| |REP|934, 2|
T Firewing Signets |QID|10412| |N|(npc:18531) in {Scryer's Tier} (45.29, 81.30) The Scryers| |Z|111| |NPC|18531| |REP|934, 2|
C More Firewing Signets |QID|10415| |N|Kill (npc:16769), (npc:5355) & (npc:1410) collect 240 (item:29426) in {Firewing Point} (71.07, 37.39) The Scryers| |Z|108| |NPC|16769, 5355, 1410| |L|29426 240| |REP|934, 2| |D|
T More Firewing Signets |QID|10415| |N|(npc:18531) in {Scryer's Tier} (45.29, 81.30)<br/>Turn in all of your signets until you reach Honored. The Scryers| |Z|111| |NPC|18531| |REP|934, 2| |D|

-- The Scryers -- Exalted
A Sunfury Signets |QID|10656| |N|(npc:18531) in {Scryer's Tier} (45.29, 81.30) The Scryers| |Z|111| |NPC|18531| |REP|934, 3|
C Sunfury Signets |QID|10656| |LOOP| |N|Kill (npc:22016), (npc:22018), (npc:19795), (npc:22017) & (npc:21979) collect 10 (item:30810) in {The Path of Conquest} (49.44, 57.82)(49.39, 62.18)(51.34, 62.10)(51.60, 65.15)(52.56, 69.79)(52.86, 67.64)(52.83, 64.16)(53.09, 60.58)(52.57, 59.00)(50.89, 58.52) The Scryers| |Z|104| |NPC|22016, 22018, 19795, 22017, 21979| |L|30810 10| |REP|934, 3|
T Sunfury Signets |QID|10656| |N|(npc:18531) in {Scryer's Tier} (45.29, 81.30)| |Z|111| |NPC|18531| |REP|934, 3|
C More Sunfury Signets |QID|10823| |LOOP| |N|Kill (npc:22016), (npc:22018), (npc:19795), (npc:22017) & (npc:21979) collect 1,320 (item:30810) in {The Path of Conquest} (49.44, 57.82)(49.39, 62.18)(51.34, 62.10)(51.60, 65.15)(52.56, 69.79)(52.86, 67.64)(52.83, 64.16)(53.09, 60.58)(52.57, 59.00)(50.89, 58.52) The Scryers| |Z|104| |NPC|22016, 22018, 19795, 22017, 21979| |L|30810 1320| |REP|934, 3| |D|
T More Sunfury Signets |QID|10823| |N|(npc:18531) in {Scryer's Tier} (45.29, 81.30)<br/>Turn in all of your signets until you reach Exalted. The Scryers| |Z|111| |NPC|18531| |REP|934, 3| |D|
C Arcane Tomes |QID|10419| |N|Kill (npc:22016), (npc:22018), (npc:19795), (npc:22017) & (npc:21979) collect (item:29739) in {The Path of Conquest} (49.44, 57.82)(49.39, 62.18)(51.34, 62.10)(51.60, 65.15)(52.56, 69.79)(52.86, 67.64)(52.83, 64.16)(53.09, 60.58)(52.57, 59.00)(50.89, 58.52) The Scryers| |Z|104| |NPC|22016, 22018, 19795, 22017, 21979| |REP|934, 3| |D|
T Arcane Tomes |QID|10419| |N|(npc:18530) in {The Seer's Library} (42.78, 88.61)(42.68, 91.56)<br/>Turn in all of your tomes until you reach Exalted. The Scryers| |Z|111| |NPC|18530| |REP|934, 3| |D|

-- The Aldor
N Materials Required |N|Collect materials for level 60-75<br/><b>136 (item:23445)<br/><b>68 (item:21885)<br/><b>68 (item:21884)| |P|584 75| |REP|932, 3|
R Shattrath City |N|Travel to {Shattrath City} (63.94, 41.31) The Aldor| |Z|111| |REP|932, 3|
B (item:23603) |N|(npc:19321) in {Bank} (47.77, 25.92) The Aldor| |Z|111| |NPC|19321| |L|23603| |REP|932, 3|
N 60-75 (spell:29616) |BL| |N|Craft 17 (spell:29616)<br/><b>136 (item:23445)<br/><b>68 (item:21885)<br/><b>68 (item:21884)| |P|584 75| |REP|932, 3|

-- The Scryers
N Materials Required |N|Collect materials for level 60-75<br/><b>54 (item:23573)<br/><b>256 (item:22445)<br/><b>54 (item:22449)| |P|584 75| |REP|934, 2|
R Shattrath City |N|Travel to {Shattrath City} (63.94, 41.31)| |Z|111| |REP|934, 2|
B (item:23597) |N|(npc:19331) in {Bank} (60.43, 64.08)| |Z|111| |NPC|19331| |L|23597| |REP|934, 2|
N 60-67 (spell:29608) |BL| |N|Craft 7 (spell:29608)<br/><b>14 (item:23573)<br/><b>56 (item:22445)<br/><b>14 (item:22449)| |P|584 67| |REP|934, 2|
R Shattrath City |N|Travel to {Shattrath City} (63.94, 41.31)| |Z|111| |REP|934, 4|
B (item:23599) |N|(npc:19331) in {Bank} (60.43, 64.08)| |Z|111| |NPC|19331| |L|23599| |REP|934, 4|
N 67-75 (spell:29610) |BL| |N|Craft 10 (spell:29610)<br/><b>40 (item:23573)<br/><b>200 (item:22445)<br/><b>40 (item:22449)| |P|584 75| |REP|934, 4|

N Guide Complete |N|You have reach level 75 Outland Blacksmithing|

]]
end, {description = [[This guide covers how to level the Outland Blacksmithing profession from 1-75.]]})
    end

	function Guide:Unload()
	end
end
