local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_49_49_Dustwallow_Marsh")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 40-50|r", "1445(49-49)#1445(49-49)#1445(49-49)", "1446(49-50)#1446(49-50)#1446(49-50)", "Horde", nil, "L", nil, function()
return [[

R Brackenwall Village |QID|1171| |N|Travel to {Brackenwall Village} (36.33, 31.48)| |Z|1445|
A The Brood of Onyxia |QID|1171| |N|(npc:4500) in {Brackenwall Village} (36.33, 31.48)| |Z|1445| |NPC|4500|
T The Brood of Onyxia |QID|1171| |N|(npc:4501) in {Brackenwall Village} (37.04, 32.93)| |Z|1445| |NPC|4501|
A The Brood of Onyxia |QID|1172| |N|(npc:4501) in {Brackenwall Village} (37.04, 32.93)| |Z|1445| |NPC|4501|

R Beezil's Wreck |QID|4450| |N|Travel to {Beezil's Wreck} (54.11, 55.90)| |Z|1445| |O|
C Ledger from Tanaris |QID|4450| |N|Collect (item:11724) from the Damaged Crate in {Beezil's Wreck} (54.11, 55.90)| |Z|1445| |L|11724| |O| |OBJ|31|

R Wyrmbog |QID|1172| |N|Travel to {Wyrmbog} (48.43, 75.91)| |Z|1445| 
C The Brood of Onyxia |QID|1172| |N|Destroy 5 Egg of Onyxia in {Wyrmbog} (48.43, 75.91)| |Z|1445| |W| |OBJ|477|

R Bloodfen Burrow |OID|626| |N|Travel to {Bloodfen Burrow} (31.87, 65.64)| |Z|1445| |O|
T Cortello's Riddle |QID|625| |N|Musty Scroll in {Bloodfen Burrow} (31.87, 65.64) (31.11, 66.12)| |Z|1445| |O| |OBJ|164|
A Cortello's Riddle |QID|626| |N|in {Bloodfen Burrow} (31.11, 66.12)| |Z|1445| |PRE|625| |OBJ|164|

T The Brood of Onyxia |QID|1172| |N|(npc:4501) in {Brackenwall Village} (37.14, 33.06)| |Z|1445| |NPC|4501|
A Challenge Overlord Mok'Morokk |QID|1173| |N|(npc:4500) in {Brackenwall Village} (36.31, 31.41)| |Z|1445| |NPC|4500|
C Challenge Overlord Mok'Morokk |QID|1173| |N|Defeat (npc:4500) in {Brackenwall Village}, he will run away at about 1/3 HP left (36.42, 31.28)| |Z|1445| |NPC|4500|
T Challenge Overlord Mok'Morokk |QID|1173| |N|(npc:4501) in {Brackenwall Village} (37.14, 33.07)| |Z|1445| |NPC|4501|

N Guide Complete |N|Tick to continue to the next guide| 

]]
end, {image = "dustwallowmarsh.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end
