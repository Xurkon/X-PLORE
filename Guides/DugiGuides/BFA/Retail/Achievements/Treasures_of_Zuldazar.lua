local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Treasures_of_Zuldazar")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Exploration|r"}, "Treasures of Zuldazar", nil, nil, nil, "A", nil, function()
return [[

N Read |AID|12851| |N|This guide covers the treasure locations throughout (map:862), and can be used with the Sticky Frame.<br/><br/>Tick this step|
N Switch Guide |QID|47258| |N|You will need to complete (guide:"862(10-50)#862(10-50)#862(10-50)") guide first.<br/>When you have completed the (map:862) guide, switch back to this guide.| |FAC|Horde|
N Switch Guide |QID|51968| |N|You will need to complete (guide:"War Campaign (10-50)") until (qid:51968) quest.<br/>When you have completed the (qid:51968) quest, switch back to this guide.| |FAC|Alliance|

- Offerings of the Chosen
R The Sliver |AID|12851| |N|Travel to {The Sliver} (53.12, 19.29)| |Z|1165| |FAC|Horde| |AC|1|
N Go Up Stairs and Enter the Building |AID|12851| |N|Go up the stairs and enter the building (51.78, 19.01)(50.11, 21.26)(48.79, 21.87)(47.34, 23.28)(46.39, 22.52)(42.56, 22.52)(42.15, 20.80)(41.39, 19.47)(41.35, 17.96)(40.81, 11.50)| |REACH| |Z|1165| |FAC|Horde| |AC|1|
N Go Up Stairs |AID|12851| |N|Go up stairs and exit the building (37.87, 26.53)(46.36, 39.60)(38.04, 27.40)(44.76,16.53)| |REACH| |Z|1167| |FAC|Horde| |AC|1|
N Exit the Building |AID|12851| |N|Exit the building (44.13, 35.40)(63.87, 65.60)(78.22, 86.13)| |REACH| |Z|1166| |FAC|Horde| |AC|1|
N Offerings of the Chosen |AID|12851| |N|Open the Offerings of the Chosen in {Zanchul} (45.38, 13.15)(42.59, 13.40)(40.84, 10.73)(38.84,8.02)(38.37, 7.35)| |Z|1165| |FAC|Horde| |AC|1|
R Xibala |AID|12851| |N|Travel to {Xibala} (40.62, 71.47)| |Z|862| |FAC|Alliance| |AC|1|
N Cross the Bridge |AID|12851| |N|Cross the bridge and try to avoid (npc:124040) (41.45, 71.07)(42.74, 68.84)(43.18, 66.56)(44.24, 65.11)(45.47, 61.87)(45.75, 59.75)(47.47, 59.70)(48.41, 59.22)(49.57, 57.34)(52.05, 55.36)(51.92, 53.99)(52.91, 50.68)(51.65, 49.58)(52.33, 46.85)(51.95, 45.63)(52.10, 44.62)(52.67, 43.22)(53.35, 39.53)| |REACH| |Z|862| |NPC|124040| |FAC|Alliance| |AC|1|
N Go Upstairs and Enter the Building |AID|12851| |N|Go upstairs and enter the building (39.51, 25.62)(40.40, 22.69)(42.15, 20.78)(41.39, 19.39)(40.78, 11.53)| |Z|1165| |FAC|Alliance| |AC|1|
N Go up stairs |AID|12851| |N|Go up stairs and Exit Building (46.98, 40.40)(37.64, 26.47)(44.44, 15.47)| |REACH| |Z|1167| |FAC|Alliance| |AC|1|
N Exit the Building |AID|12851| |N|Exit the building (44.62, 36.07)(67.38, 69.87)(78.58, 85.80)| |REACH| |Z|1166| |FAC|Alliance| |AC|1|
N Offerings of the Chosen |AID|12851| |N|Open the Offerings of the Chosen in {Zanchul} (45.15, 13.45)(42.62, 13.48)(40.89, 10.84)(39.41, 8.66)(38.33, 7.23)| |Z|862| |FAC|Alliance| |AC|1|

- Spoils of Pandaria
R Isle of Fangs |AID|12851| |N|Travel to {Isle of Fangs} (54.43, 87.01)| |Z|862| |FAC|Horde| |AC|3|
R Xibala |AID|12851| |N|Travel to {Xibala} (40.62, 71.47)| |Z|862| |FAC|Alliance| |AC|3|
R Isle of Fangs |AID|12851| |N|Use water mount and travel to {Isle of Fangs} (54.43, 87.01)| |Z|862| |FAC|Alliance| |AC|3|
N Enter the Ship |AID|12851| |N|Enter the ship (53.73, 86.66)(52.93, 87.05)(52.26, 86.95)(52.02, 87.05)(51.85, 87.10)| |REACH| |Z|862| |AC|3|
N Go Down Stairs |AID|12851| |N|Go down stairs (29.69, 40.81)(68.94, 65.66)| |REACH| |Z|1176| |AC|3|
N Spoils of Pandaria |AID|12851| |N|Open the Spoils of Pandaria in {Isle of Fangs} (70.94, 60.41)(24.31, 25.34)| |Z|1177| |AC|3|

- Warlord's Cache
R Warport Rastari |AID|12851| |N|Travel to {Warport Rastari} (48.22, 60.30)| |Z|862| |FAC|Horde| |AC|5|
N Warlord's Cache |AID|12851| |N|Open the Warlord's Cache in {Warport Rastari} (47.85, 60.76)(47.91, 62.46)(48.68, 62.77)(48.91, 64.20)(49.47, 64.49)(50.17, 64.57)(50.09, 65.09)(49.91, 65.08)(49.87, 65.36)(49.55, 65.35)| |Z|862| |FAC|Horde| |AC|5|
 |AC|5|
R Xibala |AID|12851| |N|Travel to {Xibala} (40.62, 71.47)| |Z|862| |FAC|Alliance| |AC|5|
N Warlord's Cache |AID|12851| |N|Open the Warlord's Cache in {Warport Rastari} (41.09, 71.12)(42.21, 70.07)(42.76, 68.76)(43.80, 65.58)(44.72, 63.69)(46.17, 63.73)(47.13, 62.83)(48.67, 62.72)(48.96, 64.30)(49.67, 64.48)(50.16, 64.60)(50.07, 65.10)(49.91, 65.09)(49.87, 65.36)(49.53, 65.35)| |Z|862| |FAC|Alliance| |AC|5|

- Da White Shark's Bounty
R Port of Zandalar |AID|12851| |N|Travel to {Port of Zandalar} (52.09, 89.94)| |REACH| |Z|1165| |FAC|Horde| |AC|7|
N Da White Shark's Bounty |AID|12851| |N|Wait until (npc:133208) lets the Blood Elf go and then Kill (npc:133208)<br/>Open the Da White Shark's Bounty in {Grand Bazaar} (53.40, 88.70)(56.28, 88.70)(59.08, 88.77)| |Z|1165| |FAC|Horde| |AC|7|
R Seekers' Outpost |AID|12851| |N|Travel to {Seekers' Outpost} (70.45, 65.27)| |Z|862| |FAC|Alliance| |AC|7|
N Head to The Steamway |AID|12851| |N|Head to {The Steamway} (69.72, 65.81)(69.07, 67.49)(67.17, 69.84)(66.06, 69.50)(64.85, 68.76)(63.79, 69.51)(62.41, 68.01)(62.89, 65.99)(63.17, 64.56)(62.90, 63.52)(61.98, 62.97)(61.82, 60.05)| |REACH| |Z|862| |FAC|Alliance| |AC|7|
N Da White Shark's Bounty |AID|12851| |N|Kill (npc:133208) and then open the Da White Shark's Bounty in {Grand Bazaar} (57.37, 92.71)(56.96, 90.82)(58.72, 90.70)(59.19, 88.84)| |Z|1165| |FAC|Alliance| |AC|7|

- Cache of Secrets
R The Sliver |AID|12851| |N|Travel to {The Sliver} (53.12, 19.29)| |Z|1165| |FAC|Horde| |AC|9|
N Cache of Secrets |AID|12851| |N|Open the Cache of Secrets in {Hall of Golems} (52.24, 19.75)(50.63, 23.14)(48.47, 25.18)(45.62, 26.63)(44.81, 26.80)| |Z|1165| |FAC|Horde| |AC|9|
R Scaletrader Post |AID|12851| |N|Travel to {Scaletrader Post} (70.78, 29.60)| |Z|862| |FAC|Alliance| |AC|9|
N Head to The Silver |AID|12851| |N|Head to {The Silver} and watchout from the Horde guards (70.31, 29.93)(70.41, 32.01)(71.98, 34.39)(71.15, 36.31)(70.30, 36.39)(69.19, 37.34)(68.44, 38.93)(68.69, 40.53)(65.99, 40.35)(65.12, 37.86)(63.79, 35.15)| |REACH| |Z|862| |FAC|Alliance| |AC|9|
N Cache of Secrets |AID|12851| |N|Open the Cache of Secrets in {Hall of Golems} (59.21, 1.56)(58.19, 11.64)(57.87, 22.58)(54.89, 25.28)(51.13, 21.68)(46.23, 26.54)(44.66, 26.86)| |Z|1165| |FAC|Alliance| |AC|9|

- Witch Doctor's Hoard
R Nesingwary's Gameland |AID|12851| |N|Travel to {Nesingwary's Gameland} (66.23, 17.68)| |REACH| |Z|862| |AC|2|
N Witch Doctor's Hoard |AID|12851| |N|Open the Witch Doctor's Hoard in {Rootway} (66.65, 18.23)(67.72, 18.66)(68.14, 20.51)(67.73, 21.58)(66.57, 21.09)(65.57, 20.84)(65.63, 21.59)(65.20, 21.92)(64.75, 21.69)| |Z|862| |AC|2|

