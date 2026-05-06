local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Classic_Timbermaw_Rep")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("Classic Reputation", "Timbermaw Hold Reputation (50+)", nil, "Horde", nil, "A", nil, function()
return [[

N Please Read! |N|The Timbermaw Reputation is a part of the Diplomat Achievement. Once all the quest are done for a particular faction, then is just grinding out the repeatable turn-ins to get to Exalted|
N Low Level Quests |N|Make sure you are traking low level quests to make it easier to see the quests givers.|

N 30 (item:14047) |N|You will need 30 Runecloth for a rep turn-in with the Timbermaw, hold on to this until you reach Revered| |L|14047 30|

R Felwood |N|Travel to Felwood (51.0, 85.0)| |Z|77| 
N Save Feathers |N|Save all the (item:21377) that drop, don't turn them in until you are revered. tick this step|

A Timbermaw Ally |N|(npc:11554) (51.0, 85.0)| |Z|77| |QID|8460| |NPC|11554|
C Timbermaw Ally |N|(npc:11554) wants you to prove yourself by killing 6 (npc:7153), 6 (npc:7155), and 6 (npc:7154) (47.4, 92.8)| |Z|77| |QID|8460| |NPC|7153, 7155, 7154|
T Timbermaw Ally |N|(npc:11554) (51.0, 85.0)| |Z|77| |QID|8460| |NPC|11554|
A Speak to Nafien |N|(npc:11554) (51.0, 85.0)| |Z|77| |QID|8462| |NPC|11554|
T Speak to Nafien |N|(npc:15395) (64.8, 8.2)| |Z|77| |QID|8462| |NPC|15395|
A Deadwood of the North |N|(npc:15395) (64.8, 8.2)| |Z|77| |QID|8461| |NPC|15395|
C Deadwood of the North |N|Kill 6 (npc:7156), 6 (npc:7157), and 6 (npc:7158)| |Z|77| |QID|8461| |NPC|7156, 7157, 7158|
T Deadwood of the North |N|(npc:15395) (64.8, 8.2)| |Z|77| |QID|8461| |NPC|15395|
A Speak to (npc:11556) |N|(npc:15395) (64.8, 8.2)| |Z|77| |QID|8465| |NPC|15395|

N Unfriendly |N|Make sure you are at least Unfriendly with Timbermaw, if not, kill more Deadwood Furbolg until you are|

R Winterspring |N|Run through Timbermaw tunnel to Winterspring (27.8, 34.5)| |Z|83|
T Speak to (npc:11556) |N|(npc:11556) (27.8, 34.5)| |Z|83| |QID|8465| |NPC|11556|
A Winterfall Activity |N|(npc:11556) (27.8, 34.5)| |Z|83| |QID|8464| |NPC|11556|
C Winterfall Activity |N|Kill 8 (npc:7439), 8 (npc:7440), and 8 (npc:7438) (29.7, 36.8)(39.8, 42.8)(67.2, 35.3)| |Z|83| |QID|8464| |NPC|7439, 7440, 7438|
T Winterfall Activity |N|(npc:11556) (27.8, 34.5)| |Z|83| |QID|8464| |NPC|11556|
N (item:20742) |N|Keep killing Winterfall Furbolgs until (item:20742) drops| |L|20742|

N (item;207421) |N|Keep killing Deadwood Furbolgs (62.3, 9.2) until (item:207421) drops.| |L|207421| |Z|77| 
A Deadwood Ritual Totem |N|Use (item:20741)| |QID|8470| |U|20741|
A Winterfall Ritual Totem |N|Use (item:20742)| |QID|8471| |U|20742|

N Timbermaw Rep Grind |N|Kill Deadwood mobs until revered. Keep all the feathers up to 290.  If you have more than 290 turn them in for rep prior to Revered. Once you hit Revered, move on to the next step|

N Turn in all Feathers |N|(npc:15395) (64.8, 8.2)| |Z|77| |QID|8467| |NPC|15395|
T Deadwood Ritual Totem |N|(npc:11558) (65.3, 1.4). Inside the Timbermaw Tunnel| |Z|77| |QID|8470| |NPC|11558|
T Winterfall Ritual Totem |N|(npc:11558) (65.3, 1.4). Inside the Timbermaw Tunnel| |Z|77| |QID|8471| |NPC|11558|
A Runecloth |N|(npc:11557) (65.7, 2.9). Inside the Timbermaw Tunnel| |Z|77| |QID|6031| |NPC|11557|
T Runecloth |N|(npc:11557) (65.7, 2.9). Inside the Timbermaw Tunnel| |Z|77| |QID|6031| |NPC|11557|

N Continue Until Exalted |N|Continue grinding to Exalted if you aren't already|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end
