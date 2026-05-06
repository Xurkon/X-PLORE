 local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Deepstar_Polyp")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Zereth Mortis|r", "|cffffd200Exploration|r"}, "Deepstar Polyp - Mount Guide (60)", nil, nil, nil, "A", "nil", function()
return [[

N Level 60 Required |PL|60| |N|You need to be level 60 to accept this quest|
N Note |N|This mount is obtainable with or without the Aurelid Lure. Without this lure it's a low drop rate, however, with this lure it's a 100% guranteed drop.<br/>The only downside is, the item needed to kick things off is very much like 0.07% or 1/1500 chance to obtain.<br/>If you kill Hirukon before obtaining the lure, you will be locked out until the next day. Hold on to the lure until the daily lock out is reset. Tick this step|
N Recommended |N|It's recommended to use Ratity addon to help keep track of the attempts. Tick this step|
N (item:187662) |N|You will need to fish up (item:187662) from Hirukon's Pool in {Dimensional Falls} (52.09, 74.68)| |Z|1970| |L|187662|
N (npc:182194) |N|Speak to (npc:182194) and choose option 'Do you know what to do with this "Strange Goop"?' in (map:1536) (57.62, 92.03)| |Z|1536| |NPC|182194|
N (item:187915) |N|You will need to fish up (item:187915) from Pungent Blobfish Cluster in {Coilfang Reservoir} (51.90, 37.24)<br/><b>Entrance (50.36, 40.86, 102, "Coilfang Reservoir Entance")| |Z|102| |L|187915|
N (item:187922) |N|You will need to fish in a Flipper Fish School and then click on (npc:182202) to get (item:187922) in {Zin Azshari} (72.8, 24.3)| |Z|1355| |NPC|182202| |L|187922|
N Unlock Vashj'ir |QID|25924| |N|Use (guide:"203(30-35)#203(30-35)#203(30-35)") guide| |FAC|Horde|
N Unlock Vashj'ir |QID|11482| |N|Use (guide:"203(30-35)#203(30-35)#203(30-35)") guide| |FAC|Alliance|
N (item:187916) |N|Find the Coilclutch Vine found in the lower ruins on a balcony, and can be very hard to see. in {Shimmering Expanse} (34.7, 75.0)| |Z|205| |L|187916|
N (npc:182194) |N|Speak to (npc:182194) and choose option 'I've brought the materials you need.' in (map:1536) (57.62, 92.03)| |Z|1536| |NPC|182194| |L|187923|
N (item:187923) |N|Head to {Dimensional Falls} (52.09, 74.68)<br/>1. Announce in General chat /1 Hirukon 100% (52.09, 74.68) and place map pin at the end.<br/>2. Wait for a group to form.<br/>3. Use (item:187923) and then fish in a Aurelid Cluster pool that spawns randonly around Hirukon's Pool. (npc:180978) will start to swim up to the surface and then becomes attackable.| |Z|1970| |NPC|180978| |U|187923|
N Guide Complete

]]
end, {description = [[This guide will walk you through getting the (spell:342680) mount]]})
    end

    function Guide:Unload()
    end
end