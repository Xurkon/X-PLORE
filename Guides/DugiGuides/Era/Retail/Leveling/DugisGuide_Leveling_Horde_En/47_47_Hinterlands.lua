local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_47_47_Hinterlands")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 40-50|r", "1425(47-47)#1425(47-47)#1425(47-47)", "1434(47-47)#1434(47-47)#1434(47-47)", "Horde", nil, "L", nil, function()
return [[

R Grom'gol Base Camp |OID|2932| |N|Travel to {Grom'gol Base Camp} (32.16, 27.77)| |Z|1434|
A Grim Message |QID|2932| |N|(npc:2497) in {Grom'gol Base Camp} (32.16, 27.77)| |Z|1434| |NPC|2497|

R Undercity |OID|2995| |N|Travel to {Magic Quarter} in {Undercity} (73.15, 32.80)| |Z|1458|
A Lines of Communication |QID|2995| |N|(npc:7825) in {Magic Quarter} (73.15, 32.80)| |Z|1458| |NPC|7825|

R Tarren Mill |QID|77| |N|Travel to {Tarren Mill} (62.76, 19.04)| |Z|1424|
h Tarren Mill |QID|77| |N|Speak to (npc:2388) and set hearth in {Tarren Mill} (62.76, 19.04)| |Z|1424| |NPC|2388|

N As you go... |AYG|7844| |QID|7842| |N|Kill (npc:2657) for 10 (item:4589) as you travel to {Revantusk Village}, you will need this for a later quest| |L|4589 10| |REACH|55.83,53.15| |NPC|2657|
R Shindigger's Camp |QID|650| |N|Travel to {Shindigger's Camp} in {The Hinterlands} (22.67, 47.92) (26.70, 48.52)| |Z|1425| |O|
T Ripple Recovery |QID|650| |N|(npc:7801) in {Shindigger's Camp} (26.69, 48.57)| |O| |Z|1425|
A A Sticky Situation |QID|77| |N|(npc:7801) in {Shindigger's Camp} (26.70, 48.52)| |Z|1425| |NPC|7801|

R Revantusk Village |QID|7844| |N|Travel to {Revantusk Village} (55.83, 53.15) (72.46, 66.20) (77.19, 78.01)| |Z|1425|
A Cannibalistic Cousins |QID|7844| |N|(npc:14739) in {Revantusk Village} (78.81, 79.02)| |Z|1425| |NPC|14739|
A Message to the Wildhammer |QID|7841| |N|(npc:14738) in {Revantusk Village} (79.29, 79.09)| |Z|1425| |NPC|14738|
A Stalking the Stalkers |QID|7828| |N|(npc:14741) in {Revantusk Village} (79.16, 79.53)| |Z|1425| |NPC|14741|
A Hunt the Savages |QID|7829| |N|(npc:14741) in {Revantusk Village} (79.16, 79.53)| |Z|1425| |NPC|14741|
A Avenging the Fallen |QID|7830| |N|(npc:14741) in {Revantusk Village} (79.16, 79.53)| |Z|1425| |NPC|14741|
A Vilebranch Hooligans |QID|7839| |N|(npc:14737) in {Revantusk Village} (77.55, 80.31)| |Z|1425| |NPC|14737|
f Revantusk Village |QID|7844| |N|Speak to (npc:4314) and grab flight path for {Revantusk Village} (81.70, 81.77)| |Z|1425| |NPC|4314|

R The Overlook Cliffs |QID|7828| |N|Travel to {The Overlook Cliffs} (75.92, 61.67)| |Z|1425|
K (npc:2926) |QID|7828.1| |N|Kill (npc:2926) in {The Hinterlands}, tick this step to complete this later (63.0, 49.0)| |Z|1425| |W| |NPC|2926|
C Cannibalistic Cousins |QID|7844| |N|Kill 15 (npc:4466) and 10 (npc:4467) in the troll camps (73.06, 51.88) (70.67, 48.34) (65.54, 44.57)| |Z|1425| |LOOP| |NPC|4466, 4467|

R Skulk Rock |QID|7839| |N|Travel to {Skulk Rock} (57.44, 42.62)| |Z|1425|
C Vilebranch Hooligans |QID|7839| |N|Collect (item:19033) on top of the hill in {Skulk Rock} (57.44, 42.62)| |Z|1425| |OBJ|1208|
C A Sticky Situation |QID|77| |N|Collect 10 (item:8684) from the Horde Supply Crate in {Skulk Rock} (57.44, 39.06) (57.28, 41.17)| |Z|1425| |W| |OBJ|1988|

R Valorwind Lake |QID|7830| |N|Travel to {Valorwind Lake} (54.17, 49.39)| |Z|1425| |REACH|
C Avenging the Fallen |QID|7830| |N|Kill (npc:2659) collect (item:19025) (54.17, 49.39)| |W| |Z|1425| |NPC|2659|

C Testing the Vessel |QID|3123| |N|Kill (npc:2928) and use the (item:9618) to collect 10 (item:9594) in {Valorwind Lake} (43.90, 55.42)| |Z|1425| |W| |NPC|2928|
C Hunt the Savages |QID|7829| |N|Kill 20 (npc:2929) (65.36, 59.10) (53.95, 51.87) (51.38, 47.00) (61.42, 44.04) (64.52, 56.05)| |Z|1425| |LOOP| |NPC|2929|
K (npc:2925) |QID|7828.1| |N|Kill (npc:2925) in {The Hinterlands}, tick this step to complete this later (40.0, 50.0)| |Z|1425| |W| |NPC|2925|

R Shindigger's Camp |QID|81| |N|Travel to {Shindigger's Camp} (20.71, 48.24) (26.72, 48.60)| |Z|1425| 
T A Sticky Situation |QID|77| |N|(npc:7801) in {Shindigger's Camp} (26.72, 48.60)| |Z|1425| |NPC|7801|
A Ripple Delivery |QID|81| |N|(npc:7801) in {Shindigger's Camp} (26.72, 48.60)| |Z|1425| |NPC|7801|

N Burn the Highvale Records |QID|2995.1| |N|Click on Highvale Records in {Quel'Danil Lodge} (31.98, 46.86)| |Z|1425| |OBJ|210|
N Burn the Highvale Notes |QID|2995.2| |N|Click on Highvale Notes in {Quel'Danil Lodge} (29.64, 48.73)| |Z|1425| |OBJ|210|
N Burn the Highvale Report |QID|2995.3| |N|Click on Highvale Report in {Quel'Danil Lodge} (28.57, 46.10)| |Z|1425| |OBJ|210|
A Rin'ji is Trapped! |QID|2742| |N|(npc:7780) in {Quel'Danil Lodge}, clear the area first before accepting the quest (30.75, 46.97)| |Z|1425| |NPC|7780|
C Rin'ji is Trapped! |QID|2742| |N|Escort (npc:7780) to safety (34.86, 56.78)| |Z|1425| |NPC|7780|
C Message to the Wildhammer |QID|7841| |N|Kill the required Highvale elfs {Quel'Danil Lodge} (31.77, 49.40)| |Z|1425| |W| |NPC|2694, 2693, 2692, 2691|

R Shindigger's Camp |QID|81| |N|Travel to {Shindigger's Camp} (20.71, 48.24) (26.72, 48.60)| |Z|1425| 
T A Sticky Situation |QID|77| |N|(npc:7801) in {Shindigger's Camp} (26.72, 48.61)| |Z|1425| |NPC|7801|
A Ripple Delivery |QID|81| |N|(npc:7801) in {Shindigger's Camp} (26.72, 48.61)| |Z|1425| |NPC|7801|

R Hiri'watha |QID|2933| |N|Travel to {Zun'watha} (23.52, 58.91)| |Z|1425|
A Venom Bottles |QID|2933| |N|Venom bottle in {Zun'watha} (23.52, 58.91)| |Z|1425| |OBJ|228|
N 20 (item:9320) |QID|2932| |N|Kill the trolls in {Hiri'watha} and {Zun'watha} until you collect 20 (item:9320) (32.11, 57.88) (23.38, 58.26)| |Z|1425| |L|9320 20| |LOOP| |NPC|2652, 2557, 2554|
U (item:15002) |QID|2932| |N|Use (item:15002) to create (item:9319)| |L|9319| |U|15002|
C Grim Message |QID|2932.1| |N|Use (item:9319) in {Hiri'watha} (31.82, 57.81)| |Z|1425| |U|9319|

K (npc:2657) |QID|7842| |N|Kill (npc:2657) for 10 (item:4589), you will need this for a later quest (20.8, 53.5)| |L|4589 10| |W| |NPC|2657|
K (npc:2925) |QID|7828.1| |N|Kill (npc:2925) in {The Hinterlands} (40.0, 50.0)| |Z|1425| |W| |NPC|2925|
K (npc:2926) |QID|7828.1| |N|Kill (npc:2926) in {The Hinterlands} (63.0, 49.0)| |Z|1425| |W| |NPC|2926|

R The Overlook Cliffs |QID|2782| |N|Travel to {The Overlook Cliffs} (86.29, 59.06)| |Z|1425|
T Rin'ji is Trapped! |QID|2742| |N|Rin'ji Secret in {The Overlook Cliffs} (86.29, 59.06)| |Z|1425| |OBJ|5|
A Rin'ji's Secret |QID|2782| |N|Rin'ji Secret in {The Overlook Cliffs} (86.25, 59.21)| |Z|1425| |OBJ|5|

R Revantusk Village |QID|7842| |N|Travel to {Revantusk Village} (72.46, 66.20) (78.78, 78.39)| |Z|1425|
T Cannibalistic Cousins |QID|7844| |N|(npc:14739) in {Revantusk Village} (78.78, 78.39)| |Z|1425| |NPC|14739|
T Stalking the Stalkers |QID|7828| |N|(npc:14741) in {Revantusk Village} (79.17, 79.51)| |Z|1425| |NPC|14741|
T Hunt the Savages |QID|7829| |N|(npc:14741) in {Revantusk Village} (79.17, 79.51)| |Z|1425| |NPC|14741|
T Avenging the Fallen |QID|7830| |N|(npc:14741) in {Revantusk Village} (79.17, 79.51)| |Z|1425| |NPC|14741|
T Message to the Wildhammer |QID|7841| |N|(npc:14738) in {Revantusk Village} (79.34, 79.09)| |Z|1425| |NPC|14738|
A Another Message to the Wildhammer |QID|7842| |N|(npc:14738) in {Revantusk Village} (79.34, 79.09)| |Z|1425| |NPC|14738|
C Another Message to the Wildhammer |QID|7842| |N|Kill (npc:2657) for 10 (item:4589) in {The Hinterlands} (20.8, 53.5)| |Z|1425| |W| |NPC|2657|
T Another Message to the Wildhammer |QID|7842| |N|(npc:14738) in {Revantusk Village} (79.34, 79.09)| |Z|1425| |NPC|14738|
T Vilebranch Hooligans |QID|7839| |N|(npc:14737) in {Revantusk Village} (77.55, 80.31)| |Z|1425| |NPC|14737|

R Tarren Mill |QID|2934| |N|Travel to {Tarren Mill} (61.46, 19.15)| |Z|1424| 
T Venom Bottles |QID|2933| |N|(npc:2216) in {Tarren Mill} (61.46, 19.15)| |Z|1424| |NPC|2216|
A Undamaged Venom Sac |QID|2934| |N|(npc:2216) in {Tarren Mill} (61.46, 19.15)| |Z|1424| |NPC|2216|

R Shadra'Alor |QID|2934| |N|Travel to {Shadra'Alor} (10.31, 54.81) (23.77, 56.50)(35.81, 63.58) (34.96, 68.43)| |Z|1425|
C Undamaged Venom Sac |QID|2934| |N|Kill (npc:2686) and collect (item:9322) in {Shadra'Alor} (34.96, 68.43)| |Z|1425| |W| |NPC|2686|
T The Atal'ai Exile |QID|1429| |N|(npc:5598) in {Shadra'Alor} (33.74, 75.16)| |Z|1425| |NPC|5598|
A Return to Fel'Zerul |QID|1444| |N|(npc:5598) in {Shadra'Alor} (33.74, 75.16)| |Z|1425| |NPC|5598|
A Jammal'an the Prophet |QID|1446| |N|(npc:5598) in {Shadra'Alor} (33.74, 75.16)| |Z|1425| |NPC|5598|

R Tarren Mill |QID|2934| |N|Travel to {Tarren Mill} (61.46, 19.15)| |Z|1424| 
T Undamaged Venom Sac |QID|2934| |N|(npc:2216) in {Tarren Mill} (61.47, 19.10)| |Z|1424| |NPC|2216|
--A Consult Master Gadrin |QID|2935| |N|(npc:2216) in {Tarren Mill} (61.47, 19.10)| |Z|1424| |NPC|2216|

R Undercity |QID|2782| |N|Travel to {Magic Quarter} in {Undercity} (73.09, 32.77)| |Z|1458|
N (item:8685) |QID|81| |N|Store (item:8685) at the bank<br/><br/>Tick this step (66.0, 45.2)| |Z|1458| |L|8685| |O| |NPC|4549, 2458| -- Undercity
N (item:9594) |QID|3123| |N|Store (item:9594) at the bank<br/><br/>Tick this step (66.0, 45.2)| |Z|1458| |L|9594| |O| |NPC|4549, 2458| -- Undercity
N (item:9618) |QID|3123| |N|Store (item:9618) at the bank<br/><br/>Tick this step (66.0, 45.2)| |Z|1458| |L|9618| |O| |NPC|4549, 2458| -- Undercity
N (item:4589) |QID|7842| |N|Store (item:4589) at the bank<br/><br/>Tick this step (66.0, 45.2)| |Z|1458| |L|4589| |O| |NPC|4549, 2458| -- Undercity
N (item:5826) |QID|1118| |N|Withdraw (item:5826) at the bank<br/><br/>Tick this step (66.0, 45.2)| |Z|1458| |L|5826| |OO| |NPC|4549, 2458| -- Undercity
N (item:9245) |QID|2874| |N|Withdraw (item:15002) at the bank<br/><br/>Tick this step (66.0, 45.2)| |Z|1458| |L|9245| |OO| |NPC|4549, 2458| -- Undercity
T Rin'ji's Secret |QID|2782| |N|(npc:7825) in {Magic Quarter} (73.09, 32.77)| |Z|1458| |NPC|7825|
T Lines of Communication |QID|2995| |N|(npc:7825) in {Magic Quarter} (73.09, 32.77)| |Z|1458| |NPC|7825|
T Oran's Gratitude |QID|8273| |N|(npc:7825) in {Magic Quarter} (73.09, 32.77)| |Z|1458| |E| |NPC|7825|

N Guide Complete |N|Tick to continue to the next guide| 

]]
end, {image = "hinterlands.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end
