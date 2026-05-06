local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Horde_En_36_41_Dire_Maul_East")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Azeroth 1-60|r", "234(36-41 Warpwood Quarter)", "Scholomance (38-44)", "Horde", nil, "I", nil, function()
return [[

R Dire Maul East |N|Queue/Zone into {Dire Maul} East (64.83, 30.29)| |I| |QID|27103| |Z|121| |F|239| |WR|
A Lethtendris's Web |N|(npc:44971) (7.0, 36.7)| |QID|27108| |Z|239| |NPC|44971|
A Pusillin The Thief |N|(npc:44971) (7, 36.7)| |QID|27107| |Z|239| |NPC|44971|
A (npc:11492) |N|(npc:44969) (10.2, 37.9)| |QID|27104| |Z|239| |NPC|44969|
A An Unwelcome Guest |N|(npc:44969) (10.2, 37.9)| |QID|27105| |Z|239| |NPC|44969|
A Shards of the Felvine |N|(npc:44969) (11, 39)| |QID|27103| |Z|239| |NPC|44969|

N Talk to Pusillin |N|Talk to (npc:14354) (12.2, 31.4), tick this step| |QID|27107| |Z|239| |NPC|14354|
C Pusillin The Thief |N|Talk to (npc:14354) (12.1, 75.9) (21.93, 75.84) (32.1, 72.8) (32.31, 27.06) (54.6, 26.2) (57.6, 37.4) (66.34, 37.77) (75.82, 45.20) then you have to chase him through the instance before you can kill him. Once you've talked to him 4 times, he'll run up some stairs, talk to him a final time and he summons about 6 imps to attack you. Collect the (item:18261) once he's dead| |QID|27107| |Z|239| |NPC|14354|
C Lethtendris's Web |N|Kill (npc:14327) (57.6, 37.4) (54.6, 26.2) (43.7, 66.4) (43.72, 26.12) (44.2, 46.4) and collect (item:18426)| |QID|27108| |Z|239| |NPC|14327|

R The Shrine of Eldretharr |N|Go downstairs to {The Shrine of Eldretharr} (48.1, 63.1)| |QID|27105| |Z|239| |F|240|
C An Unwelcome Guest |N|Kill the water elemental (npc:13280) (55.25, 73.92) and collect the (item:18299)| |QID|27105| |Z|240| |NPC|13280|
K (npc:11490) |N|Someone needs to talk to Ironbark in the Conservatory to open the door for you to get to (npc:11490) and kill him. If the group goes along the wall you don't have to kill much trash NPC (57.7, 55.1) (60.1, 51.6) (62, 55.3) (61.9, 68.9) (59.7, 69.5) (58, 73)| |QID|27104.1| |Z|240| |NPC|11491, 11490|
K (npc:11492) |N|Kill (npc:11492) (52.9, 73.9) (52.7, 90.6) (49, 90.2) (49, 49.5) (40.1, 48.7) (41.4, 29.3) (56.6, 27.6)| |QID|27104.2| |Z|240| |NPC|11492|
N (item:18501) |N|Collect a (item:18501) on the ground next to the plant behind Allzin the Windshaper (55.25, 27.01)| |QID|27103| |Z|240| |L|18501| |T| |OBJ|5746|
C Shards of the Felvine |N|Use the (item:18539) to capture a Felvine Shard. The shards are on the ground next to the plant behind Allzin the Windshaper, they are red. The shard will create the (item:18540)| |QID|27103| |U|18539| |Z|240| |OBJ|5746|

R Feralas |N|Follow the tunnel to exit out to feralas (53.3, 27.1) (44.4, 25.6) (38.9, 29.1) (35.3, 41.9) (28.3, 46.2)| |Z|240|
R Warpwood Quarter |N|Zone into {Warpwood Quarter}, {Dire Maul} (East) (64.39, 27.66) (64.15, 30.38) (64.85, 30.23)| |Z|121|
T Lethtendris's Web |N|(npc:44971) (7.0, 36.7)| |QID|27108| |Z|239| |NPC|44971|
T Pusillin The Thief |N|(npc:44971) (7, 36.7)| |QID|27107| |Z|239| |NPC|44971|
T (npc:11492) |N|(npc:44969) (10.2, 37.9)| |QID|27104| |Z|239| |NPC|44969|
T An Unwelcome Guest |N|(npc:44969) (10.2, 37.9)| |QID|27105| |Z|239| |NPC|44969|
T Shards of the Felvine |N|(npc:44969) (11, 39)| |QID|27103| |Z|239| |NPC|44969|

N Guide Complete 

]]
end)	end
	
	function Guide:Unload()
	end
end
