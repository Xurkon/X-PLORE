local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Dragonflight_1_100_Cooking")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dragonflight Leveling|r", "Dragonflight Cooking (1-100)", nil, nil, nil, "P", nil, function()
return [[

N Learn Dragon Isles Cooking |N|Speak to (npc:185556) and learn (spell:366256) (46.6,46.6)| |Z|2112| |NPC|185556| |P|1585 1|
N (item:191233) |N|Collect (item:191233) from guild or players or you can purchase it from the Auction House<br/><b>Equip (item:191233) in the Profession Tool slot.| |L|191233| |P|1585 5|
N (item:193534) |N|Collect (item:193534) from guild or players or you can purchase it from the Auction House<br/><b>Equip (item:193534) in the Profession Accessory slot.| |L|193534| |P|1585 5|

B 84 (item:197752) |N|Speak to (npc:191000) and buy 84 (item:197752) (36.6,62.6)| |Z|2112| |NPC|191000| |L|197752 84| |P|1585 5|
B 20 (item:197749) |N|Speak to (npc:191000) and buy 20 (item:197749) (36.6,62.6)| |Z|2112| |NPC|191000| |L|197749 20| |P|1585 5|
B 44 (item:197750) |N|Speak to (npc:191000) and buy 44 (item:197750) (36.6,62.6)| |Z|2112| |NPC|191000| |L|197750 44| |P|1585 5|
B 17 (item:194691) |N|Speak to (npc:196753) and buy 17 (item:194691) (58.2,68.0)| |Z|2022| |NPC|196753| |L|196753 17| |P|1585 5|

N 36 (item:197755) |N|Collect 36 (item:197755), purchase them from the Auction House or gather with Fishing or Herbalism| |L|197755 36| |P|1585 5|
N 36 (item:197754) |N|Collect 36 (item:197754), purchase them from the Auction House or gather with Fishing or Mining| |L|197754 36| |P|1585 5|
N 106 (item:197741) |N|Collect 106 (item:197741), purchase them from the Auction House or gather from (npc:190144) in (map:2022) (72.6,44.0, 2022, "Fretful Riverbeast Elder")| |L|197741 106| |NPC|190144| |P|1585 5|
N 17 (item:197742) |N|Collect 17 (item:197742), purchase them from the Auction House or gather from (npc:197742) in (map:2024) (13.6,48.6, 2024, "Bisquius")| |L|197742 17| |NPC|197742| |P|1585 5|
N 51 (item:197745) |N|Collect 51 (item:197745), purchase them from the Auction House or gather from (npc:192466) in (map:2025) (52.2,43.4, 2025, "Thornsided Basilisk")| |L|197745 51| |NPC|192466| |P|1585 5|

N 1-5 (spell:381365) |CO| |N|Craft (spell:381365)<br/><b>20 (item:197749)<br/><b>10 (item:197750)| |P|1585 5|

N 5-20 (spell:381364) |CO| |N|Craft 10 (spell:381364)<br/><b>20 (item:197755)<br/><b>10 (item:197752)| |P|1585 15|

N 15-20 (spell:381363) |CO| |N|Craft 10 (spell:381363)<br/><b>20 (item:197754)<br/><b>10 (item:197752)| |P|1585 20|

N 20-23 (spell:381369) |CO| |N|Craft 3 (spell:381369)<br/><b>6 (item:197741)<br/><b>6 (item:197752)| |P|1585 23|

N 23-35 (spell:381389) |CO| |N|Craft 12 (spell:381389)<br/><b>36 (item:197741)<br/><b>48 (item:197752)| |P|1585 35|

N 35-45 (spell:381382) |CO| |N|Craft 10 (spell:381382)<br/><b>10 (item:194691)<br/><b>10 (item:197742)| |P|1585 45|

N 45-50 (spell:381382) |CO| |N|Craft 7 (spell:381382)<br/><b>7 (item:194691)<br/><b>7 (item:197742)| |P|1585 50|

N 50-100 |CO| |N|Sadly, there is not really a fast way to level Cooking past skill level 50. All of the recipes you need to get are either rare drops, locked behind renown or require discovery. The good news about this is that you have many options. If you are lucky and come across a recipe, you can start using that to skill up Cooking! More good news is that your Cooking skill is not as important as other professions since Cooking does not utilize Quality.| |P|1585 100|

N Guide Complete |N|You Reached 100 Dragon Isles Cooking Skill|

]]
end) end

    function Guide:Unload()
    end
end