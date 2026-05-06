local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Events_Alliance_En_Midsummer_Festival_DragonIsles_H")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Midsummer Festival|r ", "Midsummer Festival Dragon Isles (60+)", nil, "Horde", nil, "E", "|SG|DugisGuideViewer.SuggestCurrentHolidayPredicate([[Calendar_Midsummer]])|", function()
return [[
N Prerequisite Required |TID|69910| |N|You must complete The Dragonscale Expedition (intro) first.<br/>(guide:"The Dragonscale Expedition (10)")|
A Honor the Flame |QID|75645| |N|(npc:204415) in {Valdrakken} (53.27, 62.32)| |Z|2112| |NPC|204415|
T Honor the Flame |QID|75645| |N|Click Midsummer Bonfire (53.27, 62.32)| |Z|2112|
A Honor the Flame |QID|75398| |N|(npc:203749) in {Dragonscale Basecamp} (45.98, 82.89)| |Z|2022| |NPC|203749|
T Honor the Flame |QID|75398| |N|Click Midsummer Bonfire (45.98, 82.89)| |Z|2022|
A Honor the Flame |QID|75617| |N|(npc:204413) in {Maruukai} (63.85, 35.02)| |Z|2023| |NPC|204413|
T Honor the Flame |QID|75617| |N|Click Midsummer Bonfire (63.85, 35.02)| |Z|2023|
A Honor the Flame |QID|75640| |N|(npc:204414) in {Iskaara} (12.21, 47.59)| |Z|2024| |NPC|204414|
T Honor the Flame |QID|75640| |N|Click Midsummer Bonfire (12.21, 47.59)| |Z|2024|
N Level 70 Required |N|You need to be at least Level 70 to use the rest of this guide.| |PL|70|
N Prerequisite |TID|73076| |N|You must complete (qid:73076) first.<br/><b>(guide:"Return to the Reach (70+ Storyline)")|
A Honor the Flame |QID|75647| |N|(npc:204416) in {Morqut Islet} (34.97, 60.84)| |Z|2151| |NPC|204416|
T Honor the Flame |QID|75647| |N|Click Midsummer Bonfire (34.97, 60.89)| |Z|2151|
N Prerequisite |TID|72973| |N|You must complete (qid:72973)<br/><b>(guide:"Embers of Neltharion (70+ Storyline)")|
A Honor the Flame |QID|75650| |N|(npc:204417) in {Loamm} (55.17, 55.43)| |Z|2133| |NPC|204417|
T Honor the Flame |QID|75650| |N|Click Midsummer Bonfire (55.17, 55.43)| |Z|2133|

N Guide Complete

]]
end)
    end

    function Guide:Unload()
    end
end