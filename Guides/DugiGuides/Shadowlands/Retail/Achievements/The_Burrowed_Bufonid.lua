 local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_The_Burrowed_Bufonid")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Zereth Mortis|r", "|cffffd200Quests|r"}, "The Burrowed Bufonid - Mount Guide (60)", nil, nil, nil, "A", "nil", function()
return [[

N Level 60 Required |PL|60| |N|You need to be level 60 to accept this quest|
A The Burrowed Bufonid |QID|65727| |N|(npc:180950) in {Haven} (34.32, 65.93)| |Z|1970| |NPC|180950|
N The Burrowed Bufonid |QID|65727.1| |N|Collect 15 (item:190852)<br/><b>Drops from any Vespoid creature in (map:1970) (52.6, 43.4)| |Z|1970| |POI| |L|190852 15|
T The Burrowed Bufonid |QID|65727| |N|(npc:180950) in {Haven} (34.32, 65.93)| |Z|1970| |NPC|180950|
N (item:172053) |QID|65725| |N|Collect 30 (item:172053)<br/><b>Drops from Beast creatures or can be bought on the Auction House.| |L|190852 30|
N (item:173202) |QID|65726| |N|Collect 200 (item:173202)<br/><b>Drops from Humanoids or can be bought on the Auction House.| |L|173202 200|
N (item:173037) |QID|65728| |N|Collect 10 (item:173037)<br/><b>Obtained from fishing in Shadowlands or can be bought on the Auction House.| |L|173037 10|
N (item:187704) |QID|65729| |N|Collect 5 (item:187704)<br/><b>Drops from Protobeasts in (map:1970) or can be bought on the Auction House.| |L|187704 5|
N (item:190880) |QID|65730| |N|Speak to (npc:185748) and buy (item:190880) for 3<g> 75<s> in {Pilgrim's Grace} (58.55, 49.80)| |Z|1970| |NPC|185748| |L|190880 5|
A The Burrowed Bufonid |QID|65725| |N|Deliver (npc:180950) 30 (item:172053) in {Haven} (34.32, 65.93)<br/><b>You will need to wait for the next daily reset to continue.| |Z|1970| |E| |NPC|180950| |PRE|65727|
A The Burrowed Bufonid |QID|65726| |N|(npc:180950) in {Haven} (34.32, 65.93)<br/><b>You will need to wait for the next daily reset to continue.| |Z|1970| |E| |NPC|180950| |PRE|65725|
A The Burrowed Bufonid |QID|65728| |N|(npc:180950) in {Haven} (34.32, 65.93)<br/><b>You will need to wait for the next daily reset to continue.| |Z|1970| |E| |NPC|180950| |PRE|65726|
A The Burrowed Bufonid |QID|65729| |N|(npc:180950) in {Haven} (34.32, 65.93)<br/><b>You will need to wait for the next daily reset to continue.| |Z|1970| |E| |NPC|180950| |PRE|65728|
A The Burrowed Bufonid |QID|65730| |N|(npc:180950) in {Haven} (34.32, 65.93)<br/><b>You will need to wait for the next daily reset to continue.| |Z|1970| |E| |NPC|180950| |PRE|65729|
N Questline Required  |QID|63985| |N|Complete (guide:"Tazavesh The Veiled Market Questline (60)") guide|
R Tazavesh |TID|65731| |N|Travel to {Tazavesh} (92.17, 42.16)| |Z|2016| |REACH|92.17,42.16|
N (item:187171) |QID|65731| |N|Speak to (npc:180114) and buy  for 100<g> in {The Gilded Landing}| |Z|1989| |NPC|180114| |L|187171|
A The Burroqed Bufonid |QID|65731| |N|(npc:180950) in {Haven} (34.32, 65.93)<br/><b>You will need to wait for the next daily reset to continue.| |Z|1970| |E| |NPC|180950| |PRE|65730|
A The Patient Bufonid |QID|65732| |N|(npc:180950) in {Haven} (34.32, 65.93)| |Z|1970| |NPC|180950| |E| |PRE|65731|
T The Patient Bufonid |QID|65732| |N|(npc:180950) in {Haven} (34.32, 65.93)| |Z|1970| |NPC|180950|
T The Burrowed Bufonid |QID|65725| |N|(npc:180950) in {Haven} (34.32, 65.93)| |Z|1970| |NPC|180950|
N Guide Complete

]]
end, {description = [[This guide will walk you through to obtain (spell:363701)]]})
    end

    function Guide:Unload()
    end
end