local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_45_46_Feralas")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 40-50|r", "1444(45-46)#1444(45-46)#1444(45-46)", "1447(46-47)#1447(46-47)#1447(46-47)", "Horde", nil, "L", nil, function()
return [[

R Camp Mojache |QID|2973| |N|Travel to {Camp Mojache} (75.95, 42.74)| |Z|1444|
A A New Cloak's Sheen |QID|2973| |N|(npc:4544) in {Camp Mojache} (75.95, 42.74)| |Z|1444| |NPC|4544|
A The Ogres of Feralas |QID|2975| |N|(npc:7777) in {Camp Mojache}, Wandering NPC (75.5, 43.7) (73.3, 44.8)| |Z|1444| |LOOP| |NPC|7777|
A Gordunni Cobalt |QID|2987| |N|(npc:8021) in {Camp Mojache} (75.66, 44.20)| |Z|1444| |NPC|8021|
A War on the Woodpaw |QID|2862| |N|(npc:7875) in {Camp Mojache} (74.87, 42.72)| |Z|1444| |NPC|7875|
A The Mark of Quality |QID|2822| |N|(npc:7854) in {Camp Mojache} (74.43, 42.93)| |Z|1444| |NPC|7854|
A A Strange Request |QID|3121| |N|(npc:8115) in {Camp Mojache} (74.43, 43.37)| |Z|1444| |NPC|8115|
h Camp Mojache |QID|2978| |N|Speak to (npc:7737) set hearth in {Camp Mojache} (74.8, 45.1)| |NPC|7737|

C War on the Woodpaw |QID|2862| |N|Kill the Woodpaw north of {Camp Mojache} and collect 10 (item:9237) (72.75, 37.95)| |W| |NPC|5249, 5251, 5253, 5254|

R Gordunni Outpost |QID|2987| |N|Travel to {Gordunni Outpost} (74.85, 35.31) (75.55, 29.75)| |Z|1444| 
C Gordunni Cobalt |QID|2987| |N|Use (item:9466) near the glowing purple mounds and collect 12 (item:9463) (75.27, 33.64) (76.38, 33.06) (75.53, 30.41) (74.56, 30.25) (74.26, 28.98) (75.35, 28.24)| |U|9466|
C The Ogres of Feralas (1) |QID|2975| |N|Kill 10 (npc:5229), 10 (npc:5237) and 5 (npc:5232) in {Gordunni Outpost} (75, 30)| |W| |NPC|5229, 5237, 5232|
N (item:9370) |QID|2978| |N|Collect (item:9370) found near a log on the floor in {Gordunni Outpost} (75.13, 29.75)| |L|9370| |OBJ|183|
A The Gordunni Scroll |QID|2978| |N|Use (item:9370) to accept quest| |U|9370|

R Camp Mojache |QID|2980| |N|Travel to {Camp Mojache} (76.14, 43.48)| |Z|1444|
T The Ogres of Feralas |QID|2975| |N|(npc:7777) in {Camp Mojache}, Wandering NPC (75.5, 43.7) (73.3, 44.8)| |Z|1444| |LOOP| |NPC|7777|
A The Ogres of Feralas |QID|2980| |N|(npc:7777) in {Camp Mojache}, Wandering NPC (75.5, 43.7) (73.3, 44.8)| |Z|1444| |LOOP| |NPC|7777|
T The Gordunni Scroll |QID|2978| |N|(npc:7777) in {Camp Mojache}, Wandering NPC (75.5, 43.7) (73.3, 44.8)| |Z|1444| |LOOP| |NPC|7777|
A Dark Ceremony |QID|2979| |N|(npc:7777) in {Camp Mojache}, Wandering NPC (75.5, 43.7) (73.3, 44.8)| |Z|1444| |LOOP| |NPC|7777|
T Gordunni Cobalt |QID|2987| |N|(npc:8021) in {Camp Mojache} (75.70, 44.30)| |Z|1444| |NPC|8021|
T War on the Woodpaw |QID|2862| |N|(npc:7875) in {Camp Mojache} (74.92, 42.45)| |Z|1444| |NPC|7875|

C Alpha Strike |QID|2863| |N|Kill (npc:5258) in {Woodpaw Hills}, you can only find one in each camp (73.14, 56.42) (72.24, 56.70) (71.50, 56.10) (71.58, 54.12) (68.69, 54.12)| |Z|1444| |NPC|5258|

R Camp Mojache |QID|2902| |N|Travel to {Camp Mojache} (74.91, 42.52)| |Z|1444| 
T Alpha Strike |QID|2863| |N|(npc:7875) in {Camp Mojache} (74.91, 42.52)| |Z|1444| |NPC|7875|
A Woodpaw Investigation |QID|2902| |N|(npc:7875) in {Camp Mojache} (74.98, 42.68)| |Z|1444| |NPC|7875|

C A New Cloak's Sheen |QID|2973| |N|Kill the (npc:5278) west of Camp Mojache for 10 (item:9369) (69.52, 47.23)| |Z|1444| |W| |NPC|5278|

R Camp Mojache |OID|2974| |N|Travel to {Camp Mojache} (75.93, 42.75)| |Z|1444| 
T A New Cloak's Sheen |QID|2973| |N|(npc:4544) in {Camp Mojache} (75.93, 42.75)| |Z|1444| |NPC|4544|
A A Grim Discovery (1) |QID|2974| |N|(npc:4544) in {Camp Mojache} (75.95, 43.16)| |Z|1444| |NPC|4544|

C A Grim Discovery (1) |QID|2974| |N|Kill the Grimtotems Northwest of Camp Mojache for 20 (item:9460) (66, 38)| |W| |NPC|7725, 7726, 7727|

R Woodpaw Hills |QID|2903| |N|Travel to {Woodpaw Hills} (71.62, 55.92)| |Z|1444| |NPC|4544|
T Woodpaw Investigation |QID|2902| |N|Woodpaw Battle Map in {Woodpaw Hills} (71.6, 55.9)| |OBJ|222|
A The Battle Plans |QID|2903| |N|Woodpaw Battle Map in {Woodpaw Hills} (71.6, 55.9)| |OBJ|222|

R Camp Mojache |QID|2976| |N|Travel or (item:6948) to {Camp Mojache} (75.95, 42.74)| |Z|1444|
T A Grim Discovery (1) |QID|2974| |N|(npc:4544) in {Camp Mojache} (75.95, 42.74)| |Z|1444| |NPC|4544|
A A Grim Discovery (2) |QID|2976| |N|(npc:4544) in {Camp Mojache} (75.95, 42.74)| |Z|1444| |NPC|4544|
T The Battle Plans |QID|2903| |N|(npc:7875) in {Camp Mojache} (74.91, 42.49)| |Z|1444| |NPC|7875|
A Zukk'ash Infestation |QID|7730| |N|(npc:7875) in {Camp Mojache} (74.91, 42.49)| |Z|1444| |NPC|7875|
A Stinglasher |QID|7731| |N|(npc:7875) in {Camp Mojache} (74.91, 42.49)| |Z|1444| |NPC|7875|

R The Writhing Deep |QID|7731| |N|Travel to {The Writhing Deep} (76.91, 61.52)| |Z|1444|
C Stinglasher |QID|7731| |N|Kill (npc:14661) in the Writhing Deep and loot (item:18962), he usually spawn in front of a hive entrance (74, 62) (73.59, 64.02)| |NPC|14661|
C Zukk'ash Infestation |QID|7730| |N|Kill the Zukk'ash Wasps at the Writhing Deep for 20 (item:18961) (74, 62)| |W| |NPC|5244, 5245, 5246|

R Verdantis River |QID|3520| |N|Travel to {Verdantis River} (63.70, 51.17)| |Z|1444|
C Screecher Spirits |QID|3520| |N|Kill the (npc:5308) south of Dire Maul and use the (item:10699) on their corpses to collect 3 (npc:5308) (60.95, 49.65) (59.11, 50.94) (56.90, 47.84)| |U|10699| |NPC|5308, 8612|

R Ruins of Isildien |QID|2980| |N|Travel to {Ruins of Isildien} (60.99, 56.76)| |Z|1444|
C Dark Ceremony |QID|2979| |N|Kill (npc:5239) for the (item:9371) (59, 68)| |W| |NPC|5239|
C The Ogres of Feralas (2) |QID|2980| |N|Kill 10 (npc:5236), 10 (npc:5240) and 5 (npc:5234) south of Dire Maul (59, 68)| |W| |NPC|5236, 5240, 5234|

R Feral Scar Vale |QID|2822| |N|Travel to {Feral Scar Vale} (55.40, 56.36)| |Z|1444|
C The Mark of Quality |QID|2822| |N|Kill (npc:5292) and collect 10 (item:8973) in {Feral Scar Vale} (55.40, 56.36)| |Z|1444| |W| |NPC|5292|
A Find OOX-22/FE! |QID|2766| |N|Use (item:8705) to accept quest| |Z|1444| |O| |U|8705| |OID|2969|
T Find OOX-22/FE! |QID|2766| |N|(npc:7807) in {Feral Scar Vale} (53.34, 55.64)| |Z|1444| |O| |OID|2969| |NPC|7807|

R Camp Mojache |QID|2980| |N|Travel to {Camp Mojache} (74.46, 42.87)| |Z|1444| 
T The Mark of Quality |QID|2822| |N|(npc:7854) in {Camp Mojache} (74.46, 42.87)| |Z|1444| |NPC|7854|
--A Improved Quality |QID|7734| |N|(npc:7854) in {Camp Mojache} (74.51, 42.91)| |Z|1444| |NPC|7854|
T Zukk'ash Infestation |QID|7730| |N|(npc:7875) in {Camp Mojache} (74.91, 42.48)| |Z|1444| |NPC|7875|
T Stinglasher |QID|7731| |N|(npc:7875) in {Camp Mojache} (74.91, 42.48)| |Z|1444| |NPC|7875|
A Zukk'ash Report |QID|7732| |N|(npc:7875) in {Camp Mojache} (74.84, 42.72)| |Z|1444| |NPC|7875|
T Dark Ceremony |QID|2979| |N|(npc:7777) in {Camp Mojache} (76.57, 43.20)| |Z|1444| |NPC|7777|
T The Ogres of Feralas |QID|2980| |N|(npc:7777) in {Camp Mojache} (76.66, 43.28)| |Z|1444| |NPC|7777|
A The Gordunni Orb |QID|3002| |N|(npc:7777) in {Camp Mojache} (76.52, 43.20)| |Z|1444| |NPC|7777|
--A The Sunken Temple |QID|3380| |N|(npc:8115) in {Camp Mojache} (74.43, 43.35)| |Z|1444| |NPC|8115|

R Orgrimmar |QID|649| |N|Travel to {Orgrimmar} (56.36, 46.60)| |Z|1454| 
N (item:10699) |QID|3520| |N|Store (item:10699) in the bank <br/><br/>Tick this step (49.6, 69.4)| |Z|1454| |L|10699| |O| |NPC|3309| --Orgrimmar
N (item:5942) |QID|1262| |N|Withdraw (item:5942) in the bank <br/><br/>Tick this step (49.6, 69.4)| |Z|1454| |L|5942| |OO| |NPC|3309| --Orgrimmar

T Zukk'ash Report |QID|7732| |N|(npc:7010) in {The Drag} (56.36, 46.60)| |Z|1454| |NPC|7010|
A Ripple Recovery |QID|649| |N|(npc:6986) in {The Drag} (59.76, 37.00)| |Z|1454| |NPC|6986|
T Ripple Recovery |QID|649| |N|(npc:7010) in {The Drag} (59.64, 36.86)| |Z|1454| |NPC|7010|
A Ripple Recovery |QID|650| |N|(npc:6987) in {The Drag} (59.64, 36.86)| |Z|1454| |NPC|6987|

T A Grim Discovery |QID|2976| |N|(npc:4485) in {Valley of Honor} (75.15, 34.30)| |Z|1454| |NPC|4485|
A Betrayed (1) |QID|3504| |N|(npc:4485) in {Valley of Honor} (75.15, 34.30)| |Z|1454| |NPC|4485|

T A Strange Request |QID|3121| |N|(npc:3216) in {Cleft of Shadow} (49.64, 50.53)| |Z|1454| |NPC|3216|
A Return to Witch Doctor Uzer'i |QID|3122| |N|(npc:3216) in {Cleft of Shadow} (49.64, 50.53)| |Z|1454| |NPC|3216|

T Parts of the Swarm |QID|1184| |N|(npc:4485) in {Valley of Honor} (75.15, 34.30)| |Z|1454| |O| |NPC|4485|
T Report to Zor |QID|1262| |N|(npc:4047) in {Grommash Hold} (38.99, 38.27)| |Z|1454| |O| |NPC|4047|
T Service to the Horde |QID|7541| |N|(npc:4047) in {Grommash Hold} (38.99, 38.27)| |Z|1454| |PRE|1262| |E| |NPC|4047|
T The Gordunni Orb |QID|3002| |N|(npc:7311) in {Valley of Spirits} (39.07, 86.21)| |Z|1454| |NPC|7311|
T A Donation of Wool |QID|7833| |N|(npc:14727) in {Valley of Spirits} (37.69, 87.92)| |Z|1454| |L|2592 60| |O| |NPC|14727|
T A Donation of Mageweave |QID|7835| |N|(npc:14727) in {Valley of Spirits} (37.69, 87.92)| |Z|1454| |L|4338 60| |O| |NPC|14727|
T A Donation of Silk |QID|7834| |N|(npc:14727) in {Valley of Spirits} (37.69, 87.92)| |Z|1454| |L|4306 60| |O| |NPC|14727|

R Camp Mojache |QID|3122| |N|Travel or (item:6948) to {Camp Mojache} (74.41, 43.38)| |Z|1444|
T Return to Witch Doctor Uzer'i |QID|3122| |N|(npc:8115) in {Camp Mojache} (74.41, 43.38)| |Z|1444| |NPC|8115|
A Testing the Vessel |QID|3123| |N|(npc:8115) in {Camp Mojache} (74.41, 43.38)| |Z|1444| |NPC|8115|
A Natural Materials |QID|3128| |N|(npc:8115) in {Camp Mojache} (74.43, 43.37)| |Z|1444| |NPC|8115|
K (npc:5278) |QID|3128.2| |N|Kill (npc:5278) and collect 6 (item:9589) (69.52, 47.23)| |Z|1444| |W| |NPC|5278|

R High Wilderness |QID|3128| |N|Travel to {High Wilderness} (67.79, 49.72) (64.81, 50.10) (56.84, 65.87)| |Z|1444|
N As you go... |QID|3128| |N|Kill (npc:5304) or (npc:5300) and collect 20 (item:9591) and 40 (item:9592) in {High Wilderness}| |NPC|5304, 5300, 7584|
K (npc:7584) |QID|3128.1| |N|Kill (npc:7584) and collect 2 (item:9590) in {Feralas}, (npc:7584) only spawn in 4 possible locations with 5 mins respawn time, tick this step after you kill one and check again later (57.4, 73.3)| |NPC|7584|
N (item:8564) |QID|2741| |N|Collect (item:8564) from the bird nest in {Ruins of Isildien} (57.79, 74.64) (58.58, 75.55)| |Z|1444| |L|8564|
R High Wilderness |QID|3128.1| |N|Travel to {High Wilderness} (54.50, 68.38)| |Z|1444| |L|8564|
C Natural Materials |QID|3128.3| |N|Kill (npc:5304) or (npc:5300) 20 (item:9591) and 40 (item:9592) in {High Wilderness} (54.50, 68.38)| |Z|1444| |W| |NPC|5304, 5300|
C Natural Materials |QID|3128.4| |N|Kill (npc:5304) or (npc:5300) 20 (item:9591) and 40 (item:9592) in {High Wilderness} (54.50, 68.38)| |Z|1444| |W| |NPC|5304, 5300|

K (npc:7584) |QID|3128.1| |N|Kill (npc:7584) and collect 2 (item:9590) in {Feralas}, (npc:7584) only spawn in 4 possible locations with 5 mins respawn time, tick this step after you kill one and check again later (73.9, 38.8) (73.5, 54.5)| |NPC|7584|
A Perfect Yeti Hide |QID|7738| |N|Use (item:18972) to accept quest (49.09, 47.33)| |Z|1444| |U|18972| |O|
T Perfect Yeti Hide |QID|7738| |N|(npc:7854) in {Camp Mojache} (74.43, 42.92)| |Z|1444| |O| |NPC|7854|
T Natural Materials |QID|3128| |N|(npc:8115) in {Camp Mojache} (74.42, 43.36)| |Z|1444| |NPC|8115|

N Guide Complete |N|Tick to continue to the next guide| 

]]
end, {image = "feralas.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end
