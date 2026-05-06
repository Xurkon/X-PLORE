local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_55_56_Felwood")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 50-60|r", "1448(55-56)#1448(55-56)#1448(55-56)", "1422(56-56)#1422(56-56)#1422(56-56)", "Horde", nil, "L", nil, function()
return [[

R Emerald Sanctuary |QID|4102| |N|Travel to {Emerald Sanctuary} (51.06, 81.91)| |Z|1448| 
A Forces of Jaedenar |QID|5155| |N|(npc:10922) in {Emerald Sanctuary} (51.06, 81.91)| |Z|1448| |NPC|10922|
A Verifying the Corruption |QID|5156| |N|(npc:10921) in {Emerald Sanctuary} (50.94, 81.62)| |Z|1448| |NPC|10921|
A Cleansing Felwood |QID|4102| |N|(npc:9529) in {Felwood} (46.76, 83.12)| |Z|1448| |NPC|9529|
A Timbermaw Ally (2) |QID|8460| |N|(npc:11554) in {Emerald Sanctuary} (50.94, 85.00)| |Z|1448| |NPC|11554|
C Timbermaw Ally (2) |QID|8460| |N|Kill the required Deadwood furbolg mobs in {Deadwood Village} (48.69, 92.08)| |Z|1448| |W| |NPC|7153, 7154, 7155|
T Timbermaw Ally (2) |QID|8460| |N|(npc:11554) in {Emerald Sanctuary} (50.93, 85.03)| |Z|1448| |NPC|11554|
A Speak to Nafien |QID|8462| |N|(npc:11554) in {Emerald Sanctuary} (50.93, 85.03)| |Z|1448| |NPC|11554|

R Ruins of Constellas |QID|4293| |N|Travel to {Ruins of Constellas} (40.41, 71.54)| |Z|1448|
K (npc:7086) |QID|4293| |N|Kill (npc:7086) and start collecting (item:12230), you will need about 35 total<br/><br/>Clear both pool area and collect 20 (item:12230) for now (40.41, 71.54) (40.67, 66.91)| |L|12230 20| |NPC|7086|

R Jaedenar |QID|5155| |N|Travel to {Jaedenar} (39.36, 58.17)| |Z|1448|
C Forces of Jaedenar |QID|5155| |N|Kill the required Jaedenar Satrys in {Jaedenar} (38.87, 58.76) (37.66, 61.12) (35.40, 60.27)| |Z|1448| |LOOP| |NPC|7113, 7115, 7125, 7112|
K (npc:7092) |QID|4293| |N|Kill (npc:7092) and finish collecting 35 (item:12230) in {Jaedenar} (40.00, 55.02) (40.57, 59.06)| |L|12230 35| |NPC|7092|

R Bloodvenom Post |QID|5156| |N|Travel to {Bloodvenom Post} (39.95, 50.72) (34.97, 50.46)| |Z|1448|
T A Strange One |QID|4505| |N|(npc:9996) in {Bloodvenom Post} (34.21, 52.34)| |Z|1448| |O| |NPC|9996|
A A Husband's Last Battle |QID|6162| |N|(npc:9620) in {Bloodvenom Post} (34.71, 52.77)| |Z|1448| |NPC|9620|
A Wild Guardians (1) |QID|4521| |N|(npc:10306) in {Bloodvenom Post} (34.68, 52.79)| |Z|1448| |NPC|10306|
f Bloodvenom Post |QID|5156| |N|Speak to (npc:11900) grab flight path for {Bloodvenom Post} (34.44, 53.96)| |Z|1448| |NPC|11900|

R Shatter Scar Vale |QID|5156| |N|Travel to {Shatter Scar Vale} (43.32, 74.51) (40.55, 42.80)| |Z|1448|
C Verifying the Corruption |QID|5156| |N|Kill 2 (npc:5156) and 2 (npc:9878) in {Shatter Scar Vale} (40.55, 42.80)| |W| |Z|1448| |NPC|5156, 9878|

N As you go... |AYG|4102| |QID|4120| |N|Kill 12 (npc:8957) and 12 (npc:8961)| |NPC|8957, 8961|
R Irontree Woods |QID|4102| |N|Travel to {Irontree Woods} (39.97, 34.23) (41.17, 24.88) (50.17, 14.10) (55.07, 17.71)| |Z|1448|
C Cleansing Felwood |QID|4102| |N|Kill (npc:7100) and collect 15 (item:11503) in {Irontree Woods}, (low drop rate) (55.19, 17.72)| |Z|1448| |W| |NPC|7100|
R Irontree Woods |QID|4102| |N|Travel to {Irontree Woods} (55.07, 17.71)| |Z|1448|
C The Strength of Corruption |QID|4120| |N|Kill 12 (npc:8957) and 12 (npc:8961) in {Irontree Woods} (51.30, 12.29) (55.76, 22.00) (56.76, 24.96)| |Z|1448| |LOOP| |NPC|8957, 8961|

R Timbermaw Hold |QID|8461| |N|Travel to {Timbermaw Hold} (64.75, 8.14)| |Z|1448|
A Deadwood of the North |QID|8461| |N|(npc:15395) in {Timbermaw Hold} (64.75, 8.14)| |Z|1448| |NPC|15395|
C Deadwood of the North |QID|8461| |N|Kill the required Deadwood Timbermaw in {Felpaw Village} (62.89, 11.29) (62.69, 7.86) (61.37, 7.42)| |Z|1448| |LOOP| |NPC|7158, 7157, 7156|
N (fac:576) |QID|8465| |N|Keep grinding until you're 150 XP to Unfriendly status with (fac:576) (62.89, 11.29) (62.69, 7.86) (61.37, 7.42)| |Z|1448| |LOOP| |FS|576, -3150| |NPC|7158, 7157, 7156|
T Deadwood of the North |QID|8461| |N|(npc:15395) in {Timbermaw Hold} (64.77, 8.17)| |Z|1448| |NPC|15395|
T Deadwood of the North |QID|8461| |N|(npc:15395) in {Timbermaw Hold} (64.40, 14.79) (64.76, 8.19)| |Z|1448| |NPC|15395|
A Speak to Salfa |QID|8465| |N|(npc:15395) in {Timbermaw Hold} (64.76, 8.19)| |Z|1448| |NPC|15395|

R Moonglade |TID|5249| |N|Travel to {Moonglade} (35.76, 72.41)| |Z|1450|
f Moonglade |TID|5249| |N|Speak to (npc:12740) and grab flight path for {Moonglade} (32.14, 66.54)| |Z|1450| |NPC|12740|

R Bloodvenom Post |QID|5157| |N|Travel to {Bloodvenom Post} (34.72, 52.75)| |Z|1448|
T Wild Guardians (1) |QID|4521| |N|(npc:10306) in {Bloodvenom Post} (34.72, 52.75)| |Z|1448| |O| |NPC|10306|
A Well of Corruption |QID|4505| |N|(npc:9996) in {Bloodvenom Post} (34.21, 52.34)| |Z|1448| |NPC|9996|

R Emerald Sanctuary |OID|5157| |N|Travel to {Emerald Sanctuary} (37.15, 49.69) (41.33, 51.44) (43.30, 67.13) (43.55, 74.98) (46.75, 83.13)| |Z|1448| |REACH|
T Cleansing Felwood |QID|4102| |N|(npc:9529) in {Felwood} (46.75, 83.13)| |Z|1448| |O| |NPC|9529|
N (item:11511) |QID|5882| |N|Speak to (npc:9529) to get (item:11511) (46.75, 83.13)| |Z|1448| |L|11511| |PRE|4102|
T Forces of Jaedenar |QID|5155| |N|(npc:10922) in {Emerald Sanctuary} (51.20, 82.10)| |Z|1448| |O| |NPC|10922|
A Collection of the Corrupt Water |QID|5157| |N|(npc:10922) in {Emerald Sanctuary} (51.20, 82.10)| |Z|1448| |PRE|5155| |NPC|10922|
T Verifying the Corruption |QID|5156| |N|(npc:10921) in {Emerald Sanctuary} (50.90, 81.63)| |Z|1448| |O| |NPC|10921|
A Speak to Nafien |QID|8462| |N|(npc:11554) in {Emerald Sanctuary} (50.93, 85.03)| |Z|1448| |NPC|11554|

N As you go... |AYG|5157| |QID|5882| |N|Collect 6 (item:11515) dropped from any mobs in {Felwood}| |L|11515 6|
R Ruins of Constellas |QID|4505| |N|Travel to {Ruins of Constellas} (38.84, 66.79)| |Z|1448|
C Well of Corruption |QID|4505| |N|Use (item:12566) next to the Jadefire Satyrs' moonwell in {Ruins of Constellas} (38.84, 66.79) (32.28, 66.56)| |Z|1448| |U|12566|

R Jaedenar |QID|5157| |N|Travel to {Jaedenar} (39.07, 67.56) (42.12, 63.44) (41.27, 59.93)| |Z|1448|
C Collection of the Corrupt Water |QID|5157| |N|Use (item:12922) next to the Corrupt Moonwell in {Jaedenar}(41.27, 59.93) (38.57, 59.02) (35.17, 59.77)| |Z|1448| |U|12922|
N (item:11515) |QID|5882| |N|Collect 6 (item:11515) dropped from any mobs in {Felwood}, you need to turn in 'Salve by Hunting' quest| |L|11515 6| |PRE|4102|
T Salve via Hunting |QID|5882| |N|(npc:9529) in {Felwood} (46.75, 83.13)| |Z|1448| |E| |PRE|4102| |NPC|9529|

R Bloodvenom Post |QID|4506| |N|Travel to {Bloodvenom Post} (38.61, 59.04) (37.37, 49.65) (34.73, 50.68)| |Z|1448|
T Well of Corruption |QID|4505| |N|(npc:9996) in {Bloodvenom Post} (34.21, 52.32)| |Z|1448| |NPC|9996|
A Corrupted Sabers |QID|4506| |N|(npc:9996) in {Bloodvenom Post} (34.21, 52.32)| |Z|1448| |NPC|9996|
T A Husband's Last Battle |QID|6162| |N|(npc:9620) in {Bloodvenom Post} (34.80, 52.71)| |Z|1448| |NPC|9620|

R Emerald Sanctuary |TID|5157| |N|Travel to {Emerald Sanctuary} (35.47, 49.86) (41.37, 51.65) (43.61, 75.06) (51.21, 82.10)| |Z|1448| 
T Collection of the Corrupt Water |QID|5157| |N|(npc:10922) in {Emerald Sanctuary} (51.21, 82.10)| |Z|1448| |NPC|10922|

R Ruins of Constellas |QID|4506| |N|Travel to {Ruins of Constellas} (43.26, 70.27) (38.20, 66.71)| |Z|1448|
N (item:12565) |QID|4506| |N|Use (item:12565) near the greeen moonwell and you should get a (npc:10042) to follow you<br/><br/>Tick this step (32.43, 66.55)| |Z|1448| |U|12565| |NPC|10042|
C Corrupted Sabers |QID|4506| |N|Bring (npc:10042) back to (npc:9996) in {Bloodvenom Post} (38.37, 66.70) (42.12, 64.54) (37.68, 49.80) (35.15, 50.29) (34.21, 52.37)| |Z|1448| |NPC|9996|
T Corrupted Sabers |QID|4506| |N|(npc:9996) in {Bloodvenom Post} (34.21, 52.37)| |Z|1448| |NPC|9996|

R Felpaw Village |QID|5085| |N|Travel to {Felpaw Village} (39.53, 45.63) (41.23, 24.13) (51.53, 13.57) (61.81, 14.80) (60.20, 5.88)| |Z|1448|
T Falling to Corruption |QID|5084| |N|Deadwood Cauldron in {Felpaw Village} (60.20, 5.88)| |Z|1448| |OBJ|216|
A Mystery Goo |QID|5085| |N|Deadwood Cauldron in {Felpaw Village} (60.20, 5.88)| |Z|1448| |OBJ|216|
N Level 56 Required |N|Grind Felpaw furbolg until you reach level 56 (62.89, 11.29) (62.69, 7.86) (61.37, 7.42)| |Z|1448| |LOOP| |NPC|7158, 7157, 7156|

R Frostfire Hot Springs |TID|8464| |N|Travel to {Frostfire Hot Springs} in {Winterspring} (27.75, 34.58)| |Z|1452| |REACH|
T Winterfall Activity |QID|8464| |N|(npc:11556) in {Frostfire Hot Springs} (27.75, 34.58)| |Z|1452| |NPC|11556|
T Mystery Goo |QID|5085| |N|(npc:9298) in {Frostfire Hot Springs} (31.27, 45.15)| |Z|1452| |NPC|9298|
A Toxic Horrors |QID|5086| |N|(npc:9298) in {Frostfire Hot Springs} (31.27, 45.15)| |Z|1452| |NPC|9298|

N Guide Complete |N|Tick to continue to the next guide| 

]]
end, {image = "felwood.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end

