local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_29_30_HillsbradFoothills")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 20-30|r", "1424(29-30)#1424(29-30)#1424(29-30)", "1417(30-30)#1417(30-30)#1417(30-30)", "Horde", nil, "L", nil, function()
return [[

R Undercity |QID|493| |N|Travel to Undercity (61.9, 68.1)| |Z|1420|
f Undercity |QID|493| |N|Speak to (npc:4551) and grab flight path for {Undercity} (63.5, 48.7)| |Z|1458| |R|Orc, Troll, Tauren| |NPC|4551|
N (item:5838) |N|Store (item:5838) at the bank (66.0, 45.2)| |Z|1458| |L| |Z|5838| |O| |NPC|4549, 2458|

R Tirisfal Glades |QID|493| |N|Exit through the sewers to {Tirisfal Glades} (15.2, 32.4)| |Z|1458|
R Silverpine Forest |QID|493| |N|Travel to Silverpine Forest (50, 79.3)| |Z|1420|
A Journey to Hillsbrad Foothills |QID|493| |N|(npc:1937) in {The Sepulcher} (42.9, 40.9)| |Z|1421| |NPC|1937|
f The Sepulcher |QID|494| |N|Speak to (npc:2226) flight path for {The Sepulcher} (45.61, 42.60)| |Z|1421| |OID|1536|  |NPC|2226|

R Hillsbrad Foothills |QID|494| |N|Travel down through Silverpine then east to {Hillsbrad Foothills} (71.3, 80.5)| |Z|1421|
A Time To Strike |QID|494| |N|(npc:2214) in {Southpoint Tower} (20.8, 47.4)| |NPC|2214|

R Tarren Mill |QID|1361| |N|Travel to {Tarren Mill} (62.3, 20.3)|
T Time To Strike |QID|494| |N|(npc:2215) in {Tarren Mill} (62.3, 20.3)| |NPC|2215|
T Journey to Hillsbrad Foothills |QID|493| |N|(npc:2216) in {Tarren Mill} (61.5, 19.2)| |NPC|2216|
T Journey to Tarren Mill |QID|1065| |N|(npc:2216) in {Tarren Mill} (61.4, 19.2)| |Z|1424| |O| |NPC|2216|
A Blood of Innocents |QID|1066| |N|(npc:2216) in {Tarren Mill} (61.42, 19.04)| |Z|1424| |PRE|1063| |NPC|2216|
f Tarren Mill |QID|1361| |N|Speak to (npc:2389) and grab flight path for {Tarren Mill} (60.2, 18.7)| |OID|1536| |NPC|2389|
A Elixir of Suffering |QID|496| |N|(npc:2216) in {Tarren Mill} (61.49, 19.18)| |NPC|2216|
A Elixir of Pain |QID|501| |N|(npc:2216) in {Tarren Mill} (61.49, 19.18)| |NPC|2216|
A Elixir of Agony |QID|509| |N|(npc:2216) in {Tarren Mill} (61.49, 19.18)| |NPC|2216|
A Battle of Hillsbrad (1) |QID|527| |N|(npc:2215) in {Tarren Mill} (62.30, 20.18)| |NPC|2215|
A Helcular's Revenge (1) |QID|552| |N|(npc:2429) in {Tarren Mill} (63.81, 19.65)| |NPC|2429|
A Dangerous! |QID|567| |N|Click item Dangerous! in {Tarren Mill} (62.50, 19.85)|
A Soothing Turtle Bisque |QID|7321| |N|(npc:2393) in {Tarren Mill}<br/><b>Requires cooking profession to accept quest (62.38, 19.07)| |NPC|2393|
B (item:3713) |QID|7321.2| |N|Buy 1 (item:3713) from (npc:2393) in {Tarren Mill} (62.36, 19.01)| |NPC|2393|

R Durnholde Keep |QID|496| |N|Travel to {Durnholde Keep} (83.67, 34.61)|
K (npc:2350) |QID|496.2| |N|Kill (npc:2350) until you find (item:3477) in {Durnholde Keep} (83.67, 34.61)| |NPC|2350|
C Blood of Innocents |QID|1066| |N|Kill (npc:2261), (npc:2244) and collect 5 (item:5620) in {Durnholde Keep}, low drop rate (76.39, 46.69) (78.91, 42.83)| |Z|1424| |W| |NPC|2261, 2244|

R Nethander Stead |QID|509| |N|Travel to {Nethander Stead} (88.58, 40.84) (64.04, 60.15)|
C Elixir of Agony |QID|509| |N|Collect (item:3502) from the ground in {Nethander Stead} (64.04, 60.15)| |W|
K (npc:2356) |QID|496.1| |N|Kill (npc:2356) and collect 10 (item:3476) in {Durnholde Keep} (83.31, 35.82)| |NPC|2356|

R Hillsbrad Foothills |QID|496.1| |N|Travel to {Hillsbrad Foothills} (55.2, 54)|
K (npc:2408) |QID|7321.1| |N|Kill (npc:2408) along the river and collect 10 (item:3712) in {Hillsbrad Foothills} (55.2, 54) (58.8, 45) (67, 35.4) (68, 32.2) (67.81, 20.62)| |NPC|2408|

R Tarren Mill |QID|499| |N|Travel to {Tarren Mill} (61.47, 19.20)|
T Blood of Innocents |QID|1066| |N|(npc:2216) in {Tarren Mill} (61.42, 19.04)| |Z|1424| |PRE|1063| |NPC|2216|
A Return to Thunder Bluff |QID|1067| |N|(npc:2216) in {Tarren Mill} (61.45, 19.09)| |Z|1424| |PRE|1063| |NPC|2216|
T Elixir of Suffering |QID|496| |N|(npc:2216) in {Tarren Mill} (61.47, 19.20)| |NPC|2216|
A Elixir of Suffering |QID|499| |N|(npc:2216) in {Tarren Mill} (61.47, 19.20)| |NPC|2216|
T Elixir of Suffering |QID|499| |N|(npc:2230) in {Tarren Mill} (61.47, 19.20)| |NPC|2230|
T Elixir of Agony |QID|509| |N|(npc:2216) in {Tarren Mill} (61.47, 19.20)| |NPC|2216|
T Soothing Turtle Bisque |QID|7321| |N|(npc:2393) in {Tarren Mill} (62.31, 19.10)| |NPC|2393|

R Darrow Hill |QID|552| |N|Travel to {Darrow Hill} (46.0, 32.6)|
C Helcular's Revenge (1) |QID|552| |N|Kill (npc:2248) until you collect (item:3708) in {Darrow Hill} (46.0, 32.6)| |W| |NPC|2248|

R Hillsbrad Fields |QID|501| |N|Travel to {Hillsbrad Fields} (45.83, 34.30)|
C Elixir of Pain |QID|501| |N|Kill (npc:2384) and collect 10 (item:3496) in {Hillsbrad Fields} (45.83, 34.30) (53.56, 31.56) (39.20, 38.57)| |LOOP| |NPC|2384|

R Tarren Mill |QID|502| |N|Travel to {Tarren Mill} (61.47, 19.15)|
T Elixir of Pain |QID|501| |N|(npc:2216) in {Tarren Mill} (61.47, 19.15)| |NPC|2216|
A Elixir of Pain |QID|502| |N|(npc:2216) in {Tarren Mill} (61.47, 19.15)| |NPC|2216|
T Helcular's Revenge (1) |QID|552| |N|(npc:2429) in {Tarren Mill} (63.82, 19.64)| |NPC|2429|
A Helcular's Revenge (2) |QID|553| |N|(npc:2429) in {Tarren Mill} (63.82, 19.64)| |NPC|2429|

R Darrow Hill |QID|553| |N|Travel to {Darrow Hill} (46.27, 31.91)|
N Charge Flame of Azel |QID|553.1| |N|Click Item Flame of Azel in {Darrow Hill} (46.27, 31.91) (43.85, 27.93)|
N Charge Flame of Veraz |QID|553.2| |N|Click Item Flame of Veraz in {Darrow Hill} (43.94, 26.62)|

R Hillsbrad Fields |QID|527| |N|Travel to {Hillsbrad Fields} (46.36, 31.95) (32.68, 35.51)|
T Elixir of Pain |QID|502| |N|(npc:2274) in {Hillsbrad Fields} (32.68, 35.51)| |NPC|2274|
K (npc:232) |QID|527.3| |N|Kill (npc:232) in {Hillsbrad Fields} (32.63, 35.57)| |NPC|232|
K (npc:2449) |QID|567.2| |N|Kill (npc:2449) in {Hillsbrad Fields} (32.56, 35.78)| |NPC|2449|
K (npc:2448) |QID|567.1| |N|Kill (npc:2448) in {Hillsbrad Fields} (29.44, 43.03)| |NPC|2448|
K (npc:2451) |QID|567.4| |N|Kill (npc:2451) in {Hillsbrad Fields} (36.32, 47.13)| |NPC|2451|
K (npc:2403) |QID|527.4| |N|Kill (npc:2403) in {Hillsbrad Fields} (36.05, 40.74)| |NPC|2403|
C Battle of Hillsbrad (1) |QID|527| |N|Kill 6 (npc:2266) and 6 (npc:2360) in {Hillsbrad Fields} (32.05, 38.46)| |W| |NPC|2403|

R Azurelode Mine |QID|567| |N|Travel to {Azurelode Mine} (26.44, 58.68)|
K (npc:2450) |QID|567.3| |N|Kill (npc:2450) in {Azurelode Mine}<br/><b>Take the lower entrance and hug the right side wall to reach Miner Hackett (26.44, 58.68) (30.49, 58.35)| |NPC|2450|

R Tarren Mill |TID|567| |N|Travel to {Tarren Mill} (26.44, 58.68) (62.39, 20.33)|
T Battle of Hillsbrad (1) |QID|527| |N|(npc:2215) in {Tarren Mill} (62.39, 20.33)| |NPC|2215|
T Dangerous! |QID|567| |N|(npc:2215) in {Tarren Mill} (62.39, 20.33)| |NPC|2215|
N Level 30 Required |OID|1361| |N|You should be close to level 30, grind nearby mobs to reach level 30| |PL|30|
A Regthar Deathgate |QID|1361| |N|(npc:2229) in {Tarren Mill} (63.17, 20.70)| |NPC|2229|
A The Hammer May Fall |QID|676| |N|(npc:2770) in {Tarren Mill} (61.9, 19.7)| |NPC|2770|

N Guide Complete |N|Tick to continue to the next guide| 

]]
end, {image = "hillsbrad.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end

--A The Hammer May Fall |QID|676| |N|(npc:2770) in {Tarren Mill} (61.9, 19.7)| |NPC|2770|
--T Return to Thunder Bluff |QID|1067| |N|(npc:3419) in {The Pools of Vision} (22.93, 20.93)| |Z|1456| |PRE|1063| |NPC|3419|
--A The Flying Machine Airport |QID|1086| |N|(npc:3419) in {The Pools of Vision} (22.93, 20.93)| |Z|1456 |PRE|1063| |NPC|3419|
--C The Flying Machine Airport |QID|1086| |N|Use (item:5638) near the flying machine in {Cragpool Lake} (66.57, 45.54)| |Z|1442| |PRE|1063| |U|5638|
--T The Flying Machine Airport |QID|1086| |N|(npc:3419) in {The Pools of Vision} (22.92, 21.03)| |Z|1456| |PRE|1063| |NPC|3419|
