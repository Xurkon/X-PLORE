local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Outland_1_75_Leatherworking")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Outland Leveling|r", "Outland Leatherworking (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Shattrath City}. Obviously you can use others as you see fit.| |P|882 1|
N Note! |N|The last couple of the recipe's are reputation based.<br/><b>(fac:935) = Honored<br/><b>(fac:989) Honored<br/>Tick this step| |P|882 1|

R Shattrath City |N|Travel to {Shattrath City} (63.94, 41.31)| |Z|111|
N Train Outland Leatherworking |N|(npc:19187) in {Lower City} (67.2, 67.6)| |Z|111| |NPC|19187| |P|882 1|

N Materials Required |N|Collect materials for level 1-75<br/><b>1,340 (item:21887)<br/><b>246 (item:23793)<br/><b>60 (item:14341)<br/><b>32 (item:25708)<br/><b>32 (item:25707)| |P|882 75|
N 1-5 (spell:32482) |LE| |N|Craft 5 (spell:32482)<br/><b>10 (item:21887)| |P|882 5|
N 5-25 (spell:32456) |LE| |N|Craft 25 (spell:32456)<br/><b>100 (item:21887)| |P|882 25|
N 25-35 (spell:32455) |LE| |N|Craft 246 (spell:32455)<br/><b>1230 (item:21887)| |P|882 35|
N 35-50 (spell:32473) |LE| |N|Craft 20 (spell:32473)<br/><b>60 (item:23793)<br/><b>60 (item:14341)<br/>This recipe will be yellow, so you might have to make more, if you are unlucky.| |P|882 50|
N 50-65 (spell:34330) |LE| |N|Craft 30 (spell:34330)<br/><b>90 (item:23793)| |P|882 65|

-- The Sha'tar
N Get Honored with (fac:935) |N|Queue for the following dungeons until you hit Honored:<br/><b>{Botanica} Heroic<br/><b>{Botanica} Normal| |I| |REP|935, 2|
B (item:29717) |N|(npc:21432) in {Terrace of Light} (51.6, 41.6)| |Z|111| |NPC|21432| |L|29717| |REP|935, 3|
N 65-70 (spell:35543) |LE| |N|Craft 8 (spell:35543)<br/><b>48 (item:23793)<br/><b>32 (item:25708)| |P|882 70| |REP|935, 3|

-- Keepers of Time
N Get Honored with (fac:989) |N|Queue for the following dungeons until you hit Honored:<br/><b>{Escape from Durnholde} Heroic<br/><b>{Black Morass} Heroic<br/><b>{Black Morass} Normal| |I| |REP|989, 2|
B (item:29713) |N|(npc:21643) in {Caverns of Time} (63.0, 57.2)| |Z|161| |NPC|21643| |L|29713| |REP|989, 3|
N 70-75 (spell:35538) |LE| |N|Craft 8 (spell:35538)<br/><b>48 (item:23793)<br/><b>32 (item:25707)| |P|882 75| |REP|989, 3|

N Guide Complete |N|You have reach level 75 Outland Leatherworking|

]]
end, {description = [[This guide covers how to level the Outland Leatherworking profession from 1-75.]]})
    end

	function Guide:Unload()
	end
end
