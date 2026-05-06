local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Worgen_Heritage_of_Gilneas")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Heritage Armor Quests|r"}, "Worgen - Heritage of Gilneas", nil, "Alliance", nil, "A", nil, function()
return [[

N Required |N|You will need to level your character to Level 50| |PL|50| |R|Worgen|
N Required |N|Earn Exalted reputation status with (fac:1134)<br/>Complete any Outlands, Northrend, Cataclysm, Pandaria or Draenor dungeons on normal or heroic difficulty with the (item:64882) on until you reach Exalted| |REPR|1134, 42000| |R|Worgen|

A The Shadow of Gilnaes |QID|54976| |N|(npc:150200) in {Stormwind Embassy} (54.73, 18.40)| |Z|84| |NPC|150200| |R|Worgen| - Courier Claridge
T The Shadow of Gilneas |QID|54976| |N|(npc:155313) in {Stormwind Keep} (82.59, 28.24)| |Z|84| |NPC|155313| |R|Worgen| - Princess Tess Greymane
A Into Duskwood |QID|54977| |N|(npc:151784) in {Stormwind Keep} (82.37, 27.97)| |Z|84| |NPC|151784| |R|Worgen| - Mia Greymane
T Into Duskwood |QID|54977| |N|(npc:151761) in {Raven Hill} (18.18, 57.26)| |Z|47| |NPC|151761| |R|Worgen| - Vassandra Stormclaw
A Bane of the Nightbane |QID|54980| |N|(npc:151761) in {Raven Hill} (18.18, 57.26)| |Z|47| |NPC|151761| |R|Worgen|
N Pungent Meat Placed |QID|54980.1| |N|Click on the Pungent Meat in (map:47) (52.02, 61.62)| |Z|47| |R|Worgen|
N Bloodeyes Subdued |QID|54980.2| |N|Subdue (npc:150721) in (map:47) (51.96, 61.57)| |Z|47| |NPC|150721| |R|Worgen| - Bloodeyes
N Bloodeyes brought to Raven Hill |QID|54980.3| |N|Bring (npc:150721) to {Raven Hill} (18.26, 57.32)| |Z|47| |NPC|150721| |R|Worgen|
T Bane of the Nightbane |QID|54980| |N|(npc:151761) in {Raven Hill} (18.18, 57.27)| |Z|47| |NPC|151761| |R|Worgen|
A Cry to the Moon |QID|54981| |N|(npc:151761) in {Raven Hill} (18.18, 57.27)| |Z|47| |NPC|151761| |R|Worgen|
A The Spirit of the Hunter |QID|54982| |N|(npc:151761) in {Raven Hill} (18.18, 57.27)| |Z|47| |NPC|151761| |R|Worgen|
C The Spirit of the Hunter |QID|54982| |N|Retrieve 6 (item:167031) from (npc:150096) in {Manor Mistmantle} (78.09, 34.24)| |Z|47| |NPC|150096| |L|167031 6| |R|Worgen| - Mistfang Howler
C Cry to the Moon |QID|54981| |N|Kill (npc:150108) and then click Elune's Grace to collect (item:167032) in {Manor Mistmantle} (82.31, 33.96)| |Z|47| |R|Worgen|
T Cry to the Moon |QID|54981| |N|(npc:151761) in {Twilight Grove} (46.41, 37.04)| |Z|47| |NPC|151761| |R|Worgen|
T The Spirit of the Hunter |QID|54982| |N|(npc:151761) in {Twilight Grove} (46.41, 37.04)| |Z|47| |NPC|151761| |R|Worgen|
A Waking a Dreamer |QID|54983| |N|(npc:151761) in {Twilight Grove} (46.41, 37.04)| |Z|47| |NPC|151761| |R|Worgen|
N Speak with Vassandra Stormclaw |QID|54983.1| |N|Speak with (npc:151761) in {Twilight Grove} (46.41, 37.04)| |Z|47| |NPC|151761| |R|Worgen|
N Defend Vassandra During the Ritual |QID|54983.2| |N|Defend (npc:151761) during the ritual in {Twilight Grove} (46.58, 36.92)| |Z|47| |R|Worgen|
T Waking a Dreamer |QID|54983| |N|(npc:150106) in {Twilight Grove} (46.68, 37.07)| |Z|47| |NPC|150106| |R|Worgen|
A Let Sleeping Wolves Lie |QID|54984| |N|(npc:150106) in {Twilight Grove} (46.68, 37.07)| |Z|47| |NPC|150106| |R|Worgen| - Goldrinn
N Enter Portal |QID|54984| |N|Walk through portal (behind Goldrinn) (46.63, 35.87)| |Z|47| |R|Worgen|
C The Hunter Within |QID|54984| |SID|44887|1| |N|Speak with (npc:150559) and select:<br/><b>"Gently shake her awake"<br/><b>"Forcefully shake her awake" in {Gilneas City} (66.09, 20.93)| |Z|1577| |NPC|150559| |R|Worgen| - Princess Tess Greymane
C The Start of a Dream |QID|54984| |SID|44888|2| |N|Fight back the Forsaken assault in {Gilneas City} (60.83, 31.21)| |Z|1577| |NPC|150051, 150091| |R|Worgen| - 150051=Lumbering Nightmare, 150091=Phantasmal Stalker
C Leader of the Pack |QID|54984| |SID|44889|3| |N|Kill (npc:150498) in {Gilneas City} (62.41, 42.33)| |Z|1577| |NPC|150498| |R|Worgen| - Dark Ranger Thayala
C A Blight Upon the Land |QID|54984| |SID|44890|4| |N|Use (spell:301463) ability that appears somewhere on-screen to track down (npc:152329) in {Gilneas City} (66.37, 78.12)| |Z|1577| |NPC|152329| |R|Worgen| - Nathanos Blightcaller
C The Fury of the Wild |QID|54984| |SID|44891|5| |N|Kill (npc:152329) in {Gilneas City} (58.30, 67.55)| |Z|1577| |NPC|152329| |R|Worgen|
C Chasing Nightmares |QID|54984| |SID|44892|6| |N|Follow (npc:150559) trail in {Gilneas City} (35.17, 63.01)| |Z|1577| |NPC|150559| |R|Worgen|
C Judged by Moonlight |QID|54984| |SID|44893|7| |N|Kill (npc:150495) in {Gilneas City} (34.39, 65.64)| |Z|1577| |NPC|150495| |R|Worgen| - Essence of Rage
N Exit |QID|54984| |N|Click Dream Rift to exit Emerald Dream (33.65, 67.56)| |Z|1577| |R|Worgen|
T Let Sleeping Wolves Lie |QID|54984| |N|(npc:150115) in {Twilight Grove} (46.42, 36.98)| |Z|47| |NPC|150115| |R|Worgen| - Princess Tess Greymane
A The New Guard |QID|54990| |N|(npc:150115) in {Twilight Grove} (46.42, 36.98)| |Z|47| |NPC|150115| |R|Worgen|
C The New Guard |QID|54990| |N|Speak with (npc:155313) in {Stormwind Keep} (82.61, 28.26)| |Z|84| |NPC|155313| |R|Worgen|
T The New Guard |QID|54990| |N|(npc:155313) in {Stormwind Keep} (82.61, 28.26)| |Z|84| |NPC|155313| |R|Worgen|

N Guide Complete |N|Congratulations! You Unlocked the (spell:292047)| |R|Worgen|
N Guide Complete |N|To get (spell:292047) you will need to be a Worgen| |R|Human, Dwarf, NightElf, Gnome, Draenei, Pandaren, DarkIronDwarf, KulTiran, LightforgedDraenei, VoidElf, Mechagnome|

]]
end, {description = [[This guide will show you how to unlock the (spell:292047)<br/>Released in Patch 8.3.0 (32044)]]}) end

	function Guide:Unload()
	end
end