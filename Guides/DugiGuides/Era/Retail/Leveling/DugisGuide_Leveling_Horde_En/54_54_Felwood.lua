local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_54_54_Felwood")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 50-60|r", "1448(54-54)#1448(54-54)#1448(54-54)", "1452(54-55)#1452(54-55)#1452(54-55)", "Horde", nil, "L", nil, function()
return [[

R Emerald Sanctuary |QID|4102| |N|Travel to {Emerald Sanctuary} (51.06, 81.91)| |Z|1448| 
A Forces of Jaedenar |QID|5155| |N|(npc:10922) in {Emerald Sanctuary} (51.06, 81.91)| |Z|1448| |NPC|10922|
A Verifying the Corruption |QID|5156| |N|(npc:10921) in {Emerald Sanctuary} (50.94, 81.62)| |Z|1448| |NPC|10921|
A Cleansing Felwood |QID|4102| |N|(npc:9529) in {Felwood} (46.76, 83.12)| |Z|1448| |NPC|9529|
A Timbermaw Ally (1) |QID|6131| |N|(npc:11554) in {Emerald Sanctuary} (50.94, 85.00)| |Z|1448| |NPC|11554|
C Timbermaw Ally (1) |QID|6131| |N|Kill the required Deadwood furbolg mobs in {Deadwood Village} (48.69, 92.08)| |Z|1448| |W| |NPC|7153, 7154, 7155|
T Timbermaw Ally (1) |QID|6131| |N|(npc:11554) in {Emerald Sanctuary} (50.93, 85.03)| |Z|1448| |NPC|11554|
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
C Cleansing Felwood |QID|4102| |N|Kill (npc:7100), (npc:7101) and collect 15 (item:11503) in {Irontree Woods}, (low drop rate) (55.19, 17.72)| |Z|1448| |W| |NPC|7100, 7101|
R Irontree Woods |QID|4102| |N|Travel to {Irontree Woods} (55.07, 17.71)| |Z|1448|
C The Strength of Corruption |QID|4120| |N|Kill 12 (npc:8957) and 12 (npc:8961) in {Irontree Woods} (51.30, 12.29) (55.76, 22.00) (56.76, 24.96)| |Z|1448| |LOOP| |NPC|8957, 8961|

R Timbermaw Hold |QID|8461| |N|Travel to {Timbermaw Hold} (64.75, 8.14)| |Z|1448|
A Deadwood of the North |QID|8461| |N|(npc:15395) in {Timbermaw Hold} (64.75, 8.14)| |Z|1448| |NPC|15395|
C Deadwood of the North |QID|8461| |N|Kill the required Deadwood Timbermaw in {Felpaw Village} (62.89, 11.29) (62.69, 7.86) (61.37, 7.42)| |Z|1448| |LOOP| |NPC|7158, 7157, 7156|
N (fac:576) |QID|8465| |N|Keep grinding until you're 150 XP to Unfriendly status with (fac:576) (62.89, 11.29) (62.69, 7.86) (61.37, 7.42)| |Z|1448| |LOOP| |FS|576, -3150| |NPC|7158, 7157, 7156|
T Deadwood of the North |QID|8461| |N|(npc:15395) in {Timbermaw Hold} (64.40, 14.79) (64.76, 8.19)| |Z|1448| |NPC|15395|
A Speak to Salfa |QID|8465| |N|(npc:15395) in {Timbermaw Hold} (64.76, 8.19)| |Z|1448| |NPC|15395|

R Moonglade |TID|5249| |N|Travel to {Moonglade} (35.76, 72.41)| |Z|1450|
f Moonglade |TID|5249| |N|Speak to (npc:12740) and grab flight path for {Moonglade} (32.14, 66.54)| |Z|1450| |NPC|12740|

N Guide Complete |N|Tick to continue to the next guide| 

]]
end, {image = "felwood.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end

