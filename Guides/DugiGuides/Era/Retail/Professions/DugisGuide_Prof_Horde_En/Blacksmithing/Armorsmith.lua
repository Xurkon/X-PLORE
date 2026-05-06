local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Horde_En_Blacksmithing_Armorsmith")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Specialization Questlines|r", "|cffffd200Blacksmithing|r"}, "Armorsmith", nil, "Horde", nil, "P", nil, function()
return [[

N Note |N|NOTE ABOUT BLACKSMITHING SPECIALIZATION:<br/><b>You can only have one Blacksmithing specialization.<br/><b>Additionally, you cannot change your specialization without unlearning the Blacksmithing profession, and leveling it up again.<br/><b>We recommend looking into the different options for Armorsmith and Weaponsmith Blacksmithing before you choose which to pursue, depending on your personal play style and the specific items you want to create.<br/><b>Most of the items you can create with the specializations are BoE, so you could also buy them from the AH or other players, but some of them are BoP and you would need to craft them to use them.<br/><b>If you change specializations, you will still be able to use the items you create.<br/>Tick this step.|

N Reach Level 40 |N|You must be at least this level before you can progress.<br/><b>You must be at least this level before you can begin this questline.<br/><b>Use the Leveling guides to accomplish this.| |PL|40|

N Level 245 |N|Reach Level 245 Blacksmithing<br/><b>You must be at least this level with your Blacksmithing profession before you can create some of the item needed in this questline.<br/><b>Use the (guide:"Blacksmithing (1-300)") guide to accomplish this.| |P|164 245|
 
A The Art of the Armorsmith |QID|5301| |N|(npc:11177) in (map:1454)<br/><br/>You may need to speak to (npc:11176) first standing next to the quest giver (79.81,24.05)| |Z|1454| |NPC|11177, 11176|

N Learn (spell:3337) |QID|2756| |N|Speak to (npc:3355) inside the building and learn (spell:3337) (82.34,22.97)| |Z|1454| |NPC|3355|
N Learn (spell:9920) |QID|2756| |N|Speak to (npc:3355) inside the building and learn (spell:9920) (82.34,22.97)| |Z|1454| |NPC|3355|
N Learn (spell:9916) |QID|2756| |N|Speak to (npc:3355) inside the building and learn (spell:9916) (82.34,22.97)| |Z|1454| |NPC|3355|
N Learn (spell:9935) |QID|2756| |N|Speak to (npc:3355) inside the building and learn (spell:9935) (82.34,22.97)| |Z|1454| |NPC|3355|

N 120 (item:3859) |QID|2756| |N|Collect 120 (item:3859)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House| |L|3859 120|
N 36 (item:2838) |QID|2756| |N|Colect 36 (item:2838)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House| |L|2838 36|
N 16 (item:7912) |QID|2756| |N|Collect 16 (item:7912)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House| |L|7912 16|

N 12 (spell:3337) |BL| |QID|2756| |N|Create 12 (spell:3337)<br/><b>36 (item:2838)| |L|3486 12|
N 4 (spell:9920) |BL| |QID|2756| |N|Create 4 (spell:9920)<br/><b>16 (item:7912)| |L|7966 4|
N 4 (spell:9916) |BL| |QID|2756| |N|Create 4 (spell:9916)<br/><b>64 (item:3859)<br/><b>12 (item:3486)| |L|7963 4|
N 4 (spell:9935) |BL| |QID|2756| |N|Create 4 (spell:9935)<br/><b>56 (item:3859)<br/><b>4 (item:7966)| |L|7922 4|

A The Old Ways |QID|2756| |N|(npc:7792) in (map:1454) (80.94,23.32)| |Z|1454| |NPC|7792|
T The Old Ways |QID|2756| |N|(npc:7792) in (map:1454) (80.94,23.32)<br/><b>You will learn (spell:9957) automatically.| |Z|1454| |NPC|7792|
A Booty Bay or Bust! |QID|2757| |N|(npc:7793) in (map:1454) (80.94,23.32)| |Z|1454| |NPC|7793|
T Booty Bay or Bust! |QID|2757| |N|(npc:7794) in (map:1434) (28.87,75.42)| |Z|1434| |NPC|7794|
A The Mithirl Order |QID|2760| |N|(npc:7794) in (map:1434) (28.87,75.42)| |Z|1434| |NPC|7794|

N Learn (spell:9959) |QID|2760| |N|Speak to (npc:2836) inside the building and learn (spell:9959) (28.99,75.55)| |Z|1434| |NPC|2836|
N Learn (spell:9961) |QID|2760| |N|Speak to (npc:2836) inside the building and learn (spell:9961) (28.99,75.55)| |Z|1434| |NPC|2836|
N Learn (spell:9968) |QID|2760| |N|Speak to (npc:2836) inside the building and learn (spell:9968) (28.99,75.55)| |Z|1434| |NPC|2836|

N 40 (item:3575) |QID|2760| |N|Collect 40 (irem:3575)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House| |L|3575 40|
N 120 (item:3860) |QID|2760| |N|Collect 120 (item:3860)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House| |L|3860 120|
N 5 (item:6037) |QID|2760| |N|Collect 5 (item:6037)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House| |L|6037 5|
N 4 (item:3864) |QID|2760| |N|Collect 4 (item:3864)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House| |L|3864 4|

T The Mithril Order |QID|2760| |N|(npc:7802) in (map:1434) (50.62,20.48)| |Z|1434| |NPC|7802|
A Smelt On, Smelt Off |QID|2761| |N|(npc:7802) in (map:1434) (50.62,20.48)| |Z|1434| |NPC|7802|
A The Great Silver Deceiver |QID|2762| |N|(npc:7802) in (map:1434) (50.62,20.48)| |Z|1434| |NPC|7802|
A The Art of the Imbue |QID|2763| |N|(npc:7802) in (map:1434) (50.62,20.48)| |Z|1434| |NPC|7802|
T Smelt On, Smelt Off |QID|2761| |N|(npc:7802) in (map:1434) (50.62,20.48)| |Z|1434| |NPC|7802|
T The Great Silver Deceiver |QID|2762| |N|(npc:7802) in (map:1434) (50.62,20.48)| |Z|1434| |NPC|7802|
T The Art of the Imbue |QID|2763| |N|(npc:7802) in (map:1434) (50.62,20.48)| |Z|1434| |NPC|7802|
A Expert Blacksmith! |QID|2765| |N|(npc:7802) in (map:1434) (50.62,20.48)| |Z|1434| |NPC|7802|
C Expert Blacksmith! |QID|2765| |N|Watch the dialogue (50.57,20.37)| |Z|1434|
T Expert Blacksmith! |QID|2765| |N|(npc:7802) in (map:1434) (50.57,20.37)| |Z|1434| |NPC|7802|
A Galvan's Finest Pupil |QID|2764| |N|(npc:7802) in (map:1434) (50.57,20.37)| |Z|1434| |NPC|7802|

Learn (spell:9945) |QID|2764| |N|Use (item:7983) to learn (spell:9945)| |U|7983|
Learn (spell:9950) |QID|2764| |N|Use (item:7984) to learn (spell:9950)| |U|7984|
Learn (spell:9952) |QID|2764| |N|Use (item:7985) to learn (spell:9952)| |U|7985|

N 114 (item:3860) |QID|2764| |N|Collect 114 (item:3860)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House| |L|3860 114|
N 3 (item:6037) |QID|2764| |N|Collect 3 (item:6037)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House| |L|6037 3|
N (item:7909) |QID|2764| |N|Collect (item:7909)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House| |L|7909|
N 8 (item:7912) |QID|2764| |N|Collect 8 (item:7912)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House| |L|7912 8|
N 14 (item:4304) |QID|2764| |N|Collect 14 (item:4304)<br/><b>you can gather these with Skinning profession, otherwise purchase from the Auction House| |L|4304 14|
N 18 (item:4338) |QID|2764| |N|Collect 18 (item:4338)<br/><b>you can gather these with Skinning profession, otherwise purchase from the Auction House| |L|4338 18|

T Galvan's Finest Pupil |QID|2764| |N|(npc:7804) in (map:1446) (51.42,28.75)| |Z|1446| |NPC|7804|
A A Good Head On Your Shoulders |QID|2771| |N|(npc:7804) in (map:1446) (51.42,28.75)| |Z|1446| |NPC|7804|
A The World At Your Feet |QID|2772| |N|(npc:7804) in (map:1446) (51.42,28.75)| |Z|1446| |NPC|7804|
A The Mithril Kid |QID|2773| |N|(npc:7804) in (map:1446) (51.42,28.75)| |Z|1446| |NPC|7804|

N 2 (spell:9920) |BL| |N|Create 2 (spell:9920)<br/><b>8 (item:7912)| |L|7966 2|
N 2 (spell:9961) |BL| |QID|2771.1| |N|Create 2 (spell:9961)<br/><b>20 (item:3860)<br/><b>12 (item:4338)| |L|7931 2|
N 1 (spell:9952) |BL| |QID|2771.2| |N|Create 1 (spell:9952)<br/><b>12 (item:3860)<br/><b>1 (item:6037)<br/><b>6 (item:4304)| |L|7928|

T A Good Head On Your Shoulders |QID|2772| |N|(npc:7804) in (map:1446) (51.42,28.75)<br/><b>You will learn (spell:9980) automatically.| |Z|1446| |NPC|7804|

N 2 (spell:9968) |BL| |QID|2772.1| |N|Create 2 (spell:9968)<br/><b>28 (item:3860)<br/><b>8 (item:4304)| |L|7933 2|
N 1 (spell:9945) |BL| |QID|2772.2| |N|Create 1 (spell:9945)<br/><b>12 (item:3860)<br/><b>1 (item:6037)<br/><b>1 (item:7966)<br/><b>1 (item:7909)| |L|7926|

T The World At Your Feet |QID|2772| |N|(npc:7804) in (map:1446) (51.42,28.75)| |Z|1446| |NPC|7804|

N 2 (spell:9959) |BL| |QID|2773.1| |N|Create 2 (spell:9959)<br/><b>32 (item:3860)| |L|7930 2|
N 1 (spell:9950) |BL| |QID|2773.2| |N|Create 1 (spell:9950)<br/><b>10 (item:3860)<br/><b>6 (item:4338)<br/><b>1 (item:6037)<br/><b>1 (item:7966)| |L|7927|

T The Mithril Kid |QID|2773| |N|(npc:7804) in (map:1446) (51.42,28.75)<br/><b>You will learn (spell:9972) automatically.| |Z|1446| |NPC|7804|

A Did You Lose This? |QID|3321| |N|(npc:7804) in (map:1446) (51.42,28.75)| |Z|1446| |NPC|7804|
C Did You Lose This? |QID|3321| |N|Watch the dialogue (51.42,28.75)| |Z|1446| |NPC|7804|
T Did You Lose This? |QID|3321| |N|(npc:7804) in (map:1446) (51.42,28.75)| |Z|1446| |NPC|7804|

N 108 (item:3860) |QID|5301| |N|Collect 108 (item:3860)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction house| |L|3860 108|
N 18 (item:6037) |QID|5301| |N|Collect 18 (item:6037)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction house| |L|6037 18|
N 2 (item:7909) |QID|5301| |N|Collect 2 (item:7909)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction house| |L|7909 2|
N 28 (item:7912) |QID|5301| |N|Collect 28 (item:7912)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction house| |L|7912 28|
N 4 (item:7971) |QID|5301| |N|Collect 4 (item:7971)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction house| |L|7971 4|
N 8 (item:4304) |QID|5301| |N|Collect 8 (item:4304)<br/><b>You can gather these with Skinning profession, otherwise purchase from the Auction house| |L|4304 8|

N 7 (spell:9920) |BL| |QID|5301| |N|Create 7 (spell:9920) <br/><b>28 (item:7912)| |L|7966 7|
N 4 (spell:9980) |BL| |QID|5301.1| |N|Create 4 (spell:9980)<br/><b>64 (item:3860)<br/><b>8 (item:6037)<br/><b>4 (item:7971)<br/><b>4 (item:7966)| |L|7937 4|
N 2 (spell:9979) |BL| |QID|5301.2| |N|Create 2 (spell:9979)<br/><b>28 (item:3860)<br/><b>4 (item:6037)<br/><b>8 (item:4304)<br/><b>2 (item:7966) <br/><b>2 (item:7909)| |L|7936 2|
N 1 (spell:9972) |BL| |QID|5301.3| |N|Create 1 (spell:9972)<br/><b>16 (item:3860)<br/><b>6 (item:6037)<br/><b>1 (item:7077)<br/><b>1 (item:7966)| |L|7935|

T The Art of the Armorsmith |QID|5301| |N|(npc:11177) in (map:1454) (79.81,24.05)| |Z|1454| |NPC|11177|

N Guide Complete

]]
end, {description = [[This guide will walk you through completing the Armorsmith questline for the Blacksmithing profession.]]})
    end
    
    function Guide:Unload()
    end
end