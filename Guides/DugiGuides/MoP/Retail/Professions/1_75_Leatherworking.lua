local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Pandaria_1_75_Leatherworking")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Pandaria Leveling|r", "Pandaria Leatherworking (1-75)", nil, nil, nil, "P", nil, function()
return [[

R The Grummle Bazaar |N|Travel to {The Grummle Bazaar} (65.30, 61.08)| |Z|379| |P|876 1|
N Train Pandaria Leatherworking |N|(npc:65121) in {The Grummie Bazaar} (64.60, 60.82)| |Z|379| |NPC|65121| |P|876 1|

N Materials Required |N|Collect materials for level 1-75<br/><b>658 (item:72120)| |P|876 75|
N 1-11 (spell:124628) |LE| |N|Craft 10 (spell:124628)<br/><b>20 (item:72120)| |P|876 11|

R The Grummle Bazaar |N|Travel to {The Grummle Bazaar} (65.30, 61.08)| |Z|379| |P|876 12|
N Learn Leatherworking Patterns |N|Speak to (npc:65121) and learn all available Leatherworking Patterns in {The Grummle Bazaar} (64.60, 60.82)| |Z|379| |NPC|65121| |P|876 12|
N 11-30 (spell:124576) |LE| |N|Craft 20 (spell:124576)<br/><b>80 (item:72120)| |P|876 30|

R The Grummle Bazaar |N|Travel to {The Grummle Bazaar} (65.30, 61.08)| |Z|379| |P|876 31|
N Learn Leatherworking Patterns |N|Speak to (npc:65121) and learn all available Leatherworking Patterns in {The Grummle Bazaar} (64.60, 60.82)| |Z|379| |NPC|65121| |P|876 31|
N 30-36 (spell:124574) |LE| |N|Craft 6 (spell:124574)<br/><b>48 (item:72120)| |P|876 36|

R The Grummle Bazaar |N|Travel to {The Grummle Bazaar} (65.30, 61.08)| |Z|379| |P|876 37|
N Learn Leatherworking Patterns |N|Speak to (npc:65121) and learn all available Leatherworking Patterns in {The Grummle Bazaar} (64.60, 60.82)| |Z|379| |NPC|65121| |P|876 37|
N 36-51 (spell:124573) |LE| |N|Craft 15 (spell:124573)<br/><b>150 (item:72120)| |P|876 51|

R Shrine of Seven Stars |N|Travel to {Shrine of Seven Stars} (86.18, 60.58)| |Z|390| |FAC|Alliance| |P|876 70|
B (item:86250) |N|Speak to (npc:64094) and buy (item:86250) for 1 (item:76061) in {The Star's Bazaar} (75.35, 47.58)| |Z|393| |NPC|64094| |L|86250| |FAC|Alliance| |P|876 70|
R Shrine of Two Moons |N|Travel to {Shrine of Two Moons} (62.50, 21.82)| |Z|390| |FAC|Horde| |P|876 70|
B (item:86250) |N|Speak to (npc:64054) and buy (item:86250) for 1 (item:76061) in {Chamber of Masters} (30.46, 46.23)| |Z|391| |NPC|64054| |L|86250| |FAC|Horde| |P|876 70|
N 51-75 (spell:124608) |LE| |N|Craft 24 (spell:124608)<br/><b>360 (item:72120)| |P|876 75|

N Guide Complete |N|You have reach level 75 Pandaria Leatherworking|

]]
end, {description = [[This guide covers how to level the Pandaria Leatherworking profession from 1-75.]]})
    end

    function Guide:Unload()
    end
end
