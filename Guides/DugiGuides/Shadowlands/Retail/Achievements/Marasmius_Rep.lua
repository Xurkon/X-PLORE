local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Marasmius_Rep")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "Marasmius Reputation Unlock", nil, nil, nil, "A", "nil", function()
return [[

N Note |N|This guide will walk you through to unlock Marasmius Reputation it is only available to Nightfae Covenant<br/><br/>Tick this step|
N Nightfae Covenant Required |N|To unlock this faction you will need to be Nightfae.| |COV|1|
N Nightfae Covenant Required |N|To unlock this faction you will need to be Nightfae.| |COV|2|
N Nightfae Covenant Required |N|To unlock this faction you will need to be Nightfae.| |COV|4|

A A Mycelial Network |QID|63073| |N|(npc:165702) in {Heart of the Forest} (41.57, 34.89)| |Z|1702| |NPC|165702| |COV|3|
C Transportation Network Activated |QID|63073.1| |N|Click on the Fae Scroll to activate (54.49, 31.65)| |Z|1702| |COV|3|
T A Mycelial Network |QID|63073| |N|(npc:174609) in {Heart of the Forest} (54.49, 31.65)| |Z|1702| |NPC|174609| |COV|3|
A Silence in the Stalks |QID|57454| |N|(npc:158556) in {Heart of the Forest} (59.45, 32.41)| |Z|1701| |NPC|158556| |COV|3|

N Guide Complete |N|You earned the (aid:14309) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14309) achievement]]})
    end
        
    function Guide:Unload()
    end
end