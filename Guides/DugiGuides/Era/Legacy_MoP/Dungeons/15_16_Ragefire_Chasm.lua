local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Horde_En_15_16_Ragefire_Chasm")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Azeroth 1-60|r", "213(15-16)", "291(15-17)", "Horde", nil, "I", nil, function()
return [[

R Ragefire Chasm |N|Queue/Zone into {Ragefire Chasm} in {Orgrimmar}, {Cleft of Shadow} (52.5, 58)| |I| |QID|26858| |Z|85| |F|680 1|
A A New Enemy |QID|30969| |N|(npc:61716) (67.70, 11.28) in {Ragefire Chasm}| |NPC|61716|
A The Dark Shaman |QID|30983| |N|(npc:61716) (67.70, 11.28) in {Ragefire Chasm}| |NPC|61716|
A Animal Control |QID|30982| |N|(npc:61724) (68.18, 12.13) in {Ragefire Chasm}| |NPC|61724|
A No Orc Left Behind |QID|30984| |N|(npc:61724) (68.18, 12.13) in {Ragefire Chasm}| |NPC|61724|

K (npc:61408) |QID|30982.1| |N|Kill (npc:61408) in {Ragefire Chasm} (66.36, 63.55)| |NPC|61408|
C A New Enemy |QID|30969| |N|Collect 5 Corrupted Insignia from any cultist in {Ragefire Chasm}. (64.2, 69.7) (60.1, 67.3) (59.9, 33.0) (53.4, 29.5) (51.8, 44.8)| |NPC|61666, 61678, 61672|
K (npc:61412) |QID|30983.1| |N|(npc:61412) (52.16, 31.59)| |NPC|61412|
K (npc:61463) |QID|30982.2| |N|Kill (npc:61463) (39.95, 56.89)| |NPC|61463|
K (npc:61528) |QID|30983.2| |N|Kill (npc:61528) (33.58, 81.34)| |NPC|61528|
C No Orc Left Behind |QID|30984| |N|Rescue 5 (npc:61680) in {Ragefire Chasm}. (36.51, 83.96)| |NPC|61680|

T A New Enemy |QID|30969| |N|(npc:61716) (33.45, 80.70) in {Ragefire Chasm}| |NPC|61716|
T The Dark Shaman |QID|30983| |N|(npc:61716) (33.45, 80.70) in {Ragefire Chasm}| |NPC|61716|
T Animal Control |QID|30982| |N|(npc:61724) (31.70, 76.61) in {Ragefire Chasm}| |NPC|61724|
T No Orc Left Behind |QID|30984| |N|(npc:61724) (31.70, 76.61) in {Ragefire Chasm}| |NPC|61724|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end
