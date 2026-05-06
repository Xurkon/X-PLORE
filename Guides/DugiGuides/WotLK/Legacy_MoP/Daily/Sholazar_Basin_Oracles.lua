local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dailies_Horde_En_Sholazar_Basin_Oracles")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("Northrend Zone Dailies", "119(77+ The Oracles Dailies)", nil, "Horde", nil, "D", nil, function()
return [[

R Rainspeaker Canopy |N|Fly to Rainspeaker Canopy (54, 55) in Sholazar Basin|

N Accept 3 Quests at Rainspeaker Canopy |N|Accept 3 Quests BEFORE Ticking this step (53.3, 56.6)|
N Get a Companion.. |N|Get a companion from High-Oracle Soo-say (54.5, 56.4) anyone will do| |NPC|28027|
A A Cleansing Song |O| |N|Oracle Soo-nee (53.3, 56.6)| |QID|12735| |D| |NPC|29006|
A Song of Fecundity |O| |N|Oracle Soo-nee (53.3, 56.6)| |QID|12737| |D| |NPC|29006|
A Song of Reflection |O| |N|Oracle Soo-nee (53.3, 56.6)| |QID|12736| |D| |NPC|29006|
A Song of Wind and Water |O| |N|Oracle Soo-nee (53.3, 56.6)| |QID|12726| |D| |NPC|29006|
A Appeasing the Great Rain Stone |O| |N|High-Oracle Soo-say (54.5, 56.4)| |QID|12704| |D| |NPC|28027|
A Mastery of the Crystals |O| |N|Oracle Soo-dow (54.2, 53.9)| |QID|12761| |D| |NPC|29149|
A Power of the Great Ones |O| |N|Oracle Soo-dow (54.2, 53.9)| |QID|12762| |D| |NPC|29149|
A Will of the Titans |O| |N|Oracle Soo-dow (54.2, 53.9)| |QID|12705| |D| |NPC|29149|

C Appeasing the Great Rain Stone |O| |N|Look for shiny areas of dirt, they don't look like loot sparkles, but rather singular white gleams that pulse in and out (54.0, 50.0) and Lafoo will dig up the (item:38575)| |QID|12704| |D| |OBJ|7943, 7841, 7944, 7942, 2614, 327|
C A Cleansing Song |O| |N|Use the (item:39572) at these locations to spawn and kill the NPCs (43, 42) - Spirit of Atha, (46, 74) - Spirit of Koosu, (49, 63) - Spirit of Ha-Khalan| |U|39572| |QID|12735| |D| |NPC|29033, 29018, 29034|
C Power of the Great Ones |O| |N|Charge the (item:39747) at (66, 59) then use it to help you kill 30 Frenzyheart wolvars at (25, 80)| |QID|12762| |D| |NPC|28079|
C Song of Fecundity |O| |N|Play the (item:39599) on the piles of dirt around this location (24.4, 35.3)| |U|39599| |QID|12737| |D| |OBJ|4951|
C Song of Reflection |O| |N|Fly to the tops of the four intact pillars and activate the (item:39598) near the crystals in the center, The Glimmering Pillar: (49.6, 37.4) The Suntouched Pillar: (33.3, 52.3) The Mosslight Pillar: (36.4, 75.3) The Skyreach Pillar: (53.6, 79.4)| |U|39598| |QID|12736| |D|
C Song of Wind and Water |O| |N|Go to (25, 35) and use the (item:39571) this will transform you to Haiphoon. Kill Storm Revenants while in Water Form and kill Aqueous Spirit while in Air Form| |U|39571| |QID|12726| |D| |NPC|28858, 28862|
C Mastery of the Crystals |O| |N|Collect the [Sparktouched Crystal Defenses] from the chest at (33, 75) and use the gems to kill the Frenzyheart wolvars at (24.9, 81.8)| |QID|12761| |D| |NPC|28079| |OBJ|2450|
C Will of the Titans |O| |N|Kill the Frenzyheart wolvars at (24, 80) until you get a (item:39266) then go to (33, 75) to charge it then you can come back and use it to help you kill the Wolvars| |QID|12705| |D| |NPC|28079|

T Mastery of the Crystals |O| |N|Lightningcaller Soo-met (33.5, 74.8)| |QID|12761| |D| |NPC|28107|
T Power of the Great Ones |O| |N|Lightningcaller Soo-met (33.5, 74.8)| |QID|12762| |D| |NPC|28107|
T Will of the Titans |O| |N|Lightningcaller Soo-met (33.5, 74.8)| |QID|12705| |D| |NPC|28107|
T A Cleansing Song |O| |N|Oracle Soo-nee (53.3, 56.6)| |QID|12735| |D| |NPC|29006|
T Song of Fecundity |O| |N|Oracle Soo-nee (53.3, 56.6)| |QID|12737| |D| |NPC|29006|
T Song of Reflection |O| |N|Oracle Soo-nee (53.3, 56.6)| |QID|12736| |D| |NPC|29006|
T Song of Wind and Water |O| |N|Oracle Soo-nee (53.3, 56.6)| |QID|12726| |D| |NPC|29006|
T Appeasing the Great Rain Stone |O| |N|High-Oracle Soo-say (54.5, 56.4)| |QID|12704| |D| |NPC|28027|

N Guide Complete |N|Tick to continue to the next guide| 
]]
end)
	end
	
	function Guide:Unload()
	end
end