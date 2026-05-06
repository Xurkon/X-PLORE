local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Best_Bud_With_Benifits")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "Best Bud With Benefits", nil, nil, nil, "A", nil, function()
return [[

N Note |N|<b>Objective of this achievement is to earn Stonehead's friendship in (map:1525)<br/><b>This guide has been optimized for alternate characters because this achievement is not character wide when it's completed, meaning all characters must complete the quest to earn this achievement.<br/><br/>Tick this step|

R Wanecrypt Hill |QID|58346| |N|Travel to {Wanecrypt Hill} (47.90, 69.53) |Z|1525| |REACH|
N (spell:320559) |QID|58346| |N|Click on the Hollow Rock to get (spell:320559) in {The Banewood} (40.20, 65.73)| |Z|1525| |BUFF|135236|
A Snacks for Stonehead |QID|58327| |N|(npc:346046) in {Ember Ward} (39.29, 65.26)| |Z|1525| |NPC|346046|
N (item:175829) |QID|58327.1| |N|Collect 50 (item:175829) from (npc:160613) in {Ember Ward} (35.64, 57.52)| |Z|1525| |NPC|160613| |L|175829 50|
N (item:175826) |QID|58327.2| |N|Collect 20 (item:175826) from (npc:163575) or (npc:163861) in {Cinderwall} (29.26, 58.72)| |Z|1525| |NPC|163575, 163861| |L|175826 20|
N (item:175828) |QID|58327.3| |N|Collect 6 (item:175828) from Shrouded mobs on top of the cliff in {Ember Ward} (22.56, 54.03)| |Z|1525| |NPC|158617, 158473, 158622, 167467| |L|175828 6|
N (item:175840) |QID|58327.4| |N|Click on A Remnant of Light and collect (item:175840) in {The Desolation} (35.64, 57.52)| |Z|1525| |L|175840|
T Snacks for Stonehead |QID|58327| |N|(npc:157199) in {Ember Ward} (39.14, 66.11)<br/><b>You do not need (spell:320559) buff to turn in this quest.<br/><b>Allow him to grab you.| |Z|1525| |NPC|157199|

C Snacks for Stonehead |AID|14272| |N|Give Stonehead his snacks| |AC|1|

N Guide Complete |N|You earned the (aid:14272) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14272) achievement]]})
	end

	function Guide:Unload()
	end
end