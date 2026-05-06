 local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Harvester of Sorrow")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "Harvester of Sorrow (60)", nil, nil, nil, "A", "nil", function()
return [[

N Level 60 Required |N|You need to be level 60| |PL|60|
N Complete Side Effects |QID|58090| |N|You will need to complete (qid:58090) quest so you can see and interact with npc's that sell the required items|
B (item:180771) |AID|14626| |N|Speak to (npc:166640) and buy (item:180771) for 34<g> in {Challenger's Promenade} (53.64, 47.88)<br/><b>Keep this item and don't sell or use until later in the guide.| |Z|1536| |NPC|166640| |L|180771|
B (item:181163) |AID|14626| |N|Speak to (npc:169964) and buy (item:181163) for 10<g> in {Forgotten Wounds} (53.17, 41.32)<br/><b>Keep this item and don't sell or use until later in the guide.| |Z|1536| |NPC|169964| |L|181163|
R Wanecrypt Hill |AID|14626| |N|Travel to {Wanecrypt Hill} (47.90, 69.53)| |Z|1525|
B (item:182163) |AID|14626| |N|Speak to (npc:171808) and buy (item:182163) in {The Night Market} (51.13, 78.77)<br/><b>The currency changes daily, check the currency and just farm or buy the currency from the Auction House.Keep this item and don't sell or use until later in the guide.<br/><b>| |Z|1525| |NPC|171808| |L|182163|
R The Spearhead |AID|14626| |N|Travel to {The Spearhead} (39.15, 55.41)| |Z|1536|
C (spell:306272) |AID|14626| |N|You will need the (qid:57205) world quest in {The Spearhead} (37.63, 50.91)<br/><b>It's recommended to join or create a raid group and complete the World Quest until you get x2 or x3 stacks of (spell:306272)| |Z|1536| |BUFF|132360|
R Renounced Bastille |AID|14626| |N|Travel to {Renounced Bastille} (67.86, 45.84)| |Z|1536|
C (spell:327367) |AID|14626| |N|Click on Edible Redcap's to get stacks of (spell:327367) in {Glutharn's Decay} (76.73, 57.36)<br/><b>As you click on Edible Redcap's your movement speed will slow, ensure that the (spell:306272) remains.<br/><b>You will need to click on 4 Edible Redcap's if you have x2 stacks of (spell:306272).<br/><b>You will need to click on 3 Edible Redcap's if you have 3 stacks of (spell:306272).| |Z|1536| |BUFF|571319|
U (item:181163) |AID|14626| |N|Use (item:181163) in {Glutharn's Decay} (76.73, 57.36)| |Z|1536| |U|181163| |REACH|51.26,49.05|
U (item:180771) |AID|14626| |N|Use (item:180771) in {Theater of Pain} (51.29, 48.58)| |Z|1536| |U|180771| |BUFF|134836|
U (item:182163) |AID|14626| |N|Use (item:182163) in {Theater of Pain} (51.29, 48.58)| |Z|1536| |U|182163| |BUFF|967523|
C Pull Oonar's Arm |AID|14626| |N|Click on Oonar's Arm in {Theater of Pain} (51.29, 48.58)| |Z|1536| |L|181164|
C Pull Oonar's Arm |AID|14626| |N|Quickly click on Oonar's Arm for the second time in {Theater of Pain} (51.29, 48.58)| |Z|1536| |L|180273|
N Guide Complete |N|You earned the (aid:14626) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14626) achievement]]})
    end

    function Guide:Unload()
    end
end
