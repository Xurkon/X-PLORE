local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Allied_Races_DarkIronDwarf")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Feats of Strength|r"}, "Allied Races: Dark Iron Dwarf", nil, "Alliance", nil, "A", nil, function()
return [[

N Level 40 Required |PL|40| |N|You will need to level your character to Level 40|
--N Required |N|Reach Exalted with: (fac:2159)| |REPR|2159, 42000|
--N Required |N|Earn the achievement: (aid:12510)<br/>Use the (guide:"War Campaign (10-50)") guide| |AID|12510|

R Stormwind City |QID|51813| |N|Travel to {Stormwind} (23.73, 55.35)| |Z|84|
A Blackrock Depths |QID|51813| |N|(npc:133197) in {Stormwind Embassy} (52.07, 13.90)| |Z|84| |NPC|133197|
N Moira Thaurissan |QID|51813| |N|Speak with (npc:140309) and choose "I am ready to go to Blackrock Depths." in {Stormwind Embassy} (52.07, 13.90)<br/><br/>Tick this step| |Z|84| |F|1159| |NPC|133197|

- Blackrock Depths Scenario
C The Black Anvil |QID|51813| |SID|40480|1| |N|Follow (npc:140309) to the Black Anvil in {Shadowforge City}| |NPC|140309|
C A Bit O' Azerite |QID|51813| |SID|40528|2| |N|Pick up the Crate o' Azerite and place it on the Black Anvil in {Shadowforge City}|
C Shapin' Azerite |QID|51813| |SID|0|3| |N|Kill (npc:139689) and (npc:139687) and (npc:139686) until the bar reaches 100% in {Shadowforge City}| |NPC|139689, 139687, 139686|
C Slag in the Works |QID|51813| |SID|40540|4| |N|Watch the role play in {Shadowforge City}| |NPC|140309|
C Scorchin' the Sky |QID|51813| |SID|40539|5| |N|Kill 8 (npc:139268) in {Shadowforge City}| |NPC|139268|
C Dark Iron Highway |QID|51813| |SID|0|6| |N|Enter the door after it opens and kill (npc:139267) and (npc:139272) until the bar fills to 100% in {Shadowforge City}| |NPC|139267, 139268|
C Scoria In Flux |QID|51813| |SID|40547|7| |N|Kill (npc:139273) in {Dark Iron Highway}| |NPC|139273|
C Hammer to the Anvil |QID|51813| |SID|40548|8| |N|Return to the Black Anvil in {Shadowforge City}|
T Blackrock Depths |QID|51813| |N|(npc:140309) in {Shadowforge City}| |NPC|140309|
A The MOTHERLODE!!: Ironfoe |QID|53351| |N|(npc:140309) in {Shadowforge City}| |NPC|140309|

- The MOTHERLODE!! Dungeon
C The MOTHERLODE!!: Ironfoe |QID|53351| |SID|38196|4| |N|Use the Mole Machine to Stormwind.<br/><br/>Zone or Queue for (map:1010) dungeon on Normal or Heroic difficulty. He is the last boss kill him and then loot to recover the (item:163708)| |Z|1010| |I| |L|163708|

R Stormwind City |QID|53351| |N|Travel to {Stormwind} (23.73, 55.35)| |Z|84|
T The MOTHERLODE!!: Ironfoe |QID|53351| |N|(npc:133197) in {Stormwind Embassy} (52.07, 13.90)| |Z|84| |NPC|133197|
A Molten Core |QID|53342| |N|(npc:133197) in {Stormwind Embassy} (52.07, 13.90)| |Z|84| |NPC|133197|
N Moira Thurissan |QID|53342| |N|Speak with (npc:140309) and choose "I am ready to go to the Molten Core." in {Stormwind Embassy} (52.07, 13.90)<br/><br/>Tick this step| |Z|84| |F|1160| |NPC|133197|

- Molten Core Scenario
C Molten Core |QID|53342| |N|Enter the tank and use abilities to kill the Molten NPC's, keep following the path until you get to a road block. turn left in to the lava, causing you to dismount the tank, proceed and kill the Moten NPC's until you get to (npc:143542). Wait out the roll play and then kill (npc:143542) and then click on the Molten Core.<br/><br/>Leave the instance.| |NPC|143542| |L|163693| - Gezzrok the Keeper

T Molten Core |QID|53342| |N|(npc:133197) in {Stormwind Embassy} (52.07, 13.90)| |Z|84| |NPC|133197|
A Firelands |QID|53352| |N|(npc:133197) in {Stormwind Embassy} (52.07, 13.90)| |Z|84| |NPC|133197|
N Moira Thurissan |QID|53352| |N|Speak with (npc:140309) and choose "I am ready to go to the Firelands." in {Stormwind Embassy} (52.07, 13.90)<br/><br/>Tick this step| |Z|84| |F|367| |NPC|133197|

- Firelands Scenario
C The Bridgekeeper |QID|53352| |SID|41550|1| |N|Approach and then speak to (npc:143645), wait out the role play and then kill (npc:143645) in (map:367| |NPC|143645| - Dark Iron Cultist
C Cult of Ragnaros |QID|53352| |SID|0|2| |N|Follow and defend Anvil-Thane Thurgaden from the cultists and their allies until the progress bar fills to 100%|
C Grimstone |QID|53352| |SID|41563|3| |N|Approach and wait out role play|
C Herald of Ragnaros |QID|53352| |SID|41561|4| |N|Kill (npc:143607) in Ragnaros' chambers| |NPC|143607|
C Power of Ragnaros |QID|53352| |SID|0|5| |N|Approach the lava pool to infuse the Molten Core with power of Ragnaros, stay there until the bar fills to 100%, once charged, exit the scenario by entering the Mole Machine to Stormwind|

T Firelands |QID|53352| |N|(npc:133197) in {Stormwind Embassy} (52.07, 13.90)| |Z|84| |NPC|133197|
A Forged in Fire an' Flame |QID|51474| |N|(npc:133197) in {Stormwind Embassy} (52.07, 13.90)| |Z|84| |NPC|133197|
C Moira Thurissan |QID|51474| |N|Speak with (npc:140309) and choose "I am ready to go to Blackrock Depths." in {Stormwind Embassy} (52.07, 13.90)<br/><br/>Tick this step| |Z|84| |F|1159| |NPC|133197|

- Blackrock Depths Scenario
C Forged in Fire An' Flame |QID|51474| |N|Approach the Black Anvil and click on the Core.|
T Forged in Fire An' Flame |QID|51474| |N|(npc:133197) in {Shadowforge City}| |NPC|140309|
A Dark Iron Dwarves |QID|53566| |N|(npc:133197) in {Shadowforge City}| |NPC|140309|
C Dark Iron Dwarves |QID|53566| |N|Use the Mole Machine to Stormwind.<br/><br/>Tick this step|
				
T Dark Iron Dwarves |QID|53566| |N|(npc:126301) in {Stormwind Embassy} (52.16, 13.56)| |Z|84| |NPC|126301|

N Guide Complete |N|Congratulations! You Unlocked the "Dark Iron Dwarf" Allied Race|

]]
end, {description = [[This guide will show you how to unlock (aid:12515)]]}) end
	
	function Guide:Unload()
	end
end
