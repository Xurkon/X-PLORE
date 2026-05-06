local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_38_38_Dustwallow_Marsh")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 30-40|r", "1445(38-38)#1445(38-38)#1445(38-38)", "1434(38-40)#1434(38-40)#1434(38-40)", "Horde", nil, "L", nil, function()
return [[

R Thunder Bluff |QID|1205| |N|Travel to {Thunder Bluff} (40.2, 27.5)| |Z|1456|
B (item:3713) |QID|1218| |N|Buy 3 (item:3713) from (npc:3027) in {Thunder Bluff}, you need this for a later quest (50.4, 51.4)| |Z|1456| |L|3713 3| |NPC|3027|
T Frostmaw |QID|1136| |N|(npc:3441) in {Hunter's Rise} (61.4, 80.6)| |Z|1456| |O| |NPC|3441|
A Deadmire |QID|1205| |N|(npc:3441) in {Hunter's Rise} (61.4, 80.6)| |Z|1456| |PRE|1136| |NPC|3441|
N (item:5827) |QID|1106| |N|Store (item:5827) at the bank<br/><br/>Tick this step (47.4, 58.8)| |Z|1456| |L|5827| |O| |NPC|2996| -- Thunder Bluff

R Dustwallow Marsh |QID|1268| |N|Run east to Dustwallow Marsh (29.7, 47.7)| |Z|1445|
A Suspicious Hoofprints |QID|1268| |N|Click on hoofprints outside {Shady Rest Inn} on the ground (29.7, 47.7)| |Z|1445|
A Lieutenant Paval Reethe |QID|1269| |N|Theramore Guard Badge in {Shady Rest Inn}, Laying on the planks on the ground (29.8, 48.2)| |Z|1445|
A The Black Shield (1) |QID|1251| |N|Black Shield in {Shady Rest Inn}, hangs above the fireplace (29.8, 48.1)| |Z|1445|

R Brackenwall Village |QID|1321| |N|Travel to {Brackenwall Village} (33.49, 38.76) (34.39, 30.68) (35, 29)| |Z|1445|
T The Black Shield (1) |QID|1251| |N|(npc:4926) in {Brackenwall Village} (36.42, 31.82)| |Z|1445| |NPC|4926|
A The Black Shield (2) |QID|1321| |N|(npc:4926) in {Brackenwall Village} (36.42, 31.82)| |Z|1445| |NPC|4926|
T Suspicious Hoofprints |QID|1268| |N|(npc:4926) in {Brackenwall Village} (36.42, 31.82)| |Z|1445| |NPC|4926|
T Lieutenant Paval Reethe |QID|1269| |N|(npc:4926) in {Brackenwall Village} (36.42, 31.82)| |Z|1445| |NPC|4926|
T The Black Shield (2) |QID|1321| |N|(npc:5087) in {Brackenwall Village} (36.54, 30.86)| |Z|1445| |NPC|5087|

R Dustwallow Marsh |QID|1201| |N|Travel to {Brackenwall Village} (35.26, 30.63)|
A Theramore Spies |QID|1201| |N|(npc:4791) in {Brackenwall Village} (35.26, 30.63)| |NPC|4791|
A The Black Shield (3) |QID|1322| |N|(npc:5087) in {Brackenwall Village} (36.45, 30.85)| |NPC|5087|
A Hungry! |QID|1177| |N|(npc:4503) in {Dustwallow Marsh} (35.08, 38.29)| |NPC|4503|

N As you go... |AYG|1177| |QID|1201| |N|Look out for stealth (npc:4834) and kill 9 of them| |NPC|4834, 4413|
C The Black Shield (3) |QID|1322| |N|Kill (npc:4413) or (npc:4834) for 6 (item:5959) from the spiders at the in {Bluefen} (33, 22)| |W| |NPC|4834, 4413|

R Dreadmurk Shore |QID|1177| |N|Travel to {Dreadmurk Shore} (57.46, 16.47)| 
C Hungry! |QID|1177| |N|Kill the Murlocs and collect 8 (item:5847) in {Dreadmurk Shore} (57.46, 16.47)| |W| |NPC|4360, 4361, 4362, 4359|

R Swamplight Manor |QID|1218| |N|Travel to {Swamplight Manor} (54.02, 18.81) (56.13, 23.52) (55.43, 26.33)| 
A Marsh Frog Legs |QID|1218| |N|(npc:4792) in {Swamplight Manor} (55.43, 26.33)| |NPC|4792|
C (item:33202) |QID|1218| |N|Kill (npc:23979) and collect 10 (item:33202) (55.52,24.96)| |L|33202 10| |NPC|23979|
T Marsh Frog Legs |QID|1218| |N|(npc:4792) in {Swamplight Manor} (55.43, 26.33)| |NPC|4792|
A Jarl Needs Eyes |QID|1206| |N|(npc:4792) in {Swamplight Manor} (55.43, 26.33)| |NPC|4792|
A The Lost Report |QID|1238| |N|Loose dirt in {Swamplight Manor} (55.39, 25.91)| |OBJ|498|

A Stinky's Escape |QID|1270| |N|(npc:4880) in {Dustwallow Marsh} (53.22, 26.00) (46.86, 22.81) (46.91, 17.53)| |NPC|4880|
C Stinky's Escape |QID|1270| |N|Escort (npc:4880) in {Dustwallow Marsh} (46.7, 17.0)| |NPC|4880|

N As you go... |AYG|1206| |QID|1201| |N|Look out for stealth (npc:4834) and kill 9 of them| |NPC|4834, 4376, 4378|
C Jarl Needs Eyes |QID|1206| |N|Kill spiders and collect 40 (item:5884) in {Darkmist Cavern} (33.77, 22.79)| |NPC|4376, 4378|

R Brackenwall Village |QID|1206| |N|Travel to {Brackenwall Village} (43, 30)|
C Theramore Spies |QID|1201| |N|Kill 9 (npc:4834). They are stealthed enemies around {Brackenwall Village} (43, 30)| |W| |NPC|4834|
T Theramore Spies |QID|1201| |N|(npc:4791) in {Brackenwall Village} (35.26, 30.63)| |NPC|4791|
A The Theramore Docks |QID|1202| |N|(npc:4791) in {Brackenwall Village} (35.26, 30.63)| |NPC|4791|
T The Lost Report |QID|1238| |N|(npc:4791) in {Brackenwall Village} (35.26, 30.63)| |NPC|4791|
T Hungry! |QID|1177| |N|(npc:4503) in {Dustwallow Marsh} (35.08, 38.29)| |NPC|4503|
T The Black Shield (3) |QID|1322| |N|(npc:5087) in {Brackenwall Village} (36.56, 30.88)| |NPC|5087|
A The Black Shield (4) |QID|1323| |N|(npc:5087) in {Brackenwall Village} (36.56, 30.88)| |NPC|5087|
T The Black Shield (4) |QID|1323| |N|(npc:4926) in {Brackenwall Village} (36.42, 31.78)| |NPC|4926|

--C Deadmire |QID|1205| |N|Kill (npc:4841) and loot (item:5945). He roams around (47, 57)| |W|

R Swamplight Manor |QID|1239| |N|Travel to {Swamplight Manor} (55.38, 25.91) (55.5, 26.0)|
A The Severed Head |QID|1239| |N|Loose Dirt in {Swamplight Manor} (55.38, 25.91) (55.5, 26.0)|
T Jarl Needs Eyes |QID|1206| |N|(npc:4792) in {Swamplight Manor} (55.43, 26.33)| |NPC|4792|
A Jarl Needs a Blade |QID|1203| |N|(npc:4792) in {Swamplight Manor} (55.43, 26.33)| |L|3853| |O| |NPC|4792| 
T Jarl Needs a Blade |QID|1203| |N|(npc:4792) in {Swamplight Manor} (55.43, 26.33)| |O| |NPC|4792|

R Theramore Isle |QID|1202| |N|Travel to {Theramore Isle} (57.67, 32.66) (60.78, 39.59) (68.91, 44.68)|
C The Theramore Docks |QID|1202| |N|Get the (item:5882) from under the eastern pier at Theramore. Watch out for the shark! (71, 51)|

R Brackenwall Village |OID|1240| |N|Travel to {Brackenwall Village} (36.56, 30.88)| 
T The Theramore Docks |QID|1202| |N|(npc:4791) in {Brackenwall Village} (35.26, 30.63)| |NPC|4791|
T The Severed Head |QID|1239| |N|(npc:4791) in {Brackenwall Village} (35.26, 30.63)| |NPC|4791|
A The Troll Witchdoctor |QID|1240| |N|(npc:4791) in {Brackenwall Village} (35.26, 30.63)| |NPC|4791|

--T Deadmire |QID|1205| |N|(npc:3441) in {Hunter's Rise} (61.4, 80.6)| |Z|1456| |O| |NPC|3441|

R Ratchet |TID|1270| |Travel to {Ratchet} (62.40, 37.64)| |Z|1413|
T Stinky's Escape |QID|1270| |N|(npc:3446) in {Ratchet} (62.40, 37.64)| |Z|1413| |NPC|3446|
N (item:4502) |QID|5762| |N|Withdraw (item:4502) from the bank<br/><br/>Tick this step (62.6, 37.4)| |Z|1413| |L|4502| |OO| |NPC|3496|

N Guide Complete |N|Tick to continue to the next guide| 

]]
end, {image = "dustwallowmarsh.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end

