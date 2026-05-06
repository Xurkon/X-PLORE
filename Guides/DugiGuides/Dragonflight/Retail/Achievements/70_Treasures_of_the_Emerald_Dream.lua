local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_70_Treasures_of_the_Emerald_Dream")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "2200(Treasures of the)", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Level 70 Required |N|You need to be at least Level 70 to use this guide.| |PL|70|

N Triflesnatch's Roving Trove |AID|19317| |N|You need to chase the Trifflesnatcher three times before it takes you to its treasure. The Triflesnatcher travels slowly between each position, so be patient as you follow the bird! (34.09, 56.34)<br/><b>Rewards Dreamseed of varying quality| |AC|1|
N Hidden Moonkin Stash |AID|19317| |N|Hidden in some tree roots (47.50, 34.90)<br/><b>Rewards (item:210725)| |AC|2|
N Crystalline Glowblossom |AID|19317| |N|Hidden under a tree branch.<br/><b>Land in the big tree branch and carefully walk your way to the blossom. (39.10, 65.50)<br/><b>Rewards Dreamseed of varying quality| |AC|3|
N Pineshrew Cache |AID|19317| |N|Rewards (item:210411) (37.30, 30.70)| |AC|4|
N Magical Broom |AID|19317| |N|Chase the (npc:210544) three times starting at (64.30, 61.30). After the third interaction, it drops the treasure<br/><b>Rewards Dreamseed of varying quality| |NPC|210544| |AC|5|
N Odd Burl |AID|19317| |N|Rewards Dreamseed of varying quality (61.40, 63.20)| |AC|6|
N Reliquary of Ursol |AID|19317| |N|Find a Mark of Ursol and return to the state with the buff still active (47.10, 53.10)<br/><b>Rewards (item:210434)| |AC|7|
N Reliquary of Aviana |AID|19317| |N|Find a Mark of Aviana and return to the state with the buff still active (64.10, 19.20)<br/><b>Rewards (item:210659)| |AC|8|
N Reliquary of Ashamane |AID|19317| |N|Find a Mark of Ashamane and return to the state with the buff still active. (63.40, 73.00) The shrine is inside the Barrows of Reverie. Run down the middle path with the buff, then it will be in one of the side rooms. If world quest (qid:76506) is active, you need to complete it first, leave the area, then return due to phasing<br/><b>Rewards (item:210631)| |AC|9|
N Reliquary of Goldrinn |AID|19317| |N|Find a Mark of Goldrinn and return to the state with the buff still active (33.20, 83.30)| |AC|10|

N Guide Complete
]]
end, {description = [[This guide will walk you through completing (aid:19317) achievement]]})
    end

    function Guide:Unload()
    end
end