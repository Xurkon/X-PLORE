 local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_Ley_Line_in_the_Span")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "Ley Line in the Span", nil, nil, nil, "A", nil, function()
return [[

N Please Read! |N|This guide will walk you through to complete (aid:16638). <br/>The objective is to interact with the Misaligned Ley Crystal and complete the puzzle to convert into an Aligned Ley Crystal. <br/>Some caves are blocked by a Rock Wall. <br/><b>Learn (spell:366264)<br/>buy (item:198727) - you will need to be Renown 20 with (fac:2507) <br/><b>(item:198278) - you will need to learn (spell:366254) <br/><b>Die in front of the cave and revive inside the cave. <br/><b>Wait for another player to open the cave entrance.<br/><br/>To get out of the cave, use the Shovel on the ground near the exit, if the exit is blocked. <br/>Tick this step|

N Azure Archives Ley Line |AID|16638| |AC|1| |N|Interact with (npc:198260) and complete the puzzle (43.77,61.90)| |Z|2024| |QID|72138|
N Azure Outlook Ley Line |AID|16638| |AC|2| |N|Interact with Misaligned Ley Crystal and complete the puzzle (26.31,36.32)| |Z|2024| |QID|72139|
N Rustspine Den Ley Line |AID|16638| |AC|3| |N|Interact with Misaligned Ley Crystal and complete the puzzle (65.90, 50.64)| |Z|2024| |QID|72136|
N Ruins of Karnthar Ley Line |AID|16638| |AC|4| |N|Interact with Misaligned Ley Crystal and complete the puzzle (66.38, 59.51)| |Z|2024| |QID|72141|
N Slyvern Plunge |AID|16638| |AC|5| |N|Interact with Misaligned Ley Crystal and complete the puzzle (65.75, 28.14)| |Z|2024| |QID|72140|

N Guide Complete
]]
end)
    end

    function Guide:Unload()
    end
end