- Gift of the Brokenhearted
R Garden of the Loa |AID|12851| |N|Travel to {Garden of the Loa} (49.71, 26.29)| |Z|862| |FAC|Horde| |AC|4|
N Gift of the Brokenhearted |AID|12851| |N|Click on the Incense and then open the Gift of the Brokenhearted in {Shrine of Pa'ku} (49.93, 27.04)(51.02, 27.46)(51.71, 26.96)(51.48, 26.67)| |Z|862| |FAC|Horde| |AC|4|
R Nesingwary's Gameland |AID|12851| |N|Travel to {Nesingwary's Gameland} (66.23, 17.68)| |REACH| |Z|862| |FAC|Alliance| |AC|4|
N Gift of the Brokenhearted |AID|12851| |N|Watch out for Horde guards. Click on the Incense and then open the Gift of the Brokenhearted in {Shrine of Pa'ku} (66.98, 18.29)(67.78, 18.76)(68.18, 20.20)(67.79, 21.57)(67.18, 21.32)(65.60, 20.86)(63.80, 20.01)(62.03, 19.05)(61.19, 20.66)(60.94, 23.79)(58.50, 23.08)(58.93, 24.98)(57.30, 26.10)(55.79, 26.97)(54.18, 28.15)(54.36, 26.59)(54.27, 24.98)(53.54, 23.64)(51.81, 23.75)(51.05, 25.07)(49.88, 25.70)(49.86, 26.99)(50.90, 27.48)(51.67, 27.12)(51.46, 26.64)| |Z|862| |FAC|Alliance| |AC|4|

- Dazar's Forgotten Chest
R Atal'dazar |AID|12851| |N|Travel to {Atal'dazar} (46.13, 35.78)| |REACH| |Z|862| |FAC|Horde| |AC|6|
N Dazar's Forgotten Chest |AID|12851| |N|Open the Davar's Forgotten Chest in {Atal'Dazar} (45.98, 36.07)(45.99, 38.44)(44.76, 38.00)(43.92, 39.03)(43.99, 37.18)(44.01, 38.40)(44.01, 35.86)(43.70, 36.74)(42.73, 35.90)(41.90, 35.49)(41.20, 33.90)(40.94, 33.14)(40.49, 32.67)(39.88, 32.87)(39.23, 33.99)(38.82, 34.41)| |Z|862| |FAC|Horde| |AC|6|
N Dazar's Forgotten Chest |AID|12851| |N|Open the Davar's Forgotten Chest in {Atal'Dazar} (49.36, 26.52)(48.22, 26.79)(47.07, 26.40)(46.61, 27.83)(46.62, 29.47)(46.63, 31.74)(47.64, 33.74)(49.09, 35.44)(49.35, 36.70)(49.65, 38.24)(49.40, 38.69)(48.88, 38.75)(48.79, 39.68)(48.22, 39.56)(48.56, 37.51)(47.81, 35.87)(46.85, 35.32)(45.51, 34.17)(45.98, 36.07)(45.99, 38.44)(44.76, 38.00)(43.92, 39.03)(43.99, 37.18)(44.01, 38.40)(44.01, 35.86)(43.70, 36.74)(42.73, 35.90)(41.90, 35.49)(41.20, 33.90)(40.94, 33.14)(40.49, 32.67)(39.88, 32.87)(39.23, 33.99)(38.82, 34.41)| |Z|862| |FAC|Alliance| |AC|6|

- The Exile's Lament
R Nesingwary's Gameland |AID|12851| |N|Travel to {Nesingwary's Gameland} (66.23, 17.68)| |REACH| |Z|862| |AC|8|
N The Exile's Lament |AID|12851| |N|Open The Exile's Lament in {The Exile's Hideaway} (66.72, 18.25)(67.87, 18.82)(69.38, 18.56)(71.07, 17.73)(71.55, 17.16)(71.92, 17.00)(71.86, 16.77)| |Z|862| |AC|8|

- Riches of Tor'nowa
R Temple of the Prophet |AID|12851| |N|Travel to {Temple of the Prophet} (49.75, 44.52)| |Z|862| |FAC|Horde| |AC|10|
N Riches of Tor'nowa |AID|12851| |N|Open the Riches of Tor'nowa in {Village in the Vines} (49.21, 44.70)(49.93, 45.43)(50.48, 46.39)(50.89, 44.69)(52.20, 43.94)(51.95, 45.76)(52.48, 46.93)(52.82, 47.11)(52.97, 47.12)(52.97, 47.22)| |Z|862| |FAC|Horde| |AC|10|
R Xibala |AID|12851| |N|Travel to {Xibala} (40.62, 71.47)| |Z|862| |FAC|Alliance| |AC|10|
N Riches of Tor'nowa |AID|12851| |N|Watch out from (npc:124040)<br/>Open the Riches of Tor'nowa in {Village in the Vines} (41.18, 71.13)(42.26, 70.00)(42.78, 68.74)(43.31, 66.13)(44.57, 64.30)(45.49, 61.76)(45.53, 59.99)(46.10, 59.73)(47.48, 59.70)(49.16, 57.79)(51.01, 56.18)(52.61, 54.97)(51.81, 53.78)(52.77, 51.30)(52.78, 49.49)(51.93, 49.61)(51.68, 47.86)(52.31, 46.85)(52.83, 47.11)(53.01, 47.10)(52.97, 47.23)| |Z|862| |NPC|124040| |FAC|Alliance| |AC|10|

N Guide Complete |N|You earned the (aid:12851) achievement.|

]]
end, {description = [[This guide will walk you through completing the (aid:12851) achievement]]}) end

    function Guide:Unload()
    end
end