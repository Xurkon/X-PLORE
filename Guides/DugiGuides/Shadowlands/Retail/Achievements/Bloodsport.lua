local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Bloodsport")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "Bloodsport", nil, nil, nil, "A", nil, function()
return [[

N Note |N|<b>Objective of this achievement is to defeat all 7 champions in the {Theater of Pain}<br/><br/>Tick this step|
N Required |N|You will need to be with the Necrolord Covenant to be able to summon Sabriel the Bonecleaver, which is required to complete this achievement<br/><br/>Tick this step|

C Azmogal |AID|14802| |N|Kill (npc:162873) in {Theater of Pain} (50.39, 47.13)| |Z|1536| |NPC|162873| |AC|1|
C Xantuth the Blighted |AID|14802| |N|Kill (npc:162872) in {Theater of Pain} (50.39, 47.13)| |Z|1536| |NPC|162872| |AC|3|
A Bet On Yourself |QID|59827| |N|(npc:159830) in {Challenger's Promenade} (53.62, 47.52)| |Z|1536| |NPC|159830| |AID|14802| |AC|5|
C Devmorta |AID|14802| |N|Kill (npc:162875) in {Theater of Pain} (50.39, 47.13)| |Z|1536| |NPC|162875| |QID|59827| |AC|5|
C Necrolord Covenant |AID|14802| |N|Complete the (guide:"Necrolord Covenant Campaign (60+)") guide until (qid:58609) quest, speak with (npc:161909) to unlock the Anima Conductor rank 3.<br/>Use Anima Conductor and channel anima to {Theater of Pain}| |QID|58609| |NPC|161909| |COV|4| |AC|7|
R Theater of Pain |AID|14802| |N|Travel to {Theater of Pain} (50.59, 51.59)| |Z|1536| |COV|4| |AC|7|
C Sabriel the Bonecleaver |AID|14802| |N|Kill {Theater of Pain} champions until (npc:168148) spawns, kill (npc:168148) and then kill (npc:168147)| |NPC|168147| |COV|4| |AC|7|
C Unbreaklable Urtz |AID|14802| |N|Kill (npc:162853) in {Theater of Pain} (50.39, 47.13)| |Z|1536| |NPC|162853| |AC|2|
A Bet On Yourself |QID|59826| |N|(npc:159830) in {Challenger's Promenade} (53.62, 47.52)| |Z|1536| |NPC|159830| |AID|14802| |AC|4|
C Mistress Dyrax |AID|14802| |N|Kill (npc:162880) in {Theater of Pain} (50.39, 47.13)| |Z|1536| |NPC|162880| |QID|59826| |AC|4|
A Be On Yourself |QID|59828| |N|(npc:159830) in {Challenger's Promenade} (53.62, 47.52)| |Z|1536| |NPC|159830| |AID|14802| |AC|6|
C Ti'or |AID|14802| |N|Kill (npc:162874) in {Theater of Pain} (50.39, 47.13)| |Z|1536| |NPC|162874| |QID|59828| |AC|6|

N Guide Complete |N|You earned the (aid:14802) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14802) achievement]]})
	end

	function Guide:Unload()
	end
end
