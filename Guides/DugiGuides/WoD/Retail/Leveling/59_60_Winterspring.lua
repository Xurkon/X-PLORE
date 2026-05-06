local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_59_60_Winterspring")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 50-60|r", "1452(59-60)#1452(59-60)#1452(59-60)", nil, "Horde", nil, "L", nil, function()
return [[

T Wild Guardians (2) |QID|4521| |N|(npc:10306) in {Bloodvenom Post} (34.72, 52.77)| |Z|1448| |O| |NPC|10306|
R Bloodvenom Post |QID|4741| |N|Travel to {Bloodvenom Post} (34.72, 52.77)| |Z|1448| |PRE|4521| 
A Wild Guardians (2) |QID|4741| |N|(npc:10306) in {Bloodvenom Post} (34.72, 52.77)| |Z|1448| |PRE|4521| |NPC|10306|

R Irontree Woods |QID|5086| |N|Travel to {Irontree Woods} (49.60, 26.06)| |Z|1448| |O|
C Toxic Horrors |QID|5086| |N|Kill (npc:7132) and collect 3 (item:12822) in {Irontree Woods} (49.60, 26.06)| |Z|1448| |O| |NPC|7132|
T Speak to Nafien |QID|8462| |N|(npc:11878) in {Timbermaw Hold} (64.76, 8.15)| |Z|1448| |O| |NPC|11878|

R Nighthaven |TID|6844| |N|Travel to {Nighthaven} (44.88, 35.58)| |Z|1450| |O|
T Umber, Archivist |QID|6844| |N|(npc:11939) in {Nighthaven} (44.88, 35.58)| |Z|1450| |O| |NPC|11939|
A Uncovering Past Secrets |QID|6845| |N|(npc:11939) in {Nighthaven} (44.83, 35.71)| |Z|1450| |PRE|6844| |NPC|11939|
T A Reliquary of Purity |QID|5527| |N|(npc:11801) in {Nighthaven} (51.69, 45.03)| |Z|1450| |O| |NPC|11801|
T Uncovering Past Secrets |QID|6845| |N|(npc:11801) in {Nighthaven} (51.69, 45.03)| |Z|1450| |PRE|6844| |NPC|11801|
T Under the Chitin Was... |QID|1185| |N|(npc:11939) in {Nighthaven} (44.83, 35.71)| |Z|1450| |E| |PRE|6845| |NPC|11939|

R Frostfire Hot Springs |TID|5086| |N|Travel to {Frostfire Hot Springs} in {Winterspring} (31.28, 45.17)| |Z|1452| |O| |REACH|
T Toxic Horrors |QID|5086| |N|(npc:9298) in {Frostfire Hot Springs} (31.28, 45.17)| |Z|1452| |O| |NPC|9298|
A Winterfall Runners |QID|5087| |N|(npc:9298) in {Frostfire Hot Springs} (31.28, 45.17)| |Z|1452| |PRE|5086| |NPC|9298|
C Winterfall Runners |QID|5087| |N|Find (npc:10916) along the road and kill them to collect (item:12829) (30.67, 42.62) (40.23, 40.80) (48.10, 39.05) (53.39, 34.42)| |Z|1452| |PRE|5086| |NPC|10916|

R Everlook |QID|5054| |N|Travel to {Everlook} (60.89, 37.64)| |Z|1452|
T Are We There, Yeti? |QID|5163| |N|(npc:10305) in {Everlook} (60.89, 37.64)| |Z|1452| |O| |NPC|10305|
T A Yeti of Your Own |QID|8798| |N|(npc:10305) in {Everlook} (60.89, 37.64)| |Z|1452| |PRE|5163| |NPC|10305|
T Felnok Steelspring |QID|4808| |N|(npc:10468) in {Everlook} (61.62, 38.61)| |Z|1452| |O| |NPC|10468|
A Chillwind Horns |QID|4809| |N|(npc:10468) in {Everlook} (61.62, 38.61)| |Z|1452| |PRE|4808| |NPC|10468|
--A A Little Luck |QID|6606| |N|(npc:11755) in {Everlook} (61.13, 38.44)| |Z|1452| |NPC|11755|
T A Little Luck |QID|6606| |N|(npc:10307) in {Everlook} (61.92, 38.30)| |Z|1452| |O| |NPC|10307|
A Luck Be With You |QID|969| |N|(npc:10307) in {Everlook} (61.91, 38.36)| |Z|1452| |PRE|6606| |NPC|10307|
A Ursius of the Shardtooth |QID|5054| |N|(npc:10303) in {Everlook} (61.91, 38.36)| |Z|1452| |NPC|10303|
h Everlook |QID|5054| |N|Speak to (npc:11118) and set hearth in {Everlook} (61.34, 38.82)| |Z|1452| |NPC|11118|

C Luck Be With You |QID|969| |N|Collect 10 (item:12334) from the ground and you can also get it from the (npc:7428) in {Frostwhisper Gorge} (63.64, 62.35) (64.39, 63.23) (65.04, 65.41) (64.59, 66.33) (64.35, 67.15) (62.53, 67.25) (61.83, 70.74) (63.46, 72.43) (64.38, 72.33) (59.88, 69.50)| |Z|1452| |W| |PRE|6606| |OBJ|2592| |NPC|7428|

R Everlook |QID|5054| |N|Travel to {Everlook} (61.92, 38.30)| |Z|1452| |PRE|6606|
T Luck Be With You |QID|969| |N|(npc:10307) in {Everlook} (61.92, 38.30)| |Z|1452| |PRE|6606| |NPC|10307|

N As you go... |AYG|5054| |QID|4741| |N|Kill (npc:7449) and collect 8 (item:12444)| |PRE|4521| |NPC|7449, 10806|
C Ursius of the Shardtooth |QID|5054| |N|Kill (npc:10806), he's a level 56 elite and should be easy to solo (59.36, 32.60) (60.86, 32.45) (61.95, 28.10) (63.04, 26.00) (65.24, 21.75)| |Z|1452| |NPC|10806|
T Ursius of the Shardtooth |QID|5054| |N|(npc:10303) in {Everlook} (61.92, 38.37)| |Z|1452| |NPC|10303|
A Brumeran of the Chillwind |QID|5055| |N|(npc:10303) in {Everlook} (61.92, 38.30)| |Z|1452| |NPC|10303|
A Cache of Mau'ari |QID|975| |N|(npc:10307) in {Everlook} (61.92, 38.30)| |Z|1452| |NPC|10307|
T Cache of Mau'ari |QID|975| |N|(npc:10307) in {Everlook} (61.92, 38.30)| |Z|1452| |NPC|10307|

R Owl Wing Thicket |QID|4741| |N|Travel to {Owl Wing Thicket} (63.83, 59.32)| |Z|1452|
C Wild Guardians (2) |QID|4741| |N|Kill 13 (npc:7453) in {Owl Wing Thicket} (63.83, 59.32)| |Z|1452| |PRE|4521| |W| |NPC|7453|
C Brumeran of the Chillwind |QID|5055| |N|Kill (npc:10807), this is a level 58 Elite and can be a bit tough to solo, you may need to get some help (61.49, 56.69) (57.61, 41.42)| |Z|1452| |LOOP| |NPC|10807|
C Chillwind Horns |QID|4809| |N|Kill (npc:7449), (npc:7448) and collect 8 (item:12444), you don't have to complete this quest now<br/><br/>Tick this step to complete later (58.73, 43.43)| |Z|1452| |PRE|4521| |NPC|7449|
T Brumeran of the Chillwind |QID|5055| |N|(npc:10303) in {Everlook} (61.91, 38.37)| |Z|1452| |NPC|10303|
A Shy-Rotam |QID|5056| |N|(npc:10303) in {Everlook} (61.91, 38.38)| |Z|1452| |NPC|10303|

R Bloodvenom Post |QID|4721| |N|Travel to {Bloodvenom Post} (34.72, 52.76)| |Z|1448|
T Wild Guardians (2) |QID|4741| |N|(npc:10306) in {Bloodvenom Post} (34.72, 52.76)| |Z|1448| |PRE|4521| |NPC|10306|
A Wild Guardians (3) |QID|4721| |N|(npc:10306) in {Bloodvenom Post} (34.72, 52.76)| |Z|1448| |PRE|4521| |NPC|10306|

R Owl Wing Thicket |QID|4882| |N|Travel to {Owl Wing Thicket} (63.83, 59.32)| |Z|1452|
N (item:12558) |QID|4882| |N|Keep killing (npc:7453) until you find (item:12558) (63.83, 59.32)| |Z|1452| |W| |L|12558| |NPC|7453|

R The Hidden Grove |QID|4721| |N|Travel to {The Hidden Grove} (64.92, 20.30)| |Z|1452| 
C Wild Guardians (3) |QID|4721| |N|Kill 10 (npc:7454) in {The Hidden Grove} (64.92, 20.30)| |Z|1452| |PRE|4521| |W| |NPC|7454|
A Guarding Secrets |QID|4882| |N|Use (item:12558) to accept quest| |Z|1452| |U|12558| |O|
C Chillwind Horns |QID|4809| |N|Kill (npc:7449), (npc:7448) and collect 8 (item:12444) (59.80, 22.64)| |Z|1452| |PRE|4521| |NPC|7448, 7449|

T Winterfall Runners |QID|5087| |N|(npc:9298) in {Frostfire Hot Springs} (31.28, 45.17)| |Z|1452| |PRE|5086| |NPC|9298|
A High Chief Winterfall |QID|5121| |N|(npc:9298) in {Frostfire Hot Springs} (31.28, 45.17)| |Z|1452| |PRE|5087| |NPC|9298|

R Everlook |OID|4810| |N|Travel to {Everlook} (61.58, 38.59)| |Z|1452| |
T Chillwind Horns |QID|4809| |N|(npc:10468) in {Everlook} (61.58, 38.59)| |Z|1452| |PRE|4521| |NPC|10468|
A Return to Tinkee |QID|4810| |N|(npc:10468) in {Everlook} (61.58, 38.59)| |Z|1452| |PRE|4809| |NPC|10468|

R Winterfall Village |QID|5121| |N|Travel to {Winterfall Village} (69.69, 38.26)| |Z|1452| |PRE|5087|
C High Chief Winterfall |QID|5121| |N|Kill (npc:10738) in {Winterfall Village}, he's a level 59 elite (69.69, 38.26)| |Z|1452| |PRE|5087| |NPC|10738|
N (item:12842) |QID|5123| |N|Collect (item:12842) from (npc:10738) in {Winterfall Village} (69.69, 38.26)| |Z|1452| |L|12842| |PRE|5087| |NPC|10738|
A The Final Piece |QID|5123| |N|Use (item:12842) to accept quest| |Z|1452| |U|12842| |PRE|5087|

R Frostfire Hot Springs |TID|5087| |N|Travel to {Frostfire Hot Springs} (31.28, 45.17)| |Z|1452| |PRE|5087|
T The Final Piece |QID|5123| |N|(npc:9298) in {Frostfire Hot Springs} (31.28, 45.17)| |Z|1452| |PRE|5087| |NPC|9298|
A Words of the High Chief |QID|5128| |N|(npc:9298) in {Frostfire Hot Springs} (31.28, 45.17)| |Z|1452| |PRE|5087| |NPC|9298|

R Bloodvenom Post |TID|4721| |N|Travel to {Bloodvenom Post} (34.74, 52.76)| |Z|1448| |PRE|4521|
T Wild Guardians (3) |QID|4721| |N|(npc:10306) in {Bloodvenom Post} (34.74, 52.76)| |Z|1448| |PRE|4521| |NPC|10306|
T Guarding Secrets |QID|4882| |N|(npc:10306) in {Bloodvenom Post} (34.72, 52.76)| |Z|1448| |NPC|10306| |O|
A Guarding Secrets |QID|4883| |N|(npc:10306) in {Bloodvenom Post} (34.72, 52.76)| |Z|1448| |NPC|10306| |O|

R Emerald Sanctuary |TID|5128| |N|Travel to {Emerald Sanctuary} in {Felwood} (51.14, 81.76)| |Z|1448| |PRE|5087|
T Words of the High Chief |QID|5128| |N|(npc:10920) in {Emerald Sanctuary} (51.14, 81.76)| |Z|1448| |PRE|5087| |NPC|10920|

R Thunder Bluff |TID|4883| |N|Travel to {Elder Rise} in {Thunder Bluff} (75.64, 31.51)| |Z|1456|
T Guarding Secrets |QID|4883| |N|(npc:5770) in {Elder Rise} (75.64, 31.51)| |Z|1456| |NPC|5770|

R Flame Crest |QID|4810| |N|Travel to {Flame Crest} (65.23, 23.95)| |Z|1428| |PRE|4809|
T Return to Tinkee |QID|4810| |N|(npc:10267) in {Flame Crest} (65.23, 23.95)| |Z|1428| |PRE|4809| |NPC|10267|

N Guide Complete

]]
end, {image = "winterspring.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end
