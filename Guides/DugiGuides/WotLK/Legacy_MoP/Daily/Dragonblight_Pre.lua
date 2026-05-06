local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dailies_Horde_En_Dragonblight_Pre")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("Northrend Pre Quests", "115(72-74+ Pre Quests)", nil, "Horde", nil, "D", nil, function()
return [[

R Moonrest Gardens |N|Travel to {Moonrest Gardens} (24.24, 60.06)| |QID|12055|
N (item:36742) |N|Collect (item:36742) from (npc:26349) (19.5, 58) in the {Moonrest Gardens}| |QID|12055| |L|36742| |T| |NPC|26349|
A A Strange Device |N|Use (item:36742) to start (qid:12055)| |QID|12055| |U|36742|
R Stars' Rest |N|Travel to {Stars' Rest} (29.18, 55.57)| |QID|12060| 
T A Strange Device |N|(npc:26673) (29.0, 55.5) in {Stars' Rest}| |QID|12055| |NPC|26673|
A Projections and Plans |N|(npc:26673) (29.0, 55.5) in {Stars' Rest}| |QID|12060| |NPC|26673|
C Projections and Plans |QID|12060| |U|36747| |N|Use the (item:36747) in the {Moonrest Gardens}, get close enough to get credit. Use it again to get down (24.25, 60.09)|
R Stars' Rest |N|Travel to {Stars' Rest} (29.18, 55.57)| |QID|12065| 
T Projections and Plans |N|(npc:26673) (29.0, 55.5) in {Stars' Rest}| |QID|12060| |NPC|26673|
A The Focus on the Beach |N|(npc:26673) (29.0, 55.5) in {Stars' Rest}| |QID|12065| |NPC|26673|
C The Focus on the Beach |QID|12065| |N|Kill (npc:26762) (26.5, 64.9) in {Glittering Strand} and use the (item:36751) near the focus| |U|36751| |NPC|26762|
T The Focus on the Beach |N|(npc:26673) (29.0, 55.5) in {Stars' Rest}| |QID|12065| |NPC|26673|
A Atop the Woodlands |N|(npc:26673) (29.0, 55.5) in {Stars' Rest}| |QID|12083| |NPC|26673|

R Lothalor Woodlands |N|Travel to {Lothalor Woodlands} (32.66, 62.39)| |QID|12083|
C Atop the Woodlands |QID|12083| |N|Kill (npc:26815) (32.2, 72.8) in {Lothalor Woodlands} for the (item:36779) and use it on the focus nearby| |U|36779| |NPC|26815|
T Atop the Woodlands |N|(npc:26673) (29.0, 55.5) in {Stars' Rest}| |QID|12083| |NPC|26673|
A The End of the Line |N|(npc:26873) (40.2, 66.9) in {Indu'le Village}| |QID|12107| |NPC|26873|
N Retrieve Ley Line Focus information |QID|12107.1| |N|Use the (item:36815) on the focus (39.84, 67.01) in {Indu'le Village}| |U|36815|

R Azure Dragonshrine |N|Travel to {Azure Dragonshrine} (53.73, 64.24)| |QID|12107|
N Observe Azure Dragonshrine |QID|12107.2| |N|Head east to the {Azure Dragonshrine} near south central {Dragonblight} and observe what is occurring there from the western ledge (53.73, 64.24)|

R Stars' Rest |N|Travel to {Stars' Rest} (29.18, 55.57)| |QID|12119| 
T The End of the Line |N|(npc:26673) (29.0, 55.5) in {Stars' Rest}| |QID|12107| |NPC|26673|
A Gaining an Audience |N|(npc:26673) (29.0, 55.5) in {Stars' Rest}| |QID|12119| |NPC|26673|

R Wyrmrest Temple |N|Travel to {Wyrmrest Temple} (60.3, 51.5)| |QID|12766|
f Wyrmrest Temple |N|Grab the flight path for {Wyrmrest Temple} from (npc:26851) (60.3, 51.5)| |QID|12766| |NPC|26851|
h Wyrmrest Temple |N|Speak to (npc:27950) and set your hearth to {Wyrmrest Temple} (59.8, 54.3)| |QID|12766| |NPC|27950|
T Gaining an Audience |N|(npc:26443) (57.9, 54.2) at the {Wyrmrest Temple}| |QID|12119| |NPC|26443|
A Speak with your Ambassador |N|(npc:26443) (57.9, 54.2) at the {Wyrmrest Temple}| |QID|12766| |NPC|26443|
T Speak with your Ambassador |N|(npc:27803) (60.0, 55.1) at the {Wyrmrest Temple}| |QID|12766| |NPC|27803|
A Report to the Ruby Dragonshrine |N|(npc:27803) (60.0, 55.1) at the {Wyrmrest Temple}| |QID|12460| |NPC|27803|
T Report to the Ruby Dragonshrine |N|(npc:27506) (52.3, 50.1) at the {Ruby Dragonshrine}| |QID|12460| |NPC|27506|
A Heated Battle |N|(npc:27506) (52.3, 50.1) at the {Ruby Dragonshrine}| |QID|12416| |NPC|27506|
C Heated Battle |QID|12416| |N|Kill 1 (npc:27531), 12 (npc:27685) and 8 (npc:27686) in the ravine (52.0, 46.3) at the {Ruby Dragonshrine}. Tag mobs then let the NPCs kill it for you| |NPC|27685, 27686, 27531|
T Heated Battle |N|(npc:27506) (52.3, 50.1) at the {Ruby Dragonshrine}| |QID|12416| |NPC|27506|
A Return to the Earth |N|(npc:27506) (52.3, 50.1) at the {Ruby Dragonshrine}| |QID|12417| |NPC|27506|
C Return to the Earth |QID|12417| |N|Loot the (item:37727) from the ground and use it on the dead (npc:27530) at the {Ruby Dragonshrine} (47.9, 48.0). They look like small red rubies.| |U|37727| |NPC|27530|
T Return to the Earth |N|(npc:27506) (52.3, 50.1) at the {Ruby Dragonshrine}| |QID|12417| |NPC|27506|
A Through Fields of Flame |N|(npc:27506) (52.3, 50.1) at the {Ruby Dragonshrine}| |QID|12418| |NPC|27506|
C Through Fields of Flame |QID|12418| |N|Kill 6 (npc:27539) at the {Ruby Dragonshrine} (47.9, 48.0), then find the banshee named (npc:27680) under the shrine (47.9, 49.9)| |NPC|27539, 27680|
T Through Fields of Flame |N|(npc:27506) (52.3, 50.1) at the {Ruby Dragonshrine}| |QID|12418| |NPC|27506|
A The Steward of Wyrmrest Temple |N|(npc:27506) (52.3, 50.1) at the {Ruby Dragonshrine}| |QID|12768| |NPC|27506|
T The Steward of Wyrmrest Temple |N|(npc:26443) (57.9, 54.2) at the {Wyrmrest Temple}| |QID|12768| |NPC|26443|
A Informing the Queen |N|(npc:26443) (57.9, 54.2) at the {Wyrmrest Temple}| |QID|12123| |NPC|26443|
T Informing the Queen |N|(npc:26917), (59.8, 54.6) at the top floor at the {Wyrmrest Temple}| |QID|12123| |NPC|26917|
A Report to Lord Afrasastrasz |N|(npc:26917), (59.8, 54.6) at the top floor at the {Wyrmrest Temple}| |QID|12435| |NPC|26917|
T Report to Lord Afrasastrasz |N|(npc:27575) (59.2, 54.3), fly to middle level at the {Wyrmrest Temple}| |QID|12435| |NPC|27575|
A Defending Wyrmrest Temple |N|(npc:27575) (59.2, 54.3) at the {Wyrmrest Temple}| |QID|12372| |NPC|27575|
N Destabilize the Azure Dragonshrine |QID|12372.3| |N|Hop on a Dragon close to the quest giver at the {Wyrmrest Temple} and Destabilize the {Azure Dragonshrine} by using the 3rd ability (55.55, 65.68)|
C Defending Wyrmrest Temple |QID|12372| |N|Hop on a dragon and kill 3 (npc:27608) and 5 Drakes, then destabilize the {Azure Dragonshrine} (58.23, 57.13) (56.65, 58.94)| |NPC|27608, 27682|
T Defending Wyrmrest Temple |N|(npc:27575) (59.2, 54.3) at the {Wyrmrest Temple}| |QID|12372| |NPC|27575|

N Guide Complete 
]]
end)
	end
	
	function Guide:Unload()
	end
end