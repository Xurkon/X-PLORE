local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dailies_Horde_En_Howling_Fjord_Pre")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("Northrend Pre Quests", "117(71+ Pre Quests)", nil, "Horde", nil, "D", nil, function()
return [[

R Kamagua |N|Fly to Kamagua (40.3, 60.3) in Howling Fjord|

A The Dead Rise! |N|Orfus of Kamagua (40.3, 60.3)| |QID|11504| |NPC|23804|
C The Dead Rise! |QID|11504| |N|Far to the southeast at Shield Hill. Visit each grave for a clue: Fengir (57.7, 77.5), Rodin (59.2, 76.9), Isuldof (59.8, 79.4), Windan (61.9, 80.0)| |OBJ|20, 5743, 3651, 153|
T The Dead Rise! |N|Orfus of Kamagua (40.3, 60.3)| |QID|11504| |NPC|23804|
A Elder Atuik and Kamagua |N|Orfus of Kamagua (40.3, 60.3)| |QID|11507| |NPC|23804|
T Elder Atuik and Kamagua |N|Elder Atuik (25.0, 57.0)| |QID|11507| |NPC|24755|
A Grezzix Spindlesnap |N|Elder Atuik (25.0, 57.0)| |QID|11508| |NPC|24755|

T Grezzix Spindlesnap |N|Grezzix Spindlesnap (23.1, 62.7)| |QID|11508| |NPC|24643|
A Street "Cred" |N|Grezzix Spindlesnap (23.1, 62.7)| |QID|11509| |NPC|24643|
T Street "Cred" |N|"Silvermoon" Harry (35.0, 81.0)| |QID|11509| |NPC|24539|

A Swabbin' Soap |N|Scuttle Frostprow (37.7, 79.5)| |QID|11469| |NPC|24784|
C Swabbin' Soap |QID|11469| |N|Kill Big Roy, southwest of the other sea lions (31.6, 77.5)| |NPC|24785|
T Swabbin' Soap |N|Scuttle Frostprow (37.7, 79.5)| |QID|11469| |NPC|24784|

N Guide Complete |N|Tick to continue to the next guide| 
]]
end)
	end
	
	function Guide:Unload()
	end
end