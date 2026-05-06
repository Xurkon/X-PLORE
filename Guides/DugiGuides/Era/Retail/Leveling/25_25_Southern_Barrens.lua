local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_25_25_Southern_Barrens")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 20-30|r", "1413(25-25)#1413(25-25)#1413(25-25)", "1441(25-26)#1441(25-26)#1441(25-26)", "Horde", nil, "L", nil, function()
return [[

R The Crossroads |OID|868| |N|Travel to {The Crossroads} (51.10, 29.62)|
A Egg Hunt |QID|868| |N|(npc:3428) in {The Crossroads} (51.10, 29.62)| |NPC|3428|

R Camp Taurajo |QID|897| |N|Travel to {Camp Taurajo} (44.83, 59.09)|
T Jorn Skyseer |QID|3261| |N|(npc:3387) in {Camp Taurajo} (44.83, 59.09)| |O| |NPC|3387| 
A Ishamuhale |QID|882| |N|(npc:3387) in {Camp Taurajo} (44.83, 59.09)| |PRE|3261| |NPC|3387|
h Camp Taurajo |QID|893| |N|Speak to (npc:7714) and set hearth at {Camp Taurajo} (45.6, 59)| |NPC|7714|
A Weapons of Choice |QID|893| |N|(npc:3433) in {Camp Taurajo} (45.12, 57.69)| |NPC|3433|
K (npc:3473) |OID|884| |N|Kill (npc:3473) and collect (item:5102) in {Southern Barrens} to accept a quest (48.91, 60.97)| |L|5102| |W| |NPC|3473|
A Owatanka |QID|884| |N|Use (item:5102) to accept quest| |U|5102| |O|
K (npc:3253) |OID|897| |N|Kill (npc:3253) and collect (item:5138) in {Field of Giants} to accept a quest (46.40, 72.00)| |L|5138| |W| |NPC|3253|
A The Harvester |QID|897| |N|Use (item:5138) to accept quest| |U|5138| |O|
C Egg Hunt |QID|868| |N|Use (item:5059) on the mounds and collect 12 (item:5058) at the {Field of Giants} (45, 72)| |W| |U|5059|
K (npc:3249) |QID|822.2| |N|Kill (npc:3249) and collect (item:4897) in {Field of Giants} (46.74, 73.83)| |O| |NPC|3249|

R Blackthorn Ridge |QID|879| |N|Travel to {Blackthorn Ridge} (46.74, 79.63) (43.83, 81.96)|
K (npc:3434) |QID|879.2| |N|Kill (npc:3434) and collect (item:5073) in {Blackthorn Ridge} (46.74, 79.63) (43.83, 81.96) (43.87, 83.00)| |NPC|3434|
K (npc:3458) |QID|893.2| |N|Kill (npc:3458) and collect (item:5092) in {Blackthorn Ridge} (43.45, 83.01)| |NPC|3458|
K (npc:3436) |QID|879.1| |N|Kill (npc:3436) and collect (item:5074) in {Blackthorn Ridge} (43.51, 80.66)| |NPC|3436|
K (npc:3459) |QID|893.3| |N|Kill (npc:3459) and collect (item:5094) in {Blackthorn Ridge} (41.91, 80.65)| |NPC|3459|
K (npc:3435) |QID|879.3| |N|Kill (npc:3435) and collect (item:5072) in {Blackthorn Ridge} (40.64, 80.62)| |NPC|3435|
C Weapons of Choice |QID|893.1| |N|Kill (npc:3456) or (npc:3457) and collect (item:5093) in {Blackthorn Ridge} (43.90, 84.13)| |W| |NPC|3456, 3457| 

R Southern Gold Road |QID|843| |N|Travel to {Southern Gold Road} (46.12, 75.40)|
A Gann's Reclamation |QID|843| |N|(npc:3341) in {Southern Gold Road}, patrols the road (46.1, 76.4) (46.1, 81.3)| |NPC|3341|
K (npc:3392) |QID|843.3| |N|Kill (npc:3392) collect (item:5006) in {Bael Modan} (47.58, 86.15)| |NPC|3392|
C Gann's Reclamation |QID|843| |N|Kill 15 (npc:3374) and 5 (npc:3375) in {Bael Modan} (46, 85)| |W| |NPC|3374, 3375|

R Southern Gold Road |QID|846| |N|Travel to {Southern Gold Road} (46.12, 75.40)|
T Gann's Reclamation |QID|843| |N|(npc:3341) in {Southern Gold Road}, patrols the road (46.1, 76.4) (46.1, 81.3)| |NPC|3341|
A Revenge of Gann (1) |QID|846| |N|(npc:3341) in {Southern Gold Road}, patrols the road (46.1, 76.4) (46.1, 81.3)| |NPC|3341|

R Field of Giants |QID|822| |N|Travel to {Field of Giants} (47.77, 73.62)| |O|
K (npc:3238) |QID|822.1| |N|Kill (npc:3238) and collect 5 (item:4898) in {Field of Giants} (47.77, 73.62)| |O| |W| |NPC|3238|

R Camp Taurajo |TID|879| |N|Travel to {Camp Taurajo} (45.11, 57.72)|
T Weapons of Choice |QID|893| |N|(npc:3433) in {Camp Taurajo} (45.11, 57.72)| |NPC|3433|
T Owatanka |QID|884| |N|(npc:3387) in {Camp Taurajo} (44.87, 59.09)| |O| |NPC|3387|
T Washte Pawne |QID|885| |N|(npc:3387) in {Camp Taurajo} (44.87, 59.09)| |O| |NPC|3387|
T The Harvester |QID|897| |N|(npc:3387) in {Camp Taurajo} (44.87, 59.09)| |O| |NPC|3387|
T Betrayal from Within (1) |QID|879| |N|(npc:3430) in {Camp Taurajo} (44.56, 59.24)| |NPC|3430|
A Betrayal from Within (2) |QID|906| |N|(npc:3430) in {Camp Taurajo} (44.56, 59.24)| |NPC|3430|

R The Crossroads |TID|868| |N|Travel to {The Crossroads} (51.49, 30.83)|
T Egg Hunt |QID|868| |N|(npc:3428) in {The Crossroads} (51.08, 29.61)| |NPC|3428|
T Betrayal from Within (2) |QID|906| |N|(npc:3429) in {The Crossroads} (51.49, 30.83)| |NPC|3429|
N (item:5058) |N|Discard left overs (item:5058)<br/><br/>Tick this step| |O| |L|5058|

K (npc:3242) |QID|882| |N|Kill (npc:3242) until you find a (item:10338) (61, 32)| |L|10338| |PRE|3261| |W| |NPC|3242| 
C Ishamuhale |QID|882| |N|Use (item:10338) at the tree northwest of Ratchet to summon (npc:3257). Kill him and collect (item:5101) (59, 30)| |PRE|3261| |U|10338| |NPC|3257|

R Ratchet |TID|1094| |N|Travel to {Ratchet} (62.37, 37.65)| |O| 
T Deepmoss Spider Eggs |QID|1069| |N|(npc:3446) in {Ratchet} (62.37, 37.65)| |O| |NPC|3446|
T Chen's Empty Keg (3) |QID|822| |N|(npc:3292) in {Ratchet} (62.29, 38.36)| |O| |NPC|3292|
T Further Instructions (1) |QID|1094| |N|(npc:3442) in {Ratchet} (62.96, 37.21)| |O| |NPC|3442|
A Further Instructions (2) |QID|1095| |N|(npc:3442) in {Ratchet} (62.96, 37.21)| |PRE|1094| |NPC|3442|

R Camp Taurajo |QID|907| |N|Travel to {Camp Taurajo} (44.84, 59.12)| |Z|1413|
T Ishamuhale |QID|882| |N|(npc:3387) in {Camp Taurajo} (44.84, 59.12)| |Z|1413| |O| |NPC|3387|
A Enraged Thunder Lizards |QID|907| |N|(npc:3387) in {Camp Taurajo} (44.84, 59.12)| |PRE|882| |NPC|3387|
h Camp Taurajo |QID|1153| |N|Speak to (npc:7714) and set hearth at {Camp Taurajo} (45.6, 59)| |NPC|7714|
T Weapons of Choice |QID|893| |N|(npc:3433) in {Camp Taurajo} (45.12, 57.69)| |O| |NPC|3433|
A A New Ore Sample |QID|1153| |N|(npc:3433) in {Camp Taurajo} (45.09, 57.72)| |PRE|893| |Z|1413| |NPC|3433|

C Enraged Thunder Lizards |QID|907| |N|Kill (npc:3239) and (npc:3240) for 3 (item:5143) in {Southern Barrens} (50, 60)| |PRE|882| |W| |NPC|3239, 3240|

R Camp Taurajo |TID|1153| |N|Travel to {Camp Taurajo} (44.86, 59.13)| |Z|1413| |PRE|893| |L|5103|
A Washte Pawne |QID|885| |N|Use (item:5103) to accept quest| |U|5103| |O| |OID|849| 
T Washte Pawne |QID|885| |N|(npc:3387) in {Camp Taurajo} (44.86, 59.13)| |Z|1413| |O| |OID|849| |NPC|3387|
T Enraged Thunder Lizards |QID|907| |N|(npc:3387) in {Camp Taurajo} (44.86, 59.13)| |Z|1413| |O| |NPC|3387|
A Cry of the Thunderhawk |QID|913| |N|(npc:3387) in {Camp Taurajo} (44.86, 59.13)| |Z|1413| |PRE|907| |NPC|3387|
C Cry of the Thunderhawk |QID|913| |N|Kill (npc:3424) to collect (item:5164) (44.0, 55.0) (48.3, 56.9) (48.1, 60.0) (48.7, 62.1) (44.9, 63.0) (44.5, 61.6)| |Z|1413| |PRE|907| |NPC|3424|
T Cry of the Thunderhawk |QID|913| |N|(npc:3387) in {Camp Taurajo} (44.89, 59.15)| |Z|1413| |PRE|907| |NPC|3387|

R Bael'dun Keep |QID|846| |N|Travel to {Bael'dun Keep} (48.97, 84.34)| |Z|1413|
C Revenge of Gann (1) |QID|846| |N|Kill (npc:3377), (npc:3376) and (npc:3378) at Bael Dun Keep to collect 6 vials of (item:5017), 6 bundles of (item:5018) and 6 samples of (item:5019) in {Bael'dun Keep} (49, 84)| |W| |NPC|3377, 3376, 3378|

R Southern Gold Road |OID|849| |N|Travel to {Southern Gold Road} (46, 75) (46, 81)|
T Revenge of Gann (1) |QID|846| |N|(npc:3341) in {Southern Gold Road} , patrolling the road (46, 75) (46, 81)| |LOOP| |NPC|3341|
A Revenge of Gann (2) |QID|849| |N|(npc:3341) in {Southern Gold Road} , patrolling the road (46, 75) (46, 81)| |LOOP| |NPC|3341|

R Bael Modan |TID|849| |N|Travel to {Bael Modan} (46.66, 85.45)| |Z|1413|
C Revenge of Gann (2) |QID|849| |N|Use (item:5021) to blow up the Bael Modan Flying Machine on top of the tower in {Bael Modan} (47.0, 85.6)| |U|5021| |OBJ|330|
T Revenge of Gann (2) |QID|849| |N|(npc:3341) in {Southern Gold Road} , patrolling the road (46, 75) (46, 81)| |LOOP| |NPC|3341|

K (npc:3472) |OID|885| |N|Kill (npc:3472) and collect (item:5103) to start a new quest<br/><br/>You can safely skip this if you can't find (npc:3472) (44.8, 75.6) (45.0, 78.4) (43.4, 81.6) (47.6, 79.4)| |Z|1413| |LOOP| |L|5103| |NPC|3472|
A Washte Pawne |QID|885| |N|Use (item:5103) to accept quest| |U|5103| |O|

R The Great Lift |QID|4542| |N|Run to The Great Lift (44.0, 92.0)|
T Calling in the Reserves |QID|5881| |N|(npc:12576) in {The Great Lift} (31.93, 21.56)| |Z|1441| |NPC|12576|
A Message to Freewind Post |QID|4542| |N|(npc:10079) in {The Great Lift} (32.25, 22.10)| |Z|1441| |NPC|10079|

N Guide Complete |N|Tick to continue to the next guide| 

]]
end, {image = "southernbarrens.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end

