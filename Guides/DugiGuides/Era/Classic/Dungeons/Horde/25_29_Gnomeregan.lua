local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Horde_En_25_29_Gnomeregan")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dungeons Azeroth|r", "Gnomeregan (25-29)", "Scarlet Monestary Graveyard / Library (27-33)", "Horde", nil, "I", nil, function()
return [[

N Level 25 Required |N|You must be at least level 25 to pick up the following quests|  |QID|2841| |PL|25|

R Orgrimmar |N|Travel to Orgrimmar (75.4, 24.8)| |Z|1454|  |QID|2841|
A Rig Wars |QID|2841| |N|(npc:3412) in {Orgrimmar} (75.4, 24.8)| |Z|1454| |NPC|3412|
A Chief Engineer Scooty  |QID|2842| |N|(npc:3413) in {Orgrimmar} (75.6, 25.2)| |Z|1454| |NPC|3413|

R Booty Bay |N|Travel to Booty Bay (27.6, 77.5)| |Z|1434| |QID|2842|
T Chief Engineer Scooty| |QID|2842| |N|(npc:7853) in {Ratchet} (27.6, 77.5)| |Z|1434| |NPC|7853|
A Gnomer-gooooone! |QID|2843| |N|(npc:7853) in {Ratchet} (27.6, 77.5)| |Z|1434| |NPC|7853|
T Gnomer-gooooone! |QID|2843| |N|(npc:7853) in {Ratchet} (27.6, 77.5)| |Z|1434| |NPC|7853|

R Gnomeregan |QID|2904| |N|Zone into {Gnomeregan} instance (24.32, 39.80)| |Z|1426|
A A Fine Mess |QID|2904| |N|(npc:7850), In the Dormitory by the Clean Room| |DMAP|Gnomeregan_H| |NPC|7850|
C A Fine Mess |QID|2904| |N|Bring (npc:7850), to the front entrance of the dungeon, he will follow you| |DMAP|Gnomeregan_H| |NPC|7850|

A Grime-Encrusted Ring |QID|2945| |N|(item:9326) dropped from Gnomeregan mobs, this will require level 28 to accept otherwise you can skip keep this in your inventory and accept it later| |U|9326| |O| |DMAP|Gnomeregan_H|
T Grime-Encrusted Ring |QID|2945| |N|The Sparklematic 5200, In the Clean Zone| |DMAP|Gnomeregan_H|
A Return of the Ring |QID|2949| |N|The Sparklematic 5200, In the Clean Zone| |DMAP|Gnomeregan_H|

K (npc:7800) |QID|2841| |N|Kill (npc:7800) and collect (item:9299)| |L|9299| |DMAP|Gnomeregan_H| |NPC|7800|
C Rig Wars |QID|2841| |N|Once you have (item:9299) you can now open the safe in Thermaplugg room to get (item:9153)| |Z|1454| |DMAP|Gnomeregan_H|

R Booty Bay |QID|2950| |N|Exit out of the instance back to Booty Bay (45.9, 49.3)| |Z|1434|
T A Fine Mess |QID|2904| |N|(npc:7853) in {Ratchet} (27.6, 77.5)| |Z|1434| |NPC|7853|

R Orgrimmar |N|Travel to {Orgrimmar} (75.4, 24.8)| |Z|1454|
T Rig Wars |QID|2841| |N|(npc:3412) in {Orgrimmar} (75.4, 24.8)| |Z|1454|
T Return of the Ring |QID|2949| |N|(npc:3412) in {Orgrimmar} (75.4, 24.8)| |Z|1454|
A Nogg's Ring Redo |QID|2950| |N|(npc:3412) in {Orgrimmar} (75.4, 24.8)| |Z|1454|
C Nogg's Ring Redo |QID|2950| |N|Bring a (item:2842) and (item:1206) you can buy them from the Auction House if its not too expensive (75.4, 24.8)| |Z|1454|
T Nogg's Ring Redo |QID|2950| |N|(npc:3412) in {Orgrimmar} (75.4, 24.8)| |Z|1454|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end

