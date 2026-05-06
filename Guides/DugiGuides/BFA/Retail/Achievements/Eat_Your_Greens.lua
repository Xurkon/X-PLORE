local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Eat_Your)Greens.lua")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Exploration|r"}, "Eat Your Greens", nil, nil, nil, "A", nil, function()
return [[

-- Saurolisk Tail Nibs -- Nazmir
R Zul'jan Ruins |AID|12588| |N|Travel to {Zul'jan Ruins} (38.91,78.13)| |Z|863| |FAC|Horde| |AC|1|
R Redfield's Watch |AID|12588| |N|Travel to {Redfield's Watch} (50.87,20.78)| |Z|863| |FAC|Alliance| |AC|1|
N (spell:273779) |LOOP| |AID|12588| |N|Eat (spell:273779) in {Burial Mound} (30.28,52.69)(30.12,39.74)(34.12,52.78)(30.11,39.76)(41.59,47.61)(47.51,35.11)| |Z|863| |AC|1|

-- Gnarl Root -- Nazmir
R Zul'jan Ruins |AID|12588| |N|Travel to {Zul'jan Ruins} (38.91,78.13)| |Z|863| |FAC|Horde| |AC|3|
R Fort Victory |AID|12588| |N|Travel to {Fort Victory} (62.25,41.34)| |Z|863| |FAC|Alliance| |AC|3|
N (spell:273797) |LOOP| |AID|12588| |N|Eat (spell:273797) in {Sethrak Front} (27.99,35.32)(35.18,66.40)(54.39,37.50)(58.88,42.18)(74.97,60.29)(48.69,74.91)| |Z|863| |AC|3|

-- Krag'wa's Ire -- Nazmir
R Zo'bal Ruins |AID|12588| |N|Travel to {Zo'bal Ruins} (40.13,42.89)| |Z|863| |FAC|Horde| |AC|5|
R Fort Victory |AID|12588| |N|Travel to {Fort Victory} (62.25,41.34)| |Z|863| |FAC|Alliance| |AC|5|
N (spell:275054) |LOOP| |AID|12588| |N|Eat (spell:275054) in {Natha'vor} (52.58,35.80)(50.40,39.76)| |Z|863| |AC|5|

-- Bwonsamdi's Tears -- Nazmir
R Zul'jan Ruins |AID|12588| |N|Travel to {Zul'jan Ruins} (38.91,78.13)| |Z|863| |FAC|Horde| |AC|2|
R Fort Victory |AID|12588| |N|Travel to {Fort Victory} (62.25,41.34)| |Z|863| |FAC|Alliance| |AC|2|
N (spell:273781) |LOOP| |AID|12588| |N|Eat (spell:273781) in {Sunken Path} (55.61,74.68)(51.91,72.88)(41.22,58.03)(46.07,71.87)| |Z|863| |AC|2|

-- Sapphire Amaraina -- Nazmir
R Gloom Hollow |AID|12588| |N|Travel to {Gloom Hollow} ()| |Z|863| |FAC|Horde| |AC|4|
R Fort Victory |AID|12588| |N|Travel to {Fort Victory} (62.25,41.34)| |Z|863| |FAC|Alliance| |AC|4|
N (spell:275032) |LOOP| |AID|12588| |N|Eat (spell:275032) in {Wayward Shoals} (78.77,35.13)(73.72,39.73)(83.13,49.41)(81.96,55.94)| |Z|863| |AC|4|

-- Stonebloom -- Nazmir
R Zul'jan Ruins |AID|12588| |N|Travel to {Zul'jan Ruins} (38.91,78.13)| |Z|863| |FAC|Horde| |AC|6|
R Fort Victory |AID|12588| |N|Travel to {Fort Victory} (62.25,41.34)| |Z|863| |FAC|Alliance| |AC|6|
N (spell:275059) |LOOP| |AID|12588| |N|Eat (spell:275059) in {Xal'vor} (54.49,56.07)(55.41,67.13)(56.29,31.32)(76.29,61.05)(48.53,46.72)(49.40, 48.92)| |Z|863| |AC|6|

N Guide Complete |N|You earned the (aid:12588) achievement.|

]]
end, {description = [[This guide will walk you through completing the (aid:12588) achievement]]}) end

	function Guide:Unload()
	end
end
