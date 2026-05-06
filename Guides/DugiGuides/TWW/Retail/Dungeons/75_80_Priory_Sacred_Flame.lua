local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_TWW_75_80_Priory_Sacred_Flame")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200The War Within|r", "2308(75-80)", nil, nil, nil, "I", nil, function()
return [[

K (npc:207946) |SID||1| |N|Kill (npc:207946) in {Priory of the Sacred Flame} (36.75,54.59)<br/><b>The boss's guards deal increased damage for each other nearby guard<br/><b>Avoid the boss's spear throw attack<br/><br/>DPS: When the boss's mount mauls a player, it can be interrupted by doing sufficient damage to it<br/><b>Interrupt the boss's battle cry is essential or the fight will become progressively more dangerous<br/><br/>Healer: Dispel the Cinderblast debuff if the add does not get interrtupted<br/><br/>Tank: The boss applies a stacking bleed on to the tank. It may be necessary to try to let the stacks fall off before they get too high<br/><b>The paladin add's divine judgement causes you to take 25% increased damage for 6 seconds, be prepared to mitigate the increased damage<br/><br/>Tick to continue| |Z|2308| |NPC|207946|
K (npc:207939) |SID||2|  |N|Kill (npc:207939) in {Priory of the Sacred Flame} (83.98,48.60)<br/><b>Once the boss reaches full energy, he will cast vindictive wrath and gain 25% increased damage and his spells will target more players<br/><b>If his shield attack bounces to you, move out of the subsequent explosion on the ground underneath you<br/><b>Avoid the hammers of purity. There will be many more of these to avoid after the bosses use vindictive wrath<br/><b>Players need to the need the Sacred Pyres to drain them of all of their stacks before they expire. This causes stacking holy damage so be careful not to take too many stacks at once<br/><br/>Healer: Players that take stacks from the sacred pyres will need extra healing<br/><br/>Tick to continue| |Z|2309| |NPC|207939|
K (npc:207940) |SID||3|  |N|Kill (npc:207940) in {Priory of the Sacred Flame}  (25.27,56.85)<br/><b>When she cast's Blinding Light, turn your character away from the boss to prevent being blinded<br/><br/>DPS: Interrupt the boss's Holy Smite as often as possible<br/><b>When the boss cast's barrier of light, get to her and damage her shield quickly and interrupt her cast when the shield is down<br/><br/>Healer: The group will take heavy damage when the boss gets to 50% health and casts Inner Fire<br/><b>Cleanse Holy Flame to reduce damage<br/><br/>Tick to continue| |Z|2309| |NPC|207940|

N Guide Complete

]]
end)
    end

    function Guide:Unload()
    end
end