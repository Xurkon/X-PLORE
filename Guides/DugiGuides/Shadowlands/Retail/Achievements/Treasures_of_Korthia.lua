 local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Treasures_of_Korthia")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Korthia|r", "|cffffd200Exploration|r"}, "Treasures of Korthia", nil, nil, nil, "A", "nil", function()
return [[

N Glittering Nest Material |AID|15099| |AC|1| |N|Jump down (35.85, 36.31) (35.82, 39.45) (38.40, 37.59) (38.32, 41.52) (38.35, 42.94)| |Z|1961|
N Forgotten Feather |AID|15099| |AC|2| |N|Use a (item:109076) (63.80, 29.00) (68.91, 29.89)| |Z|1961| |U|109076|
N Lost Memento |AID|15099| |AC|3| |N|On the ground (54.84, 21.20) (53.00, 14.75)| |Z|1961|
N Dislodged Nest |AID|15099| |AC|4| |N|Find a Noxious Moth around the area, use (spell:355181) button on (npc:178547). After getting the bear mount, run into the tree. (47.50, 29.51)| |Z|1961| |NPC|178547|
N Anima Laden Egg |AID|15099| |AC|5| |N|On a tree (29.59, 53.42)| |Z|1961|
N Displaced Relic |AID|15099| |AC|6| |N|Follow the broken construction (50.48, 84.48)| |Z|1961|
N Helsworn Chest |AID|15099| |AC|7| |N|Open the cell and kill (npc:178263) (66.05, 48.25)| |Z|1961|
N Jeweled Heart of Ezekiel |AID|15099| |AC|8| |N|Inside small cave (66.50, 62.27)<br/><b>Cave entrance (66.54, 61.44, 1961, "Cave entrance")| |Z|1961|
N Infested Vestige |AID|15099| |AC|9| |N|Inside a cave (40.13, 58.93)<br/><b>Cave entrance (42.71, 59.59, 1961, "Cave entrance")| |Z|1961|
N Offering Box |AID|15099| |AC|10| |N|Collect (item:187033) on nearby building wall (43.55, 67.70)<br/><b>Offering Box (45.36, 67.16, 1961, "Offering Box")| |Z|1961|
N Guide Complete |N|You earned the (aid:15099) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:15099) achievement]]})
    end

    function Guide:Unload()
    end
end
