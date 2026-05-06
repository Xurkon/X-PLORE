local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Shadowlands_En_1_150_Herbalism")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Shadowlands Leveling|r", "Shadowlands Herbalism (1-150)", nil, nil, nil, "P", nil, function()
return [[

N Level 50 Required |N|You will need to be level 50 to use these guides| |PL|50|
N Train (spell:300932) |N|Speak to (npc:156686) and Train (spell:300932) (40.24,38.24)| |Z|1670| |P|1441 1| |NPC|156686|

N 1-150 (map:1533) |HE| |N|Click herbs as you follow the path around this area<br/><b>Track then on your minimap with "Find Herbs" (55.76,52.18) (56.37,50.66) (58.19,49.85) (57.78,45.05) (56.63,42.52) (55.64,39.59) (54.54,37.01) (52.41,36.67) (51.22,34.53) (52.02,31.33) (51.75,29.16) (50.55,28.03) (49.98,29.63) (50.16,25.77) (49.12,24.12) (48.83,22.06) (48.47,18.71) (48.47,18.71) (49.28,18.26) (51.48,16.92) (53.88,14.72) (53.05,13.19) (51.89,12.89) (53.55,11.14) (54.21,9.93) (54.85,10.31) (56.00,11.44) (56.73,11.35) (58.27,13.14) (56.33,15.19) (55.38,15.72) (54.30,17.56) (54.79,20.14) (55.19,22.23) (55.56,24.22) (55.10,26.13) (54.38,28.12) (55.63,31.15) (56.81,33.39) (57.09,35.98) (58.47,36.94) (60.84,35.65) (62.19,34.95) (61.92,32.24) (63.91,32.28) (65.06,30.61) (65.60,33.10) (65.44,35.35) (65.72,39.31) (67.99,39.77) (69.21,38.68) (70.35,39.31) (71.09,40.48) (70.07,43.56) (69.06,45.07) (67.76,46.09) (66.15,45.81) (65.35,46.11) (63.70,44.87) (63.04,45.97) (63.07,43.75) (61.41,43.73) (60.58,45.51) (61.13,47.5) (61.43,50.62) (61.24,52.27) (59.92,53.74) (59.24,54.60) (57.93,55.23)| |P|1441 150| |Z|1533| |LOOP|

N Guide Complete |N|You Reached 150 Shadowlands Herbalism Skill|

]]
end) end

 function Guide:Unload()
 end
end
