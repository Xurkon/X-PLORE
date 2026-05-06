local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Events_Alliance_En_Khaz")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Lunar Festival|r ", "The Lunar Festival: Elders of Khaz Algar (70+)", nil, nil, nil, "E", "|SG|DugisGuideViewer.SuggestCurrentHolidayPredicate([[Calendar_LunarFestival]])|", function()
return [[

N Manual Tick Required |N|Due to the achievement resetting every year, the addon is currently unable to detect your achievement completion, you will need to manually tick the |

A Archivist Rubbleglint |QID|85929| |N|Speak to (npc:233971) {Isle of Dorn} (40.91,87.36)| |E| |Z|2248| |NPC|233971|
A Archivist Coppermoss |QID|85930| |N|Speak to (npc:233972) {Isle of Dorn} (48.62,13.96)| |E| |Z|2248| |NPC|233972|
A Archivist Silsigra |QID|85932| |N|Speak to (npc:233974) {The Ringing Deeps} (67.29,52.98)| |E| |Z|2214| |NPC|233974|
A Archivist Farolt |QID|85931| |N|Speak to (npc:233973) {The Ringing Deeps} (48.91,67.30)| |E| |Z|2214| |NPC|233973|
A Elder Ikk'zivan |QID|85935| |N|Speak to (npc:233977) {Azj-Kahet} (66.90,85.54)| |E| |Z|2255| |NPC|233977|
A Naladu the Elder |QID|85936| |N|Speak to (npc:233978) {Azj-Kahet} (46.83,57.21)| |E| |Z|2255| |NPC|233978|
A Elder Knythall |QID|85933| |N|Speak to (npc:233975) {Hallowfall} (25.88,51.93)| |E| |Z|2215| |NPC|233975|
A Elder Swornvow |QID|85934| |N|Speak to (npc:233976) {Hallowfall} (66.27,46.28)| |E| |Z|2215| |NPC|233976|

N Khaz Algar Guide Complete

]]
end)
    end

    function Guide:Unload()
    end
end