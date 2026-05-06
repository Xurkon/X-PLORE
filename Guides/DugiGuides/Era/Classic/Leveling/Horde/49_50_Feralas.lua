local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_49_50_Feralas")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 40-50|r", "1444(49-50)#1444(49-50)#1444(49-50)", "1446(49-50)#1446(49-50)#1446(49-50)", "Horde", nil, "L", nil, function()
return [[

R Camp Mojache |QID|3062| |N|Travel to {Camp Mojache} (74.42, 43.35)| |Z|1444|
T Testing the Vessel |QID|3123| |N|(npc:8115) in {Camp Mojache} (74.42, 43.35)| |Z|1444| |O| |NPC|8115|
A Hippogryph Muisek |QID|3124| |N|(npc:8115) in {Camp Mojache} (74.42, 43.35)| |Z|1444| |PRE|3123| |NPC|8115|
A The Sunken Temple |QID|3380| |N|(npc:8115) in {Camp Mojache} (74.42, 43.35)| |Z|1444| |NPC|8115|
A Improved Quality |QID|7734| |N|in {Camp Mojache} (74.51, 42.95)| |Z|1444|
A Dark Heart |QID|3062| |N|(npc:7776) in {Camp Mojache} (76.18, 43.82)| |Z|1444| |NPC|7776|
A Vengeance on the Northspring |QID|3063| |N|(npc:7776) in {Camp Mojache} (76.18, 43.82)| |Z|1444| |NPC|7776|
A The Strength of Corruption |QID|4120| |N|(npc:7776) in {Camp Mojache} (76.18, 43.82)| |Z|1444| |NPC|7776|
h Camp Mojache |QID|3124| |N|Speak to (npc:7737) and set hearth in {Camp Mojache} (74.78, 45.13)| |Z|1444| |NPC|7737|

R High Wilderness |QID|3124| |N|Travel to {High Wilderness} (55.84, 63.26)| |Z|1444| 
C Hippogryph Muisek |QID|3124| |N|Kill any Hippogryph and use (item:9619) on the corpse to colllect 10 (item:9595) in {High Wilderness} (55.84, 63.26)| |Z|1444| |W| |PRE|3123| |U|9619| |NPC|5300, 5306, 5305, 5304|

R Camp Mojache |QID|3125| |N|Travel to {Camp Mojache} (74.41, 43.37)| |Z|1444| |PRE|3123| 
T Hippogryph Muisek |QID|3124| |N|(npc:8115) in {Camp Mojache} (74.41, 43.37)| |Z|1444| |PRE|3123| |NPC|8115|
A Faerie Dragon Muisek |QID|3125| |N|(npc:8115) in {Camp Mojache} (74.47, 43.61)| |Z|1444| |PRE|3123| |NPC|8115|
C Faerie Dragon Muisek |QID|3125| |N|Kill (npc:5278) and use (item:9620) on the corpse to colllect 10 (item:9595) (69.84, 46.98)| |Z|1444| |W| |PRE|3123| |U|9620| |NPC|5278|
T Faerie Dragon Muisek |QID|3125| |N|(npc:8115) in {Camp Mojache} (74.43, 43.38)| |Z|1444| |PRE|3123| |NPC|8115|
A Treant Muisek |QID|3126| |N|(npc:8115) in {Camp Mojache} (74.43, 43.38)| |Z|1444| |PRE|3123| |NPC|8115|
C Treant Muisek |QID|3126| |N|Rotate between the two spawn location to kill 3 (npc:7584) and use (item:9606) on the corpse to collect 3 (item:9593) (73.63, 39.77) (73.39, 54.40)| |Z|1444| |LOOP| |PRE|3123| |U|9606| |NPC|7584|
T Treant Muisek |QID|3126| |N|(npc:8115) in {Camp Mojache} (74.42, 43.37)| |Z|1444| |PRE|3123| |NPC|8115|
A Mountain Giant Muisek |QID|3127| |N|(npc:8115) in {Camp Mojache} (74.42, 43.37)| |Z|1444| |PRE|3123| |NPC|8115|

R The Forgotten Coast |QID|7003| |N|Travel to {The Forgotten Coast} (44.80, 43.45)| |Z|1444| 
A Zapped Giants |QID|7003| |N|(npc:14637) in {The Forgotten Coast} (44.80, 43.45)| |Z|1444| |NPC|14637|
A Fuel for the Zapping |QID|7721| |N|(npc:14637) in {The Forgotten Coast} (44.80, 43.45)| |Z|1444| |NPC|14637|
C Fuel for the Zapping |QID|7721| |N|Kill (npc:5461) and collect 10 (item:18958) in {The Forgotten Coast} (39.94, 37.42)| |Z|1444| |NPC|5461|
T Fuel for the Zapping |QID|7721| |N|(npc:14637) in {The Forgotten Coast}, don't accept 'Refuel for the Zapping' (44.82, 43.42)| |Z|1444| |NPC|14637|

R Rage Scar Hold |QID|7734| |N|Travel to {Rage Scar Hold} (48.29, 44.62) (48.43, 37.73) (51.46, 32.34) (53.24, 31.83)| |Z|1444|
C Improved Quality |QID|7734| |N|Kill the Yetis and collect 10 (item:18947) in {Rage Scar Hold} (53.24, 31.83)| |Z|1444| |W| |NPC|5296, 5297, 5299|
K (npc:5296) |QID|7738| |N|Keep killing (npc:5296) until you collect (item:18972) for accept a new quest (52.38, 31.74)| |W| |L|18972| |NPC|5296|
A Perfect Yeti Hide |QID|7738| |N|Use (item:18972) to accept quest| |Z|1444| |O| |NPC|5299|
 
R Ruins of Ravenwind |QID|3062| |N|Travel to {Ruins of Ravenwind} (48.33, 23.82) (44.35, 22.14) (40.01, 13.58)| |Z|1444|
K (npc:5366) |QID|3062| |N|Kill (npc:5366) and collect a (item:9530) (38.80, 13.50)| |Z|1444| |W| |L|9530| |NPC|5366|
C Dark Heart |QID|3062| |N|Use (item:9530) between the two stones in {Ruins of Ravenwind} to summon and kill (npc:8075), collect (item:9528) (40.51, 8.66)| |Z|1444| |U|9530| |NPC|8075|
C Vengeance on the Northspring |QID|3063| |N|Kill the required Northspring Harpies in {Ruins of Ravenwind} (38.17, 11.89)| |Z|1444| |W| |NPC|5366, 5362, 5364, 5363|

R The Twin Colossals |QID|7003| |N|Travel to {The Twin Colossals} (37.94, 22.00)| |Z|1444|
N As you go... |AYG|7003| |QID|3127| |N|Use (item:9621) on giant corpses to collect 7 (item:9597), you can use it on the Zapped giants| |NPC|5357, 5358|
C Zapped Giants |QID|7003| |N|Use (item:18904) on (npc:5357) or (npc:5358) to turn them into non elites, kill them and collect 15 (item:18956) in {The Twin Colossals} (38.42, 21.51)| |Z|1444| |W| |NPC|5357, 5358|
R The Twin Colossals |QID|7003| |N|Travel to {The Twin Colossals} (37.94, 22.00)| |Z|1444|
C Mountain Giant Muisek |QID|3127| |N|Use (item:9621) on giant corpses to collect 7 (item:9597), you can use it on the Zapped giants (44.47, 46.87)| |Z|1444| |PRE|3123| |W| |NPC|5357, 14640|

R The Forgotten Coast |QID|7003| |N|Travel to {The Forgotten Coast} (47.57, 25.80) (48.43, 33.36) (44.80, 43.45)| |Z|1444| 
T Zapped Giants |QID|7003| |N|(npc:14637) in {The Forgotten Coast} (44.81, 43.40)| |Z|1444| |NPC|14637|
A Again With the Zapped Giants |QID|7725| |N|(npc:14637) in {The Forgotten Coast} (44.81, 43.40)| |Z|1444| |NPC|14637|

R Camp Mojache |QID|3062| |N|Travel or (item:6948) to {Camp Mojache} (74.41, 43.36)| |Z|1444|
T Mountain Giant Muisek |QID|3127| |N|(npc:8115) in {Camp Mojache} (74.41, 43.36)| |Z|1444| |PRE|3123| |NPC|8115|
A Weapons of Spirit |QID|3129| |N|(npc:8115) in {Camp Mojache} (74.53, 43.32)| |Z|1444| |PRE|3123| |NPC|8115|
T Weapons of Spirit |QID|3129| |N|(npc:8115) in {Camp Mojache} (74.53, 43.32)| |Z|1444| |PRE|3123| |NPC|8115|
T Improved Quality |QID|7734| |N|(npc:7854) in {Camp Mojache} (74.43, 42.90)| |Z|1444| |NPC|7854|
T Perfect Yeti Hide |QID|7738| |N|(npc:7854) in {Camp Mojache} (74.43, 42.90)| |Z|1444| |O| |NPC|7854|
T Dark Heart |QID|3062| |N|(npc:7776) in {Camp Mojache} (76.18, 43.81)| |Z|1444| |NPC|7776|
T Vengeance on the Northspring |QID|3063| |N|(npc:7776) in {Camp Mojache} (76.18, 43.81)| |Z|1444| |NPC|7776|

N Guide Complete |N|Tick to continue to the next guide| 

]]
end, {image = "feralas.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end
