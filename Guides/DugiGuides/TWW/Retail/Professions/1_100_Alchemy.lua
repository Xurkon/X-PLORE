local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_TWW_1_100_Alchemy")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200The War Within Leveling|r", "Khaz Algar Alchemy (1-100)", nil, nil, nil, "P", nil, function()
return [[

N 1-50 Materials |N|Approximate bill of materials:<br/><b>84 (item:210797)<br/><b>72 (item:210809)<br/><b>50 Additional Herbs of your choice<br/><br/>You can collect them using Herbalism guide or purchase from the auction house, Tick to continue| 
N Train Khaz Algar Alchemy |N|Speak to (npc:219092) and train Khaz Algar Alchemy and for recipes as you level up (47.10, 70.48)| |Z|2339| |P|1898 1| |NPC|219092|
B (item:211806) |N|speak to (npc:219091) and buy (item:211806) (47.33, 70.76)| |Z|2339| |L|211806| |P|1898 35|
N 10 (spell:430590) |N|Craft 10 (spell:430590)<br/><b>50 (item:210797)| |AL| |P|1898 35|
N 4 (item:210815) |N|Craft 4 (item:210815)<br/><b>Use (spell:427214) on your Healing Potions to gain (item:210815), reach level| |L|210815 4| |P|1898 35| |AL| 
N 12 (spell:462122) |N|Craft 12 (spell:462122)<br/><b>24 (item:210796)<br/><b>72 (item:210809)<br/><br/>You should reach around level 35 Alchemy| |P|1898 35| |AL| 
M Reach Skill Level 100 |N|From this point, you need to learn recipes from (spell:427174)<br/><b> Craft whichever Yellow or Orange recipe you have that is cheap<br/><b> Once you are out of yellow or orange recipes, use (spell:430345) to find a Flask recipe<br/><b> Flasks get you to max skill| |P|1898 100|
N Guide Complete 

]]
end) end

    function Guide:Unload()
    end
end
