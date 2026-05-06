local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_25_26_Thousand_Needles")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 20-30|r", "1441(25-26)#1441(25-26)#1441(25-26)", "1440(26-27)#1440(26-27)#1440(26-27)", "Horde", nil, "L", nil, function()
return [[

T Weapons of Choice |QID|893| |N|(npc:3433) in {Camp Taurajo} (45.12, 57.69)| |Z|1413| |O| |NPC|3433|
A A New Ore Sample |QID|1153| |N|(npc:3433) in {Camp Taurajo} (45.09, 57.72)| |PRE|893| |Z|1413| |NPC|3433|
--K (npc:3472) |QID|885| |N|Find and kill (npc:3472) to  collect  (item:5103) to accept a new quest (44.8, 75.6) (45.0, 78.4) (43.4, 81.6) (47.6, 79.)| |Z|1413| |L|5103| |LOOP| |NPC|3472|

K (npc:10617) |QID|4881| |N|Find and kill the patroling (npc:10617) to start new quest in {Darkcloud Pinnacle} (38.6, 31.5) (29.5, 34.6) (18.9, 27.1)| |L|12564| |NPC|10617|
A Assassination Plot |QID|4881| |N|Use (item:12564) to accept quest| |U|12564|

R Freewind Post |QID|4841| |N|Run to Freewind Post use the Elevator at (47, 48.2)|
T Message to Freewind Post |QID|4542| |N|(npc:10537) in {Freewind Post} (45.69, 50.66)| |O| |NPC|10537| 
A Pacify the Centaur |QID|4841| |N|(npc:10537) in {Freewind Post} (45.69, 50.66)| |NPC|10537|
A Wanted - Arnak Grimtotem |QID|5147| |N|Wanted Poster - Arnak Grimtotem (46.0, 50.8)|
A Alien Egg |QID|4821| |N|(npc:10539) in {Freewind Post} (44.71, 50.26)| |NPC|10539|
A Wind Rider |QID|4767| |N|(npc:10377) in {Freewind Post} (44.85, 49.04)| |NPC|10377|
f Freewind Post |QID|1149| |N|Speak to (npc:4317) and grab flight path for {Freewind Post} (45.1, 49.2)| |NPC|4317|

C Pacify the Centaur |QID|4841| |N|Kill 12 (npc:4094), 10 (npc:4093) and 6 (npc:4096) just north of Freewind (48, 43)| |W| |NPC|4094, 4093, 4096|
A Test of Faith |QID|1149| |N|(npc:2986) in {The Weathered Nook} (54.6, 44.5) (53.88, 41.49)| |NPC|2986|
C Test of Faith |QID|1149| |N|Run off the platform, Make sure you only jump off of the wooden plank! If you jump off of anywhere else you will fall to your death (26.4, 32.4)|
T Test of Faith |QID|1149| |N|(npc:2986) in {The Weathered Nook} (53.88, 41.49)| |NPC|2986|
C A New Ore Sample |QID|1153| |N|KIll (npc:4113) or (npc:4116) and collect (item:5842)  (63.8, 46.4) (66.3, 49.3) (67.4, 60.3) (60.1, 57.5) (55.2, 50.3)| |PRE|893| |LOOP| |NPC|4113, 4116|
C Alien Egg |QID|4821| |N|The (item:12467) can spawn around 3 possible spots (56.3, 50.4) (52.4, 55.2) (37.7, 56.2)| |LOOP| |OBJ|364|

R Freewind Post |QID|5064| |N|Run to Freewind Post use the Elevator at (47, 48.2)|
T Pacify the Centaur |QID|4841| |N|(npc:10537) in {Freewind Post} (45.69, 50.66)| |NPC|10537|
A Grimtotem Spying |QID|5064| |N|(npc:10537) in {Freewind Post} (45.69, 50.66)| |NPC|10537|
T Alien Egg |QID|4821| |N|(npc:10539) in {Freewind Post} (44.71, 50.26)| |NPC|10539|
A Serpent Wild |QID|4865| |N|(npc:10539) in {Freewind Post} (44.71, 50.26)| |NPC|10539|

R Camp Taurajo |TID|1153| |N|Travel to {Camp Taurajo} (44.86, 59.13)| |Z|1413| |PRE|893| |L|5103|
A Washte Pawne |QID|885| |N|Use (item:5103) to accept quest| |U|5103| |O|
T Washte Pawne |QID|885| |N|(npc:3387) in {Camp Taurajo} (44.86, 59.13)| |Z|1413| |O| |NPC|3387|
T Enraged Thunder Lizards |QID|907| |N|(npc:3387) in {Camp Taurajo} (44.86, 59.13)| |Z|1413| |O| |NPC|3387|
A Cry of the Thunderhawk |QID|913| |N|(npc:3387) in {Camp Taurajo} (44.86, 59.13)| |Z|1413| |PRE|907| |NPC|3387|
T A New Ore Sample |QID|1153| |N|(npc:3433) in {Camp Taurajo} (45.11, 57.73)| |Z|1413| |PRE|893| |NPC|3433|
C Cry of the Thunderhawk |QID|913| |N|Kill (npc:3424) to collect (item:5164) (44.0, 55.0) (48.3, 56.9) (48.1, 60.0) (48.7, 62.1) (44.9, 63.0) (44.5, 61.6)| |Z|1413| |PRE|907| |NPC|3424|
T Cry of the Thunderhawk |QID|913| |N|(npc:3387) in {Camp Taurajo} (44.89, 59.15)| |Z|1413| |PRE|907| |NPC|3387|

N Guide Complete |N|Tick to continue to the next guide| 

]]
end, {image = "thousandneedles.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end


--R Thunder Bluff |OID|1131| |N|Travel to {Thunder Bluff} (61.36, 80.67)| |Z|1456|
--T Melor Sends Word |QID|1130| |N|(npc:3441) in {Hunter Rise} (61.36, 80.67)| |Z|1456| |NPC|3441|
--A Steelsnap |QID|1131| |N|(npc:3441) in {Hunter Rise} (61.36, 80.67)| |Z|1456| |NPC|3441|
--T The Elder Crone |QID|1063| |N|(npc:4046) in Elder's Rise (70.1, 30.8)| |Z|1456| |O| |NPC|4046|