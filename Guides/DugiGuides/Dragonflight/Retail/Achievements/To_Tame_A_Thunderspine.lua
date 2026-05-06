 local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_To_Tame_A_Thunderspine")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Quests|r"}, "To Tame A Thunderspine", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Level 70 Required |N|You need to be at least Level 70 to use this guide.| |PL|70|
N Initiate's Day Out |QID|66676| |N|You will need to complete the 'Initiates Day Out' questline in (map:2023) to use this guide.|
N Reach Renown Level 9 |N|Reach Renown Level 9 with (fac:2503)<br/><b>Complete daily quests, weekly quests, world quests and zone quests in (map:2023) to gain renown.| |FR|2503, 9|
N Please Read! |N|This guide will walk you through to obtain (spell:374247) mount. <br/><b>This will consist of 5 days in total. <br/><br/>Tick this step|

N 20 (item:192615) |QID|71196.1| |N|Purchase 20 (item:192615) from the Auction House, or farm them from (npc:190611) in {Mirewood Fen} (82.22,25.29)| |Z|2023| |NPC|190611| |L|192615 20|
N 20 (item:192658) |QID|71197.1| |N|Purchase 20 (item:192658) from the Auction House, or farm them from (npc:194588), (npc:190198) and (npc:187546) in {Enerald Gardens} (30.76,52.56)| |Z|2023| |NPC|194588, 190198, 187546| |L|192658 20|
N 10 (item:194966) |QID|71198.1| |N|Purchase 10 (item:194966) from the Auction House, or gather with (spell:7620) in {Ohn'iri Springs} (56.17,77.28)| |Z|2023| |L|194966 10|
N 20 (item:192636) |QID|71199| |N|Purchase 20 (item:192636) from the Auction House, or farm them from (npc:196054) in {The Mallakh} (48.69,43.80)| |Z|2023| |NPC|196054| |L|192636 20|

N (cur:2003) |QID|71196.2| |N|Collect 150 (cur:2003)<br/>You obtain these from any activity in (map:1978).| |CUR|2003, 150|
A To Tame A Thunderspine |QID|71196| |N|(npc:190014) in {Ohn'iri Springs} (56.19,77.13)| |Z|2023| |NPC|190014| |E|

N (cur:2003) |QID|71197.2| |N|Collect 150 (cur:2003)<br/>You obtain these from any activity in (map:1978).| |CUR|2003, 150|
A To Tame A Thunderspine |QID|71197| |N|(npc:190014) in {Ohn'iri Springs}<br/><b>Wait for daily reset if this quest is not available (56.19,77.13)| |Z|2023| |NPC|190014| |E|

N (cur:2003) |QID|71198.2| |N|Collect 150 (cur:2003)<br/>You obtain these from any activity in (map:1978).| |CUR|2003, 150|
A To Tame A Thunderspine |QID|71198| |N|(npc:190014) in {Ohn'iri Springs}<br/><b>Wait for daily reset if this quest is not available (56.19,77.13)| |Z|2023| |NPC|190014| |E|

N (cur:2003) |QID|71199.2| |N|Collect 150 (cur:2003)<br/>You obtain these from any activity in (map:1978).| |CUR|2003, 150|
A To Tame A Thunderspine |QID|71199| |N|(npc:190014) in {Ohn'iri Springs}<br/><b>Wait for daily reset if this quest is not available (56.76,76.34)| |Z|2023| |NPC|190014| |E|

A To Tame A Thunderspine |QID|71195| |N|(npc:190014) in (map:2023)<br/><b>Wait for daily reset if this quest is not available (57.66,72.32)| |Z|2023| |NPC|190014| |E|

N (item:200598) |QID|71195.1| |N|Speak to (npc:190015) to receive (item:200598) in {Ohn'iri Springs} (53.52,78.97)| |Z|2023| |NPC|190015|
N (cur:2003) |QID|71195.2| |N|Collect 150 (cur:2003)<br/>You obtain these from any activity in (map:1978).| |CUR|2003, 150|

T To Tame A Thunderspine |QID|71195| |N|(npc:190014) in (map:2023) (57.66,72.32)| |Z|2023| |NPC|190014|
A Beast of the Plains |QID|71209| |N|(npc:190014) in (map:2023) (57.66,72.32)| |Z|2023| |NPC|190014|
T Beast of the Plains |QID|71209| |N|(npc:190014) in (map:2023) (57.66,72.32)| |Z|2023| |NPC|190014|

N Guide Complete
]]
end)
    end

    function Guide:Unload()
    end
end