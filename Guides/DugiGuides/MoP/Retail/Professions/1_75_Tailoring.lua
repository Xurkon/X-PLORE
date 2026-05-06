local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Pandaria_1_75_Tailoring")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Pandaria Leveling|r", "Pandaria Tailoring (1-75)", nil, nil, nil, "P", nil, function()
return [[

R Silken Fields |N|Travel to {Silken Fields} (62.74, 56.71)| |Z|376| |P|950 1|
N Train Pandaria Tailoring |N|(npc:57405) in {Silken Fields} (62.61, 59.58)| |Z|376| |NPC|57405| |P|950 1|

N Materials Required |N|Collect materials for level 1-75<br/><b>| |P|950 75|
N 1-10 (spell:125551) |TA| |N|Craft 45 (spell:125551)<br/><b>225 (item:72988)<br/>Keep these, you will use them later on.| |P|950 10|

R Shrine of Seven Stars |N|Travel to {Shrine of Seven Stars} (86.18, 60.58)| |Z|390| |FAC|Alliance| |P|950 11|
N Train Windwool Bandage |N|(npc:64482) in {The Emperor's Step} (44.81, 62.06)| |Z|393| |NPC|64482| |FAC|Alliance| |P|950 11|
R Shrine of Two Moons |N|Travel to {Shrine of Two Moons} (62.50, 21.82)| |Z|390| |FAC|Horde| |P|950 11|
N Train Windwool Bandage |N|(npc:65862) in {Chamber of Masters} (29.50, 73.84)| |Z|391| |NPC|65862| |FAC|Horde| |P|950 11|
N 10-25 (spell:102697) |TA| |N|Craft 25 (spell:102697)<br/><b>25 (item:72988)| |P|950 25|

R Shrine of Seven Stars |N|Travel to {Shrine of Seven Stars} (86.18, 60.58)| |Z|390| |FAC|Alliance| |P|950 26|
N Train Heavy Windwool Bandage |N|(npc:64482) in {The Emperor's Step} (44.81, 62.06)| |Z|393| |NPC|64482| |FAC|Alliance| |P|950 26|
R Shrine of Two Moons |N|Travel to {Shrine of Two Moons} (62.50, 21.82)| |Z|390| |FAC|Horde| |P|950 26|
N Train Heavy Windwool Bandage |N|(npc:65862) in {Chamber of Masters} (29.50, 73.84)| |Z|391| |NPC|65862| |FAC|Horde| |P|950 26|
N 25-60 (spell:102698) |TA| |N|Craft 70 (spell:102698)<br/><b>140 (item:72988)| |P|950 60|

R Shrine of Seven Stars |N|Travel to {Shrine of Seven Stars} (86.18, 60.58)| |Z|390| |FAC|Alliance| |P|950 61|
B (item:86365) |N|Speak to (npc:64052) and buy (item:86365) for 1 (item:76061) in {The Star's Bazaar} (65.38, 43.54)| |Z|393| |NPC|64052| |L|86365| |FAC|Alliance| |P|950 61|
R Shrine of Two Moons |N|Travel to {Shrine of Two Moons} (62.50, 21.82)| |Z|390| |FAC|Horde| |P|950 61|
B (item:86365) |N|Speak to (npc:64051) and buy (item:86365) for 1 (item:76061) in {Chamber of Masters} (29.50, 73.84)| |Z|391| |NPC|64051| |L|86365| |FAC|Horde| |P|950 61|
N 60-75 (spell:125544) |TA| |N|Craft 15 (spell:125544)<br/><b>45 (item:82441)| |P|950 75|

N Guide Complete |N|You have reach level 75 Pandaria Tailoring|

]]
end, {description = [[This guide covers how to level the Pandaria Tailoring profession from 1-75.]]})
    end

    function Guide:Unload()
    end
end
