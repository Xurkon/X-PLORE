local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_En_10_Non_Evoker")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Starting Zones|r ", "2109(10+ Non Evoker)", "2022(60-62)#2022(60-62)#2022(60-62)", nil, nil, "L", nil, function()
return [[

A  Shaking the Dust Off  |QID|84423| |N|(npc:229075), in {The War Creche} (43.02, 89.68)| |Z|2373| |NPC|229075| |E|
A Forward, To Adventure! |QID|84424| |N|(npc:229075), in {The War Creche} (43.02, 89.68)| |Z|2373| |NPC|229075|
N (npc:229075) |QID|84424.1| |N|Speak to (npc:229075), in {The War Creche} (42.90, 85.72)| |Z|2373| |NPC|229075|
C Forward, To Adventure! |QID|84424| |N|Use the portal in The War Creche to get to Chromie., in {The War Creche} (43.71, 81.45)| |Z|2373|
T Forward, To Adventure! |QID|84424| |N|(npc:167032), in {Orgrimmar Embassy} (40.81, 80.02)| |Z|85| |NPC|167032|
A Where Legends are Made |QID|85026| |N|(npc:167032), in {Orgrimmar Embassy} (40.81, 80.02)| |Z|85| |NPC|167032|
C Where Legends are Made |QID|85026| |N|Select a Timewalking Campaign from (npc:167032), in {Orgrimmar Embassy} (40.81, 80.02)| |Z|85| |NPC|167032|
T Where Legends are Made |QID|85026| |N|(npc:167032), in {Orgrimmar Embassy} (40.81, 80.02)| |Z|85| |NPC|167032|

N Guide Complete |N|Switch to leveling guide that match the Timewalking Campaign that you chose from (npc:167032)|

]]
end)
    end

    function Guide:Unload()
    end
end