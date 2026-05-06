local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dailies_Dragonflight_En_70_Dream_Wardens_Renown_Rep")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Reputation|r"}, "Dream Wardens (Renown)", nil, nil, nil, "D", "|SG|DugisGuideViewer.SuggestReputationAchievementPredicate(2574)|", function()
return [[

N Reach Renown Level 2 |N|Reach Renown Level 2 with the Dream Wardens<br/><b>Complete daily quests, weekly quests, and zone quests in The Emerald Dream to gain renown.<br/><b>Completing "The Emerald Dream" guide awards numerous reputation tokens.| |FR|2574, 2|

A Dragon Isles Supplies |QID|78579| (npc:208143) in {Amirdrassil} (50.21, 61.58)<br/><b>If this quest is not available you can skip this step.| |Z|2200| |NPC|208143| |E| |OID|78385|

N Reach Renown Level 3 |N|Reach Renown Level 3 with the Dream Wardens<br/><b>Complete daily quests, weekly quests, and zone quests in The Emerald Dream to gain renown.<br/><b>Completing "The Emerald Dream" guide awards numerous reputation tokens.| |FR|2574, 3|

A Small Dreamseeds |QID|78385| |N|(npc:211265) in {Amirdrassil} (59.75, 16.89)| |Z|2200| |NPC|211265| |E|

N Reach Renown Level 4 |N|Reach Renown Level 4 with the Dream Wardens<br/><b>Complete daily quests, weekly quests, and zone quests in The Emerald Dream to gain renown.<br/><b>Completing "The Emerald Dream" guide awards numerous reputation tokens.| |FR|2574, 4|

A Whelpling's Dreaming Crest |QID|78356| |N|(npc:208143) in {Amirdrassil} (50.21, 61.59)| |Z|2200| |NPC|208143| |E|

N Reach Renown Level 5 |N|Reach Renown Level 5 with the Dream Wardens<br/><b>Complete daily quests, weekly quests, and zone quests in The Emerald Dream to gain renown.<br/><b>Completing "The Emerald Dream" guide awards numerous reputation tokens.| |FR|2574, 5|

A Dragon Isles Supplies |QID|78580| |N|(npc:208143) in {Amirdrassil} (50.21, 61.58)<br/><b>If this quest is not available you can skip this step.| |Z|2200| |NPC|208143| |E| |OID|78386|
A Emerald Reawakening |QID|78386| |N|(npc:211962) next to you| |PPOS| |NPC|211962|
T Emerald Reawakening |QID|78386| |N|(npc:211209) in {Amirdrassil} (50.23, 61.80)| |Z|2200| |NPC|211209|
A Mean Green Infusion Machine |QID|78430| |N|(npc:211209) in {Amirdrassil} (50.23, 61.80)| |Z|2200| |NPC|211209|

N Extract 6 Dream Infusions |QID|78430.1| |N|Kill 6 (npc:207809), (npc:207997) and extract 6 Dream Infusions (58.65, 72.45)| |Z|2200| |NPC|207809, 207997|

T Mean Green Infusion Machine |QID|78430| |N|(npc:211209) in {Amirdrassil} (50.23, 61.80)| |Z|2200| |NPC|211209|
A Green Dream Team |QID|78431| |N|(npc:211209) in {Amirdrassil} (50.23, 61.80)| |Z|2200| |NPC|211209| |OID|78358|

U (item:205160) |QID|78431| |N|Use (item:205160) to learn (npc:201008) (50.23, 61.81)| |Z|2200| |U|205160| |OID|78358|
N Summon Rithro |QID|78431.1| |N|Click our target npc button to summon Rithro (50.23, 61.81)| |Z|2200| |SCRIPT|/summonpet Rithro| |NPC|201008| |OID|78358|
B (item:210785) |QID|78431| |N|Speak to (npc:211209) and select option 'View Dream Infusions' and buy (item:210785) for 1 (item:210776) in {Amirdrassil} (50.23, 61.80)| |Z|2200| |NPC|211209| |L|210785| |OID|78358|
U (item:210785) |QID|78431.2| |N|Use (item:210785) to learn (npc:212954) (50.23, 61.81)| |Z|2200| |U|210785| |OID|78358|

T Green Dream Team |QID|78431| |N|(npc:211209) in {Amirdrassil} (50.23, 61.81)| |Z|2200| |NPC|211209| |OID|78358|

N Reach Renown Level 6 |N|Reach Renown Level 6 with the Dream Wardens<br/><b>Complete daily quests, weekly quests, and zone quests in The Emerald Dream to gain renown.<br/><b>Completing "The Emerald Dream" guide awards numerous reputation tokens.| |FR|2574, 6|

N Reach Renown Level 7 |N|Reach Renown Level 7 with the Dream Wardens<br/><b>Complete daily quests, weekly quests, and zone quests in The Emerald Dream to gain renown.<br/><b>Completing "The Emerald Dream" guide awards numerous reputation tokens.| |FR|2574, 7|

N Reach Renown Level 8 |N|Reach Renown Level 8 with the Dream Wardens<br/><b>Complete daily quests, weekly quests, and zone quests in The Emerald Dream to gain renown.<br/><b>Completing "The Emerald Dream" guide awards numerous reputation tokens.| |FR|2574, 8|

A Dragon Isles Supplies |QID|78581| |N|(npc:208143) in {Amirdrassil} (50.21, 61.58)<br/><b>If this quest is not available you can skip this step.| |Z|2200| |NPC|208143| |E| |OID|78358|
A Drake's Dreaming Crest |QID|78358| |N|(npc:208143) in {Amirdrassil} (50.21, 61.58)<br/><b>If this quest is not available you can skip this step.| |Z|2200| |NPC|208143|

N Reach Renown Level 9 |N|Reach Renown Level 9 with the Dream Wardens<br/><b>Complete daily quests, weekly quests, and zone quests in The Emerald Dream to gain renown.<br/><b>Completing "The Emerald Dream" guide awards numerous reputation tokens.| |FR|2574, 9|

A Plump Dreamseeds |QID|78387| |N|(npc:211265) in {Amirdrassil} (59.75, 16.89)| |Z|2200| |NPC|211265| |OID|78363|

N Reach Renown Level 10 |N|Reach Renown Level 10 with the Dream Wardens<br/><b>Complete daily quests, weekly quests, and zone quests in The Emerald Dream to gain renown.<br/><b>Completing "The Emerald Dream" guide awards numerous reputation tokens.| |FR|2574, 10|

A The Tabard of Your Dreams |QID|78363| |N|(npc:211962) next to you| |PPOS| |NPC|211962|
T The Tabard of Your Dreams |QID|78363| |N|(npc:208143) in {Amirdrassil} (50.21, 61.59)| |Z|2200| |NPC|208143|

N Reach Renown Level 11 |N|Reach Renown Level 11 with the Dream Wardens<br/><b>Complete daily quests, weekly quests, and zone quests in The Emerald Dream to gain renown.<br/><b>Completing "The Emerald Dream" guide awards numerous reputation tokens.| |FR|2574, 11|

N Reach Renown Level 12 |N|Reach Renown Level 12 with the Dream Wardens<br/><b>Complete daily quests, weekly quests, and zone quests in The Emerald Dream to gain renown.<br/><b>Completing "The Emerald Dream" guide awards numerous reputation tokens.| |FR|2574, 12|

A Drake's Dreaming Crest |QID|78364| |N|(npc:208143) in {Amirdrassil} (50.21, 61.59)| |Z|2200| |NPC|208143| |E|

N Reach Renown Level 13 |N|Reach Renown Level 13 with the Dream Wardens<br/><b>Complete daily quests, weekly quests, and zone quests in The Emerald Dream to gain renown.<br/><b>Completing "The Emerald Dream" guide awards numerous reputation tokens.| |FR|2574, 13|

N Reach Renown Level 14 |N|Reach Renown Level 14 with the Dream Wardens<br/><b>Complete daily quests, weekly quests, and zone quests in The Emerald Dream to gain renown.<br/><b>Completing "The Emerald Dream" guide awards numerous reputation tokens.| |FR|2574, 14|

N Reach Renown Level 15 |N|Reach Renown Level 15 with the Dream Wardens<br/><b>Complete daily quests, weekly quests, and zone quests in The Emerald Dream to gain renown.<br/><b>Completing "The Emerald Dream" guide awards numerous reputation tokens.| |FR|2574, 15|

N Reach Renown Level 16 |N|Reach Renown Level 16 with the Dream Wardens<br/><b>Complete daily quests, weekly quests, and zone quests in The Emerald Dream to gain renown.<br/><b>Completing "The Emerald Dream" guide awards numerous reputation tokens.| |FR|2574, 16|

N Reach Renown Level 17 |N|Reach Renown Level 17 with the Dream Wardens<br/><b>Complete daily quests, weekly quests, and zone quests in The Emerald Dream to gain renown.<br/><b>Completing "The Emerald Dream" guide awards numerous reputation tokens.| |FR|2574, 17|

N Reach Renown Level 18 |N|Reach Renown Level 18 with the Dream Wardens<br/><b>Complete daily quests, weekly quests, and zone quests in The Emerald Dream to gain renown.<br/><b>Completing "The Emerald Dream" guide awards numerous reputation tokens.| |FR|2574, 18|

N Reach Renown Level 19 |N|Reach Renown Level 19 with the Dream Wardens<br/><b>Complete daily quests, weekly quests, and zone quests in The Emerald Dream to gain renown.<br/><b>Completing "The Emerald Dream" guide awards numerous reputation tokens.| |FR|2574, 19|

N Reach Renown Level 20 |N|Reach Renown Level 20 with the Dream Wardens<br/><b>Complete daily quests, weekly quests, and zone quests in The Emerald Dream to gain renown.<br/><b>Completing "The Emerald Dream" guide awards numerous reputation tokens.| |FR|2574, 20|

N Guide Complete

]]
end)
    end

    function Guide:Unload()
    end
end