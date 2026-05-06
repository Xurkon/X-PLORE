local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Shadowlands_Legendary_Runecarving")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Shadowlands Leveling|r", "Unlocking the Runecarver", nil, nil, nil, "P", nil, function()
return [[

N Level 60 Required |PL|60| |N|Level 60 is required|

R Korthia |TID|64557| |N|Travel to {Korthia} (64.38,24.11)| |Z|1961|
A In Darkness, Found |QID|64557| |N|(npc:178845) in {Tower of the Damned} (64.63,25.53)| |Z|1961| |NPC|178845|

R Tower of the Damned |TID|64557| |N|Jump into Ring of Transference, in {Ring of Fates} (52.09, 50.86)| |Z|1670| |REACH|15.96,47.26,1911|
T In Darkness, Found |QID|64557| |N|(npc:179598) in {Tower of the Damned} (55.33,31.83)| |Z|1911| |NPC|179598|
A The Box of Many Things |QID|64210| |N|(npc:179598) in {Tower of the Damned} (55.33,31.83)| |Z|1911| |NPC|179598|

R The Runecarver |TID|64210| |N|Travel to {The Runcarver's Oubliette} (49.96, 75.33)| |Z|1912|
T The Box of Many Things |QID|64210| |N|(npc:164937) in {The Runecarver's Oubliette} (50.67, 58.80)| |Z|1912| |NPC|164937|
A Tower Knowledge |QID|64216| |N|(npc:164937) in {The Runecarver's Oubliette} (50.67, 58.80)| |Z|1912| |NPC|164937|
T Tower Knowledge |QID|64216| |N|(npc:177282) in {Tower of the Damned} (47.54,75.38)| |Z|1911| |NPC|177282|

A Prison of the Forgotten |QID|60267| |N|Auto quest after looting (npc:175123) (46.43,50.95)| |Z|1656| |NPC|175123|
N (npc:175294) |QID|61099.4| |N|Rescue (npc:175294) (34.79,56.25)| |Z|1656| |NPC|175294|

T The Search for Baine |QID|61099| |N|(npc:164079) in {The Enclave} (40.08, 68.97)| |Z|1670| |NPC|164079|
N (npc:162804) |QID|60267.1| |N|Speak to (npc:162804) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |NPC|162804|
T Prison of the Forgotten |QID|60267| |N|Click Domination Lock (15.96,62.97)| |Z|1911|

R The Runecarver |TID|60268| |N|Travel to {The Runcarver's Oubliette} (49.96, 75.33)| |Z|1912|
A Deep Within |QID|60268| |N|(npc:164937) in {The Runecarver's Oubliette} (50.67, 58.80)| |Z|1912| |NPC|164937|
C Deep Within |QID|60268.1| |N|Speak to (npc:164937) to Learn More About the Prisoner, in {The Runecarver's Oubliette} (50.17, 53.83)| |Z|1912| |NPC|164937|
T Deep Within |QID|60268| |N|(npc:164937) in {The Runecarver's Oubliette} (50.17, 53.83)| |Z|1912| |NPC|164937|
A Reawakening |QID|60269| |N|(npc:164937) in {The Runecarver's Oubliette} (50.17,53.83)| |Z|1912| |NPC|164937|
K (npc:172207) |QID|60269.1| |N|Kill (npc:172207) and collect (item:178561) in {The Maw} (44.56,41.13) (38.63,28.84)| |Z|1543| |NPC|172207|
T Reawakening |QID|60269| |N|(npc:164937) in {The Runecarver's Oubliette} (50.17,53.83)| |Z|1912| |NPC|164937|
A A Damned Pact |QID|60270| |N|(npc:164937) in {The Runecarver's Oubliette} (50.17,53.83)| |Z|1912| |NPC|164937|

T A Damned Pact |QID|60270| |N|(npc:162804) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |NPC|162804|
A A Grave Chance |QID|60271| |N|(npc:162804) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |NPC|162804|
C A Grave Chance |QID|60271.2| |N|Kill (npc:170208) or (npc:157824) around this area<br/><b>Enemies that are on fire will drop Molten Anima. (37.76,39.29)| |Z|1543| |NPC|157824|

N 50 (cur:1767) |QID|60271| |N|Collect 50 (cur:1767), it's a reward from world quests, daily quests, bonus objectives and rare spawns in The Maw| |CUR|1767 50|
B (item:181324) |QID|60271.1| |N|Speak to (npc:162804) and buy (item:181324) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |L|181324| |NPC|162804|
T A Grave Chance |QID|60271| |N|(npc:162804) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |NPC|162804|
A The Weak Link |QID|60272| |N|(npc:162804) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |NPC|162804|

R The Runecarver |TID|60272| |N|Travel to {The Runcarver's Oubliette} (49.96, 75.33)| |Z|1912| |REACH|
N (npc:164937) |QID|60272.1| |N|Speak to (npc:164937) to Break the Chain (50.17,53.83)| |Z|1912| |POI| |NPC|164937|
T The Weak Link |QID|60272| |N|(npc:164937) in {The Runecarver's Oubliette} (50.72,54.13)| |Z|1912| |NPC|164937|
A Ashes of the Tower |QID|62700| |N|(npc:164937) in {The Runecarver's Oubliette} (50.17,53.83)| |Z|1912| |NPC|164937|
A The Final Pieces |QID|62719| |N|(npc:164937) in {The Runecarver's Oubliette} (50.72,54.13)| |Z|1912| |NPC|167937|

A The Vessels of Jewels |QID|62800| |N|(npc:164937) in {The Runecarver's Oubliette} (50.72,54.13)| |OP|1418 1| |Z|1912| |NPC|164937|
A The Vessels of Leather and Bone |QID|62798| |N|(npc:164937) in {The Runecarver's Oubliette} (50.72,54.13)| |OP|1334 1| |Z|1912| |NPC|164937|
A The Vessels of Metal |QID|62797| |N|(npc:164937) in {The Runecarver's Oubliette} (50.72,54.13)| |OP|1311 1| |Z|1912| |NPC|164937|
A The Vessels of the Thread |QID|62799| |N|(npc:164937) in {The Runecarver's Oubliette} (50.72,54.13)| |OP|1395 1| |Z|1912| |NPC|164937|

N The Vessels of Jewels |QID|62800.1| |N|Bring the Memory Back to (npc:156670) in {Hall of shapes} (35.20,41.35)| |OP|1418 1| |Z|1670| |NPC|156670|
N The Vessels of Leather and Bone |QID|62798.1| |N|Bring the Memory Back to (npc:156669) in {Hall of shapes} (42.27,26.60)| |OP|1334 1| |Z|1670| |NPC|156669|
N The Vessels of Metal |QID|62797.1| |N|Bring the Memory Back to (npc:156666) in {Hall of shapes} (40.50,31.50)| |OP|1311 1| |Z|1670| |NPC|156666|
N The Vessels of the Thread |QID|62799.1| |N|Bring the Memory Back to (npc:156681) in {Hall of shapes} (45.47,31.78)| |OP|1395 1| |Z|1670| |NPC|156681|

T The Vessels of Jewels |QID|62800| |N|(npc:156670) in {Hall of Shapes} (35.20,41.35)| |OP|1418 1| |Z|1670| |NPC|156670|
T The Vessels of Leather and Bone |QID|62798| |N|(npc:156669) in {Hall of Shapes} (42.27,26.60)| |OP|1334 1| |Z|1670| |NPC|156669|
T The Vessels of Metal |QID|62797| |N|(npc:156666) in {Hall of Shapes} (40.50,31.50)| |OP|1311 1| |Z|1670| |NPC|156669|
T The Vessels of the Thread |QID|62799| |N|(npc:156681) in {Hall of Shapes} (45.47,31.78)| |OP|1395 1| |Z|1670| |NPC|156681|

R Tower of the Damned |TID|62700| |N|Jump into Ring of Transference, in {Ring of Fates} (52.09, 50.86)| |Z|1670| |REACH|15.96,47.26,1911|
N Ashes of the Tower |QID|62700.1| |N|Enter Torghast Wings within {Tower of the Damned} and collect 1250 (cur:1828) from the final boss upon full completion. (37.63, 47.00)| |Z|1911| |CUR|1828, 1250|

N Acquire a Rune Vessel |QID|62719.1| |N|Acquire a Rune Vessel, craft one with professions or purchase it from the Auction House.<br/><b>Plate vessels are named Shadowghast.<br/><b>Mail vessels are named Boneshatter.<br/><b>Leather vessels are named Umbrahide.<br/><b>Cloth vessels are named Grim-Veiled.<br/><b>Neck and Ring vessels are named Shadowghast.|
N Obtain 2 Different Missives |QID|62719.2| |N|Obtain 2 Different Missives, craft them with Inscription or purchase them from the Auction House.<br/><b>There are missives of Haste, Critical Strike, Mastery, and Versatility.|
N Obtain Rune Memory |QID|62719.3| |N|Obtain a Rune Memory and use it infront of (npc:164937)<br/><b>Complete activities in {Shadowlands}<br/><b>Raids, Dungeons, Epic World Quests|

R The Runecarver |TID|62700| |N|Travel to {The Runcarver's Oubliette} (15.91,61.21)| |Z|1911| |REACH|49.96,75.33,1912|
T The Final Pieces |QID|62719| |N|(npc:164937) in {The Runecarver's Oubliette} (50.72,54.13)| |Z|1912| |NPC|164937|
T Ashes of the Tower |QID|62700| |N|(npc:164937) in {The Runecarver's Oubliette} (50.72,54.13)| |Z|1912| |NPC|164937|

N Need to Know |N|<b>Rank 1 - Item Level 190 - 1,250 (cur:1828)<br/><b>Rank 2 - Item Level 210 - 2,000 (cur:1828)<br/><b>Rank 3 - Item Level 225 - 3,200 (cur:1828)<br/><b>Rank 4 - Item Level 235 - 5,150 (cur:1828)<br/><b>Rank 5 - Item Level 249 - 5,150 (cur:1828) - 1,100 (cur:1906)<br/><b>Rank 6 - Item Level 262 - 5,150 (cur:1828) - 1,650 (cur:1906)|
N Tips |N|It's cheaper to craft your first legendary item between rank 1 - 4 and then upgrade to rank 5 or 6. For example, to upgrade a Rank 3 legendary to Rank 6, you would need a Rank 6 (Item Level 262 Rune Vessel), 1,950 (cur:1828) and 1,650 (cur:1906). This will save you gold/crafting materials in the long run, since you won't need a Rank 4 or Rank 5 base item.|
N (cur:1828) |N|(cur:1828) is awarded upon completion of a layer in one of 6 wings of torghast once per week per wing.|
N (cur:1906) |N|(cur:1906) is awarded upon clearing layers 9 through to 12.|
N (item:187218) |N|Buy (item:187218) for 2,000 (cur:1767) from (npc:179321) in Keepers Respite (63.4, 23.4)<br/><b>Requires Death's Advance - Honored<br/><b>If you have your profession at max level and then complete (qid:63726), you will get this item for free.| |Z|1961| |L|187218| |NPC|179321|

N Guide Complete

]]
end)	end

    function Guide:Unload()
    end
end