local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Alliance_En_25_29_Gnomeregan")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dungeons Azeroth|r", "Gnomeregan (25-29)", "Scarlet Monestary Graveyard / Library (27-33)", "Alliance", nil, "I", nil, function()
return [[

N Level 25 Required |N|You must be at least level 25 to pick up the following quests| |QID|2928| |PL|25|

R Stormwind City |QID|2928| |N|Travel to Stormwind City (62.7, 34.5)| |Z|1453|
A Gyrodrillmatic Excavationators |QID|2928| |N|(npc:6579) in {Stormwind City} (62.7, 34.5)| |Z|1453| |NPC|6579|
A Tinkmaster Overspark |QID|2928| |N|(npc:7917) in {Stormwind City} (51.6, 48.7)| |Z|1453| |NPC|7917|

R City of Ironforge |QID|2923|  |N|Travel to {Ironforge} (18.50, 51.61)| |Z|1455| 
h Ironforge |OID|5903| |N|Speak to (npc:5111) and set hearth in {Ironforge} (18.50, 51.61)| |Z|1455| |NPC|5111|
T Tinkmaster Overspark |QID|2923| |N|(npc:7944) in {Ironforge} (69.9, 46.4)| |Z|1455| |NPC|7944|
A Save Techbot's Brain! |QID|2922|  |N|(npc:7944) in {Ironforge} (69.9, 46.4)||Z|1455| |NPC|7944|
A The Day After  |QID|2927| |N|(npc:6569) in {Ironforge} (69.9, 49.4)| |Z|1455| |NPC|6569|
A Essential Artificials |QID|2924| |N|(npc:6169) in {Ironforge} (68.6, 45.3)| |Z|1455| |NPC|6169|
A Data Rescue |QID|2930| |N|(npc:7950) in {Ironforge} (70.1, 48.3)| |Z|1455| |NPC|7950|
A The Grand Betrayal |QID|2929| |N|(npc:7937) in {Ironforge} (69.4, 49.5)| |Z|1455| |NPC|7937|

R Kharanos |QID|2926| |N|Travel to {Kharanos} (45.9, 49.3)|
T The Day After |QID|2927| |N|(npc:1268) in {Kharanos} (45.9, 49.3)| |Z|1426|
A Gnogaine |QID|2926| |N|(npc:1268) in {Kharanos} (45.9, 49.3)||Z|1426|
K (npc:6221) |QID|2930| |N|Kill (npc:6221) until you collect (item:9279) (22, 39)| |Z|1426| |L|9279| |W| |NPC|6221|

R Train Depot |QID|2962| |N|Go down the elevator to the Train Depot in Gnomeregan (22, 36.9)| |Z|1426|
N (item:9280)  |QID|2930| |N|Use the 'Matrix Punchograph 3005-A' machine in the Train Depot to get the (item:9280) (22, 32.5)| |Z|1426| |L|9280| |OBJ|2091|
C Save Techbot's Brain!  |QID|2922| |N| Kill (npc:6231) and loot (item:9277), he is located in the north part of Gnomeregan in the loading room, outside the instance, you will need to group up (20.1, 32)| |Z|1426| |NPC|6231|

R Gnomeregan |QID|2904| |N|Zone into {Gnomeregan} instance (24.32, 39.80)| |Z|1426|
C Gnogaine |QID|2926| |N|Use the (item:9283) on (npc:6213) or (npc:6329) inside the instance, use the item when their hands are glowing green| |U|9283| |DMAP|Gnomeregan_A| |NPC|6213, 6329|
N (item:9282) |N|Use the the 'Matrix Punchograph 3005 B' machine near the Clean Room to get (item:9282)| |L|9282| |QID|2930| |DMAP|Gnomeregan_A|
A A Fine Mess |QID|2904| |N|(npc:7850), In the Dormitory by the Clean Room| |DMAP|Gnomeregan_A| |NPC|7850|
C A Fine Mess |QID|2904| |N|Bring (npc:7850), to the front entrance of the dungeon, he will follow you| |DMAP|Gnomeregan_A| |NPC|7850|
N (item:9281) |N|Use the the 'Matrix Punchograph 3005 C' machine on Electrocutioner 6000's platform to get (item:9281)| |L|9281| |DMAP|Gnomeregan_A| |QID|2930|
C Data Rescue |QID|2930| |N|Use the 'Matrix Punchograph 3005 D' machine below (npc:6229) (on the lowest floor)| |DMAP|Gnomeregan_A|
C The Grand Betrayal |QID|2929| |N|Kill (npc:7800), the final boss of Gnomeregan| |DMAP|Gnomeregan_A| |NPC|7800|
C Essential Artificials |QID|2924| |N|Collect 12 (item:9278) found the ground spread throughout the instance| |DMAP|Gnomeregan_A|
C Gyrodrillmatic Excavationators |QID|2928| |N|Collect 24 (item:9309) from any NPC within the instance| |DMAP|Gnomeregan_A|
A Grime-Encrusted Ring  |QID|2945| |N|Use (item:9326) to accept quest<br/><br/>This will require level 28 to accept otherwise you can skip keep this in your inventory and accept it later| |U|9326|
T Grime-Encrusted Ring |QID|2945| |N|The Sparklematic 5200, In the Clean Zone| |DMAP|Gnomeregan_A|
A Return of the Ring |QID|2947| |N|The Sparklematic 5200, In the Clean Zone| |DMAP|Gnomeregan_A|

R Dun Morogh |N|Exit out of the instance back to Dun Morogh (45.9, 49.3)| |Z|1426| |QID|2948| |I|
T Gnogaine |QID|2926| |N|(npc:1268) in {Kharanos} (45.9, 49.3)| |Z|1426|
A The Only Cure is More Green Glow |QID|2962| |N|(npc:1268) in {Kharanos} (45.9, 49.3)| |Z|1426|

R City of Ironforge |QID|2948| |N|Travel to Ironforge (30, 66)| |Z|1455|
T Save Techbot's Brain! |QID|2922| |N|(npc:7944) in {Ironforge} (69.9, 46.4)| |Z|1455|
T Essential Artificials |QID|2924| |N|(npc:6169) in {Ironforge} (68.6, 45.3)| |Z|1455|
T Data Rescue |QID|2930||N|(npc:7950) in {Ironforge} (70.1, 48.3)| |Z|1455|
T The Grand Betrayal |QID|2929| |N|(npc:7937) in {Ironforge} (69.4, 49.5)| |Z|1455|
T Return of the Ring |QID|2947|  |Z|1455| |N|(npc:6826) in {Ironforge}) (36.0, 4.7)| |NPC|6826| |Z|1455|
A Gnome Improvement  |QID|2948| |N|(npc:6826) in {Ironforge} (36.0, 4.7)| |Z|1455|
C Gnome Improvement |QID|2948| |N|Bring a (item:2842) and (item:1206) to (npc:6826) in {Ironforge}<br/><br/>You can buy these from the auction house, it is safe to skip this quest if you're poor (36.0, 4.7}| |Z|1455|
T Gnome Improvement |QID|2948| |N|(npc:6826) in {Ironforge} (36.0, 4.7)| |Z|1455|

R Stormwind City |TID|2928| |N|Travel to {Stormwind City} (62.7, 34.5)| |Z|1453|
T Gyrodrillmatic Excavationators |QID|2928| |N|(npc:6579) in {Stormwind City} (62.7, 34.5)| |Z|1453| |NPC|6579|

R Booty Bay |TID|2904| |N|Travel to Booty Bay| |Z|1434|
T A Fine Mess |QID|2904| |N|(npc:7853) in{Booty Bay} (27.6, 77.5)| |Z|1434| |NPC|7853|

R Gnomeregan |QID|2904| |N|Zone into {Gnomeregan} instance<br/><br/>You may want to skip 'The Only Cure is More Green Glow' it's not really worth going back to Gnomeregan for 1 quest (24.32, 39.80)| |Z|1426|
C The Only Cure is More Green Glow |QID|2962| |N|Use (item:9364) on a live (npc:6219). The item has a 2 hour timer| |U|9364| |QID|2962| |NPC|6219|
T The Only Cure is More Green Glow |QID|2962| |N|(npc:1268) in {Kharanos} (45.9, 49.3)| |Z|1426|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end

