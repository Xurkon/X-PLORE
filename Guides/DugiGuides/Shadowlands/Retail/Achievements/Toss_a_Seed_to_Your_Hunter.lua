local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Toss_a_Seed_to_Your_Hunter")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "Toss a Seed to Your Hunter... (Hidden)", nil, nil, nil, "A", nil, function()
return [[

N Note |N|<b>Objective of this hidden achievement is to toss (item:183902) at Gwynceirw, The Winter Wolf during or after the encounter with Rotbriar Boggart<br/>If someone did this rare encounter before you, you will have to wait out the 15-20 minute respawn time.<br/><br/>Tick this step|

C (item:183902) |N|Around the area you should find a flower sparkling, when you hover you're mouse over it, it will appear as a gear icon.<br/>Click on A Faintly Glowing Seed (65.86, 23.88)| |Z|1565| |L|183902|
C Daffodil |N|Speak to (npc:171684) in {Shrouded Mire} (65.86, 23.68)<br/><b>"Can't say I have. What's his deal?"<br/><b>"So what can you do about it?"| |Z|1565| |NPC|171684|
C Gwynceirw |N|Start the fight with Rotbriar Boggart when he appears, don't worry Gwynceirw will assist you by tanking the fight.<br/><b>Sometime during the fight target Gwynceirw and click the (spell:345605) ability that appears somewhere on your screen (65.56, 24.21)| |Z|1565| |NPC|171690|

N Seed Tossed |AID|14791| |N|Seed tossed at Gwnceirw| |AC|1|

N Guide Complete |N|You earned the (aid:14791) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14791) achievement]]})
	end

	function Guide:Unload()
	end
end