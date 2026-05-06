local Guide = DugisGuideViewer:RegisterModule("DugisGuide_SpecQL_Alliance_En_Blacksmithing_Armorsmith")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Specialization Questlines|r", "|cffffd200Blacksmithing|r"}, "Armorsmith", nil, "Alliance", nil, "P", nil, function()
return [[

N Note |N|NOTE ABOUT BLACKSMITHING SPECIALIZATION:<br/><b>You can only have one Blacksmithing specialization.<br/><b>Additionally, you cannot change your specialization without unlearning the Blacksmithing profession, and leveling it up again.<br/><b>We recommend looking into the different options for Armorsmith and Weaponsmith Blacksmithing before you choose which to pursue, depending on your personal play style and the specific items you want to create.<br/><b>Most of the items you can create with the specializations are BoE, so you could also B them from the AH or other players, but some of them are BoP and you would need to craft them to use them.<br/><b>If you change specializations, you will still be able to use the items you create.<br/>Tick this step.|

N Reach Level 40 |N|You must be at least this level before you can progress.<br/><b>You must be at least this level before you can begin this questline.<br/><b>Use the Leveling guides to accomplish this.| |PL|40|

N Reach Level 245 |N|Reach Level 245 Blacksmithing<br/><b>You must be at least this level with your Blacksmithing profession before you can create some of the item needed in this questline.<br/><b>Use the (guide:"Blacksmithing (1-300)") guide to accomplish this.| |P|164 245|

A The Art of the Armorsmith |QID|5283| |N|(npc:5164) in (map:1455) (49.97,42.81)| |Z|1455| |NPC|5164|

N Learn (spell:3337) |QID|2758| |N|Speak to (npc:4258) in (map:1455) (52.53,41.47)| |Z|1455| |NPC|4258|
N Learn (spell:7223) |QID|2758| |N|Speak to (npc:4258) in (map:1455) (52.53,41.47)| |Z|1455| |NPC|4258|
N Learn (spell:9920) |QID|2758| |N|Speak to (npc:4258) in (map:1455) (52.53,41.47)| |Z|1455| |NPC|4258|

N 30 (item:3859) |QID|2758| |N|Collect 30 (item:3859)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|3859 30|
N 36 (item:2838) |QID|2758| |N|Collect 36 (item:2838)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|2838 36|

N 12 (spell:3337) |BL| |QID|2758| |N|Create 12 (spell:3486)<br/><b>36 (item:2838)| |L|3486 12|
N 6 (spell:7223) |BL| |QID|2758| |N|Create 6 (spell:7223)<br/><b>30 (item:3859)<br/><b>12 (item:3486)| |L|6040 6|

A The Origins of Smithing |QID|2758| |N|(npc:7798) in (map:1453) (56.00,15.41)| |Z|1453| |NPC|7798|
C The Origins of Smithing |QID|2758.1| |N|Collect 6 (item:6040)<br/><b>You should have these from earlier in the guide.| |L|6040 6|
T The Origins of Smithing |QID|2758| |N|(npc:7798) in (map:1453) (56.00,15.41)| |Z|1453| |NPC|7798|
A In Search of Galvan |QID|2759| |N|(npc:7798) in (map:1453) (56.00,15.41)| |Z|1453| |NPC|7798|

N Learn (spell:11643) |QID|2759| |N|Use (item:9367) to learn (spell:11643)| |U|9367|

T In Search of Galvan |QID|2759| |N|(npc:7794) in (map:1434) (27.85,76.75)| |Z|1434| |NPC|7794|
A THe Mithril Order |QID|2760| |N|(npc:7794) in (map:1434) (27.85,76.75)| |Z|1434| |NPC|7794|

N Learn (spell:9959) |BL| |QID|2760| |N|(npc:2836) inside the building and learn (spell:9959) in (map:1434) (28.95,75.34)| |Z|1434| |NPC|2836|
N Learn (spell:9961) |BL| |QID|2760| |N|(npc:2836) inside the building and learn (spell:9961) in (map:1434) (28.95,75.34)| |Z|1434| |NPC|2836|
N Learn (spell:9968) |BL| |QID|2760| |N|(npc:2836) inside the building and learn (spell:9968) in (map:1434) (28.95,75.34)| |Z|1434| |NPC|2836|

N 40 (item:3575) |QID|2760| |N|Collect 40 (item:3575)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|3575 40|
N 120 (item:3860) |N|Collect 120 (item:3860)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|3860 120|
N 5 (item:6037) |N|Collect 5 (item:6037)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|6037 5|
N 4 (item:3864) |N|Collect 4 (item:3864)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|3864 4|

T The Mithril Order |QID|2760| |N|(npc:7802) in (map:1434) (50.62,20.48)| |Z|1434| |NPC|7802|
A Smelt On, Smelt Off |QID|2761| |N|(npc:7802) in (map:1434) (50.62,20.48)| |Z|1434| |NPC|7802|
A The Great Silver Deceiver |QID|2762| |N|(npc:7802) in (map:1434) (50.62,20.48)| |Z|1434| |NPC|7802|
A The Art of the Imbue |QID|2763| |N|(npc:7802) in (map:1434) (50.62,20.48)| |Z|1434| |NPC|7802|
C Smelt On, Smelt Off |QID|2761.1| |N|Collect 40 (item:3575)<br/><b>You should have these from earlier in the guide.| |L|3575 40|
C Smelt On, Smelt Off |QID|2761.2| |N|Collect 40 (item:3860)<br/><b>You should have these from earlier in the guide.| |L|3860 40|
T Smelt On, Smelt Off |QID|2761| |N|(npc:7802) in (map:1434) (50.62,20.48)| |Z|1434| |NPC|7802|
C The Great Silver Deceiver |QID|2762.1| |N|Collect 40 (item:3860)<br/><b>You should have these from earlier in the guide.| |L|3860 40|
C The Great Silver Deceiver |QID|2762.2| |N|Collect 5 (item:6037)<br/><b>You should have these from earlier in the guide.| |L|6037 5|
T The Great Silver Deceiver |QID|2762| |N|(npc:7802) in (map:1434) (50.62,20.48)| |Z|1434| |NPC|7802|
C The Art of the Imbue |QID|2763.1| |N|Collect 40 (item:3860)<br/><b>You should have these from earlier in the guide.| |L|3860 40|
C The Art of the Imbue |QID|2763.2| |N|Collect 4 (item:3864)<br/><b>You should have these from earlier in the guide.| |L|3864 4|
A Expert Blacksmith! |QID|2765| |N|(npc:7802) in (map:1434) (50.62,20.48)| |Z|1434| |NPC|7802|
C Expert Blacksmith! |QID|2765| |N|Watch the dialogue (50.57,20.37)| |Z|1434| |NPC|7802|
T Expert Blacksmith! |QID|2765| |N|(npc:7802) in (map:1434) (50.57,20.37)| |Z|1434| |NPC|7802|
A Galvan's Finest Pupil |QID|2764| |N|(npc:7802) in (map:1434) (50.57,20.37)| |Z|1434| |NPC|7802|

N Learn (spell:9945) |QID|2771| |N|Use (item:7983) to learn (spell:9945)| |U|7983|
N Learn (spell:9950) |QID|2771| |N|Use (item:7984) to learn (spell:9950)| |U|7984|
N Learn (spell:9952) |QID|2771| |N|Use (item:7985) to learn (spell:9952)| |U|7985|

N 114 (item:3860) |QID|2771| |N|Collect 114 (item:3860)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|3860 114|
N 3 (item:6037) |QID|2771| |N|Collect 3 (item:6037)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|6037 3|
N 1 (item:7909) |QID|2771| |N|Collect 1 (item:7909)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|7909|
N 8 (item:7912) |QID|2771| |N|Collect 8 (item:7912)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|7912 8|
N 14 (item:4304) |QID|2771| |N|Collect 14 (item:4304)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|4304 14|
N 18 (item:4338) |QID|2771| |N|Collect 18 (item:4338)<br/><b>You can gather these with Skinning profession, otherwise purchase from the Auction House.| |L|4338 18|

T Galvan's Finest Pupil |QID|2764| |N|(npc:7804) in (map:1446) (51.42,28.75)| |Z|1446| |NPC|7804|
A A Good Head On Your Shoulders |QID|2771| |N|(npc:7804) in (map:1446) (51.42,28.75)| |Z|1446| |NPC|7804|
A The World At Your Feet |QID|2772| |N|(npc:7804) in (map:1446) (51.42,28.75)| |Z|1446| |NPC|7804|
A The Mithril Kid |QID|2773| |N|(npc:7804) in (map:1446) (51.42,28.75)| |Z|1446| |NPC|7804|

N 2 (spell:9920) |BL| |QID|2773| |N|Create 2 (spell:9920)<br/><b>8 (item:7912) (51.42,28.75)| |Z|1446| |L|7966 2|
C A Good Head On Your Shoulders |BL| |QID|2771.1| |N|Create 2 (spell:9961)<br/><b>20 (item:3860)<br/><b>12 (item:4338) (51.42,28.75)| |Z|1446| |L|7931 2|
C A Good Head On Your Shoulders |BL| |QID|2771.2| |N|Create 1 (spell:9952)<br/><b>12 (item:3860)<br/><b>1 (item:6037)<br/><b>6 (item:4304) (52.42,28.75)| |Z|1446| |L|7928|
T A Good Head On Your Shoulders |QID|2771| |N|(npc:7804) in (map:1446) (51.42,28.75)<br/><b>You will learn (spell:9980) automatically.| |Z|1446| |NPC|7804|
C The World At Your Feet |BL| |QID|2772.1| |N|Create 2 (spell:9968)<br/><b>28 (item:3860)<br/><b>8 (item:4304) (52.42,28.75)| |Z|1446| |L|7933 2|
C The World At Your Feet |BL| |QID|2772.2| |N|Create 1 (spell:9945)<br/><b>12 (item:3860)<br/><b>1 (item:6037)<br/><b>1 (item:7966)<br/><b>1 (item:7909) (52.42,28.75)| |Z|1446| |L|7926|
T The World At Your Feet |QID|2772| |N|(npc:7804) in (map:1446) (51.42,28.75)<br/><b>You will learn (spell:9979) automatically.| |Z|1446| |NPC|7804|
C The Mithril Kid |BL| |QID|2773.1| |N|Create 2 (spell:9959)<br/><b>32 (item:3860) (52.42,28.75)| |Z|1446| |L|7930 2|
C The Mithril Kid |BL| |QID|2773.2| |N|Create 1 (spell:9950)<br/><b>10 (item:3860)<br/><b>6 (item:4338)<br/><b>1 (item:6037)<br/><b>1 (item:7966) (52.42,28.75)| |Z|1446| |L|7927|
T The Mithril Kid |QID|2773| |N|(npc:7804) in (map:1446) (51.42,28.75)<br/><b>You will learn (spell:9972) automatically.| |Z|1446| |NPC|7804|
A Did You Lose This? |QID|3321| |N|(npc:7804) in (map:1446) (51.42,28.75)| |Z|1446| |NPC|7804|
C Did You Lose This? |QID|3321.1| |N|Watch the dialogue (51.42,28.76)| |Z|1446|
T Did You Lose This? |QID|3321| |N|(npc:7804) in (map:1446) (51.42,28.75)| |Z|1446| |NPC|7804|

N 108 (item:3860) |QID|5283| |N|Collect 108 (item:3860)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|3860 108|
N 18 (item:6037) |QID|5283| |N|Collect 18 (item:6037)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|6037 18|
N 2 (item:7909) |QID|5283| |N|Collect 2 (item:7909)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|7909 2|
N 28 (item:7912) |QID|5283| |N|Collect 28 (item:7912)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|7912 28|
N 4 (item:7971) |QID|5283| |N|Collect 4 (item:7971)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|7971 4|
N 1 (item:7077) |QID|5283| |N|Collect (item:7077)<br/><b>You can purchase them from the Auction House.| |L|7077|
N 8 (item:4304) |QID|5283| |N|Collect 8 (item:4304)<br/><b>You can gather these with Skinning profession, otherwise purchase from the Auction House.| |L|4304 8|

N 7 (spell:9920) |BL| |QID|5283| |N|Create 7 (spell:9920)<br/><b>28 (item:7912) (49.83,44.12)| |Z|1455| |L|7966 7|
C The Art of the Blacksmith |BL| |QID|5283.1| |N|Create 4 (spell:9980)<br/><b>64 (item:3860)<br/><b>8 (item:6037)<br/><b>4 (item:7971)<br/><b>4 (item:7966) (49.83,44.12)| |Z|1455| |L|7937 4|
C The Art of the Blacksmith |BL| |QID|5283.2| |N|Create 2 (spell:9979)<br/><b>28 (item:3860)<br/><b>4 (item:6037)<br><b>8 (item:4304)<br/><b>2 (item:7966)<br/><b>2 (item:7909) (49.83,44.12)| |Z|1455| |L|7936 2|
C The Art of the Blacksmith |BL| |QID|5283.3| |N|Create 1 (spell:9972)<br/><b>16 (item:3860)<br/><b>6 (item:6037)<br/><b>1 (item:7077)<br/><b>1 (item:7966) (49.83,44.12)| |Z|1455| |L|7935|
T The Art of the Blacksmith |QID|5283| |N|(npc:5164) in (map:1455) (49.98,42.82)<br/><b>You will learn (spell:9788) automatically.| |Z|1455| |NPC|5164|

N Learn Plans |N|Speak to (npc:5164) in (map:1455) and learn plans. (49.98,42.82)<br/><b>Tick this step.| |Z|1455| |NPC|5164|

N Guide Complete

]]
end, {description = [[This guide will walk you through completing the Armorsmith questline for the Blacksmithing profession.]]})
    end
       
    function Guide:Unload()
    end
end