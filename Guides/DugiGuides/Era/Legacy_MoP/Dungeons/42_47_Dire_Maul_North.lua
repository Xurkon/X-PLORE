local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Horde_En_42_47_Dire_Maul_North")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Azeroth 1-60|r", "234(42-47 Gordok Commons)", "765(42-47 Main Gate)", "Horde", nil, "I", nil, function()
return [[

N Tribute Run... |N|To complete a tribute run you must avoid killing ALL bosses and kill only King Gordok. This guide shows you the steps to complete a tribute run, which will reward you with more items and quest rewards at the end of the run, tick this step|

R Dire Maul North |N|Queue/Zone into {Dire Maul} North (62.44, 24.90)| |I| |QID|27128| |Z|69| |F|235| |WR|
A King of the Gordok |N|(npc:45052) (71.6, 92.2)| |QID|27128| |Z|235| |NPC|45052|
-- N (item:18266) |N|Avoid (npc:14321) and collect the Gordok Courtyard Key from the chest (60.3, 87.7) (59.8, 78) (49.35, 78.41), only 1 player needs to get the key a stealth class is ideal to sneak in and steal the key| |QID|27119| |T| |L|18266| |Z|235| |NPC|14321| |OBJ|41|
A The Gordok Ogre Suit |N|(npc:14338) (29.1, 77.4) (28.5, 55.5)| |QID|27119| |Z|235| |NPC|14338|
T A Broken Trap |N|Use the Broken Trap to trap the boss and avoid killing him (26.6, 58.3)| |QID|27118| |Z|235| |OBJ|5712|
C The Gordok Ogre Suit |N|Get an (item:18240) from the basket upstairs (23.3, 66.2) (23.3, 55.4)| |QID|27119| |Z|235| |OBJ|468|
T The Gordok Ogre Suit |N|(npc:14338) (28.5, 55.5)| |QID|27119| |Z|235| |NPC|14338|
N Speak to Captain Kromcrush |N|Put on the (item:18258) and speak with (npc:14325) (23.3, 66.2) (23.3, 55.4) (28.4, 65.6) (37.1, 64.6) (31.74, 48.77), tick this step| |QID|27124| |U|18258| |Z|235| |NPC|14325|
C King of the Gordok |N|Kill (npc:11501) (31.70, 26.02)| |QID|27128| |Z|235| |NPC|11501|
N Speak to Mizzle the Crafty |N|Speak with (npc:14353) (31.76, 27.48) to collect the loot, tick this step| |QID|27124| |Z|235| |NPC|14353|

A Unfinished Gordok Business |N|(npc:14325) (31.6, 65.2) (26.9, 69.1) (209.1, 76.6) (49.4, 78)| |QID|27124| |Z|235| |NPC|14325|
A The Gordok Taste Test |N|(npc:14322) (62.6, 66.3)| |QID|27114| |Z|235| |E| |NPC|14322|
T Unfinished Gordok Business |N|(npc:14326) (69.8, 75.9)| |QID|27124| |Z|235| |NPC|14326|
T King of the Gordok |N|(npc:45052) (71.6, 92.2)| |QID|27128| |Z|235| |NPC|45052|

N Guide Complete 

]]
end)	end
	
	function Guide:Unload()
	end
end
