local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Northrend_1_75_Engineering")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Northrend Leveling|r", "Northrend Engineering (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Dalaran}. Obviously you can use others as you see fit.| |P|717 1|
N Note! |N|Gnome characters have +15 Engineering skill because of their passive (spell:20593). An extra 15 Engineering skill means recipes stay orange 15 points longer, so you can save a lot of gold by doing lower level recipes for 15 more points.| |P|717 1|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Train Northrend Engineering |N|(npc:28697) in {Like Clockwork} (38.84, 25.73)| |Z|125| |NPC|28697| |P|717 1|
N Learn Engineering Schematics |N|Speak to (npc:28697) and learn all available engineering schematics (38.84, 25.73)| |Z|125| |NPC|28697| |P|717 2|

N Materials Required |N|Collect materials for level 1-26<br/><b>260 (item:36916)<br/><b>25 (item:37705)<br/><b>10 (item:37701)<br/><b>6 (item:33470)| |P|717 26|
N 1-10 (spell:56349) |ENG| |N|Craft 30 (spell:56349)<br/><b>70 (item:36916)<br/>Save these for later.| |L|39681 50|
N (spell:53281) |ENG| |N|Craft 10 (spell:53281)<br/><b>30 (item:36916)<br/><b>10 (item:37705)<br/>Save these for later.| |L|39690 10|
N (spell:56464) |ENG| |N|Craft 10 (spell:56464)<br/><b>40 (item:36916)<br/><b>10 (item:37701)<br/>Save these for later.| |L|39682 10|
N 10-15 (spell:56463) |ENG| |N|Craft 6 (spell:56463)<br/><b>6 (item:33470)<br/><b>18 (item:39690)| |P|717 15|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Engineering Schematics |N|Speak to (npc:28697) and learn all available engineering schematics (38.84, 25.73)| |Z|125| |NPC|28697| |P|717 16|
N 15-26 (spell:56471) |ENG| |N|Craft 15 (spell:56471)<br/><b>120 (item:36916)<br/><b>15 (item:37705)| |P|717 26|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Engineering Schematics |N|Speak to (npc:28697) and learn all available engineering schematics (38.84, 25.73)| |Z|125| |NPC|28697| |P|717 27|
N Materials Required |N|Collect materials for level 26-45<br/><b>5 (item:39683)<br/><b>10 (item:39681)<br/><b>45 (item:90146)| |P|717 45|
N 26-30 (spell:61471) |ENG| |N|Craft 5 (spell:61471)<br/><b>5 (item:39683)<br/><b>10 (item:39681)<br/>Stop when you reach 30| |P|717 30|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Engineering Schematics |N|Speak to (npc:28697) and learn all available engineering schematics (38.84, 25.73)| |Z|125| |NPC|28697| |P|717 31|
N 30-35 (spell:55016) |ENG| |N|Craft 15 (spell:55016)<br/><b>15 (item:90146)| |P|717 35|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Engineering Schematics |N|Speak to (npc:28697) and learn all available engineering schematics (38.84, 25.73)| |Z|125| |NPC|28697| |P|717 36|
N 35-45 (spell:67839) |ENG| |N|Craft 30 (item:67839)<br/><b>30 (item:90146)| |P|717 45|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Engineering Schematics |N|Speak to (npc:28697) and learn all available engineering schematics (38.84, 25.73)| |Z|125| |NPC|28697| |P|717 46|
N Materials Required |N|Collect materials for level 45-75<br/><b>350 (item:36913)<br/><b>10 (item:37705)<br/><b>10 (item:33568)<br/><b>7 (item:35627)<br/><b>10 (item:39683)<br/><b>10 (item:39682)<br/><b>40 (item:39681)<br/><b>25 (item:7005)<br/><b>25 (item:2901)<br/><b>25 (item:5956)<br/><b>8 (item:41163)<br/><b>2 (item:35622)<br/><b>2 (item:35860)<br/><b>2 (item:35623)| |P|717 75|
N 45-50 (spell:42546) |ENG| |N|Craft 5 (spell:42546)<br/><b>60 (item:36913)<br/><b>10 (item:37705)| |P|717 50|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Engineering Schematics |N|Speak to (npc:28697) and learn all available engineering schematics (38.84, 25.73)| |Z|125| |NPC|28697| |P|717 51|
N 50-55 (spell:61482) |ENG| |N|Craft 5 (spell:61482)<br/><b>40 (item:36913)<br/><b>10 (item:33568)<br/><b>5 (item:35627)| |P|717 55|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Engineering Schematics |N|Speak to (npc:28697) and learn all available engineering schematics (38.84, 25.73)| |Z|125| |NPC|28697| |P|717 56|
N 55-60 (spell:56467) |ENG| |N|Craft 5 (spell:56467)<br/><b>10 (item:39683)<br/><b>10 (item:39682)<br/><b>40 (item:39681)| |P|717 60|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Engineering Schematics |N|Speak to (npc:28697) and learn all available engineering schematics (38.84, 25.73)| |Z|125| |NPC|28697| |P|717 61|
N 60-75 (spell:56462) |ENG| |N|Craft 25 (spell:56462)<br/><b>250 (item:36913)<br/><b>25 (item:7005)<br/><b>25 (item:2901)<br/><b>25 (item:5956)<br/>This recipe will be green for the last 5 points, so you might have to make more.| |P|717 75|
N 74-75 (spell:67920) |ENG| |N|Craft (spell:67920)<br/><b>8 (item:41163)<br/><b>2 (item:35627)<br/><b>2 (item:35622)<br/><b>2 (item:35860)<br/><b>2 (item:35623)| |P|717 75| |O|

N Guide Complete |N|You reach 75 Northrend Engineering|

]]
end, {description = [[This guide covers how to level the Northrend Engineering profession from 1-75.]]})
    end

	function Guide:Unload()
	end
end
