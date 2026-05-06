local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_54_55_Winterspring")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 50-60|r", "1452(54-55)#1452(54-55)#1452(54-55)", "1448(55-56)#1448(55-56)#1448(55-56)", "Horde", nil, "L", nil, function()
return [[

R Frostfire Hot Springs |QID|8464| |N|Travel to {Frostfire Hot Springs} (27.74, 34.53)| |Z|1452| |REACH|
T Speak to Salfa |QID|8465| |N|(npc:11556) in {Frostfire Hot Springs} (27.74, 34.53)| |Z|1452| |O| |NPC|11556|
A Winterfall Activity |QID|8464| |N|(npc:11556) in {Frostfire Hot Springs} (27.74, 34.53)| |Z|1452| |NPC|11556|

R Frostfire Hot Springs |QID|4842| |N|Travel to {Frostfire Hot Springs} (31.27, 45.17)| |Z|1452| |REACH|
T The New Springs |QID|980| |N|(npc:9298) in {Frostfire Hot Springs} (31.27, 45.17)| |Z|1452| |O| |NPC|9298|
A Strange Sources |QID|4842| |N|(npc:9298) in {Frostfire Hot Springs} (31.27, 45.17)| |Z|1452| |PRE|980| |NPC|9298|
A Threat of the Winterfall |QID|5082| |N|(npc:9298) in {Frostfire Hot Springs} (31.28, 45.17)| |Z|1452| |NPC|9298|
T It's a Secret to Everybody (3) |QID|3908| |N|(npc:9298) in {Frostfire Hot Springs} -Skip follow up (31.27, 45.17)| |Z|1452| |O| |NPC|9298|

R Everlook |QID|3783| |N|Travel to {Everlook} (61.60, 38.62)| |Z|1452| 
T Felnok Steelspring |QID|4808| |N|(npc:10468) in {Everlook} (61.60, 38.62)| |Z|1452| |O| |NPC|10468|
--A Trouble in Winterspring! |QID|6603| |N|(npc:11754) in {Everlook} (61.23, 38.34)| |Z|1452| |NPC|11754|
A Are We There, Yeti? |QID|3783| |N|(npc:10305) in {Everlook} (60.9, 37.6)| |Z|1452| |NPC|10305|
h Everlook |QID|5245| |N|Speak to (npc:11118) and set hearth in {Everlook} (61.36, 38.83)| |Z|1452| |NPC|11118|
f Everlook |QID|3783| |N|Speak to (npc:11139) grab flight for {Everlook} (60.47, 36.30)| |Z|1452| |NPC|11139|
N (item:11503) |QID|4102| |N|Store (item:11503) in the bank <br/><br/>Tick this step (61.4, 37.0)| |Z|1452| |L|11503| |O| |NPC|13917| --Everlook
N (item:12230) |QID|4661| |N|Store (item:12230) in the bank <br/><br/>Tick this step (61.4, 37.0)| |Z|1452| |L|12230| |O| |NPC|13917| --Everlook
N (item:15788) |QID|6029| |N|Store (item:15788) in the bank <br/><br/>Tick this step (61.4, 37.0)| |Z|1452| |L|15788| |O| |NPC|13917| --Everlook
N (item:15790) |QID|6030| |N|Store (item:15790) in the bank <br/><br/>Tick this step (61.4, 37.0)| |Z|1452| |L|15790| |O| |NPC|13917| --Everlook
N (item:20741) |QID|8470| |N|Store (item:15790) in the bank <br/><br/>Tick this step (61.4, 37.0)| |Z|1452| |L|20741| |O| |NPC|13917| --Everlook

C Strange Sources |QID|4842| |N|Go over the bridge and discover {Darkwhisper Gorge} (62.40, 67.17) (61.82, 70.63) (60.06, 73.49)| |Z|1452| |PRE|980|

R Winterfall Village |QID|8464| |N|Travel to {Winterfall Village} (67.13, 35.93)| |Z|1452| 
C Winterfall Activity |QID|8464| |N|Kill the required Winterfall fulborg in {Winterfall Village} (67.13, 35.93)| |Z|1452| |W| |NPC|7439, 7440, 7438|
C Threat of the Winterfall |QID|5082.2| |N|Kill 8 (npc:7440) in {Winterfall Village} (66.94, 34.82)| |Z|1452| |NPC|7440|
N (item:12771) |QID|5083| |N|Collect (item:12771) from Winterfall fulborgs (67.13, 35.93)| |Z|1452| |W| |L|12771| |NPC|7439, 7440, 7438|
A Winterfall Firewater |QID|5083| |N|Use (item:12771) to accept quest| |Z|1452| |U|12771|

R Timbermaw Post |QID|5082| |N|Travel to {Timbermaw Post} (40.69, 42.87)| |Z|1452|
C Threat of the Winterfall |QID|5082.1| |N|Kill 8 (npc:7442) and 8 (npc:7441) in {Timbermaw Post}<br/><br/>There's not much (npc:7440) around this area, you can kill lots of them east of {Everlook} later (40.69, 42.87) (30.76, 36.53)| |Z|1452| |W| |NPC|7442, 7441|
C Threat of the Winterfall |QID|5082.3| |N|Kill 8 (npc:7442) and 8 (npc:7441) in {Timbermaw Post}<br/><br/>There's not much (npc:7440) around this area, you can kill lots of them east of {Everlook} later (30.76, 36.53)| |Z|1452| |W| |NPC|7442, 7441|

N As you go... |AYG|4521| |QID|3783| |N|Kill (npc:7457) and collect 10 (item:12366)| |REACH|44.68,43.33| |NPC|7457, 7451, 7450|
K (npc:7451) |QID|4521.1| |N|Kill 15 (npc:7451) in {Winterspring} (62.13, 31.76) (58.91, 33.57) (59.12, 27.86) (54.44, 28.15)| |Z|1452| |LOOP| |NPC|7451|
K (npc:7450) |QID|4521.2| |N|Start killing 15 (npc:7450) in {Winterspring} follow the waypoint and kill as much as you can for now (54.06, 37.26) (47.53, 37.09) (44.07, 37.92) (44.68, 43.33)| |Z|1452| |REACH| |NPC|7451|
C Threat of the Winterfall |QID|5082.1| |N|Kill 8 (npc:7442) and 8 (npc:7441) in {Timbermaw Post}<br/><br/>There's not much (npc:7440) around this area, you can kill lots of them east of {Everlook} later (40.69, 42.87) (30.76, 36.53)| |Z|1452| |W| |NPC|7442, 7441|
C Threat of the Winterfall |QID|5082.3| |N|Kill 8 (npc:7442) and 8 (npc:7441) in {Timbermaw Post}<br/><br/>There's not much (npc:7440) around this area, you can kill lots of them east of {Everlook} later (30.76, 36.53)| |Z|1452| |W| |NPC|7442, 7441|
N (item:12771) |QID|5083| |N|Collect (item:12771) from Winterfall fulborgs (30.76, 36.53)| |Z|1452| |W| |L|12771| |NPC|7442, 7441|
A Winterfall Firewater |QID|5083| |N|Use (item:12771) to accept quest| |Z|1452| |U|12771|

R Frostfire Hot Springs |QID|5082| |N|Travel to {Frostfire Hot Springs} (31.28, 45.17)| |Z|1452| |REACH|
--T Trouble in Winterspring! |QID|6603| |N|(npc:9298) in {Frostfire Hot Springs} (31.28, 45.17)| |Z|1452| |NPC|9298|
T Strange Sources |QID|4842| |N|(npc:9298) in {Frostfire Hot Springs} (31.27, 45.17)| |Z|1452| |PRE|980| |NPC|9298|
A Falling to Corruption |QID|5084| |N|(npc:9298) in {Frostfire Hot Springs} (31.27, 45.17)| |Z|1452| |NPC|9298|
T Threat of the Winterfall |QID|5082| |N|(npc:9298) in {Frostfire Hot Springs} (31.28, 45.17)| |Z|1452| |NPC|9298|
T Winterfall Firewater |QID|5083| |N|(npc:9298) in {Frostfire Hot Springs} (31.27, 45.17)| |Z|1452| |NPC|9298|

K (npc:7450) |QID|4521.2| |N|Kill 15 (npc:7450) in {Winterspring} follow the waypoint and kill as much as you can for now (38.77, 37.96) (45.77, 37.18) (49.78, 40.11)| |Z|1452| |REACH| |NPC|7450|

R Ice Thistle Hills |QID|3783| |N|Travel or (item:6948) to {Ice Thistle Hills} (71.57, 39.08)| |Z|1452|
C Are We There, Yeti? |QID|3783| |N|Kill (npc:7458) or (npc:7458) and collect 10 (item:12366) in {Ice Thistle Hills} (71.57, 39.08)| |Z|1452| |W| |NPC|7458, 7458|

R Everlook |QID|977| |N|Travel to {Everlook} (60.89, 37.64)| |Z|1452|
T Are We There, Yeti? |QID|3783| |N|(npc:10305) in {Everlook} (60.89, 37.64)| |Z|1452| |NPC|10305|
A Are We There, Yeti? |QID|977| |N|(npc:10305) in {Everlook} (60.9, 37.6)| |Z|1452| |NPC|10305|

R Ice Thistle Hills |QID|977| |N|Travel to {Ice Thistle Hills} (68.88, 41.00)| |Z|1452|
C Are We There, Yeti? |QID|977| |N|Kill (npc:7459) or (npc:7460) and collect 2 (item:12367) in {Ice Thistle Hills} (68.88, 41.00)| |Z|1452| |W| |NPC|7459, 7460|

R Everlook |QID|5163| |N|Travel to {Everlook} (60.89, 37.64)| |Z|1452|
T Are We There, Yeti? |QID|977| |N|(npc:10305) in {Everlook} (60.88, 37.63)| |Z|1452| |NPC|10305|
A Are We There, Yeti? |QID|5163| |N|(npc:10305) in {Everlook} (60.9, 37.6)| |Z|1452| |NPC|10305|
N (npc:10978) |QID|5163.1| |N|Use (item:12928) near (npc:10978) in {Everlook} (61.53, 38.63)| |Z|1452| |U|12928| |NPC|10978|
A The Everlook Report |QID|6029| |N|(npc:10431) in {Everlook} (61.35, 38.95)| |Z|1452| |NPC|10431|
A Duke Nicholas Zverenhoff |QID|6030| |N|(npc:11629) in {Everlook} (61.28, 38.96)| |Z|1452| |NPC|11629|
A Sister Pamela |QID|5601| |N|(npc:11629) in {Everlook} (61.29, 38.89)| |Z|1452| |NPC|11629|
N (item:12928) |QID|5163| |N|Store (item:12928) in the bank <br/><br/>Tick this step (61.4, 37.0)| |Z|1452| |L|12928| |O| |NPC|13917| --Everlook
N (item:20742) |QID|8471| |N|Store (item:20742) in the bank <br/><br/>Tick this step (61.4, 37.0)| |Z|1452| |L|20742| |O| |NPC|13917| --Everlook
N (item:11503) |QID|4102| |N|Withdraw (item:20742) from the bank <br/><br/>Tick this step (61.4, 37.0)| |Z|1452| |L|11503| |OO| |NPC|13917| --Everlook

N Guide Complete |N|Tick to continue to the next guide| 

]]
end, {image = "winterspring.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end
