local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Events_Alliance_En_LunarFestival_Dragon_Isles")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Lunar Festival|r ", "The Lunar Festival: Elders of Dragon Isles (60+)", nil, nil, nil, "E", "|SG|DugisGuideViewer.SuggestCurrentHolidayPredicate([[Calendar_LunarFestival]])|", function()
return [[

N Manual Tick Required |N|Due to the achievement resetting every year, the addon is currently unable to detect your achievement completion, you will need to manually tick the step|

R Valdrakken |N|Travel to {Valdrakken} (59.55,41.45)| |Z|2112| |F|2112|
A Iskaara Elder Shomkol |QID|73848| |N|(npc:201137) in {Crumbling Cliffs} (46.71,31.31)| |Z|2022| |NPC|201137| |E|
A Aylaag Elder |QID|73716| |N|(npc:201129) in {Obsidian Observatory} (44.26,63.82)| |Z|2022| |NPC|201129| |E|
A Shikaar Elder |QID|73172| |N|(npc:200747) in {Shikaar Highlands} (83.94,48.10)| |Z|2023| |NPC|200747| |E|
A Ohn'ir Elder |QID|73717| |N|(npc:201132) in (Ohn'ahra's Roost) (58.47,31.48)| |Z|2023| |NPC|201132| |E|
A Iskaara Elder Nemaglek |QID|73858| |N|(npc:201139) in {Iskaara} (12.89,49.07)| |Z|2024| |NPC|201139| |E|
A Elder Dekidig |QID|73858| |QID|73860| |N|(npc:201141) in {Camp Nowhere} (67.39,49.48)| |Z|2024| |NPC|201141| |E| 
A Iskaara Elder Sik'ek |QID|73859| |N|(npc:201140) in {Steelcliff Passage} (54.86,43.43)| |Z|2025| |NPC|201140| |E|
A Elder Razlok |QID|73861| |N|(npc:201143) in {Gelikyr Post} (50.07,66.55)| |Z|2025| |NPC|201143| |E|

N Dragon Isles Guide Complete

]]
end)
    end

    function Guide:Unload()
    end
end