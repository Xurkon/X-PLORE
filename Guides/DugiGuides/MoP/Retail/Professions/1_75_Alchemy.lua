local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Pandaria_1_75_Alchemy")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Pandaria Leveling|r", "Pandaria Alchemy (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Note! |N|Goblin characters have +15 Alchemy skill because of their passive (spell:69045). An extra 15 Alchemy skill means recipes stay orange for 15 more points. You can save a lot of gold by doing lower level recipes for 15 more points.| |P|596 1|
N Note! |N|Pandaria Alchemy has significantly different leveling process. The Pandaren trainers will only teach you two recipes. These two recipes are used to unlock additional recipes. As a result there is no set progression in crafting for skill points.| |P|596 1|

R Klaxxi'vess |N|Travel to {Klaxxi'vess} (55.81, 34.85)| |Z|422| |P|596 1|
N Train Pandaria Alchemy |N|(npc:65186) in {Klaxxi'vess} (55.60, 35.24)| |Z|422| |NPC|65186| |P|596 1|

N 1-10 (spell:114752) |AL| |N|Craft 10 (spell:114752)<br/><b>20 (item:72234)<br/>Stop making the healing potions after you reached 10 and discovered 2 new recipes.| |P|596 10|
N 10-55 |AL| |N|Make the Potion/Flask/Elixir you discovered previously until you discover more recipes.| |P|596 55|
N 55-75 (spell:114775) |AL| |N|Craft 20 (spell:114775)<br/><b>20 (item:72234)<br/><b>20 (item:79010)<br/><b>20 (item:79011)| |P|596 75|

N Guide Complete |N|You have reach level 75 Pandaria Alchemy|

]]
end, {description = [[This guide covers how to level the Pandaria Alchemy profession from 1-75.]]})
    end

    function Guide:Unload()
    end
end
