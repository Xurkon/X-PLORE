local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Nine_Afterlives")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "Nine Afterlives", nil, nil, nil, "A", nil, function()
return [[

N Note |N|<b>Objective of this achievement is to find 9 kittens, 8 in (map:1536) and 1 inside the (map:1674) dungeon just before the final boss.<br/><b>You get a debuff when you click on a kitten (spell:338183) You've been slimed!. It has a duration of 5 minutes, but it doesn't really matter for this achievement, you can ignore it.<br/><b>We suggest to use the "Target Button" to help locate the NPC.<br/><br/>Tick this step|

N (npc:174195) |AID|14634| |AC|1| |N|Queue or Zone into (map:1674) dungeon<br/><b>Before the final boss room, jump down and go to the right.| |Z|1674| |F|1674| |NPC|174195| |I|
N (npc:174223) |AID|14634| |AC|3| |N|Under the bridge south of {Theater of Pain} in {Iron Trench} (50.25, 60.27)| |Z|1536| |NPC|174223|
N (npc:174226) |AID|14634| |AC|5| |N|At the end of the path to the north, flying with pages in {The Grimoirium} (64.89, 22.17)| |Z|1536| |NPC|174226|
N (npc:174234) |AID|14634| |AC|7| |N|Inside the ziggurat in {Nurakkur} (49.47, 17.62), the entrance is a little bit to the east<br/><b>Use this to find the entrance (49.85, 17.37, 1536, "Entrance Location")| |Z|1536| |NPC|174234|
N (npc:174237) |AID|14634| |AC|9| |N|In a open box in {The Spearhead} (34.32, 53.10)| |Z|1536| |NPC|174237|
N (npc:174221) |AID|14634| |AC|2| |N|On a chest, near the water in {The Spearhead} (31.96, 57.06)| |Z|1536| |NPC|174221|
N (npc:174224) |AID|14634| |AC|4| |N|In the middle of the ritual platform in {Glutham's Decay} (65.23, 50.66)| |Z|1536| |NPC|174224|
N (npc:174230) |AID|14634| |AC|6| |N|On top of a bone ark in {High Stand} (51.09, 27.58)| |Z|1536| |NPC|174230|
N (npc:174236) |AID|14634| |AC|8| |N|On a mushroom, the path starts near the wall<br/><b>Use this to find the start of the path (47.26, 33.30, 1536, "Start of Path")| |Z|1536| |NPC|174236|

N Guide Complete |N|You earned the (aid:14634) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14634) achievement]]})
    end

    function Guide:Unload()
    end
end