--Allow atomatic addition of key/table combos
setmetatable(DugisWorldMapTrackingPoints,
{
	__index = function(t,i)
		t[i] = {}
		return t[i]
	end,
})

local tappend = DugisGuideViewer.TableAppend
local points = DugisWorldMapTrackingPoints

DugisGuideViewer.ExtendedTrackingPointsExists = true

tappend(points.Alliance["Westfall:0"],
	"A:60.80,18.60:6603:2:3 - Level 3 Pets",	-- Taming Eastern Kingdoms/Old Macdonald
	"A:56.50,30.20:1244:1",	--"Well Read"
	"A:52.60,53.10:1244:30",	--"Well Read"
	"A:56.90,47.50:1244:34")	--"Well Read"

tappend(points.Alliance["Darnassus:0"],
	"P:32.80,41.00:452:Level 1-2",	-- Red-Tailed Chipmunk/Battle Pet
	"P:33.60,82.00:452:Level 1-2",	-- Red-Tailed Chipmunk/Battle Pet
	"P:40.80,36.60:452:Level 1-2",	-- Red-Tailed Chipmunk/Battle Pet
	"P:44.00,18.40:452:Level 1-2",	-- Red-Tailed Chipmunk/Battle Pet
	"P:49.80,25.20:452:Level 1-2",	-- Red-Tailed Chipmunk/Battle Pet
	"P:62.00,38.80:452:Level 1-2",	-- Red-Tailed Chipmunk/Battle Pet
	"P:62.80,47.80:452:Level 1-2",	-- Red-Tailed Chipmunk/Battle Pet
	"P:68.60,57.80:452:Level 1-2",	-- Red-Tailed Chipmunk/Battle Pet
	"P:37.60,49.00:479:Level 1-2",	-- Elfin Rabbit/Battle Pet
	"P:45.80,35.60:479:Level 1-2",	-- Elfin Rabbit/Battle Pet
	"P:62.80,47.20:479:Level 1-2",	-- Elfin Rabbit/Battle Pet
	"P:66.80,34.60:479:Level 1-2",	-- Elfin Rabbit/Battle Pet
	"P:68.80,56.80:479:Level 1-2",	-- Elfin Rabbit/Battle Pet
	"A:44.00,35.40:1832::Buy Foods and Drinks from Dendrythis",	-- Tastes Like Chicken
	"A:64.00,52.80:1832::Buy Foods and Drinks from Fyrenna",	-- Tastes Like Chicken
	"A:48.60,14.80:1832::Buy Foods and Drinks from Gwen Armstead",	-- Tastes Like Chicken
	"A:62.40,32.80:1832::Buy Foods and Drinks from Innkeeper Saelienne",	-- Tastes Like Chicken
	"A:58.60,64.80:1832::Buy Foods and Drinks from Jaeana",	-- Tastes Like Chicken
	"A:44.00,35.40:1833::Buy Foods and Drinks from Dendrythis",	-- It's Happy Hour Somewhere
	"A:64.00,52.80:1833::Buy Foods and Drinks from Fyrenna",	-- It's Happy Hour Somewhere
	"A:48.60,14.80:1833::Buy Foods and Drinks from Gwen Armstead",	-- It's Happy Hour Somewhere
	"A:62.40,32.80:1833::Buy Foods and Drinks from Innkeeper Saelienne",	-- It's Happy Hour Somewhere
	"A:58.60,64.80:1833::Buy Foods and Drinks from Jaeana",	-- It's Happy Hour Somewhere
	"A:48.60,14.80:5753:24:Gwen Armstead",	-- Cataclysmically Delicious
	"A:48.60,14.80:5753:29:Gwen Armstead",	-- Cataclysmically Delicious
	"A:62.40,32.80:5753:18:Innkeeper Saelienne",	-- Cataclysmically Delicious
	"A:62.40,32.80:5753:40:Innkeeper Saelienne",	-- Cataclysmically Delicious
	"A:48.80,61.20:5753:15:Talaelar",	-- Cataclysmically Delicious
	"A:48.80,61.20:5753:38:Talaelar",	-- Cataclysmically Delicious
	"A:48.60,14.80:5754:2:Gwen Armstead",	-- Drown Your Sorrows
	"A:48.60,14.80:5754:6:Gwen Armstead",	-- Drown Your Sorrows
	"A:48.60,14.80:5754:9:Gwen Armstead",	-- Drown Your Sorrows
	"A:62.40,32.80:5754:2:Innkeeper Saelienne",	-- Drown Your Sorrows
	"A:62.40,32.80:5754:6:Innkeeper Saelienne",	-- Drown Your Sorrows
	"A:62.40,32.80:5754:9:Innkeeper Saelienne",	-- Drown Your Sorrows
	"A:54.02,31.00:1244:2",	--"Well Read"
	"A:39.70,39.80:1244:9",	--"Well Read"
	"A:50.00,33.50:1244:18",	--"Well Read"
	"A:62.00,74.60:1244:23",	--"Well Read"
	"A:54.30,38.60:1244:33",	--"Well Read"
	"A:49.80,33.00:1244:38",	--"Well Read"
	"A:55.00,24.70:1244:39",	--"Well Read"
	"A:40.00,34.00:1206:7")	--"To All The Squirrels I've Loved Before, Fawn"

tappend(points.Alliance["DunMorogh:0"],
	"A:54.70,50.30:1244:21",	--"Well Read"
	"A:36.00,69.00:1206:12")	--"To All The Squirrels I've Loved Before, Rabbit"

tappend(points.Alliance["Ashenvale:0"],
	"A:34.80,49.70:1244:6",	--"Well Read"
	"A:34.50,49.50:1244:19",	--"Well Read"
	"A:34.50,50.00:1244:20",	--"Well Read"
	"A:34.80,49.80:1244:34")	--"Well Read"

tappend(points.Alliance["SouthernBarrens:0"],
	"A:50.00,41.00:1206:8",	--"To All The Squirrels I've Loved Before, Small Frog"
	"A:43.00,81.00:2556:4",	--"Pest Control, Adder"
	"A:45.00,44.00:2556:4",	--"Pest Control, Adder"
	"A:65.50,46.70:1244:32",	--"Well Read"
	"A:50.10,86.60:1244:41",	--"Well Read"
	"A:50.50,86.90:1244:11",	--"Well Read"
	"A:65.50,46.70:1244:14")	--"Well Read"

tappend(points.Alliance["Redridge:0"],
	"A:33.20,52.60:6603:3:3 - Level 5 Pets",	-- Taming Eastern Kingdoms/Lindsay
	"A:26.20,42.10:1244:25",	--"Well Read"
	"A:28.90,41.20:1244:41")	--"Well Read"

tappend(points.Alliance["LochModan:0"],
	"A:35.60,49.00:1244:11",	--"Well Read"
	"A:37.20,47.00:1244:30")	--"Well Read"

tappend(points.Alliance["BlastedLands:0"],
	"A:60.10,13.60:1244:2",	--"Well Read"
	"A:60.90,20.20:1244:5",	--"Well Read"
	"A:62.50,16.10:1244:25")	--"Well Read"

tappend(points.Alliance["Ironforge:0"],
	--battle pets
	"P:28.60,28.60:404:Level 1-2",	-- Long-tailed Mole/Battle Pet
	"P:39.60,79.20:404:Level 1-2",	-- Long-tailed Mole/Battle Pet
	"P:39.80,45.20:404:Level 1-2",	-- Long-tailed Mole/Battle Pet
	"P:55.20,55.00:404:Level 1-2",	-- Long-tailed Mole/Battle Pet
	"P:59.40,29.20:404:Level 1-2",	-- Long-tailed Mole/Battle Pet
	"P:60.20,19.80:404:Level 1-2",	-- Long-tailed Mole/Battle Pet
	"P:72.40,16.20:404:Level 1-2",	-- Long-tailed Mole/Battle Pet
	"P:77.00,25.60:404:Level 1-2",	-- Long-tailed Mole/Battle Pet
	--achievements
	"A:73.00,75.20:1832::Buy Foods and Drinks from Edris Barleybeard",	-- Tastes Like Chicken
	"A:19.60,52.60:1832::Buy Foods and Drinks from Gwenna Firebrew",	-- Tastes Like Chicken
	"A:18.60,51.60:1832::Buy Foods and Drinks from Innkeeper Firebrew",	-- Tastes Like Chicken
	"A:73.00,75.20:1833::Buy Foods and Drinks from Edris Barleybeard",	-- It's Happy Hour Somewhere
	"A:19.60,52.60:1833::Buy Foods and Drinks from Gwenna Firebrew",	-- It's Happy Hour Somewhere
	"A:18.60,51.60:1833::Buy Foods and Drinks from Innkeeper Firebrew",	-- It's Happy Hour Somewhere
	"A:33.60,20.80:5753:18:Bimble Longberry",	-- Cataclysmically Delicious
	"A:33.60,20.80:5753:18:Bimble Longberry",	-- Cataclysmically Delicious
	"A:33.60,20.80:5753:40:Bimble Longberry",	-- Cataclysmically Delicious
	"A:33.60,20.80:5753:40:Bimble Longberry",	-- Cataclysmically Delicious
	"A:18.60,51.60:5753:24:Innkeeper Firebrew",	-- Cataclysmically Delicious
	"A:18.60,51.60:5753:29:Innkeeper Firebrew",	-- Cataclysmically Delicious
	"A:30.80,66.80:5753:7:Myra Tyrngaarde",	-- Cataclysmically Delicious
	"A:30.80,66.80:5753:28:Myra Tyrngaarde",	-- Cataclysmically Delicious
	"A:18.60,51.60:5754:2:Innkeeper Firebrew",	-- Drown Your Sorrows
	"A:18.60,51.60:5754:6:Innkeeper Firebrew",	-- Drown Your Sorrows
	"A:18.60,51.60:5754:9:Innkeeper Firebrew",	-- Drown Your Sorrows
	"A:77.00,09.50:1244:3",	--"Well Read"
	"A:76.10,11.00:1244:6",	--"Well Read"
	"A:76.80,12.30:1244:7",	--"Well Read"
	"A:75.10,09.20:1244:11",	--"Well Read"
	"A:76.80,12.30:1244:18",	--"Well Read"
	"A:77.00,12.00:1244:21",	--"Well Read"
	"A:76.50,10.60:1244:22",	--"Well Read"
	"A:76.50,10.60:1244:33",	--"Well Read"
	"A:75.10,09.20:1244:41")	--"Well Read"

tappend(points.Alliance["StormwindCity:0"],
	--battle pets
	"P:44.60,81.80:378:Level 1-2",	-- Rabbit/Battle Pet
	"P:53.00,15.60:378:Level 1-2",	-- Rabbit/Battle Pet
	"P:55.60,05.00:378:Level 1-2",	-- Rabbit/Battle Pet
	"P:59.80,82.20:378:Level 1-2",	-- Rabbit/Battle Pet
	"P:70.60,23.80:378:Level 1-2",	-- Rabbit/Battle Pet
	"P:79.60,09.20:378:Level 1-2",	-- Rabbit/Battle Pet
	"P:79.80,63.40:378:Level 1-2",	-- Rabbit/Battle Pet
	"P:49.00,21.00:379:Level 1-2",	-- Squirrel/Battle Pet
	"P:49.00,21.00:379:Level 1-2",	-- Squirrel/Battle Pet
	"P:49.00,83.00:379:Level 1-2",	-- Squirrel/Battle Pet
	"P:49.00,83.00:379:Level 1-2",	-- Squirrel/Battle Pet
	"P:72.00,28.00:379:Level 1-2",	-- Squirrel/Battle Pet
	"P:72.00,28.00:379:Level 1-2",	-- Squirrel/Battle Pet
	"P:62.00,69.00:417:Level 1-2",	-- Rat/Battle Pet
	"P:73.00,59.00:417:Level 1-2",	-- Rat/Battle Pet
	"P:50.00,51.80:675:Level 1-2",	-- Stormwind Rat/Battle Pet
	"P:58.60,26.00:675:Level 1-2",	-- Stormwind Rat/Battle Pet
	"P:59.40,41.60:675:Level 1-2",	-- Stormwind Rat/Battle Pet
	"P:61.40,56.00:675:Level 1-2",	-- Stormwind Rat/Battle Pet
	"P:73.60,55.20:675:Level 1-2",	-- Stormwind Rat/Battle Pet
	"P:78.60,63.80:675:Level 1-2",	-- Stormwind Rat/Battle Pet
	--achievements
	"A:66.40,73.60:1832::Buy Foods and Drinks from Ben Trias",	-- Tastes Like Chicken
	"A:65.80,31.60:1832::Buy Foods and Drinks from Colin Field",	-- Tastes Like Chicken
	"A:76.60,53.60:1832::Buy Foods and Drinks from Elly Langston",	-- Tastes Like Chicken
	"A:23.20,36.80:1832::Buy Foods and Drinks from Galley Chief Paul Kubit",	-- Tastes Like Chicken
	"A:60.60,75.00:1832::Buy Foods and Drinks from Innkeeper Allison",	-- Tastes Like Chicken
	"A:76.00,53.40:1832::Buy Foods and Drinks from Maegan Tillman",	-- Tastes Like Chicken
	"A:66.40,73.60:1833::Buy Foods and Drinks from Ben Trias",	-- It's Happy Hour Somewhere
	"A:65.80,31.60:1833::Buy Foods and Drinks from Colin Field",	-- It's Happy Hour Somewhere
	"A:76.60,53.60:1833::Buy Foods and Drinks from Elly Langston",	-- It's Happy Hour Somewhere
	"A:23.20,36.80:1833::Buy Foods and Drinks from Galley Chief Paul Kubit",	-- It's Happy Hour Somewhere
	"A:60.60,75.00:1833::Buy Foods and Drinks from Innkeeper Allison",	-- It's Happy Hour Somewhere
	"A:76.00,53.40:1833::Buy Foods and Drinks from Maegan Tillman",	-- It's Happy Hour Somewhere
	"A:66.40,73.60:5753:19:Elaine Trias",	-- Cataclysmically Delicious
	"A:66.40,73.60:5753:39:Elaine Trias",	-- Cataclysmically Delicious
	"A:60.60,75.00:5753:7:Innkeeper Allison",	-- Cataclysmically Delicious
	"A:60.60,75.00:5753:18:Innkeeper Allison",	-- Cataclysmically Delicious
	"A:60.60,75.00:5753:28:Innkeeper Allison",	-- Cataclysmically Delicious
	"A:60.60,75.00:5753:40:Innkeeper Allison",	-- Cataclysmically Delicious
	"A:76.00,53.40:5753:33:Maegan Tillman",	-- Cataclysmically Delicious
	"A:76.00,53.40:5753:47:Maegan Tillman",	-- Cataclysmically Delicious
	"A:60.60,75.00:5754:2:Innkeeper Allison",	-- Drown Your Sorrows
	"A:60.60,75.00:5754:6:Innkeeper Allison",	-- Drown Your Sorrows
	"A:60.60,75.00:5754:9:Innkeeper Allison",	-- Drown Your Sorrows
	"A:76.00,53.40:5754:2:Maegan Tillman",	-- Drown Your Sorrows
	"A:76.00,53.40:5754:6:Maegan Tillman",	-- Drown Your Sorrows
	"A:76.00,53.40:5754:9:Maegan Tillman",	-- Drown Your Sorrows
	"A:47.00,86.00:1206:12",	--"To All The Squirrels I've Loved Before, Rabbit"
	"A:58.00,27.00:1206:12",	--"To All The Squirrels I've Loved Before, Rabbit"
	"A:49.00,21.00:1206:17",	--"To All The Squirrels I've Loved Before, Squirrel"
	"A:49.00,83.00:1206:17",	--"To All The Squirrels I've Loved Before, Squirrel"
	"A:72.00,28.00:1206:17",	--"To All The Squirrels I've Loved Before, Squirrel"
	"A:85.00,05.00:1206:4",	--"To All The Squirrels I've Loved Before, Cow"
	"A:49.00,21.00:2556:4",	--"Pest Control, Squirrel"
	"A:49.00,83.00:2556:4",	--"Pest Control, Squirrel"
	"A:72.00,28.00:2556:4",	--"Pest Control, Squirrel"
	"A:62.00,69.00:2556:18",	--"Pest Control, Rat"
	"A:73.00,59.00:2556:18",	--"Pest Control, Rat"
	"A:85.70,23.70:1244:1",	--"Well Read"
	"A:85.20,26.10:1244:2",	--"Well Read"
	"A:51.80,74.50:1244:4",	--"Well Read"
	"A:84.60,24.30:1244:5",	--"Well Read"
	"A:84.90,23.60:1244:7",	--"Well Read"
	"A:51.80,74.60:1244:15",	--"Well Read"
	"A:85.20,26.10:1244:21",	--"Well Read"
	"A:86.50,36.00:1244:22",	--"Well Read"
	"A:87.10,35.90:1244:25",	--"Well Read"
	"A:85.20,26.10:1244:27",	--"Well Read"
	"A:84.70,25.90:1244:29",	--"Well Read"
	"A:86.10,25.50:1244:32",	--"Well Read"
	"A:85.50,23.50:1244:38",	--"Well Read"
	"A:85.50,23.50:1244:39",	--"Well Read"
	"A:87.10,35.90:1244:40",	--"Well Read"
	"A:66.60,43.40:1244:41",	--"Well Read"
	"A:61.30,64.90:545",	--"Shave and a Haircut"
	"A:56.60,74.70:5478:7",	--"The Limnologist"
	"A:56.60,74.70:5478:8",	--"The Limnologist"
	"A:56.60,74.70:5478:28")	--"The Limnologist"
	
tappend(points.Alliance["TwilightHighlands:0"],
	"A:56.40,56.80:7525:3:3 - Level 20 Pets",	-- Taming Cataclysm/Goz Banefury
	"A:49.00,37.10:5481:1",	--"Wildhammer Tour of Duty"
	"A:51.20,33.70:5481:2",	--"Wildhammer Tour of Duty"
	"A:46.00,32.50:5481:3:Down in the cellar.",	--"Wildhammer Tour of Duty"
	"A:52.50,28.00:5481:4:Down in the cellar.")	--"Wildhammer Tour of Duty"

tappend(points.Alliance["Elwynn:0"],
	"A:41.60,83.60:6603:1:2 - Level 2 Pets",	-- Taming Eastern Kingdoms/Julia Stevens
	"A:49.50,39.60:1244:7",	--"Well Read"
	"A:43.80,65.80:1244:10",	--"Well Read"
	"A:85.30,69.70:1244:14",	--"Well Read"
	"A:64.60,69.50:1244:17")	--"Well Read"

tappend(points.Alliance["Darkshore:0"],
	"A:52.50,31.80:5453::Kill Telarius Voidstrider and loot [Writings of the Void]")	--"Ghosts in the Dark"

tappend(points.Alliance["Duskwood:0"],
	"A:19.60,43.80:6603:4:3 - Level 7 Pets",	-- Taming Eastern Kingdoms/Eric Davidson
	"A:74.20,45.30:1244:13",	--"Well Read"
	"A:73.70,44.60:1244:15",	--"Well Read"
	"A:72.10,47.90:1244:21",	--"Well Read"
	"A:72.10,46.60:1244:24",	--"Well Read"
	"A:73.70,45.10:1244:26")	--"Well Read"

tappend(points.Alliance["Teldrassil:0"],
	"A:58.00,36.00:1206:12",	--"To All The Squirrels I've Loved Before, Rabbit"
	"A:59.00,35.00:1206:5",	--"To All The Squirrels I've Loved Before, Deer"
	"A:59.00,35.00:1206:5",	--"To All The Squirrels I've Loved Before, Deer"
	"A:56.00,25.00:2556:3")	--"Pest Control, Spider"
	
tappend(points.Alliance["StranglethornJungle:0"],
	"A:46.00,40.40:6603:5:3 - Level 9 Pets")	-- Taming Eastern Kingdoms/Steven Lisbane
	
tappend(points.Alliance["TheCapeOfStranglethorn:0"],
	"A:51.40,73.40:6603:6:3 - Level 11 Pets")	-- Taming Eastern Kingdoms/Bill Buckler

tappend(points.Alliance["Krasarang:0"],
	"R:14.80,57.20:68321",	--Kar Warmaker <Champion of Arms>
	"R:13.20,66.20:68320",	--Ubunti the Shade <Champion of the Shadows>
	"R:10.60,56.80:68322")	--Muerta <Champion of the Light>

tappend(points.Horde["Undercity:0"],
	--battle pets
	"P:67.00,52.00:424:Level 1-2",	-- Roach/Battle Pet
	"P:68.00,36.00:424:Level 1-2",	-- Roach/Battle Pet
	"P:68.00,53.00:450:Level 1-2",	-- Maggot/Battle Pet
	"P:53.40,75.80:454:Level 1-2",	-- Undercity Rat/Battle Pet
	"P:59.20,29.20:454:Level 1-2",	-- Undercity Rat/Battle Pet
	"P:61.60,93.20:454:Level 1-2",	-- Undercity Rat/Battle Pet
	"P:62.80,53.20:454:Level 1-2",	-- Undercity Rat/Battle Pet
	"P:63.20,33.40:454:Level 1-2",	-- Undercity Rat/Battle Pet
	"P:70.40,53.60:454:Level 1-2",	-- Undercity Rat/Battle Pet
	"P:71.40,37.60:454:Level 1-2",	-- Undercity Rat/Battle Pet
	"P:76.60,67.80:454:Level 1-2",	-- Undercity Rat/Battle Pet
	"P:57.20,11.40:458:Level 1-2",	-- Lost of Lordaeron/Battle Pet
	"P:61.80,19.00:458:Level 1-2",	-- Lost of Lordaeron/Battle Pet
	"P:62.20,69.60:458:Level 1-2",	-- Lost of Lordaeron/Battle Pet
	"P:65.60,14.80:458:Level 1-2",	-- Lost of Lordaeron/Battle Pet
	"P:68.00,22.60:458:Level 1-2",	-- Lost of Lordaeron/Battle Pet
	"P:68.60,08.80:458:Level 1-2",	-- Lost of Lordaeron/Battle Pet
	"P:65.40,12.40:626:Level 1-2",	-- Bat/Battle Pet
	--achievements
	"A:63.00,36.60:1832::Buy Foods and Drinks from Chef Audrey",	-- Tastes Like Chicken
	"A:69.20,47.40:1832::Buy Foods and Drinks from Eleanor Rusk",	-- Tastes Like Chicken
	"A:67.80,38.60:1832::Buy Foods and Drinks from Innkeeper Norman",	-- Tastes Like Chicken
	"A:77.60,30.40:1832::Buy Foods and Drinks from Morley Bates",	-- Tastes Like Chicken
	"A:63.00,36.60:1833::Buy Foods and Drinks from Chef Audrey",	-- It's Happy Hour Somewhere
	"A:69.20,47.40:1833::Buy Foods and Drinks from Eleanor Rusk",	-- It's Happy Hour Somewhere
	"A:67.80,38.60:1833::Buy Foods and Drinks from Innkeeper Norman",	-- It's Happy Hour Somewhere
	"A:77.60,30.40:1833::Buy Foods and Drinks from Morley Bates",	-- It's Happy Hour Somewhere
	"A:67.80,38.60:5753:24:Innkeeper Norman",	-- Cataclysmically Delicious
	"A:67.80,38.60:5753:29:Innkeeper Norman",	-- Cataclysmically Delicious
	"A:67.80,38.60:5753:33:Innkeeper Norman",	-- Cataclysmically Delicious
	"A:67.80,38.60:5753:47:Innkeeper Norman",	-- Cataclysmically Delicious
	"A:63.00,36.60:5754:2:Chef Audrey",	-- Drown Your Sorrows
	"A:63.00,36.60:5754:6:Chef Audrey",	-- Drown Your Sorrows
	"A:63.00,36.60:5754:9:Chef Audrey",	-- Drown Your Sorrows
	"A:67.80,38.60:5754:2:Innkeeper Norman",	-- Drown Your Sorrows
	"A:67.80,38.60:5754:6:Innkeeper Norman",	-- Drown Your Sorrows
	"A:67.80,38.60:5754:9:Innkeeper Norman",	-- Drown Your Sorrows
	"A:67.00,52.00:2556:9",	--"Pest Control, Roach"
	"A:68.00,36.00:2556:9",	--"Pest Control, Roach"
	"A:68.00,53.00:2556:13",	--"Pest Control, Maggot"
	"A:67.70,37.70:1244:7",	--"Well Read"
	"A:61.70,58.20:1244:9",	--"Well Read"
	"A:55.90,50.90:1244:10",	--"Well Read"
	"A:55.90,50.90:1244:12",	--"Well Read"
	"A:55.90,50.90:1244:33")	--"Well Read"


tappend(points.Horde["Dalaran:1"],
	"A:67.10,35.90:1244:27")	--"Well Read"

tappend(points.Horde["Mulgore:0"],
	"A:35.00,07.00:1206:21",	--"To All The Squirrels I've Loved Before, Prairie Dog"
	"A:48.00,66.00:1206:9",	--"To All The Squirrels I've Loved Before, Gazelle"
	"A:51.00,17.00:1206:9",	--"To All The Squirrels I've Loved Before, Gazelle"
	"A:32.60,49.50:1244:11",	--"Well Read"
	"A:32.60,49.50:1244:22",	--"Well Read"
	"A:32.60,49.50:1244:41")	--"Well Read"

tappend(points.Horde["SwampOfSorrows:0"],
	"A:49.30,55.50:1244:18",	--"Well Read"
	"A:49.30,55.50:1244:25",	--"Well Read"
	"A:49.30,55.50:1244:32")	--"Well Read"

tappend(points.Horde["SilvermoonCity:0"],
	--achievements
	"A:67.80,73.60:5753:18:Innkeeper Jovia",	-- Cataclysmically Delicious
	"A:67.80,73.60:5753:19:Innkeeper Jovia",	-- Cataclysmically Delicious
	"A:67.80,73.60:5753:24:Innkeeper Jovia",	-- Cataclysmically Delicious
	"A:67.80,73.60:5753:28:Innkeeper Jovia",	-- Cataclysmically Delicious
	"A:67.80,73.60:5753:29:Innkeeper Jovia",	-- Cataclysmically Delicious
	"A:67.80,73.60:5753:39:Innkeeper Jovia",	-- Cataclysmically Delicious
	"A:67.80,73.60:5753:40:Innkeeper Jovia",	-- Cataclysmically Delicious
	"A:79.60,58.60:5753:15:Innkeeper Velandra",	-- Cataclysmically Delicious
	"A:79.60,58.60:5753:38:Innkeeper Velandra",	-- Cataclysmically Delicious
	"A:67.80,73.60:5754:2:Innkeeper Jovia",	-- Drown Your Sorrows
	"A:67.80,73.60:5754:6:Innkeeper Jovia",	-- Drown Your Sorrows
	"A:67.80,73.60:5754:9:Innkeeper Jovia",	-- Drown Your Sorrows
	"A:67.80,73.60:1832::Buy Foods and Drinks from Innkeeper Jovia",	-- Tastes Like Chicken
	"A:79.60,58.60:1832::Buy Foods and Drinks from Innkeeper Velandra",	-- Tastes Like Chicken
	"A:67.80,73.60:1833::Buy Foods and Drinks from Innkeeper Jovia",	-- It's Happy Hour Somewhere
	"A:79.60,58.60:1833::Buy Foods and Drinks from Innkeeper Velandra",	-- It's Happy Hour Somewhere
	"A:67.00,73.80:1244:21",	--"Well Read"
	"A:68.70,64.30:1244:23")	--"Well Read"

tappend(points.Horde["Durotar:0"],
	"A:44.00,28.80:6602:1:2 - Level 2 Pets",	-- Taming Kalimdor/Zunta
	"A:59.60,58.20:1244:18")	--"Well Read"

tappend(points.Horde["Tirisfal:0"],
	"A:60.80,50.50:1244:6",	--"Well Read"
	"A:60.90,52.10:1244:1")	--"Well Read"

tappend(points.Horde["TwilightHighlands:0"],
	"A:51.60,28.60:5482:1",	--"Dragonmaw Tour of Duty"
	"A:46.40,37.20:5482:2",	--"Dragonmaw Tour of Duty"
	"A:45.30,42.90:5482:3",	--"Dragonmaw Tour of Duty"
	"A:51.60,28.60:5482:4",	--"Dragonmaw Tour of Duty"
	"A:46.00,32.50:5482:5:Down in the cellar.",	--"Dragonmaw Tour of Duty"
	"A:52.50,28.00:5482:6:Down in the cellar.")	--"Dragonmaw Tour of Duty"

tappend(points.Horde["Aszhara:0"],
	"A:50.80,74.10:5454::Take the Rocketway to the Northern Rocket Terminus.")	--"Joy Ride"

tappend(points.Horde["Orgrimmar:1"],
	--battle pets
	"P:34.00,73.00:418:Level 1-2",	-- Water Snake/Battle Pet
	"P:35.00,76.00:420:Level 1-2",	-- Toad/Battle Pet
	"P:45.00,49.00:420:Level 1-2",	-- Toad/Battle Pet
	"P:38.80,39.20:466:Level 1-2",	-- Spiny Lizard/Battle Pet
	"P:40.80,67.60:466:Level 1-2",	-- Spiny Lizard/Battle Pet
	"P:42.00,47.60:466:Level 1-2",	-- Spiny Lizard/Battle Pet
	"P:47.60,75.80:466:Level 1-2",	-- Spiny Lizard/Battle Pet
	"P:47.80,81.20:466:Level 1-2",	-- Spiny Lizard/Battle Pet
	"P:53.40,35.60:466:Level 1-2",	-- Spiny Lizard/Battle Pet
	"P:58.00,67.00:466:Level 1-2",	-- Spiny Lizard/Battle Pet
	"P:64.60,56.40:466:Level 1-2",	-- Spiny Lizard/Battle Pet
	"P:66.00,47.80:466:Level 1-2",	-- Spiny Lizard/Battle Pet
	"P:66.40,27.60:466:Level 1-2",	-- Spiny Lizard/Battle Pet
	"P:37.00,88.80:467:Level 1-2",	-- Dung Beetle/Battle Pet
	"P:37.20,40.40:467:Level 1-2",	-- Dung Beetle/Battle Pet
	"P:41.80,63.60:467:Level 1-2",	-- Dung Beetle/Battle Pet
	"P:49.00,77.00:467:Level 1-2",	-- Dung Beetle/Battle Pet
	"P:50.00,84.60:467:Level 1-2",	-- Dung Beetle/Battle Pet
	"P:53.60,57.00:467:Level 1-2",	-- Dung Beetle/Battle Pet
	"P:53.60,76.60:467:Level 1-2",	-- Dung Beetle/Battle Pet
	"P:53.80,34.40:467:Level 1-2",	-- Dung Beetle/Battle Pet
	"P:54.60,83.20:467:Level 1-2",	-- Dung Beetle/Battle Pet
	"P:60.60,36.20:467:Level 1-2",	-- Dung Beetle/Battle Pet
	"P:64.60,17.20:467:Level 1-2",	-- Dung Beetle/Battle Pet
	"P:64.60,17.20:467:Level 1-2",	-- Dung Beetle/Battle Pet
	"P:64.60,56.60:467:Level 1-2",	-- Dung Beetle/Battle Pet
	"P:66.20,27.60:467:Level 1-2",	-- Dung Beetle/Battle Pet
	"P:69.40,55.40:467:Level 1-2",	-- Dung Beetle/Battle Pet
	"P:69.60,14.60:467:Level 1-2",	-- Dung Beetle/Battle Pet
	"P:74.20,50.30:467:Level 1-2",	-- Dung Beetle/Battle Pet
	"P:38.60,87.40:471:Level 1-2",	-- Robo-Chick/Battle Pet
	"P:40.20,79.40:471:Level 1-2",	-- Robo-Chick/Battle Pet
	--achievements
	"A:32.40,68.80:5753:15:Batamsi",	-- Cataclysmically Delicious
	"A:32.40,68.80:5753:18:Batamsi",	-- Cataclysmically Delicious
	"A:32.40,68.80:5753:38:Batamsi",	-- Cataclysmically Delicious
	"A:32.40,68.80:5753:40:Batamsi",	-- Cataclysmically Delicious
	"A:32.40,68.80:5753:40:Batamsi",	-- Cataclysmically Delicious
	"A:40.00,81.60:5753:16:Denk Hordewell",	-- Cataclysmically Delicious
	"A:53.60,78.80:5753:7:Innkeeper Gryshka",	-- Cataclysmically Delicious
	"A:53.60,78.80:5753:24:Innkeeper Gryshka",	-- Cataclysmically Delicious
	"A:53.60,78.80:5753:28:Innkeeper Gryshka",	-- Cataclysmically Delicious
	"A:53.60,78.80:5753:29:Innkeeper Gryshka",	-- Cataclysmically Delicious
	"A:56.70,67.50:5753:33:Kor'jus",	-- Cataclysmically Delicious
	"A:56.70,67.50:5753:47:Kor'jus",	-- Cataclysmically Delicious
	"A:39.20,48.40:5753:19:Miwana",	-- Cataclysmically Delicious
	"A:39.20,48.40:5753:39:Miwana",	-- Cataclysmically Delicious
	"A:50.80,74.60:5753:18:Shan'ti",	-- Cataclysmically Delicious
	"A:50.80,74.60:5753:40:Shan'ti",	-- Cataclysmically Delicious
	"A:32.80,65.60:5753:15:Sijambi",	-- Cataclysmically Delicious
	"A:32.80,65.60:5753:38:Sijambi",	-- Cataclysmically Delicious
	"A:32.40,68.80:5754:2:Batamsi",	-- Drown Your Sorrows
	"A:32.40,68.80:5754:2:Batamsi",	-- Drown Your Sorrows
	"A:32.40,68.80:5754:6:Batamsi",	-- Drown Your Sorrows
	"A:32.40,68.80:5754:6:Batamsi",	-- Drown Your Sorrows
	"A:32.40,68.80:5754:9:Batamsi",	-- Drown Your Sorrows
	"A:32.40,68.80:5754:9:Batamsi",	-- Drown Your Sorrows
	"A:53.60,78.80:5754:2:Innkeeper Gryshka",	-- Drown Your Sorrows
	"A:53.60,78.80:5754:6:Innkeeper Gryshka",	-- Drown Your Sorrows
	"A:53.60,78.80:5754:9:Innkeeper Gryshka",	-- Drown Your Sorrows
	"A:54.80,78.00:1832::Buy Foods and Drinks from Barkeep Morag",	-- Tastes Like Chicken
	"A:32.40,68.80:1832::Buy Foods and Drinks from Batamsi",	-- Tastes Like Chicken
	"A:71.60,50.20:1832::Buy Foods and Drinks from Gravy",	-- Tastes Like Chicken
	"A:53.60,78.80:1832::Buy Foods and Drinks from Innkeeper Gryshka",	-- Tastes Like Chicken
	"A:70.60,49.20:1832::Buy Foods and Drinks from Innkeeper Nufa",	-- Tastes Like Chicken
	"A:39.50,48.40:1832::Buy Foods and Drinks from Miwana",	-- Tastes Like Chicken
	"A:54.80,78.00:1833::Buy Foods and Drinks from Barkeep Morag",	-- It's Happy Hour Somewhere
	"A:32.40,68.80:1833::Buy Foods and Drinks from Batamsi",	-- It's Happy Hour Somewhere
	"A:71.60,50.20:1833::Buy Foods and Drinks from Gravy",	-- It's Happy Hour Somewhere
	"A:53.60,78.80:1833::Buy Foods and Drinks from Innkeeper Gryshka",	-- It's Happy Hour Somewhere
	"A:70.60,49.20:1833::Buy Foods and Drinks from Innkeeper Nufa",	-- It's Happy Hour Somewhere
	"A:39.50,48.40:1833::Buy Foods and Drinks from Miwana",	-- It's Happy Hour Somewhere
	"A:35.00,76.00:1206:20",	--"To All The Squirrels I've Loved Before, Toad"
	"A:45.00,49.00:1206:20",	--"To All The Squirrels I've Loved Before, Toad"
	"A:34.00,73.00:2556:2",	--"Pest Control, Water Snake"
	"A:40.20,60.60:545",	--"Shave and a Haircut"
	"A:65.20,43.10:5478:7",	--"The Limnologist"
	"A:65.20,43.10:5478:8",	--"The Limnologist"
	"A:65.20,43.10:5478:28")	--"The Limnologist"

tappend(points.Horde["Arathi:0"],
	"A:69.20,33.10:1244:17",	--"Well Read"
	"A:69.30,32.80:1244:19")	--"Well Read"

tappend(points.Horde["HillsbradFoothills:0"],
	"A:56.70,47.05:1244:3",	--"Well Read"
	"A:57.50,45.40:1244:7",	--"Well Read"
	"A:56.70,47.50:1244:12",	--"Well Read"
	"A:57.20,45.50:1244:21",	--"Well Read"
	"A:58.00,46.10:1244:24")	--"Well Read"

tappend(points.Horde["EversongWoods:0"],
	"A:37.20,18.60:1206:2")	--"To All The Squirrels I've Loved Before, Cat"

tappend(points.Horde["ThunderBluff:0"],
	--achievements
	"A:41.60,54.60:5753:7:Fyr Mistrunner",	-- Cataclysmically Delicious
	"A:41.60,54.60:5753:28:Fyr Mistrunner",	-- Cataclysmically Delicious
	"A:45.80,64.60:5753:19:Innkeeper Pala",	-- Cataclysmically Delicious
	"A:45.80,64.60:5753:39:Innkeeper Pala",	-- Cataclysmically Delicious
	"A:52.20,47.40:5753:24:Kaga Mistrunner",	-- Cataclysmically Delicious
	"A:52.20,47.40:5753:29:Kaga Mistrunner",	-- Cataclysmically Delicious
	"A:47.80,41.40:5753:18:Nan Mistrunner",	-- Cataclysmically Delicious
	"A:47.80,41.40:5753:40:Nan Mistrunner",	-- Cataclysmically Delicious
	"A:56.00,47.00:5753:15:Sewa Mistrunner",	-- Cataclysmically Delicious
	"A:56.00,47.00:5753:38:Sewa Mistrunner",	-- Cataclysmically Delicious
	"A:45.80,64.60:5754:2:Innkeeper Pala",	-- Drown Your Sorrows
	"A:45.80,64.60:5754:6:Innkeeper Pala",	-- Drown Your Sorrows
	"A:45.80,64.60:5754:9:Innkeeper Pala",	-- Drown Your Sorrows
	"A:45.80,64.60:1833::Buy Foods and Drinks from Innkeeper Pala",	-- It's Happy Hour Somewhere
	"A:45.80,64.60:1832::Buy Foods and Drinks from Innkeeper Pala")	-- Tastes Like Chicken
	
tappend(points.Horde["Barrens:0"],
	"A:58.60,53.00:6602:2:3 - Level 3 Pets")	-- Taming Kalimdor/Dagra the Fierce
	
tappend(points.Horde["Ashenvale:0"],
	"A:20.20,29.60:6602:3:3 - Level 5 Pets")	-- Taming Kalimdor/Analynn
	
tappend(points.Horde["StonetalonMountains:0"],
	"A:59.60,71.60:6602:4:3 - Level 7 pets")	-- Taming Kalimdor/Zonya the Sadist

tappend(points.Horde["Desolace:0"],
	"A:57.20,45.80:6602:5:3 - Level 9 Pets")	-- Taming Kalimdor/Merda Stronghoof
	
tappend(points.Horde["SouthernBarrens:0"],
	"A:39.60,79.20:6602:8:3 - Level 11 Pets")	-- Taming Kalimdor/Cassandra Kaboom
	
tappend(points.Horde["Krasarang:0"],
	"R:85.00,27.60:68320",	--Dalan Nightbreaker <Champion of Arms> 
	"R:84.60,31.00:68317",	--Mavis Harms <Champion of the Shadows>
	"R:87.40,29.20:68319")	--Disha Fearwarden <Champion of the Light>
	
tappend(points["Tanaris:0"],
	--battle pets
	"P:41.00,73.00:430:Level 13",	-- Gold Beetle/Battle Pet
	"P:51.00,31.00:430:Level 13",	-- Gold Beetle/Battle Pet
	"P:34.00,72.00:431:Level 13",	-- Rattlesnake/Battle Pet
	"P:50.00,26.00:431:Level 13",	-- Rattlesnake/Battle Pet
	"P:57.00,55.00:431:Level 13",	-- Rattlesnake/Battle Pet
	"P:35.80,57.20:432:Level 13",	-- Stripe-Tailed Scorpid/Battle Pet
	"P:39.00,73.80:432:Level 13",	-- Stripe-Tailed Scorpid/Battle Pet
	"P:49.00,28.80:432:Level 13",	-- Stripe-Tailed Scorpid/Battle Pet
	"P:51.00,41.00:432:Level 13",	-- Stripe-Tailed Scorpid/Battle Pet
	"P:56.60,58.40:432:Level 13",	-- Stripe-Tailed Scorpid/Battle Pet
	"P:37.60,34.40:484:Level 13",	-- Desert Spider/Battle Pet
	"P:38.60,67.40:484:Level 13",	-- Desert Spider/Battle Pet
	"P:40.60,53.60:484:Level 13",	-- Desert Spider/Battle Pet
	"P:46.20,65.40:484:Level 13",	-- Desert Spider/Battle Pet
	"P:46.40,37.60:484:Level 13",	-- Desert Spider/Battle Pet
	"P:69.80,53.60:484:Level 13",	-- Desert Spider/Battle Pet
	"P:31.00,70.40:491:Level 13",	-- Sand Kitten/Battle Pet
	"P:39.40,71.40:491:Level 13",	-- Sand Kitten/Battle Pet
	"P:46.20,65.20:491:Level 13",	-- Sand Kitten/Battle Pet
	"P:50.60,34.40:491:Level 13",	-- Sand Kitten/Battle Pet
	"P:53.60,57.80:491:Level 13",	-- Sand Kitten/Battle Pet
	"P:59.20,49.00:491:Level 13",	-- Sand Kitten/Battle Pet
	"P:34.80,75.80:492:Level 13",	-- Stinkbug/Battle Pet


	"P:40.00,61.20:492:Level 13",	-- Stinkbug/Battle Pet
	"P:48.40,29.60:492:Level 13",	-- Stinkbug/Battle Pet
	"P:49.80,39.60:492:Level 13",	-- Stinkbug/Battle Pet
	"P:68.80,54.60:492:Level 13",	-- Stinkbug/Battle Pet
	"P:34.40,52.00:494:Level 13",	-- Silithid Hatchling/Battle Pet
	"P:52.80,64.00:494:Level 13",	-- Silithid Hatchling/Battle Pet
	"P:55.80,64.20:494:Level 13",	-- Silithid Hatchling/Battle Pet
	"P:52.80,30.20:560:Level 13",	-- Sea Gull/Battle Pet
	"P:56.60,90.80:560:Level 13",	-- Sea Gull/Battle Pet
	"P:59.80,33.60:560:Level 13",	-- Sea Gull/Battle Pet
	"P:70.20,54.60:560:Level 13",	-- Sea Gull/Battle Pet
	"P:71.40,45.40:560:Level 13",	-- Sea Gull/Battle Pet
	"P:57.60,59.00:1161 :Level 13-14",	-- Infinite Whelpling/Battle Pet
	"P:61.00,50.20:1161 :Level 13-14",	-- Infinite Whelpling/Battle Pet
	"P:63.60,57.00:1161 :Level 13-14",	-- Infinite Whelpling/Battle Pet
	"P:67.20,49.00:1161 :Level 13-14",	-- Infinite Whelpling/Battle Pet
	--rares
	"R:36.60,42.60:47386::36.80,46.60:33.00,49.00",	-- Ainamiss the Hive Queen
	"R:69.60,56.80:44759",	-- Andre Firebeard
	"R:69.60,50.00:44761",	-- Aquementas the Unchained
	"R:47.00,65.20:44750",	-- Caliph Scorpidsting
	"R:44.60,40.60:8207",	-- Emberwing
	"R:48.20,45.60:8207",	-- Emberwing
	"R:57.00,89.80:44714",	-- Fronkle the Disturbed
	"R:56.60,68.60:8205",	-- Haarka the Ravenous
	"R:55.80,64.40:47387",	-- Harakiss the Infestor
	"R:52.60,65.60:47387",	-- Harakiss the Infestor
	"R:56.60,68.80:47387",	-- Harakiss the Infestor
	"R:53.00,70.40:47387",	-- Harakiss the Infestor
	"R:50.60,72.60:47387",	-- Harakiss the Infestor
	"R:40.80,41.20:39186",	-- Hellgazer
	"R:37.60,25.80:8200",	-- Jin'Zallah the Sandbringer
	"R:40.80,30.20:8200",	-- Jin'Zallah the Sandbringer
	"R:75.00,45.40:8203",	-- Kregg Keelhaul
	"R:73.60,47.60:8203",	-- Kregg Keelhaul
	"R:61.00,50.60:44767",	-- Occulus the Corrupted
	"R:44.60,55.00:8201::40.60,50.60:38.60,57.80",	-- Omgorn the Lost
	"R:49.60,58.60:39183",	-- Scorpitar
	"R:40.20,67.40:39185",	-- Slaverjaw
	"R:35.00,46.40:8204",	-- Soriid the Devourer
	"R:64.60,19.80:44722",	-- Twisted Reflection of Narain
	"R:40.80,29.60:8199",	-- Warleader Krazzilak
	--achievements
	"A:41.00,73.00:2556:17",	--"Pest Control, Gold Beetle"
	"A:51.00,31.00:2556:17",	--"Pest Control, Gold Beetle"
	"A:34.00,72.00:5548:7",	--"To All the Squirrels Who Cared for Me"
	"A:50.00,26.00:5548:7",	--"To All the Squirrels Who Cared for Me"
	"A:57.00,55.00:5548:7",	--"To All the Squirrels Who Cared for Me"
	"A:52.00,28.00:851:1",	--"Exploration Kalimdor"
	"A:38.00,27.00:851:2",	--"Exploration Kalimdor"
	"A:37.00,77.00:851:3",	--"Exploration Kalimdor"
	"A:73.00,46.00:851:4",	--"Exploration Kalimdor"
	"A:45.00,41.00:851:5",	--"Exploration Kalimdor"
	"A:52.00,45.00:851:6",	--"Exploration Kalimdor"
	"A:36.00,43.00:851:7",	--"Exploration Kalimdor"
	"A:40.00,55.00:851:8",	--"Exploration Kalimdor"
	"A:64.00,60.00:851:9",	--"Exploration Kalimdor"
	"A:52.00,67.00:851:10",	--"Exploration Kalimdor"
	"A:47.00,65.00:851:11",	--"Exploration Kalimdor"
	"A:54.00,92.00:851:12",	--"Exploration Kalimdor"
	"A:40.00,71.00:851:13",	--"Exploration Kalimdor"
	"A:29.00,64.00:851:14",	--"Exploration Kalimdor"
	"A:38.00,16.00:851:15",	--"Exploration Kalimdor"
	"A:65.00,49.00:851:16",	--"Exploration Kalimdor"
	"A:52.50,26.90:1244:8",	--"Well Read"
	"A:40.00,76.80:1244:11",	--"Well Read"
	"A:51.00,30.30:1244:16",	--"Well Read"
	"A:66.50,49.80:1244:29",	--"Well Read"
	"A:52.50,26.90:1244:37",	--"Well Read"
	"A:52.50,26.90:1244:42",	--"Well Read"
	"A:53.20,30.80:5479:3",	--"The Oceanographer"
	"A:53.20,30.80:5479:13:Drop off of Giants and Turtles",	--"The Oceanographer"
	"A:53.20,30.80:5479:26",	--"The Oceanographer"
	"A:16.20,24.90:5479:27")	--"The Oceanographer"

tappend(points["DeathknellStart:0"],
	--rares
	"R:66.00,81.40:50328:Level 5",	-- Fangor
	"R:61.60,78.20:50328:Level 5")	-- Fangor

tappend(points["Feralas:0"],
	--battle pets
	"P:39.00,11.60:378:Level 11",	-- Rabbit/Battle Pet
	"P:40.00,12.00:378:Level 11",	-- Rabbit/Battle Pet
	"P:51.20,33.20:378:Level 11",	-- Rabbit/Battle Pet
	"P:52.80,14.80:378:Level 11",	-- Rabbit/Battle Pet
	"P:55.40,54.00:378:Level 11",	-- Rabbit/Battle Pet
	"P:61.80,68.80:378:Level 11",	-- Rabbit/Battle Pet
	"P:83.40,45.00:378:Level 11",	-- Rabbit/Battle Pet
	"P:29.00,52.00:379:Level 11",	-- Squirrel/Battle Pet
	"P:29.00,52.00:379:Level 11",	-- Squirrel/Battle Pet
	"P:72.00,46.00:379:Level 11",	-- Squirrel/Battle Pet
	"P:72.00,46.00:379:Level 11",	-- Squirrel/Battle Pet
	"P:40.00,12.00:387:Level 11",	-- Snake/Battle Pet
	"P:46.40,57.80:387:Level 11",	-- Snake/Battle Pet
	"P:49.80,33.40:387:Level 11",	-- Snake/Battle Pet
	"P:52.00,16.00:387:Level 11",	-- Snake/Battle Pet
	"P:59.40,50.60:387:Level 11",	-- Snake/Battle Pet
	"P:71.40,43.40:387:Level 11",	-- Snake/Battle Pet
	"P:85.60,43.40:387:Level 11",	-- Snake/Battle Pet
	"P:55.60,47.40:557:Level 11",	-- Nether Faerie Dragon/Battle Pet
	"P:61.00,28.00:557:Level 11",	-- Nether Faerie Dragon/Battle Pet
	"P:63.40,45.40:557:Level 11",	-- Nether Faerie Dragon/Battle Pet
	"P:63.80,33.60:557:Level 11",	-- Nether Faerie Dragon/Battle Pet
	"P:52.40,60.20:1158 :Level 11-12",	-- Stunted Yeti/Battle Pet
	"P:56.40,57.20:1158 :Level 11-12",	-- Stunted Yeti/Battle Pet
	--rares
	"R:55.20,74.00:5347::55.00,65.80",	-- Antilus the Soarer
	"R:40.80,26.00:5349::37.60,22.20:39.60,20.40",	-- Arash-ethis
	"R:52.80,59.60:5346",	-- Bloodroar the Stalker
	"R:49.00,20.60:5345",	-- Diamond Head
	"R:72.20,38.80:5354::71.80,45.40:69.60,43.00",	-- Gnarl Leafbrother
	"R:32.60,44.00:5343",	-- Lady Szallah
	"R:49.60,30.60:43488",	-- Mordei the Earthrender
	"R:61.00,61.00:5352::55.40,58.80:59.00,61.80",	-- Old Grizzlegut
	"R:73.60,64.00:5350",	-- Qirot
	"R:76.60,61.40:5350",	-- Qirot
	"R:85.00,37.40:5356::80.60,39.60:75.60,37.60",	-- Snarler
	"A:59.60,49.60:6602:6:3 - Level 13 Pets",	-- Taming Kalimdor/Traitor Gluk
	"A:73.00,53.00:849:1",	--"Exploration Kalimdor"
	"A:46.00,18.00:849:3",	--"Exploration Kalimdor"
	"A:48.00,43.00:849:4",	--"Exploration Kalimdor"
	"A:59.00,43.00:849:5",	--"Exploration Kalimdor"
	"A:54.00,56.00:849:6",	--"Exploration Kalimdor"
	"A:59.00,69.00:849:7",	--"Exploration Kalimdor"
	"A:75.00,61.00:849:8",	--"Exploration Kalimdor"
	"A:75.00,42.00:849:9",	--"Exploration Kalimdor"
	"A:69.00,40.00:849:10",	--"Exploration Kalimdor"
	"A:77.00,31.00:849:11",	--"Exploration Kalimdor"
	"A:32.00,44.00:849:12",	--"Exploration Kalimdor"
	"A:65.00,60.00:849:12",	--"Exploration Kalimdor"
	"A:46.00,45.00:849:13",	--"Exploration Kalimdor"
	"A:30.90,42.80:1244:35",	--"Well Read"
	"A:40.00,12.00:1206:12",	--"To All The Squirrels I've Loved Before, Rabbit"
	"A:40.00,12.00:1206:5",	--"To All The Squirrels I've Loved Before, Deer"
	"A:61.00,55.00:1206:5",	--"To All The Squirrels I've Loved Before, Deer"
	"A:29.00,52.00:1206:17",	--"To All The Squirrels I've Loved Before, Squirrel"
	"A:72.00,46.00:1206:17",	--"To All The Squirrels I've Loved Before, Squirrel"
	"A:29.00,52.00:2556:4",	--"Pest Control, Squirrel"
	"A:72.00,46.00:2556:4",	--"Pest Control, Squirrel"
	"A:40.00,12.00:2556:10",	--"Pest Control, Snake"
	"A:52.00,16.00:2556:10")	--"Pest Control, Snake"

tappend(points["BoreanTundra:0"],
	--Battle Pets
	"P:39.00,15.00:388:Level 20-21",	-- Shore Crab/Battle Pet
	"P:59.80,22.00:530:Level 20-21",	-- Oily Slimeling/Battle Pet
	"P:60.60,39.60:530:Level 20-21",	-- Oily Slimeling/Battle Pet
	"P:62.00,29.00:530:Level 20-21",	-- Oily Slimeling/Battle Pet
	"P:62.60,16.80:530:Level 20-21",	-- Oily Slimeling/Battle Pet
	"P:63.60,34.80:530:Level 20-21",	-- Oily Slimeling/Battle Pet
	"P:38.00,09.00:536:Level 20-21",	-- Tundra Penguin/Battle Pet
	"P:44.00,41.00:639:Level 20-21",	-- Borean Marmot/Battle Pet
	"P:49.00,22.00:639:Level 20-21",	-- Borean Marmot/Battle Pet
	"P:55.00,52.00:639:Level 20-21",	-- Borean Marmot/Battle Pet
	"P:79.00,32.00:639:Level 20-21",	-- Borean Marmot/Battle Pet
	"P:74.00,16.00:641:Level 20-21",	-- Arctic Hare/Battle Pet
	"P:82.00,43.00:641:Level 20-21",	-- Arctic Hare/Battle Pet
	"P:22.20,27.20:1165:Level 20-22",	-- Nexus Whelpling/Battle Pet
	"P:26.60,19.00:1165:Level 20-22",	-- Nexus Whelpling/Battle Pet
	"P:26.80,35.60:1165:Level 20-22",	-- Nexus Whelpling/Battle Pet
	"P:34.20,24.80:1165:Level 20-22",	-- Nexus Whelpling/Battle Pet
	--Achievements
	"A:45.00,33.00:1264:9",	--"Exploration Northrend"
	"A:50.00,09.00:1264:8",	--"Exploration Northrend"
	"A:27.00,37.00:1264:7",	--"Exploration Northrend"
	"A:82.00,47.00:1264:6",	--"Exploration Northrend"
	"A:32.00,54.00:1264:5",	--"Exploration Northrend"
	"A:64.00,48.00:1264:4",	--"Exploration Northrend"
	"A:44.00,78.00:1264:3",	--"Exploration Northrend"
	"A:49.00,25.00:1264:2",	--"Exploration Northrend"
	"A:82.00,24.00:1264:1",	--"Exploration Northrend"
	"A:76.00,19.00:1264:13",	--"Exploration Northrend"
	"A:67.00,24.00:1264:12",	--"Exploration Northrend"
	"A:53.00,71.00:1264:11",	--"Exploration Northrend"
	"A:44.00,56.00:1264:10",	--"Exploration Northrend"
	"A:52.70,48.80:5478:31",	--"The Limnologist"
	"A:86.30,46.50:5479:4",	--"The Oceanographer"
	"A:41.00,15.40:5479:7",	--"The Oceanographer"
	"A:91.00,53.30:5479:8",	--"The Oceanographer"
	"A:86.30,46.50:5479:14",	--"The Oceanographer"
	"A:91.00,53.30:5479:17",	--"The Oceanographer"
	"A:43.60,16.10:5479:23",	--"The Oceanographer"
	"R:34.60,23.60:32357::35.60,29.80:23.40,35.80",	--"Old Crystalbark"
	"R:20.60,26.20:32357",	--"Old Crystalbark"
	"R:70.60,37.80:32358::63.20,28.80:60.40,15.00",	--"Fumblub Gearwind"
	"R:65.20,16.40:32358::71.80,26.20:72.80,34.60",	--"Fumblub Gearwind"
	"R:81.40,31.40:32361",	--"Icehorn"
	"R:85.80,34.60:32361",	--"Icehorn"
	"R:91.60,32.60:32361",	--"Icehorn"
	"R:88.60,39.80:32361",	--"Icehorn"
	"R:80.80,46.00:32361",	--"Icehorn"
	"A:39.00,15.00:1206:7",	--"To All The Squirrels I've Loved Before, Borean Frog"
	"A:70.00,29.00:1206:1",	--"To All The Squirrels I've Loved Before, Borean Frog"
	"A:73.00,40.00:1206:17",	--"To All The Squirrels I've Loved Before, Squirrel"
	"A:68.00,41.00:1206:18",	--"To All The Squirrels I've Loved Before, Steam Frog"
	"A:60.00,51.00:1206:18",	--"To All The Squirrels I've Loved Before, Steam Frog"
	"A:38.00,09.00:2557:12",	--"To All The Squirrels Who Shared My Life"
	"A:74.00,16.00:2557:1",	--"To All The Squirrels Who Shared My Life"
	"A:82.00,43.00:2557:1",	--"To All The Squirrels Who Shared My Life"
	"A:44.00,41.00:2557:2",	--"To All The Squirrels Who Shared My Life"
	"A:49.00,22.00:2557:2",	--"To All The Squirrels Who Shared My Life"
	"A:55.00,52.00:2557:2",	--"To All The Squirrels Who Shared My Life"
	"A:79.00,32.00:2557:2")	--"To All The Squirrels Who Shared My Life"

tappend(points["TheCapeOfStranglethorn:0"],
	"P:42.00,72.00:410:Level 9. Joins the Battle",	-- Wharf Rat/Battle Pet
	"P:34.40,32.20:401:Level 9",	-- Strand Crab/Battle Pet
	"P:36.20,48.20:401:Level 9",	-- Strand Crab/Battle Pet
	"P:39.40,57.80:401:Level 9",	-- Strand Crab/Battle Pet
	"P:41.20,25.40:401:Level 9",	-- Strand Crab/Battle Pet
	"P:41.20,82.20:401:Level 9",	-- Strand Crab/Battle Pet
	"P:42.00,72.80:401:Level 9",	-- Strand Crab/Battle Pet
	"P:43.20,11.00:401:Level 9",	-- Strand Crab/Battle Pet
	"P:49.40,07.60:401:Level 9",	-- Strand Crab/Battle Pet
	"P:52.20,68.60:401:Level 9",	-- Strand Crab/Battle Pet
	"P:59.00,89.60:401:Level 9",	-- Strand Crab/Battle Pet
	"P:61.60,75.80:401:Level 9",	-- Strand Crab/Battle Pet
	"P:65.60,83.80:401:Level 9",	-- Strand Crab/Battle Pet
	"P:50.00,43.20:405:Level 9",	-- Tree Python/Battle Pet
	"P:50.00,56.20:405:Level 9",	-- Tree Python/Battle Pet
	"P:50.80,27.00:405:Level 9",	-- Tree Python/Battle Pet
	"P:59.20,84.00:405:Level 9",	-- Tree Python/Battle Pet
	"P:46.00,58.60:406:Level 9",	-- Beetle/Battle Pet
	"P:48.60,20.80:406:Level 9",	-- Beetle/Battle Pet
	"P:55.80,40.40:406:Level 9",	-- Beetle/Battle Pet
	"P:58.80,84.00:406:Level 9",	-- Beetle/Battle Pet
	"P:62.20,32.00:406:Level 9",	-- Beetle/Battle Pet
	"P:39.40,50.20:407:Level 9",	-- Forest Spiderling/Battle Pet
	"P:41.40,30.20:407:Level 9",	-- Forest Spiderling/Battle Pet
	"P:49.40,64.80:407:Level 9",	-- Forest Spiderling/Battle Pet
	"P:49.80,43.20:407:Level 9",	-- Forest Spiderling/Battle Pet
	"P:50.00,21.80:407:Level 9",	-- Forest Spiderling/Battle Pet
	"P:60.00,78.00:407:Level 9",	-- Forest Spiderling/Battle Pet
	"P:61.60,87.00:407:Level 9",	-- Forest Spiderling/Battle Pet
	"P:39.20,48.80:408:Level 9",	-- Lizard Hatchling/Battle Pet
	"P:42.40,77.80:408:Level 9",	-- Lizard Hatchling/Battle Pet
	"P:48.20,19.40:408:Level 9",	-- Lizard Hatchling/Battle Pet
	"P:50.00,66.80:408:Level 9",	-- Lizard Hatchling/Battle Pet
	"P:53.20,49.40:408:Level 9",	-- Lizard Hatchling/Battle Pet
	"P:58.20,78.20:408:Level 9",	-- Lizard Hatchling/Battle Pet
	"P:63.40,31.20:408:Level 9",	-- Lizard Hatchling/Battle Pet
	"P:60.40,78.00:411:Level 9. Only Spawns when it is Raining on the Island.",	-- Baby Ape/Battle Pet
	"P:63.00,84.40:411:Level 9. Only Spawns when it is Raining on the Island.",	-- Baby Ape/Battle Pet
	"P:64.00,80.20:411:Level 9. Only Spawns when it is Raining on the Island.",	-- Baby Ape/Battle Pet
	"P:42.00,72.00:424:Level 9",	-- Roach/Battle Pet
	"P:66.00,28.00:424:Level 9",	-- Roach/Battle Pet
	"R:58.60,47.40:14491::54.60,52.20:48.00,58.00",	-- Kurmokk
	"R:43.60,49.20:2541",	-- Lord Sakrasis
	"R:42.00,73.60:14490::42.60,70.80:40.00,69.40",	-- Rippa
	"R:67.60,25.20:1552",	-- Scale Belly
	"R:53.20,27.80:14492",	-- Verifonix
	"A:42.00,72.00:2556:9",	--"Pest Control, Roach"
	"A:66.00,28.00:2556:9",	--"Pest Control, Roach"
	"A:42.00,72.00:5548:12",	--"To All the Squirrels Who Cared for Me"
	"A:42.00,68.00:4995:1",	--"Exploration Eastern Kingdom"
	"A:62.00,30.00:4995:2",	--"Exploration Eastern Kingdom"
	"A:50.00,29.00:4995:3",	--"Exploration Eastern Kingdom"
	"A:34.00,30.00:4995:4",	--"Exploration Eastern Kingdom"
	"A:56.00,75.00:4995:5",	--"Exploration Eastern Kingdom"
	"A:50.00,56.00:4995:6",	--"Exploration Eastern Kingdom"
	"A:42.00,49.00:4995:7",	--"Exploration Eastern Kingdom"
	"A:60.00,42.00:4995:8",	--"Exploration Eastern Kingdom"
	"A:53.00,31.00:4995:9",	--"Exploration Eastern Kingdom"
	"A:50.00,68.00:4995:10",	--"Exploration Eastern Kingdom"
	"A:40.70,73.80:1244:5",	--"Well Read"
	"A:42.10,73.70:1244:8",	--"Well Read"
	"A:41.10,74.50:1244:20",	--"Well Read"
	"A:41.90,73.50:1244:34",	--"Well Read"
	"A:42.10,73.60:1244:35",	--"Well Read"
	"A:42.10,73.70:1244:37",	--"Well Read"
	"A:42.10,73.70:1244:42",	--"Well Read"
	"A:38.70,71.70:5479:24")	--"The Oceanographer"

tappend(points["GrizzlyHills:0"],
	"P:17.00,75.00:385:Level 21",	-- Mouse/Battle Pet
	"P:19.00,77.00:385:Level 21",	-- Mouse/Battle Pet
	"P:16.00,75.00:447:Level 21",	-- Fawn/Battle Pet
	"P:16.00,77.00:447:Level 21",	-- Fawn/Battle Pet
	"P:15.40,58.00:534:Level 21",	-- Imperial Eagle Chick/Battle Pet
	"P:40.20,60.20:534:Level 21",	-- Imperial Eagle Chick/Battle Pet
	"P:50.80,27.60:534:Level 21",	-- Imperial Eagle Chick/Battle Pet
	"P:62.00,31.80:534:Level 21",	-- Imperial Eagle Chick/Battle Pet
	"P:71.20,08.60:534:Level 21",	-- Imperial Eagle Chick/Battle Pet
	"P:30.00,56.00:633:Level 21",	-- Mountain Skunk/Battle Pet
	"P:19.00,47.00:647:Level 21",	-- Grizzly Squirrel/Battle Pet
	"P:34.00,59.00:647:Level 21",	-- Grizzly Squirrel/Battle Pet
	"P:59.00,45.00:647:Level 21",	-- Grizzly Squirrel/Battle Pet
	"P:68.00,37.00:647:Level 21",	-- Grizzly Squirrel/Battle Pet
	"A:31.00,60.00:1266:11",	--"Exploration Northrend"
	"A:37.00,36.00:1266:12",	--"Exploration Northrend"
	"A:65.00,47.00:1266:13",	--"Exploration Northrend"
	"A:21.00,65.00:1266:1",	--"Exploration Northrend"
	"A:71.00,26.00:1266:3",	--"Exploration Northrend"
	"A:18.00,25.00:1266:2",	--"Exploration Northrend"
	"A:76.00,58.00:1266:4",	--"Exploration Northrend"
	"A:16.00,47.00:1266:5",	--"Exploration Northrend"
	"A:50.00,42.00:1266:6",	--"Exploration Northrend"
	"A:50.00,57.00:1266:7",	--"Exploration Northrend"
	"A:69.00,15.00:1266:8",	--"Exploration Northrend"
	"A:14.00,86.00:1266:9",	--"Exploration Northrend"
	"A:28.00,74.00:1266:10",	--"Exploration Northrend"
	"A:57.00,30.00:1266:14",	--"Exploration Northrend"
	"A:10.30,40.70:5478:18",	--"The Limnologist"
	"R:10.60,40.00:32422::13.40,54.80:15.20,50.40",	--"Grocklar"
	"R:11.00,71.00:32422::22.60,73.60",	--"Grocklar"
	"R:20.80,56.40:32422::24.60,55.20:24.80,59.80",	--"Grocklar"
	"R:67.00,42.60:32438::65.20,29.60:69.00,25.80",	--"Syreian the Bonecarver"
	"R:71.60,35.00:32438::76.60,42.00",	--"Syreian the Bonecarver"
	"R:28.60,45.80:32429",	--"Seething Hate"
	"R:34.60,49.00:32429",	--"Seething Hate"
	"R:38.80,49.60:32429",	--"Seething Hate"
	"A:19.00,77.00:1206:7",	--"To All The Squirrels I've Loved Before, Fawn"
	"A:17.00,75.00:2556:7",	--"Pest Control, Mouse"
	"A:19.00,77.00:2556:7",	--"Pest Control, Mouse"
	"A:19.00,47.00:2557:6",	--"To All The Squirrels Who Shared My Life"
	"A:34.00,59.00:2557:6",	--"To All The Squirrels Who Shared My Life"
	"A:59.00,45.00:2557:6",	--"To All The Squirrels Who Shared My Life"
	"A:68.00,37.00:2557:6",	--"To All The Squirrels Who Shared My Life"
	"A:30.00,56.00:2557:9")	--"To All The Squirrels Who Shared My Life"

tappend(points["ZulDrak:0"],
	"P:17.20,58.60:412:Level 22",	-- Spider/Battle Pet
	"P:19.00,77.80:412:Level 22",	-- Spider/Battle Pet
	"P:56.00,73.00:412:Level 22",	-- Spider/Battle Pet
	"P:59.40,46.20:412:Level 22",	-- Spider/Battle Pet
	"P:78.40,17.20:412:Level 22",	-- Spider/Battle Pet
	"P:39.80,72.40:535:Level 22",	-- Water Waveling/Battle Pet
	"P:45.60,81.80:535:Level 22",	-- Water Waveling/Battle Pet
	"P:74.00,70.00:641:Level 22",	-- Arctic Hare/Battle Pet
	"P:42.00,78.00:648:Level 22",	-- Huge Toad/Battle Pet
	"A:13.20,66.80:6605:4:3 - Level 25 Pets",	-- Taming Northrend/Gutretch
	"A:45.00,60.00:2556:8",	--"Pest Control, Zul'Drak Rat"
	"A:42.00,78.00:2557:7",	--"To All The Squirrels Who Shared My Life"
	"A:74.00,70.00:2557:1",	--"To All The Squirrels Who Shared My Life"
	"A:63.00,71.00:1267:8",	--"Exploration Northrend"
	"A:76.00,43.00:1267:7",	--"Exploration Northrend"
	"A:77.00,59.00:1267:6",	--"Exploration Northrend"
	"A:53.00,36.00:1267:5",	--"Exploration Northrend"
	"A:40.00,38.00:1267:4",	--"Exploration Northrend"
	"A:49.00,56.00:1267:3",	--"Exploration Northrend"
	"A:43.00,77.00:1267:2",	--"Exploration Northrend"
	"A:82.00,20.00:1267:1",	--"Exploration Northrend"
	"A:61.00,78.00:1267:14",	--"Exploration Northrend"
	"A:32.00,75.00:1267:13",	--"Exploration Northrend"
	"A:17.00,58.00:1267:12",	--"Exploration Northrend"
	"A:28.00,46.00:1267:11",	--"Exploration Northrend"
	"A:21.00,76.00:1267:10",	--"Exploration Northrend"
	"A:59.00,57.00:1267:9",	--"Exploration Northrend"
	"A:48.40,56.30:4958:2",	--The First Rule of Ring of Blood is You Don't Talk About Ring of Blood"
	"R:20.20,82.20:32447::29.20,81.20:28.80,71.40",	--"Zul'drak Sentinel"
	"R:51.00,84.20:32447::42.60,70.40",	--"Zul'drak Sentinel"
	"R:40.40,64.00:32447::40.60,52.20",	--"Zul'drak Sentinel"
	"R:44.60,55.60:32447::47.60,63.60:45.80,66.80",	--"Zul'drak Sentinel"
	"R:21.20,79.80:32471",	--"Griegen"
	"R:24.60,77.60:32471",	--"Griegen"
	"R:26.60,71.60:32471",	--"Griegen"
	"R:22.00,70.60:32471",	--"Griegen"
	"R:18.00,71.80:32471",	--"Griegen"
	"R:23.00,62.80:32471",	--"Griegen"
	"R:26.60,56.40:32471",	--"Griegen"
	"R:14.60,56.80:32471",	--"Griegen"
	"R:74.40,66.60:32475",	--"Terror Spinner"
	"R:77.60,42.80:32475",	--"Terror Spinner"
	"R:81.60,34.60:32475",	--"Terror Spinner"
	"R:72.20,28.40:32475",	--"Terror Spinner"
	"R:71.80,24.20:32475",	--"Terror Spinner"
	"R:61.60,36.60:32475",	--"Terror Spinner"
	"R:53.60,31.60:32475")	--"Terror Spinner"

tappend(points["Dalaran:1"],
	"A:58.60,43.20:2076",	--"Armored Brown Bear"
	"A:40.20,34.20:2084::Harold Winston. 8500 Gold.",	--"Ring of the Kirin Tor"
	"A:58.60,43.20:2078",	--"Traveler's Tundra Mammoth"
	"A:58.60,43.20:2077",	--"Wooly Mammoth"
	"A:56.50,45.70:1956:1",	--"Higher Learning"
	"A:64.40,52.40:1956:6",	--"Higher Learning"
	"A:52.30,54.80:1956:2",	--"Higher Learning"
	"A:43.40,46.70:1956:5",	--"Higher Learning"
	"A:30.80,46.10:1956:3",	--"Higher Learning"
	"A:26.50,52.20:1956:4",	--"Higher Learning"
	"A:46.80,39.20:1956:8",	--"Higher Learning"
	"A:46.80,40.00:1956:7",	--"Higher Learning"
	"A:53.70,66.20:5478:15",	--"The Limnologist"
	"A:62.10,67.20:5478:37",	--"The Limnologist"
	"A:62.10,67.20:5478:39",	--"The Limnologist"
	"A:37.00,45.00:1206:12",	--"To All The Squirrels I've Loved Before, Rabbit"
	"A:49.00,44.00:1206:12",	--"To All The Squirrels I've Loved Before, Rabbit"
	"A:34.00,54.00:1206:17",	--"To All The Squirrels I've Loved Before, Squirrel"
	"A:36.00,42.00:1206:17",	--"To All The Squirrels I've Loved Before, Squirrel"
	"A:34.00,54.00:2556:4",	--"Pest Control, Squirrel"
	"A:36.00,42.00:2556:4")	--"Pest Control, Squirrel"

tappend(points["VashjirDepths:0"],
	"A:47.00,27.00:5548:11",	--"To All the Squirrels Who Cared for Me"
	"A:70.00,29.00:4825:2",	--"Exploration Cataclysm"
	"A:40.00,18.00:4825:4",	--"Exploration Cataclysm"
	"A:55.00,43.00:4825:7",	--"Exploration Cataclysm"
	"A:40.00,40.00:4825:8",	--"Exploration Cataclysm"
	"A:31.00,47.00:4825:6",	--"Exploration Cataclysm"
	"A:23.00,73.00:4825:1",	--"Exploration Cataclysm"
	"A:43.00,64.00:4825:3",	--"Exploration Cataclysm"
	"A:51.00,67.00:4825:5")	--"Exploration Cataclysm"

tappend(points["Hinterlands:0"],
	"P:60.60,65.60:393:Level 11",	-- Cockroach/Battle Pet
	"P:65.20,75.60:393:Level 11",	-- Cockroach/Battle Pet
	"P:23.60,58.20:417:Level 11",	-- Rat/Battle Pet
	"P:26.00,66.40:417:Level 11",	-- Rat/Battle Pet
	"P:60.20,64.60:417:Level 11",	-- Rat/Battle Pet
	"P:67.40,75.40:417:Level 11",	-- Rat/Battle Pet
	"P:59.00,41.20:446:Level 11",	-- Jade Oozeling/Battle Pet
	"P:17.00,54.00:449:Level 11",	-- Brown Marmot/Battle Pet
	"P:28.80,67.60:449:Level 11",	-- Brown Marmot/Battle Pet
	"P:36.60,52.20:449:Level 11",	-- Brown Marmot/Battle Pet
	"P:55.60,41.60:449:Level 11",	-- Brown Marmot/Battle Pet
	"P:69.60,60.00:449:Level 11",	-- Brown Marmot/Battle Pet
	"P:57.00,82.00:412:Level 11",	-- Spider/Battle Pet
	"P:57.00,41.00:450:Level 11",	-- Maggot/Battle Pet
	"R:78.40,50.20:8215::76.60,55.60:71.60,61.80",	-- Grimungous
	"R:80.60,56.60:8213",	-- Ironback
	"R:34.60,55.20:8214",	-- Jalinde Summerdrake
	"R:64.80,81.60:8217",	-- Mith'rethis the Enchanter
	"R:13.60,53.80:8211",	-- Old Cliff Jumper
	"R:66.20,53.60:8210",	-- Razortalon
	"R:48.20,67.40:8216",	-- Retherokk the Berserker
	"R:47.80,43.20:8212",	-- The Reak
	"R:49.80,66.50:8218",	-- Witherheart the Stalker
	"R:24.80,65.60:8219",	-- Zul'arek Hatefowler
	"A:63.00,54.40:6603:7:3 - Level 13 Pets",	-- Taming Eastern Kingdoms/David Kosse
	"A:57.00,82.00:2556:3",	--"Pest Control, Spider"
	"A:57.00,41.00:2556:13",	--"Pest Control, Maggot"
	"A:13.00,48.00:773:1",	--"Exploration Eastern Kingdom"
	"A:24.00,43.00:773:2",	--"Exploration Eastern Kingdom"
	"A:23.00,58.00:773:3",	--"Exploration Eastern Kingdom"
	"A:30.00,48.00:773:4",	--"Exploration Eastern Kingdom"
	"A:34.00,70.00:773:5",	--"Exploration Eastern Kingdom"
	"A:40.00,59.00:773:6",	--"Exploration Eastern Kingdom"
	"A:47.00,40.00:773:7",	--"Exploration Eastern Kingdom"
	"A:48.00,52.00:773:8",	--"Exploration Eastern Kingdom"
	"A:48.00,66.00:773:9",	--"Exploration Eastern Kingdom"
	"A:63.00,24.00:773:10",	--"Exploration Eastern Kingdom"
	"A:57.00,40.00:773:11",	--"Exploration Eastern Kingdom"
	"A:72.00,53.00:773:12",	--"Exploration Eastern Kingdom"
	"A:62.00,72.00:773:13",	--"Exploration Eastern Kingdom"
	"A:72.00,66.00:773:14")	--"Exploration Eastern Kingdom"

tappend(points["Mulgore:0"],
	--battle pets
	"P:40.00,62.40:378:Level 1-2",	-- Rabbit/Battle Pet
	"P:42.20,12.60:378:Level 1-2",	-- Rabbit/Battle Pet
	"P:47.40,20.20:378:Level 1-2",	-- Rabbit/Battle Pet
	"P:49.80,47.40:378:Level 1-2",	-- Rabbit/Battle Pet
	"P:55.20,68.60:378:Level 1-2",	-- Rabbit/Battle Pet
	"P:57.80,26.00:378:Level 1-2",	-- Rabbit/Battle Pet
	"P:35.00,07.00:386:Level 1-2",	-- Prairie Dog/Battle Pet
	"P:36.80,50.20:477:Level 1-2",	-- Gazelle Fawn/Battle Pet
	"P:38.20,61.60:477:Level 1-2",	-- Gazelle Fawn/Battle Pet
	"P:39.40,38.20:477:Level 1-2",	-- Gazelle Fawn/Battle Pet
	"P:44.40,12.40:477:Level 1-2",	-- Gazelle Fawn/Battle Pet
	"P:48.60,68.80:477:Level 1-2",	-- Gazelle Fawn/Battle Pet
	"P:53.00,24.20:477:Level 1-2",	-- Gazelle Fawn/Battle Pet
	"P:58.40,50.80:477:Level 1-2",	-- Gazelle Fawn/Battle Pet
	"P:59.80,24.40:477:Level 1-2",	-- Gazelle Fawn/Battle Pet
	--rares
	"R:43.00,89.20:43720",	-- "Pokey" Thornmantle
	"R:48.20,67.80:3058::57.80,69.00:57.40,65.00",	-- Arra'chea
	"R:33.80,37.00:43613",	-- Doomsayer Wiserunner
	"R:60.60,47.60:5787",	-- Enforcer Emilgund
	"R:41.00,44.80:3068::46.80,46.80:50.00,42.60",	-- Mazzranache
	"R:49.60,40.40:3068::42.00,41.60",	-- Mazzranache
	"R:32.20,24.40:5785",	-- Sister Hatelash
	"R:53.00,12.00:5785",	-- Sister Hatelash
	"R:53.60,71.60:5786",	-- Snagglespear
	"R:48.60,70.60:5786",	-- Snagglespear
	"R:54.60,20.80:5807::53.40,30.20:50.40,21.60",	-- The Rake
	"R:33.80,37.00:43613:Level 8",	-- Doomsayer Wiserunner
	--achievements
	"A:39.00,82.00:736:1",	--"Exploration Kalimdor"
	"A:34.00,62.00:736:2",	--"Exploration Kalimdor"
	"A:49.00,58.00:736:3",	--"Exploration Kalimdor"
	"A:53.00,66.00:736:4",	--"Exploration Kalimdor"
	"A:64.00,63.00:736:5",	--"Exploration Kalimdor"
	"A:62.00,48.00:736:6",	--"Exploration Kalimdor"
	"A:53.00,47.00:736:7",	--"Exploration Kalimdor"
	"A:49.00,35.00:736:8",	--"Exploration Kalimdor"
	"A:44.00,45.00:736:9",	--"Exploration Kalimdor"
	"A:32.00,48.00:736:10",	--"Exploration Kalimdor"
	"A:60.00,21.00:736:11",	--"Exploration Kalimdor"
	"A:52.00,11.00:736:12",	--"Exploration Kalimdor"
	"A:43.00,16.00:736:13")	--"Exploration Kalimdor"

tappend(points["SwampOfSorrows:0"],
	--battle pets
	"P:81.80,17.00:401:Level 14",	-- Strand Crab/Battle Pet
	"P:82.00,89.20:401:Level 14",	-- Strand Crab/Battle Pet
	"P:89.00,29.60:401:Level 14",	-- Strand Crab/Battle Pet
	"P:25.40,54.20:402:Level 14",	-- Swamp Moth/Battle Pet
	"P:35.80,44.60:402:Level 14",	-- Swamp Moth/Battle Pet
	"P:59.60,35.00:402:Level 14",	-- Swamp Moth/Battle Pet
	"P:74.80,76.80:402:Level 14",	-- Swamp Moth/Battle Pet
	"P:75.80,27.00:402:Level 14",	-- Swamp Moth/Battle Pet
	"P:35.00,38.00:403:Level 14",	-- Parrot/Battle Pet
	"P:40.00,48.00:403:Level 14",	-- Parrot/Battle Pet
	"P:48.00,45.00:418:Level 14",	-- Water Snake/Battle Pet
	"P:14.60,35.80:420:Level 14",	-- Toad/Battle Pet
	"P:19.80,59.40:420:Level 14",	-- Toad/Battle Pet
	"P:38.60,41.20:420:Level 14",	-- Toad/Battle Pet
	"P:75.40,28.80:420:Level 14",	-- Toad/Battle Pet
	"P:81.80,75.00:420:Level 14",	-- Toad/Battle Pet
	"P:27.60,45.00:422:Level 14",	-- Moccasin/Battle Pet
	"P:30.60,55.40:422:Level 14",	-- Moccasin/Battle Pet
	"P:32.80,38.80:422:Level 14",	-- Moccasin/Battle Pet
	"P:42.60,50.00:422:Level 14",	-- Moccasin/Battle Pet
	"P:47.80,44.60:422:Level 14",	-- Moccasin/Battle Pet
	"P:58.60,43.40:422:Level 14",	-- Moccasin/Battle Pet
	"P:59.80,55.40:422:Level 14",	-- Moccasin/Battle Pet
	"P:62.20,36.80:422:Level 14",	-- Moccasin/Battle Pet
	"P:76.00,34.00:422:Level 14",	-- Moccasin/Battle Pet
	"P:78.20,40.60:422:Level 14",	-- Moccasin/Battle Pet
	"P:45.00,46.00:648:Level 14",	-- Huge Toad/Battle Pet
	--rares
	"R:18.00,69.80:5348",	-- Dreamwatcher Forktongue
	"R:78.60,85.00:14446",	-- Fingat
	"R:90.20,70.60:14447::90.20,63.80",	-- Gilmorian
	"R:30.40,46.40:1063",	-- Jade
	"R:59.40,28.20:763::66.50,27.00:63.80,18.60",	-- Lost One Chieftain
	"R:63.60,27.00:1106",	-- Lost One Cook
	"R:50.60,42.00:14448",	-- Molt Thorn
	"R:28.00,63.60:50882:Level 53",	-- Chupacabros
	"R:17.00,47.20:51052:Level 52",	-- Gib the Banana-Hoarder
	"R:40.60,34.40:50790:Level 53",	-- Ionis
	"R:78.00,26.80:50837:Level 52",	-- Kash
	"R:81.00,31.00:50837:Level 52",	-- Kash
	"R:18.00,37.80:50903:Level 54",	-- Orlix the Swamplord
	"R:56.20,55.80:50738:Level 52",	-- Shimmerscale
	"R:69.80,67.00:50797:Level 53",	-- Yukiko
	"R:81.60,16.80:50886:Level 54",	-- Seawing
	"R:85.80,25.00:50886:Level 54",	-- Seawing
	"R:90.00,31.20:50886:Level 54",	-- Seawing
	"R:91.00,41.40:50886:Level 54",	-- Seawing
	--achievements
	"A:76.60,41.40:6603:11:3 - Level 16 Pets",	-- Taming Eastern Kingdoms/Everessa
	"A:35.00,38.00:1206:11",	--"To All The Squirrels I've Loved Before, Parrot"
	"A:40.00,48.00:1206:11",	--"To All The Squirrels I've Loved Before, Parrot"
	"A:48.00,45.00:2556:2",	--"Pest Control, Water Snake"
	"A:45.00,46.00:2557:7",	--"To All The Squirrels Who Shared My Life"
	"A:14.00,36.00:782:1",	--"Exploration Eastern Kingdom"
	"A:30.00,33.00:782:2",	--"Exploration Eastern Kingdom"
	"A:24.00,50.00:782:3",	--"Exploration Eastern Kingdom"
	"A:39.00,42.00:782:4",	--"Exploration Eastern Kingdom"
	"A:46.00,54.00:782:5",	--"Exploration Eastern Kingdom"
	"A:65.00,54.00:782:6",	--"Exploration Eastern Kingdom"
	"A:66.00,73.00:782:7",	--"Exploration Eastern Kingdom"
	"A:84.00,36.00:782:8",	--"Exploration Eastern Kingdom"
	"A:73.00,13.00:782:9",	--"Exploration Eastern Kingdom"
	"A:81.00,87.00:782:10",	--"Exploration Eastern Kingdom"
	"A:18.00,65.00:782:11",	--"Exploration Eastern Kingdom"
	"A:68.00,36.00:782:12")	--"Exploration Eastern Kingdom"

tappend(points["Silverpine:0"],
	--battle pets
	"P:42.60,84.60:420:Level 3-5",	-- Toad/Battle Pet
	"P:47.60,85.00:420:Level 3-5",	-- Toad/Battle Pet
	"P:57.20,29.00:420:Level 3-5",	-- Toad/Battle Pet
	"P:60.00,37.80:420:Level 3-5",	-- Toad/Battle Pet
	"P:64.80,13.00:420:Level 3-5",	-- Toad/Battle Pet
	"P:49.00,81.80:455:Level 3-5",	-- Blighted Squirrel/Battle Pet
	"P:49.20,26.60:455:Level 3-5",	-- Blighted Squirrel/Battle Pet
	"P:51.20,40.00:455:Level 3-5",	-- Blighted Squirrel/Battle Pet
	"P:52.80,76.20:455:Level 3-5",	-- Blighted Squirrel/Battle Pet
	"P:53.40,52.20:455:Level 3-5",	-- Blighted Squirrel/Battle Pet
	"P:56.20,11.40:455:Level 3-5",	-- Blighted Squirrel/Battle Pet
	"P:63.20,07.80:455:Level 3-5",	-- Blighted Squirrel/Battle Pet
	"P:45.60,28.80:628:Level 3-5",	-- Infected Fawn/Battle Pet
	"P:49.00,86.80:628:Level 3-5",	-- Infected Fawn/Battle Pet
	"P:53.60,42.20:628:Level 3-5",	-- Infected Fawn/Battle Pet
	"P:54.20,13.00:628:Level 3-5",	-- Infected Fawn/Battle Pet
	--rares
	"R:62.60,68.40:47009::59.40,61.40",	-- Aquarius the Unbound
	"R:43.60,50.80:46992",	-- Berard the Moon-Crazed
	"R:48.60,24.60:47003",	-- Bolgaff
	"R:46.80,69.80:47012",	-- Effritus
	"R:59.40,33.80:47008",	-- Fenwick Thatros
	"R:57.80,16.80:12431",	-- Gorefang
	"R:60.20,09.60:12431",	-- Gorefang
	"R:38.60,14.80:12433::35.60,17.40",	-- Krethis the Shadowspinner
	"R:49.60,36.60:47015::46.80,24.00:52.60,19.40",	-- Lost Son of Arugal
	"R:55.60,22.60:47015::56.20,33.60:55.20,44.80",	-- Lost Son of Arugal
	"R:54.40,54.20:47015::55.60,63.00:55.20,71.80",	-- Lost Son of Arugal
	"R:56.80,76.80:47015::54.80,81.60",	-- Lost Son of Arugal
	"R:53.40,24.80:46981::53.00,28.00",	-- Nightlash
	"R:50.20,60.20:47023",	-- Thule Ravenclaw
	"R:58.80,66.80:47009:Level 16",	-- Aquarius the Unbound
	"R:58.60,62.00:47009:Level 16",	-- Aquarius the Unbound
	"R:62.20,60.20:47009:Level 16",	-- Aquarius the Unbound
	"R:62.00,68.60:47009:Level 16",	-- Aquarius the Unbound
	"R:43.60,50.80:46992:Level 14",	-- Berard the Moon-Crazed
	"R:49.60,68.00:50814:Level 18",	-- Corpsefeeder
	"R:46.80,69.80:47012:Level 18",	-- Effritus
	"R:59.40,33.40:47008:Level 15",	-- Fenwick Thatros
	"R:64.60,47.00:50949:Level 16",	-- Finn's Gambit
	"R:49.60,29.40:51026:Level 12",	-- Gnath
	"R:60.60,05.40:50330:Level 10",	-- Kree
	"R:59.80,41.60:51037:Level 14",	-- Lost Gilnean Wardog
	"R:56.00,79.60:47015:Level 19",	-- Lost Son of Arugal
	"R:55.20,67.60:47015:Level 19",	-- Lost Son of Arugal
	"R:55.00,50.40:47015:Level 19",	-- Lost Son of Arugal
	"R:56.20,35.20:47015:Level 19",	-- Lost Son of Arugal
	"R:53.20,20.00:47015:Level 19",	-- Lost Son of Arugal
	"R:48.80,19.20:47015:Level 19",	-- Lost Son of Arugal
	"R:46.00,27.80:47015:Level 19",	-- Lost Son of Arugal
	"R:49.80,35.00:47015:Level 19",	-- Lost Son of Arugal
	--achievements
	"A:49.00,78.00:769:1",	--"Exploration Eastern Kingdom"
	"A:57.00,34.00:769:2",	--"Exploration Eastern Kingdom"
	"A:51.00,65.00:769:3",	--"Exploration Eastern Kingdom"
	"A:35.00,13.00:769:4",	--"Exploration Eastern Kingdom"
	"A:39.00,28.00:769:5",	--"Exploration Eastern Kingdom"
	"A:66.00,27.00:769:6",	--"Exploration Eastern Kingdom"
	"A:52.00,25.00:769:7",	--"Exploration Eastern Kingdom"
	"A:43.00,41.00:769:8",	--"Exploration Eastern Kingdom"
	"A:55.00,47.00:769:9",	--"Exploration Eastern Kingdom"
	"A:47.00,53.00:769:10",	--"Exploration Eastern Kingdom"
	"A:61.00,64.00:769:11",	--"Exploration Eastern Kingdom"
	"A:44.00,68.00:769:12",	--"Exploration Eastern Kingdom"
	"A:57.00,08.00:769:13",	--"Exploration Eastern Kingdom"
	"A:31.00,18.00:769:14",	--"Exploration Eastern Kingdom"
	"A:44.00,20.00:769:15")	--"Exploration Eastern Kingdom"

tappend(points["BlastedLands:0"],
	--battle pets
	"P:33.80,75.00:415:Level 16",	-- Fire Beetle/Battle Pet
	"P:37.60,49.40:415:Level 16",	-- Fire Beetle/Battle Pet
	"P:45.60,79.80:415:Level 16",	-- Fire Beetle/Battle Pet
	"P:45.80,19.60:415:Level 16",	-- Fire Beetle/Battle Pet
	"P:51.20,28.80:415:Level 16",	-- Fire Beetle/Battle Pet
	"P:60.60,79.00:415:Level 16",	-- Fire Beetle/Battle Pet
	"P:64.60,30.40:415:Level 16",	-- Fire Beetle/Battle Pet
	"P:68.80,62.60:415:Level 16",	-- Fire Beetle/Battle Pet
	"P:48.00,25.00:414:Level 16",	-- Scorpid/Battle Pet
	"P:66.20,36.00:414:Level 16",	-- Scorpid/Battle Pet
	"P:71.80,48.00:414:Level 16",	-- Scorpid/Battle Pet
	"P:60.60,72.00:414:Level 16",	-- Scorpid/Battle Pet
	"P:39.60,75.40:414:Level 16",	-- Scorpid/Battle Pet
	"P:57.00,62.80:416:Level 16",	-- Scorpling/Battle Pet
	"P:58.40,57.80:416:Level 16",	-- Scorpling/Battle Pet
	"P:65.40,60.80:416:Level 16",	-- Scorpling/Battle Pet
	--rares
	"R:73.60,55.60:8298",	-- Akubar the Seer
	"R:31.00,70.60:45260",	-- Blackleaf
	"R:60.60,75.40:45258",	-- Cassia the Slitherqueen
	"R:47.20,13.40:8301",	-- Clack the Reaver
	"R:52.80,27.60:8302",	-- Deatheye
	"R:37.00,29.60:8304",	-- Dreadscorn
	"R:55.20,38.40:8303",	-- Grunter
	"R:46.60,39.20:8297",	-- Magronos the Unyielding
	"R:46.40,26.20:8296",	-- Mojo the Twisted
	"R:60.60,29.80:45257",	-- Mordak Nightbender
	"R:32.40,44.40:45262",	-- Narixxus the Doombringer
	"R:49.60,35.60:8300",	-- Ravage
	"R:64.20,39.60:8299::62.00,31.20:59.60,38.20",	-- Spiteflayer
	"R:54.80,54.60:7846::57.80,49.00",	-- Teremus the Devourer
	"R:51.60,51.60:7846::53.20,45.00",	-- Teremus the Devourer
	"R:31.00,70.60:45260:Level 59",	-- Blackleaf
	"R:60.60,29.80:45257:Level 55",	-- Mordak Nightbender
	"R:32.40,44.40:45262:Level 60",	-- Narixxus the Doombringer
	--achievements
	"A:43.00,14.00:766:1",	--"Exploration Eastern Kingdom"
	"A:53.00,17.00:766:2",	--"Exploration Eastern Kingdom"
	"A:61.00,19.00:766:3",	--"Exploration Eastern Kingdom"
	"A:60.00,29.00:766:4",	--"Exploration Eastern Kingdom"
	"A:54.00,53.00:766:5",	--"Exploration Eastern Kingdom"
	"A:37.00,29.00:766:6",	--"Exploration Eastern Kingdom"
	"A:45.00,39.00:766:7",	--"Exploration Eastern Kingdom"
	"A:34.00,48.00:766:8",	--"Exploration Eastern Kingdom"
	"A:44.00,26.00:766:9",	--"Exploration Eastern Kingdom"
	"A:68.00,33.00:766:10",	--"Exploration Eastern Kingdom"
	"A:50.00,72.00:766:11",	--"Exploration Eastern Kingdom"
	"A:45.00,85.00:766:12",	--"Exploration Eastern Kingdom"
	"A:64.00,74.00:766:13",	--"Exploration Eastern Kingdom"
	"A:37.00,75.00:766:14",	--"Exploration Eastern Kingdom"
	"A:44.00,64.90:5478:33:Caught between 9pm and 9am Server Time",	--"The Limnologist"
	"A:46.80,90.00:5479:5",	--"The Oceanographer"
	"A:46.80,90.00:5479:16",	--"The Oceanographer"
	"A:46.80,90.00:5479:28:Caught during Summer Months",	--"The Oceanographer"
	"A:44.00,64.90:5479:29",	--"The Oceanographer"
	"A:44.00,64.90:5479:30",	--"The Oceanographer"
	"A:46.80,90.00:5479:31:Caught during Winter Months",	--"The Oceanographer"
	"A:48.00,25.00:2556:14")	--"Pest Control, Scorpid"

tappend(points["BladesEdgeMountains:0"],
	-- Battle Pets
	"P:28.20,70.20:414:Level 18-19",	-- Scorpid/Battle Pet
	"P:43.80,75.60:414:Level 18-19",	-- Scorpid/Battle Pet
	"P:48.80,48.80:414:Level 18-19",	-- Scorpid/Battle Pet
	"P:58.20,13.20:414:Level 18-19",	-- Scorpid/Battle Pet
	"P:59.60,75.00:414:Level 18-19",	-- Scorpid/Battle Pet
	"P:68.80,65.40:414:Level 18-19",	-- Scorpid/Battle Pet
	"P:69.80,35.20:414:Level 18-19",	-- Scorpid/Battle Pet
	"P:44.20,67.80:482:Level 22",	-- Rock Viper/Battle Pet
	"P:49.80,17.60:482:Level 22",	-- Rock Viper/Battle Pet
	"P:51.20,48.80:482:Level 22",	-- Rock Viper/Battle Pet
	"P:56.00,31.60:482:Level 22",	-- Rock Viper/Battle Pet
	"P:29.60,67.40:482:Level 22",	-- Rock Viper/Battle Pet
	"P:74.60,23.60:482:Level 22",	-- Rock Viper/Battle Pet
	"P:70.60,20.00:528:Level 18-19",	-- Scalded Basilisk Hatchling/Battle Pet
	"P:71.80,24.60:528:Level 18-19",	-- Scalded Basilisk Hatchling/Battle Pet
	"P:72.80,23.00:528:Level 18-19",	-- Scalded Basilisk Hatchling/Battle Pet
	"P:75.00,17.60:528:Level 18-19",	-- Scalded Basilisk Hatchling/Battle Pet
	"P:34.80,88.00:637:Level 18-19",	-- Skittering Cavern Crawler/Battle Pet
	"P:51.80,84.40:637:Level 18-19",	-- Skittering Cavern Crawler/Battle Pet
	"P:52.20,92.20:637:Level 18-19",	-- Skittering Cavern Crawler/Battle Pet
	"P:59.60,73.20:1164:Level 18-20",	-- Cogblade Raptor/Battle Pet
	"P:60.00,65.00:1164:Level 18-20",	-- Cogblade Raptor/Battle Pet
	"P:68.00,58.60:1164:Level 18-20",	-- Cogblade Raptor/Battle Pet
	"P:69.00,71.40:1164:Level 18-20",	-- Cogblade Raptor/Battle Pet
	-- Achievements
	"A:52.00,12.00:865:1",	--"Exploration Outland"
	"A:70.00,42.00:865:2",	--"Exploration Outland"
	"A:40.00,53.00:865:3",	--"Exploration Outland"
	"A:55.00,27.00:865:4",	--"Exploration Outland"
	"A:46.00,77.00:865:5",	--"Exploration Outland"
	"A:77.00,24.00:865:6",	--"Exploration Outland"
	"A:53.00,43.00:865:7",	--"Exploration Outland"
	"A:64.00,14.00:865:21",	--"Exploration Outland"
	"A:64.00,67.00:865:8",	--"Exploration Outland"
	"A:73.00,41.00:865:9",	--"Exploration Outland"
	"A:28.00,81.00:865:10",	--"Exploration Outland"
	"A:36.00,39.00:865:11",	--"Exploration Outland"
	"A:39.00,20.00:865:12",	--"Exploration Outland"
	"A:65.00,24.00:865:13",	--"Exploration Outland"
	"A:49.00,70.00:865:14",	--"Exploration Outland"
	"A:74.00,61.00:865:15",	--"Exploration Outland"
	"A:31.00,28.00:865:16",	--"Exploration Outland"
	"A:65.00,53.00:865:17",	--"Exploration Outland"
	"A:62.00,34.00:865:18",	--"Exploration Outland"
	"A:72.00,23.00:865:19",	--"Exploration Outland"
	"A:37.00,64.00:865:20",	--"Exploration Outland"
	"A:52.00,56.00:865:22",	--"Exploration Outland"
	"A:35.00,76.00:865:23",	--"Exploration Outland"
	"A:64.00,31.00:865:24",	--"Exploration Outland"
	"A:71.00,61.00:865:25",	--"Exploration Outland"
	"A:28.00,48.00:865:26",	--"Exploration Outland"
	"R:29.00,68.80:18692::31.20,70.20:29.20,63.60",	--"Hemathion"
	"R:32.20,53.80:18692::30.60,48.40:29.80,43.60",	--"Hemathion"
	"R:73.60,33.40:18690::69.20,30.00:7.800,24.60",	--"Morcrush"
	"R:62.40,52.40:18690::68.60,46.60:71.00,42.00",	--"Morcrush"
	"R:68.60,73.80:18690::67.60,63.60",	--"Morcrush"
	"R:60.20,24.60:18690::60.60,20.40",	--"Morcrush"
	"R:56.20,35.00:18693::57.60,29.60:56.40,24.20",	--"Speaker Mar'grom"
	"R:42.40,81.80:18693::47.00,75.80",	--"Speaker Mar'grom"
	"R:41.40,54.20:18693::41.00,49.80",	--"Speaker Mar'grom"
	"R:64.40,19.20:18693::66.80,26.8")	--"Speaker Mar'grom"

tappend(points["Zangarmarsh:0"],
	"P:18.20,54.20:387:Level 18",	-- Snake/Battle Pet
	"P:27.00,23.00:387:Level 18",	-- Snake/Battle Pet
	"P:27.60,51.20:387:Level 18",	-- Snake/Battle Pet
	"P:53.60,53.20:387:Level 18",	-- Snake/Battle Pet
	"P:70.60,59.80:387:Level 18",	-- Snake/Battle Pet
	"P:77.00,45.00:387:Level 18",	-- Snake/Battle Pet
	"P:82.00,85.00:387:Level 18",	-- Snake/Battle Pet
	"P:08.60,72.70:419:Level 18",	-- Small Frog/Battle Pet
	"P:79.00,69.00:419:Level 18",	-- Small Frog/Battle Pet
	"P:80.20,65.80:419:Level 18",	-- Small Frog/Battle Pet
	"P:17.80,47.40:515:Level 18. Rare Spawn",	-- Sporeling Sprout/Battle Pet
	"P:19.40,54.00:515:Level 18. Rare Spawn",	-- Sporeling Sprout/Battle Pet
	"A:17.20,50.40:6604:2:3 - Level 21 Pets",	-- Taming Outland/Ras'an
	"A:79.00,69.00:1206:8",	--"To All The Squirrels I've Loved Before, Small Frog"
	"A:08.60,72.70:1206:8",	--"To All The Squirrels I've Loved Before, Small Frog"
	"A:80.20,65.80:1206:8",	--"To All The Squirrels I've Loved Before, Small Frog"
	"A:77.00,45.00:2556:10",	--"Pest Control, Snake"
	"A:82.00,85.00:2556:10",	--"Pest Control, Snake"
	"A:17.00,23.00:863:2",	--"Exploration Outland"
	"A:18.00,07.00:863:13",	--"Exploration Outland"
	"A:61.00,41.00:863:14",	--"Exploration Outland"
	"A:79.00,64.00:863:1",	--"Exploration Outland"
	"A:70.00,80.00:863:18",	--"Exploration Outland"
	"A:46.00,63.00:863:3",	--"Exploration Outland"
	"A:29.00,33.00:863:4",	--"Exploration Outland"
	"A:22.00,40.00:863:5",	--"Exploration Outland"
	"A:42.00,30.00:863:15",	--"Exploration Outland"
	"A:29.00,61.00:863:6",	--"Exploration Outland"
	"A:18.00,50.00:863:12",	--"Exploration Outland"
	"A:68.00,48.00:863:7",	--"Exploration Outland"
	"A:81.00,38.00:863:8",	--"Exploration Outland"
	"A:58.00,62.00:863:9",	--"Exploration Outland"
	"A:14.00,62.00:863:16",	--"Exploration Outland"
	"A:47.00,53.00:863:10",	--"Exploration Outland"
	"A:83.00,82.00:863:11",	--"Exploration Outland"
	"A:31.00,50.00:863:17",	--"Exploration Outland"
	"A:77.70,65.70:5478:40",	--"The Limnologist"
	"A:77.70,65.70:5478:42",	--"The Limnologist"
	"A:27.40,48.00:5479:15",	--"The Oceanographer"
	"R:22.80,28.40:18682::26.60,28.60:27.60,21.00",	--"Bog Lurker"
	"R:40.20,62.80:18682",	--"Bog Lurker"
	"R:84.60,79.20:18682::86.20,90.20",	--"Bog Lurker"
	"R:26.60,46.60:18681::25.80,42.60:25.40,37.60",	--"Coilfang Emissary"
	"R:60.00,36.80:18681::64.80,41.40:63.60,44.00",	--"Coilfang Emissary"
	"R:63.60,65.40:18681::62.00,69.60:64.20,69.20",	--"Coilfang Emissary"
	"R:70.60,72.40:18681::74.80,77.00:73.60,82.40",	--"Coilfang Emissary"
	"R:11.20,55.60:18680::14.00,44.60:18.60,31.40",	--"Marticar"
	"R:38.60,34.80:18680::47.60,30.20:55.20,34.20",	--"Marticar"
	"R:70.40,37.00:18680::76.60,51.20:79.60,53.60")	--"Marticar"

tappend(points["StranglethornJungle:0"],
	--battle pets
	"P:83.00,35.00:387:Level 7-8",	-- Snake/Battle Pet
	"P:19.00,25.40:401:Level 7-8",	-- Strand Crab/Battle Pet
	"P:20.20,42.20:401:Level 7-8",	-- Strand Crab/Battle Pet
	"P:28.80,35.60:401:Level 7-8",	-- Strand Crab/Battle Pet
	"P:36.00,49.60:401:Level 7-8",	-- Strand Crab/Battle Pet
	"P:38.80,19.20:401:Level 7-8",	-- Strand Crab/Battle Pet
	"P:46.00,56.80:401:Level 7-8",	-- Strand Crab/Battle Pet
	"P:51.40,44.60:401:Level 7-8",	-- Strand Crab/Battle Pet
	"P:51.80,28.00:401:Level 7-8",	-- Strand Crab/Battle Pet
	"P:33.20,28.80:405:Level 7-8",	-- Tree Python/Battle Pet
	"P:40.80,47.40:405:Level 7-8",	-- Tree Python/Battle Pet
	"P:44.00,26.00:405:Level 7-8",	-- Tree Python/Battle Pet
	"P:58.20,40.80:405:Level 7-8",	-- Tree Python/Battle Pet
	"P:63.80,52.40:405:Level 7-8",	-- Tree Python/Battle Pet
	"P:64.20,67.80:405:Level 7-8",	-- Tree Python/Battle Pet
	"P:64.80,39.00:405:Level 7-8",	-- Tree Python/Battle Pet
	"P:27.80,20.00:406:Level 7-8",	-- Beetle/Battle Pet
	"P:32.80,35.60:406:Level 7-8",	-- Beetle/Battle Pet
	"P:47.80,47.80:406:Level 7-8",	-- Beetle/Battle Pet
	"P:58.20,50.20:406:Level 7-8",	-- Beetle/Battle Pet
	"P:61.60,35.40:406:Level 7-8",	-- Beetle/Battle Pet
	"P:78.40,36.00:406:Level 7-8",	-- Beetle/Battle Pet
	"P:27.80,19.60:407:Level 7-8",	-- Forest Spiderling/Battle Pet
	"P:38.80,43.40:407:Level 7-8",	-- Forest Spiderling/Battle Pet
	"P:46.40,29.00:407:Level 7-8",	-- Forest Spiderling/Battle Pet
	"P:50.60,57.60:407:Level 7-8",	-- Forest Spiderling/Battle Pet
	"P:52.80,20.40:407:Level 7-8",	-- Forest Spiderling/Battle Pet
	"P:56.60,35.00:407:Level 7-8",	-- Forest Spiderling/Battle Pet
	"P:58.60,49.80:407:Level 7-8",	-- Forest Spiderling/Battle Pet
	"P:36.40,34.80:408:Level 7-8",	-- Lizard Hatchling/Battle Pet
	"P:40.00,23.60:408:Level 7-8",	-- Lizard Hatchling/Battle Pet
	"P:44.40,45.00:408:Level 7-8",	-- Lizard Hatchling/Battle Pet
	"P:50.40,57.20:408:Level 7-8",	-- Lizard Hatchling/Battle Pet
	"P:57.20,23.60:408:Level 7-8",	-- Lizard Hatchling/Battle Pet
	"P:58.80,43.00:408:Level 7-8",	-- Lizard Hatchling/Battle Pet
	"P:62.60,69.80:408:Level 7-8",	-- Lizard Hatchling/Battle Pet
	"P:64.80,52.00:408:Level 7-8",	-- Lizard Hatchling/Battle Pet
	"P:34.80,40.00:409:Level 7-8",	-- Polly/Battle Pet
	"P:37.60,30.80:409:Level 7-8",	-- Polly/Battle Pet
	"P:42.80,47.00:409:Level 7-8",	-- Polly/Battle Pet
	"P:45.80,23.60:409:Level 7-8",	-- Polly/Battle Pet
	"P:47.60,62.80:409:Level 7-8",	-- Polly/Battle Pet
	"P:52.60,27.40:409:Level 7-8",	-- Polly/Battle Pet
	"P:56.40,30.40:409:Level 7-8",	-- Polly/Battle Pet
	"P:57.60,21.80:409:Level 7-8",	-- Polly/Battle Pet
	"P:57.80,68.60:409:Level 7-8",	-- Polly/Battle Pet
	"P:58.80,44.60:409:Level 7-8",	-- Polly/Battle Pet
	"P:61.60,53.80:409:Level 7-8",	-- Polly/Battle Pet
	"P:83.00,35.00:418:Level 7-8",	-- Water Snake/Battle Pet
	"P:68.00,49.00:424:Level 7-8",	-- Roach/Battle Pet
	"P:83.00,35.00:635:Level 7-8",	-- Adder/Battle Pet
	--rares
	"R:43.60,43.20:14487::41.60,40.40",	-- Gluggl
	"R:67.20,31.40:11383",	-- High Priestess Hai'watna
	"R:54.60,31.00:51662",	-- Mahamba
	"R:62.80,74.60:51658",	-- Mogh the Dead
	"R:36.80,28.40:51663",	-- Pogeyan
	"R:46.80,45.40:14488::47.60,55.20:45.40,51.00",	-- Roloch
	"R:47.80,31.40:51661",	-- Tsul'Kalu
	--achievements
	"A:83.00,35.00:2556:4",	--"Pest Control, Adder"
	"A:68.00,49.00:2556:9",	--"Pest Control, Roach"
	"A:83.00,35.00:2556:2",	--"Pest Control, Water Snake"
	"A:83.00,35.00:2556:10",	--"Pest Control, Snake"
	"A:39.00,50.00:781:1",	--"Exploration Eastern Kingdom"
	"A:60.00,55.00:781:2",	--"Exploration Eastern Kingdom"
	"A:64.00,40.00:781:3",	--"Exploration Eastern Kingdom"
	"A:52.00,66.00:781:4",	--"Exploration Eastern Kingdom"
	"A:19.00,24.00:781:5",	--"Exploration Eastern Kingdom"
	"A:43.00,22.00:781:6",	--"Exploration Eastern Kingdom"
	"A:47.00,11.00:781:7",	--"Exploration Eastern Kingdom"
	"A:57.00,21.00:781:8",	--"Exploration Eastern Kingdom"
	"A:42.00,41.00:781:9",	--"Exploration Eastern Kingdom"
	"A:46.00,53.00:781:10",	--"Exploration Eastern Kingdom"
	"A:65.00,50.00 :781:11",	--"Exploration Eastern Kingdom"
	"A:51.00,33.00:781:12",	--"Exploration Eastern Kingdom"
	"A:34.00,36.00:781:13",	--"Exploration Eastern Kingdom"
	"A:29.00,42.00 :781:14",	--"Exploration Eastern Kingdom"
	"A:25.00,21.00:781:15",	--"Exploration Eastern Kingdom"
	"A:67.00,32.00:781:16",	--"Exploration Eastern Kingdom"
	"A:38.20,18.00:5478:22",	--"The Limnologist"
	"A:16.20,24.90:5479:11",	--"The Oceanographer"
	"A:54.60,26.00:5479:19")	--"The Oceanographer"

tappend(points["Netherstorm:0"],
	"P:22.40,35.80:385:Level 20. Joins the Battle",	-- Mouse/Battle Pet
	"P:23.60,44.40:385:Level 20. Joins the Battle",	-- Mouse/Battle Pet
	"P:65.40,39.60:385:Level 20. Joins the Battle",	-- Mouse/Battle Pet
	"P:57.80,35.00:385:Level 20. Joins the Battle",	-- Mouse/Battle Pet
	"P:31.40,59.00:385:Level 20. Joins the Battle",	-- Mouse/Battle Pet
	"P:51.20,59.00:385:Level 20. Joins the Battle",	-- Mouse/Battle Pet
	"P:54.60,24.80:385:Level 20. Joins the Battle",	-- Mouse/Battle Pet
	"P:34.80,77.60:385:Level 20. Joins the Battle",	-- Mouse/Battle Pet
	"P:35.80,76.60:459:Level 20. Joins the Battle",	-- Cat/Battle Pet
	"P:50.20,58.00:459:Level 20. Joins the Battle",	-- Cat/Battle Pet
	"P:32.40,58.00:459:Level 20. Joins the Battle",	-- Cat/Battle Pet
	"P:55.60,25.80:459:Level 20. Joins the Battle",	-- Cat/Battle Pet
	"P:24.60,43.40:459:Level 20. Joins the Battle",	-- Cat/Battle Pet
	"P:58.80,34.00:459:Level 20. Joins the Battle",	-- Cat/Battle Pet
	"P:65.40,38.60:459:Level 20. Joins the Battle",	-- Cat/Battle Pet
	"P:23.40,34.80:459:Level 20. Joins the Battle",	-- Cat/Battle Pet
	"P:22.80,73.00:521:Level 20",	-- Fledgling Nether Ray/Battle Pet
	"P:26.00,66.80:521:Level 20",	-- Fledgling Nether Ray/Battle Pet
	"P:28.20,41.20:521:Level 20",	-- Fledgling Nether Ray/Battle Pet
	"P:46.60,83.00:521:Level 20",	-- Fledgling Nether Ray/Battle Pet
	"P:57.80,62.80:521:Level 20",	-- Fledgling Nether Ray/Battle Pet
	"P:61.00,38.20:521:Level 20",	-- Fledgling Nether Ray/Battle Pet
	"P:65.00,68.40:521:Level 20",	-- Fledgling Nether Ray/Battle Pet
	"P:23.40,35.80:638:Level 20",	-- Nether Roach/Battle Pet
	"P:24.60,44.40:638:Level 20",	-- Nether Roach/Battle Pet
	"P:32.40,59.00:638:Level 20",	-- Nether Roach/Battle Pet
	"P:35.80,77.60:638:Level 20",	-- Nether Roach/Battle Pet
	"P:50.20,59.00:638:Level 20",	-- Nether Roach/Battle Pet
	"P:55.60,24.80:638:Level 20",	-- Nether Roach/Battle Pet
	"P:58.80,35.00:638:Level 20",	-- Nether Roach/Battle Pet
	"P:65.40,39.60:638:Level 20",	-- Nether Roach/Battle Pet
	"A:33.00,65.00:843:1",	--"Exploration Outland"
	"A:40.00,75.00:843:10",	--"Exploration Outland"
	"A:72.00,40.00:843:11",	--"Exploration Outland"
	"A:45.00,13.00:843:18",	--"Exploration Outland"
	"A:45.00,54.00:843:22",	--"Exploration Outland"
	"A:55.00,42.00:843:19",	--"Exploration Outland"
	"A:37.00,25.00:843:21",	--"Exploration Outland"
	"A:22.00,56.00:843:17",	--"Exploration Outland"
	"A:26.00,38.00:843:5",	--"Exploration Outland"
	"A:22.00,70.00:843:2",	--"Exploration Outland"
	"A:48.00,84.00:843:3",	--"Exploration Outland"
	"A:59.00,67.00:843:4",	--"Exploration Outland"
	"A:62.00,39.00:843:6",	--"Exploration Outland"
	"A:49.00,18.00:843:13",	--"Exploration Outland"
	"A:32.00,56.00:843:14",	--"Exploration Outland"
	"A:54.00,25.00:843:7",	--"Exploration Outland"
	"A:29.00,15.00:843:20",	--"Exploration Outland"
	"A:56.00,78.00:843:15",	--"Exploration Outland"
	"A:71.00,65.00:843:8",	--"Exploration Outland"
	"A:31.00,76.00:843:9",	--"Exploration Outland"
	"A:44.00,36.00:843:16",	--"Exploration Outland"
	"A:56.00,85.00:843:12",	--"Exploration Outland"
	"R:59.80,67.0:18697::59.60,62.60",	--"Chief Engineer Lorthander"
	"R:26.80,36.40:18697::26.20,44.20",	--"Chief Engineer Lorthander"
	"R:48.20,81.60:18697",	--"Chief Engineer Lorthander"
	"R:58.60,29.20:18697",	--"Chief Engineer Lorthander"
	"R:28.20,72.20:18698::22.80,76.20:19.80,70.20",	--"Ever-Core the Punisher"
	"R:24.00,38.00:18698::27.80,42.00:30.80,41.80",	--"Ever-Core the Punisher"
	"R:62.80,48.00:18698::68.20,42.80:67.00,35.40",	--"Ever-Core the Punisher"
	"R:24.60,64.40:18698::28.00,65.20",	--"Ever-Core the Punisher"
	"R:61.40,32.20:18698::57.60,39.60",	--"Ever-Core the Punisher"
	"R:22.80,80.40:20932::44.40,76.20:42.80,69.20",	--"Nuramoc"
	"R:54.20,56.80:20932::61.20,59.60:67.60,61.0",	--"Nuramoc"
	"R:35.00,31.60:20932::36.00,20.80")	--"Nuramoc"

tappend(points["StonetalonMountains:0"],
	--battle pets
	"P:40.20,66.00:417:Level 5",	-- Rat/Battle Pet
	"P:42.20,45.40:417:Level 5",	-- Rat/Battle Pet
	"P:44.60,32.80:417:Level 5",	-- Rat/Battle Pet
	"P:75.80,77.60:417:Level 5",	-- Rat/Battle Pet
	"P:41.00,22.00:378:Level 5-6",	-- Rabbit/Battle Pet
	"P:49.00,74.60:378:Level 5-6",	-- Rabbit/Battle Pet
	"P:50.60,61.20:378:Level 5-6",	-- Rabbit/Battle Pet
	"P:51.20,49.40:378:Level 5-6",	-- Rabbit/Battle Pet
	"P:63.60,61.60:378:Level 5-6",	-- Rabbit/Battle Pet
	"P:63.80,83.60:378:Level 5-6",	-- Rabbit/Battle Pet
	"P:72.80,49.60:378:Level 5-6",	-- Rabbit/Battle Pet
	"P:75.80,66.80:378:Level 5-6",	-- Rabbit/Battle Pet
	"P:80.00,84.80:378:Level 5-6",	-- Rabbit/Battle Pet
	"P:57.40,74.20:412:Level 5-6",	-- Spider/Battle Pet
	"P:63.60,53.60:472:Level 5-6",	-- Rabid Nut Varmint 5000/Battle Pet
	"P:66.40,59.60:472:Level 5-6",	-- Rabid Nut Varmint 5000/Battle Pet
	"P:70.00,59.20:472:Level 5-6",	-- Rabid Nut Varmint 5000/Battle Pet
	"P:41.00,20.00:487:Level 5-6",	-- Alpine Chipmunk/Battle Pet
	"P:67.00,43.00:487:Level 5-6",	-- Alpine Chipmunk/Battle Pet
	"P:45.60,47.60:488:Level 5-6",	-- Coral Snake/Battle Pet
	"P:61.80,50.20:488:Level 5-6",	-- Coral Snake/Battle Pet
	"P:62.00,68.60:488:Level 5-6",	-- Coral Snake/Battle Pet
	"P:73.20,55.00:488:Level 5-6",	-- Coral Snake/Battle Pet
	"P:57.00,72.40:506:Level 5-6",	-- Venomspitter Hatchling/Battle Pet
	"P:41.00,22.00:633:Level 5-6",	-- Mountain Skunk/Battle Pet
	"P:62.00,62.00:633:Level 5-6",	-- Mountain Skunk/Battle Pet
	"P:68.00,85.00:633:Level 5-6",	-- Mountain Skunk/Battle Pet
	--rares
	"R:41.80,18.80:5915",	-- Brother Ravenoak
	"R:48.60,73.60:4066",	-- Nal'taszar
	"R:40.60,71.80:5930",	-- Sister Riven
	"R:50.20,40.80:5928",	-- Sorrow Wing
	"R:64.60,45.20:5932",	-- Taskmaster Whipfang
	"R:49.20,65.80:50812:Level 26",	-- Arae
	"R:44.80,55.80:50884:Level 29",	-- Dustflight the Cowardly
	"R:76.20,91.00:50825:Level 25",	-- Feras
	"R:82.20,79.20:50986:Level 26",	-- Goldenback
	"R:54.60,74.80:50759:Level 27",	-- Iriss the Widow
	"R:74.60,73.20:51062:Level 28",	-- Khep-Re
	"R:59.80,64.00:50343:Level 25",	-- Quall
	"R:58.80,86.60:50786:Level 27",	-- Sparkwing
	"R:44.40,49.20:50874:Level 28",	-- Tenok
	"R:39.80,46.20:50895:Level 29",	-- Volux
	--achievements
	"A:41.00,22.00:1206:12",	--"To All The Squirrels I've Loved Before, Rabbit"
	"A:41.00,22.00:2557:9",	--"To All The Squirrels Who Shared My Life"
	"A:62.00,62.00:2557:9",	--"To All The Squirrels Who Shared My Life"
	"A:68.00,85.00:2557:9",	--"To All The Squirrels Who Shared My Life"
	"A:41.00,20.00:5548:1",	--"To All the Squirrels Who Cared for Me"
	"A:67.00,43.00:5548:1",	--"To All the Squirrels Who Cared for Me"
	"A:41.00,38.00:847:1",	--"Exploration Kalimdor"
	"A:66.00,63.00:847:2",	--"Exploration Kalimdor"
	"A:48.00,77.00:847:3",	--"Exploration Kalimdor"
	"A:39.00,31.00:847:4",	--"Exploration Kalimdor"
	"A:77.00,77.00:847:5",	--"Exploration Kalimdor"
	"A:57.00,73.00:847:6",	--"Exploration Kalimdor"
	"A:58.00,55.00:847:7",	--"Exploration Kalimdor"
	"A:46.00,35.00:847:8",	--"Exploration Kalimdor"
	"A:69.00,92.00:847:9",	--"Exploration Kalimdor"
	"A:65.00,82.00:847:10",	--"Exploration Kalimdor"
	"A:62.00,89.00:847:11",	--"Exploration Kalimdor"
	"A:77.00,90.00:847:12",	--"Exploration Kalimdor"
	"A:67.00,55.00:847:13",	--"Exploration Kalimdor"
	"A:49.00,62.00:847:14",	--"Exploration Kalimdor"
	"A:34.00,69.00:847:15",	--"Exploration Kalimdor"
	"A:49.00,47.00:847:16",	--"Exploration Kalimdor"
	"A:43.00,24.00:847:17")	--"Exploration Kalimdor"
	
tappend(points["Barrens:0"],
	--battle pets
	"P:46.10,60.50:386:Level 3",	-- Prairie Dog/Battle Pet
	"P:49.90,46.40:386:Level 3",	-- Prairie Dog/Battle Pet
	"P:53.70,30.20:386:Level 3",	-- Prairie Dog/Battle Pet
	"P:37.30,46.00:419:Level 3",	-- Small Frog/Battle Pet
	"P:39.80,74.70:419:Level 3",	-- Small Frog/Battle Pet
	"P:56.00,80.00:419:Level 3",	-- Small Frog/Battle Pet
	"P:49.20,48.60:474:Level 3",	-- Cheetah Cub/Battle Pet
	"P:51.00,69.80:474:Level 3",	-- Cheetah Cub/Battle Pet
	"P:51.80,48.80:474:Level 3",	-- Cheetah Cub/Battle Pet
	"P:55.20,26.00:474:Level 3",	-- Cheetah Cub/Battle Pet
	"P:59.20,78.80:474:Level 3",	-- Cheetah Cub/Battle Pet
	"P:66.50,42.60:474:Level 3",	-- Cheetah Cub/Battle Pet
	"P:37.80,48.80:631:Level 3",	-- Emerald Boa/Battle Pet
	"P:38.80,70.20:631:Level 3",	-- Emerald Boa/Battle Pet
	"P:43.40,75.60:631:Level 3",	-- Emerald Boa/Battle Pet
	"P:55.60,82.40:631:Level 3",	-- Emerald Boa/Battle Pet
	"P:52.00,53.00:635:Level 3",	-- Adder/Battle Pet
	"P:55.00,24.00:635:Level 3",	-- Adder/Battle Pet
	"P:66.00,47.00:646:Level 3",	-- Chicken/Battle Pet
	"P:26.80,26.80:1157:Level 3-4",	-- Harpy Youngling/Battle Pet
	"P:28.60,33.00:1157:Level 3-4",	-- Harpy Youngling/Battle Pet
	"P:30.80,39.80:1157:Level 3-4",	-- Harpy Youngling/Battle Pet
	--rares
	"R:40.00,45.60:5837",	-- Stonearm
	"R:32.00,48.60:5837",	-- Stonearm
	"R:32.40,53.00:5837",	-- Stonearm
	"R:52.20,75.80:5838",	-- Brokespear
	"R:53.60,87.00:5838",	-- Brokespear
	"R:58.60,77.60:5838",	-- Brokespear
	"R:45.40,32.80:5865",	-- Dishu
	"R:45.00,52.40:5865",	-- Dishu
	"R:48.80,51.80:5865",	-- Dishu
	"R:52.80,49.80:5865",	-- Dishu
	"R:56.40,51.60:3270",	-- Elder Mystic Razorsnout
	"R:58.20,49.60:3270",	-- Elder Mystic Razorsnout
	"R:61.60,53.20:3270",	-- Elder Mystic Razorsnout
	"R:58.00,20.60:5836",	-- Engineer Whirleygig
	"R:57.60,20.40:5835",	-- Foreman Grills
	"R:40.00,74.60:3398",	-- Gesharahan
	"R:67.40,64.60:5828",	-- Humar the Pridelord
	"R:41.60,39.60:3470",	-- Rathorian
	"R:59.20,80.20:5841",	-- Rocklance
	"R:29.60,34.60:5830::25.60,33.40:27.60,27.40",	-- Sister Rathtalon
	"R:58.20,19.50:3295",	-- Sludge Anomaly
	"R:65.80,65.80:5831::65.60,59.40:63.40,63.60",	-- Swiftmane
	"R:65.20,28.60:5842",	-- Takk the Leaper
	"R:65.00,31.40:5842",	-- Takk the Leaper
	"R:63.40,36.60:5842",	-- Takk the Leaper
	"R:59.80,36.40:5842",	-- Takk the Leaper
	"R:58.80,38.80:5842",	-- Takk the Leaper
	"A:66.00,47.00:1206:3",	--"To All The Squirrels I've Loved Before, Chicken"
	"A:46.10,60.50:1206:21",	--"To All The Squirrels I've Loved Before, Prairie Dog"
	"A:49.90,46.40:1206:21",	--"To All The Squirrels I've Loved Before, Prairie Dog"
	"A:53.70,30.20:1206:21",	--"To All The Squirrels I've Loved Before, Prairie Dog"
	"A:47.00,66.00:1206:9",	--"To All The Squirrels I've Loved Before, Gazelle"
	"A:63.00,61.00:1206:9",	--"To All The Squirrels I've Loved Before, Gazelle"
	"A:55.80,40.90:1206:19",	--"To All The Squirrels I've Loved Before, Swine"
	"A:37.30,46.00:1206:8",	--"To All The Squirrels I've Loved Before, Small Frog"
	"A:39.80,74.70:1206:8",	--"To All The Squirrels I've Loved Before, Small Frog"
	"A:56.00,80.00:1206:8",	--"To All The Squirrels I've Loved Before, Small Frog"
	"A:52.00,53.00:2556:4",	--"Pest Control, Adder"
	"A:55.00,24.00:2556:4",	--"Pest Control, Adder"
	"A:66.00,13.00:750:1",	--"Exploration Kalimdor"
	"A:41.00,74.00:750:2",	--"Exploration Kalimdor"
	"A:58.00,19.00:750:4",	--"Exploration Kalimdor"
	"A:43.00,38.00:750:5",	--"Exploration Kalimdor"
	"A:29.00,35.00:750:6",	--"Exploration Kalimdor"
	"A:37.00,46.00:750:7",	--"Exploration Kalimdor"
	"A:54.00,40.00:750:8",	--"Exploration Kalimdor"
	"A:67.00,40.00:750:9",	--"Exploration Kalimdor"
	"A:55.00,50.00:750:10",	--"Exploration Kalimdor"
	"A:50.00,58.00:750:11",	--"Exploration Kalimdor"
	"A:55.00,80.00:750:12",	--"Exploration Kalimdor"
	"A:67.00,72.00:750:13",	--"Exploration Kalimdor"
	"A:69.00,80.00:750:14",	--"Exploration Kalimdor"
	"A:49.00,51.00:750:3",	--"Exploration Kalimdor"
	"A:68.00,73.50:1244:4",	--"Well Read"
	"A:68.40,69.10:1244:6",	--"Well Read"
	"A:67.10,73.40:1244:9",	--"Well Read"
	"A:66.90,74.60:1244:15",	--"Well Read"
	"A:67.00,74.90:1244:19",	--"Well Read"
	"A:37.60,46.80:5478:10",	--"The Limnologist"
	"A:58.60,20.20:5478:34")	--"The Limnologist"

tappend(points["Dustwallow:0"],
	--battle pets
	"P:66.00,49.00:385:Level 12",	-- Mouse/Battle Pet
	"P:31.00,22.00:412:Level 12",	-- Spider/Battle Pet
	"P:35.00,71.80:420:Level 12",	-- Toad/Battle Pet
	"P:36.20,28.00:420:Level 12",	-- Toad/Battle Pet
	"P:48.00,18.20:420:Level 12",	-- Toad/Battle Pet
	"P:49.80,57.40:420:Level 12",	-- Toad/Battle Pet
	"P:50.60,26.20:420:Level 12",	-- Toad/Battle Pet
	"P:54.80,73.00:420:Level 12",	-- Toad/Battle Pet
	"P:48.88,06.90:387:Level 12",	-- Snake/Battle Pet
	"P:35.80,72.00:387:Level 12",	-- Snake/Battle Pet
	"P:39.60,28.60:387:Level 12",	-- Snake/Battle Pet
	"P:40.00,54.00:387:Level 12",	-- Snake/Battle Pet
	"P:49.60,59.40:387:Level 12",	-- Snake/Battle Pet
	"P:51.00,21.20:387:Level 12",	-- Snake/Battle Pet
	"P:58.80,26.00:387:Level 12",	-- Snake/Battle Pet
	"P:44.00,66.00:398:Level 12",	-- Black Rat/Battle Pet
	"P:47.80,15.20:412:Level 12",	-- Spider/Battle Pet
	"P:50.80,76.20:489:Level 12. Rare Spawn Pet",	-- Spawn of Onyxia/Battle Pet
	"P:51.40,83.00:489:Level 12. Rare Spawn Pet",	-- Spawn of Onyxia/Battle Pet
	"P:55.80,74.20:489:Level 12. Rare Spawn Pet",	-- Spawn of Onyxia/Battle Pet
	"P:56.60,80.60:489:Level 12. Rare Spawn Pet",	-- Spawn of Onyxia/Battle Pet
	--rares
	"R:50.20,75.40:4339",	-- Brimgore
	"R:63.00,07.40:14230",	-- Burgle Eye
	"R:59.40,08.40:14230",	-- Burgle Eye
	"R:58.20,16.80:14230",	-- Burgle Eye
	"R:58.00,61.60:14230",	-- Burgle Eye
	"R:33.60,22.80:4380",	-- Darkmist Widow
	"R:48.00,19.60:14232::47.80,14.60:46.80,17.60",	-- Dart
	"R:39.60,19.60:14231",	-- Drogoth the Roamer
	"R:47.60,61.60:14234",	-- Hayoc
	"R:56.60,63.40:14236",	-- Lord Angler
	"R:37.20,62.60:14237",	-- Oozeworm
	"R:42.00,55.60:14233",	-- Ripscale
	"R:37.60,50.60:14233",	-- Ripscale
	"R:43.80,50.00:14233",	-- Ripscale
	"R:47.60,54.60:14233",	-- Ripscale
	"R:49.20,57.60:14233",	-- Ripscale
	"R:51.60,60.60:14235::52.60,55.60:51.40,50.80",	-- The Rot
	"R:32.60,31.00:50784:Level 37",	-- Anith
	"R:51.60,16.80:50735:Level 38",	-- Blinkeye the Rattler
	"R:40.20,28.60:50342:Level 38",	-- Heronis
	"R:54.20,43.60:50957:Level 38",	-- Hugeclaw
	"R:34.00,70.40:50875:Level 39",	-- Nychus
	"R:38.20,74.40:50764:Level 39",	-- Paraliss
	"R:50.20,84.60:51061:Level 39",	-- Roth-Salam
	"R:55.80,85.60:51069:Level 39",	-- Scintillex
	"R:29.60,44.60:50945:Level 36",	-- Scruff
	"R:42.80,41.20:50901:Level 36",	-- Teromak
	--achievements
	"A:53.80,74.80:6602:9:3 - Level 14 Pets",	-- Taming Kalimdor/Grazzle the Great
	"A:66.00,44.00:850:1",	--"Exploration Kalimdor"
	"A:41.00,11.00I:850:2",	--"Exploration Kalimdor"
	"A:46.00,47.00:850:3",	--"Exploration Kalimdor"
	"A:41.00,73.00:850:4",	--"Exploration Kalimdor"
	"A:30.00,48.00:850:5",	--"Exploration Kalimdor"
	"A:61.00,20.00:850:6",	--"Exploration Kalimdor"
	"A:36.00,31.00:850:7",	--"Exploration Kalimdor"
	"A:52.00,73.00:850:8",	--"Exploration Kalimdor"
	"A:72.00,19.00:850:9",	--"Exploration Kalimdor"
	"A:66.00,49.00:2556:7",	--"Pest Control, Mouse"
	"A:31.00,22.00:2556:3")	--"Pest Control, Spider"

tappend(points["SholazarBasin:0"],
	--battle pets
	"P:23.20,53.00:532:Level 21",	-- Stunted Shardhorn/Battle Pet
	"P:32.60,38.20:532:Level 21",	-- Stunted Shardhorn/Battle Pet
	"P:32.60,58.60:532:Level 21",	-- Stunted Shardhorn/Battle Pet
	"P:41.20,47.80:532:Level 21",	-- Stunted Shardhorn/Battle Pet
	"P:43.00,57.20:649:Level 21",	-- Biletoad/Battle Pet
	"P:46.40,76.20:649:Level 21",	-- Biletoad/Battle Pet
	"P:53.20,53.40:649:Level 21",	-- Biletoad/Battle Pet
	"P:45.40,23.20:1167:Level 21-22",	-- Emerald Proto-Whelp/Battle Pet
	"P:46.80,33.40:1167:Level 21-22",	-- Emerald Proto-Whelp/Battle Pet
	"P:48.20,26.60:1167:Level 21-22",	-- Emerald Proto-Whelp/Battle Pet
	--achievements
	"A:27.00,60.00:2557:11",	--"To All The Squirrels Who Shared My Life"
	"A:25.00,81.00:1268:11",	--"Exploration Northrend"
	"A:80.00,54.00:1268:4",	--"Exploration Northrend"
	"A:54.00,56.00:1268:7",	--"Exploration Northrend"
	"A:48.00,63.00:1268:1",	--"Exploration Northrend"
	"A:73.00,36.00:1268:9",	--"Exploration Northrend"
	"A:49.00,38.00:1268:10",	--"Exploration Northrend"
	"A:65.00,59.00:1268:8",	--"Exploration Northrend"
	"A:29.00,38.00:1268:5",	--"Exploration Northrend"
	"A:36.00,75.00:1268:3",	--"Exploration Northrend"
	"A:46.00,25.00:1268:2",	--"Exploration Northrend"
	"A:26.00,35.00:1268:12",	--"Exploration Northrend"
	"A:33.00,52.00:1268:6",	--"Exploration Northrend"
	"A:49.80,63.30:5478:3",	--"The Limnologist"
	"A:49.80,63.30:5478:32",	--"The Limnologist"
	"R:22.60,70.60:32517",	--"Loque'nahak"
	"R:31.00,66.60:32517",	--"Loque'nahak"
	"R:36.60,31.00:32517",	--"Loque'nahak"
	"R:58.80,21.00:32517",	--"Loque'nahak"
	"R:71.60,72.00:32517",	--"Loque'nahak"
	"R:66.60,78.80:32517",	--"Loque'nahak"
	"R:51.00,81.60:32517",	--"Loque'nahak"
	"R:25.80,48.80:32485::33.60,35.80:37.60,28.00",	--"King Krush"
	"R:45.40,41.80:32485::51.00,43.60:52.80,41.60",	--"King Krush"
	"R:49.40,80.60:32485::59.20,83.20:66.60,79.40",	--"King Krush"
	"R:58.20,64.00:32481",	--"Aotona"
	"R:52.60,73.00:32481",	--"Aotona"
	"R:42.60,73.80:32481",	--"Aotona"
	"R:41.80,69.60:32481",	--"Aotona"
	"R:41.00,58.60:32481",	--"Aotona"
	"R:43.60,52.20:32481",	--"Aotona"
	"R:47.20,54.40:32481",	--"Aotona"
	"R:54.80,52.00:32481")	--"Aotona"

tappend(points["Durotar:0"],
	--battle pets
	"P:40.60,17.60:448:Level 1",	-- Hare/Battle Pet
	"P:51.80,16.60:448:Level 1",	-- Hare/Battle Pet
	"P:55.20,31.60:448:Level 1",	-- Hare/Battle Pet
	"P:59.00,55.60:448:Level 1",	-- Hare/Battle Pet
	"P:39.60,51.20:448:Level 1",	-- Hare/Battle Pet
	"P:46.80,34.00:448:Level 1",	-- Hare/Battle Pet
	"P:40.00,39.00:418:Level 1",	-- Water Snake/Battle Pet
	"P:38.00,38.00:420:Level 1",	-- Toad/Battle Pet
	"P:43.00,46.00:420:Level 1",	-- Toad/Battle Pet
	"P:37.20,27.40:448:Level 1",	-- Hare/Battle Pet
	"P:51.80,16.60:448:Level 1",	-- Hare/Battle Pet
	"P:48.60,18.80:466:Level 1",	-- Spiny Lizard/Battle Pet
	"P:49.80,35.40:466:Level 1",	-- Spiny Lizard/Battle Pet
	"P:53.20,64.60:466:Level 1",	-- Spiny Lizard/Battle Pet
	"P:53.20,75.60:466:Level 1",	-- Spiny Lizard/Battle Pet
	"P:57.20,14.00:466:Level 1",	-- Spiny Lizard/Battle Pet
	"P:58.20,44.40:466:Level 1",	-- Spiny Lizard/Battle Pet
	"P:48.40,18.80:467:Level 1",	-- Dung Beetle/Battle Pet
	"P:50.80,31.60:467:Level 1",	-- Dung Beetle/Battle Pet
	"P:53.20,75.40:467:Level 1",	-- Dung Beetle/Battle Pet
	"P:55.80,10.00:467:Level 1",	-- Dung Beetle/Battle Pet
	"P:58.20,44.40:467:Level 1",	-- Dung Beetle/Battle Pet
	"P:37.40,28.00:468:Level 1",	-- Creepy Crawly/Battle Pet
	"P:38.60,52.40:468:Level 1",	-- Creepy Crawly/Battle Pet
	"P:38.80,16.40:468:Level 1",	-- Creepy Crawly/Battle Pet
	"P:39.20,16.80:468:Level 1",	-- Creepy Crawly/Battle Pet
	"P:44.20,49.20:468:Level 1",	-- Creepy Crawly/Battle Pet
	"P:46.60,80.40:468:Level 1",	-- Creepy Crawly/Battle Pet
	"P:47.00,16.40:468:Level 1",	-- Creepy Crawly/Battle Pet
	"P:48.00,78.80:468:Level 1",	-- Creepy Crawly/Battle Pet
	"P:48.20,41.40:468:Level 1",	-- Creepy Crawly/Battle Pet
	"P:48.80,18.40:468:Level 1",	-- Creepy Crawly/Battle Pet
	"P:48.80,38.20:468:Level 1",	-- Creepy Crawly/Battle Pet
	"P:50.80,53.60:468:Level 1",	-- Creepy Crawly/Battle Pet
	"P:51.20,47.20:468:Level 1",	-- Creepy Crawly/Battle Pet
	"P:52.00,51.00:468:Level 1",	-- Creepy Crawly/Battle Pet
	"P:53.00,10.80:468:Level 1",	-- Creepy Crawly/Battle Pet
	"P:53.60,48.80:468:Level 1",	-- Creepy Crawly/Battle Pet
	"P:54.00,37.40:468:Level 1",	-- Creepy Crawly/Battle Pet
	"P:54.80,78.00:468:Level 1",	-- Creepy Crawly/Battle Pet
	"P:55.80,17.80:468:Level 1",	-- Creepy Crawly/Battle Pet
	"P:56.40,43.20:468:Level 1",	-- Creepy Crawly/Battle Pet
	"P:56.60,21.60:468:Level 1",	-- Creepy Crawly/Battle Pet
	"P:44.00,65.00:635:Level 1",	-- Adder/Battle Pet
	"P:46.00,19.00:635:Level 1",	-- Adder/Battle Pet
	"R:38.60,53.60:5824",	-- Captain Flat Tusk
	"R:44.80,50.40:5824",	-- Captain Flat Tusk
	"R:42.60,39.20:5824",	-- Captain Flat Tusk
	"R:38.60,47.60:5823::34.40,44.00:38.80,42.80",	-- Death Flayer
	"R:52.60,08.80:5822",	-- Felweaver Scornn
	"R:47.20,49.60:5826",	-- Geolord Mottle
	"R:43.60,50.20:5826",	-- Geolord Mottle
	"R:46.20,39.60:5826",	-- Geolord Mottle
	"R:59.60,58.80:5809",	-- Sergeant Curtis
	"A:44.00,59.00:728:1",	--"Exploration Kalimdor"
	"A:48.00,78.00:728:2",	--"Exploration Kalimdor"
	"A:37.00,42.00:728:3",	--"Exploration Kalimdor"
	"A:55.00,74.00:728:4",	--"Exploration Kalimdor"
	"A:65.00,83.00:728:5",	--"Exploration Kalimdor"
	"A:58.00,56.00:728:6",	--"Exploration Kalimdor"
	"A:53.00,43.00:728:7",	--"Exploration Kalimdor"
	"A:43.00,49.00:728:8",	--"Exploration Kalimdor"
	"A:39.00,28.00:728:9",	--"Exploration Kalimdor"
	"A:53.00,23.00:728:10",	--"Exploration Kalimdor"
	"A:54.00,10.00:728:11",	--"Exploration Kalimdor"
	"A:38.00,38.00:1206:20",	--"To All The Squirrels I've Loved Before, Toad"
	"A:43.00,46.00:1206:20",	--"To All The Squirrels I've Loved Before, Toad"
	"A:46.00,19.00:1206:10",	--"To All The Squirrels I've Loved Before, Hare"
	"A:47.00,67.00:1206:10",	--"To All The Squirrels I've Loved Before, Hare"
	"A:48.00,16.00:1206:19",	--"To All The Squirrels I've Loved Before, Swine"
	"A:44.00,65.00:2556:4",	--"Pest Control, Adder"
	"A:46.00,19.00:2556:4",	--"Pest Control, Adder"
	"A:40.00,39.00:2556:2")	--"Pest Control, Water Snake"

tappend(points["Desolace:0"],
	"P:63.20,35.40:419:Level 7",	-- Small Frog/Battle Pet
	"P:63.60,49.20:419:Level 7",	-- Small Frog/Battle Pet
	"P:31.40,63.40:480:Level 7-8",	-- Topaz Shale Hatchling/Battle Pet
	"P:48.80,57.80:480:Level 7-8",	-- Topaz Shale Hatchling/Battle Pet
	"P:59.00,85.80:480:Level 7-8",	-- Topaz Shale Hatchling/Battle Pet
	"P:72.00,54.40:480:Level 7-8",	-- Topaz Shale Hatchling/Battle Pet
	"P:62.80,22.80:480:Level 7-8",	-- Topaz Shale Hatchling/Battle Pet
	"P:40.20,95.60:417:Level 7-8",	-- Rat/Battle Pet
	"P:50.60,60.00:417:Level 7-8",	-- Rat/Battle Pet
	"P:53.40,79.40:417:Level 7-8",	-- Rat/Battle Pet
	"P:56.60,19.20:417:Level 7-8",	-- Rat/Battle Pet
	"P:72.80,74.00:417:Level 7-8",	-- Rat/Battle Pet
	"P:75.60,35.00:417:Level 7-8",	-- Rat/Battle Pet
	"P:49.80,50.80:452:Level 7-8",	-- Red-Tailed Chipmunk/Battle Pet
	"P:52.20,56.00:452:Level 7-8",	-- Red-Tailed Chipmunk/Battle Pet
	"P:57.60,40.40:452:Level 7-8",	-- Red-Tailed Chipmunk/Battle Pet
	"P:63.20,57.60:452:Level 7-8",	-- Red-Tailed Chipmunk/Battle Pet
	"P:65.80,43.00:452:Level 7-8",	-- Red-Tailed Chipmunk/Battle Pet
	"P:42.60,47.00:478:Level 7-8",	-- Forest Moth/Battle Pet
	"P:45.60,49.80:478:Level 7-8",	-- Forest Moth/Battle Pet
	"P:46.40,36.60:478:Level 7-8",	-- Forest Moth/Battle Pet
	"P:52.80,57.80:478:Level 7-8",	-- Forest Moth/Battle Pet
	"P:53.00,47.60:478:Level 7-8",	-- Forest Moth/Battle Pet
	"P:57.00,40.00:478:Level 7-8",	-- Forest Moth/Battle Pet
	"P:60.00,48.80:478:Level 7-8",	-- Forest Moth/Battle Pet
	"P:60.20,57.80:478:Level 7-8",	-- Forest Moth/Battle Pet
	"P:63.40,48.00:478:Level 7-8",	-- Forest Moth/Battle Pet
	"P:67.80,54.20:478:Level 7-8",	-- Forest Moth/Battle Pet
	"P:29.00,29.00:482:Level 7-8",	-- Rock Viper/Battle Pet
	"P:72.00,22.00:482:Level 7-8",	-- Rock Viper/Battle Pet
	"P:32.60,76.20:483:Level 7-8",	-- Horny Toad/Battle Pet
	"P:44.60,42.40:483:Level 7-8",	-- Horny Toad/Battle Pet
	"P:69.20,35.00:483:Level 7-8",	-- Horny Toad/Battle Pet
	"P:70.40,55.00:483:Level 7-8",	-- Horny Toad/Battle Pet
	"P:76.40,23.60:483:Level 7-8",	-- Horny Toad/Battle Pet
	"P:25.40,71.60:484:Level 7-8",	-- Desert Spider/Battle Pet
	"P:30.20,81.60:484:Level 7-8",	-- Desert Spider/Battle Pet
	"P:44.60,42.40:484:Level 7-8",	-- Desert Spider/Battle Pet
	"P:54.80,33.40:484:Level 7-8",	-- Desert Spider/Battle Pet
	"P:65.80,25.00:484:Level 7-8",	-- Desert Spider/Battle Pet
	"P:70.40,55.20:484:Level 7-8",	-- Desert Spider/Battle Pet
	"P:78.80,21.40:484:Level 7-8",	-- Desert Spider/Battle Pet
	"P:42.40,83.40:485:Level 7-8",	-- Stone Armadillo/Battle Pet
	"P:60.00,24.40:485:Level 7-8",	-- Stone Armadillo/Battle Pet
	"P:60.80,76.80:485:Level 7-8",	-- Stone Armadillo/Battle Pet
	"P:63.20,67.60:485:Level 7-8",	-- Stone Armadillo/Battle Pet
	"P:69.20,73.80:485:Level 7-8",	-- Stone Armadillo/Battle Pet
	"P:69.60,30.40:485:Level 7-8",	-- Stone Armadillo/Battle Pet
	"P:71.60,62.80:485:Level 7-8",	-- Stone Armadillo/Battle Pet
	"P:72.20,45.80:485:Level 7-8",	-- Stone Armadillo/Battle Pet
	"P:29.20,61.40:838:Level 7-8, Wicked Tunnels",	-- Amethyst Shale Hatchling/Battle Pet
	"R:30.80,18.60:14229",	-- Accursed Slitherblade
	"R:32.80,14.80:14229",	-- Accursed Slitherblade
	"R:29.40,13.40:14229",	-- Accursed Slitherblade
	"R:34.40,09.20:14229",	-- Accursed Slitherblade
	"R:32.60,05.80:14229",	-- Accursed Slitherblade
	"R:41.80,19.00:18241::34.80,20.80:36.40,23.80",	-- Crusty
	"R:57.60,09.60:14228",	-- Giggler
	"R:58.80,17.40:14228",	-- Giggler
	"R:64.20,19.00:14228",	-- Giggler
	"R:66.20,24.80:14228",	-- Giggler
	"R:60.60,23.20:14228",	-- Giggler
	"R:64.00,34.40:14228",	-- Giggler
	"R:44.00,42.60:14227",	-- Hissperak
	"R:42.80,46.40:14227",	-- Hissperak
	"R:51.60,48.00:14227",	-- Hissperak
	"R:47.20,53.20:14227",	-- Hissperak
	"R:43.80,61.60:14227",	-- Hissperak
	"R:40.20,55.40:14227",	-- Hissperak
	"R:51.20,84.80:14226",	-- Kaskk
	"R:50.60,81.60:14226",	-- Kaskk
	"R:51.00,76.60:14226",	-- Kaskk
	"R:55.20,76.60:14226",	-- Kaskk
	"R:56.60,74.60:14226",	-- Kaskk
	"R:50.00,72.00:14226",	-- Kaskk
	"R:74.60,12.40:14225",	-- Prince Kellen
	"R:75.40,18.80:14225",	-- Prince Kellen
	"R:77.80,23.80:14225",	-- Prince Kellen
	"A:49.00,07.00:848:1",	--"Exploration Kalimdor"
	"A:36.00,71.00:848:2",	--"Exploration Kalimdor"
	"A:65.00,08.00:848:3",	--"Exploration Kalimdor"
	"A:76.00,21.00:848:4",	--"Exploration Kalimdor"
	"A:55.00,28.00:848:5",	--"Exploration Kalimdor"
	"A:52.00,48.00:848:6",	--"Exploration Kalimdor"
	"A:74.00,49.00:848:7",	--"Exploration Kalimdor"
	"A:28.00,91.00:848:8",	--"Exploration Kalimdor"
	"A:33.00,58.00:848:9",	--"Exploration Kalimdor"
	"A:50.00,57.00:848:10",	--"Exploration Kalimdor"
	"A:24.00,70.00:848:11",	--"Exploration Kalimdor"
	"A:34.00,86.00:848:12",	--"Exploration Kalimdor"
	"A:52.00,76.00:848:13",	--"Exploration Kalimdor"
	"A:73.00,73.00:848:14",	--"Exploration Kalimdor"
	"A:79.00,77.00:848:15",	--"Exploration Kalimdor"
	"A:30.00,28.00:848:16",	--"Exploration Kalimdor"
	"A:51.00,47.00:1206:9",	--"To All The Squirrels I've Loved Before, Gazelle"
	"A:63.00,55.00:1206:9",	--"To All The Squirrels I've Loved Before, Gazelle"
	"A:29.00,29.00:5548:8",	--"To All the Squirrels Who Cared for Me"
	"A:72.00,22.00:5548:8")	--"To All the Squirrels Who Cared for Me"

tappend(points["Tirisfal:0"],
	--battle pets
	"P:85.40,47.40:412:Level 1",	-- Spider/Battle Pet
	"P:86.20,54.20:412:Level 1",	-- Spider/Battle Pet
	"P:17.00,68.60:417:Level 1",	-- Rat/Battle Pet
	"P:41.00,57.00:417:Level 1",	-- Rat/Battle Pet
	"P:59.40,50.40:417:Level 1",	-- Rat/Battle Pet
	"P:59.60,37.80:417:Level 1",	-- Rat/Battle Pet
	"P:60.00,74.40:417:Level 1",	-- Rat/Battle Pet
	"P:66.00,70.60:417:Level 1",	-- Rat/Battle Pet
	"P:74.00,60.00:417:Level 1",	-- Rat/Battle Pet
	"P:82.20,69.60:417:Level 1",	-- Rat/Battle Pet
	"P:38.80,49.60:458:Level 1",	-- Lost of Lordaeron/Battle Pet
	"P:45.00,53.20:458:Level 1",	-- Lost of Lordaeron/Battle Pet
	"P:46.00,38.80:458:Level 1",	-- Lost of Lordaeron/Battle Pet
	"P:51.60,68.60:458:Level 1",	-- Lost of Lordaeron/Battle Pet
	"P:54.20,28.60:458:Level 1",	-- Lost of Lordaeron/Battle Pet
	"P:58.60,67.60:458:Level 1",	-- Lost of Lordaeron/Battle Pet
	"P:58.80,48.60:458:Level 1",	-- Lost of Lordaeron/Battle Pet
	"P:60.80,57.80:458:Level 1",	-- Lost of Lordaeron/Battle Pet
	"P:68.60,63.60:458:Level 1",	-- Lost of Lordaeron/Battle Pet
	"P:78.80,59.80:458:Level 1",	-- Lost of Lordaeron/Battle Pet
	"P:82.20,68.60:458:Level 1",	-- Lost of Lordaeron/Battle Pet
	"P:83.20,34.00:458:Level 1",	-- Lost of Lordaeron/Battle Pet
	"P:12.00,63.80:626:Level 1",	-- Bat/Battle Pet
	"P:48.80,57.80:626:Level 1",	-- Bat/Battle Pet
	"P:61.00,57.00:646:Level 1",	-- Chicken/Battle Pet
	--rares
	"R:46.00,48.40:10356",	-- Bayne
	"R:72.60,25.80:1911",	-- Deeb
	"R:34.20,52.00:1936",	-- Farmer Solliden
	"R:38.00,51.80:1936",	-- Farmer Solliden
	"R:77.00,59.80:10358",	-- Fellicent's Shade
	"R:53.60,48.40:1531",	-- Lost Soul
	"R:35.80,43.00:1910",	-- Muad
	"R:53.60,58.60:10357",	-- Ressan the Needler
	"R:84.60,49.40:10359",	-- Sri'skulk
	"R:48.60,33.40:1533::44.20,34.80:46.20,30.40",	-- Tormented Spirit
	"R:32.60,46.60:50803:Level 7",	-- Bonechewer
	"R:47.40,70.20:50930:Level 7",	-- Hibernus the Sleeper
	"R:42.80,28.80:50908:Level 9",	-- Nighthowl
	"R:57.80,33.00:51044:Level 8",	-- Plague
	"R:38.00,52.00:50763:Level 6",	-- Shadowstalker
	--achievements
	"A:61.00,57.00:1206:3",	--"To All The Squirrels I've Loved Before, Chicken"
	"A:35.00,59.00:768:1",	--"Exploration Eastern Kingdom"
	"A:36.00,50.00:768:2",	--"Exploration Eastern Kingdom"
	"A:48.00,39.00:768:3",	--"Exploration Eastern Kingdom"
	"A:48.00,64.00:768:4",	--"Exploration Eastern Kingdom"
	"A:53.00,57.00:768:5",	--"Exploration Eastern Kingdom"
	"A:59.00,51.00:768:6",	--"Exploration Eastern Kingdom"
	"A:59.00,35.00:768:7",	--"Exploration Eastern Kingdom"
	"A:68.00,37.00:768:8",	--"Exploration Eastern Kingdom"
	"A:75.00,61.00:768:9",	--"Exploration Eastern Kingdom"
	"A:78.00,54.00:768:10",	--"Exploration Eastern Kingdom"
	"A:79.00,29.00:768:11",	--"Exploration Eastern Kingdom"
	"A:84.00,47.00:768:12",	--"Exploration Eastern Kingdom"
	"A:61.00,64.00:768:13",	--"Exploration Eastern Kingdom"
	"A:82.00,32.00:768:14",	--"Exploration Eastern Kingdom"
	"A:83.00,70.00:768:15",	--"Exploration Eastern Kingdom"
	"A:49.00,52.00:768:16",	--"Exploration Eastern Kingdom"
	"A:67.50,51.60:5478:38")	--"The Limnologist"

tappend(points["Ashenvale:0"],
	"P:20.00,20.00:379:Level 4-5",	-- Squirrel/Battle Pet
	"P:20.00,20.00:379:Level 4-5",	-- Squirrel/Battle Pet
	"P:56.00,72.00:379:Level 4-5",	-- Squirrel/Battle Pet
	"P:56.00,72.00:379:Level 4-5",	-- Squirrel/Battle Pet
	"P:74.00,76.00:379:Level 4-5",	-- Squirrel/Battle Pet
	"P:74.00,76.00:379:Level 4-5",	-- Squirrel/Battle Pet
	"P:12.60,34.20:417:Level 4-5",	-- Rat/Battle Pet
	"P:32.20,21.20:417:Level 4-5",	-- Rat/Battle Pet
	"P:40.00,32.00:417:Level 4-5",	-- Rat/Battle Pet
	"P:45.20,62.40:417:Level 4-5",	-- Rat/Battle Pet
	"P:51.00,66.00:417:Level 4-5",	-- Rat/Battle Pet
	"P:67.40,55.00:417:Level 4-5",	-- Rat/Battle Pet
	"P:72.00,58.00:417:Level 4-5",	-- Rat/Battle Pet
	"P:73.80,62.40:417:Level 4-5",	-- Rat/Battle Pet
	"P:88.80,62.40:417:Level 4-5",	-- Rat/Battle Pet
	"P:90.00,50.40:417:Level 4-5",	-- Rat/Battle Pet
	"P:45.00,55.40:420:Level 4-5",	-- Toad/Battle Pet
	"P:48.60,69.80:420:Level 4-5",	-- Toad/Battle Pet
	"P:64.20,69.60:420:Level 4-5",	-- Toad/Battle Pet
	"P:73.60,52.00:420:Level 4-5",	-- Toad/Battle Pet
	"P:78.60,51.60:420:Level 4-5",	-- Toad/Battle Pet
	"P:80.20,71.20:420:Level 4-5",	-- Toad/Battle Pet
	"P:92.00,60.80:420:Level 4-5",	-- Toad/Battle Pet
	"P:39.00,31.00:424:Level 4-5",	-- Roach/Battle Pet
	"P:73.00,60.00:424:Level 4-5",	-- Roach/Battle Pet
	"P:81.00,51.00:450:Level 4-5",	-- Maggot/Battle Pet
	"P:18.80,19.00:478:Level 4-5",	-- Forest Moth/Battle Pet
	"P:21.80,54.40:478:Level 4-5",	-- Forest Moth/Battle Pet
	"P:22.20,26.80:478:Level 4-5",	-- Forest Moth/Battle Pet
	"P:25.20,36.20:478:Level 4-5",	-- Forest Moth/Battle Pet
	"P:32.00,45.80:478:Level 4-5",	-- Forest Moth/Battle Pet
	"P:43.20,70.60:478:Level 4-5",	-- Forest Moth/Battle Pet
	"P:58.20,66.80:478:Level 4-5",	-- Forest Moth/Battle Pet
	"P:67.00,86.60:478:Level 4-5",	-- Forest Moth/Battle Pet
	"P:74.60,72.60:478:Level 4-5",	-- Forest Moth/Battle Pet
	"P:84.20,47.60:478:Level 4-5",	-- Forest Moth/Battle Pet
	"P:44.90,51.10:495:Level 4-5",	-- Frog/Battle Pet
	"P:48.60,70.00:495:Level 4-5",	-- Frog/Battle Pet
	"P:53.20,71.60:495:Level 4-5",	-- Frog/Battle Pet
	"P:72.00,53.00:495:Level 4-5",	-- Frog/Battle Pet
	"P:81.00,71.60:495:Level 4-5",	-- Frog/Battle Pet
	"P:91.80,61.00:495:Level 4-5",	-- Frog/Battle Pet
	"P:08.20,29.60:496:Level 4-5",	-- Rusty Snail/Battle Pet
	"P:11.00,15.60:496:Level 4-5",	-- Rusty Snail/Battle Pet
	"P:14.80,28.60:496:Level 4-5",	-- Rusty Snail/Battle Pet
	"P:15.00,15.00:496:Level 4-5",	-- Rusty Snail/Battle Pet
	"P:15.60,22.40:496:Level 4-5",	-- Rusty Snail/Battle Pet
	"R:25.20,60.40:3773",	-- Akkrilus
	"R:32.00,23.40:3735",	-- Apothecary Falthis
	"R:46.40,47.80:10641::44.00,54.00:42.60,45.40",	-- Branch Snapper
	"R:73.60,73.60:3736",	-- Darkslayer Mordenthal
	"R:72.60,71.00:3736",	-- Darkslayer Mordenthal
	"R:75.20,71.00:3736",	-- Darkslayer Mordenthal
	"R:50.80,71.00:10642::46.40,70.60",	-- Eck'alom
	"R:12.60,29.60:10559",	-- Lady Vespia
	"R:14.80,24.60:10559",	-- Lady Vespia
	"R:12.20,14.40:10559",	-- Lady Vespia
	"R:22.80,34.60:10644",	-- Mist Howler
	"R:23.00,28.40:10644",	-- Mist Howler
	"R:25.60,27.00:10644",	-- Mist Howler
	"R:26.60,15.60:10644",	-- Mist Howler
	"R:54.20,62.40:10640",	-- Oakpaw
	"R:57.00,64.60:10640",	-- Oakpaw
	"R:66.50,56.80:10647",	-- Prince Raze
	"R:78.60,45.20:10647",	-- Prince Raze
	"R:81.00,49.20:10647",	-- Prince Raze
	"R:36.60,36.60:10639",	-- Rorgish Jowl
	"R:37.00,33.60:10639",	-- Rorgish Jowl
	"R:35.60,32.80:10639",	-- Rorgish Jowl
	"R:53.00,37.60:3792",	-- Terrowulf Packlord
	"R:92.80,45.60:12037",	-- Ursol'lok
	"R:89.60,46.60:12037",	-- Ursol'lok
	"A:14.00,27.00:845:1",	--"Exploration Kalimdor"
	"A:33.00,67.00:845:10",	--"Exploration Kalimdor"
	"A:54.00,36.00:845:11",	--"Exploration Kalimdor"
	"A:61.00,51.00:845:12",	--"Exploration Kalimdor"
	"A:66.00,82.00:845:13",	--"Exploration Kalimdor"
	"A:73.00,62.00:845:14",	--"Exploration Kalimdor"
	"A:80.00,49.00:845:15",	--"Exploration Kalimdor"
	"A:93.00,35.00:845:16",	--"Exploration Kalimdor"
	"A:83.00,57.00:845:17",	--"Exploration Kalimdor"
	"A:89.00,77.00:845:18",	--"Exploration Kalimdor"
	"A:26.00,21.00:845:2",	--"Exploration Kalimdor"
	"A:50.00,67.00:845:3",	--"Exploration Kalimdor"
	"A:50.00,53.00:845:4",	--"Exploration Kalimdor"
	"A:20.00,42.00:845:5",	--"Exploration Kalimdor"
	"A:26.00,37.00:845:6",	--"Exploration Kalimdor"
	"A:31.00,44.00:845:7",	--"Exploration Kalimdor"
	"A:22.00,53.00:845:8",	--"Exploration Kalimdor"
	"A:36.00,50.00:845:9",	--"Exploration Kalimdor"
	"A:65.00,85.00:1206:5",	--"To All The Squirrels I've Loved Before, Deer"
	"A:84.00,46.00:1206:5",	--"To All The Squirrels I've Loved Before, Deer"
	"A:20.00,20.00:1206:17",	--"To All The Squirrels I've Loved Before, Squirrel"
	"A:56.00,72.00:1206:17",	--"To All The Squirrels I've Loved Before, Squirrel"
	"A:74.00,76.00:1206:17",	--"To All The Squirrels I've Loved Before, Squirrel"
	"A:20.00,20.00:2556:4",	--"Pest Control, Squirrel"
	"A:56.00,72.00:2556:4",	--"Pest Control, Squirrel"
	"A:74.00,76.00:2556:4",	--"Pest Control, Squirrel"
	"A:40.00,32.00:2556:18",	--"Pest Control, Rat"
	"A:72.00,58.00:2556:18",	--"Pest Control, Rat"
	"A:39.00,31.00:2556:9",	--"Pest Control, Roach"
	"A:73.00,60.00:2556:9",	--"Pest Control, Roach"
	"A:81.00,51.00:2556:13")	--"Pest Control, Maggot"

tappend(points["Dragonblight:0"],
	"P:53.20,24.60:537:Level 22",	-- Dragonbone Hatchling/Battle Pet
	"P:55.60,40.60:537:Level 22",	-- Dragonbone Hatchling/Battle Pet
	"P:63.40,29.00:537:Level 22",	-- Dragonbone Hatchling/Battle Pet
	"P:16.00,47.00:641:Level 22",	-- Arctic Hare/Battle Pet
	"P:30.00,48.00:641:Level 22",	-- Arctic Hare/Battle Pet
	"A:59.00,77.00:6605:3:3 - Level 25 Pets",	-- Taming Northrend/Okrut Dragonwaste
	"A:36.00,46.00:1265:11",	--"Exploration Northrend"
	"A:37.00,17.00:1265:10",	--"Exploration Northrend"
	"A:55.00,20.00:1265:9",	--"Exploration Northrend"
	"A:63.00,73.00:1265:8",	--"Exploration Northrend"
	"A:55.00,34.00:1265:1",	--"Exploration Northrend"
	"A:25.00,43.00:1265:7",	--"Exploration Northrend"
	"A:40.00,67.00:1265:2",	--"Exploration Northrend"
	"A:84.00,26.00:1265:6",	--"Exploration Northrend"
	"A:87.00,50.00:1265:5",	--"Exploration Northrend"
	"A:71.00,74.00:1265:4",	--"Exploration Northrend"
	"A:40.00,31.00:1265:3",	--"Exploration Northrend"
	"A:73.00,25.00:1265:17",	--"Exploration Northrend"
	"A:60.00,20.00:1265:16",	--"Exploration Northrend"
	"A:82.00,68.00:1265:15",	--"Exploration Northrend"
	"A:76.00,62.00:1265:14",	--"Exploration Northrend"
	"A:14.00,47.00:1265:13",	--"Exploration Northrend"
	"A:59.00,54.00:1265:12",	--"Exploration Northrend"
	"A:40.20,69.50:5478:11",	--"The Limnologist"
	"R:15.60,45.60:32409",	--"Crazed Indu'le Survivor"
	"R:15.40,58.20:32409",	--"Crazed Indu'le Survivor"
	"R:20.60,55.20:32409",	--"Crazed Indu'le Survivor"
	"R:24.00,53.80:32409",	--"Crazed Indu'le Survivor"
	"R:26.60,58.60:32409",	--"Crazed Indu'le Survivor"
	"R:28.80,61.60:32409",	--"Crazed Indu'le Survivor"
	"R:30.60,58.60:32409",	--"Crazed Indu'le Survivor"
	"R:33.20,56.80:32409",	--"Crazed Indu'le Survivor"
	"R:71.60,22.00:32417",	--"Scarlet Highlord Daion"
	"R:72.60,25.80:32417",	--"Scarlet Highlord Daion"
	"R:75.60,27.00:32417",	--"Scarlet Highlord Daion"
	"R:86.00,36.40:32417",	--"Scarlet Highlord Daion"
	"R:86.80,41.60:32417",	--"Scarlet Highlord Daion"
	"R:72.00,70.60:32417",	--"Scarlet Highlord Daion"
	"R:69.60,75.00:32417",	--"Scarlet Highlord Daion"
	"R:67.60,60.00:32400",	--"Tukemuth"
	"R:70.40,52.80:32400",	--"Tukemuth"
	"R:68.00,35.20:32400",	--"Tukemuth"
	"R:70.80,30.20:32400",	--"Tukemuth"
	"R:64.60,36.40:32400",	--"Tukemuth"
	"R:62.00,46.60:32400",	--"Tukemuth"
	"R:62.00,57.60:32400",	--"Tukemuth"
	"R:57.60,56.40:32400",	--"Tukemuth"
	"R:53.80,59.00:32400",	--"Tukemuth"
	"R:58.00,45.20:32400",	--"Tukemuth"
	"R:60.00,34.80:32400",	--"Tukemuth"
	"R:59.40,28.80:32400",	--"Tukemuth"
	"A:16.00,47.00:2557:1",	--"To All The Squirrels Who Shared My Life"
	"A:30.00,48.00:2557:1")	--"To All The Squirrels Who Shared My Life"

tappend(points["Dalaran:2"],
	"A:42.00,53.60:5478:35",	--"The Limnologist"
	"A:41.00,60.00:2556:5",	--"Pest Control, Underbelly Rat"
	"A:48.00,55.00:2556:5",	--"Pest Control, Underbelly Rat"
	"A:49.00,44.00:2556:5",	--"Pest Control, Underbelly Rat"
	"A:55.00,37.00:2556:5")	--"Pest Control, Underbelly Rat"

tappend(points["TerokkarForest:0"],
	"P:47.00,05.80:514:Level18. Rare Spawn",	-- Flayer Youngling/Battle Pet
	"P:53.60,13.00:514:Level18. Rare Spawn",	-- Flayer Youngling/Battle Pet
	"P:60.80,11.20:514:Level18. Rare Spawn",	-- Flayer Youngling/Battle Pet
	"P:31.80,76.20:387:Level 18",	-- Snake/Battle Pet
	"P:34.80,54.40:387:Level 18",	-- Snake/Battle Pet
	"P:39.60,76.40:387:Level 18",	-- Snake/Battle Pet
	"P:49.40,53.00:387:Level 18",	-- Snake/Battle Pet
	"P:46.00,29.00:397:Level 18",	-- Skunk/Battle Pet
	"P:38.00,51.80:417:Level 18",	-- Rat/Battle Pet
	"P:44.20,49.40:417:Level 18",	-- Rat/Battle Pet
	"P:50.00,68.20:417:Level 18",	-- Rat/Battle Pet
	"P:53.60,29.60:417:Level 18",	-- Rat/Battle Pet
	"P:65.00,53.00:417:Level 18",	-- Rat/Battle Pet
	"P:33.20,73.20:432:Level 18",	-- Stripe-Tailed Scorpid/Battle Pet
	"P:39.40,54.20:432:Level 18",	-- Stripe-Tailed Scorpid/Battle Pet
	"P:45.20,76.40:432:Level 18",	-- Stripe-Tailed Scorpid/Battle Pet
	"P:33.20,40.20:517:Level 18",	-- Warpstalker Hatchling/Battle Pet
	"P:44.00,32.20:517:Level 18",	-- Warpstalker Hatchling/Battle Pet
	"P:58.20,31.80:517:Level 18",	-- Warpstalker Hatchling/Battle Pet
	"P:66.80,55.00:517:Level 18",	-- Warpstalker Hatchling/Battle Pet
	"P:68.00,39.60:517:Level 18",	-- Warpstalker Hatchling/Battle Pet
	"A:46.00,29.00:1206:16",	--"To All The Squirrels I've Loved Before, Skunk"
	"A:55.00,54.00:867:2",	--"Exploration Outland"
	"A:33.00,69.00:867:13",	--"Exploration Outland"
	"A:19.00,62.00:867:1",	--"Exploration Outland"
	"A:66.00,53.00:867:12",	--"Exploration Outland"
	"A:42.00,52.00:867:14",	--"Exploration Outland"
	"A:41.00,22.00:867:3",	--"Exploration Outland"
	"A:43.00,76.00:867:18",	--"Exploration Outland"
	"A:70.00,37.00:867:4",	--"Exploration Outland"
	"A:38.00,39.00:867:5",	--"Exploration Outland"
	"A:60.00,40.00:867:9",	--"Exploration Outland"
	"A:56.00,19.00:867:11",	--"Exploration Outland"
	"A:37.00,52.00:867:15",	--"Exploration Outland"
	"A:38.00,64.00:867:16",	--"Exploration Outland"
	"A:31.00,53.00:867:17",	--"Exploration Outland"
	"A:35.00,30.00:867:8",	--"Exploration Outland"
	"A:67.00,73.00:867:21",	--"Exploration Outland"
	"A:49.00,46.00:867:6",	--"Exploration Outland"
	"A:29.00,12.00:867:10",	--"Exploration Outland"
	"A:51.00,29.00:867:7",	--"Exploration Outland"
	"A:24.00,59.00:867:19",	--"Exploration Outland"
	"A:50.00,66.00:867:20",	--"Exploration Outland"
	"A:46.50,41.00:5478:16",	--"The Limnologist"
	"A:50.70,42.30:5478:20",	--"The Limnologist"
	"A:50.70,42.30:5478:21",	--"The Limnologist"
	"A:50.70,42.30:5478:24",	--"The Limnologist"
	"R:32.80,51.40:18689::35.20,56.60:29.40,55.40",	--"Crippler"
	"R:46.60,52.40:18689::43.60,57.00:39.00,48.00",	--"Crippler"
	"R:51.00,62.80:18689::46.20,59.60:48.60,56.40",	--"Crippler"
	"R:46.00,79.00:18689::51.60,67.00",	--"Crippler"
	"R:32.60,62.80:18689::28.00,63.00",	--"Crippler"
	"R:41.20,25.80:18686::50.80,25.00:55.80,20.20",	--"Doomsayer Jurim"
	"R:55.60,32.80:18686::64.80,39.80:70.60,49.40",	--"Doomsayer Jurim"
	"R:36.60,41.80:18686::35.80,34.40",	--"Doomsayer Jurim"
	"R:57.20,65.40:18685::56.80,71.60",	--"Okrek"
	"R:31.80,42.60:18685",	--"Okrek"
	"R:50.00,19.60:18685",	--"Okrek"
	"R:59.80,24.20:18685")	--"Okrek"

tappend(points["HowlingFjord:0"],
	"P:56.00,49.00:523:Joins Battle as a 2nd or 3rd.",	-- Devouring Maggot/Battle Pet
	"P:51.00,54.00:387:Level 20-21",	-- Snake/Battle Pet
	"P:56.00,77.00:397:Level 20-21",	-- Skunk/Battle Pet
	"P:66.00,71.00:397:Level 20-21",	-- Skunk/Battle Pet
	"P:36.60,15.00:417:Level 20-21",	-- Rat/Battle Pet
	"P:46.20,32.20:417:Level 20-21",	-- Rat/Battle Pet
	"P:59.00,78.00:417:Level 20-21",	-- Rat/Battle Pet
	"P:61.80,80.20:417:Level 20-21",	-- Rat/Battle Pet
	"P:69.20,55.20:417:Level 20-21",	-- Rat/Battle Pet
	"P:53.00,61.00:424:Level 20-21",	-- Roach/Battle Pet
	"P:31.20,42.20:525:Level 20-21",	-- Turkey/Battle Pet
	"P:59.60,63.20:525:Level 20-21",	-- Turkey/Battle Pet
	"P:27.80,55.80:529:Level 20-21",	-- Fjord Worg Pup/Battle Pet
	"P:30.20,69.80:529:Level 20-21",	-- Fjord Worg Pup/Battle Pet
	"P:31.80,60.00:529:Level 20-21",	-- Fjord Worg Pup/Battle Pet
	"P:44.00,32.00:644:Level 20-21",	-- Fjord Rat/Battle Pet
	"P:59.00,52.00:644:Level 20-21",	-- Fjord Rat/Battle Pet
	"P:75.00,31.00:644:Level 20-21",	-- Fjord Rat/Battle Pet
	"P:44.00,32.00:644:Level 20-21. Joins a Pet Battle with Fjord Rat",	-- Devouring Maggot/Battle Pet
	"P:59.00,52.00:644:Level 20-21. Joins a Pet Battle with Fjord Rat",	-- Devouring Maggot/Battle Pet
	"P:75.00,31.00:644:Level 20-21. Joins a Pet Battle with Fjord Rat",	-- Devouring Maggot/Battle Pet
	"A:28.60,33.80:6605:1:3 - Level 25 Pets",	-- Taming Northrend/Beegle Blastfuse
	"A:33.00,79.00:1206:14",	--"To All The Squirrels I've Loved Before, Sheep"
	"A:56.00,77.00:1206:16",	--"To All The Squirrels I've Loved Before, Skunk"
	"A:66.00,71.00:1206:16",	--"To All The Squirrels I've Loved Before, Skunk"
	"A:59.00,78.00:2556:18",	--"Pest Control, Rat"
	"A:53.00,61.00:2556:9",	--"Pest Control, Roach"
	"A:44.00,32.00:2556:15",	--"Pest Control, Fjord Rat"
	"A:59.00,52.00:2556:15",	--"Pest Control, Fjord Rat"
	"A:75.00,31.00:2556:15",	--"Pest Control, Fjord Rat"
	"A:56.00,49.00:2556:6",	--"Pest Control, Devouring Maggot"
	"A:51.00,54.00:2556:10",	--"Pest Control, Snake"
	"A:69.00,64.00:2557:4",	--"To All The Squirrels Who Shared My Life"
	"A:36.00,80.00:2557:10",	--"To All The Squirrels Who Shared My Life"
	"A:66.00,83.00:2557:3",	--"To All The Squirrels Who Shared My Life"
	"A:27.00,24.00:1263:4",	--"Exploration Northrend"
	"A:72.00,71.00:1263:20",	--"Exploration Northrend"
	"A:66.00,39.00:1263:21",	--"Exploration Northrend"
	"A:48.00,10.00:1263:3",	--"Exploration Northrend"
	"A:57.00,36.00:1263:2",	--"Exploration Northrend"
	"A:39.00,50.00:1263:10",	--"Exploration Northrend"
	"A:60.00,15.00:1263:12",	--"Exploration Northrend"
	"A:68.00,27.00:1263:11",	--"Exploration Northrend"
	"A:36.00,10.00:1263:9",	--"Exploration Northrend"
	"A:50.00,53.00:1263:14",	--"Exploration Northrend"
	"A:77.00,48.00:1263:13",	--"Exploration Northrend"
	"A:25.00,57.00:1263:1",	--"Exploration Northrend"
	"A:52.00,67.00:1263:15",	--"Exploration Northrend"
	"A:68.00,54.00:1263:8",	--"Exploration Northrend"
	"A:35.00,80.00:1263:7",	--"Exploration Northrend"
	"A:45.00,35.00:1263:16",	--"Exploration Northrend"
	"A:30.00,26.00:1263:6",	--"Exploration Northrend"
	"A:53.00,27.00:1263:17",	--"Exploration Northrend"
	"A:58.00,46.00:1263:18",	--"Exploration Northrend"
	"A:78.00,30.00:1263:5",	--"Exploration Northrend"
	"A:30.00,43.00:1263:19",	--"Exploration Northrend"
	"A:69.00,64.00:1254",	--"Friend or Fowl?"
	"A:33.70,26.00:5478:6",	--"The Limnologist"
	"A:33.70,26.00:5478:12",	--"The Limnologist"
	"R:73.60,61.60:32386::74.60,49.20:73.80,39.80",	--"Vigdis the War Maiden"
	"R:68.20,45.80:32386::72.40,50.40:68.40,58.80",	--"Vigdis the War Maiden"
	"R:71.60,13.80:32438",	--"Perobas the Bloodthirster"
	"R:68.60,17.60:32438",	--"Perobas the Bloodthirster"
	"R:60.80,20.20:32438",	--"Perobas the Bloodthirster"
	"R:53.00,11.40:32438",	--"Perobas the Bloodthirster"
	"R:50.60,04.80:32438",	--"Perobas the Bloodthirster"
	"R:33.20,80.60:32398",	--"King Ping"
	"R:32.00,75.80:32398",	--"King Ping"
	"R:30.80,71.20:32398",	--"King Ping"
	"R:26.00,64.00:32398",	--"King Ping"
	"R:31.00,56.60:32398")	--"King Ping"

tappend(points["TwilightHighlands:0"],
	--battle pets
	"P:37.40,71.80:393:Level 23",	-- Cockroach/Battle Pet
	"P:41.40,47.20:393:Level 23",	-- Cockroach/Battle Pet
	"P:51.00,32.60:393:Level 23",	-- Cockroach/Battle Pet
	"P:52.40,70.20:393:Level 23",	-- Cockroach/Battle Pet
	"P:58.40,30.20:393:Level 23",	-- Cockroach/Battle Pet
	"P:68.60,74.60:393:Level 23",	-- Cockroach/Battle Pet
	"P:46.40,53.80:398:Level 23",	-- Black Rat/Battle Pet
	"P:50.40,68.80:398:Level 23",	-- Black Rat/Battle Pet
	"P:52.00,32.20:398:Level 23",	-- Black Rat/Battle Pet
	"P:63.00,22.00:414:Level 23",	-- Scorpid/Battle Pet
	"P:21.00,19.00:418:Level 23",	-- Water Snake/Battle Pet
	"P:52.00,42.00:431:Level 23",	-- Rattlesnake/Battle Pet
	"P:59.00,21.00:431:Level 23",	-- Rattlesnake/Battle Pet
	"P:31.60,69.60:470:Level 23",	-- Twilight Spider/Battle Pet
	"P:40.00,47.60:470:Level 23",	-- Twilight Spider/Battle Pet
	"P:44.60,84.40:470:Level 23",	-- Twilight Spider/Battle Pet
	"P:57.60,32.60:470:Level 23",	-- Twilight Spider/Battle Pet
	"P:61.00,76.80:470:Level 23",	-- Twilight Spider/Battle Pet
	"P:62.20,48.60:470:Level 23",	-- Twilight Spider/Battle Pet
	"P:48.40,28.20:548:Level 23",	-- Wildhammer Gryphon Hatchling/Battle Pet
	"P:56.60,15.60:548:Level 23",	-- Wildhammer Gryphon Hatchling/Battle Pet
	"P:48.00,73.00:549:Level 23",	-- Yellow-Bellied Marmot/Battle Pet
	"P:69.00,38.00:549:Level 23",	-- Yellow-Bellied Marmot/Battle Pet
	"P:74.00,67.00:549:Level 23",	-- Yellow-Bellied Marmot/Battle Pet
	"P:22.80,20.40:550:Level 23",	-- Highlands Mouse/Battle Pet
	"P:34.40,37.80:550:Level 23",	-- Highlands Mouse/Battle Pet
	"P:45.60,89.00:550:Level 23",	-- Highlands Mouse/Battle Pet
	"P:52.00,32.20:550:Level 23",	-- Highlands Mouse/Battle Pet
	"P:77.20,52.40:550:Level 23",	-- Highlands Mouse/Battle Pet
	"P:41.40,47.20:552:Level 23",	-- Twilight Fiendling/Battle Pet
	"P:59.20,31.60:552:Level 23",	-- Twilight Fiendling/Battle Pet
	"P:62.20,51.00:552:Level 23",	-- Twilight Fiendling/Battle Pet
	"P:29.00,23.00:645:Level 23",	-- Highlands Turkey/Battle Pet
	"P:50.00,35.00:647:Level 23",	-- Grizzly Squirrel/Battle Pet
	"P:65.00,56.00:647:Level 23",	-- Grizzly Squirrel/Battle Pet
	"P:73.00,68.00:647:Level 23",	-- Grizzly Squirrel/Battle Pet
	"P:21.00,15.00:648:Level 23",	-- Huge Toad/Battle Pet
	"P:57.00,12.00:648:Level 23",	-- Huge Toad/Battle Pet
	"P:53.20,34.20:823:Level 23",	-- Highlands Skunk/Battle Pet
	"P:55.00,26.20:823:Level 23",	-- Highlands Skunk/Battle Pet
	"P:57.60,67.20:823:Level 23",	-- Highlands Skunk/Battle Pet
	"P:59.20,41.60:823:Level 23",	-- Highlands Skunk/Battle Pet
	"P:73.00,68.80:823:Level 23",	-- Highlands Skunk/Battle Pet
	--achievements
	"A:66.40,73.60:5753:36:Evan Silvia",	-- Cataclysmically Delicious
	"A:66.40,73.60:5753:38:Evan Silvia",	-- Cataclysmically Delicious
	"A:54.00,44.60:5753:7:Garm Bonehew",	-- Cataclysmically Delicious
	"A:54.00,44.60:5753:28:Garm Bonehew",	-- Cataclysmically Delicious
	"A:50.60,58.40:5753:26:Gronk Hamcheeks",	-- Cataclysmically Delicious
	"A:50.60,58.40:5753:30:Gronk Hamcheeks",	-- Cataclysmically Delicious
	"A:50.60,58.40:5753:45:Gronk Hamcheeks",	-- Cataclysmically Delicious
	"A:50.60,58.40:5753:46:Gronk Hamcheeks",	-- Cataclysmically Delicious
	"A:79.40,78.60:5753:18:Innkeeper Francis",	-- Cataclysmically Delicious
	"A:79.40,78.60:5753:24:Innkeeper Francis",	-- Cataclysmically Delicious
	"A:79.40,78.60:5753:29:Innkeeper Francis",	-- Cataclysmically Delicious
	"A:79.40,78.60:5753:40:Innkeeper Francis",	-- Cataclysmically Delicious
	"A:79.40,78.60:5753:41:Innkeeper Francis",	-- Cataclysmically Delicious
	"A:79.40,78.60:5753:44:Innkeeper Francis",	-- Cataclysmically Delicious
	"A:79.00,77.60:5753:7:Innkeeper Teresa",	-- Cataclysmically Delicious
	"A:79.00,77.60:5753:13:Innkeeper Teresa",	-- Cataclysmically Delicious
	"A:79.00,77.60:5753:16:Innkeeper Teresa",	-- Cataclysmically Delicious
	"A:79.00,77.60:5753:19:Innkeeper Teresa",	-- Cataclysmically Delicious
	"A:79.00,77.60:5753:28:Innkeeper Teresa",	-- Cataclysmically Delicious
	"A:79.00,77.60:5753:39:Innkeeper Teresa",	-- Cataclysmically Delicious
	"A:76.20,52.60:5753:13:Lizzy 'Lemons'",	-- Cataclysmically Delicious
	"A:76.20,52.60:5753:18:Lizzy 'Lemons'",	-- Cataclysmically Delicious
	"A:76.20,52.60:5753:19:Lizzy 'Lemons'",	-- Cataclysmically Delicious
	"A:76.20,52.60:5753:24:Lizzy 'Lemons'",	-- Cataclysmically Delicious
	"A:76.20,52.60:5753:29:Lizzy 'Lemons'",	-- Cataclysmically Delicious
	"A:76.20,52.60:5753:39:Lizzy 'Lemons'",	-- Cataclysmically Delicious
	"A:76.20,52.60:5753:40:Lizzy 'Lemons'",	-- Cataclysmically Delicious
	"A:76.20,52.60:5753:41:Lizzy 'Lemons'",	-- Cataclysmically Delicious
	"A:76.20,52.60:5753:44:Lizzy 'Lemons'",	-- Cataclysmically Delicious
	"A:50.60,58.40:5754:3:Gronk Hamcheeks",	-- Drown Your Sorrows
	"A:50.60,58.40:5754:7:Gronk Hamcheeks",	-- Drown Your Sorrows
	"A:21.00,19.00:2556:2",	--"Pest Control, Water Snake"
	"A:63.00,22.00:2556:14",	--"Pest Control, Scorpid"
	"A:21.00,15.00:2557:7",	--"To All The Squirrels Who Shared My Life"
	"A:57.00,12.00:2557:7",	--"To All The Squirrels Who Shared My Life"
	"A:50.00,35.00:2557:6",	--"To All The Squirrels Who Shared My Life"
	"A:65.00,56.00:2557:6",	--"To All The Squirrels Who Shared My Life"
	"A:73.00,68.00:2557:6",	--"To All The Squirrels Who Shared My Life"
	"A:69.00,38.00:5548:13",	--"To All the Squirrels Who Cared for Me"
	"A:48.00,73.00:5548:13",	--"To All the Squirrels Who Cared for Me"
	"A:74.00,67.00:5548:13",	--"To All the Squirrels Who Cared for Me"
	"A:52.00,42.00:5548:7",	--"To All the Squirrels Who Cared for Me"
	"A:59.00,21.00:5548:7",	--"To All the Squirrels Who Cared for Me"
	"A:29.00,23.00:5548:4",	--"To All the Squirrels Who Cared for Me"
	"A:74.00,52.00:4866:5",	--"Exploration Cataclysm"
	"A:76.00,62.00:4866:23",	--"Exploration Cataclysm"
	"A:80.00,75.00:4866:11",	--"Exploration Cataclysm"
	"A:64.00,77.00:4866:15",	--"Exploration Cataclysm"
	"A:45.00,76.00:4866:3",	--"Exploration Cataclysm"
	"A:49.00,68.00:4866:6",	--"Exploration Cataclysm"
	"A:54.00,65.00:4866:12",	--"Exploration Cataclysm"
	"A:51.00,57.00:4866:2",	--"Exploration Cataclysm"
	"A:41.00,59.00:4866:25",	--"Exploration Cataclysm"
	"A:40.00,46.00:4866:21",	--"Exploration Cataclysm"
	"A:20.00,55.00:4866:10",	--"Exploration Cataclysm"
	"A:29.00,44.00:4866:26",	--"Exploration Cataclysm"
	"A:26.00,38.00:4866:4",	--"Exploration Cataclysm"
	"A:25.00,24.00:4866:24",	--"Exploration Cataclysm"
	"A:36.00,38.00:4866:19",	--"Exploration Cataclysm"
	"A:38.00,33.00:4866:8",	--"Exploration Cataclysm"
	"A:42.00,23.00:4866:13",	--"Exploration Cataclysm"
	"A:43.00,17.00:4866:16",	--"Exploration Cataclysm"
	"A:47.00,13.00:4866:27",	--"Exploration Cataclysm"
	"A:55.00,14.00:4866:14",	--"Exploration Cataclysm"
	"A:76.00,16.00:4866:20",	--"Exploration Cataclysm"
	"A:70.00,36.00:4866:17",	--"Exploration Cataclysm"
	"A:57.00,31.00:4866:18",	--"Exploration Cataclysm"
	"A:48.00,30.00:4866:22",	--"Exploration Cataclysm"
	"A:54.00,42.00:4866:1",	--"Exploration Cataclysm"
	"A:62.00,48.00:4866:9",	--"Exploration Cataclysm"
	"A:59.00,57.00:4866:7",	--"Exploration Cataclysm"
	"A:55.70,36.30:5478:23",	--"The Limnologist"
	"A:72.00,80.80:5479:2",	--"The Oceanographer"
	"A:72.00,80.80:5479:9",	--"The Oceanographer"
	"A:72.00,80.80:5479:18",	--"The Oceanographer"
	"A:50.70,58.30:4958:3")	--The First Rule of Ring of Blood is You Don't Talk About Ring of Blood"

tappend(points["Winterspring:0"],
	--battle pets
	"P:46.00,42.00:412:Level 16-17",	-- Spider/Battle Pet
	"P:25.60,51.80:441:Level 16-17",	-- Alpine Hare/Battle Pet
	"P:35.80,55.60:441:Level 16-17",	-- Alpine Hare/Battle Pet
	"P:58.00,34.20:441:Level 16-17",	-- Alpine Hare/Battle Pet
	"P:58.20,69.80:441:Level 16-17",	-- Alpine Hare/Battle Pet
	"P:62.80,81.00:441:Level 16-17",	-- Alpine Hare/Battle Pet
	"P:59.80,50.80:472:Level 16-17",	-- Rabid Nut Varmint 5000/Battle Pet
	"P:24.00,49.00:487:Level 16-17",	-- Alpine Chipmunk/Battle Pet
	"P:52.00,45.00:487:Level 16-17",	-- Alpine Chipmunk/Battle Pet
	"P:56.00,67.00:487:Level 16-17",	-- Alpine Chipmunk/Battle Pet
	"P:51.00,55.00:634:Level 16-17",	-- Crystal Spider/Battle Pet
	"P:61.00,85.00:634:Level 16-17",	-- Crystal Spider/Battle Pet
	"P:70.00,52.00:634:Level 16-17",	-- Crystal Spider/Battle Pet
	"P:59.60,53.60:1163:Level 17-18",	-- Anodized Robo Cub/Battle Pet
	"P:60.60,46.20:1163:Level 17-18",	-- Anodized Robo Cub/Battle Pet
	--rares
	"R:66.00,67.80:10202::64.60,56.40:53.60,59.60",	-- Azurous
	"R:62.80,64.20:10196::56.20,65.60",	-- General Colbatann
	"R:68.60,50.20:10199",	-- Grizzle Snowpaw
	"R:61.20,83.80:10198",	-- Kashoch the Reaver
	"R:24.60,51.60:10197",	-- Mezzir the Howler
	"R:47.80,18.80:10200",	-- Rak'shiri
	"R:45.80,17.60:10741",	-- Sian-Rotam
	"R:48.00,59.60:51045:Level 54",	-- Arcanus
	"R:62.40,24.60:50997:Level 54",	-- Bornak the Gorer
	"R:66.00,42.00:50995:Level 52",	-- Bruiser
	"R:35.60,48.60:50993:Level 50",	-- Gal'dorak
	"R:52.00,18.80:50819:Level 50",	-- Iceclaw
	"R:64.00,80.00:50353:Level 51",	-- Manas
	"R:59.60,24.00:50348:Level 51",	-- Norissis
	"R:66.80,83.60:50788:Level 52",	-- Quetzl
	"R:59.60,42.80:50346:Level 53",	-- Ronak
	"R:50.80,72.20:51028:Level 53",	-- The Deep Tunneler
	--achievements
	"A:65.60,64.40:6602:12:3 - Level 19 Pets",	-- Taming Kalimdor/Stone Cold Trixxy
	"A:46.00,42.00:2556:3",	--"Pest Control, Spider"
	"A:51.00,55.00:2556:11",	--"Pest Control, Crystal Spider"
	"A:61.00,85.00:2556:11",	--"Pest Control, Crystal Spider"
	"A:70.00,52.00:2556:11",	--"Pest Control, Crystal Spider"
	"A:24.00,49.00:5548:1",	--"To All the Squirrels Who Cared for Me"
	"A:52.00,45.00:5548:1",	--"To All the Squirrels Who Cared for Me"
	"A:56.00,67.00:5548:1",	--"To All the Squirrels Who Cared for Me"
	"A:32.00,50.00:857:1",	--"Exploration Kalimdor"
	"A:62.00,25.00:857:10",	--"Exploration Kalimdor"
	"A:47.00,17.00:857:11",	--"Exploration Kalimdor"
	"A:57.00,82.00:857:12",	--"Exploration Kalimdor"
	"A:36.00,56.00:857:2",	--"Exploration Kalimdor"
	"A:51.00,52.00:857:3",	--"Exploration Kalimdor"
	"A:49.00,40.00:857:4",	--"Exploration Kalimdor"
	"A:55.00,64.00:857:5",	--"Exploration Kalimdor"
	"A:61.00,37.00:857:6",	--"Exploration Kalimdor"
	"A:64.00,75.00:857:7",	--"Exploration Kalimdor"
	"A:68.00,58.00:857:8",	--"Exploration Kalimdor"
	"A:66.00,48.00:857:9",	--"Exploration Kalimdor"
	"A:24.30,46.50:5443:1",	--"E'ko Madness"
	"A:36.20,55.50:5443:1",	--"E'ko Madness"
	"A:48.00,18.90:5443:5",	--"E'ko Madness"
	"A:58.40,21.50:5443:6",	--"E'ko Madness"
	"A:64.50,29.10:5443:2",	--"E'ko Madness"
	"A:57.30,39.20:5443:3",	--"E'ko Madness"
	"A:66.50,55.30:5443:7",	--"E'ko Madness"
	"A:61.40,81.80:5443:4",	--"E'ko Madness"
	"A:79.80,42.40:5478:17")	--"The Limnologist"

tappend(points["Aszhara:0"],
	"P:63.80,17.80:470:Level 3-5",	-- Twilight Spider/Battle Pet
	"P:71.60,15.80:470:Level 3-5",	-- Twilight Spider/Battle Pet
	"P:11.60,74.60:378:Level 3-5",	-- Rabbit/Battle Pet
	"P:26.40,73.20:378:Level 3-5",	-- Rabbit/Battle Pet
	"P:26.60,45.60:378:Level 3-5",	-- Rabbit/Battle Pet
	"P:39.40,72.40:378:Level 3-5",	-- Rabbit/Battle Pet
	"P:48.40,76.20:378:Level 3-5",	-- Rabbit/Battle Pet
	"P:52.40,27.60:378:Level 3-5",	-- Rabbit/Battle Pet
	"P:15.40,65.40:379:Level 3-5",	-- Squirrel/Battle Pet
	"P:27.80,40.60:379:Level 3-5",	-- Squirrel/Battle Pet
	"P:31.80,69.00:379:Level 3-5",	-- Squirrel/Battle Pet
	"P:50.80,79.40:379:Level 3-5",	-- Squirrel/Battle Pet
	"P:55.20,22.60:379:Level 3-5",	-- Squirrel/Battle Pet
	"P:48.00,64.00:388:Level 3-5",	-- Shore Crab/Battle Pet
	"P:58.00,79.00:388:Level 3-5",	-- Shore Crab/Battle Pet
	"P:32.00,70.00:397:Level 3-5",	-- Skunk/Battle Pet
	"P:48.00,73.00:397:Level 3-5",	-- Skunk/Battle Pet
	"P:66.40,15.60:469:Level 3-5",	-- Twilight Beetle/Battle Pet
	"P:26.20,50.00:471:Level 3-5",	-- Robo-Chick/Battle Pet
	"P:29.80,66.40:471:Level 3-5",	-- Robo-Chick/Battle Pet
	"P:42.00,74.80:471:Level 3-5",	-- Robo-Chick/Battle Pet
	"P:52.00,73.20:471:Level 3-5",	-- Robo-Chick/Battle Pet
	"P:66.50,20.20:471:Level 3-5",	-- Robo-Chick/Battle Pet
	"P:30.00,66.50:472:Level 3-5",	-- Rabid Nut Varmint 5000/Battle Pet
	"P:42.60,77.00:472:Level 3-5",	-- Rabid Nut Varmint 5000/Battle Pet
	"P:43.40,24.80:472:Level 3-5",	-- Rabid Nut Varmint 5000/Battle Pet
	"P:51.20,73.80:472:Level 3-5",	-- Rabid Nut Varmint 5000/Battle Pet
	"P:66.20,20.00:472:Level 3-5",	-- Rabid Nut Varmint 5000/Battle Pet
	"P:42.60,45.20:473:Level 3-5",	-- Turquoise Turtle/Battle Pet
	"P:45.40,64.40:473:Level 3-5",	-- Turquoise Turtle/Battle Pet
	"P:60.20,56.60:473:Level 3-5",	-- Turquoise Turtle/Battle Pet
	"P:66.60,45.00:473:Level 3-5",	-- Turquoise Turtle/Battle Pet
	"P:68.60,83.80:473:Level 3-5",	-- Turquoise Turtle/Battle Pet
	"P:76.00,36.00:473:Level 3-5",	-- Turquoise Turtle/Battle Pet
	"R:45.00,27.80:6648",	-- Antilos
	"R:33.00,32.60:6651",	-- Gatekeeper Rageroar
	"R:63.20,79.20:6650::59.60,77.20",	-- General Fangferror
	"R:44.00,59.80:6649",	-- Lady Sesspira
	"R:43.60,52.60:13896::43.60,45.80",	-- Scalebeard
	"R:14.00,50.80:8660",	-- The Evalcharr
	"R:14.80,58.80:8660",	-- The Evalcharr
	"R:34.60,71.60:6118",	-- Varo'then's Ghost
	"R:37.40,74.60:6118",	-- Varo'then's Ghost
	"R:35.00,77.20:6118",	-- Varo'then's Ghost
	"A:21.00,55.00:852:1",	--"Exploration Kalimdor"
	"A:33.00,33.00:852:10",	--"Exploration Kalimdor"
	"A:27.00,78.00:852:11",	--"Exploration Kalimdor"
	"A:32.00,51.00:852:12",	--"Exploration Kalimdor"
	"A:63.00,69.00:852:13",	--"Exploration Kalimdor"
	"A:63.00,79.00:852:14",	--"Exploration Kalimdor"
	"A:35.00,75.00:852:15",	--"Exploration Kalimdor"
	"A:45.00,81.00:852:16",	--"Exploration Kalimdor"
	"A:55.00,78.00:852:17",	--"Exploration Kalimdor"
	"A:40.00,49.00:852:2",	--"Exploration Kalimdor"
	"A:59.00,50.00:852:3",	--"Exploration Kalimdor"
	"A:65.00,25.00:852:4",	--"Exploration Kalimdor"
	"A:80.00,32.00:852:5",	--"Exploration Kalimdor"
	"A:71.00,35.00:852:6",	--"Exploration Kalimdor"
	"A:49.00,27.00:852:7",	--"Exploration Kalimdor"
	"A:43.00,75.00:852:8",	--"Exploration Kalimdor"
	"A:25.00,38.00:852:9",	--"Exploration Kalimdor"
	"A:56.20,12.00:5448",	--"Glutton for Fiery Punishment"
	"A:56.20,12.00:5546",	--"Glutton for Icy Punishment"
	"A:56.20,12.00:5547",	--"Glutton for Shadowy Punishment"
	"A:50.00,50.00:5479:21",	--"The Oceanographer"
	"A:50.00,50.00:5479:25",	--"The Oceanographer"
	"A:48.00,64.00:1206:15",	--"To All The Squirrels I've Loved Before, Shore Crab"
	"A:58.00,79.00:1206:15",	--"To All The Squirrels I've Loved Before, Shore Crab"
	"A:32.00,70.00:1206:16",	--"To All The Squirrels I've Loved Before, Skunk"
	"A:48.00,73.00:1206:16")	--"To All The Squirrels I've Loved Before, Skunk"

	tappend(points["EasternPlaguelands:0"],
	--battle pets
	"P:18.60,67.00:398:Level 12",	-- Black Rat/Battle Pet
	"P:22.80,47.80:398:Level 12",	-- Black Rat/Battle Pet
	"P:35.20,86.00:398:Level 12",	-- Black Rat/Battle Pet
	"P:59.40,22.00:398:Level 12",	-- Black Rat/Battle Pet
	"P:11.00,25.00:412:Level 12",	-- Spider/Battle Pet
	"P:05.00,33.00:414:Level 12",	-- Scorpid/Battle Pet
	"P:12.00,25.00:414:Level 12",	-- Scorpid/Battle Pet
	"P:11.40,68.80:457:Level 12",	-- Festering Maggot/Battle Pet
	"P:11.60,68.80:457:Level 12",	-- Festering Maggot/Battle Pet
	"P:19.60,20.80:457:Level 12",	-- Festering Maggot/Battle Pet
	"P:23.00,29.00:457:Level 12",	-- Festering Maggot/Battle Pet
	"P:23.60,77.00:457:Level 12",	-- Festering Maggot/Battle Pet
	"P:25.20,62.80:457:Level 12",	-- Festering Maggot/Battle Pet
	"P:30.00,57.00:457:Level 12",	-- Festering Maggot/Battle Pet
	"P:33.00,70.40:457:Level 12",	-- Festering Maggot/Battle Pet
	"P:34.20,82.20:457:Level 12",	-- Festering Maggot/Battle Pet
	"P:36.60,74.20:457:Level 12",	-- Festering Maggot/Battle Pet
	"P:37.40,44.20:457:Level 12",	-- Festering Maggot/Battle Pet
	"P:37.60,65.40:457:Level 12",	-- Festering Maggot/Battle Pet
	"P:40.60,33.60:457:Level 12",	-- Festering Maggot/Battle Pet
	"P:44.80,38.20:457:Level 12",	-- Festering Maggot/Battle Pet
	"P:48.40,64.80:457:Level 12",	-- Festering Maggot/Battle Pet
	"P:49.80,44.20:457:Level 12",	-- Festering Maggot/Battle Pet
	"P:55.20,58.40:457:Level 12",	-- Festering Maggot/Battle Pet
	"P:59.20,21.80:457:Level 12",	-- Festering Maggot/Battle Pet
	"P:61.60,76.80:457:Level 12",	-- Festering Maggot/Battle Pet
	"P:64.80,58.60:457:Level 12",	-- Festering Maggot/Battle Pet
	"P:73.60,56.00:457:Level 12",	-- Festering Maggot/Battle Pet
	"P:19.00,24.00:626:Level 12",	-- Bat/Battle Pet
	"P:19.00,77.80:626:Level 12",	-- Bat/Battle Pet
	"P:31.00,25.80:626:Level 12",	-- Bat/Battle Pet
	"P:40.40,74.00:626:Level 12",	-- Bat/Battle Pet
	"P:62.00,37.60:626:Level 12",	-- Bat/Battle Pet
	"P:70.60,65.40:626:Level 12",	-- Bat/Battle Pet
	"P:08.60,54.40:627:Level 12",	-- Infected Squirrel/Battle Pet
	"P:16.80,20.80:627:Level 12",	-- Infected Squirrel/Battle Pet
	"P:29.20,67.40:627:Level 12",	-- Infected Squirrel/Battle Pet
	"P:37.00,22.00:627:Level 12",	-- Infected Squirrel/Battle Pet
	"P:52.60,15.40:627:Level 12",	-- Infected Squirrel/Battle Pet
	"P:55.20,47.60:627:Level 12",	-- Infected Squirrel/Battle Pet
	"P:08.60,54.80:628:Level 12",	-- Infected Fawn/Battle Pet
	"P:17.40,72.40:628:Level 12",	-- Infected Fawn/Battle Pet
	"P:18.80,20.40:628:Level 12",	-- Infected Fawn/Battle Pet
	"P:38.40,31.80:628:Level 12",	-- Infected Fawn/Battle Pet
	"P:48.80,70.20:628:Level 12",	-- Infected Fawn/Battle Pet
	"P:66.50,35.60:628:Level 12",	-- Infected Fawn/Battle Pet
	"P:70.60,65.00:628:Level 12",	-- Infected Fawn/Battle Pet
	--rares
	"R:35.80,21.40:10819",	-- Baron Bloodbane
	"R:65.40,24.80:10818",	-- Death Knight Soulbearer
	"R:47.60,21.40:10824",	-- Death-Hunter Hawkspear
	"R:19.20,77.80:10827",	-- Deathspeaker Selendre
	"R:35.80,61.80:10817",	-- Duggan Wildhammer
	"R:55.40,68.40:1843",	-- Foreman Jerris
	"R:54.00,68.60:1844",	-- Foreman Marcrid
	"R:25.80,68.60:10825",	-- Gish the Unmoving
	"R:78.80,39.20:10821",	-- Hed'mush the Rotting
	"R:33.80,48.40:10826::36.40,43.40:36.20,47.40",	-- Lord Darkscythe
	"R:76.40,73.40:10828",	-- Lynnia Abbendis
	"R:04.20,36.60:16184",	-- Nerubian Overseer
	"R:64.20,12.40:10823",	-- Zul'Brin Warpbranch
	"R:72.80,49.40:51042:Level 42",	-- Bleakheart
	"R:49.00,42.40:50813:Level 41",	-- Fene-mal
	"R:11.60,69.60:50775:Level 42",	-- Likk the Hunter
	"R:23.60,78.60:51053:Level 43",	-- Quirix
	"R:39.80,84.40:50856:Level 44",	-- Snark
	"R:57.80,79.20:50915:Level 41",	-- Snort
	"R:74.20,58.80:51027:Level 40",	-- Spirocula
	"R:39.80,56.60:50779:Level 44",	-- Sporeggon
	"R:11.60,28.60:50947:Level 43",	-- Varah
	--achievements
	"A:67.00,52.20:6603:8:3 - Level 14 Pets",	-- Taming Eastern Kingdoms/Deiza Plaguehorn
	"A:08.00,66.00:771:1",	--"Exploration Eastern Kingdom"
	"A:23.00,68.00:771:2",	--"Exploration Eastern Kingdom"
	"A:24.00,78.00:771:3",	--"Exploration Eastern Kingdom"
	"A:35.00,68.00:771:4",	--"Exploration Eastern Kingdom"
	"A:33.00,51.00:771:5",	--"Exploration Eastern Kingdom"
	"A:34.00,84.00:771:6",	--"Exploration Eastern Kingdom"
	"A:71.00,51.00:771:7",	--"Exploration Eastern Kingdom"
	"A:54.00,62.00:771:8",	--"Exploration Eastern Kingdom"
	"A:58.00,73.00:771:9",	--"Exploration Eastern Kingdom"
	"A:76.00,75.00:771:10",	--"Exploration Eastern Kingdom"
	"A:75.00,52.00:771:11",	--"Exploration Eastern Kingdom"
	"A:48.00,62.00:771:12",	--"Exploration Eastern Kingdom"
	"A:74.00,38.00:771:13",	--"Exploration Eastern Kingdom"
	"A:62.00,42.00:771:14",	--"Exploration Eastern Kingdom"
	"A:46.00,43.00:771:15",	--"Exploration Eastern Kingdom"
	"A:64.00,27.00:771:16",	--"Exploration Eastern Kingdom"
	"A:59.00,18.00:771:17",	--"Exploration Eastern Kingdom"
	"A:51.00,20.00:771:18",	--"Exploration Eastern Kingdom"
	"A:48.00,14.00:771:19",	--"Exploration Eastern Kingdom"
	"A:13.00,28.00:771:20",	--"Exploration Eastern Kingdom"
	"A:28.00,25.00:771:21",	--"Exploration Eastern Kingdom"
	"A:27.00,10.00:771:22",	--"Exploration Eastern Kingdom"
	"A:85.00,74.00:771:23",	--"Exploration Eastern Kingdom"
	"A:11.00,25.00:2556:3",	--"Pest Control, Spider"
	"A:05.00,33.00:2556:14",	--"Pest Control, Scorpid"
	"A:12.00,25.00:2556:14")	--"Pest Control, Scorpid"

tappend(points["CrystalsongForest:0"],
	"P:17.60,31.40:379:Level 22-23",	-- Squirrel/Battle Pet
	"P:18.60,36.50:379:Level 22-23",	-- Squirrel/Battle Pet
	"P:23.60,25.90:379:Level 22-23",	-- Squirrel/Battle Pet
	"P:25.40,36.50:379:Level 22-23",	-- Squirrel/Battle Pet
	"P:35.70,28.90:379:Level 22-23",	-- Squirrel/Battle Pet
	"P:71.40,62.20:379:Level 22-23",	-- Squirrel/Battle Pet
	"P:18.60,36.50:417:Level 22-23. Joins the Battle",	-- Rat/Battle Pet
	"P:35.70,28.90:417:Level 22-23. Joins the Battle",	-- Rat/Battle Pet
	"P:38.60,59.20:417:Level 22-23. Joins the Battle",	-- Rat/Battle Pet
	"P:90.50,60.00:417:Level 22-23. Joins the Battle",	-- Rat/Battle Pet
	"P:23.60,25.90:378:Level 22-23. Joins the Battle",	-- Rabbit/Battle Pet
	"P:45.50,64.70:378:Level 22-23. Joins the Battle",	-- Rabbit/Battle Pet
	"P:48.70,42.10:378:Level 22-23. Joins the Battle",	-- Rabbit/Battle Pet
	"P:71.40,62.20:378:Level 22-23. Joins the Battle",	-- Rabbit/Battle Pet
	"P:38.60,59.20:385:Level 22-23",	-- Mouse/Battle Pet
	"P:45.50,64.70:385:Level 22-23",	-- Mouse/Battle Pet
	"P:48.70,42.10:385:Level 22-23",	-- Mouse/Battle Pet
	"P:89.20,52.50:385:Level 22-23",	-- Mouse/Battle Pet
	"P:90.50,60.00:385:Level 22-23",	-- Mouse/Battle Pet
	"A:50.20,59.00:6605:2:3 - Level 25 Pets",	-- Taming Northrend/Nearly Headless Jacob
	"A:47.00,44.00:1457:4",	--"Exploration Northrend"
	"A:76.00,48.00:1457:3",	--"Exploration Northrend"
	"A:23.00,57.00:1457:1",	--"Exploration Northrend"
	"A:18.00,15.00:1457:2",	--"Exploration Northrend"
	"A:14.00,34.00:1457:6",	--"Exploration Northrend"
	"A:60.00,61.00:1457:8",	--"Exploration Northrend"
	"A:15.00,42.00:1457:7",	--"Exploration Northrend"
	"A:74.00,80.00:1457:5",	--"Exploration Northrend"
	"A:33.10,44.70:5478:19")	--"The Limnologist"

tappend(points["UngoroCrater:0"],
	"P:29.80,50.40:502:Level 15",	-- Spotted Bell Frog/Battle Pet
	"P:34.60,24.80:502:Level 15",	-- Spotted Bell Frog/Battle Pet
	"P:44.20,36.80:502:Level 15",	-- Spotted Bell Frog/Battle Pet
	"P:59.60,43.60:502:Level 15",	-- Spotted Bell Frog/Battle Pet
	"P:66.80,75.00:502:Level 15",	-- Spotted Bell Frog/Battle Pet
	"P:69.40,49.20:502:Level 15",	-- Spotted Bell Frog/Battle Pet
	"P:45.60,56.80:415:Level 15",	-- Fire Beetle/Battle Pet
	"P:47.40,42.80:415:Level 15",	-- Fire Beetle/Battle Pet
	"P:52.80,55.40:415:Level 15",	-- Fire Beetle/Battle Pet
	"P:55.00,45.20:415:Level 15",	-- Fire Beetle/Battle Pet
	"P:64.80,72.80:405:Level 15",	-- Tree Python/Battle Pet
	"P:34.40,63.00:405:Level 15",	-- Tree Python/Battle Pet
	"P:50.80,18.40:405:Level 15",	-- Tree Python/Battle Pet
	"P:68.60,55.80:405:Level 15",	-- Tree Python/Battle Pet
	"P:36.80,33.60:393:Level 15",	-- Cockroach/Battle Pet
	"P:51.00,29.20:393:Level 15",	-- Cockroach/Battle Pet
	"P:55.00,60.60:393:Level 15",	-- Cockroach/Battle Pet
	"P:68.60,36.80:393:Level 15",	-- Cockroach/Battle Pet
	"P:30.00,25.00:403:Level 15",	-- Parrot/Battle Pet
	"P:52.00,29.00:403:Level 15",	-- Parrot/Battle Pet
	"P:53.90,72.90:403:Level 15",	-- Parrot/Battle Pet
	"P:61.00,61.00:403:Level 15",	-- Parrot/Battle Pet
	"P:36.80,33.80:404:Level 15",	-- Long-tailed Mole/Battle Pet
	"P:38.60,66.00:404:Level 15",	-- Long-tailed Mole/Battle Pet
	"P:52.00,28.20:404:Level 15",	-- Long-tailed Mole/Battle Pet
	"P:55.00,61.00:404:Level 15",	-- Long-tailed Mole/Battle Pet
	"P:67.20,61.20:404:Level 15",	-- Long-tailed Mole/Battle Pet
	"P:26.40,56.80:406:Level 15",	-- Beetle/Battle Pet
	"P:32.00,32.60:406:Level 15",	-- Beetle/Battle Pet
	"P:40.80,75.80:406:Level 15",	-- Beetle/Battle Pet
	"P:68.20,35.80:406:Level 15",	-- Beetle/Battle Pet
	"P:68.80,56.40:406:Level 15",	-- Beetle/Battle Pet
	"P:31.00,54.00:502:Level 15",	-- Spotted Bell Frog/Battle Pet
	"P:36.00,51.00:502:Level 15",	-- Spotted Bell Frog/Battle Pet
	"P:55.20,39.00:502:Level 15",	-- Spotted Bell Frog/Battle Pet
	"P:68.40,64.20:502:Level 15",	-- Spotted Bell Frog/Battle Pet
	"P:70.20,75.40:502:Level 15",	-- Spotted Bell Frog/Battle Pet
	"P:75.60,51.20:502:Level 15",	-- Spotted Bell Frog/Battle Pet
	"P:31.80,77.00:503:Level 15",	-- Silky Moth/Battle Pet
	"P:34.40,63.80:503:Level 15",	-- Silky Moth/Battle Pet
	"P:37.60,42.40:503:Level 15",	-- Silky Moth/Battle Pet
	"P:41.80,18.60:503:Level 15",	-- Silky Moth/Battle Pet
	"P:52.80,75.00:503:Level 15",	-- Silky Moth/Battle Pet
	"P:63.20,21.20:503:Level 15",	-- Silky Moth/Battle Pet
	"P:71.20,72.00:503:Level 15",	-- Silky Moth/Battle Pet
	"P:28.00,55.80:504:Level 15",	-- Diemetradon Hatchling/Battle Pet
	"P:33.00,71.00:504:Level 15",	-- Diemetradon Hatchling/Battle Pet
	"P:40.60,67.00:504:Level 15",	-- Diemetradon Hatchling/Battle Pet
	"P:41.20,51.80:504:Level 15",	-- Diemetradon Hatchling/Battle Pet
	"P:34.20,26.80:631:Level 15",	-- Emerald Boa/Battle Pet
	"P:36.60,59.20:631:Level 15",	-- Emerald Boa/Battle Pet
	"P:64.00,72.20:631:Level 15",	-- Emerald Boa/Battle Pet
	"P:67.80,52.40:631:Level 15",	-- Emerald Boa/Battle Pet
	"P:48.40,53.20:632:Level 15",	-- Ash Lizard/Battle Pet
	"P:51.00,47.20:632:Level 15",	-- Ash Lizard/Battle Pet
	"R:48.80,85.60:6582",	-- Clutchmother Zavas
	"R:32.00,78.60:6583",	-- Gruff
	"R:29.60,47.40:6584::30.60,44.40",	-- King Mosh
	"R:34.80,38.60:6584::35.20,35.40",	-- King Mosh
	"R:37.60,31.80:6584::36.40,29.60",	-- King Mosh
	"R:32.60,30.20:6584::31.80,31.80",	-- King Mosh
	"R:29.60,36.40:6584",	-- King Mosh
	"R:61.00,72.20:6581",	-- Ravasaur Matriarch
	"R:66.50,67.00:6581",	-- Ravasaur Matriarch
	"R:63.00,19.00:6585",	-- Uhk'loc
	"A:53.90,72.90:1206:11",	--"To All The Squirrels I've Loved Before, Parrot"
	"A:30.00,25.00:1206:11",	--"To All The Squirrels I've Loved Before, Parrot"
	"A:52.00,29.00:1206:11",	--"To All The Squirrels I've Loved Before, Parrot"
	"A:61.00,61.00:1206:11",	--"To All The Squirrels I've Loved Before, Parrot"
	"A:51.00,47.00:854:1",	--"Exploration Kalimdor"
	"A:63.00,17.00:854:2",	--"Exploration Kalimdor"
	"A:43.00,41.00:854:4",	--"Exploration Kalimdor"
	"A:68.00,64.00:854:5",	--"Exploration Kalimdor"
	"A:69.00,34.00:854:5",	--"Exploration Kalimdor"
	"A:30.00,36.00:854:6",	--"Exploration Kalimdor"
	"A:29.00,53.00:854:7",	--"Exploration Kalimdor"
	"A:32.00,67.00:854:8",	--"Exploration Kalimdor"
	"A:50.00,79.00:854:9",	--"Exploration Kalimdor"
	"A:54.00,61.00:854:10",	--"Exploration Kalimdor"
	"A:76.00,33.00:854:11",	--"Exploration Kalimdor"
	"A:50.00,21.00:854:12")	--"Exploration Kalimdor"

tappend(points["Hellfire:0"],
	"P:16.50,50.00:635:Level 17",	-- Adder/Battle Pet
	"P:30.00,53.20:635:Level 17",	-- Adder/Battle Pet
	"P:55.60,57.80:635:Level 17",	-- Adder/Battle Pet
	"P:66.40,54.20:635:Level 17",	-- Adder/Battle Pet
	"P:61.00,72.20:635:Level 17",	-- Adder/Battle Pet
	"P:43.60,79.20:635:Level 17",	-- Adder/Battle Pet
	"P:15.80,47.60:414:Level 17",	-- Scorpid/Battle Pet
	"P:33.20,56.00:414:Level 17",	-- Scorpid/Battle Pet
	"P:58.60,57.00:414:Level 17",	-- Scorpid/Battle Pet
	"P:57.80,77.80:414:Level 17",	-- Scorpid/Battle Pet
	"P:48.40,74.60:414:Level 17",	-- Scorpid/Battle Pet
	"P:24.20,70.40:414:Level 17",	-- Scorpid/Battle Pet
	"A:64.20,49.20:6604:1:3 - Level 20 Pets",	-- Taming Outland/Nicki Tinytech
	"A:26.00,72.00:862:14",	--"Exploration Outland"
	"A:54.00,81.00:862:2",	--"Exploration Outland"
	"A:27.00,61.00:862:3",	--"Exploration Outland"
	"A:14.00,45.00:862:15",	--"Exploration Outland"
	"A:65.00,31.00:862:18",	--"Exploration Outland"
	"A:48.00,52.00:862:4",	--"Exploration Outland"
	"A:55.00,63.00:862:5",	--"Exploration Outland"
	"A:32.00,28.00:862:6",	--"Exploration Outland"
	"A:39.00,40.00:862:7",	--"Exploration Outland"
	"A:15.00,60.00:862:8",	--"Exploration Outland"
	"A:23.00,40.00:862:9",	--"Exploration Outland"
	"A:72.00,52.00:862:10",	--"Exploration Outland"
	"A:86.00,50.00:862:1",	--"Exploration Outland"
	"A:45.00,83.00:862:17",	--"Exploration Outland"
	"A:54.00,39.00:862:11",	--"Exploration Outland"
	"A:61.00,18.00:862:12",	--"Exploration Outland"
	"A:77.00,70.00:862:16",	--"Exploration Outland"
	"A:67.00,72.00:862:13",	--"Exploration Outland"
	"A:44.60,30.80:5478:13",	--"The Limnologist"
	"R:30.80,36.40:18678::26.80,43.40:24.40,51.60",	--"Fulgorge"
	"R:24.00,63.60:18678::28.00,68.80:34.60,60.20",	--"Fulgorge"
	"R:41.20,67.00:18678::42.80,71.80:51.20,70.80",	--"Fulgorge"
	"R:38.00,52.60:18678::44.60,49.40",	--"Fulgorge"
	"R:55.60,50.40:18677::49.00,50.60:46.00,43.20",	--"Mekthorg the Wild"
	"R:41.60,71.60:18677::43.60,62.60:47.20,58.40",	--"Mekthorg the Wild"
	"R:67.80,76.60:18677::69.60,69.00",	--"Mekthorg the Wild"
	"R:65.60,31.20:18679::59.20,29.60:52.80,27.20",	--"Vorakem Doomspeaker"
	"R:73.60,58.40:18679",	--"Vorakem Doomspeaker"
	"R:71.40,46.00:18679::74.00,37.00",	--"Vorakem Doomspeaker"
	"R:42.80,32.00:18679::38.60,30.60")	--"Vorakem Doomspeaker"

tappend(points["Arathi:0"],
	--battle pets
	"P:19.00,64.20:417:Level 7",	-- Rat/Battle Pet
	"P:26.00,26.80:417:Level 7",	-- Rat/Battle Pet
	"P:48.60,40.60:417:Level 7",	-- Rat/Battle Pet
	"P:48.60,77.40:417:Level 7",	-- Rat/Battle Pet
	"P:47.00,53.00:445:Level 7",	-- Tiny Twister/Battle Pet
	"P:19.00,38.00:443:Level 7",	-- Grasslands Cottontail/Battle Pet
	"P:24.00,21.00:443:Level 7",	-- Grasslands Cottontail/Battle Pet
	"P:30.60,66.40:443:Level 7",	-- Grasslands Cottontail/Battle Pet
	"P:33.00,30.60:443:Level 7",	-- Grasslands Cottontail/Battle Pet
	"P:54.00,38.60:443:Level 7",	-- Grasslands Cottontail/Battle Pet
	"P:65.80,61.80:443:Level 7",	-- Grasslands Cottontail/Battle Pet
	"P:71.40,43.80:443:Level 7",	-- Grasslands Cottontail/Battle Pet
	--rares
	"R:19.60,64.20:2598",	-- Darbel Montrose
	"R:14.40,67.80:2601",	-- Foulbelly
	"R:79.60,29.60:2609",	-- Geomancer Flintdagger
	"R:24.00,44.80:2603",	-- Kovork
	"R:48.00,76.20:2604",	-- Molok the Crusher
	"R:68.60,66.80:2606",	-- Nimar the Slayer
	"R:16.60,91.00:2779",	-- Prince Nazjak
	"R:18.80,31.00:2602",	-- Ruul Onestone
	"R:27.40,27.80:2600",	-- Singer
	"R:62.60,80.80:2605",	-- Zalas Witherbark
	"R:48.20,35.20:50891:Level 28",	-- Boros
	"R:22.60,87.60:50337:Level 28",	-- Cackle
	"R:30.60,62.40:51067:Level 29",	-- Glint
	"R:47.80,82.20:51063:Level 26",	-- Phalanax
	"R:35.80,64.20:50804:Level 27",	-- Ripwing
	"R:42.60,35.60:50865:Level 26",	-- Saurix
	"R:27.00,27.00:51040:Level 25 - 28",	-- Snuffles
	"R:55.80,57.20:50940:Level 27",	-- Swee
	--achievements
	"A:19.00,31.00:761:1",	--"Exploration Eastern Kingdom"
	"A:26.00,30.00:761:2",	--"Exploration Eastern Kingdom"
	"A:26.00,42.00:761:3",	--"Exploration Eastern Kingdom"
	"A:12.00,35.00:761:4",	--"Exploration Eastern Kingdom"
	"A:19.00,58.00:761:5",	--"Exploration Eastern Kingdom"
	"A:14.00,77.00:761:6",	--"Exploration Eastern Kingdom"
	"A:29.00,59.00:761:7",	--"Exploration Eastern Kingdom"
	"A:39.00,92.00:761:8",	--"Exploration Eastern Kingdom"
	"A:48.00,77.00:761:9",	--"Exploration Eastern Kingdom"
	"A:40.00,47.00:761:10",	--"Exploration Eastern Kingdom"
	"A:46.00,52.00:761:11",	--"Exploration Eastern Kingdom"
	"A:65.00,68.00:761:12",	--"Exploration Eastern Kingdom"
	"A:55.00,58.00:761:13",	--"Exploration Eastern Kingdom"
	"A:50.00,40.00:761:14",	--"Exploration Eastern Kingdom"
	"A:62.00,30.00:761:15",	--"Exploration Eastern Kingdom"
	"A:74.00,38.00:761:16",	--"Exploration Eastern Kingdom"
	"A:26.20,29.10:1206:4")	--"To All The Squirrels I've Loved Before, Cow"

tappend(points["SearingGorge:0"],
	--battle pets
	"P:38.00,28.00:415:Level 13",	-- Fire Beetle/Battle Pet
	"P:63.00,58.00:415:Level 13",	-- Fire Beetle/Battle Pet
	"P:43.00,35.00:423:Level 13",	-- Lava Crab/Battle Pet
	"P:45.00,47.00:423:Level 13",	-- Lava Crab/Battle Pet
	"P:56.00,55.00:423:Level 13",	-- Lava Crab/Battle Pet
	"P:26.40,54.40:427:Level 13",	-- Ash Spiderling/Battle Pet
	"P:33.80,64.00:427:Level 13",	-- Ash Spiderling/Battle Pet
	"P:38.60,34.00:427:Level 13",	-- Ash Spiderling/Battle Pet
	"P:54.60,69.40:427:Level 13",	-- Ash Spiderling/Battle Pet
	"P:56.60,35.80:427:Level 13",	-- Ash Spiderling/Battle Pet
	"P:64.60,45.60:427:Level 13",	-- Ash Spiderling/Battle Pet
	"P:71.60,30.60:427:Level 13",	-- Ash Spiderling/Battle Pet
	"P:24.60,54.40:428:Level 13",	-- Molten Hatchling/Battle Pet
	"P:36.00,61.20:428:Level 13",	-- Molten Hatchling/Battle Pet
	"P:37.00,54.80:428:Level 13",	-- Molten Hatchling/Battle Pet
	"P:38.80,73.40:428:Level 13",	-- Molten Hatchling/Battle Pet
	"P:43.00,38.60:428:Level 13",	-- Molten Hatchling/Battle Pet
	"P:57.80,76.60:428:Level 13",	-- Molten Hatchling/Battle Pet
	"P:58.40,45.40:428:Level 13",	-- Molten Hatchling/Battle Pet
	--rares
	"R:61.20,51.40:8279::54.60,57.60:57.40,59.80",	-- Faulty War Golem
	"R:29.60,26.00:8282",	-- Highlord Mastrogonde
	"R:29.00,76.20:8277",	-- Rekk'tilac
	"R:31.60,72.80:8277::27.80,69.00:32.00,69.20",	-- Rekk'tilac
	"R:40.60,57.60:8281",	-- Scald
	"R:58.20,41.80:8280::59.20,44.60:56.20,48.20",	-- Shleipnarr
	"R:38.20,44.40:8283",	-- Slave Master Blackheart
	"R:48.40,37.20:8278",	-- Smoldar
	"R:72.00,17.20:50876:Level 48",	-- Avis
	"R:66.00,42.40:50948:Level 48",	-- Crystalback
	"R:25.20,73.20:51066:Level 49",	-- Crystalfang
	"R:22.00,77.80:50946:Level 47",	-- Hogzilla
	"R:41.40,47.60:51048:Level 47",	-- Rexxus
	"R:18.20,39.00:51002:Level 47",	-- Scorpoxx
	"R:35.00,52.00:51010:Level 49",	-- Snips
	--achievements
	"A:35.40,27.40:6603:9:3 - Level 15 Pets",	-- Taming Eastern Kingdoms/Kortas Darkhammer
	"A:38.00,28.00:2556:16",	--"Pest Control, Fire Beetle"
	"A:63.00,58.00:2556:16",	--"Pest Control, Fire Beetle"
	"A:43.00,35.00:2557:8",	--"To All The Squirrels Who Shared My Life"
	"A:45.00,47.00:2557:8",	--"To All The Squirrels Who Shared My Life"
	"A:56.00,55.00:2557:8",	--"To All The Squirrels Who Shared My Life"
	"A:26.00,34.00:774:1",	--"Exploration Eastern Kingdom"
	"A:57.00,39.00:774:2",	--"Exploration Eastern Kingdom"
	"A:21.00,78.00:774:3",	--"Exploration Eastern Kingdom"
	"A:48.00,71.00:774:4",	--"Exploration Eastern Kingdom"
	"A:62.00,63.00:774:5",	--"Exploration Eastern Kingdom"
	"A:72.00,27.00:774:6",	--"Exploration Eastern Kingdom"
	"A:36.00,27.00:774:7",	--"Exploration Eastern Kingdom"
	"A:33.00,80.00:774:8")	--"Exploration Eastern Kingdom"

tappend(points["SouthernBarrens:0"],
	"P:43.20,70.40:386:Level 9",	-- Prairie Dog/Battle Pet
	"P:43.60,94.60:386:Level 9",	-- Prairie Dog/Battle Pet
	"P:44.60,45.00:386:Level 9",	-- Prairie Dog/Battle Pet
	"P:48.00,59.60:386:Level 9",	-- Prairie Dog/Battle Pet
	"P:48.20,86.60:386:Level 9",	-- Prairie Dog/Battle Pet
	"P:50.00,41.00:419:Level 9",	-- Small Frog/Battle Pet
	"P:45.00,61.00:475:Level 9",	-- Giraffe Calf/Battle Pet
	"P:45.60,42.40:475:Level 9",	-- Giraffe Calf/Battle Pet
	"P:47.60,82.80:475:Level 9",	-- Giraffe Calf/Battle Pet
	"P:42.40,27.00:631:Level 9",	-- Emerald Boa/Battle Pet
	"P:46.60,36.80:631:Level 9",	-- Emerald Boa/Battle Pet
	"P:50.60,41.80:631:Level 9",	-- Emerald Boa/Battle Pet
	"P:43.00,81.00:635:Level 9",	-- Adder/Battle Pet
	"P:45.00,44.00:635:Level 9",	-- Adder/Battle Pet
	"R:44.80,56.20:5834",	-- Azzere the Skyblade
	"R:49.80,89.60:5851",	-- Captain Gerogg Hammertoe
	"R:47.80,88.20:5849",	-- Digger Flameforge
	"R:42.20,37.60:5863",	-- Geopriest Gukk'rok
	"R:42.00,42.60:5863",	-- Geopriest Gukk'rok
	"R:44.20,42.00:5863",	-- Geopriest Gukk'rok
	"R:51.00,60.00:5863",	-- Geopriest Gukk'rok
	"R:43.40,84.60:5859",	-- Hagg Taurenbane
	"R:42.00,85.20:5859",	-- Hagg Taurenbane
	"R:40.40,83.00:5859",	-- Hagg Taurenbane
	"R:47.00,88.60:5847",	-- Heggin Stonewhisker
	"R:47.40,85.80:5848",	-- Malgin Barleybrew
	"R:41.60,67.20:3253",	-- Silithid Harvester
	"R:45.60,43.60:5829",	-- Snort the Heckler
	"R:38.60,33.60:5864",	-- Swinegart Spearhide
	"A:49.00,86.00:4996:1",	--"Exploration Kalimdor"
	"A:45.00,68.00:4996:2",	--"Exploration Kalimdor"
	"A:49.00,49.00:4996:3",	--"Exploration Kalimdor"
	"A:40.00,78.00:4996:4",	--"Exploration Kalimdor"
	"A:37.00,12.00:4996:5",	--"Exploration Kalimdor"
	"A:39.00,20.00:4996:6",	--"Exploration Kalimdor"
	"A:67.00,45.00:4996:7",	--"Exploration Kalimdor"
	"A:41.00,94.00:4996:8",	--"Exploration Kalimdor"
	"A:45.00,60.00:4996:9",	--"Exploration Kalimdor"
	"A:48.00,37.00:4996:10",	--"Exploration Kalimdor"
	"A:41.00,46.00:4996:11")	--"Exploration Kalimdor"

tappend(points["TheStormPeaks:0"],
	"P:22.80,60.80:558:Level 22",	-- Arctic Fox Kit/Battle Pet
	"P:32.60,48.80:558:Level 22",	-- Arctic Fox Kit/Battle Pet
	"P:34.80,87.00:558:Level 22",	-- Arctic Fox Kit/Battle Pet
	"P:46.80,63.60:558:Level 22",	-- Arctic Fox Kit/Battle Pet
	"P:65.00,42.80:641:Level 22",	-- Arctic Hare/Battle Pet
	"P:44.40,56.40:641:Level 22",	-- Arctic Hare/Battle Pet
	"P:45.20,81.40:641:Level 22",	-- Arctic Hare/Battle Pet
	"P:27.60,63.60:641:Level 22",	-- Arctic Hare/Battle Pet
	"P:25.20,58.80:633:Level 22",	-- Mountain Skunk/Battle Pet
	"P:41.60,43.20:633:Level 22",	-- Mountain Skunk/Battle Pet
	"P:48.40,67.40:633:Level 22",	-- Mountain Skunk/Battle Pet
	"P:38.80,83.40:633:Level 22",	-- Mountain Skunk/Battle Pet
	"A:31.00,69.00:1269:4",	--"Exploration Northrend"
	"A:48.00,69.00:1269:1",	--"Exploration Northrend"
	"A:64.00,59.00:1269:3",	--"Exploration Northrend"
	"A:41.00,56.00:1269:8",	--"Exploration Northrend"
	"A:29.00,75.00:1269:15",	--"Exploration Northrend"
	"A:43.00,82.00:1269:14",	--"Exploration Northrend"
	"A:29.00,44.00:1269:2",	--"Exploration Northrend"
	"A:25.00,51.00:1269:16",	--"Exploration Northrend"
	"A:27.00,43.00:1269:13",	--"Exploration Northrend"
	"A:35.00,86.00:1269:7",	--"Exploration Northrend"
	"A:66.00,50.00:1269:9",	--"Exploration Northrend"
	"A:34.00,56.00:1269:12",	--"Exploration Northrend"
	"A:64.00,47.00:1269:6",	--"Exploration Northrend"
	"A:70.00,49.00:1269:11",	--"Exploration Northrend"
	"A:40.00,24.00:1269:10",	--"Exploration Northrend"
	"A:26.00,62.00:1269:5",	--"Exploration Northrend"
	"A:35.10,87.70:1428",	--"Mine Sweeper"
	"R:26.80,43.60:32630::30.80,38.20",	--"Vyragosa"
	"R:34.20,30.80:32630::51.80,31.80:48.80,46.20",	--"Vyragosa"
	"R:44.60,58.40:32630",	--"Vyragosa"
	"R:50.80,70.20:32630",	--"Vyragosa"
	"R:47.60,81.60:32630",	--"Vyragosa"
	"R:39.80,84.80:32630",	--"Vyragosa"
	"R:37.20,76.80:32630",	--"Vyragosa"
	"R:41.60,69.00:32630",	--"Vyragosa"
	"R:43.20,58.40:32630",	--"Vyragosa"
	"R:33.80,46.00:32630",	--"Vyragosa"
	"R:39.80,41.80:32630",	--"Vyragosa"
	"R:40.40,56.80:32630",	--"Vyragosa"
	"R:36.20,65.00:32630",	--"Vyragosa"
	"R:29.40,66.60:32630",	--"Vyragosa"
	"R:29.00,50.60:32630",	--"Vyragosa"
	"R:32.20,82.00:32630",	--"Vyragosa"
	"R:26.60,76.20:32630",	--"Vyragosa"
	"R:37.80,58.60:32500",	--"Dirkee"
	"R:41.00,51.60:32500",	--"Dirkee"
	"R:41.60,40.60:32500",	--"Dirkee"
	"R:68.00,47.60:32500")	--"Dirkee"

tappend(points["VashjirRuins:0"],
	--achievements
	"A:49.20,42.00:5754:4:Caretaker Movra",	-- Drown Your Sorrows
	"A:44.00,42.00:5548:11",	--"To All the Squirrels Who Cared for Me"
	"A:53.00,60.00:5548:11",	--"To All the Squirrels Who Cared for Me"
	"A:57.00,41.00:5548:11",	--"To All the Squirrels Who Cared for Me"
	"A:65.00,42.00:5548:9",	--"To All the Squirrels Who Cared for Me"
	"A:55.00,28.00:4825:20",	--"Exploration Cataclysm"
	"A:50.00,41.00:4825:21",	--"Exploration Cataclysm"
	"A:65.00,43.00:4825:18",	--"Exploration Cataclysm"
	"A:59.00,48.00:4825:17",	--"Exploration Cataclysm"
	"A:46.00,79.50:4825:16",	--"Exploration Cataclysm"
	"A:33.00,69.00:4825:19",	--"Exploration Cataclysm"
	"A:43.00,47.00:4825:9")	--"Exploration Cataclysm"

tappend(points["HillsbradFoothills:0"],
	--battle pets
	"P:45.40,48.60:452:Level 6",	-- Red-Tailed Chipmunk/Battle Pet
	"P:55.00,51.40:452:Level 6",	-- Red-Tailed Chipmunk/Battle Pet
	"P:65.20,50.00:452:Level 6",	-- Red-Tailed Chipmunk/Battle Pet
	"P:55.40,72.40:452:Level 6",	-- Red-Tailed Chipmunk/Battle Pet
	"P:40.20,75.60:452:Level 6",	-- Red-Tailed Chipmunk/Battle Pet
	"P:36.00,34.00:378:Level 6",	-- Rabbit/Battle Pet
	"P:50.00,43.40:378:Level 6",	-- Rabbit/Battle Pet
	"P:53.00,39.60:378:Level 6",	-- Rabbit/Battle Pet
	"P:54.80,54.80:378:Level 6",	-- Rabbit/Battle Pet
	"P:57.80,20.20:378:Level 6",	-- Rabbit/Battle Pet
	"P:66.40,70.20:378:Level 6",	-- Rabbit/Battle Pet
	"P:33.50,73.10:412:Level 6",	-- Spider/Battle Pet
	"P:32.80,43.00:417:Level 6",	-- Rat/Battle Pet
	"P:39.40,60.40:417:Level 6",	-- Rat/Battle Pet
	"P:50.80,72.00:417:Level 6",	-- Rat/Battle Pet
	"P:56.80,48.60:417:Level 6",	-- Rat/Battle Pet
	"P:57.40,25.40:417:Level 6",	-- Rat/Battle Pet
	"P:38.90,63.80:450:Level 6",	-- Maggot/Battle Pet
	"P:30.40,69.80:453:Level 6",	-- Infested Bear Cub/Battle Pet
	"P:35.80,71.20:453:Level 6",	-- Infested Bear Cub/Battle Pet
	"P:36.40,77.80:453:Level 6",	-- Infested Bear Cub/Battle Pet
	"P:48.00,44.00:640:Level 6",	-- Snowshoe Hare/Battle Pet
	"P:51.00,14.00:640:Level 6",	-- Snowshoe Hare/Battle Pet
	"P:53.00,39.00:640:Level 6",	-- Snowshoe Hare/Battle Pet
	"P:56.00,27.00:640:Level 6",	-- Snowshoe Hare/Battle Pet
	"P:53.00,70.00:648:Level 6",	-- Huge Toad/Battle Pet
	"P:58.00,60.00:648:Level 6",	-- Huge Toad/Battle Pet
	"P:61.00,47.00:648:Level 6",	-- Huge Toad/Battle Pet
	"P:28.00,42.60:1159 :Level 6-7",	-- Lofty Libram/Battle Pet
	"P:33.40,31.80:1159 :Level 6-7",	-- Lofty Libram/Battle Pet
	"P:33.80,42.20:1159 :Level 6-7",	-- Lofty Libram/Battle Pet
	--rares
	"R:44.20,54.00:14222",	-- Araga
	"R:63.60,52.60:14280",	-- Big Samras
	"R:69.20,31.00:14223::61.80,42.00:57.60,60.80",	-- Cranky Benj
	"R:43.60,74.80:14279",	-- Creepthess
	"R:58.20,23.40:14221::55.40,24.60",	-- Gravis Slipknot
	"R:31.60,40.00:47010",	-- Indigos
	"R:49.80,50.60:14281",	-- Jimmy the Bleeder
	"R:54.60,76.60:14277",	-- Lady Zephris
	"R:49.40,18.40:2453",	-- Lo'Grosh
	"R:60.20,28.80:2258",	-- Maggarrak
	"R:59.60,73.60:14278",	-- Ro'Bark
	"R:32.60,80.20:14276",	-- Scargil
	"R:43.60,38.80:2452",	-- Skhowl
	"R:63.20,85.80:14275",	-- Tamra Stormpike
	"R:47.00,66.50:50335:Level 20",	-- Alitus
	"R:46.80,76.00:50955:Level 23",	-- Carcinak
	"R:56.20,54.60:51022:Level 24",	-- Chordix
	"R:51.80,86.80:50967:Level 24",	-- Craw the Ravager
	"R:28.60,83.20:50858:Level 22",	-- Dustwing
	"R:31.60,40.00:47010:Level 17",	-- Indigos
	"R:35.00,78.60:50929:Level 21",	-- Little Bjorn
	"R:68.80,56.00:51076:Level 23",	-- Lopex
	"R:37.00,68.00:50765:Level 20",	-- Miasmiss
	"R:33.00,55.00:50818:Level 21",	-- The Dark Prowler
	"R:45.60,53.60:51057:Level 22",	-- Weevil
	"R:77.40,59.00:50770:Level 28",	-- Zorn
	--achievements
	"A:33.00,71.00:772:1",	--"Exploration Eastern Kingdom"
	"A:49.00,47.00:772:2",	--"Exploration Eastern Kingdom"
	"A:50.00,24.00:772:3",	--"Exploration Eastern Kingdom"
	"A:30.00,36.00:772:4",	--"Exploration Eastern Kingdom"
	"A:44.00,10.00:772:5",	--"Exploration Eastern Kingdom"
	"A:46.00,54.00:772:6",	--"Exploration Eastern Kingdom"
	"A:62.00,84.00:772:7",	--"Exploration Eastern Kingdom"
	"A:76.00,41.00:772:8",	--"Exploration Eastern Kingdom"
	"A:51.00,31.00:772:9",	--"Exploration Eastern Kingdom"
	"A:40.00,48.00:772:10",	--"Exploration Eastern Kingdom"
	"A:43.00,39.00:772:11",	--"Exploration Eastern Kingdom"
	"A:39.00,60.00:772:12",	--"Exploration Eastern Kingdom"
	"A:33.00,47.00:772:13",	--"Exploration Eastern Kingdom"
	"A:35.00,25.00:772:14",	--"Exploration Eastern Kingdom"
	"A:58.00,74.00:772:15",	--"Exploration Eastern Kingdom"
	"A:26.00,85.00:772:16",	--"Exploration Eastern Kingdom"
	"A:45.00,26.00:772:17",	--"Exploration Eastern Kingdom"
	"A:47.00,18.00:772:18",	--"Exploration Eastern Kingdom"
	"A:55.00,38.00:772:19",	--"Exploration Eastern Kingdom"
	"A:29.00,63.00:772:20",	--"Exploration Eastern Kingdom"
	"A:47.00,71.00:772:21",	--"Exploration Eastern Kingdom"
	"A:57.00,25.00:772:22",	--"Exploration Eastern Kingdom"
	"A:56.00,46.00:772:23",	--"Exploration Eastern Kingdom"
	"A:44.00,50.00:772:24",	--"Exploration Eastern Kingdom"
	"A:50.00,12.00:772:25",	--"Exploration Eastern Kingdom"
	"A:67.00,37.00:772:26",	--"Exploration Eastern Kingdom"
	"A:33.50,73.10:2556:3",	--"Pest Control, Spider"
	"A:38.90,63.80:2556:13",	--"Pest Control, Maggot"
	"A:53.00,70.00:2557:7",	--"To All The Squirrels Who Shared My Life"
	"A:58.00,60.00:2557:7",	--"To All The Squirrels Who Shared My Life"
	"A:61.00,47.00:2557:7")	--"To All The Squirrels Who Shared My Life"


tappend(points["VashjirKelpForest:0"],
	"A:40.00,32.00:4825:14",	--"Exploration Cataclysm"
	"A:46.00,26.00:4825:13",	--"Exploration Cataclysm"
	"A:58.00,45.00:4825:15",	--"Exploration Cataclysm"
	"A:52.00,56.00:4825:11",	--"Exploration Cataclysm"
	"A:60.00,60.00:4825:10",	--"Exploration Cataclysm"
	"A:58.00,78.00:4825:12",	--"Exploration Cataclysm"
	"A:45.00,27.60:5479:1:Drop from NPCs")	--"The Oceanographer"

tappend(points["ThousandNeedles:0"],
	--battle pets
	"P:07.60,25.60:424:Level 13",	-- Roach/Battle Pet
	"P:24.60,50.00:424:Level 13",	-- Roach/Battle Pet
	"P:35.00,38.60:424:Level 13",	-- Roach/Battle Pet
	"P:37.80,59.20:424:Level 13",	-- Roach/Battle Pet
	"P:56.20,41.80:424:Level 13",	-- Roach/Battle Pet
	"P:57.00,61.40:424:Level 13",	-- Roach/Battle Pet
	"P:65.20,73.80:424:Level 13",	-- Roach/Battle Pet
	"P:83.40,48.80:424:Level 13",	-- Roach/Battle Pet
	"P:94.20,78.40:424:Level 13",	-- Roach/Battle Pet
	"P:18.40,47.20:414:Level 13",	-- Scorpid/Battle Pet
	"P:55.80,61.40:414:Level 13",	-- Scorpid/Battle Pet
	"P:66.20,75.60:414:Level 13",	-- Scorpid/Battle Pet
	"P:69.60,48.60:414:Level 13",	-- Scorpid/Battle Pet
	"P:55.40,42.00:414:Level 13",	-- Scorpid/Battle Pet
	"P:17.40,47.20:416:Level 13",	-- Scorpling/Battle Pet
	"P:54.80,61.40:416:Level 13",	-- Scorpling/Battle Pet
	"P:66.20,74.60:416:Level 13",	-- Scorpling/Battle Pet
	"P:68.60,48.60:416:Level 13",	-- Scorpling/Battle Pet
	"P:54.40,42.00:416:Level 13",	-- Scorpling/Battle Pet
	"P:30.80,54.60:505:Level 13",	-- Twilight Iguana/Battle Pet
	"P:50.00,61.60:505:Level 13",	-- Twilight Iguana/Battle Pet
	--rares
	"R:72.60,49.00:5933::70.00,50.60",	-- Achellios the Banished
	"R:40.00,32.40:14427",	-- Gibblesnik
	"R:38.60,26.80:14426",	-- Harb Foulmountain
	"R:61.60,67.00:5935",	-- Ironeye the Invincible
	"R:70.00,85.40:4132",	-- Krkk'kx
	"R:06.00,42.00:5937",	-- Vile Sting
	"R:41.60,38.20:50952:Level 40",	-- Barnacle Jim
	"R:55.20,40.60:50892:Level 41",	-- Cyn
	"R:37.60,56.00:50741:Level 40",	-- Kaxx
	"R:43.80,40.80:50748:Level 41",	-- Nyaj
	"R:94.00,58.00:50785:Level 43",	-- Skyshadow
	"R:94.60,81.60:50727:Level 44",	-- Strix the Barbed
	"R:71.20,94.80:51008:Level 44",	-- The Barbed Horror
	"R:81.80,96.00:51001:Level 42",	-- Venomclaw
	--achievements
	"A:31.80,32.80:6602:11:3 - Level 15 Pets",	-- Taming Kalimdor/Kela Grimtotem
	"A:32.00,22.00:846:1",	--"Exploration Kalimdor"
	"A:41.00,29.00:846:2",	--"Exploration Kalimdor"
	"A:69.00,85.00:846:3",	--"Exploration Kalimdor"
	"A:92.00,81.00:846:4",	--"Exploration Kalimdor"
	"A:53.00,61.00:846:5",	--"Exploration Kalimdor"
	"A:30.00,57.00:846:6",	--"Exploration Kalimdor"
	"A:12.00,08.00:846:7",	--"Exploration Kalimdor"
	"A:32.00,35.00:846:8",	--"Exploration Kalimdor"
	"A:45.00,50.00:846:9",	--"Exploration Kalimdor"
	"A:88.00,57.00:846:10",	--"Exploration Kalimdor"
	"A:75.00,60.00:846:11",	--"Exploration Kalimdor"
	"A:12.00,34.00:846:12")	--"Exploration Kalimdor"

tappend(points["Ghostlands:0"],
	"P:36.10,53.50:450:Level 3-5",	-- Maggot/Battle Pet
	"P:28.00,50.00:461:Level 3-5",	-- Larva/Battle Pet
	"P:45.80,30.40:461:Level 3-5",	-- Larva/Battle Pet
	"P:12.80,34.60:463:Level 3-5",	-- Spirit Crab/Battle Pet
	"P:13.00,51.60:463:Level 3-5",	-- Spirit Crab/Battle Pet
	"P:18.60,28.00:463:Level 3-5",	-- Spirit Crab/Battle Pet
	"P:20.00,14.40:463:Level 3-5",	-- Spirit Crab/Battle Pet
	"P:21.40,06.00:463:Level 3-5",	-- Spirit Crab/Battle Pet
	"P:23.00,33.80:463:Level 3-5",	-- Spirit Crab/Battle Pet
	"R:34.40,47.60:22062",	-- Dr. Whitherlimb
	"R:40.60,49.60:22062",	-- Dr. Whitherlimb
	"R:35.60,89.60:22062",	-- Dr. Whitherlimb
	"R:29.60,88.80:22062",	-- Dr. Whitherlimb
	"A:46.00,32.00:858:1",	--"Exploration Eastern Kingdom"
	"A:61.00,12.00:858:2",	--"Exploration Eastern Kingdom"
	"A:26.00,16.00:858:3",	--"Exploration Eastern Kingdom"
	"A:18.00,43.00:858:4",	--"Exploration Eastern Kingdom"
	"A:33.00,35.00:858:5",	--"Exploration Eastern Kingdom"
	"A:55.00,48.00:858:6",	--"Exploration Eastern Kingdom"
	"A:79.00,21.00:858:7",	--"Exploration Eastern Kingdom"
	"A:72.00,32.00:858:8",	--"Exploration Eastern Kingdom"
	"A:40.00,49.00:858:9",	--"Exploration Eastern Kingdom"
	"A:35.00,72.00:858:10",	--"Exploration Eastern Kingdom"
	"A:65.00,60.00:858:11",	--"Exploration Eastern Kingdom"
	"A:71.00,63.00:858:12",	--"Exploration Eastern Kingdom"
	"A:13.00,57.00:858:13",	--"Exploration Eastern Kingdom"
	"A:34.00,47.00:858:14",	--"Exploration Eastern Kingdom"
	"A:48.00,11.00:858:15",	--"Exploration Eastern Kingdom"
	"A:47.00,79.00:858:16",	--"Exploration Eastern Kingdom"
	"A:36.10,53.50:2556:13",	--"Pest Control, Maggot"
	"A:45.80,30.40:2556:1",	--"Pest Control, Larva"
	"A:28.00,50.00:2556:1")	--"Pest Control, Larva"

tappend(points["Silithus:0"],
	--battle pets
	"P:31.40,41.00:414:Level 16",	-- Scorpid/Battle Pet
	"P:32.60,69.20:414:Level 16",	-- Scorpid/Battle Pet
	"P:38.20,35.20:414:Level 16",	-- Scorpid/Battle Pet
	"P:66.50,37.80:414:Level 16",	-- Scorpid/Battle Pet
	"P:45.40,61.20:414:Level 16",	-- Scorpid/Battle Pet
	"P:59.80,28.00:414:Level 16",	-- Scorpid/Battle Pet
	"P:39.40,75.20:484:Level 16",	-- Desert Spider/Battle Pet
	"P:49.80,70.20:484:Level 16",	-- Desert Spider/Battle Pet
	"P:30.20,71.40:484:Level 16",	-- Desert Spider/Battle Pet
	"P:64.00,58.20:484:Level 16",	-- Desert Spider/Battle Pet
	"P:38.40,59.60:406:Level 16",	-- Beetle/Battle Pet
	"P:55.80,80.60:406:Level 16",	-- Beetle/Battle Pet
	"P:65.60,45.60:406:Level 16",	-- Beetle/Battle Pet
	"P:28.80,27.40:433:Level 16",	-- Spiky Lizard/Battle Pet
	"P:48.40,34.80:433:Level 16",	-- Spiky Lizard/Battle Pet
	"P:52.40,63.40:433:Level 16",	-- Spiky Lizard/Battle Pet
	"P:59.60,28.80:433:Level 16",	-- Spiky Lizard/Battle Pet
	"P:29.00,16.00:482:Level 16",	-- Rock Viper/Battle Pet
	"P:37.00,24.40:511:Level 16",	-- Sidewinder/Battle Pet
	"P:39.20,16.40:511:Level 16",	-- Sidewinder/Battle Pet
	"P:43.20,33.80:511:Level 16",	-- Sidewinder/Battle Pet
	"P:60.40,41.20:511:Level 16",	-- Sidewinder/Battle Pet
	"P:62.20,26.00:511:Level 16",	-- Sidewinder/Battle Pet
	"P:65.20,17.40:511:Level 16",	-- Sidewinder/Battle Pet
	"P:28.30,80.90:513:Level 16. Only Avaliable Mar-Sept",	-- Qiraji Guardling/Battle Pet
	"P:35.60,80.30:513:Level 16. Only Avaliable Mar-Sept",	-- Qiraji Guardling/Battle Pet
	"P:40.00,79.20:513:Level 16. Only Avaliable Mar-Sept",	-- Qiraji Guardling/Battle Pet
	--rares
	"R:36.60,36.20:14472::37.20,42.40",	-- Gretheer
	"R:45.20,49.80:14472",	-- Gretheer
	"R:52.60,52.20:14472::52.60,56.80",	-- Gretheer
	"R:64.60,58.60:14472",	-- Gretheer
	"R:34.60,72.80:14477",	-- Grubthor
	"R:41.20,65.60:14477",	-- Grubthor
	"R:50.00,63.80:14477",	-- Grubthor
	"R:48.20,71.80:14477::49.60,73.60",	-- Grubthor
	"R:36.60,17.80:14478::36.60,23.80:30.60,26.60",	-- Huricanian
	"R:29.60,20.80:14478::34.80,15.40",	-- Huricanian
	"R:62.80,18.60:14476",	-- Krellack
	"R:67.60,29.80:14476",	-- Krellack
	"R:69.80,38.60:14476",	-- Krellack
	"R:34.60,39.80:14476",	-- Krellack
	"R:55.60,74.20:14473::59.20,64.20:63.00,69.40",	-- Lapress
	"R:59.00,72.80:14473::61.40,81.00:65.60,81.00",	-- Lapress
	"R:63.80,75.00:14473::66.50,73.20:64.00,70.80",	-- Lapress
	"R:50.60,27.60:14475::52.60,25.40:50.80,22.40",	-- Rex Ashil
	"R:36.00,82.80:14471",	-- Setis
	"R:28.60,76.00:14479::26.40,75.00",	-- Twilight Lord Everun
	"R:45.00,43.00:14479::44.60,40.00",	-- Twilight Lord Everun
	"R:33.00,33.60:14479::35.00,30.80:32.60,30.20",	-- Twilight Lord Everun
	"R:25.60,61.20:14474::27.40,60.60",	-- Zora
	"R:31.60,64.00:14474",	-- Zora
	"R:32.00,56.20:14474::33.80,53.00",	-- Zora
	"R:28.00,50.40:14474::28.60,53.40",	-- Zora
	"R:61.80,84.40:50737:Level 55",	-- Acroniss
	"R:64.40,80.20:50737:Level 55",	-- Acroniss
	"R:65.80,72.00:50737:Level 55",	-- Acroniss
	"R:62.60,89.20:50746:Level 59",	-- Bornix the Burrower
	"R:32.80,53.20:50897:Level 55",	-- Ffexk the Dunestalker
	"R:57.00,14.60:50370:Level 56",	-- Karapax
	"R:42.60,56.60:50745:Level 58",	-- Losaj
	"R:67.80,66.50:50743:Level 57",	-- Manax
	"R:44.20,16.40:50742:Level 57",	-- Qem
	"R:54.40,26.20:50744:Level 58",	-- Qu'rik
	"R:42.80,17.40:51004:Level 56",	-- Toxx
	--achievements
	"A:29.00,16.00:5548:8",	--"To All the Squirrels Who Cared for Me"
	"A:30.00,16.00:856:1",	--"Exploration Kalimdor"
	"A:64.00,47.00:856:2",	--"Exploration Kalimdor"
	"A:53.00,34.00:856:3",	--"Exploration Kalimdor"
	"A:31.00,53.00:856:4",	--"Exploration Kalimdor"
	"A:60.00,70.00:856:5",	--"Exploration Kalimdor"
	"A:35.00,80.00:856:6",	--"Exploration Kalimdor"
	"A:49.00,23.00:856:7",	--"Exploration Kalimdor"
	"A:81.00,18.00:856:8")	--"Exploration Kalimdor"

tappend(points["Nagrand:0"],
	"P:26.00,58.00:379:Level 18",	-- Squirrel/Battle Pet
	"P:40.80,28.00:379:Level 18",	-- Squirrel/Battle Pet
	"P:52.20,53.20:379:Level 18",	-- Squirrel/Battle Pet
	"P:70.80,48.60:379:Level 18",	-- Squirrel/Battle Pet
	"P:44.60,21.60:417:Level 18",	-- Rat/Battle Pet
	"P:49.60,54.60:417:Level 18",	-- Rat/Battle Pet
	"P:74.40,71.60:417:Level 18",	-- Rat/Battle Pet
	"P:75.60,62.40:417:Level 18",	-- Rat/Battle Pet
	"P:42.80,39.00:420:Level 18",	-- Toad/Battle Pet
	"P:53.60,44.00:420:Level 18",	-- Toad/Battle Pet
	"P:55.60,32.40:420:Level 18",	-- Toad/Battle Pet
	"P:56.80,23.20:420:Level 18",	-- Toad/Battle Pet
	"P:45.00,77.60:518:Level 18",	-- Clefthoof Runt/Battle Pet
	"P:45.20,25.60:518:Level 18",	-- Clefthoof Runt/Battle Pet
	"P:46.60,68.20:518:Level 18",	-- Clefthoof Runt/Battle Pet
	"P:50.80,31.40:518:Level 18",	-- Clefthoof Runt/Battle Pet
	"P:56.40,44.20:518:Level 18",	-- Clefthoof Runt/Battle Pet
	"P:57.80,62.80:518:Level 18",	-- Clefthoof Runt/Battle Pet
	"P:61.00,75.80:518:Level 18",	-- Clefthoof Runt/Battle Pet
	"P:61.60,41.40:518:Level 18",	-- Clefthoof Runt/Battle Pet
	"P:66.50,49.60:518:Level 18",	-- Clefthoof Runt/Battle Pet
	"P:70.60,70.60:518:Level 18",	-- Clefthoof Runt/Battle Pet
	"A:61.00,46.40:6604:3:3 - Level 22 Pets",	-- Taming Outland/Narrok
	"A:74.00,66.00:866:12",	--"Exploration Outland"
	"A:62.00,63.00:866:13",	--"Exploration Outland"
	"A:19.00,51.00:866:1",	--"Exploration Outland"
	"A:24.00,35.00:866:14",	--"Exploration Outland"
	"A:56.00,36.00:866:2",	--"Exploration Outland"
	"A:42.00,44.00:866:3",	--"Exploration Outland"
	"A:70.00,81.00:866:4",	--"Exploration Outland"
	"A:46.00,19.00:866:5",	--"Exploration Outland"
	"A:49.00,55.00:866:15",	--"Exploration Outland"
	"A:36.00,71.00:866:6",	--"Exploration Outland"
	"A:31.00,43.00:866:7",	--"Exploration Outland"
	"A:53.00,70.00:866:8",	--"Exploration Outland"
	"A:65.00,56.00:866:9",	--"Exploration Outland"
	"A:08.00,43.00:866:16",	--"Exploration Outland"
	"A:60.00,23.00:866:10",	--"Exploration Outland"
	"A:27.00,21.00:866:11",	--"Exploration Outland"
	"A:72.00,36.00:866:17",	--"Exploration Outland"
	"A:72.00,52.00:866:18",	--"Exploration Outland"
	"A:33.00,15.00:866:19",	--"Exploration Outland"
	"A:59.00,34.50:5478:2",	--"The Limnologist"
	"A:59.00,34.50:5478:14",	--"The Limnologist"
	"A:59.00,34.50:5478:25",	--"The Limnologist"
	"A:42.80,20.80:4958:1",	--The First Rule of Ring of Blood is You Don't Talk About Ring of Blood"
	"R:31.00,51.00:17144::35.20,49.00:36.00,45.20",	--"Goretooth"
	"R:41.60,47.40:17144::44.80,42.40:42.00,40.00",	--"Goretooth"
	"R:58.80,31.60:17144::61.80,30.60:55.40,25.00",	--"Goretooth"
	"R:75.80,75.40:17144::77.0,80.20",	--"Goretooth"
	"R:38.40,66.60:18683::38.80,75.00",	--"Voidhunter Yar"
	"R:32.60,73.60:18683::34.40,66.40")	--"Voidhunter Yar"

tappend(points["BurningSteppes:0"],
	--battle pets
	"P:37.80,55.00:415:Level 15",	-- Fire Beetle/Battle Pet
	"P:19.20,64.60:414:Level 15",	-- Scorpid/Battle Pet
	"P:43.80,35.80:414:Level 15",	-- Scorpid/Battle Pet
	"P:46.00,63.20:414:Level 15",	-- Scorpid/Battle Pet
	"P:55.20,42.40:414:Level 15",	-- Scorpid/Battle Pet
	"P:66.00,60.80:414:Level 15",	-- Scorpid/Battle Pet
	"P:72.80,39.40:414:Level 15",	-- Scorpid/Battle Pet
	"P:19.20,61.40:393:Level 15",	-- Cockroach/Battle Pet
	"P:45.40,33.40:393:Level 15",	-- Cockroach/Battle Pet
	"P:52.20,34.40:393:Level 15",	-- Cockroach/Battle Pet
	"P:69.20,53.80:393:Level 15",	-- Cockroach/Battle Pet
	"P:76.20,31.80:393:Level 15",	-- Cockroach/Battle Pet
	"P:34.00,42.00:423:Level 15",	-- Lava Crab/Battle Pet
	"P:51.00,38.00:423:Level 15",	-- Lava Crab/Battle Pet
	"P:66.00,50.00:423:Level 15",	-- Lava Crab/Battle Pet
	"P:10.20,50.80:425:Level 15",	-- Ash Viper/Battle Pet
	"P:48.20,40.00:425:Level 15",	-- Ash Viper/Battle Pet
	"P:56.00,39.40:425:Level 15",	-- Ash Viper/Battle Pet
	"P:65.00,64.60:425:Level 15",	-- Ash Viper/Battle Pet
	"P:26.60,59.00:429:Level 15",	-- Lava Beetle/Battle Pet
	"P:32.60,45.20:429:Level 15",	-- Lava Beetle/Battle Pet
	"P:44.80,60.40:429:Level 15",	-- Lava Beetle/Battle Pet
	"P:52.80,37.00:429:Level 15",	-- Lava Beetle/Battle Pet
	"P:67.40,37.00:429:Level 15",	-- Lava Beetle/Battle Pet
	"P:68.60,50.00:429:Level 15",	-- Lava Beetle/Battle Pet
	--rares
	"R:69.80,56.60:10077",	-- Deathmaw
	"R:74.40,48.20:10077",	-- Deathmaw
	"R:70.00,31.00:10077",	-- Deathmaw
	"R:64.20,32.40:10077",	-- Deathmaw
	"R:64.60,46.60:9604",	-- Gorgon'och
	"R:33.60,37.00:8979",	-- Gruklash
	"R:68.60,40.60:9602",	-- Hahk'Zor
	"R:27.60,59.60:8976",	-- Hematos
	"R:55.00,43.60:8981",	-- Malfunctioning Reaver
	"R:52.60,38.60:8981",	-- Malfunctioning Reaver
	"R:51.20,36.80:8981",	-- Malfunctioning Reaver
	"R:58.60,34.00:10078::56.00,35.20:58.40,30.20",	-- Terrorspark
	"R:43.80,39.80:8978",	-- Thauris Balgarr
	"R:72.80,23.00:50725:Level 51",	-- Azelisk
	"R:65.60,55.00:50807:Level 51",	-- Catal
	"R:63.80,52.00:50807:Level 51",	-- Catal
	"R:36.00,27.20:50792:Level 53",	-- Chiaa
	"R:18.20,32.60:50839:Level 49",	-- Chromehound
	"R:23.00,32.60:50839:Level 49",	-- Chromehound
	"R:74.60,49.60:50810:Level 51",	-- Favored of Isiset
	"R:47.20,25.60:50855:Level 52",	-- Jaxx the Rabid
	"R:28.80,33.20:50842:Level 52",	-- Magmagan
	"R:51.20,61.00:50361:Level 51",	-- Ornat
	"R:09.80,54.60:50357:Level 51",	-- Sunwing
	"R:05.60,38.60:50730:Level 51",	-- Venomspine
	--achievements
	"A:24.40,47.40:6603:10:3 - Level 17 Pets",	-- Taming Eastern Kingdoms/Durin Darkhammer
	"A:68.00,41.00:775:1",	--"Exploration Eastern Kingdom"
	"A:72.00,65.00:775:2",	--"Exploration Eastern Kingdom"
	"A:75.00,53.00:775:3",	--"Exploration Eastern Kingdom"
	"A:66.00,71.00:775:4",	--"Exploration Eastern Kingdom"
	"A:53.00,38.00:775:5",	--"Exploration Eastern Kingdom"
	"A:41.00,53.00:775:6",	--"Exploration Eastern Kingdom"
	"A:32.00,35.00:775:7",	--"Exploration Eastern Kingdom"
	"A:23.00,65.00:775:8",	--"Exploration Eastern Kingdom"
	"A:08.00,32.00:775:9",	--"Exploration Eastern Kingdom"
	"A:21.00,46.00:775:10",	--"Exploration Eastern Kingdom"
	"A:34.00,42.00:2557:8",	--"To All The Squirrels Who Shared My Life"
	"A:51.00,38.00:2557:8",	--"To All The Squirrels Who Shared My Life"
	"A:66.00,50.00:2557:8")	--"To All The Squirrels Who Shared My Life"

tappend(points["WesternPlaguelands:0"],
	--battle pets
	"P:46.40,52.20:398:Level 10",	-- Black Rat/Battle Pet
	"P:51.60,76.80:398:Level 10",	-- Black Rat/Battle Pet
	"P:53.20,44.20:398:Level 10",	-- Black Rat/Battle Pet
	"P:62.00,51.60:398:Level 10",	-- Black Rat/Battle Pet
	"P:63.80,58.00:398:Level 10",	-- Black Rat/Battle Pet
	"P:40.60,65.60:456:Level 10",	-- Blighthawk/Battle Pet
	"P:44.40,73.20:456:Level 10",	-- Blighthawk/Battle Pet
	"P:46.60,64.80:456:Level 10",	-- Blighthawk/Battle Pet
	--rares
	"R:64.00,56.60:1849",	-- Dreadwhisper
	"R:54.00,80.40:1847",	-- Foulmane
	"R:65.60,47.60:1848",	-- Lord Maldazzar
	"R:50.80,40.60:1841",	-- Scarlet Executioner
	"R:41.60,53.20:1839",	-- Scarlet High Clerist
	"R:45.00,52.00:1838",	-- Scarlet Interrogator
	"R:69.20,49.80:1837",	-- Scarlet Judge
	"R:53.80,44.20:1885",	-- Scarlet Smith
	"R:63.60,83.00:1851",	-- The Husk
	"R:32.00,72.60:50345:Level 35",	-- Alit
	"R:62.40,35.20:51058:Level 39",	-- Aphis
	"R:45.00,36.20:50937:Level 37",	-- Hamhide
	"R:36.00,52.60:50809:Level 39",	-- Heress
	"R:51.80,69.60:50778:Level 37",	-- Ironweb
	"R:66.50,55.60:50931:Level 35",	-- Mange
	"R:52.60,28.60:50906:Level 38",	-- Mutilax
	"R:61.60,72.60:51029:Level 38",	-- Parasitus
	"R:62.60,47.40:51031:Level 36",	-- Tracker
	"R:58.20,61.20:50922:Level 36",	-- Warg
	--achievements
	"A:32.00,72.00:1206:5",	--"To All The Squirrels I've Loved Before, Deer"
	"A:48.00,39.00:1206:5",	--"To All The Squirrels I've Loved Before, Deer"
	"A:62.00,64.00:770:1",	--"Exploration Eastern Kingdom"
	"A:68.00,78.00:770:2",	--"Exploration Eastern Kingdom"
	"A:51.00,78.00:770:3",	--"Exploration Eastern Kingdom"
	"A:43.00,69.00:770:4",	--"Exploration Eastern Kingdom"
	"A:27.00,57.00:770:5",	--"Exploration Eastern Kingdom"
	"A:36.00,56.00:770:6",	--"Exploration Eastern Kingdom"
	"A:46.00,53.00:770:7",	--"Exploration Eastern Kingdom"
	"A:52.00,66.00:770:8",	--"Exploration Eastern Kingdom"
	"A:48.00,32.00:770:9",	--"Exploration Eastern Kingdom"
	"A:44.00,16.00:770:10",	--"Exploration Eastern Kingdom"
	"A:47.00,42.00:770:11",	--"Exploration Eastern Kingdom"
	"A:62.00,58.00:770:12",	--"Exploration Eastern Kingdom"
	"A:65.00,40.00:770:13",	--"Exploration Eastern Kingdom"
	"A:69.00,50.00:770:14",	--"Exploration Eastern Kingdom"
	"A:31.70,66.30:5478:29")	--"The Limnologist"

tappend(points["ShadowmoonValley:0"],
	"P:22.20,35.00:425:Level 20-21",	-- Ash Viper/Battle Pet
	"P:33.00,43.80:425:Level 20-21",	-- Ash Viper/Battle Pet
	"P:49.00,31.40:425:Level 20-21",	-- Ash Viper/Battle Pet
	"P:59.80,53.40:425:Level 20-21",	-- Ash Viper/Battle Pet
	"P:73.80,85.40:425:Level 20-21",	-- Ash Viper/Battle Pet
	"P:46.40,45.80:519:Level 20. Rare Spawn",	-- Fel Flame/Battle Pet
	"P:46.40,61.20:519:Level 20. Rare Spawn",	-- Fel Flame/Battle Pet
	"P:49.20,34.00:519:Level 20. Rare Spawn",	-- Fel Flame/Battle Pet
	"P:51.60,54.40:519:Level 20. Rare Spawn",	-- Fel Flame/Battle Pet
	"P:58.60,51.60:519:Level 20. Rare Spawn",	-- Fel Flame/Battle Pet
	"P:58.80,41.40:519:Level 20. Rare Spawn",	-- Fel Flame/Battle Pet
	"A:31.00,41.40:6604:5:3 - Level 24 Pets",	-- Taming Outland/Bloodknight Antari
	"A:61.00,29.00:864:11",	--"Exploration Outland"
	"A:67.00,38.00:864:6",	--"Exploration Outland"
	"A:45.00,28.00:864:1",	--"Exploration Outland"
	"A:46.00,68.00:864:2",	--"Exploration Outland"
	"A:29.00,55.00:864:12",	--"Exploration Outland"
	"A:23.00,38.00:864:3",	--"Exploration Outland"
	"A:64.00,57.00:864:13",	--"Exploration Outland"
	"A:70.00,85.00:864:4",	--"Exploration Outland"
	"A:29.00,28.00:864:5",	--"Exploration Outland"
	"A:40.00,39.00:864:7",	--"Exploration Outland"
	"A:50.00,42.00:864:8",	--"Exploration Outland"
	"A:60.00,48.00:864:9",	--"Exploration Outland"
	"A:35.00,58.00:864:10",	--"Exploration Outland"
	"R:28.20,49.80:18695::30.80,58.60",	--"Ambassador Jerrikar"
	"R:45.80,66.40:18695::46.60,71.00",	--"Ambassador Jerrikar"
	"R:71.80,62.60:18695::69.00,59.40",	--"Ambassador Jerrikar"
	"R:59.80,37.20:18695::56.00,38.00",	--"Ambassador Jerrikar"
	"R:46.00,32.20:18695::46.80,26.60",	--"Ambassador Jerrikar"
	"R:37.00,44.40:18694::40.00,44.20:46.00,53.20",	--"Collidus the Warp-Watcher"
	"R:72.00,66.40:18694::62.40,63.80:56.20,73.60",	--"Collidus the Warp-Watcher"
	"R:58.80,22.80:18694::67.40,22.40:74.20,29.20",	--"Collidus the Warp-Watcher"
	"R:31.20,45.40:18696",	--"Kraator"
	"R:42.00,40.60:18696",	--"Kraator"
	"R:42.00,68.80:18696",	--"Kraator"
	"R:59.60,46.60:18696",	--"Kraator"
	"R:45.60,12.60:18696")	--"Kraator"

tappend(points["Hyjal:0"],
	--battle pets
	"P:57.80,67.00:469:Level 22-23",	-- Twilight Beetle/Battle Pet
	"P:58.80,83.40:469:Level 22-23",	-- Twilight Beetle/Battle Pet
	"P:26.00,36.40:469:Level 22-23",	-- Twilight Beetle/Battle Pet
	"P:32.20,39.60:469:Level 22-23",	-- Twilight Beetle/Battle Pet
	"P:27.80,36.00:469:Level 22-23",	-- Twilight Beetle/Battle Pet
	"P:44.60,21.00:469:Level 22-23",	-- Twilight Beetle/Battle Pet
	"P:59.80,80.20:469:Level 22-23",	-- Twilight Beetle/Battle Pet
	"P:44.20,20.20:469:Level 22-23",	-- Twilight Beetle/Battle Pet
	"P:40.60,30.80:503:Level 22-23",	-- Silky Moth/Battle Pet
	"P:46.00,25.60:503:Level 22-23",	-- Silky Moth/Battle Pet
	"P:52.00,26.80:503:Level 22-23",	-- Silky Moth/Battle Pet
	"P:65.00,24.00:503:Level 22-23",	-- Silky Moth/Battle Pet
	"P:35.60,26.40:487:Level 22-23",	-- Alpine Chipmunk/Battle Pet
	"P:21.20,39.20:487:Level 22-23",	-- Alpine Chipmunk/Battle Pet
	"P:50.20,32.00:487:Level 22-23",	-- Alpine Chipmunk/Battle Pet
	"P:60.60,36.20:487:Level 22-23",	-- Alpine Chipmunk/Battle Pet
	"P:68.20,23.20:487:Level 22-23",	-- Alpine Chipmunk/Battle Pet
	"P:68.00,66.20:482:Level 22-23",	-- Rock Viper/Battle Pet
	"P:45.60,69.00:482:Level 22-23",	-- Rock Viper/Battle Pet
	"P:38.40,56.40:482:Level 22-23",	-- Rock Viper/Battle Pet
	"P:78.80,54.20:482:Level 22-23",	-- Rock Viper/Battle Pet
	"P:89.80,52.00:482:Level 22-23",	-- Rock Viper/Battle Pet
	"P:76.20,61.60:482:Level 22-23",	-- Rock Viper/Battle Pet
	"P:80.80,50.00:482:Level 22-23",	-- Rock Viper/Battle Pet
	"P:56.60,18.80:626:Level 22-23",	-- Bat/Battle Pet
	"P:54.00,17.00:539:Level 22-23",	-- Grotto Vole/Battle Pet
	"P:50.00,74.00:415:Level 22-23",	-- Fire Beetle/Battle Pet
	"P:19.20,36.40:479:Level 22-23",	-- Elfin Rabbit/Battle Pet
	"P:37.60,42.60:479:Level 22-23",	-- Elfin Rabbit/Battle Pet
	"P:49.80,26.80:479:Level 22-23",	-- Elfin Rabbit/Battle Pet
	"P:58.60,37.20:479:Level 22-23",	-- Elfin Rabbit/Battle Pet
	"P:62.60,20.00:479:Level 22-23",	-- Elfin Rabbit/Battle Pet
	"P:68.20,24.20:479:Level 22-23",	-- Elfin Rabbit/Battle Pet
	"P:52.00,45.00:487:Level 22-23",	-- Alpine Chipmunk/Battle Pet
	"P:65.00,21.00:487:Level 22-23",	-- Alpine Chipmunk/Battle Pet
	"P:40.20,26.80:503:Level 22-23",	-- Silky Moth/Battle Pet
	"P:47.40,24.20:503:Level 22-23",	-- Silky Moth/Battle Pet
	"P:52.20,26.80:503:Level 22-23",	-- Silky Moth/Battle Pet
	"P:59.80,23.60:503:Level 22-23",	-- Silky Moth/Battle Pet
	"P:65.20,23.60:503:Level 22-23",	-- Silky Moth/Battle Pet
	"P:30.80,78.60:540:Level 22-23",	-- Carrion Rat/Battle Pet
	"P:58.80,78.40:540:Level 22-23",	-- Carrion Rat/Battle Pet
	"P:31.00,80.80:541:Level 22-23",	-- Fire-Proof Roach/Battle Pet
	"P:32.80,72.60:541:Level 22-23",	-- Fire-Proof Roach/Battle Pet
	"P:37.80,61.20:541:Level 22-23",	-- Fire-Proof Roach/Battle Pet
	"P:39.20,52.20:541:Level 22-23",	-- Fire-Proof Roach/Battle Pet
	"P:52.00,53.40:541:Level 22-23",	-- Fire-Proof Roach/Battle Pet
	"P:61.60,60.20:541:Level 22-23",	-- Fire-Proof Roach/Battle Pet
	"P:90.00,56.40:541:Level 22-23",	-- Fire-Proof Roach/Battle Pet
	"P:59.00,20.20:547:Level 22-23",	-- Nordrassil Wisp/Battle Pet
	"P:60.80,31.00:547:Level 22-23",	-- Nordrassil Wisp/Battle Pet
	"P:63.00,20.20:547:Level 22-23",	-- Nordrassil Wisp/Battle Pet
	"P:64.80,24.20:547:Level 22-23",	-- Nordrassil Wisp/Battle Pet
	"P:38.40,56.80:632:Level 22-23",	-- Ash Lizard/Battle Pet
	"P:74.00,69.60:632:Level 22-23",	-- Ash Lizard/Battle Pet
	"P:79.20,62.40:632:Level 22-23",	-- Ash Lizard/Battle Pet
	"P:88.60,52.20:632:Level 22-23",	-- Ash Lizard/Battle Pet
	"P:26.40,34.80:755:Level 22-23",	-- Death's Head Cockroach/Battle Pet
	"P:32.20,39.60:755:Level 22-23",	-- Death's Head Cockroach/Battle Pet
	"P:44.60,18.80:755:Level 22-23",	-- Death's Head Cockroach/Battle Pet
	"P:58.20,71.40:755:Level 22-23",	-- Death's Head Cockroach/Battle Pet
	"P:59.60,83.20:755:Level 22-23",	-- Death's Head Cockroach/Battle Pet
	--achievements
	"A:33.40,96.60:5861:1",	-- The Fiery Lords of Sethria's Roost
	"A:30.80,82.20:5861:2",	-- The Fiery Lords of Sethria's Roost
	"A:31.60,84.80:5861:3",	-- The Fiery Lords of Sethria's Roost
	"A:30.00,87.60:5861:4",	-- The Fiery Lords of Sethria's Roost
	"A:12.50,42.60:5862",	-- Ludicrous Speed
	"A:31.10,76.60:5864",	-- Gang War
	"A:31.10,76.60:5865:1",	-- Have... Have We Met?
	"A:31.10,76.60:5865:2",	-- Have... Have We Met?
	"A:31.10,76.60:5865:3",	-- Have... Have We Met?
	"A:31.10,76.60:5865:4",	-- Have... Have We Met?
	"A:31.10,76.60:5865:5",	-- Have... Have We Met?
	"A:31.10,76.60:5865:6",	-- Have... Have We Met?
	"A:35.10,53.40:5868:1",	-- And the Meek Shall Inherit Kalimdor
	"A:39.00,53.40:5868:1",	-- And the Meek Shall Inherit Kalimdor
	"A:39.30,56.10:5868:1",	-- And the Meek Shall Inherit Kalimdor
	"A:14.00,32.80:5868:2",	-- And the Meek Shall Inherit Kalimdor
	"A:12.50,42.60:5868:3",	-- And the Meek Shall Inherit Kalimdor
	"A:24.00,60.90:5868:4",	-- And the Meek Shall Inherit Kalimdor
	"A:23.20,59.00:5868:4",	-- And the Meek Shall Inherit Kalimdor
	"A:21.70,59.90:5868:4",	-- And the Meek Shall Inherit Kalimdor
	"A:13.31,44.76:5869:1",	-- Infernal Ambassadors
	"A:13.26,44.37:5869:2",	-- Infernal Ambassadors
	"A:41.95,55.63:5869:3",	-- Infernal Ambassadors
	"A:41.74,56.21:5869:4",	-- Infernal Ambassadors
	"A:24.06,55.79:5869:5",	-- Infernal Ambassadors
	"A:27.00,62.60:5870:2",	-- Fireside Chat
	"A:27.60,62.40:5870:4",	-- Fireside Chat
	"A:61.20,32.60:7525:1:3 - Level 20 Pets",	-- Taming Cataclysm/Brok
	"A:89.00,55.80:5753:26:Edric Downing",	-- Cataclysmically Delicious
	"A:89.00,55.80:5753:45:Edric Downing",	-- Cataclysmically Delicious
	"A:89.00,55.80:5753:46:Edric Downing",	-- Cataclysmically Delicious
	"A:89.40,57.80:5753:30:Grunka",	-- Cataclysmically Delicious
	"A:63.00,24.00:5753:28:Sebelia",	-- Cataclysmically Delicious
	"A:63.00,24.00:5753:42:Sebelia",	-- Cataclysmically Delicious
	"A:89.00,55.80:5754:3:Edric Downing",	-- Drown Your Sorrows
	"A:89.00,55.80:5754:7:Edric Downing",	-- Drown Your Sorrows
	"A:50.00,74.00:2556:16",	--"Pest Control, Fire Beetle"
	"A:54.00,17.00:5548:3",	--"To All the Squirrels Who Cared for Me"
	"A:76.20,61.60:5548:8",	--"To All the Squirrels Who Cared for Me"
	"A:80.80,50.00:5548:8",	--"To All the Squirrels Who Cared for Me"
	"A:52.00,45.00:5548:1",	--"To All the Squirrels Who Cared for Me"
	"A:65.00,21.00:5548:1",	--"To All the Squirrels Who Cared for Me"
	"A:37.00,44.00:4863:1",	--"Exploration Cataclysm"
	"A:78.00,58.00:4863:4",	--"Exploration Cataclysm"
	"A:60.00,24.00:4863:6",	--"Exploration Cataclysm"
	"A:29.00,29.00:4863:8",	--"Exploration Cataclysm"
	"A:61.00,59.00:4863:10",	--"Exploration Cataclysm"
	"A:43.00,27.00:4863:2",	--"Exploration Cataclysm"
	"A:17.00,50.00:4863:3",	--"Exploration Cataclysm"
	"A:71.00,73.00:4863:5",	--"Exploration Cataclysm"
	"A:31.00,76.00:4863:7",	--"Exploration Cataclysm"
	"A:32.00,51.00:4863:9",	--"Exploration Cataclysm"
	"A:51.00,76.00:4863:11",	--"Exploration Cataclysm"
	"A:13.60,33.30:5483",	--"Bounce"
	"A:73.80,78.20:5478:30",	--"The Limnologist"
	"A:73.80,78.20:5478:41")	--"The Limnologist"

tappend(points["IcecrownGlacier:0"],
	"P:10.60,45.40:393:Level 22",	-- Cockroach/Battle Pet
	"P:36.40,26.60:393:Level 22",	-- Cockroach/Battle Pet
	"P:44.60,53.60:393:Level 22",	-- Cockroach/Battle Pet
	"P:50.20,37.00:393:Level 22",	-- Cockroach/Battle Pet
	"P:57.20,54.00:393:Level 22",	-- Cockroach/Battle Pet
	"P:68.80,69.00:393:Level 22",	-- Cockroach/Battle Pet
	"P:79.40,65.40:393:Level 22",	-- Cockroach/Battle Pet
	"P:68.60,36.20:538:Level 22",	-- Scourged Whelpling/Battle Pet
	"P:72.80,44.20:538:Level 22",	-- Scourged Whelpling/Battle Pet
	"P:73.60,48.80:538:Level 22",	-- Scourged Whelpling/Battle Pet
	"P:74.80,29.80:538:Level 22",	-- Scourged Whelpling/Battle Pet
	"P:75.80,35.80:538:Level 22",	-- Scourged Whelpling/Battle Pet
	"A:77.40,19.60:6605:5:3 - Level 25 Pets",	-- Taming Northrend/Major Payne
	"A:77.00,24.00:2557:5",	--"To All The Squirrels Who Shared My Life"
	"A:54.00,38.00:1270:6",	--"Exploration Northrend"
	"A:48.00,68.00:1270:12",	--"Exploration Northrend"
	"A:54.00,85.00:1270:2",	--"Exploration Northrend"
	"A:35.00,26.00:1270:13",	--"Exploration Northrend"
	"A:12.00,46.00:1270:3",	--"Exploration Northrend"
	"A:78.00,65.00:1270:14",	--"Exploration Northrend"
	"A:69.00,38.00:1270:7",	--"Exploration Northrend"
	"A:58.00,39.00:1270:1",	--"Exploration Northrend"
	"A:67.00,65.00:1270:4",	--"Exploration Northrend"
	"A:43.00,60.00:1270:11",	--"Exploration Northrend"
	"A:34.00,68.00:1270:5",	--"Exploration Northrend"
	"A:43.00,23.00:1270:15",	--"Exploration Northrend"
	"A:31.00,29.00:1270:8",	--"Exploration Northrend"
	"A:83.00,72.00:1270:9",	--"Exploration Northrend"
	"A:57.00,63.00:1270:10",	--"Exploration Northrend"
	"R:74.00,32.00:32501::72.80,38.80:67.80,38.40",	--"High Thane Jorfus"
	"R:48.60,78.20:32501::48.60,87.00",	--"High Thane Jorfus"
	"R:35.60,70.00:32501::32.00,69.60:31.20,62.20",	--"High Thane Jorfus"
	"R:59.40,62.00:32495::58.20,54.20:53.40,53.40",	--"Hildana Deathstealer"
	"R:28.60,45.80:32495::31.20,30.40:37.60,23.80",	--"Hildana Deathstealer"
	"R:68.60,68.60:32487",	--"Putridus the Ancient"
	"R:64.60,46.00:32487",	--"Putridus the Ancient"
	"R:57.60,41.00:32487",	--"Putridus the Ancient"
	"R:49.00,42.80:32487",	--"Putridus the Ancient"
	"R:45.40,52.20:32487",	--"Putridus the Ancient"
	"R:47.00,65.60:32487")	--"Putridus the Ancient"

tappend(points["Uldum:0"],
	--battle pets
	"P:29.60,26.40:467:Level 23",	-- Dung Beetle/Battle Pet
	"P:40.40,43.80:467:Level 23",	-- Dung Beetle/Battle Pet
	"P:46.40,13.60:467:Level 23",	-- Dung Beetle/Battle Pet
	"P:50.60,75.20:467:Level 23",	-- Dung Beetle/Battle Pet
	"P:61.20,71.60:467:Level 23",	-- Dung Beetle/Battle Pet
	"P:64.80,30.80:467:Level 23",	-- Dung Beetle/Battle Pet
	"P:70.20,57.80:467:Level 23",	-- Dung Beetle/Battle Pet
	"P:75.80,46.80:467:Level 23",	-- Dung Beetle/Battle Pet
	"P:32.00,31.40:484:Level 23",	-- Desert Spider/Battle Pet
	"P:40.40,43.60:484:Level 23",	-- Desert Spider/Battle Pet
	"P:42.20,68.40:484:Level 23",	-- Desert Spider/Battle Pet
	"P:50.60,84.60:484:Level 23",	-- Desert Spider/Battle Pet
	"P:51.40,18.20:484:Level 23",	-- Desert Spider/Battle Pet
	"P:60.60,73.00:484:Level 23",	-- Desert Spider/Battle Pet
	"P:63.20,32.80:484:Level 23",	-- Desert Spider/Battle Pet
	"P:69.40,60.60:484:Level 23",	-- Desert Spider/Battle Pet
	"P:72.40,44.40:484:Level 23",	-- Desert Spider/Battle Pet
	"P:29.60,27.40:511:Level 23",	-- Sidewinder/Battle Pet
	"P:33.80,64.00:511:Level 23",	-- Sidewinder/Battle Pet
	"P:39.00,45.40:511:Level 23",	-- Sidewinder/Battle Pet
	"P:55.80,59.00:511:Level 23",	-- Sidewinder/Battle Pet
	"P:63.60,29.20:511:Level 23",	-- Sidewinder/Battle Pet
	"P:76.40,47.40:511:Level 23",	-- Sidewinder/Battle Pet
	"P:50.00,35.00:542:Level 23",	-- Mac Frog/Battle Pet
	"P:57.00,32.00:542:Level 23",	-- Mac Frog/Battle Pet
	"P:52.60,32.40:543:Level 23",	-- Locust/Battle Pet
	"P:53.40,49.00:543:Level 23",	-- Locust/Battle Pet
	"P:60.00,38.20:543:Level 23",	-- Locust/Battle Pet
	"P:64.60,76.40:543:Level 23",	-- Locust/Battle Pet
	"P:50.00,35.00:544:Level 23",	-- Oasis Moth/Battle Pet
	"P:57.00,32.00:544:Level 23",	-- Oasis Moth/Battle Pet
	"P:31.20,32.80:545:Level 23",	-- Leopard Scorpid/Battle Pet
	"P:31.80,60.80:545:Level 23",	-- Leopard Scorpid/Battle Pet
	"P:35.80,17.20:545:Level 23",	-- Leopard Scorpid/Battle Pet
	"P:44.20,66.50:545:Level 23",	-- Leopard Scorpid/Battle Pet
	"P:47.40,20.60:545:Level 23",	-- Leopard Scorpid/Battle Pet
	"P:66.00,31.20:545:Level 23",	-- Leopard Scorpid/Battle Pet
	"P:76.40,47.20:545:Level 23",	-- Leopard Scorpid/Battle Pet
	"P:34.60,65.20:546:Level 23",	-- Tol'vir Scarab/Battle Pet
	"P:34.80,29.60:546:Level 23",	-- Tol'vir Scarab/Battle Pet
	"P:40.60,42.60:546:Level 23",	-- Tol'vir Scarab/Battle Pet
	"P:46.00,16.00:546:Level 23",	-- Tol'vir Scarab/Battle Pet
	"P:46.80,57.20:546:Level 23",	-- Tol'vir Scarab/Battle Pet
	"P:50.60,82.40:546:Level 23",	-- Tol'vir Scarab/Battle Pet
	"P:54.00,28.00:546:Level 23",	-- Tol'vir Scarab/Battle Pet
	"P:63.60,30.00:546:Level 23",	-- Tol'vir Scarab/Battle Pet
	"P:76.00,52.40:546:Level 23",	-- Tol'vir Scarab/Battle Pet
	"P:53.40,49.20:631:Level 23",	-- Emerald Boa/Battle Pet
	"P:56.00,23.40:631:Level 23",	-- Emerald Boa/Battle Pet
	"P:59.00,61.20:631:Level 23",	-- Emerald Boa/Battle Pet
	"P:60.00,39.40:631:Level 23",	-- Emerald Boa/Battle Pet
	"P:64.40,79.20:631:Level 23",	-- Emerald Boa/Battle Pet
	"P:28.80,31.00:851:Level 23",	-- Horned Lizard/Battle Pet
	"P:43.20,68.80:851:Level 23",	-- Horned Lizard/Battle Pet
	"P:61.60,71.80:851:Level 23",	-- Horned Lizard/Battle Pet
	"P:62.80,27.20:851:Level 23",	-- Horned Lizard/Battle Pet
	"P:73.20,46.00:851:Level 23",	-- Horned Lizard/Battle Pet
	--achievements
	"A:56.40,41.80:7525:4:3 - Level 20 Pets",	-- Taming Cataclysm/Obalis
	"A:50.20,38.60:5753:24:Husani",	-- Cataclysmically Delicious
	"A:50.20,38.60:5753:29:Husani",	-- Cataclysmically Delicious
	"A:54.60,32.80:5753:7:Kazemde",	-- Cataclysmically Delicious
	"A:54.60,32.80:5753:15:Kazemde",	-- Cataclysmically Delicious
	"A:54.60,32.80:5753:16:Kazemde",	-- Cataclysmically Delicious
	"A:54.60,32.80:5753:28:Kazemde",	-- Cataclysmically Delicious
	"A:54.60,32.80:5753:36:Kazemde",	-- Cataclysmically Delicious
	"A:54.60,32.80:5753:38:Kazemde",	-- Cataclysmically Delicious
	"A:50.20,38.40:5753:18:Umi",	-- Cataclysmically Delicious
	"A:50.20,38.40:5753:40:Umi",	-- Cataclysmically Delicious
	"A:51.00,49.00:1206:14",	--"To All The Squirrels I've Loved Before, Sheep"
	"A:50.00,35.00:5548:5",	--"To All the Squirrels Who Cared for Me"
	"A:57.00,32.00:5548:5",	--"To All the Squirrels Who Cared for Me"
	"A:50.00,35.00:5548:6",	--"To All the Squirrels Who Cared for Me"
	"A:57.00,32.00:5548:6",	--"To All the Squirrels Who Cared for Me"
	"A:55.00,33.00:4865:14",	--"Exploration Cataclysm"
	"A:60.00,39.00:4865:18",	--"Exploration Cataclysm"
	"A:54.00,42.00:4865:1",	--"Exploration Cataclysm"
	"A:54.00,49.00:4865:2",	--"Exploration Cataclysm"
	"A:48.00,38.00:4865:7",	--"Exploration Cataclysm"
	"A:45.00,16.00:4865:15",	--"Exploration Cataclysm"
	"A:40.00,22.00:4865:10",	--"Exploration Cataclysm"
	"A:33.00,31.00:4865:19",	--"Exploration Cataclysm"
	"A:39.00,41.00:4865:13",	--"Exploration Cataclysm"
	"A:22.00,63.00:4865:17",	--"Exploration Cataclysm"
	"A:31.00,64.00:4865:16",	--"Exploration Cataclysm"
	"A:45.00,56.00:4865:12",	--"Exploration Cataclysm"
	"A:45.00,71.00:4865:3",	--"Exploration Cataclysm"
	"A:50.00,80.00:4865:9",	--"Exploration Cataclysm"
	"A:65.00,76.00:4865:6",	--"Exploration Cataclysm"
	"A:76.00,60.00:4865:22",	--"Exploration Cataclysm"
	"A:84.00,56.00:4865:20",	--"Exploration Cataclysm"
	"A:76.00,52.00:4865:4",	--"Exploration Cataclysm"
	"A:67.00,41.00:4865:8",	--"Exploration Cataclysm"
	"A:64.00,30.00:4865:11",	--"Exploration Cataclysm"
	"A:68.00,22.00:4865:21",	--"Exploration Cataclysm"
	"A:64.00,21.00:4865:5",	--"Exploration Cataclysm"
	"A:54.00,33.20:4888::Blacksmith Abasi. Exalted with Ramkahen.",	--"One Hump or Two?"
	"A:60.20,13.30:5478:4",	--"The Limnologist"
	"A:60.20,13.30:5478:26",	--"The Limnologist"
	"A:60.20,13.30:5478:36",	--"The Limnologist"
	"A:87.50,45.10:5479:10")	--"The Oceanographer"

tappend(points["ShattrathCity:0"],
	--achievements
	"A:59.00,70.00:6604:4:3 - Level 23 Pets",	-- Taming Outland/Morulu the Elder
	"A:27.20,50.20:1832::Buy Foods and Drinks from Garul",	-- Tastes Like Chicken
	"A:56.20,81.60:1832::Buy Foods and Drinks from Innkeeper Haelthol",	-- Tastes Like Chicken
	"A:27.20,50.20:1833::Buy Foods and Drinks from Garul",	-- It's Happy Hour Somewhere
	"A:56.20,81.60:1833::Buy Foods and Drinks from Innkeeper Haelthol",	-- It's Happy Hour Somewhere
	"A:58.00,69.00:1206:3",	--"To All The Squirrels I've Loved Before, Chicken"
	"A:58.00,23.00:1206:6",	--"To All The Squirrels I've Loved Before, Ewe"
	"A:75.60,31.60:1165::1200 Gold")	--"My Sack is 'Gigantique'"

tappend(points["Deepholm:0"],
	--battle pets
	"P:41.20,72.00:469:Level 22-23",	-- Twilight Beetle/Battle Pet
	"P:60.00,42.00:469:Level 22-23",	-- Twilight Beetle/Battle Pet
	"P:41.20,72.00:470:Level 22-23",	-- Twilight Spider/Battle Pet
	"P:60.00,40.40:470:Level 22-23",	-- Twilight Spider/Battle Pet
	"P:57.80,13.00:480:Level 22-23",	-- Topaz Shale Hatchling/Battle Pet
	"P:68.60,29.60:480:Level 22-23",	-- Topaz Shale Hatchling/Battle Pet
	"P:71.00,64.60:480:Level 22-23",	-- Topaz Shale Hatchling/Battle Pet
	"P:71.20,37.60:480:Level 22-23",	-- Topaz Shale Hatchling/Battle Pet
	"P:54.20,72.60:553:Level 22-23",	-- Stowaway Rat/Battle Pet
	"P:57.60,76.60:553:Level 22-23",	-- Stowaway Rat/Battle Pet
	"P:63.00,23.80:554:Level 22-23",	-- Crimson Shale Hatchling/Battle Pet
	"P:68.40,25.80:554:Level 22-23",	-- Crimson Shale Hatchling/Battle Pet
	"P:69.60,33.60:554:Level 22-23",	-- Crimson Shale Hatchling/Battle Pet
	"P:70.60,46.00:554:Level 22-23",	-- Crimson Shale Hatchling/Battle Pet
	"P:75.60,37.40:554:Level 22-23",	-- Crimson Shale Hatchling/Battle Pet
	"P:22.00,46.60:555:Level 22-23",	-- Deepholm Cockroach/Battle Pet
	"P:24.20,61.40:555:Level 22-23",	-- Deepholm Cockroach/Battle Pet
	"P:37.40,32.20:555:Level 22-23",	-- Deepholm Cockroach/Battle Pet
	"P:39.20,80.80:555:Level 22-23",	-- Deepholm Cockroach/Battle Pet
	"P:46.80,58.40:555:Level 22-23",	-- Deepholm Cockroach/Battle Pet
	"P:52.60,37.40:555:Level 22-23",	-- Deepholm Cockroach/Battle Pet
	"P:57.20,48.60:555:Level 22-23",	-- Deepholm Cockroach/Battle Pet
	"P:59.40,42.20:555:Level 22-23",	-- Deepholm Cockroach/Battle Pet
	"P:69.40,68.00:555:Level 22-23",	-- Deepholm Cockroach/Battle Pet
	"P:20.20,57.80:556:Level 22-23",	-- Crystal Beetle/Battle Pet
	"P:24.40,62.00:556:Level 22-23",	-- Crystal Beetle/Battle Pet
	"P:26.00,68.20:556:Level 22-23",	-- Crystal Beetle/Battle Pet
	"P:34.20,82.20:556:Level 22-23",	-- Crystal Beetle/Battle Pet
	"P:36.00,17.80:556:Level 22-23",	-- Crystal Beetle/Battle Pet
	"P:43.80,58.00:556:Level 22-23",	-- Crystal Beetle/Battle Pet
	"P:51.00,32.80:556:Level 22-23",	-- Crystal Beetle/Battle Pet
	"P:51.60,62.40:556:Level 22-23",	-- Crystal Beetle/Battle Pet
	"P:57.40,13.00:556:Level 22-23",	-- Crystal Beetle/Battle Pet
	"P:57.60,72.40:556:Level 22-23",	-- Crystal Beetle/Battle Pet
	"P:69.40,25.40:556:Level 22-23",	-- Crystal Beetle/Battle Pet
	"P:63.00,23.80:559:Level 22-23",	-- Crimson Geode/Battle Pet
	"P:68.40,25.80:559:Level 22-23",	-- Crimson Geode/Battle Pet
	"P:69.60,33.60:559:Level 22-23",	-- Crimson Geode/Battle Pet
	"P:70.60,46.00:559:Level 22-23",	-- Crimson Geode/Battle Pet
	"P:75.60,37.40:559:Level 22-23",	-- Crimson Geode/Battle Pet
	"P:23.20,47.00:756:Level 22-23",	-- Fungal Moth/Battle Pet
	"P:71.60,66.00:756:Level 22-23",	-- Fungal Moth/Battle Pet
	"P:72.20,28.60:756:Level 22-23",	-- Fungal Moth/Battle Pet
	"P:72.20,58.00:756:Level 22-23",	-- Fungal Moth/Battle Pet
	"P:31.00,47.00:837:Level 22-23",	-- Emerald Shale Hatchling/Battle Pet
	"P:31.60,81.40:837:Level 22-23",	-- Emerald Shale Hatchling/Battle Pet
	"P:36.00,72.40:837:Level 22-23",	-- Emerald Shale Hatchling/Battle Pet
	"P:37.80,84.00:837:Level 22-23",	-- Emerald Shale Hatchling/Battle Pet
	"P:46.80,86.80:837:Level 22-23",	-- Emerald Shale Hatchling/Battle Pet
	"P:60.40,43.20:837:Level 22-23",	-- Emerald Shale Hatchling/Battle Pet
	"P:47.00,87.60:838:Level 22-23",	-- Amethyst Shale Hatchling/Battle Pet
	"P:56.80,12.80:838:Level 22-23",	-- Amethyst Shale Hatchling/Battle Pet
	"P:70.80,36.00:838:Level 22-23",	-- Amethyst Shale Hatchling/Battle Pet
	"P:73.20,64.00:838:Level 22-23",	-- Amethyst Shale Hatchling/Battle Pet
	--achievements
	"A:49.80,57.00:7525:2:3 - Level 20 Pets",	-- Taming Cataclysm/Bordin Steadyfist
	"A:50.00,55.00:4864:6",	--"Exploration Cataclysm"
	"A:41.00,66.00:4864:11",	--"Exploration Cataclysm"
	"A:35.00,81.00:4864:9",	--"Exploration Cataclysm"
	"A:56.00,75.00:4864:5",	--"Exploration Cataclysm"
	"A:69.00,76.00:4864:10",	--"Exploration Cataclysm"
	"A:72.00,45.00:4864:12",	--"Exploration Cataclysm"
	"A:60.00,60.00:4864:1",	--"Exploration Cataclysm"
	"A:56.00,13.00:4864:8",	--"Exploration Cataclysm"
	"A:41.00,20.00:4864:7",	--"Exploration Cataclysm"
	"A:28.00,31.00:4864:2",	--"Exploration Cataclysm"
	"A:22.00,47.00:4864:3",	--"Exploration Cataclysm"
	"A:27.00,69.00:4864:4",	--"Exploration Cataclysm"
	"A:70.70,49.10:5478:1")	--"The Limnologist"

tappend(points["EversongWoods:0"],
	"P:27.80,68.60:378:Level 1",	-- Rabbit/Battle Pet
	"P:34.20,74.40:378:Level 1",	-- Rabbit/Battle Pet
	"P:43.20,44.60:378:Level 1",	-- Rabbit/Battle Pet
	"P:49.40,75.60:378:Level 1",	-- Rabbit/Battle Pet
	"P:59.60,58.40:378:Level 1",	-- Rabbit/Battle Pet
	"P:44.20,35.20:387:Level 1",	-- Snake/Battle Pet
	"P:47.80,43.60:387:Level 1",	-- Snake/Battle Pet
	"P:63.40,80.20:387:Level 1",	-- Snake/Battle Pet
	"P:68.20,57.40:387:Level 1",	-- Snake/Battle Pet
	"P:71.20,83.20:387:Level 1",	-- Snake/Battle Pet
	"P:37.20,18.60:459:Level 1",	-- Cat/Battle Pet
	"P:30.20,59.80:460:Level 1",	-- Ruby Sapling/Battle Pet
	"P:32.40,72.22:460:Level 1",	-- Ruby Sapling/Battle Pet
	"P:41.60,54.60:460:Level 1",	-- Ruby Sapling/Battle Pet
	"P:45.60,83.80:460:Level 1",	-- Ruby Sapling/Battle Pet
	"P:46.00,44.60:460:Level 1",	-- Ruby Sapling/Battle Pet
	"P:54.80,58.20:460:Level 1",	-- Ruby Sapling/Battle Pet
	"P:58.80,73.80:460:Level 1",	-- Ruby Sapling/Battle Pet
	"P:61.80,58.80:460:Level 1",	-- Ruby Sapling/Battle Pet
	"P:67.00,68.00:460:Level 1",	-- Ruby Sapling/Battle Pet
	"P:69.60,50.40:460:Level 1",	-- Ruby Sapling/Battle Pet
	"R:70.20,50.60:16854::70.20,46.40:67.40,44.60",	-- Eldinarcus
	"R:69.80,78.00:16855::70.20,72.40:65.60,68.20",	-- Tregla
	"R:69.80,82.20:16855::62.80,79.40",	-- Tregla
	"A:36.00,27.00:859:1",	--"Exploration Eastern Kingdom"
	"A:44.00,36.00:859:2",	--"Exploration Eastern Kingdom"
	"A:35.00,59.00:859:3",	--"Exploration Eastern Kingdom"
	"A:32.00,69.00:859:4",	--"Exploration Eastern Kingdom"
	"A:44.00,53.00:859:5",	--"Exploration Eastern Kingdom"
	"A:53.00,70.00:859:6",	--"Exploration Eastern Kingdom"
	"A:60.00,62.00:859:7",	--"Exploration Eastern Kingdom"
	"A:55.00,54.00:859:8",	--"Exploration Eastern Kingdom"
	"A:68.00,52.00:859:9",	--"Exploration Eastern Kingdom"
	"A:43.00,71.00:859:10",	--"Exploration Eastern Kingdom"
	"A:58.00,72.00:859:11",	--"Exploration Eastern Kingdom"
	"A:70.00,75.00:859:12",	--"Exploration Eastern Kingdom"
	"A:36.00,85.00:859:13",	--"Exploration Eastern Kingdom"
	"A:71.00,48.00:859:15",	--"Exploration Eastern Kingdom"
	"A:64.00,73.00:859:16",	--"Exploration Eastern Kingdom"
	"A:33.00,76.00:859:17",	--"Exploration Eastern Kingdom"
	"A:65.00,81.00:859:18",	--"Exploration Eastern Kingdom"
	"A:44.00,85.00:859:19",	--"Exploration Eastern Kingdom"
	"A:55.00,84.00:859:20",	--"Exploration Eastern Kingdom"
	"A:38.00,73.00:859:21",	--"Exploration Eastern Kingdom"
	"A:27.00,83.00:859:22",	--"Exploration Eastern Kingdom"
	"A:61.00,54.00:859:23",	--"Exploration Eastern Kingdom"
	"A:27.00,60.00:859:24",	--"Exploration Eastern Kingdom"
	"A:62.00,79.00:859:25")	--"Exploration Eastern Kingdom"

tappend(points["Felwood:0"],
	--battle pets
	"P:58.20,22.80:406:Level 14",	-- Beetle/Battle Pet
	"P:39.20,67.40:497:Level 14",	-- Tainted Cockroach/Battle Pet
	"P:39.60,51.80:497:Level 14",	-- Tainted Cockroach/Battle Pet
	"P:49.00,90.00:497:Level 14",	-- Tainted Cockroach/Battle Pet
	"P:54.40,17.60:497:Level 14",	-- Tainted Cockroach/Battle Pet
	"P:56.00,86.60:497:Level 14",	-- Tainted Cockroach/Battle Pet
	"P:62.00,09.60:497:Level 14",	-- Tainted Cockroach/Battle Pet
	"P:43.40,66.80:498:Level 14",	-- Tainted Moth/Battle Pet
	"P:48.20,86.60:498:Level 14",	-- Tainted Moth/Battle Pet
	"P:50.40,26.00:498:Level 14",	-- Tainted Moth/Battle Pet
	"P:55.80,87.80:498:Level 14",	-- Tainted Moth/Battle Pet
	"P:39.80,31.40:499:Level 14",	-- Tainted Rat/Battle Pet
	"P:42.40,58.40:499:Level 14",	-- Tainted Rat/Battle Pet
	"P:48.60,38.20:499:Level 14",	-- Tainted Rat/Battle Pet
	"P:50.60,85.40:499:Level 14",	-- Tainted Rat/Battle Pet
	"P:61.60,20.80:499:Level 14",	-- Tainted Rat/Battle Pet
	"P:41.80,45.40:500:Level 14",	-- Minfernal/Battle Pet
	"P:42.60,36.60:500:Level 14",	-- Minfernal/Battle Pet
	"P:46.20,41.40:500:Level 14",	-- Minfernal/Battle Pet
	--rares
	"R:43.80,85.80:14340::39.00,79.60",	-- Alshirr Banebreath
	"R:48.20,74.60:14339",	-- Death Howl
	"R:54.20,84.40:14339",	-- Death Howl
	"R:57.80,19.60:7104",	-- Dessecus
	"R:41.80,36.20:7137::46.80,39.80:41.60,44.00",	-- Immolatus
	"R:43.60,75.80:14344",	-- Mongress
	"R:46.80,82.20:14344",	-- Mongress
	"R:54.60,27.20:14343",	-- Olm the Wise
	"R:56.60,23.60:14343",	-- Olm the Wise
	"R:57.60,19.40:14343",	-- Olm the Wise
	"R:48.80,89.00:14342",	-- Ragepaw
	"R:42.00,45.80:14345",	-- The Ongar
	"R:35.00,59.80:50362:Level 46",	-- Blackbog the Fang
	"R:45.00,32.00:50905:Level 45",	-- Cida
	"R:42.60,48.20:51025:Level 48",	-- Dilennaa
	"R:39.80,31.40:50833:Level 47",	-- Duskcoat
	"R:38.60,52.80:51046:Level 48",	-- Fidonis
	"R:52.40,31.60:51017:Level 49",	-- Gezan
	"R:38.20,72.80:50925:Level 45",	-- Grovepaw
	"R:51.00,34.20:50777:Level 47",	-- Needle
	"R:60.60,22.20:50724:Level 49",	-- Spinecrawl
	"R:59.60,06.80:50864:Level 46",	-- Thicket
	--achievements
	"A:40.00,56.60:6602:10:3 - Level 16 Pets",	-- Taming Kalimdor/Zoltan
	"A:62.00,09.00:853:1",	--"Exploration Kalimdor"
	"A:51.00,80.00:853:10",	--"Exploration Kalimdor"
	"A:49.00,86.00:853:11",	--"Exploration Kalimdor"
	"A:56.00,87.00:853:12",	--"Exploration Kalimdor"
	"A:62.00,23.00:853:2",	--"Exploration Kalimdor"
	"A:48.00,23.00:853:3",	--"Exploration Kalimdor"
	"A:42.00,16.00:853:4",	--"Exploration Kalimdor"
	"A:42.00,40.00:853:5",	--"Exploration Kalimdor"
	"A:41.00,48.00:853:6",	--"Exploration Kalimdor"
	"A:35.00,60.00:853:7",	--"Exploration Kalimdor"
	"A:37.00,68.00:853:8",	--"Exploration Kalimdor"
	"A:39.00,82.00:853:9")	--"Exploration Kalimdor"

tappend(points["Badlands:0"],
	--battle pets
	"P:19.00,51.20:398:Level 13",	-- Black Rat/Battle Pet
	"P:49.00,29.00:430:Level 13",	-- Gold Beetle/Battle Pet
	"P:51.00,53.00:430:Level 13",	-- Gold Beetle/Battle Pet
	"P:20.40,52.60:432:Level 13",	-- Stripe-Tailed Scorpid/Battle Pet
	"P:47.80,52.00:432:Level 13",	-- Stripe-Tailed Scorpid/Battle Pet
	"P:60.20,22.40:432:Level 13",	-- Stripe-Tailed Scorpid/Battle Pet
	"P:69.80,39.00:432:Level 13",	-- Stripe-Tailed Scorpid/Battle Pet
	"P:72.20,45.60:432:Level 13",	-- Stripe-Tailed Scorpid/Battle Pet
	"P:12.40,57.40:433:Level 13",	-- Spiky Lizard/Battle Pet
	"P:14.80,65.40:433:Level 13",	-- Spiky Lizard/Battle Pet
	"P:47.00,60.60:433:Level 13",	-- Spiky Lizard/Battle Pet
	"P:57.00,45.60:433:Level 13",	-- Spiky Lizard/Battle Pet
	"P:63.20,28.20:433:Level 13",	-- Spiky Lizard/Battle Pet
	"P:17.20,32.80:438:Level 13",	-- King Snake/Battle Pet
	"P:41.60,70.60:438:Level 13",	-- King Snake/Battle Pet
	"P:41.80,27.40:438:Level 13",	-- King Snake/Battle Pet
	"P:48.00,37.60:438:Level 13",	-- King Snake/Battle Pet
	"P:63.00,36.60:438:Level 13",	-- King Snake/Battle Pet
	"P:72.40,48.40:438:Level 13",	-- King Snake/Battle Pet
	--rares
	"R:78.60,31.80:14224",	-- 7:XT
	"R:08.80,66.50:2754",	-- Anathemus
	"R:39.80,62.20:2753::35.80,61.00:39.40,57.80",	-- Barnabus
	"R:27.20,37.40:2749",	-- Barricade
	"R:09.40,48.80:2749",	-- Barricade
	"R:22.80,61.60:2850",	-- Broken Tooth
	"R:16.00,29.40:2752",	-- Rumbler
	"R:39.60,24.60:2744",	-- Shadowforge Commander
	"R:49.00,25.40:2751",	-- War Golem
	"R:53.00,47.60:2931::59.00,44.00:55.20,42.20",	-- Zaricotl
	"R:72.00,27.60:51000:Level 45",	-- Blackshell the Impenetrable
	"R:70.20,52.80:50728:Level 49",	-- Deathstrike
	"R:32.20,35.40:50726:Level 48",	-- Kalixx
	"R:50.60,72.40:50731:Level 47",	-- Needlefang
	"R:29.00,38.40:51007:Level 48",	-- Serkett
	"R:23.80,37.40:51007:Level 48",	-- Serkett
	"R:58.40,60.60:50838:Level 47",	-- Tabbs
	"R:23.00,37.20:51021:Level 48",	-- Vorticus
	"R:51.80,34.20:51018:Level 47",	-- Zormus
	--achievments
	"A:70.00,44.00:765:1",	--"Exploration Eastern Kingdom"
	"A:46.00,57.00:765:2",	--"Exploration Eastern Kingdom"
	"A:41.00,11.00:765:3",	--"Exploration Eastern Kingdom"
	"A:17.00,63.00:765:4",	--"Exploration Eastern Kingdom"
	"A:34.00,51.00:765:5",	--"Exploration Eastern Kingdom"
	"A:31.00,43.00:765:6",	--"Exploration Eastern Kingdom"
	"A:40.00,26.00:765:7",	--"Exploration Eastern Kingdom"
	"A:60.00,21.00:765:8",	--"Exploration Eastern Kingdom"
	"A:52.00,50.00:765:9",	--"Exploration Eastern Kingdom"
	"A:17.00,42.00:765:10",	--"Exploration Eastern Kingdom"
	"A:64.30,38.10:5444",	--"Ready, Set, Goat!"
	"A:49.00,29.00:2556:17",	--"Pest Control, Gold Beetle"
	"A:51.00,53.00:2556:17")	--"Pest Control, Gold Beetle"

tappend(points["TheJadeForest:0"],
	-- battle pets
	"P:31.00,47.40:380:Level 23-24",	-- Bucktooth Flapper/Battle Pet
	"P:38.20,50.80:380:Level 23-24",	-- Bucktooth Flapper/Battle Pet
	"P:27.00,31.40:380:Level 23-24",	-- Bucktooth Flapper/Battle Pet
	"P:48.60,78.20:380:Level 23-24",	-- Bucktooth Flapper/Battle Pet
	"P:58.80,87.20:380:Level 23-24",	-- Bucktooth Flapper/Battle Pet
	"P:60.40,77.00:380:Level 23-24",	-- Bucktooth Flapper/Battle Pet
	"P:64.10,84.10:562:Level 23-24",	-- Coral Adder/Battle Pet
	"P:30.00,48.80:564:Level 23-24",	-- Emerald Turtle/Battle Pet
	"P:33.20,10.80:564:Level 23-24",	-- Emerald Turtle/Battle Pet
	"P:41.60,25.00:564:Level 23-24",	-- Emerald Turtle/Battle Pet
	"P:43.40,61.40:564:Level 23-24",	-- Emerald Turtle/Battle Pet
	"P:47.20,46.00:564:Level 23-24",	-- Emerald Turtle/Battle Pet
	"P:51.20,21.80:564:Level 23-24",	-- Emerald Turtle/Battle Pet
	"P:59.40,85.60:564:Level 23-24",	-- Emerald Turtle/Battle Pet
	"P:45.60,91.40:565:Level 23-24",	-- Jungle Darter/Battle Pet
	"P:55.60,84.60:565:Level 23-24",	-- Jungle Darter/Battle Pet
	"P:57.00,71.20:565:Level 23-24",	-- Jungle Darter/Battle Pet
	"P:31.00,45.00:566:Level 23-24",	-- Mirror Strider/Battle Pet
	"P:56.40,80.80:566:Level 23-24",	-- Mirror Strider/Battle Pet
	"P:57.60,86.20:566:Level 23-24",	-- Mirror Strider/Battle Pet
	"P:61.60,80.40:566:Level 23-24",	-- Mirror Strider/Battle Pet
	"P:62.80,87.60:566:Level 23-24",	-- Mirror Strider/Battle Pet
	"P:52.80,57.20:567:Level 23-24",	-- Temple Snake/Battle Pet
	"P:55.80,50.80:567:Level 23-24",	-- Temple Snake/Battle Pet
	"P:57.80,62.40:567:Level 23-24",	-- Temple Snake/Battle Pet
	"P:56.40,45.80:569:Level 23-24",	-- Garden Frog/Battle Pet
	"P:31.20,13.60:570:Level 23-24",	-- Masked Tanuki/Battle Pet
	"P:31.20,26.50:570:Level 23-24",	-- Masked Tanuki/Battle Pet
	"P:34.80,38.00:570:Level 23-24",	-- Masked Tanuki/Battle Pet
	"P:41.20,71.00:570:Level 23-24",	-- Masked Tanuki/Battle Pet
	"P:44.00,14.20:570:Level 23-24",	-- Masked Tanuki/Battle Pet
	"P:47.80,33.40:570:Level 23-24",	-- Masked Tanuki/Battle Pet
	"P:51.60,38.00:570:Level 23-24",	-- Masked Tanuki/Battle Pet
	"P:52.40,63.20:570:Level 23-24",	-- Masked Tanuki/Battle Pet
	"P:30.60,10.40:571:Level 23-24",	-- Grove Viper/Battle Pet
	"P:31.00,26.00:571:Level 23-24",	-- Grove Viper/Battle Pet
	"P:32.60,43.60:571:Level 23-24",	-- Grove Viper/Battle Pet
	"P:35.40,61.60:571:Level 23-24",	-- Grove Viper/Battle Pet
	"P:41.60,16.80:571:Level 23-24",	-- Grove Viper/Battle Pet
	"P:46.00,78.20:571:Level 23-24",	-- Grove Viper/Battle Pet
	"P:51.00,36.60:571:Level 23-24",	-- Grove Viper/Battle Pet
	"P:59.20,91.60:571:Level 23-24",	-- Grove Viper/Battle Pet
	"P:64.20,28.20:573:Level 23-24",	-- Sandy Petrel/Battle Pet
	"P:67.40,26.60:573:Level 23-24",	-- Sandy Petrel/Battle Pet
	"P:29.20,27.80:699:Level 23-24",	-- Jumping Spider/Battle Pet
	"P:29.60,08.80:699:Level 23-24",	-- Jumping Spider/Battle Pet
	"P:31.40,37.60:699:Level 23-24",	-- Jumping Spider/Battle Pet
	"P:32.00,52.20:699:Level 23-24",	-- Jumping Spider/Battle Pet
	"P:43.00,65.60:699:Level 23-24",	-- Jumping Spider/Battle Pet
	"P:43.20,85.20:699:Level 23-24",	-- Jumping Spider/Battle Pet
	"P:53.00,82.20:699:Level 23-24",	-- Jumping Spider/Battle Pet
	"P:64.20,80.80:699:Level 23-24",	-- Jumping Spider/Battle Pet
	"P:30.60,29.00:702:Level 23-24",	-- Leopard Tree Frog/Battle Pet
	"P:36.00,48.60:702:Level 23-24",	-- Leopard Tree Frog/Battle Pet
	"P:41.60,12.20:702:Level 23-24",	-- Leopard Tree Frog/Battle Pet
	"P:46.40,37.00:702:Level 23-24",	-- Leopard Tree Frog/Battle Pet
	"P:47.70,66.50:702:Level 23-24",	-- Leopard Tree Frog/Battle Pet
	"P:60.60,88.80:702:Level 23-24",	-- Leopard Tree Frog/Battle Pet
	"P:31.20,13.60:703:Level 23-24",	-- Masked Tanuki Pup/Battle Pet
	"P:31.20,26.50:703:Level 23-24",	-- Masked Tanuki Pup/Battle Pet
	"P:34.80,38.00:703:Level 23-24",	-- Masked Tanuki Pup/Battle Pet
	"P:41.20,71.00:703:Level 23-24",	-- Masked Tanuki Pup/Battle Pet
	"P:44.00,14.20:703:Level 23-24",	-- Masked Tanuki Pup/Battle Pet
	"P:47.80,33.40:703:Level 23-24",	-- Masked Tanuki Pup/Battle Pet
	"P:51.60,38.00:703:Level 23-24",	-- Masked Tanuki Pup/Battle Pet
	"P:52.40,63.20:703:Level 23-24",	-- Masked Tanuki Pup/Battle Pet
	"P:68.60,32.00:572:Level 23-24",	-- Spirebound Crab/Battle Pet
	"P:69.00,25.20:572:Level 23-24",	-- Spirebound Crab/Battle Pet
	"P:48.00,71.00:1129:Level 25 Elite Battle Pet",	--Ka'wi the Gorger/Elite Battle Pet
	"P:56.00,29.00:1194:Level 25 Elite Battle Pet",	--Nitun/Elite Battle Pet
	--achievements
	"A:48.00,54.00:6606:1:3 - Level 25 Pets",	-- Taming Pandaria/Hyuna of the Shrines
	"A:33.60,20.80:7329:10:Brewmother Kiki",	-- Pandaren Cuisine
	"A:33.60,20.80:7329:8:Brewmother Kiki",	-- Pandaren Cuisine
	"A:33.60,20.80:7329:4:Brewmother Kiki",	-- Pandaren Cuisine
	"A:33.60,20.80:7329:7:Brewmother Kiki",	-- Pandaren Cuisine
	"A:33.60,20.80:7329:16:Brewmother Kiki",	-- Pandaren Cuisine
	"A:33.60,20.80:7329:13:Brewmother Kiki",	-- Pandaren Cuisine
	"A:33.60,20.80:7329:15:Brewmother Kiki",	-- Pandaren Cuisine
	"A:33.60,20.80:7329:5:Brewmother Kiki",	-- Pandaren Cuisine
	"A:33.60,20.80:7329:11:Brewmother Kiki",	-- Pandaren Cuisine
	"A:33.60,20.80:7329:9:Brewmother Kiki",	-- Pandaren Cuisine
	"A:33.60,20.80:7329:14:Brewmother Kiki",	-- Pandaren Cuisine
	"A:33.60,20.80:7329:12:Brewmother Kiki",	-- Pandaren Cuisine
	"A:28.60,13.20:7329:3:Brewmother Kiki",	-- Pandaren Cuisine
	"A:28.60,13.20:7329:6:Brewmother Kiki",	-- Pandaren Cuisine
	"A:44.80,84.40:7329:10:Jiayi Applebloom",	-- Pandaren Cuisine
	"A:44.80,84.40:7329:8:Jiayi Applebloom",	-- Pandaren Cuisine
	"A:44.80,84.40:7329:4:Jiayi Applebloom",	-- Pandaren Cuisine
	"A:44.80,84.40:7329:7:Jiayi Applebloom",	-- Pandaren Cuisine
	"A:44.80,84.40:7329:16:Jiayi Applebloom",	-- Pandaren Cuisine
	"A:44.80,84.40:7329:13:Jiayi Applebloom",	-- Pandaren Cuisine
	"A:44.80,84.40:7329:15:Jiayi Applebloom",	-- Pandaren Cuisine
	"A:44.80,84.40:7329:5:Jiayi Applebloom",	-- Pandaren Cuisine
	"A:44.80,84.40:7329:11:Jiayi Applebloom",	-- Pandaren Cuisine
	"A:44.80,84.40:7329:9:Jiayi Applebloom",	-- Pandaren Cuisine
	"A:44.80,84.40:7329:14:Jiayi Applebloom",	-- Pandaren Cuisine
	"A:44.80,84.40:7329:12:Jiayi Applebloom",	-- Pandaren Cuisine
	"A:44.80,84.40:7329:3:Jiayi Applebloom",	-- Pandaren Cuisine
	"A:44.80,84.40:7329:6:Jiayi Applebloom",	-- Pandaren Cuisine
	"A:26.20,32.40:7284::Ancient Pandaren Tea Pot",	--Lost and Found
	"A:44.10,27.00:7284::Ancient Pandaren Mining Pick",	--Lost and Found
	"A:43.80,30.70:7284::Ancient Pandaren Mining Pick",	--Lost and Found
	"A:43.00,11.60:7284::Hammer of Ten Thunders",	--Lost and Found
	"A:41.80,17.60:7284::Hammer of Ten Thunders",	--Lost and Found
	"A:31.90,27.80:7284::Lucky Pandaren Coin",	--Lost and Found
	"A:23.50,35.00:7284::Pandaren Ritual Stone",	--Lost and Found
	"A:50.90,99.90:7284::Ship's Storage ",	--Lost and Found
	"A:62.40,27.50:7284::Stash of Gems",	--Lost and Found
	"A:39.40,07.30:7284::Wodin's Mantid Shanker",	--Lost and Found
	"A:46.30,80.70:7284::Offering of Rememberance",	--Lost and Found
	"A:39.30,46.60:7284::Jade Infused Blade",	--Lost and Found
	"A:44.90,64.60:7284::Ancient Jinyu Staff",	--Lost and Found
	"A:46.20,71.20:7284::Ancient Jinyu Staff",	--Lost and Found
	"A:47.10,67.40:7284::Ancient Jinyu Staff",	--Lost and Found
	"A:64.10,84.10:6350:4",	--Coral Adder/"To All the Squirrels I Once Caressed?"
	"A:36.70,58.50:6350:15",	--Shrine Fly/"To All the Squirrels I Once Caressed?"
	"A:45.00,37.60:6350:9",	--Leopard Tree Frog/"To All the Squirrels I Once Caressed?"
	"A:25.60,37.60:6351:9",	--"Exploration Pandaria"
	"A:47.10,45.90:6351:2",	--"Exploration Pandaria"
	"A:54.20,91.30:6351:3",	--"Exploration Pandaria"
	"A:52.00,27.50:6351:4",	--"Exploration Pandaria"
	"A:44.30,92.10:6351:15",	--"Exploration Pandaria"
	"A:46.30,29.40:6351:7",	--"Exploration Pandaria"
	"A:27.70,48.40:6351:6",	--"Exploration Pandaria"
	"A:28.70,14.20:6351:17",	--"Exploration Pandaria"
	"A:43.80,74.40:6351:8",	--"Exploration Pandaria"
	"A:57.50,83.90:6351:5",	--"Exploration Pandaria"
	"A:46.00,63.40:6351:11",	--"Exploration Pandaria"
	"A:53.10,82.60:6351:12",	--"Exploration Pandaria"
	"A:55.50,62.30:6351:13",	--"Exploration Pandaria"
	"A:42.60,16.10:6351:10",	--"Exploration Pandaria"
	"A:57.20,45.60:6351:14",	--"Exploration Pandaria"
	"A:44.60,24.40:6351:1",	--"Exploration Pandaria"
	"A:63.80,27.10:6351:16",	--"Exploration Pandaria"
	"A:67.70,29.40:6716:1",	--"Between a Saurok and a Hard Place"
	"A:42.30,17.60:6754:3",	--"The Dark Heart of the Mogu"
	"A:66.00,87.60:6846:1",	--"Fish Tales"
	"A:26.50,28.40:6850:1",	--"Hozen in the Mist"
	"A:47.10,45.10:6855:1",	--"The Seven Burdens of Shaohao"
	"A:55.90,56.90:6855:3",	--"The Seven Burdens of Shaohao"
	"A:35.80,30.40:6858:3",	--"What Is Worth Fighting For"
	"A:37.30,30.10:7230:2",	--"Legend of the Brewfathers"
	"A:34.10,33.40:7381:1",	--"Restore Balance"
	"A:28.90,36.00:7936::Whispering Pandaren Spirit",	--Pandaren Spirit Tamer
	--rare npcs
	"R:52.00,17.00:69769",	-- Zandalari Warbringer
	"R:51.00,16.00:69768:Patrols the area:44.00,17.60:52.80,31.60",	-- Zandalari Warscout
	"R:33.60,50.80:50750",	--"Aethis"
	"R:39.60,62.60:50363",	--"Krax'ik"
	"R:44.00,74.20:50338",	--"Kor'nas Nightsavage"
	"R:57.20,71.60:50808",	--"Urobi the Walker"
	"R:64.60,74.00:50782",	--"Sarnak"
	"R:52.20,44.40:51078",	--"Ferdinand"
	"R:42.60,38.80:50823",	--"Mister Ferocious"
	"R:55.40,30.60:50823",	--"Martar the Not-So-Smart"
	"R:42.40,16.00:50350")	--"Morgrinn Crackfang"

tappend(points["KunLaiSummit:0"],
	--battle pets
	"P:40.20,83.80:679:Level 23-24",	-- Summit Kid/Battle Pet
	"P:41.60,71.20:679:Level 23-24",	-- Summit Kid/Battle Pet
	"P:47.20,51.00:679:Level 23-24",	-- Summit Kid/Battle Pet
	"P:59.60,45.60:679:Level 23-24",	-- Summit Kid/Battle Pet
	"P:35.80,48.40:724:Level 23-24",	-- Alpine Foxling/Battle Pet
	"P:38.40,75.60:724:Level 23-24",	-- Alpine Foxling/Battle Pet
	"P:39.60,51.40:724:Level 23-24",	-- Alpine Foxling/Battle Pet
	"P:53.00,47.20:724:Level 23-24",	-- Alpine Foxling/Battle Pet
	"P:35.80,48.40:725:Level 23-24",	-- Alpine Foxling Kit/Battle Pet
	"P:38.40,75.60:725:Level 23-24",	-- Alpine Foxling Kit/Battle Pet
	"P:39.60,51.40:725:Level 23-24",	-- Alpine Foxling Kit/Battle Pet
	"P:53.00,47.20:725:Level 23-24",	-- Alpine Foxling Kit/Battle Pet
	"P:45.40,69.40:726:Level 23-24",	-- Plains Monitor/Battle Pet
	"P:53.00,84.60:726:Level 23-24",	-- Plains Monitor/Battle Pet
	"P:59.00,86.20:726:Level 23-24",	-- Plains Monitor/Battle Pet
	"P:62.40,68.40:726:Level 23-24",	-- Plains Monitor/Battle Pet
	"P:66.80,75.40:726:Level 23-24",	-- Plains Monitor/Battle Pet
	"P:73.80,68.60:726:Level 23-24",	-- Plains Monitor/Battle Pet
	"P:33.40,64.20:727:Level 23-24",	-- Prairie Mouse/Battle Pet
	"P:49.60,85.20:727:Level 23-24",	-- Prairie Mouse/Battle Pet
	"P:50.60,66.20:727:Level 23-24",	-- Prairie Mouse/Battle Pet
	"P:52.60,72.80:727:Level 23-24",	-- Prairie Mouse/Battle Pet
	"P:64.00,30.20:727:Level 23-24",	-- Prairie Mouse/Battle Pet
	"P:69.20,76.00:727:Level 23-24",	-- Prairie Mouse/Battle Pet
	"P:60.00,88.60:728:Level 23-24",	-- Szechuan Chicken/Battle Pet
	"P:36.00,54.80:729:Level 23-24",	-- Tolai Hare/Battle Pet
	"P:50.00,81.80:729:Level 23-24",	-- Tolai Hare/Battle Pet
	"P:55.60,49.00:729:Level 23-24",	-- Tolai Hare/Battle Pet
	"P:63.60,24.20:729:Level 23-24",	-- Tolai Hare/Battle Pet
	"P:64.60,83.00:729:Level 23-24",	-- Tolai Hare/Battle Pet
	"P:44.00,70.00:730:Level 23-24",	-- Tolai Hare Pup/Battle Pet
	"P:44.40,79.40:730:Level 23-24",	-- Tolai Hare Pup/Battle Pet
	"P:57.40,82.60:730:Level 23-24",	-- Tolai Hare Pup/Battle Pet
	"P:62.20,34.20:730:Level 23-24",	-- Tolai Hare Pup/Battle Pet
	"P:42.80,70.80:731:Level 23-24",	-- Zooey Snake/Battle Pet
	"P:53.60,91.20:731:Level 23-24",	-- Zooey Snake/Battle Pet
	"P:62.20,63.60:731:Level 23-24",	-- Zooey Snake/Battle Pet
	"P:66.20,87.20:731:Level 23-24",	-- Zooey Snake/Battle Pet
	"P:33.40,53.60:1166:Level 23-25",	-- Kun-Lai Runt/Battle Pet
	"P:36.40,50.20:1166:Level 23-25",	-- Kun-Lai Runt/Battle Pet
	"P:43.00,48.60:1166:Level 23-25",	-- Kun-Lai Runt/Battle Pet
	"P:52.40,57.00:1166:Level 23-25",	-- Kun-Lai Runt/Battle Pet
	"P:55.00,44.20:1166:Level 23-25",	-- Kun-Lai Runt/Battle Pet
	"P:59.00,48.00:1166:Level 23-25",	-- Kun-Lai Runt/Battle Pet
	"P:67.00,84.00:1193:Level 25 Elite Battle Pet",	--Dos'Ryga/Elite Battle Pet
	"P:35.00,56.00:1192:Level 25 Elite Battle Pet",	--Kafi/Elite Battle Pet
	--achievements
	"A:35.80,73.60:6606:4:3 - Level 25 Pets",	-- Taming Pandaria/Courageous Yon
	"A:44.70,52.40:7284::Tablet of Ren Yun",	--Lost and Found
	"A:64.20,45.10:7284::Ancient Mogu Tablet",	--Lost and Found
	"A:52.80,71.30:7284::Hozen Warrior Spear",	--Lost and Found
	"A:51.50,74.00:7284::Hozen Warrior Spear",	--Lost and Found
	"A:52.60,51.50:7284::Rikktik's Tick Remover",	--Lost and Found
	"A:74.70,74.90:7284::Sprite's Cloth Chest",	--Lost and Found
	"A:72.00,33.90:7284::Statue of Xuen",	--Lost and Found
	"A:56.30,51.50:7284::Stolen Sprite Treasure",	--Lost and Found
	"A:59.20,73.00:7284::Terracotta Head",	--Lost and Found
	"A:57.00,75.50:7284::Terracotta Head",	--Lost and Found
	"A:44.70,52.40:7284::Tablet of Ren Yun",	--Lost and Found
	"A:49.40,59.40:7284::Hozen Treasure Cache",	--Lost and Found
	"A:36.00,79.00:7284::Lost Adventurer's Belongings",	--Lost and Found
	"A:47.00,73.00:7284::Mo-Mo's Treasure Chest",	--Lost and Found
	"A:71.20,62.60:7284::Sturdy Yaungol Spear",	--Lost and Found
	"A:70.00,63.80:7284::Sturdy Yaungol Spear",	--Lost and Found
	"A:35.20,76.40:7284::Frozen Trail Packer",	--Lost and Found
	"A:72.60,93.30:6976:1",	--"Exploration Pandaria"
	"A:42.70,87.10:6976:2",	--"Exploration Pandaria"
	"A:55.60,91.40:6976:3",	--"Exploration Pandaria"
	"A:74.90,12.50:6976:4",	--"Exploration Pandaria"
	"A:38.60,78.00:6976:5",	--"Exploration Pandaria"
	"A:58.70,71.50:6976:6",	--"Exploration Pandaria"
	"A:44.70,52.30:6976:7",	--"Exploration Pandaria"
	"A:67.80,72.10:6976:8",	--"Exploration Pandaria"
	"A:48.70,43.20:6976:9",	--"Exploration Pandaria"
	"A:34.90,49.10:6976:10",	--"Exploration Pandaria"
	"A:66.20,50.70:6976:11",	--"Exploration Pandaria"
	"A:47.40,67.20:6976:12",	--"Exploration Pandaria"
	"A:60.10,43.70:6976:13",	--"Exploration Pandaria"
	"A:62.50,29.90:6976:14",	--"Exploration Pandaria"
	"A:65.40,61.80:7386",	--"Grand Expedition Yak"
	"A:53.00,46.50:6754:1",	--"The Dark Heart of the Mogu"
	"A:74.50,83.60:6846:4",	--"Fish Tales"
	"A:50.40,79.30:6847:1",	--"The Song of the Yaungol"
	"A:71.60,63.00:6847:3",	--"The Song of the Yaungol"
	"A:45.80,61.90:6850:4",	--"Hozen in the Mist"
	"A:43.80,51.20:6855:2",	--"The Seven Burdens of Shaohao"
	"A:67.80,48.40:6855:6",	--"The Seven Burdens of Shaohao"
	"A:41.00,42.40:6855:7",	--"The Seven Burdens of Shaohao"
	"A:63.00,40.80:6858:5",	--"What Is Worth Fighting For"
	"A:44.70,52.30:7230:3",	--"Legend of the Brewfathers"
	--rare npcs
	"R:75.00,62.00:69769",	-- Zandalari Warbringer
	"R:74.00,61.00:69768:Patrols the area:69.40,77.20:67.80,86.00",	-- Zandalari Warscout
	"R:74.40,79.20:50769",	--"Norlaxx the Outcast"
	"R:57.40,75.20:50354",	--"Havak"
	"R:48.20,80.80:50332",	--"Korda Torros"
	"R:39.00,79.00:50733",	--"Ski'thik"
	"R:46.20,61.80:50831",	--"Scritch"
	"R:41.00,42.60:50817",	--"Ahone the Wanderer"
	"R:57.00,48.00:50341",	--"Borginn Darkfist"
	"R:64.00,14.00:50789")	--"Nessos the Oracle"

tappend(points["TownlongWastes:0"],
	--battle pets
	"P:41.60,49.00:680:Level 24",	-- Kuitan Mongoose/Battle Pet
	"P:51.80,64.60:680:Level 24",	-- Kuitan Mongoose/Battle Pet
	"P:64.60,71.00:680:Level 24",	-- Kuitan Mongoose/Battle Pet
	"P:83.00,81.80:680:Level 24",	-- Kuitan Mongoose/Battle Pet
	"P:65.60,82.60:732:Level 24",	-- Amber Moth/Battle Pet
	"P:50.20,74.00:733:Level 24",	-- Grassland Hopper/Battle Pet
	"P:66.20,79.40:733:Level 24",	-- Grassland Hopper/Battle Pet
	"P:67.80,46.20:733:Level 24",	-- Grassland Hopper/Battle Pet
	"P:75.20,78.20:733:Level 24",	-- Grassland Hopper/Battle Pet
	"P:20.80,57.80:737:Level 24",	-- Mongoose/Battle Pet
	"P:36.00,48.40:737:Level 24",	-- Mongoose/Battle Pet
	"P:55.20,71.80:737:Level 24",	-- Mongoose/Battle Pet
	"P:60.00,79.20:737:Level 24",	-- Mongoose/Battle Pet
	"P:81.40,81.00:737:Level 24",	-- Mongoose/Battle Pet
	"P:20.80,57.80:739:Level 24",	-- Mongoose Pup/Battle Pet
	"P:36.00,48.40:739:Level 24",	-- Mongoose Pup/Battle Pet
	"P:55.20,71.80:739:Level 24",	-- Mongoose Pup/Battle Pet
	"P:60.00,79.20:739:Level 24",	-- Mongoose Pup/Battle Pet
	"P:81.40,81.00:739:Level 24",	-- Mongoose Pup/Battle Pet
	"P:73.00,71.00:740:Level 24",	-- Yakrat/Battle Pet
	"P:54.00,85.00:742:Level 24",	-- Clouded Hedgehog/Battle Pet
	"P:81.00,87.00:742:Level 24",	-- Clouded Hedgehog/Battle Pet
	"P:82.40,89.40:745:Level 24",	-- Crunchy Scorpion/Battle Pet
	"P:72.00,79.00:1191:Level 25 Elite Battle Pet",	--Ti'un the Wanderer/Elite Battle Pet
	--achievements
	"A:36.20,52.20:6606:5:3 - Level 25 Pets",	-- Taming Pandaria/Seeker Zusshi
	"A:65.80,86.10:7284::Amber Encased Moth",	--Lost and Found
	"A:62.80,34.10:7284::Abandoned Crate of Goods",	--Lost and Found
	"A:55.90,64.90:7284::Fragment of Dread",	--Lost and Found
	"A:48.20,89.00:7284::Fragment of Dread",	--Lost and Found
	"A:36.90,87.60:7284::Fragment of Dread",	--Lost and Found
	"A:35.80,63.30:7284::Fragment of Dread",	--Lost and Found
	"A:55.60,54.10:7284::Hardened Sap of Kri'vess",	--Lost and Found
	"A:55.50,61.00:7284::Hardened Sap of Kri'vess",	--Lost and Found
	"A:52.80,56.20:7284::Hardened Sap of Kri'vess",	--Lost and Found
	"A:66.30,44.70:7284::Yaungol Fire Carrier",	--Lost and Found
	"A:66.80,48.00:7284::Yaungol Fire Carrier",	--Lost and Found
	"A:37.50,78.00:7284::Frozen Trail Packer",	--Lost and Found
	"A:35.20,76.30:7284::Frozen Trail Packer",	--Lost and Found
	"A:73.00,71.00:6350:17",	--Yakrat/"To All the Squirrels I Once Caressed?"
	"A:54.00,85.00:6350:3",	--Clouded Hedgehog/"To All the Squirrels I Once Caressed?"
	"A:81.00,87.00:6350:3",	--Clouded Hedgehog/"To All the Squirrels I Once Caressed?"
	"A:82.00,84.00:6350:13",	--Mongoose/"To All the Squirrels I Once Caressed?"
	"A:68.40,44.80:6977:5",	--"Exploration Pandaria"
	"A:74.70,80.50:6977:1",	--"Exploration Pandaria"
	"A:82.10,73.00:6977:6",	--"Exploration Pandaria"
	"A:56.00,52.00:6977:2",	--"Exploration Pandaria"
	"A:41.90,59.10:6977:4",	--"Exploration Pandaria"
	"A:53.70,78.50:6977:3",	--"Exploration Pandaria"
	"A:49.40,71.40:6977:7",	--"Exploration Pandaria"
	"A:26.60,18.10:6977:8",	--"Exploration Pandaria"
	"A:43.40,85.40:6977:9",	--"Exploration Pandaria"
	"A:22.50,46.90:6977:10",	--"Exploration Pandaria"
	"A:66.30,69.20:6977:11",	--"Exploration Pandaria"
	"A:65.40,50.00:6847:2",	--"The Song of the Yaungol"
	"A:84.10,72.90:6847:4",	--"The Song of the Yaungol"
	"A:37.80,62.90:6855:5",	--"The Seven Burdens of Shaohao"
	"A:57.10,42.10:7936::Burning Pandaren Spirit",	--Pandaren Spirit Tamer
	--rare npcs
	"R:36.00,88.00:69769",	-- Zandalari Warbringer
	"R:37.00,87.00:69768:Patrols the area:42.80,90.80:41.20,76.60",	-- Zandalari Warscout
	"R:62.80,35.00:50355",	--"Kah'tir"
	"R:64.40,49.60:50333",	--"Lon the Bull"
	"R:53.20,64.40:50344",	--"Norlaxx"
	"R:31.80,62.00:50820",	--"Yul Wildpaw"
	"R:41.90,78.50:50734",	--"Lith'ik the Stalker"
	"R:59.30,85.30:50791",	--"Siltriss the Sharpener"
	"R:67.40,74.40:50832",	--"The Yowler"
	"R:65.20,87.20:50772")	--"Eshelon"

tappend(points["ValeofEternalBlossoms:0"],
	--battle pets
	"P:39.40,19.40:747:Level 24",	-- Effervescent Glowfly/Battle Pet
	"P:43.60,27.40:747:Level 24",	-- Effervescent Glowfly/Battle Pet
	"P:43.00,47.00:748:Level 24",	-- Gilded Moth/Battle Pet
	"P:69.00,25.00:749:Level 24",	-- Golden Civet/Battle Pet
	"P:69.00,25.00:750:Level 24",	-- Golden Civet Kitten/Battle Pet
	"P:41.00,47.00:751:Level 24",	-- Dancing Water Skimmer/Battle Pet
	"P:24.60,30.80:752:Level 24",	-- Yellow-Bellied Bullfrog/Battle Pet
	"P:69.00,44.80:752:Level 24",	-- Yellow-Bellied Bullfrog/Battle Pet
	"P:11.00,70.00:1188:Level 25 Elite Battle Pet",	--No-No/Elite Battle Pet
	--achievements
	"A:67.40,40.40:6606:7:3 - Level 25 Pets",	-- Taming Pandaria/Aki the Chosen
	"A:51.40,42.40:7329:10:Merchant Tantan",	-- Pandaren Cuisine
	"A:51.40,42.40:7329:8:Merchant Tantan",	-- Pandaren Cuisine
	"A:51.40,42.40:7329:4:Merchant Tantan",	-- Pandaren Cuisine
	"A:51.40,42.40:7329:7:Merchant Tantan",	-- Pandaren Cuisine
	"A:51.40,42.40:7329:16:Merchant Tantan",	-- Pandaren Cuisine
	"A:51.40,42.40:7329:13:Merchant Tantan",	-- Pandaren Cuisine
	"A:51.40,42.40:7329:15:Merchant Tantan",	-- Pandaren Cuisine
	"A:51.40,42.40:7329:5:Merchant Tantan",	-- Pandaren Cuisine
	"A:51.40,42.40:7329:11:Merchant Tantan",	-- Pandaren Cuisine
	"A:51.40,42.40:7329:9:Merchant Tantan",	-- Pandaren Cuisine
	"A:51.40,42.40:7329:14:Merchant Tantan",	-- Pandaren Cuisine
	"A:51.40,42.40:7329:12:Merchant Tantan",	-- Pandaren Cuisine
	"A:51.40,42.40:7329:3:Merchant Tantan",	-- Pandaren Cuisine
	"A:51.40,42.40:7329:6:Merchant Tantan",	-- Pandaren Cuisine
	"A:43.00,47.00:6350:7",	--Gilded Moth/"To All the Squirrels I Once Caressed?"
	"A:69.00,25.00:6350:8",	--Golden Civiet/"To All the Squirrels I Once Caressed?"
	"A:41.00,47.00:6350:5",	--Dancing Water Skimmer/"To All the Squirrels I Once Caressed?"
	"A:33.10,72.50:6979:2",	--"Exploration Pandaria"
	"A:71.10,46.00:6979:3",	--"Exploration Pandaria"
	"A:24.70,41.10:6979:1",	--"Exploration Pandaria"
	"A:17.90,67.90:6979:4",	--"Exploration Pandaria"
	"A:83.10,57.80:6979:6",	--"Exploration Pandaria"
	"A:61.30,22.70:6979:9",	--"Exploration Pandaria"
	"A:16.90,48.30:6979:11",	--"Exploration Pandaria"
	"A:56.40,43.70:6979:7",	--"Exploration Pandaria"
	"A:43.90,20.10:6979:5",	--"Exploration Pandaria"
	"A:51.90,68.40:6979:8",	--"Exploration Pandaria"
	"A:40.40,48.00:6979:10",	--"Exploration Pandaria"
	"A:40.20,77.50:6754:4",	--"The Dark Heart of the Mogu"
	"A:68.80,44.30:6855:8",	--"The Seven Burdens of Shaohao"
	"A:52.90,68.70:6858:2",	--"What Is Worth Fighting For"
	"A:26.50,21.50:6858:4",	--"What Is Worth Fighting For"
	"A:67.80,15.20:7936::Thundering Pandaren Spirit",	--Pandaren Spirit Tamer
	--rare npcs
	"R:13.60,58.40:50749",	--"Kal'tik the Blight"
	"R:31.80,90.20:50840",	--"Major Nanners"
	"R:42.60,69.20:50822",	--"Ai-Ran the Shifting Cloud"
	"R:35.40,61.60:50806",	--"Moldo One-Eye"
	"R:15.00,36.00:50349",	--"Kang the Soul Thief"
	"R:39.80,25.00:50359",	--"Urgolax"
	"R:62.00,55.60:50780",	--"Sahn Tidehunter"
	"R:86.20,45.20:50336",	--"Yorik Sharpeye"
	"R:22.40,16.80:64403")	--"Alani"

tappend(points["ValleyoftheFourWinds:0"],
	--battle pets
	"P:83.40,16.60:380:Level 23-24",	-- Bucktooth Flapper/Battle Pet
	"P:10.00,46.40:677:Level 23-24",	-- Shy Bandicoon/Battle Pet
	"P:17.20,26.80:677:Level 23-24",	-- Shy Bandicoon/Battle Pet
	"P:21.00,45.40:677:Level 23-24",	-- Shy Bandicoon/Battle Pet
	"P:26.60,51.40:677:Level 23-24",	-- Shy Bandicoon/Battle Pet
	"P:48.70,68.90:706:Level 23-24",	-- Bandicoon/Battle Pet
	"P:59.80,73.50:706:Level 23-24",	-- Bandicoon/Battle Pet
	"P:67.40,63.60:706:Level 23-24",	-- Bandicoon/Battle Pet
	"P:73.90,49.50:706:Level 23-24",	-- Bandicoon/Battle Pet
	"P:80.10,41.10:706:Level 23-24",	-- Bandicoon/Battle Pet
	"P:87.40,37.00:706:Level 23-24",	-- Bandicoon/Battle Pet
	"P:90.00,23.80:706:Level 23-24",	-- Bandicoon/Battle Pet
	"P:48.70,68.90:707:Level 23-24",	-- Bandicoon Kit/Battle Pet
	"P:59.80,73.50:707:Level 23-24",	-- Bandicoon Kit/Battle Pet
	"P:67.40,63.60:707:Level 23-24",	-- Bandicoon Kit/Battle Pet
	"P:73.90,49.50:707:Level 23-24",	-- Bandicoon Kit/Battle Pet
	"P:80.10,41.10:707:Level 23-24",	-- Bandicoon Kit/Battle Pet
	"P:87.40,37.00:707:Level 23-24",	-- Bandicoon Kit/Battle Pet
	"P:90.00,23.80:707:Level 23-24",	-- Bandicoon Kit/Battle Pet
	"P:27.40,50.80:708:Level 23-24",	-- Malayan Quillrat/Battle Pet
	"P:49.60,49.40:708:Level 23-24",	-- Malayan Quillrat/Battle Pet
	"P:62.40,49.20:708:Level 23-24",	-- Malayan Quillrat/Battle Pet
	"P:75.00,39.60:708:Level 23-24",	-- Malayan Quillrat/Battle Pet
	"P:78.60,30.60:708:Level 23-24",	-- Malayan Quillrat/Battle Pet
	"P:86.60,25.80:708:Level 23-24",	-- Malayan Quillrat/Battle Pet
	"P:27.40,50.80:709:Level 23-24",	-- Malayan Quillrat Pup/Battle Pet
	"P:49.60,49.40:709:Level 23-24",	-- Malayan Quillrat Pup/Battle Pet
	"P:62.40,49.20:709:Level 23-24",	-- Malayan Quillrat Pup/Battle Pet
	"P:75.00,39.60:709:Level 23-24",	-- Malayan Quillrat Pup/Battle Pet
	"P:78.60,30.60:709:Level 23-24",	-- Malayan Quillrat Pup/Battle Pet
	"P:86.60,25.80:709:Level 23-24",	-- Malayan Quillrat Pup/Battle Pet
	"P:67.40,63.60:710:Level 23-24",	-- Marsh Fiddler/Battle Pet
	"P:73.90,49.50:710:Level 23-24",	-- Marsh Fiddler/Battle Pet
	"P:80.10,41.10:710:Level 23-24",	-- Marsh Fiddler/Battle Pet
	"P:87.40,37.00:710:Level 23-24",	-- Marsh Fiddler/Battle Pet
	"P:43.00,45.00:711:Level 23-24",	-- Sifang Otter/Battle Pet
	"P:5.007,3.000:711:Level 23-24",	-- Sifang Otter/Battle Pet
	"P:62.00,70.00:711:Level 23-24",	-- Sifang Otter/Battle Pet
	"P:70.00,55.00:711:Level 23-24",	-- Sifang Otter/Battle Pet
	"P:81.00,36.00:711:Level 23-24",	-- Sifang Otter/Battle Pet
	"P:43.00,45.00:712:Level 23-24",	-- Sifang Otter Pup/Battle Pet
	"P:5.007,3.000:712:Level 23-24",	-- Sifang Otter Pup/Battle Pet
	"P:62.00,70.00:712:Level 23-24",	-- Sifang Otter Pup/Battle Pet
	"P:70.00,55.00:712:Level 23-24",	-- Sifang Otter Pup/Battle Pet
	"P:81.00,36.00:712:Level 23-24",	-- Sifang Otter Pup/Battle Pet
	"P:25.00,45.80:713:Level 23-24",	-- Softshell Snapling/Battle Pet
	"P:47.20,70.40:713:Level 23-24",	-- Softshell Snapling/Battle Pet
	"P:55.00,29.20:713:Level 23-24",	-- Softshell Snapling/Battle Pet
	"P:57.80,37.40:713:Level 23-24",	-- Softshell Snapling/Battle Pet
	"P:58.20,70.80:713:Level 23-24",	-- Softshell Snapling/Battle Pet
	"P:60.60,47.60:713:Level 23-24",	-- Softshell Snapling/Battle Pet
	"P:69.60,54.40:713:Level 23-24",	-- Softshell Snapling/Battle Pet
	"P:87.80,30.60:713:Level 23-24",	-- Softshell Snapling/Battle Pet
	"P:25.00,78.00:1189:Level 25 Elite Battle Pet",	--Greyhoof/Elite Battle Pet
	"P:39.00,44.00:1190:Level 25 Elite Battle Pet",	--Lucky Yi/Elite Battle Pet
	--achievements
	"A:46.00,43.60:6606:2:3 - Level 25 Pets",	-- Taming Pandaria/Farmer Nishi
	"A:56.20,52.60:5753:18:Kim Won Gi",	-- Cataclysmically Delicious
	"A:56.20,52.60:5753:40:Kim Won Gi",	-- Cataclysmically Delicious
	"A:53.20,52.00:7329:10:Brother Yakshoe",	-- Pandaren Cuisine
	"A:53.20,52.00:7329:8:Brother Yakshoe",	-- Pandaren Cuisine
	"A:53.20,52.00:7329:4:Brother Yakshoe",	-- Pandaren Cuisine
	"A:53.20,52.00:7329:7:Brother Yakshoe",	-- Pandaren Cuisine
	"A:53.20,52.00:7329:16:Brother Yakshoe",	-- Pandaren Cuisine
	"A:53.20,52.00:7329:13:Brother Yakshoe",	-- Pandaren Cuisine
	"A:53.20,52.00:7329:15:Brother Yakshoe",	-- Pandaren Cuisine
	"A:53.20,52.00:7329:5:Brother Yakshoe",	-- Pandaren Cuisine
	"A:53.20,52.00:7329:11:Brother Yakshoe",	-- Pandaren Cuisine
	"A:53.20,52.00:7329:9:Brother Yakshoe",	-- Pandaren Cuisine
	"A:53.20,52.00:7329:14:Brother Yakshoe",	-- Pandaren Cuisine
	"A:53.20,52.00:7329:12:Brother Yakshoe",	-- Pandaren Cuisine
	"A:53.20,52.00:7329:3:Brother Yakshoe",	-- Pandaren Cuisine
	"A:53.20,52.00:7329:6:Brother Yakshoe",	-- Pandaren Cuisine
	"A:92.00,39.00:7284::Boat-Building Instructions",	--Lost and Found
	"A:46.80,24.60:7284::Ancient Pandaren Fishing Charm",	--Lost and Found
	"A:45.40,38.20:7284::Ancient Pandaren Woodcutter",	--Lost and Found
	"A:15.40,29.10:7284::Staff of the Hidden Master",	--Lost and Found
	"A:17.50,35.70:7284::Staff of the Hidden Master",	--Lost and Found
	"A:19.10,37.90:7284::Staff of the Hidden Master",	--Lost and Found
	"A:15.00,33.70:7284::Staff of the Hidden Master",	--Lost and Found
	"A:19.00,42.50:7284::Staff of the Hidden Master",	--Lost and Found
	"A:23.80,28.40:7284::Virmen Treasure Cache. Flying Mount Required.",	--Lost and Found
	"A:43.50,37.40:7284::Cache of Pilfered Goods. Located underground.",	--Lost and Found
	"A:48.70,68.90:6350:2",	--Bandicoon/"To All the Squirrels I Once Caressed?"
	"A:59.80,73.50:6350:2",	--Bandicoon/"To All the Squirrels I Once Caressed?"
	"A:67.40,63.60:6350:2",	--Bandicoon/"To All the Squirrels I Once Caressed?"
	"A:73.90,49.50:6350:2",	--Bandicoon/"To All the Squirrels I Once Caressed?"
	"A:80.10,41.10:6350:2",	--Bandicoon/"To All the Squirrels I Once Caressed?"
	"A:87.40,37.00:6350:2",	--Bandicoon/"To All the Squirrels I Once Caressed?"
	"A:90.00,23.80:6350:2",	--Bandicoon/"To All the Squirrels I Once Caressed?"
	"A:66.40,63.60:6350:12",	--Marsh Fiddler/"To All the Squirrels I Once Caressed?"
	"A:72.90,49.50:6350:12",	--Marsh Fiddler/"To All the Squirrels I Once Caressed?"
	"A:80.10,40.10:6350:12",	--Marsh Fiddler/"To All the Squirrels I Once Caressed?"
	"A:87.40,36.00:6350:12",	--Marsh Fiddler/"To All the Squirrels I Once Caressed?"
	"A:43.00,45.00:6350:16",	--Sifang Otter/"To All the Squirrels I Once Caressed?"
	"A:5.007,3.000:6350:16",	--Sifang Otter/"To All the Squirrels I Once Caressed?"
	"A:62.00,70.00:6350:16",	--Sifang Otter/"To All the Squirrels I Once Caressed?"
	"A:70.00,55.00:6350:16",	--Sifang Otter/"To All the Squirrels I Once Caressed?"
	"A:81.00,36.00:6350:16",	--Sifang Otter/"To All the Squirrels I Once Caressed?"
	"A:14.80,78.40:6969:2",	--"Exploration Pandaria"
	"A:55.90,34.30:6969:3",	--"Exploration Pandaria"
	"A:53.30,50.30:6969:5",	--"Exploration Pandaria"
	"A:30.70,29.10:6969:7",	--"Exploration Pandaria"
	"A:68.40,43.60:6969:8",	--"Exploration Pandaria"
	"A:16.30,82.40:6969:9",	--"Exploration Pandaria"
	"A:17.20,38.90:6969:10",	--"Exploration Pandaria"
	"A:61.10,27.10:6969:11",	--"Exploration Pandaria"
	"A:72.40,61.50:6969:12",	--"Exploration Pandaria"
	"A:64.70,56.40:6969:13",	--"Exploration Pandaria"
	"A:24.90,42.50:6969:14",	--"Exploration Pandaria"
	"A:20.00,58.40:6969:6",	--"Exploration Pandaria"
	"A:36.00,68.70:6969:15",	--"Exploration Pandaria"
	"A:40.00,40.00:6969:16",	--"Exploration Pandaria"
	"A:52.00,63.30:6969:4",	--"Exploration Pandaria"
	"A:75.80,25.50:6969:17",	--"Exploration Pandaria"
	"A:76.70,59.50:6969:1",	--"Exploration Pandaria"
	"A:86.60,40.00:6969:18",	--"Exploration Pandaria"
	"A:61.30,34.70:6846:2",	--"Fish Tales"
	"A:83.20,21.10:6850:3",	--"Hozen in the Mist"
	"A:20.20,55.90:6856:1",	--"Ballad of Liu Lang"
	"A:55.00,47.20:6856:2",	--"Ballad of Liu Lang"
	"A:34.60,63.90:6856:3",	--"Ballad of Liu Lang"
	"A:18.80,31.70:6858:1",	--"What Is Worth Fighting For"
	--rare npcs
	"R:18.80,77.80:50351",	--"Jonn-Dar"
	"R:10.40,47.00:50364",	--"Nal'lak the Ripper"
	"R:14.00,38.50:50828",	--"Bonobos"
	"R:36.50,57.60:51059",	--"Blackhoof"
	"R:37.00,25.60:50339",	--"Sulik'shor"
	"R:54.00,32.20:50766",	--"Sele'na"
	"R:67.00,60.70:50783",	--"Salyin Warscout"
	"R:88.60,18.00:50811")	--"Nasra Spothide"

tappend(points["Krasarang:0"],
	--battle pets
	"P:23.80,47.40:678:Level 23-24",	-- Jungle Grub/Battle Pet
	"P:43.80,41.80:678:Level 23-24",	-- Jungle Grub/Battle Pet
	"P:54.80,32.00:678:Level 23-24",	-- Jungle Grub/Battle Pet
	"P:60.60,32.00:678:Level 23-24",	-- Jungle Grub/Battle Pet
	"P:71.40,19.40:678:Level 23-24",	-- Jungle Grub/Battle Pet
	"P:59.90,27.50:716:Level 23-24",	-- Amethyst Spiderling/Battle Pet
	"P:69.00,21.00:716:Level 23-24",	-- Amethyst Spiderling/Battle Pet
	"P:22.60,34.20:717:Level 23-24",	-- Savory Beetle/Battle Pet
	"P:30.20,45.60:717:Level 23-24",	-- Savory Beetle/Battle Pet
	"P:39.80,34.20:717:Level 23-24",	-- Savory Beetle/Battle Pet
	"P:63.00,25.20:717:Level 23-24",	-- Savory Beetle/Battle Pet
	"P:79.60,20.60:717:Level 23-24",	-- Savory Beetle/Battle Pet
	"P:69.20,26.00:718:Level 23-24",	-- Luyu Moth/Battle Pet
	"P:71.80,16.20:718:Level 23-24",	-- Luyu Moth/Battle Pet
	"P:18.80,43.60:722:Level 23-24",	-- Mei Li Sparkler/Battle Pet
	"P:37.20,43.20:722:Level 23-24",	-- Mei Li Sparkler/Battle Pet
	"P:39.80,31.40:722:Level 23-24",	-- Mei Li Sparkler/Battle Pet
	"P:31.80,47.00:723:Level 23-24",	-- Spiny Terrapin/Battle Pet
	"P:36.20,61.40:723:Level 23-24",	-- Spiny Terrapin/Battle Pet
	"P:49.80,71.20:723:Level 23-24",	-- Spiny Terrapin/Battle Pet
	"P:71.20,33.20:723:Level 23-24",	-- Spiny Terrapin/Battle Pet
	"P:87.40,21.00:723:Level 23-24",	-- Spiny Terrapin/Battle Pet
	"P:10.60,53.60:1128:Level 23-25. Requires [Rodent Crate] to spawn, these are sold by Shieldwall or Dominace vendors.",	-- Sumprush Rodent/Battle Pet
	"P:36.00,37.00:1195:Level 25 Elite Battle Pet",	--Skitterer Xi'a/Elite Battle Pet
	"P:88.80,33.80:1128:Level 23-25. Requires [Rodent Crate] to spawn, these are sold by Shieldwall or Dominace vendors.",	-- Sumprush Rodent/Battle Pet
	--achievements
	"A:62.20,45.80:6606:3:3 - Level 25 Pets",	-- Taming Pandaria/Mo'ruk
	"A:52.30,88.70:7284::Recipe: Banana Infused Rum",	--Lost and Found
	"A:52.20,73.30:7284::Stack of Papers",	--Lost and Found
	"A:42.30,92.00:7284::Equipment Locker",	--Lost and Found
	"A:50.80,49.30:7284::Pandaren Fishing Spear",	--Lost and Found
	"A:75.00,55.20:7284::Saurok Stone Tablet",	--Lost and Found
	"A:69.20,26.00:6350:10",	--Luyu Moth/"To All the Squirrels I Once Caressed?"
	"A:71.80,16.20:6350:10",	--Luyu Moth/"To All the Squirrels I Once Caressed?"
	"A:78.20,12.90:6350:11",	--Malayan Quillrat/"To All the Squirrels I Once Caressed?"
	"A:59.90,27.50:6350:1",	--Amethyst Spiderling/"To All the Squirrels I Once Caressed?"
	"A:69.00,21.00:6350:1",	--Amethyst Spiderling/"To All the Squirrels I Once Caressed?"
	"A:68.00,43.80:6975:1",	--"Exploration Pandaria"
	"A:32.00,72.70:6975:2",	--"Exploration Pandaria"
	"A:40.70,34.10:6975:8",	--"Exploration Pandaria"
	"A:63.00,22.00:6975:3",	--"Exploration Pandaria"
	"A:29.60,40.70:6975:4",	--"Exploration Pandaria"
	"A:82.10,22.70:6975:5",	--"Exploration Pandaria"
	"A:47.40,75.80:6975:7",	--"Exploration Pandaria"
	"A:55.40,30.80:6975:9",	--"Exploration Pandaria"
	"A:23.50,46.60:6975:10",	--"Exploration Pandaria"
	"A:40.40,48.70:6975:11",	--"Exploration Pandaria"
	"A:47.30,39.10:6975:12",	--"Exploration Pandaria"
	"A:20.20,36.90:6975:13",	--"Exploration Pandaria"
	"A:68.40,22.80:6975:6",	--"Exploration Pandaria"
	"A:11.50,62.30:6975:14",	--"Exploration Pandaria"
	"A:46.30,92.80:6975:15",	--"Exploration Pandaria"
	"A:76.70,09.00:6975:16",	--"Exploration Pandaria"
	"A:72.20,32.60:7518::Starts @ 9pm Server Time on Turtle Beach",	--"Wanderers, Dreamers, and You"
	"A:32.90,29.40:6716:4",	--"Between a Saurok and a Hard Place"
	"A:51.00,31.70:6754:2",	--"The Dark Heart of the Mogu"
	"A:30.60,38.60:6846:3",	--"Fish Tales"
	"A:52.40,87.70:6850:2",	--"Hozen in the Mist"
	"A:40.40,52.00:6855:4",	--"The Seven Burdens of Shaohao"
	"A:72.20,31.00:6856:4",	--"Ballad of Liu Lang"
	"A:81.40,11.50:7230:1",	--"Legend of the Brewfathers"
	--rares
	"R:39.00,66.00:69769",	-- Zandalari Warbringer
	"R:38.00,67.00:69768:Patrols the area:42.40,59.20:34.20,57.00",	-- Zandalari Warscout
	"R:67.20,23.00:50352",	--"Qu'nas"
	"R:54.00,32.00:50340",	--"Gaarn the Toxic"
	"R:56.80,47.20:50787",	--"Arness the Scale"
	"R:52.00,89.00:50830",	--"Spriggin"
	"R:39.40,55.4:50816",	--"Ruun Ghostpaw"
	"R:39.00,29.00:50331",	--"Go-Kan"
	"R:30.60,38.02:50768",	--"Cournith Waterstrider"
	"R:15.60,35.02:50388")	--"Torik-Ethis"

tappend(points["DreadWastes:0"],
	--battle pets
	"P:55.40,33.40:732:Level 24",	-- Amber Moth/Battle Pet
	"P:27.60,50.60:741:Level 24",	-- Silent Hedgehog/Battle Pet
	"P:48.40,12.60:741:Level 24",	-- Silent Hedgehog/Battle Pet
	"P:59.00,63.20:741:Level 24",	-- Silent Hedgehog/Battle Pet
	"P:59.00,63.20:742:Level 24",	-- Clouded Hedgehog/Battle Pet
	"P:66.00,70.00:742:Level 24",	-- Clouded Hedgehog/Battle Pet
	"P:30.60,56.80:743:Level 24",	-- Rapana Whelk/Battle Pet
	"P:40.40,66.80:743:Level 24",	-- Rapana Whelk/Battle Pet
	"P:56.60,75.40:743:Level 24",	-- Rapana Whelk/Battle Pet
	"P:59.00,57.00:744:Level 24",	-- Resilient Roach/Battle Pet
	"P:51.60,34.00:745:Level 24",	-- Crunchy Scorpion/Battle Pet
	"P:55.40,28.00:745:Level 24",	-- Crunchy Scorpion/Battle Pet
	"P:64.20,58.60:836:Level 24",	-- Aqua Strider/Battle Pet
	"P:26.00,50.00:1187:Level 25 Elite Battle Pet",	--Gorespine/Battle Pet
	--achievements
	"A:55.00,37.40:6606:6:3 - Level 25 Pets",	-- Taming Pandaria/Wastewalker Shu
	"A:66.80,63.80:7284::Blade of the Prime",	--Lost and Found
	"A:25.90,50.30:7284::Bloodsoaked Chitin Fragment",	--Lost and Found
	"A:30.20,90.80:7284::Dissector's Staff of Mutation",	--Lost and Found
	"A:33.00,30.10:7284::Lucid Amulet of the Agile Mind",	--Lost and Found
	"A:48.70,30.00:7284::Malik's Stalwart Spear",	--Lost and Found
	"A:42.00,62.20:7284::Manipulator's Talisman",	--Lost and Found
	"A:42.20,63.60:7284::Manipulator's Talisman",	--Lost and Found
	"A:41.60,64.60:7284::Manipulator's Talisman",	--Lost and Found
	"A:56.80,77.60:7284::Swarming Cleaver of Ka'roz",	--Lost and Found
	"A:71.80,36.10:7284::Wind-Reaver's Dagger of Quick Strikes",	--Lost and Found
	"A:30.20,90.80:7284::Dissector's Staff of Mutation",	--Lost and Found
	"A:28.80,41.90:7284::Blade of the Poisoned Mind",	--Lost and Found
	"A:54.20,56.40:7284::Swarmkeeper's Medallion",	--Lost and Found
	"A:36.60,33.40:6978:1",	--"Exploration Pandaria"
	"A:55.70,34.80:6978:2",	--"Exploration Pandaria"
	"A:61.70,15.10:6978:3",	--"Exploration Pandaria"
	"A:56.10,61.60:6978:4",	--"Exploration Pandaria"
	"A:38.30,17.60:6978:5",	--"Exploration Pandaria"
	"A:56.30,69.50:6978:6",	--"Exploration Pandaria"
	"A:71.80,27.40:6978:7",	--"Exploration Pandaria"
	"A:42.30,56.40:6978:8",	--"Exploration Pandaria"
	"A:44.90,41.10:6978:9",	--"Exploration Pandaria"
	"A:50.00,12.70:6978:10",	--"Exploration Pandaria"
	"A:59.40,41.50:6978:11",	--"Exploration Pandaria"
	"A:30.20,76.10:6978:12",	--"Exploration Pandaria"
	"A:67.40,60.80:6716:3",	--"Between a Saurok and a Hard Place"
	"A:48.40,32.80:6857:1",	--"Heart of the Mantid Swarm"
	"A:59.90,55.10:6857:2",	--"Heart of the Mantid Swarm"
	"A:53.60,15.90:6857:3",	--"Heart of the Mantid Swarm"
	"A:35.50,32.60:6857:4",	--"Heart of the Mantid Swarm"
	"A:62.00,82.00:6350:6",	--Emperor Crab/"To All the Squirrels I Once Caressed?"
	"A:59.00,63.20:6350:3",	--Clouded Hedgehog/"To All the Squirrels I Once Caressed?"
	"A:66.00,70.00:6350:3",	--Clouded Hedgehog/"To All the Squirrels I Once Caressed?"
	"A:58.20,18.20:6350:14",	--Resilient Roach/"To All the Squirrels I Once Caressed?"
	"A:48.00,27.00:6350:14",	--Resilient Roach/"To All the Squirrels I Once Caressed?"
	"A:44.60,44.00:6350:14",	--Resilient Roach/"To All the Squirrels I Once Caressed?"
	"A:61.20,87.50:7936::Flowing Pandaren Spirit",
	--rare npcs
	"R:47.00,60.00:69769",	-- Zandalari Warbringer
	"R:48.00,59.00:69768:Patrols the area:42.00,51.00:52.20,67.00",	-- Zandalari Warscout
	"R:34.80,23.02:50821",	--"Ai-Li Skymirror"
	"R:25.20,27.04:50334",	--"Dak the Breaker"
	"R:35.60,30.06:50739",	--"Gar'lok"
	"R:41.00,67.00:50805",	--"Omnis Grinlok"
	"R:55.40,63.80:50836",	--"Ik-Ik the Nimble"
	"R:64.20,58.60:50776",	--"Nalash Verdantis"
	"R:72.00,37.40:50347",	--"Karr the Darkener"
	"R:74.40,22.80:50356")	--"Krol the Blade"

tappend(points["AzuremystIsle:0"],
	"P:27.60,56.80:464:Level 1",	-- Grey Moth/Battle Pet
	"P:33.00,76.00:464:Level 1",	-- Grey Moth/Battle Pet
	"P:37.60,30.00:464:Level 1",	-- Grey Moth/Battle Pet
	"P:44.60,66.40:464:Level 1",	-- Grey Moth/Battle Pet
	"P:48.60,55.60:464:Level 1",	-- Grey Moth/Battle Pet
	"P:51.40,47.40:464:Level 1",	-- Grey Moth/Battle Pet
	"P:54.40,22.80:464:Level 1",	-- Grey Moth/Battle Pet
	"P:54.60,41.60:464:Level 1",	-- Grey Moth/Battle Pet
	"A:77.00,43.00:860:1",	--"Exploration Kalimdor"
	"A:62.00,54.00:860:2",	--"Exploration Kalimdor"
	"A:49.00,50.00:860:3",	--"Exploration Kalimdor"
	"A:26.00,66.00:860:4",	--"Exploration Kalimdor"
	"A:58.00,17.00:860:5",	--"Exploration Kalimdor"
	"A:47.00,51.00:860:6",	--"Exploration Kalimdor"
	"A:59.00,68.00:860:7",	--"Exploration Kalimdor"
	"A:52.00,42.00:860:8",	--"Exploration Kalimdor"
	"A:46.00,71.00:860:9",	--"Exploration Kalimdor"
	"A:37.00,59.00:860:10",	--"Exploration Kalimdor"
	"A:53.00,61.00:860:11",	--"Exploration Kalimdor"
	"A:41.00,04.00:860:12",	--"Exploration Kalimdor"
	"A:13.00,80.00:860:13",	--"Exploration Kalimdor"
	"A:45.00,20.00:860:14",	--"Exploration Kalimdor"
	"A:21.00,54.00:860:16",	--"Exploration Kalimdor"
	"A:32.00,77.00:860:17")	--"Exploration Kalimdor"

tappend(points["BloodmystIsle:0"],
	"P:23.20,62.00:465:Level 3-5",	-- Ravager Hatchling/Battle Pet
	"P:28.60,69.80:465:Level 3-5",	-- Ravager Hatchling/Battle Pet
	"P:31.60,39.40:465:Level 3-5",	-- Ravager Hatchling/Battle Pet
	"P:41.60,91.40:465:Level 3-5",	-- Ravager Hatchling/Battle Pet
	"P:44.40,37.80:465:Level 3-5",	-- Ravager Hatchling/Battle Pet
	"P:48.60,90.40:465:Level 3-5",	-- Ravager Hatchling/Battle Pet
	"P:51.20,68.60:465:Level 3-5",	-- Ravager Hatchling/Battle Pet
	"P:54.80,39.80:465:Level 3-5",	-- Ravager Hatchling/Battle Pet
	"P:60.60,59.60:465:Level 3-5",	-- Ravager Hatchling/Battle Pet
	"P:68.60,19.40:465:Level 3-5",	-- Ravager Hatchling/Battle Pet
	"P:74.80,29.80:465:Level 3-5",	-- Ravager Hatchling/Battle Pet
	"P:32.60,77.40:627:Level 3-5",	-- Infected Squirrel/Battle Pet
	"P:32.80,64.00:627:Level 3-5",	-- Infected Squirrel/Battle Pet
	"P:46.60,27.80:627:Level 3-5",	-- Infected Squirrel/Battle Pet
	"P:51.60,71.00:627:Level 3-5",	-- Infected Squirrel/Battle Pet
	"P:57.40,51.60:627:Level 3-5",	-- Infected Squirrel/Battle Pet
	"P:26.40,33.40:628:Level 3-5",	-- Infected Fawn/Battle Pet
	"P:45.60,23.60:628:Level 3-5",	-- Infected Fawn/Battle Pet
	"P:51.20,80.20:628:Level 3-5",	-- Infected Fawn/Battle Pet
	"P:51.80,39.40:628:Level 3-5",	-- Infected Fawn/Battle Pet
	"P:70.80,80.60:628:Level 3-5",	-- Infected Fawn/Battle Pet
	"R:35.00,62.80:22060::40.60,59.20:36.80,58.20",	-- Fenissa the Assassin
	"R:22.00,60.40:22060::24.40,53.00:22.80,48.00",	-- Fenissa the Assassin
	"R:19.60,52.40:22060::70.40,58.60:16.00,48.80",	-- Fenissa the Assassin
	"A:22.00,37.00:861:1",	--"Exploration Kalimdor"
	"A:41.00,32.00:861:2",	--"Exploration Kalimdor"
	"A:31.00,87.00:861:3",	--"Exploration Kalimdor"
	"A:46.00,45.00:861:4",	--"Exploration Kalimdor"
	"A:82.00,52.00:861:5",	--"Exploration Kalimdor"
	"A:54.00,55.00:861:6",	--"Exploration Kalimdor"
	"A:66.00,78.00:861:7",	--"Exploration Kalimdor"
	"A:62.00,89.00:861:8",	--"Exploration Kalimdor"
	"A:51.00,76.00:861:9",	--"Exploration Kalimdor"
	"A:44.00,84.00:861:10",	--"Exploration Kalimdor"
	"A:38.00,79.00:861:11",	--"Exploration Kalimdor"
	"A:55.00,35.00:861:12",	--"Exploration Kalimdor"
	"A:61.00,44.00:861:13",	--"Exploration Kalimdor"
	"A:73.00,20.00:861:14",	--"Exploration Kalimdor"
	"A:25.00,42.00:861:15",	--"Exploration Kalimdor"
	"A:80.00,26.00:861:16",	--"Exploration Kalimdor"
	"A:38.00,20.00:861:17",	--"Exploration Kalimdor"
	"A:73.00,70.00:861:18",	--"Exploration Kalimdor"
	"A:39.00,61.00:861:19",	--"Exploration Kalimdor"
	"A:29.00,36.00:861:20",	--"Exploration Kalimdor"
	"A:34.00,23.00:861:21",	--"Exploration Kalimdor"
	"A:57.00,81.00:861:22",	--"Exploration Kalimdor"
	"A:19.00,52.00:861:23",	--"Exploration Kalimdor"
	"A:53.00,16.00:861:24",	--"Exploration Kalimdor"
	"A:74.00,91.00:861:25",	--"Exploration Kalimdor"
	"A:30.00,45.00:861:26",	--"Exploration Kalimdor"
	"A:69.00,67.00:861:27",	--"Exploration Kalimdor"
	"A:78.00,28.00:861:28")	--"Exploration Kalimdor"

tappend(points["TheExodar:0"],
	--achievements
	"A:59.60,19.80:1832::Buy Foods and Drinks from Caregiver Breel",	-- Tastes Like Chicken
	"A:59.60,19.80:1833::Buy Foods and Drinks from Caregiver Breel",	-- It's Happy Hour Somewhere
	"A:59.60,19.80:5753:7:Caregiver Breel",	-- Cataclysmically Delicious
	"A:59.60,19.80:5753:15:Caregiver Breel",	-- Cataclysmically Delicious
	"A:59.60,19.80:5753:24:Caregiver Breel",	-- Cataclysmically Delicious
	"A:59.60,19.80:5753:28:Caregiver Breel",	-- Cataclysmically Delicious
	"A:59.60,19.80:5753:29:Caregiver Breel",	-- Cataclysmically Delicious
	"A:59.60,19.80:5753:38:Caregiver Breel",	-- Cataclysmically Delicious
	"A:59.60,19.80:5754:2:Caregiver Breel",	-- Drown Your Sorrows
	"A:59.60,19.80:5754:6:Caregiver Breel",	-- Drown Your Sorrows
	"A:59.60,19.80:5754:9:Caregiver Breel",	-- Drown Your Sorrows
	"A:41.00,73.00:860:15")	--"Exploration Kalimdor"

tappend(points["Darkshore:0"],
	"P:50.60,19.40:379:Level 3-5",	-- Squirrel/Battle Pet
	"P:41.60,64.80:378:Level 3-5",	-- Rabbit/Battle Pet
	"P:44.80,51.20:378:Level 3-5",	-- Rabbit/Battle Pet
	"P:46.60,30.00:378:Level 3-5",	-- Rabbit/Battle Pet
	"P:46.60,89.40:378:Level 3-5",	-- Rabbit/Battle Pet
	"P:49.00,21.00:378:Level 3-5",	-- Rabbit/Battle Pet
	"P:55.20,25.00:378:Level 3-5",	-- Rabbit/Battle Pet
	"P:63.60,18.40:378:Level 3-5",	-- Rabbit/Battle Pet
	"P:39.60,41.80:417:Level 3-5",	-- Rat/Battle Pet
	"P:44.60,56.80:417:Level 3-5",	-- Rat/Battle Pet
	"P:45.80,83.60:417:Level 3-5",	-- Rat/Battle Pet
	"P:59.60,21.00:417:Level 3-5",	-- Rat/Battle Pet
	"P:37.60,61.40:493:Level 3-5",	-- Shimmershell Snail/Battle Pet
	"P:38.20,36.20:493:Level 3-5",	-- Shimmershell Snail/Battle Pet
	"P:38.20,48.80:493:Level 3-5",	-- Shimmershell Snail/Battle Pet
	"P:38.40,75.60:493:Level 3-5",	-- Shimmershell Snail/Battle Pet
	"P:38.60,86.60:493:Level 3-5",	-- Shimmershell Snail/Battle Pet
	"P:44.20,26.00:493:Level 3-5",	-- Shimmershell Snail/Battle Pet
	"P:45.20,18.40:493:Level 3-5",	-- Shimmershell Snail/Battle Pet
	"P:54.80,19.60:493:Level 3-5",	-- Shimmershell Snail/Battle Pet
	"P:58.20,15.40:493:Level 3-5",	-- Shimmershell Snail/Battle Pet
	"P:41.60,73.40:508:Level 3-5",	-- Darkshore Cub/Battle Pet
	"P:41.60,79.60:508:Level 3-5",	-- Darkshore Cub/Battle Pet
	"P:46.00,79.00:508:Level 3-5",	-- Darkshore Cub/Battle Pet
	"R:44.60,83.00:2186",	-- Carnivous the Breaker
	"R:40.00,83.20:2192",	-- Firecaller Radison
	"R:57.60,15.20:7015::58.60,10.00",	-- Flagglemurk the Cruel
	"R:44.80,56.60:2184",	-- Lady Moongazer
	"R:48.60,41.60:7016::48.60,39.00:46.60,41.60",	-- Lady Vespira
	"R:57.20,32.80:2191",	-- Licillin
	"R:34.20,83.60:7017",	-- Lord Sinslayer
	"R:41.60,36.00:2175",	-- Shadowclaw
	"R:40.80,48.60:2172",	-- Strider Clutchmother
	"A:36.00,43.00:844:1",	--"Exploration Kalimdor"
	"A:32.00,83.00:844:10",	--"Exploration Kalimdor"
	"A:40.00,87.00:844:11",	--"Exploration Kalimdor"
	"A:70.00,19.00:844:2",	--"Exploration Kalimdor"
	"A:62.00,09.00:844:3",	--"Exploration Kalimdor"
	"A:40.00,71.00:844:4",	--"Exploration Kalimdor"
	"A:40.00,32.00:844:5",	--"Exploration Kalimdor"
	"A:60.00,20.00:844:6",	--"Exploration Kalimdor"
	"A:43.00,53.00:844:7",	--"Exploration Kalimdor"
	"A:45.00,58.00:844:8",	--"Exploration Kalimdor"
	"A:50.00,19.00:844:9",	--"Exploration Kalimdor"
	"A:52.50,16.70:5479:6",	--"The Oceanographer"

	"A:49.00,21.00:1206:12",	--"To All The Squirrels I've Loved Before, Rabbit"
	"A:45.00,73.00:1206:5",	--"To All The Squirrels I've Loved Before, Deer"
	"A:50.00,19.00:1206:7")	--"To All The Squirrels I've Loved Before, Fawn"

tappend(points["Moonglade:0"],
	"P:39.20,42.20:503:Level 15",	-- Silky Moth/Battle Pet
	"P:55.00,31.40:503:Level 15",	-- Silky Moth/Battle Pet
	"P:62.40,54.60:503:Level 15",	-- Silky Moth/Battle Pet
	"A:46.00,60.40:6602:7:3 - Level 17 Pets",	-- Taming Kalimdor/Elena Flutterfly
	"A:45.00,58.00:855:1",	--"Exploration Kalimdor"
	"A:48.00,39.00:855:2",	--"Exploration Kalimdor"
	"A:36.00,42.00:855:3",	--"Exploration Kalimdor"
	"A:68.00,60.00:855:4",	--"Exploration Kalimdor"
	"A:56.70,62.70:5479:22")	--"The Oceanographer"

tappend(points["Teldrassil:0"],
	"P:42.40,59.00:419:Level 1",	-- Small Frog/Battle Pet
	"P:55.60,59.60:419:Level 1",	-- Small Frog/Battle Pet
	"P:58.00,36.00:378:Level 1",	-- Rabbit/Battle Pet
	"P:56.00,25.00:412:Level 1-2",	-- Spider/Battle Pet
	"P:39.40,24.60:447:Level 1",	-- Fawn/Battle Pet
	"P:42.00,48.60:447:Level 1",	-- Fawn/Battle Pet
	"P:43.20,62.80:447:Level 1",	-- Fawn/Battle Pet
	"P:55.80,62.60:447:Level 1",	-- Fawn/Battle Pet
	"P:63.80,46.80:447:Level 1",	-- Fawn/Battle Pet
	"P:35.60,68.80:452:Level 1",	-- Red-Tailed Chipmunk/Battle Pet
	"P:37.40,28.40:452:Level 1",	-- Red-Tailed Chipmunk/Battle Pet
	"P:42.40,55.80:452:Level 1",	-- Red-Tailed Chipmunk/Battle Pet
	"P:43.60,37.60:452:Level 1",	-- Red-Tailed Chipmunk/Battle Pet
	"P:51.20,66.40:452:Level 1",	-- Red-Tailed Chipmunk/Battle Pet
	"P:54.60,55.00:452:Level 1",	-- Red-Tailed Chipmunk/Battle Pet
	"P:55.40,72.40:452:Level 1",	-- Red-Tailed Chipmunk/Battle Pet
	"P:58.00,41.20:452:Level 1",	-- Red-Tailed Chipmunk/Battle Pet
	"P:61.00,69.60:452:Level 1",	-- Red-Tailed Chipmunk/Battle Pet
	"P:66.20,53.00:452:Level 1",	-- Red-Tailed Chipmunk/Battle Pet
	"P:37.60,28.20:479:Level 1",	-- Elfin Rabbit/Battle Pet
	"P:39.80,45.40:479:Level 1",	-- Elfin Rabbit/Battle Pet
	"P:52.20,52.60:479:Level 1",	-- Elfin Rabbit/Battle Pet
	"P:55.40,90.80:479:Level 1",	-- Elfin Rabbit/Battle Pet
	"P:59.80,48.40:479:Level 1",	-- Elfin Rabbit/Battle Pet
	"P:38.40,27.20:507:Level 1",	-- Crested Owl/Battle Pet
	"P:39.20,48.60:507:Level 1",	-- Crested Owl/Battle Pet
	"P:39.80,30.40:507:Level 1",	-- Crested Owl/Battle Pet
	"P:40.00,44.60:507:Level 1",	-- Crested Owl/Battle Pet
	"P:40.20,24.60:507:Level 1",	-- Crested Owl/Battle Pet
	"P:40.80,51.40:507:Level 1",	-- Crested Owl/Battle Pet
	"P:41.40,25.40:507:Level 1",	-- Crested Owl/Battle Pet
	"P:42.00,22.60:507:Level 1",	-- Crested Owl/Battle Pet
	"P:42.60,30.00:507:Level 1",	-- Crested Owl/Battle Pet
	"P:43.40,25.00:507:Level 1",	-- Crested Owl/Battle Pet
	"P:43.80,62.20:507:Level 1",	-- Crested Owl/Battle Pet
	"P:46.80,46.40:507:Level 1",	-- Crested Owl/Battle Pet
	"P:47.00,35.80:507:Level 1",	-- Crested Owl/Battle Pet
	"P:48.20,67.00:507:Level 1",	-- Crested Owl/Battle Pet
	"P:50.00,48.60:507:Level 1",	-- Crested Owl/Battle Pet
	"P:54.00,66.60:507:Level 1",	-- Crested Owl/Battle Pet
	"P:56.40,47.60:507:Level 1",	-- Crested Owl/Battle Pet
	"P:62.40,45.40:507:Level 1",	-- Crested Owl/Battle Pet
	"P:62.40,55.80:507:Level 1",	-- Crested Owl/Battle Pet
	"R:47.20,45.60:2162",	-- Agal
	"R:52.00,63.80:3535",	-- Blackmoss the Fetid
	"R:59.60,65.60:14430",	-- Duskstalker
	"R:53.40,66.50:14430",	-- Duskstalker
	"R:37.60,30.80:14431::39.60,37.40",	-- Fury Shelda
	"R:51.60,38.60:14429",	-- Grimmaw
	"R:53.00,44.60:14432",	-- Threggil
	"R:65.60,51.40:14428",	-- Uruson
	"A:57.00,38.00:842:1",	--"Exploration Kalimdor"
	"A:56.00,53.00:842:3",	--"Exploration Kalimdor"
	"A:50.00,63.00:842:6",	--"Exploration Kalimdor"
	"A:64.00,50.00:842:8",	--"Exploration Kalimdor"
	"A:55.00,91.00:842:11",	--"Exploration Kalimdor"
	"A:44.00,35.00:842:10",	--"Exploration Kalimdor"
	"A:50.00,38.00:842:2",	--"Exploration Kalimdor"
	"A:46.00,51.00:842:4",	--"Exploration Kalimdor"
	"A:43.00,64.00:842:5",	--"Exploration Kalimdor"
	"A:41.00,55.00:842:7",	--"Exploration Kalimdor"
	"A:39.00,31.00:842:9",	--"Exploration Kalimdor"
	"A:55.00,90.00:842:12")	--"Exploration Kalimdor"

tappend(points["DeadwindPass:0"],
	"P:41.60,68.00:439:Level 17-18. Spawns Early Mornings.",	-- Restless Shadeling/Battle Pet
	"P:44.60,73.40:439:Level 17-18. Spawns Early Mornings.",	-- Restless Shadeling/Battle Pet
	"P:46.80,75.60:439:Level 17-18. Spawns Early Mornings.",	-- Restless Shadeling/Battle Pet
	"P:51.80,79.20:439:Level 17-18. Spawns Early Mornings.",	-- Restless Shadeling/Battle Pet
	"P:54.40,87.60:439:Level 17-18. Spawns Early Mornings.",	-- Restless Shadeling/Battle Pet
	"P:41.60,76.60:1160:Level 17-18",	-- Arcane Eye/Battle Pet
	"P:45.60,77.40:1160:Level 17-18",	-- Arcane Eye/Battle Pet		
	"P:51.60,76.60:1160:Level 17-18",	-- Arcane Eye/Battle Pet
	"P:50.00,69.60:1160:Level 17-18",	-- Arcane Eye/Battle Pet
	"A:40.20,76.40:6603:12:3 - Level 19 Pets",	-- Taming Eastern Kingdoms/Lydia Accoste
	"A:42.00,34.00:777:1",	--"Exploration Eastern Kingdom"
	"A:58.00,64.00:777:2",	--"Exploration Eastern Kingdom"
	"A:48.00,75.00:777:3",	--"Exploration Eastern Kingdom"
	"A:53.10,73.10:5478:5",	--"The Limnologist"
	"A:53.10,73.10:5478:9")	--"The Limnologist"

tappend(points["DunMorogh:0"],
	--battle pets
	"P:36.00,69.00:378:Level 1",	-- Rabbit/Battle Pet
	"P:49.00,65.00:440:Level 1",	-- Snow Cub/Battle Pet
	"P:51.60,49.60:440:Level 1",	-- Snow Cub/Battle Pet
	"P:54.80,38.60:440:Level 1",	-- Snow Cub/Battle Pet
	"P:68.80,52.00:440:Level 1",	-- Snow Cub/Battle Pet
	"P:77.80,17.80:440:Level 1",	-- Snow Cub/Battle Pet
	"P:78.00,51.60:440:Level 1",	-- Snow Cub/Battle Pet
	"P:87.60,45.20:440:Level 1",	-- Snow Cub/Battle Pet
	"P:51.00,54.20:441:Level 1",	-- Alpine Hare/Battle Pet
	"P:52.00,44.60:441:Level 1",	-- Alpine Hare/Battle Pet
	"P:62.40,53.60:441:Level 1",	-- Alpine Hare/Battle Pet
	"P:77.60,49.20:441:Level 1",	-- Alpine Hare/Battle Pet
	"P:27.60,35.60:442:Level 1",	-- Irradiated Roach/Battle Pet
	"P:34.20,69.60:442:Level 1",	-- Irradiated Roach/Battle Pet
	"P:48.40,67.00:442:Level 1",	-- Irradiated Roach/Battle Pet
	"P:54.40,55.00:442:Level 1",	-- Irradiated Roach/Battle Pet
	"P:58.60,35.00:442:Level 1",	-- Irradiated Roach/Battle Pet
	"P:59.60,45.60:442:Level 1",	-- Irradiated Roach/Battle Pet
	"P:28.00,35.80:1162:Level 1-2",	-- Fluxfire Feline/Battle Pet
	"P:34.00,69.60:1162:Level 1-2",	-- Fluxfire Feline/Battle Pet
	"P:36.00,31.60:1162:Level 1-2",	-- Fluxfire Feline/Battle Pet
	"P:43.80,66.40:1162:Level 1-2",	-- Fluxfire Feline/Battle Pet
	"P:44.20,29.60:1162:Level 1-2",	-- Fluxfire Feline/Battle Pet
	"P:47.00,38.20:1162:Level 1-2",	-- Fluxfire Feline/Battle Pet
	"P:51.60,60.60:1162:Level 1-2",	-- Fluxfire Feline/Battle Pet
	"P:54.80,66.40:1162:Level 1-2",	-- Fluxfire Feline/Battle Pet
	"P:63.20,34.40:1162:Level 1-2",	-- Fluxfire Feline/Battle Pet
	--rares
	"R:67.80,59.00:1130",	-- Bjarn
	"R:46.40,47.60:1137",	-- Edan the Howler
	"R:34.20,41.60:8503",	-- Gibblewilt
	"R:30.40,48.40:1260",	-- Great Father Arctikus
	"R:79.40,50.20:1119",	-- Hammerspine
	"R:44.60,38.00:1132",	-- Timber
	"A:42.00,63.00:627:1",	--"Exploration Eastern Kingdom"
	"A:34.00,71.00:627:2",	--"Exploration Eastern Kingdom"
	"A:59.00,57.00:627:3",	--"Exploration Eastern Kingdom"
	"A:33.00,37.00:627:4",	--"Exploration Eastern Kingdom"
	"A:78.00,25.00:627:5",	--"Exploration Eastern Kingdom"
	"A:49.00,40.00:627:6",	--"Exploration Eastern Kingdom"
	"A:53.00,51.00:627:7",	--"Exploration Eastern Kingdom"
	"A:68.00,56.00:627:8",	--"Exploration Eastern Kingdom"
	"A:71.00,48.00:627:9",	--"Exploration Eastern Kingdom"
	"A:84.00,51.00:627:10",	--"Exploration Eastern Kingdom"
	"A:76.00,53.00:627:11",	--"Exploration Eastern Kingdom"
	"A:90.00,37.00:627:12",	--"Exploration Eastern Kingdom"
	"A:32.00,49.00:627:13",	--"Exploration Eastern Kingdom"
	"A:42.00,39.00:627:14",	--"Exploration Eastern Kingdom"
	"A:58.00,36.00:627:15")	--"Exploration Eastern Kingdom"

tappend(points["Duskwood:0"],
	--battle pets
	"P:15.60,22.60:419:Level 5",	-- Small Frog/Battle Pet
	"P:46.60,15.00:419:Level 5",	-- Small Frog/Battle Pet
	"P:79.20,16.60:419:Level 5",	-- Small Frog/Battle Pet
	"P:07.00,33.80:378:Level 5-6",	-- Rabbit/Battle Pet
	"P:18.00,22.40:378:Level 5-6",	-- Rabbit/Battle Pet
	"P:43.00,17.40:378:Level 5-6",	-- Rabbit/Battle Pet
	"P:43.20,36.00:378:Level 5-6",	-- Rabbit/Battle Pet
	"P:47.00,42.00:378:Level 5-6",	-- Rabbit/Battle Pet
	"P:50.60,43.80:378:Level 5-6",	-- Rabbit/Battle Pet
	"P:59.80,15.00:378:Level 5-6",	-- Rabbit/Battle Pet
	"P:73.40,17.20:378:Level 5-6",	-- Rabbit/Battle Pet
	"P:09.40,30.20:379:Level 5-6",	-- Squirrel/Battle Pet
	"P:30.80,23.80:379:Level 5-6",	-- Squirrel/Battle Pet
	"P:45.00,36.40:379:Level 5-6",	-- Squirrel/Battle Pet
	"P:50.60,43.80:379:Level 5-6",	-- Squirrel/Battle Pet
	"P:59.80,17.60:379:Level 5-6",	-- Squirrel/Battle Pet
	"P:92.80,17.00:379:Level 5-6",	-- Squirrel/Battle Pet
	"P:21.00,42.00:385:Level 5-6",	-- Mouse/Battle Pet
	"P:82.00,34.00:385:Level 5-6",	-- Mouse/Battle Pet
	"P:31.80,52.80:396:Level 5-6",	-- Dusk Spiderling/Battle Pet
	"P:33.00,37.20:396:Level 5-6",	-- Dusk Spiderling/Battle Pet
	"P:35.80,62.60:396:Level 5-6",	-- Dusk Spiderling/Battle Pet
	"P:62.80,24.60:396:Level 5-6",	-- Dusk Spiderling/Battle Pet
	"P:65.00,40.80:396:Level 5-6",	-- Dusk Spiderling/Battle Pet
	"P:24.00,55.00:397:Level 5-6",	-- Skunk/Battle Pet
	"P:64.00,46.00:397:Level 5-6",	-- Skunk/Battle Pet
	"P:21.40,72.80:398:Level 5-6",	-- Black Rat/Battle Pet
	"P:21.80,35.00:398:Level 5-6",	-- Black Rat/Battle Pet
	"P:22.00,38.00:398:Level 5-6",	-- Black Rat/Battle Pet
	"P:24.40,59.80:398:Level 5-6",	-- Black Rat/Battle Pet
	"P:71.80,37.40:398:Level 5-6",	-- Black Rat/Battle Pet
	"P:75.60,57.80:398:Level 5-6",	-- Black Rat/Battle Pet
	"P:78.80,33.80:398:Level 5-6",	-- Black Rat/Battle Pet
	"P:78.80,68.40:398:Level 5-6",	-- Black Rat/Battle Pet
	"P:17.60,57.40:399:Level 5-6",	-- Rat Snake/Battle Pet
	"P:21.80,46.00:399:Level 5-6",	-- Rat Snake/Battle Pet
	"P:22.80,68.00:399:Level 5-6",	-- Rat Snake/Battle Pet
	"P:28.00,76.40:399:Level 5-6",	-- Rat Snake/Battle Pet
	"P:38.80,73.40:399:Level 5-6",	-- Rat Snake/Battle Pet
	"P:49.40,76.00:399:Level 5-6",	-- Rat Snake/Battle Pet
	"P:57.60,24.60:399:Level 5-6",	-- Rat Snake/Battle Pet
	"P:67.20,76.20:399:Level 5-6",	-- Rat Snake/Battle Pet
	"P:72.60,26.80:399:Level 5-6",	-- Rat Snake/Battle Pet
	"P:86.80,50.60:399:Level 5-6",	-- Rat Snake/Battle Pet
	"P:34.00,39.60:400:Level 5-6. Comes out at night.",	-- Widow Spiderling/Battle Pet
	"P:34.80,61.20:400:Level 5-6. Comes out at night.",	-- Widow Spiderling/Battle Pet
	"P:64.60,26.20:400:Level 5-6. Comes out at night.",	-- Widow Spiderling/Battle Pet
	"P:54.00,22.00:424:Level 5-6",	-- Roach/Battle Pet
	--rares
	"R:50.20,77.60:45785::50.60,72.00:47.80,72.80",	-- Carved One
	"R:27.60,31.60:45801",	-- Eliza
	"R:58.80,29.80:507",	-- Fenros
	"R:61.40,39.00:507::61.60,41.60",	-- Fenros
	"R:63.80,50.40:507",	-- Fenros
	"R:67.80,28.00:521::72.20,22.80",	-- Lupos
	"R:66.00,17.80:521::59.40,22.00",	-- Lupos
	"R:07.80,34.20:45811",	-- Marina DeSirrus
	"R:64.40,68.20:45771::58.60,77.60",	-- Marus
	"R:63.40,83.80:45771",	-- Marus
	"R:86.40,47.40:574",	-- Naraxis
	"R:74.00,78.60:534",	-- Nefaru
	"R:90.60,30.60:45739",	-- The Unknown Soldier
	"R:81.80,59.20:45740::80.80,64.20",	-- Watcher Eva
	"R:79.80,70.80:45740",	-- Watcher Eva
	"R:90.60,30.60:45739:Level 20",	-- The Unknown Soldier
	"R:64.80,69.00:45771:Level 23",	-- Marus
	"R:61.20,74.80:45771:Level 23",	-- Marus
	"R:58.80,80.40:45771:Level 23",	-- Marus
	--achievements
	"A:09.00,49.00:778:1",	--"Exploration Eastern Kingdom"
	"A:21.00,68.00:778:2",	--"Exploration Eastern Kingdom"
	"A:20.00,55.00:778:3",	--"Exploration Eastern Kingdom"
	"A:20.00,42.00:778:4",	--"Exploration Eastern Kingdom"
	"A:35.00,72.00:778:5",	--"Exploration Eastern Kingdom"
	"A:47.00,45.00:778:6",	--"Exploration Eastern Kingdom"
	"A:49.00,73.00:778:7",	--"Exploration Eastern Kingdom"
	"A:64.00,37.00:778:8",	--"Exploration Eastern Kingdom"
	"A:63.00,72.00:778:9",	--"Exploration Eastern Kingdom"
	"A:78.00,69.00:778:10",	--"Exploration Eastern Kingdom"
	"A:74.00,46.00:778:11",	--"Exploration Eastern Kingdom"
	"A:77.00,35.00:778:12",	--"Exploration Eastern Kingdom"
	"A:37.00,17.00:778:13",	--"Exploration Eastern Kingdom"
	"A:47.00,42.00:1206:12",	--"To All The Squirrels I've Loved Before, Rabbit"
	"A:24.00,55.00:1206:16",	--"To All The Squirrels I've Loved Before, Skunk"
	"A:64.00,46.00:1206:16",	--"To All The Squirrels I've Loved Before, Skunk"
	"A:54.00,22.00:2556:9",	--"Pest Control, Roach"
	"A:21.00,42.00:2556:7",	--"Pest Control, Mouse"
	"A:82.00,34.00:2556:7")	--"Pest Control, Mouse"

tappend(points["Elwynn:0"],
	--battle pets
	"P:28.20,67.20:374:Level 1",	-- Black Lamb/Battle Pet
	"P:31.80,81.80:374:Level 1",	-- Black Lamb/Battle Pet
	"P:38.40,61.80:374:Level 1",	-- Black Lamb/Battle Pet
	"P:40.80,73.80:374:Level 1",	-- Black Lamb/Battle Pet
	"P:44.20,51.00:374:Level 1",	-- Black Lamb/Battle Pet
	"P:58.80,60.20:374:Level 1",	-- Black Lamb/Battle Pet
	"P:66.80,65.20:374:Level 1",	-- Black Lamb/Battle Pet
	"P:71.20,39.60:374:Level 1",	-- Black Lamb/Battle Pet
	"P:72.00,76.20:374:Level 1",	-- Black Lamb/Battle Pet
	"P:76.80,77.00:374:Level 1",	-- Black Lamb/Battle Pet
	"P:79.40,71.00:374:Level 1",	-- Black Lamb/Battle Pet
	"P:79.80,59.40:374:Level 1",	-- Black Lamb/Battle Pet
	"P:87.00,63.80:374:Level 1",	-- Black Lamb/Battle Pet
	"P:26.60,78.60:378:Level 1",	-- Rabbit/Battle Pet
	"P:28.20,93.80:378:Level 1",	-- Rabbit/Battle Pet
	"P:37.00,61.60:378:Level 1",	-- Rabbit/Battle Pet
	"P:42.80,85.80:378:Level 1",	-- Rabbit/Battle Pet
	"P:54.60,80.00:378:Level 1",	-- Rabbit/Battle Pet
	"P:61.80,61.00:378:Level 1",	-- Rabbit/Battle Pet
	"P:69.60,78.00:378:Level 1",	-- Rabbit/Battle Pet
	"P:83.80,76.80:378:Level 1",	-- Rabbit/Battle Pet
	"P:84.20,66.50:378:Level 1",	-- Rabbit/Battle Pet
	"P:37.00,76.00:379:Level 1",	-- Squirrel/Battle Pet
	"P:37.00,76.00:379:Level 1",	-- Squirrel/Battle Pet
	"P:42.00,52.00:379:Level 1",	-- Squirrel/Battle Pet
	"P:42.00,52.00:379:Level 1",	-- Squirrel/Battle Pet
	"P:63.00,63.00:379:Level 1",	-- Squirrel/Battle Pet
	"P:63.00,63.00:379:Level 1",	-- Squirrel/Battle Pet
	"P:34.00,65.00:419:Level 1",	-- Small Frog/Battle Pet
	"P:52.00,64.00:419:Level 1",	-- Small Frog/Battle Pet
	"P:35.20,59.20:447:Level 1",	-- Fawn/Battle Pet
	"P:35.60,78.00:447:Level 1",	-- Fawn/Battle Pet
	"P:47.40,80.60:447:Level 1",	-- Fawn/Battle Pet
	"P:47.60,59.20:447:Level 1",	-- Fawn/Battle Pet
	"P:66.40,78.40:447:Level 1",	-- Fawn/Battle Pet
	"P:87.20,70.80:447:Level 1",	-- Fawn/Battle Pet
	"P:44.00,53.00:459:Level 1",	-- Cat/Battle Pet
	"P:42.00,65.00:646:Level 1",	-- Chicken/Battle Pet
	--rare npcs
	"R:68.00,44.60:472::65.40,41.20:69.60,38.80",	-- Fedfennel
	"R:27.60,88.00:100::26.20,90.40",	-- Gruff Swiftbite
	"R:47.60,32.20:62",	-- Gug Fatcandle
	"R:31.00,65.60:99",	-- Morgaine the Sly
	"R:61.80,47.80:471",	-- Mother Fang
	"R:38.60,83.60:79",	-- Narg the Taskmaster
	"R:50.60,83.60:61",	-- Thuros Lightfingers
	"R:82.60,86.00:51077:Level 9",	-- Bushtail
	"R:84.20,82.00:51077:Level 9",	-- Bushtail
	"R:27.40,67.60:50926:Level 6",	-- Grizzled Ben
	"R:54.00,61.00:50916:Level 5",	-- Lamepaw the Whimperer
	"R:51.60,65.20:50916:Level 5",	-- Lamepaw the Whimperer
	"R:69.80,80.80:50942:Level 7",	-- Snoot the Rooter
	"R:67.40,80.40:50942:Level 7",	-- Snoot the Rooter
	"R:69.40,65.00:50752:Level 7",	-- Tarantis
	"R:64.20,63.60:50752:Level 7",	-- Tarantis
	"R:51.00,87.80:51014:Level 8",	-- Terrapis
	"R:57.20,85.20:51014:Level 8",	-- Terrapis
	"R:62.60,82.40:51014:Level 8",	-- Terrapis
	"R:70.40,85.60:51014:Level 8",	-- Terrapis
	"R:74.60,84.20:51014:Level 8",	-- Terrapis
	--achievements
	"A:45.00,47.00:776:1",	--"Exploration Eastern Kingdom"
	"A:24.00,74.00:776:2",	--"Exploration Eastern Kingdom"
	"A:42.00,65.00:776:3",	--"Exploration Eastern Kingdom"
	"A:38.00,82.00:776:4",	--"Exploration Eastern Kingdom"
	"A:48.00,87.00:776:5",	--"Exploration Eastern Kingdom"
	"A:64.00,70.00:776:6",	--"Exploration Eastern Kingdom"
	"A:69.00,79.00:776:7",	--"Exploration Eastern Kingdom"
	"A:81.00,66.00:776:8",	--"Exploration Eastern Kingdom"
	"A:84.00,79.00:776:9",	--"Exploration Eastern Kingdom"
	"A:52.00,66.00:776:10",	--"Exploration Eastern Kingdom"
	"A:73.00,58.00:776:11",	--"Exploration Eastern Kingdom"
	"A:42.00,65.00:1206:3",	--"To All The Squirrels I've Loved Before, Chicken"
	"A:43.00,70.00:1206:12",	--"To All The Squirrels I've Loved Before, Rabbit"
	"A:49.00,44.00:1206:12",	--"To All The Squirrels I've Loved Before, Rabbit"
	"A:37.00,55.00:1206:5",	--"To All The Squirrels I've Loved Before, Deer"
	"A:37.00,55.00:1206:5",	--"To All The Squirrels I've Loved Before, Deer"
	"A:42.00,69.00:1206:5",	--"To All The Squirrels I've Loved Before, Deer"
	"A:37.00,76.00:1206:17",	--"To All The Squirrels I've Loved Before, Squirrel"
	"A:42.00,52.00:1206:17",	--"To All The Squirrels I've Loved Before, Squirrel"
	"A:63.00,63.00:1206:17",	--"To All The Squirrels I've Loved Before, Squirrel"
	"A:34.00,59.00:1206:4",	--"To All The Squirrels I've Loved Before, Cow"
	"A:37.00,63.00:1206:4",	--"To All The Squirrels I've Loved Before, Cow"
	"A:44.00,53.00:1206:2",	--"To All The Squirrels I've Loved Before, Cat"
	"A:34.00,65.00:1206:8",	--"To All The Squirrels I've Loved Before, Small Frog"
	"A:52.00,64.00:1206:8",	--"To All The Squirrels I've Loved Before, Small Frog"
	"A:37.00,76.00:2556:4",	--"Pest Control, Squirrel"
	"A:42.00,52.00:2556:4",	--"Pest Control, Squirrel"
	"A:63.00,63.00:2556:4")	--"Pest Control, Squirrel"

tappend(points["LochModan:0"],
	--battle pets
	"P:25.00,35.00:379:Level 3-5",	-- Squirrel/Battle Pet
	"P:25.00,35.00:379:Level 3-5",	-- Squirrel/Battle Pet
	"P:34.00,76.00:379:Level 3-5",	-- Squirrel/Battle Pet
	"P:34.00,76.00:379:Level 3-5",	-- Squirrel/Battle Pet
	"P:59.00,62.00:379:Level 3-5",	-- Squirrel/Battle Pet
	"P:59.00,62.00:379:Level 3-5",	-- Squirrel/Battle Pet
	"P:42.00,43.20:387:Level 3-5",	-- Snake/Battle Pet
	"P:45.80,34.20:387:Level 3-5",	-- Snake/Battle Pet
	"P:50.60,17.80:387:Level 3-5",	-- Snake/Battle Pet
	"P:50.80,66.20:387:Level 3-5",	-- Snake/Battle Pet
	"P:26.80,57.40:417:Level 3-5",	-- Rat/Battle Pet
	"P:31.80,75.80:417:Level 3-5",	-- Rat/Battle Pet
	"P:33.00,68.00:417:Level 3-5",	-- Rat/Battle Pet
	"P:35.80,63.60:417:Level 3-5",	-- Rat/Battle Pet
	"P:36.40,20.60:417:Level 3-5",	-- Rat/Battle Pet
	"P:68.80,26.20:417:Level 3-5",	-- Rat/Battle Pet
	"P:72.40,68.80:417:Level 3-5",	-- Rat/Battle Pet
	"P:77.40,17.60:417:Level 3-5",	-- Rat/Battle Pet
	"P:22.20,13.00:437:Level 3-5",	-- Little Black Ram/Battle Pet
	"P:25.40,46.60:437:Level 3-5",	-- Little Black Ram/Battle Pet
	"P:27.20,62.00:437:Level 3-5",	-- Little Black Ram/Battle Pet
	"P:28.00,82.40:437:Level 3-5",	-- Little Black Ram/Battle Pet
	"P:71.00,32.00:437:Level 3-5",	-- Little Black Ram/Battle Pet
	"P:72.20,74.60:437:Level 3-5",	-- Little Black Ram/Battle Pet
	"P:79.60,57.00:437:Level 3-5",	-- Little Black Ram/Battle Pet
	"P:80.20,42.00:437:Level 3-5",	-- Little Black Ram/Battle Pet
	"P:81.40,67.80:437:Level 3-5",	-- Little Black Ram/Battle Pet
	"R:35.60,15.60:45398:Level 14",	-- Grizlak
	"R:40.40,65.00:45369:Level 8-13",	-- Morick Darkbrew
	"R:40.60,61.60:45369:Level 8-13",	-- Morick Darkbrew
	"R:37.40,62.20:45369:Level 8-13",	-- Morick Darkbrew
	"R:57.40,44.60:45402:Level 17",	-- Nix
	"R:51.80,42.20:45402:Level 17",	-- Nix
	"R:53.60,33.20:45402:Level 17",	-- Nix
	"R:58.60,32.60:45402:Level 17",	-- Nix
	"R:72.20,78.00:45399:Level 18",	-- Optimo
	"R:78.00,77.80:45399:Level 18",	-- Optimo
	"R:76.80,83.20:45399:Level 18",	-- Optimo
	--achievements
	"R:69.20,43.20:45380::75.80,43.60:75.60,35.80",	-- Ashtail
	"R:70.60,66.00:1398",	-- Boss Galgosh
	"R:73.20,26.80:14267::67.80,22.60:70.80,20.20",	-- Emogg the Crusher
	"R:50.00,24.00:45404",	-- Geoshaper Maren
	"R:53.00,61.40:2476::55.60,52.40",	-- Gosh-Haldir
	"R:35.60,15.60:45398",	-- Grizlak
	"R:25.60,29.20:1425",	-- Kubb
	"R:78.00,75.60:14268::80.20,64.20:74.40,62.20",	-- Lord Condar
	"R:76.00,73.80:14268::64.60,75.60:70.00,74.20",	-- Lord Condar
	"R:30.00,75.60:1399",	-- Magosh
	"R:39.80,66.20:45369::40.60,61.60:37.40,62.20",	-- Morick Darkbrew
	"R:57.60,42.40:45402::57.60,36.80:53.60,34.00",	-- Nix
	"R:51.20,36.40:45402::54.80,43.60",	-- Nix
	"R:71.80,77.20:45399::78.00,77.80:77.60,82.60",	-- Optimo
	"R:25.60,43.60:45384",	-- Sagepaw
	"R:61.60,74.60:14266",	-- Shanda the Spinner
	"R:45.20,37.40:45401::43.40,49.80:49.60,56.00",	-- Whitefin
	"A:25.00,35.00:1206:17",	--"To All The Squirrels I've Loved Before, Squirrel"
	"A:34.00,76.00:1206:17",	--"To All The Squirrels I've Loved Before, Squirrel"
	"A:59.00,62.00:1206:17",	--"To All The Squirrels I've Loved Before, Squirrel"
	"A:28.00,66.00:1206:13",	--"To All The Squirrels I've Loved Before, Ram"
	"A:25.00,35.00:2556:4",	--"Pest Control, Squirrel"
	"A:34.00,76.00:2556:4",	--"Pest Control, Squirrel"
	"A:59.00,62.00:2556:4",	--"Pest Control, Squirrel"
	"A:33.00,68.00:2556:18",	--"Pest Control, Rat"
	"A:46.00,18.00:779:1",	--"Exploration Eastern Kingdom"
	"A:41.00,11.00:779:2",	--"Exploration Eastern Kingdom"
	"A:70.00,24.00:779:3",	--"Exploration Eastern Kingdom"
	"A:34.00,18.00:779:4",	--"Exploration Eastern Kingdom"
	"A:19.00,17.00:779:5",	--"Exploration Eastern Kingdom"
	"A:80.00,62.00:779:6",	--"Exploration Eastern Kingdom"
	"A:68.00,63.00:779:7",	--"Exploration Eastern Kingdom"
	"A:40.00,67.00:779:8",	--"Exploration Eastern Kingdom"
	"A:34.00,47.00:779:9",	--"Exploration Eastern Kingdom"
	"A:31.00,72.00:779:10",	--"Exploration Eastern Kingdom"
	"A:21.00,72.00:779:11",	--"Exploration Eastern Kingdom"
	"A:44.10,42.70:5478:27")	--"The Limnologist"

tappend(points["Sunwell:0"],
	"A:54.00,50.00:868",	--"Exploration Eastern Kingdom"
	"A:45.80,20.80:5479:12")	--"The Oceanographer"

tappend(points["Redridge:0"],
	"P:20.00,43.20:378:Level 4-5",	-- Rabbit/Battle Pet
	"P:24.40,53.60:378:Level 4-5",	-- Rabbit/Battle Pet
	"P:30.80,40.20:378:Level 4-5",	-- Rabbit/Battle Pet
	"P:32.60,54.80:378:Level 4-5",	-- Rabbit/Battle Pet
	"P:14.60,68.60:391:Level 4-5",	-- Mountain Cottontail/Battle Pet
	"P:25.80,64.60:391:Level 4-5",	-- Mountain Cottontail/Battle Pet
	"P:29.00,35.40:391:Level 4-5",	-- Mountain Cottontail/Battle Pet
	"P:42.60,69.00:391:Level 4-5",	-- Mountain Cottontail/Battle Pet
	"P:43.00,32.40:391:Level 4-5",	-- Mountain Cottontail/Battle Pet
	"P:49.60,34.80:391:Level 4-5",	-- Mountain Cottontail/Battle Pet
	"P:54.60,68.20:391:Level 4-5",	-- Mountain Cottontail/Battle Pet
	"P:65.60,44.80:391:Level 4-5",	-- Mountain Cottontail/Battle Pet
	"P:70.00,64.60:391:Level 4-5",	-- Mountain Cottontail/Battle Pet
	"P:72.80,47.00:391:Level 4-5",	-- Mountain Cottontail/Battle Pet
	"P:16.60,57.60:392:Level 4-5",	-- Redridge Rat/Battle Pet
	"P:23.60,26.60:392:Level 4-5",	-- Redridge Rat/Battle Pet
	"P:32.60,62.60:392:Level 4-5",	-- Redridge Rat/Battle Pet
	"P:37.00,30.40:392:Level 4-5",	-- Redridge Rat/Battle Pet
	"P:51.40,29.80:392:Level 4-5",	-- Redridge Rat/Battle Pet
	"P:65.60,38.00:392:Level 4-5",	-- Redridge Rat/Battle Pet
	"P:70.80,37.40:392:Level 4-5",	-- Redridge Rat/Battle Pet
	"P:74.00,52.00:392:Level 4-5",	-- Redridge Rat/Battle Pet
	"P:20.00,39.00:395:Level 4-5",	-- Fledgling Buzzard/Battle Pet
	"P:23.60,29.40:395:Level 4-5",	-- Fledgling Buzzard/Battle Pet
	"P:25.20,23.40:395:Level 4-5",	-- Fledgling Buzzard/Battle Pet
	"P:27.20,35.20:395:Level 4-5",	-- Fledgling Buzzard/Battle Pet
	"P:36.40,32.00:395:Level 4-5",	-- Fledgling Buzzard/Battle Pet
	"P:21.00,43.00:646:Level 4-5",	-- Chicken/Battle Pet
	"R:55.60,51.60:14273",	-- Boulderheart
	"R:38.60,34.00:616",	-- Chatter
	"R:65.60,66.20:52146::62.00,66.00",	-- Chitter
	"R:34.00,10.60:584",	-- Kazon
	"R:30.80,61.60:14271",	-- Ribchaser
	"R:68.60,35.80:947",	-- Rohh the Silent
	"R:71.00,55.00:14269",	-- Seeker Aqualon
	"R:35.60,60.80:14272",	-- Snarlflare
	"R:37.60,42.60:14270",	-- Squiddic
	"A:21.00,43.00:1206:3",	--"To All The Squirrels I've Loved Before, Chicken"
	"A:20.00,43.00:1206:4",	--"To All The Squirrels I've Loved Before, Cow"
	"A:28.00,44.00:780:1",	--"Exploration Eastern Kingdom"
	"A:35.00,48.00:780:2",	--"Exploration Eastern Kingdom"
	"A:18.00,62.00:780:3",	--"Exploration Eastern Kingdom"
	"A:27.00,69.00:780:4",	--"Exploration Eastern Kingdom"
	"A:33.00,26.00:780:5",	--"Exploration Eastern Kingdom"
	"A:48.00,38.00:780:6",	--"Exploration Eastern Kingdom"
	"A:73.00,55.00:780:7",	--"Exploration Eastern Kingdom"
	"A:64.00,69.00:780:8",	--"Exploration Eastern Kingdom"
	"A:35.00,15.00:780:9",	--"Exploration Eastern Kingdom"
	"A:60.00,50.00:780:10",	--"Exploration Eastern Kingdom"
	"A:68.00,37.00:780:11",	--"Exploration Eastern Kingdom"
	"A:78.00,64.00:780:12",	--"Exploration Eastern Kingdom"
	"A:52.00,54.00:780:13")	--"Exploration Eastern Kingdom"
	
tappend(points["Westfall:0"],
	"P:44.00,18.40:386:Level 3",	-- Prairie Dog/Battle Pet
	"P:34.40,40.80:386:Level 3",	-- Prairie Dog/Battle Pet
	"P:39.20,65.20:386:Level 3",	-- Prairie Dog/Battle Pet
	"P:58.20,69.40:386:Level 3",	-- Prairie Dog/Battle Pet
	"P:62.60,46.20:386:Level 3",	-- Prairie Dog/Battle Pet
	"P:57.80,31.20:386:Level 3",	-- Prairie Dog/Battle Pet
	"P:50.60,53.20:378:Level 3",	-- Rabbit/Battle Pet
	"P:56.80,43.20:378:Level 3",	-- Rabbit/Battle Pet
	"P:58.60,53.20:378:Level 3",	-- Rabbit/Battle Pet
	"P:60.00,11.00:378:Level 3",	-- Rabbit/Battle Pet
	"P:54.80,44.00:379:Level 3",	-- Squirrel/Battle Pet
	"P:55.80,55.20:379:Level 3",	-- Squirrel/Battle Pet
	"P:60.20,11.00:379:Level 3",	-- Squirrel/Battle Pet
	"P:65.20,47.40:379:Level 3",	-- Squirrel/Battle Pet
	"P:33.00,37.00:385:Level 3",	-- Mouse/Battle Pet
	"P:52.00,18.00:385:Level 3",	-- Mouse/Battle Pet
	"P:52.00,72.00:385:Level 3",	-- Mouse/Battle Pet
	"P:31.80,50.00:387:Level 3",	-- Snake/Battle Pet
	"P:36.20,58.00:387:Level 3",	-- Snake/Battle Pet
	"P:45.40,67.20:387:Level 3",	-- Snake/Battle Pet
	"P:45.60,17.60:387:Level 3",	-- Snake/Battle Pet
	"P:49.60,29.40:387:Level 3",	-- Snake/Battle Pet
	"P:56.00,71.60:387:Level 3",	-- Snake/Battle Pet
	"P:58.00,42.20:387:Level 3",	-- Snake/Battle Pet
	"P:63.60,53.40:387:Level 3",	-- Snake/Battle Pet
	"P:35.00,21.00:388:Level 3",	-- Shore Crab/Battle Pet
	"P:55.00,09.00:388:Level 3",	-- Shore Crab/Battle Pet
	"P:33.40,84.60:388:Level 3",	-- Shore Crab/Battle Pet
	"P:26.20,65.60:388:Level 3",	-- Shore Crab/Battle Pet
	"P:26.60,45.20:388:Level 3",	-- Shore Crab/Battle Pet
	"P:39.60,52.40:389:Level 3",	-- Tiny Harvester/Battle Pet
	"P:43.80,36.60:389:Level 3",	-- Tiny Harvester/Battle Pet
	"P:52.80,22.40:389:Level 3",	-- Tiny Harvester/Battle Pet
	"P:54.80,30.40:389:Level 3",	-- Tiny Harvester/Battle Pet
	"P:58.80,17.60:389:Level 3",	-- Tiny Harvester/Battle Pet
	"P:62.60,62.80:389:Level 3",	-- Tiny Harvester/Battle Pet
	"P:49.00,20.00:646:Level 3",	-- Chicken/Battle Pet
	"P:56.00,31.00:646:Level 3",	-- Chicken/Battle Pet
	"R:34.80,85.60:520::28.60,69.00",	-- Brack
	"R:37.60,53.00:573::38.20,49.80",	-- Foe Reaper 4000
	"R:63.80,60.40:573",	-- Foe Reaper 4000
	"R:54.60,32.60:573",	-- Foe Reaper 4000
	"R:44.80,36.60:573",	-- Foe Reaper 4000
	"R:41.80,29.60:572",	-- Leprithus
	"R:46.20,18.60:1424",	-- Master Digger
	"R:65.00,75.60:506",	-- Sergeant Brashclaw
	"R:63.60,73.40:506",	-- Sergeant Brashclaw
	"R:60.20,74.60:506",	-- Sergeant Brashclaw
	"R:56.60,10.60:519::49.40,11.60:53.20,09.10",	-- Slark
	"R:57.20,20.60:462",	-- Vultros
	"R:54.60,24.60:462",	-- Vultros
	"R:49.60,26.60:462",	-- Vultros
	"R:49.60,33.20:462",	-- Vultros
	"R:56.60,35.60:462",	-- Vultros
	"A:49.00,20.00:1206:4",	--"To All The Squirrels I've Loved Before, Chicken"
	"A:56.00,31.00:1206:4",	--"To All The Squirrels I've Loved Before, Chicken"
	"A:35.00,21.00:1206:15",	--"To All The Squirrels I've Loved Before, Shore Crab"
	"A:55.00,09.00:1206:15",	--"To All The Squirrels I've Loved Before, Shore Crab"
	"A:33.00,37.00:2556:7",	--"Pest Control, Mouse"
	"A:52.00,18.00:2556:7",	--"Pest Control, Mouse"
	"A:52.00,72.00:2556:7",	--"Pest Control, Mouse"
	"A:56.00,51.00:802:1",	--"Exploration Eastern Kingdom"
	"A:54.00,32.00:802:2",	--"Exploration Eastern Kingdom"
	"A:51.00,22.00:802:3",	--"Exploration Eastern Kingdom"
	"A:58.00,17.00:802:4",	--"Exploration Eastern Kingdom"
	"A:44.00,25.00:802:5",	--"Exploration Eastern Kingdom"
	"A:44.00,35.00:802:6",	--"Exploration Eastern Kingdom"
	"A:62.00,60.00:802:7",	--"Exploration Eastern Kingdom"
	"A:43.00,69.00:802:8",	--"Exploration Eastern Kingdom"
	"A:37.00,51.00:802:9",	--"Exploration Eastern Kingdom"
	"A:34.00,73.00:802:10",	--"Exploration Eastern Kingdom"
	"A:47.00,78.00:802:11",	--"Exploration Eastern Kingdom"
	"A:37.00,45.00:802:12",	--"Exploration Eastern Kingdom"
	"A:64.00,72.00:802:13")	--"Exploration Eastern Kingdom"
	
tappend(points["Wetlands:0"],
	--battlle pets
	"P:50.00,58.00:379:Level 6",	-- Squirrel/Battle Pet
	"P:51.40,17.20:379:Level 6",	-- Squirrel/Battle Pet
	"P:66.00,52.20:379:Level 6",	-- Squirrel/Battle Pet
	"P:69.00,28.80:393:Level 6",	-- Cockroach/Battle Pet
	"P:07.80,57.60:398:Level 6",	-- Black Rat/Battle Pet
	"P:27.00,25.00:398:Level 6",	-- Black Rat/Battle Pet
	"P:70.40,31.20:398:Level 6",	-- Black Rat/Battle Pet
	"P:15.00,33.00:418:Level 6",	-- Water Snake/Battle Pet
	"P:14.40,38.40:420:Level 6",	-- Toad/Battle Pet
	"P:16.40,47.60:420:Level 6",	-- Toad/Battle Pet
	"P:21.60,30.20:420:Level 6",	-- Toad/Battle Pet
	"P:32.00,21.80:420:Level 6",	-- Toad/Battle Pet
	"P:48.20,32.00:420:Level 6",	-- Toad/Battle Pet
	"P:53.00,32.00:420:Level 6",	-- Toad/Battle Pet
	"P:58.80,50.20:420:Level 6",	-- Toad/Battle Pet
	"P:59.00,65.60:420:Level 6",	-- Toad/Battle Pet
	"P:66.50,69.00:420:Level 6",	-- Toad/Battle Pet
	"P:51.60,30.00:509:Level 6",	-- Tiny Bog Beast/Battle Pet
	"P:52.80,38.20:509:Level 6",	-- Tiny Bog Beast/Battle Pet
	"P:56.20,26.40:509:Level 6",	-- Tiny Bog Beast/Battle Pet
	--rares
	"R:38.60,46.20:2108",	-- Garneg Charskull
	"R:61.60,57.80:44227",	-- Gazz the Loch-Hunter
	"R:31.60,33.00:14425",	-- Gnawbone
	"R:31.60,29.60:14425",	-- Gnawbone
	"R:35.00,27.60:14425",	-- Gnawbone
	"R:46.80,63.60:1112",	-- Leech Widow
	"R:48.00,74.60:2090",	-- Ma'ruk Wyrmscale
	"R:54.40,25.60:14424::53.80,34.60:50.60,30.80",	-- Mirelow
	"R:70.00,29.60:1140",	-- Razormaw Matriarch
	"R:42.80,32.60:44225",	-- Rufus Darkshot
	"R:33.20,51.60:44226",	-- Sarltooth
	"R:44.20,24.80:14433",	-- Sludginn
	"R:13.60,41.60:44224",	-- Two-Toes
	"R:13.60,38.60:44224",	-- Two-Toes
	"R:57.80,07.40:50964:Level 25 - 27",	-- Chops
	--achievements
	"A:53.00,32.00:1206:20",	--"To All The Squirrels I've Loved Before, Toad"
	"A:49.00,69.00:1206:13",	--"To All The Squirrels I've Loved Before, Ram"
	"A:15.00,33.00:2556:2",	--"Pest Control, Water Snake"
	"A:13.00,55.00:841:1",	--"Exploration Eastern Kingdom"
	"A:21.00,49.00:841:2",	--"Exploration Eastern Kingdom"
	"A:19.00,37.00:841:3",	--"Exploration Eastern Kingdom"
	"A:35.00,47.00:841:4",	--"Exploration Eastern Kingdom"
	"A:33.00,31.00:841:5",	--"Exploration Eastern Kingdom"
	"A:34.00,20.00:841:6",	--"Exploration Eastern Kingdom"
	"A:44.00,27.00:841:7",	--"Exploration Eastern Kingdom"
	"A:49.00,17.00:841:8",	--"Exploration Eastern Kingdom"
	"A:47.00,48.00:841:9",	--"Exploration Eastern Kingdom"
	"A:52.00,52.00:841:10",	--"Exploration Eastern Kingdom"
	"A:57.00,40.00:841:11",	--"Exploration Eastern Kingdom"
	"A:58.00,53.00:841:12",	--"Exploration Eastern Kingdom"
	"A:60.00,27.00:841:13",	--"Exploration Eastern Kingdom"
	"A:54.00,70.00:841:14",	--"Exploration Eastern Kingdom"
	"A:57.00,72.00:841:15",	--"Exploration Eastern Kingdom"
	"A:68.00,37.00:841:16")	--"Exploration Eastern Kingdom"
	
tappend(points["Stratholme:1"],
	"A:25.50,71.60:1244:7",	--"Well Read"
	"A:25.80,71.50:1244:10",	--"Well Read"
	"A:25.50,70.60:1244:12",	--"Well Read"
	"A:25.50,70.60:1244:31",	--"Well Read"
	"A:27.80,74.90:1244:34",	--"Well Read"
	"A:30.50,40.70:1244:36",	--"Well Read"
	"A:25.80,71.50:1244:40",	--"Well Read"
	"A:30.00,41.50:1244:13",	--"Well Read"
	"A:25.50,70.60:1244:24")	--"Well Read"

tappend(points["TolBarad:0"],
	"A:41.00,53.00:2556:10",	--"Pest Control, Snake"
	"A:45.00,25.00:5548:2")	--"To All the Squirrels Who Cared for Me"

tappend(points["TolBaradDailyArea:0"],
	"P:67.00,32.00:410:Level 9.",	-- Wharf Rat/Battle Pet

	"A:67.00,32.00:5548:12",	--"To All the Squirrels Who Cared for Me"
	"A:68.00,26.00:5548:10")	--"To All the Squirrels Who Cared for Me"

tappend(points["StormwindCity:0"],
	"R:47.60,58.80:3581::48.80,66.00:45.00,72.00",	-- Sewer Beast
	"R:57.80,77.80:3581::53.80,69.00:56.20,64.80",	-- Sewer Beast
	"R:58.40,42.60:3581::62.60,50.40",	-- Sewer Beast
	"R:70.60,49.40:3581::66.80,53.60",	-- Sewer Beast
	"R:70.00,66.00:3581::67.00,60.80")	-- Sewer Beast
		
tappend(points["AhnQirajTheFallenKingdom:0"],
	--battle pets
	"P:46.60,47.60:511:Level 16",	-- Sidewinder/Battle Pet
	"P:46.80,33.80:511:Level 16",	-- Sidewinder/Battle Pet
	"P:51.00,62.20:511:Level 16",	-- Sidewinder/Battle Pet
	"P:55.00,08.80:511:Level 16",	-- Sidewinder/Battle Pet
	"P:62.40,22.80:511:Level 16",	-- Sidewinder/Battle Pet
	"P:50.40,14.20:512:Level 16",	-- Scarab Hatchling/Battle Pet
	"P:56.00,27.40:512:Level 16",	-- Scarab Hatchling/Battle Pet
	"P:59.80,11.40:512:Level 16",	-- Scarab Hatchling/Battle Pet
	"P:62.60,20.60:512:Level 16",	-- Scarab Hatchling/Battle Pet
	--rares
	"R:60.80,06.60:50747:Level 59")	-- Tix
		
tappend(points["TheHiddenPass:0"],
		--battle pets
	"P:51.80,50.00:708:Level 24",	-- Malayan Quillrat/Battle Pet
	"P:58.80,74.00:708:Level 24",	-- Malayan Quillrat/Battle Pet
	"P:67.20,74.80:708:Level 24",	-- Malayan Quillrat/Battle Pet
	"P:52.80,50.00:709:Level 24",	-- Malayan Quillrat Pup/Battle Pet
	"P:59.80,74.00:709:Level 24",	-- Malayan Quillrat Pup/Battle Pet
	"P:68.20,74.80:709:Level 24",	-- Malayan Quillrat Pup/Battle Pet
	"A:54.70,71.30:7284::Forgotten Lockbox",	--Lost and Found
	"A:74.90,76.50:7284::The Hammer of Folly")	--Lost and Found
		
tappend(points["MoltenFront:0"],
	"A:49.10,48.90:5867",	-- Flawless Victory
	"A:47.10,91.40:5870:1",	-- Fireside Chat
	"A:45.10,82.80:5870:3",	-- Fireside Chat
	"A:42.40,59.90:5870:5",	-- Fireside Chat
	"A:34.40,56.40:5870:6",	-- Fireside Chat
	"A:66.00,64.30:5870:7",	-- Fireside Chat
	"A:45.50,85.80:5870:8",	-- Fireside Chat
	"A:50.48,39.13:5871:1",	-- Master of the Molten Flow
	"A:50.48,39.13:5871:2",	-- Master of the Molten Flow
	"A:50.48,39.13:5871:3",	-- Master of the Molten Flow
	"A:66.10,55.80:5872",	-- King of the Spider-Hill
	"A:50.80,23.00:5873:1",	-- Ready for Raiding II
	"A:50.80,23.00:5873:2",	-- Ready for Raiding II
	"A:50.80,23.00:5873:3",	-- Ready for Raiding II
	"A:50.80,23.00:5873:4",	-- Ready for Raiding II
	"A:50.80,23.00:5873:5")	-- Ready for Raiding II
	
tappend(points["DarkmoonFaireIsland:0"],
	--battle pets
	"P:35.00,73.40:1062:Level 10",	-- Darkmoon Glowfly
	"P:62.60,77.60:1062:Level 10",	-- Darkmoon Glowfly
	"P:59.60,65.80:1062:Level 10",	-- Darkmoon Glowfly
	"P:71.80,68.60:1062:Level 10",	-- Darkmoon Glowfly
	"P:61.60,43.60:1062:Level 10",	-- Darkmoon Glowfly
	"P:53.60,23.00:1062:Level 10",	-- Darkmoon Glowfly
	"P:34.80,36.40:1062:Level 10",	-- Darkmoon Glowfly
	"P:46.00,51.60:1062:Level 10",	-- Darkmoon Glowfly
	"P:35.00,73.40:1068:Level 1-10",	-- Crow/Battle Pet
	"P:70.60,78.60:1068:Level 1-10")	-- Crow/Battle Pet

tappend(points["IsleoftheThunderKing:0"],
	--battle pets
	"P:32.60,79.60:1181:Level 25",	-- Elder Python/Battle Pet
	"P:41.60,64.60:1181:Level 25",	-- Elder Python/Battle Pet
	"P:38.20,56.60:1181:Level 25",	-- Elder Python/Battle Pet
	"P:37.00,45.80:1181:Level 25",	-- Elder Python/Battle Pet
	"P:50.00,42.60:1181:Level 25",	-- Elder Python/Battle Pet
	"P:61.80,43.00:1181:Level 25",	-- Elder Python/Battle Pet
	"P:58.60,53.20:1181:Level 25",	-- Elder Python/Battle Pet
	"P:56.80,63.20:1181:Level 25",	-- Elder Python/Battle Pet
	"P:55.20,74.20:1181:Level 25",	-- Elder Python/Battle Pet
	"P:44.60,68.60:1181:Level 25",	-- Elder Python/Battle Pet
	"P:36.80,81.20:1182:Level 25",	-- Swamp Croaker/Battle Pet
	"P:33.80,69.40:1182:Level 25",	-- Swamp Croaker/Battle Pet
	"P:43.60,69.20:1182:Level 25",	-- Swamp Croaker/Battle Pet
	"P:38.40,59.60:1182:Level 25",	-- Swamp Croaker/Battle Pet
	"P:38.80,47.40:1182:Level 25",	-- Swamp Croaker/Battle Pet
	"P:51.60,34.60:1182:Level 25",	-- Swamp Croaker/Battle Pet
	"P:50.60,53.60:1182:Level 25",	-- Swamp Croaker/Battle Pet
	"P:60.60,45.00:1182:Level 25",	-- Swamp Croaker/Battle Pet
	"P:55.60,58.00:1182:Level 25",	-- Swamp Croaker/Battle Pet
	"P:54.60,71.00:1182:Level 25",	-- Swamp Croaker/Battle Pet
	"P:49.80,67.00:1175:Level 25",	-- Thundertail Flapper
	"P:55.20,51.80:1175:Level 25",	-- Thundertail Flapper
	"P:52.60,42.80:1175:Level 25",	-- Thundertail Flapper
	"P:55.60,40.60:1175:Level 25",	-- Thundertail Flapper
	"P:41.20,47.60:1175:Level 25",	-- Thundertail Flapper
	"P:40.00,59.20:1179:Level 25",	-- Electrified Razortooth
	--achievements
	"A:36.40,70.30:8049:3",	-- Shadows of the Loa
	"A:35.20,70.10:8049:1",	-- Coming of Age
	"A:34.90,65.50:8050:3",	-- Unity at a Price
	"A:47.00,59.90:8050:2",	-- The Sacred Mount
	"A:34.90,54.90:8051:1",	-- Agents of Order
	"A:40.20,40.80:8050:1",	-- Lei Shen
	"A:60.60,68.70:8050:4",	-- The Pandaren Problem
	"A:52.70,41.50:8049:4",	-- The Dark Prophet Zul
	"A:49.90,20.30:8051:3",	-- The Curse and the Silence
	"A:62.50,37.70:8051:4",	-- Age of a Hundred Kings
	"A:68.80,45.70:8049:2",	-- For Council and King
	"A:59.30,26.50:8051:2",	-- Shadow, Storm, and Stone
	"A:28.80,80.80:8104",	-- Thunder Plunder
	"A:33.30,76.30:8104",	-- Thunder Plunder
	"A:33.40,57.50:8104",	-- Thunder Plunder
	"A:33.80,60.30:8104",	-- Thunder Plunder
	"A:35.60,63.80:8104",	-- Thunder Plunder
	"A:37.00,60.70:8104",	-- Thunder Plunder
	"A:39.60,64.70:8104",	-- Thunder Plunder
	"A:40.80,74.80:8104",	-- Thunder Plunder
	"A:43.80,82.80:8104",	-- Thunder Plunder
	"A:44.30,67.40:8104",	-- Thunder Plunder
	"A:46.30,57.40:8104",	-- Thunder Plunder
	"A:47.70,25.80:8104",	-- Thunder Plunder
	"A:48.00,29.20:8104",	-- Thunder Plunder
	"A:48.80,42.90:8104",	-- Thunder Plunder
	"A:49.00,27.20:8104",	-- Thunder Plunder
	"A:50.20,44.20:8104",	-- Thunder Plunder
	"A:50.30,27.20:8104",	-- Thunder Plunder
	"A:51.30,74.90:8104",	-- Thunder Plunder
	"A:51.50,89.60:8104",	-- Thunder Plunder
	"A:51.60,73.80:8104",	-- Thunder Plunder
	"A:52.70,45.40:8104",	-- Thunder Plunder
	"A:52.90,77.30:8104",	-- Thunder Plunder
	"A:53.20,24.50:8104",	-- Thunder Plunder
	"A:54.20,53.70:8104",	-- Thunder Plunder
	"A:55.10,49.20:8104",	-- Thunder Plunder
	"A:55.40,53.70:8104",	-- Thunder Plunder
	"A:56.80,45.60:8104",	-- Thunder Plunder
	"A:57.50,48.50:8104",	-- Thunder Plunder
	"A:59.20,56.90:8104",	-- Thunder Plunder
	"A:59.20,56.90:8104",	-- Thunder Plunder
	"A:59.80,47.00:8104",	-- Thunder Plunder
	"A:63.50,39.30:8104",	-- Thunder Plunder
	"A:63.80,48.20:8104",	-- Thunder Plunder
	"A:66.10,40.90:8104",	-- Thunder Plunder
	"A:47.25,80.60:8107",	-- Ready for RAAAAIIIIDDD?!?ing
	"A:50.40,83.55:8107",	-- Ready for RAAAAIIIIDDD?!?ing
	"A:51.95,78.85:8107",	-- Ready for RAAAAIIIIDDD?!?ing
	"A:54.45,81.30:8107",	-- Ready for RAAAAIIIIDDD?!?ing
	"A:51.60,78.60:8108:1",	-- When in Ihgaluk, Do as the Skumblade Do
	"A:51.60,78.60:8108:2",	-- When in Ihgaluk, Do as the Skumblade Do
	"A:51.60,78.60:8108:3",	-- When in Ihgaluk, Do as the Skumblade Do
	"A:51.60,78.60:8108:4",	-- When in Ihgaluk, Do as the Skumblade Do
	"A:38.60,55.00:8110:3",	-- These Mogu Have Gotta Go-gu
	"A:38.80,59.20:8110:1",	-- These Mogu Have Gotta Go-gu
	"A:38.60,58.20:8110:2",	-- These Mogu Have Gotta Go-gu
	"A:29.60,78.40:8112",	-- Blue Response
	"A:33.60,79.40:8112",	-- Blue Response
	"A:62.00,40.10:8114",	-- Platform Hero
	"A:54.60,31.80:8115",	-- Speed Metal
	"A:55.60,30.60:8115",	-- Speed Metal
	"A:55.60,38.20:8116",	-- You Made Me Bleed My Own Blood
	"A:29.60,80.00:8118",	-- Boop
	"A:30.60,71.40:8118",	-- Boop
	"A:37.40,83.20:8118",	-- Boop
	"A:40.80,74.00:8118",	-- Boop
	"A:60.60,54.00:8119:1",	-- Our Powers Combined
	"A:60.60,54.00:8119:2",	-- Our Powers Combined
	"A:51.80,36.80:8120",	-- Direhorn in a China Shop
	--rares
	"R:49.50,90.10:50358",	-- Haywire Sunweaver Construct
	"R:35.10,62.50:69664",	-- Mumta
	"R:35.00,82.00:69996",	-- Ku'lai the Skyclaw
	"R:51.30,71.20:69997",	-- Progenitus
	"R:53.70,53.10:69998",	-- Goda
	"R:61.50,49.60:69999",	-- God-Hulk Ramuk
	"R:44.70,29.71:70000",	-- Al'tabim the All-Seeing
	"R:49.40,25.30:70001",	-- Backbreaker Uru
	"R:54.40,35.60:70002",	-- Lu-Ban
	"R:59.30,35.70:70003",	-- Molthor
	"R:39.40,81.60:70530",	-- Ra'sha
	"R:68.90,39.30:70080:Requires 3x[Shan'ze Ritual Stone]. Primal Ritual Stone",	-- Windweaver Akil'amon
	"R:49.90,20.70:69347:Requires 3x[Shan'ze Ritual Stone]. Primal Ritual Stone",	-- Incomplete Drakkari Colossus
	"R:57.90,79.20:69396:Requires 3x[Shan'ze Ritual Stone]. Primal Ritual Stone",	-- Cera
	"R:33.60,45.80:69396:Requires 3x[Shan'ze Ritual Stone]. Primal Ritual Stone",	-- Cera
	"R:48.00,26.00:69749:Requires 3x[Shan'ze Ritual Stone]. Lightning Ritual Stone",	-- Qi'nor
	"R:53.30,47.90:69767:Requires 3x[Shan'ze Ritual Stone]. Lightning Ritual Stone",	-- Ancient Mogu Guardian
	"R:44.50,61.00:69339:Requires 3x[Shan'ze Ritual Stone]. Lightning Ritual Stone",	-- Electromancer Ju'le
	"R:30.70,58.60:69633:Requires 3x[Shan'ze Ritual Stone]. Spirit Ritual Stone",	-- Kor'dok
	"R:35.70,63.80:69471:Requires 3x[Shan'ze Ritual Stone]. Spirit Ritual Stone",	-- Spirit of Warlord Teng
	"R:55.20,87.70:69341:Requires 3x[Shan'ze Ritual Stone]. Spirit Ritual Stone")	-- Echo of Kros
	
tappend(points["TimelessIsle:0"],	--achievements
	"A:16.65,62.61:8725:1",	--Giant Clam/Eyes On The Ground
	"A:47.83,87.89:8725:1",	--Giant Clam/Eyes On The Ground
	"A:18.81,20.25:8725:1",	--Giant Clam/Eyes On The Ground
	"A:70.30,23.30:8725:2",	--Glinting Sand/Eyes On The Ground
	"A:62.60,09.90:8725:2",	--Glinting Sand/Eyes On The Ground
	"A:47.40,11.40:8725:2",	--Glinting Sand/Eyes On The Ground
	"A:34.50,17.00:8725:2",	--Glinting Sand/Eyes On The Ground
	"A:27.50,11.00:8725:2",	--Glinting Sand/Eyes On The Ground
	"A:28.70,28.10:8725:2",	--Glinting Sand/Eyes On The Ground
	"A:24.30,33.00:8725:2",	--Glinting Sand/Eyes On The Ground
	"A:21.10,44.80:8725:2",	--Glinting Sand/Eyes On The Ground
	"A:24.40,56.10:8725:2",	--Glinting Sand/Eyes On The Ground
	"A:21.30,68.50:8725:2",	--Glinting Sand/Eyes On The Ground
	"A:27.30,73.30:8725:2",	--Glinting Sand/Eyes On The Ground
	"A:43.60,84.80:8725:2",	--Glinting Sand/Eyes On The Ground
	"A:63.70,85.80:8725:2",	--Glinting Sand/Eyes On The Ground
	"A:73.70,70.40:8725:2",	--Glinting Sand/Eyes On The Ground
	"A:43.20,68.40:8725:3",	--Crane Nest/Eyes On The Ground
	"A:37.40,39.00:8725:3",	--Crane Nest/Eyes On The Ground
	"A:32.60,53.00:8725:3",	--Crane Nest/Eyes On The Ground
	"A:33.60,66.65:8725:3",	--Crane Nest/Eyes On The Ground
	"A:43.50,40.70:8725:4",	--Eerie Crystal/Eyes On The Ground
	"A:55.00,78.00:8725:5",	--Ordon Supplies/Eyes On The Ground
	"A:59.00,41.60:8725:6",	--Firestorm Egg/Eyes On The Ground
	"A:63.80,32.60:8725:6",	--Firestorm Egg/Eyes On The Ground
	"A:74.80,37.20:8725:6",	--Firestorm Egg/Eyes On The Ground
	"A:59.40,25.80:8725:6",	--Firestorm Egg/Eyes On The Ground
	"A:72.20,59.60:8725:6",	--Firestorm Egg/Eyes On The Ground
	"A:67.60,63.20:8725:6",	--Firestorm Egg/Eyes On The Ground
	"A:52.70,28.70:8725:7",	--Fiery Altar of Ordos/Eyes On The Ground
	"A:22.90,29.30:8724:",	--Time-Lost Shrines/Pilgrimage
	"A:30.20,45.60:8724:",	--Time-Lost Shrines/Pilgrimage
	"A:35.00,29.40:8724:",	--Time-Lost Shrines/Pilgrimage
	"A:43.50,55.80:8724:",	--Time-Lost Shrines/Pilgrimage
	"A:58.10,46.40:8724:",	--Time-Lost Shrines/Pilgrimage
	"A:66.20,72.20:8724:",	--Time-Lost Shrines/Pilgrimage
	"A:49.80,70.20:8724:",	--Time-Lost Shrines/Pilgrimage
	"A:28.10,71.90:8724:",	--Time-Lost Shrines/Pilgrimage
	"A:30.70,62.50:8724:",	--Time-Lost Shrines/Pilgrimage
	"A:52.90,60.80:8724:",	--Time-Lost Shrines/Pilgrimage
	"A:37.60,74.30:8724:",	--Time-Lost Shrines/Pilgrimage
	"A:37.00,83.80:8714:1",	--Emerald Gander/Timeless Champion
	"A:23.90,51.70:8714:3",	--Great Turtle Furyshell/Timeless Champion
	"A:47.70,88.70:8714:5",	--Zesqua/Timeless Champion
	"A:34.10,85.50:8714:7",	--Karkanos/Timeless Champion
	"A:59.60,48.80:8714:9",	--Spelurk/Timeless Champion
	"A:60.50,87.60:8714:11",	--Rattleskew/Timeless Champion
	"A:67.30,44.20:8714:13",	--Leafmender/Timeless Champion
	"A:64.50,27.40:8714:15",	--Garnia/Timeless Champion
	"A:51.90,87.00:8714:17",	--Monstrous Spineclaw/Timeless Champion
	"A:71.40,83.10:8714:19",	--Stinkbraid/Timeless Champion
	"A:57.60,76.90:8714:21",	--Watcher Osu/Timeless Champion
	"A:66.20,58.90:8714:23",	--Champion of the Black Flame/Timeless Champion
	"A:44.40,25.70:8714:25",	--Urdur the Cauterizer/Timeless Champion
	"A:68.60,58.60:8714:27",	--Huolon/Timeless Champion
	"A:18.20,34.90:8714:29",	--Evermaw/Timeless Champion
	"A:50.20,22.40:8714:31",	--Archiereus of Flame/Timeless Champion
	"A:33.00,46.80:8714:2",	--Ironfur Steelhorn/Timeless Champion
	"A:42.20,78.70:8714:4",	--Gu'chi the Swarmbringer/Timeless Champion
	"A:37.30,77.60:8714:6",	--Zhu-Gon the Sour/Timeless Champion
	"A:25.20,36.10:8714:8",	--Chelon/Timeless Champion
	"A:43.90,70.30:8714:10",	--Cranegnasher/Timeless Champion
	"A:44.00,41.30:8714:12",	--Spirit of Jadefire/Timeless Champion
	"A:66.60,65.80:8714:14",	--Bufo/Timeless Champion
	"A:54.10,42.40:8714:16",	--Tsavo'ka/Timeless Champion
	"A:50.60,47.20:8714:18",	--Imperial Python/Timeless Champion
	"A:43.00,41.30:8714:20",	--Rock Moss/Timeless Champion
	"A:53.30,82.90:8714:22",	--Jakur of Ordon/Timeless Champion
	"A:54.00,52.50:8714:24",	--Cinderfall/Timeless Champion
	"A:56.10,38.20:8714:26",	--Flintlord Gairan/Timeless Champion
	"A:61.60,64.00:8714:28",	--Golganarr/Timeless Champion
	"A:26.60,27.10:8714:30:Requires [Mist-Filled Spirit Lantern] From Evermaw",	--Dread Ship Vazuvius/Timeless Champion
	"A:36.70,34.10:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:25.50,27.20:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:27.40,39.10:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:30.70,36.50:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:22.40,35.40:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:22.10,49.30:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:24.80,53.00:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:25.70,45.80:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:22.30,68.10:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:26.80,68.70:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:31.00,76.30:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:35.30,76.40:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:38.70,71.60:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:39.80,79.50:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:34.80,84.20:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:43.60,84.10:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:47.00,53.70:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:46.70,46.70:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:51.20,45.70:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:55.50,44.30:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:58.00,50.70:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:65.70,47.80:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:63.80,59.20:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:64.90,75.60:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:60.20,66.00:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:49.70,65.70:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:53.10,70.80:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:52.70,62.70:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:61.70,88.50:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:44.20,65.30:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:26.00,61.40:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:24.60,38.50:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:29.70,31.80:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:29.70,31.80:8729:1:Lootable Once per Character",	--Moss Covered Chest/Treasure, Treasure Everywhere
	"A:28.20,35.20:8729:4:Lootable Once per Character",	--Sturdy Chest/Treasure, Treasure Everywhere
	"A:26.80,64.90:8729:4:Lootable Once per Character",	--Sturdy Chest/Treasure, Treasure Everywhere
	"A:64.60,70.40:8729:4:Lootable Once per Character",	--Sturdy Chest/Treasure, Treasure Everywhere
	"A:59.20,49.50:8729:4:Lootable Once per Character",	--Sturdy Chest/Treasure, Treasure Everywhere
	"A:46.70,32.30:8729:2:Lootable Once per Character",	--Skull-Covered Chest/Treasure, Treasure Everywhere
	"A:69.50,32.90:8729:5:Lootable Once per Character",	--Smouldering Chest/Treasure, Treasure Everywhere
	"A:54.00,78.20:8729:5:Lootable Once per Character",	--Smouldering Chest/Treasure, Treasure Everywhere
	"A:47.60,27.60:8729:3:Lootable Once per Week",	--Blazing Chest/Treasure, Treasure Everywhere
	"A:39.70,93.40:8727:1:Lootable Once per Week. Need [Barnacle Encrusted Key] from Cursed Hozen Swabby",	--Sunken Treasure/Where There's Pirates, There's Booty
	"A:22.80,58.90:8727:2:Lootable Once per Week",	--Blackguard's Jetsam/Where There's Pirates, There's Booty
	"A:70.60,80.90:8727:3:Lootable Once per Week",	--Gleaming Treasure Satchel/Where There's Pirates, There's Booty
	"A:49.00,69.00:8726:1:Lootable Once per Week",	--Gleaming Treasure Chest/Extreme Treasure Hunter
	"A:58.50,60.20:8726:2:Lootable Once per Week",	--Mist-Covered Treasure Chest/Extreme Treasure Hunter
	"A:53.90,47.10:8726:3",	--Rope-Bound Treasure Chest/Extreme Treasure Hunter
	"A:32.40,76.00:8712:1",	--Spotted Swarmer/Killing Time
	"A:42.40,78.60:8712:1",	--Spotted Swarmer/Killing Time
	"A:34.70,81.70:8712:2",	--Windfeather Chick/Killing Time
	"A:30.70,63.70:8712:2",	--Windfeather Chick/Killing Time
	"A:30.70,38.30:8712:2",	--Windfeather Chick/Killing Time
	"A:40.10,42.50:8712:2",	--Windfeather Chick/Killing Time
	"A:45.00,62.60:8712:2",	--Windfeather Chick/Killing Time
	"A:24.00,68.80:8712:3",	--Great Turtle Hatchling/Killing Time
	"A:25.40,56.00:8712:3",	--Great Turtle Hatchling/Killing Time
	"A:21.60,43.80:8712:3",	--Great Turtle Hatchling/Killing Time
	"A:29.00,39.80:8712:4",	--Ironfur Herdling/Killing Time
	"A:28.80,57.20:8712:4",	--Ironfur Herdling/Killing Time
	"A:35.00,69.00:8712:4",	--Ironfur Herdling/Killing Time
	"A:46.20,61.40:8712:4",	--Ironfur Herdling/Killing Time
	"A:45.00,45.60:8712:4",	--Ironfur Herdling/Killing Time
	"A:34.80,81.80:8712:5",	--Windfeather Nestkeeper/Killing Time
	"A:30.80,63.80:8712:5",	--Windfeather Nestkeeper/Killing Time
	"A:30.80,38.20:8712:5",	--Windfeather Nestkeeper/Killing Time
	"A:40.20,42.00:8712:5",	--Windfeather Nestkeeper/Killing Time
	"A:45.20,62.80:8712:5",	--Windfeather Nestkeeper/Killing Time
	"A:28.00,38.80:8712:6",	--Ironfur Grazer/Killing Time
	"A:27.80,58.20:8712:6",	--Ironfur Grazer/Killing Time
	"A:36.00,67.00:8712:6",	--Ironfur Grazer/Killing Time
	"A:47.20,64.40:8712:6",	--Ironfur Grazer/Killing Time
	"A:44.00,46.60:8712:6",	--Ironfur Grazer/Killing Time
	"A:38.20,77.40:8712:7",	--Spectral Brewmaster/Killing Time
	"A:40.00,73.20:8712:8",	--Spectral Mistweaver/Killing Time
	"A:36.40,72.80:8712:9",	--Spectral Windwalker/Killing Time
	"A:50.60,69.00:8712:10",	--Crag Stalker/Killing Time
	"A:50.80,49.40:8712:10",	--Crag Stalker/Killing Time
	"A:57.60,51.20:8712:10",	--Crag Stalker/Killing Time
	"A:64.00,64.00:8712:10",	--Crag Stalker/Killing Time
	"A:66.50,56.80:8712:11",	--Ashleaf Sprite/Killing Time
	"A:70.20,54.80:8712:11",	--Ashleaf Sprite/Killing Time
	"A:75.20,44.80:8712:11",	--Ashleaf Sprite/Killing Time
	"A:68.40,44.20:8712:11",	--Ashleaf Sprite/Killing Time
	"A:49.80,79.40:8712:12",	--Ordon Candlekeeper/Killing Time
	"A:58.00,78.60:8712:12",	--Ordon Candlekeeper/Killing Time
	"A:46.20,34.60:8712:13",	--Foreboding Flame/Killing Time
	"A:25.80,28.40:8712:14",	--Jademist Dancer/Killing Time
	"A:42.40,67.40:8712:15",	--Brilliant Windfeather/Killing Time
	"A:43.80,52.40:8712:15",	--Brilliant Windfeather/Killing Time
	"A:40.60,43.40:8712:15",	--Brilliant Windfeather/Killing Time
	"A:31.00,41.60:8712:15",	--Brilliant Windfeather/Killing Time
	"A:30.60,59.60:8712:15",	--Brilliant Windfeather/Killing Time
	"A:24.00,63.20:8712:16",	--Great Turtle/Killing Time
	"A:25.00,50.40:8712:16",	--Great Turtle/Killing Time
	"A:23.60,37.40:8712:16",	--Great Turtle/Killing Time
	"A:37.00,72.20:8712:17",	--Ironfur Great Bull/Killing Time
	"A:29.40,44.20:8712:17",	--Ironfur Great Bull/Killing Time
	"A:36.20,43.60:8712:17",	--Ironfur Great Bull/Killing Time
	"A:46.80,49.60:8712:17",	--Ironfur Great Bull/Killing Time
	"A:44.40,32.80:8712:18",	--Damp Shambler/Killing Time
	"A:53.00,60.80:8712:19",	--Primal Stalker/Killing Time
	"A:57.80,48.80:8712:19",	--Primal Stalker/Killing Time
	"A:63.20,58.40:8712:19",	--Primal Stalker/Killing Time
	"A:59.80,71.60:8712:19",	--Primal Stalker/Killing Time
	"A:70.20,68.40:8712:20",	--Ancient Spineclaw/Killing Time
	"A:52.20,87.00:8712:20",	--Ancient Spineclaw/Killing Time
	"A:37.40,84.60:8712:20",	--Ancient Spineclaw/Killing Time
	"A:25.20,74.60:8712:20",	--Ancient Spineclaw/Killing Time
	"A:23.00,46.40:8712:20",	--Ancient Spineclaw/Killing Time
	"A:23.40,33.40:8712:20",	--Ancient Spineclaw/Killing Time
	"A:63.20,80.60:8712:21",	--Gulp Frog/Killing Time
	"A:66.50,67.40:8712:21",	--Gulp Frog/Killing Time
	"A:29.40,74.40:8712:22",	--Death Adder/Killing Time
	"A:45.00,64.80:8712:22",	--Death Adder/Killing Time
	"A:53.20,57.20:8712:22",	--Death Adder/Killing Time
	"A:50.60,64.80:8712:22",	--Death Adder/Killing Time
	"A:28.80,45.60:8712:22",	--Death Adder/Killing Time
	"A:54.00,81.40:8712:23",	--Ordon Fire-Watcher/Killing Time
	"A:54.00,81.00:8712:24",	--Ordon Oathguard/Killing Time
	"A:63.60,64.60:8712:24",	--Ordon Oathguard/Killing Time
	"A:61.20,68.60:8712:25",	--Burning Berserker/Killing Time
	"A:68.80,55.20:8712:25",	--Burning Berserker/Killing Time
	"A:71.20,44.40:8712:25",	--Burning Berserker/Killing Time
	"A:64.40,40.40:8712:25",	--Burning Berserker/Killing Time
	"A:69.40,53.20:8712:25",	--Burning Berserker/Killing Time
	"A:32.80,35.00:8712:26",	--Molten Guardian/Killing Time
	"A:52.80,38.40:8712:26",	--Molten Guardian/Killing Time
	"A:56.00,57.60:8712:26",	--Molten Guardian/Killing Time
	"A:67.40,58.00:8712:27",	--Crimsonscale Firestorm/Killing Time
	"A:73.20,41.40:8712:27",	--Crimsonscale Firestorm/Killing Time
	"A:60.20,50.60:8712:27",	--Crimsonscale Firestorm/Killing Time
	"A:18.40,30.60:8712:28",	--Elder Great Turtle/Killing Time
	"A:17.20,48.60:8712:28",	--Elder Great Turtle/Killing Time
	"A:18.60,64.40:8712:28",	--Elder Great Turtle/Killing Time
	"A:27.20,70.80:8712:28",	--Elder Great Turtle/Killing Time
	"A:56.00,48.00:8712:29",	--Eroded Cliffdweller/Killing Time
	"A:62.40,56.60:8712:29",	--Eroded Cliffdweller/Killing Time
	"A:57.80,66.20:8712:29",	--Eroded Cliffdweller/Killing Time
	"A:36.20,37.80:8712:30",	--Blazebound Chanter/Killing Time
	"A:48.80,37.60:8712:30",	--Blazebound Chanter/Killing Time
	"A:68.40,35.00:8712:30",	--Blazebound Chanter/Killing Time
	"A:58.20,57.40:8712:30",	--Blazebound Chanter/Killing Time
	"A:35.80,33.00:8712:31",	--Eternal Kilnmaster/Killing Time
	"A:42.40,32.40:8712:31",	--Eternal Kilnmaster/Killing Time
	"A:69.60,34.80:8712:31",	--Eternal Kilnmaster/Killing Time
	"A:57.60,60.40:8712:31",	--Eternal Kilnmaster/Killing Time
	"A:34.20,33.40:8712:32",	--High Priest of Ordos/Killing Time
	"A:39.20,54.80:8712:32",	--High Priest of Ordos/Killing Time
	"A:49.40,69.40:8730::Random Drop [Rolo's Riddle] required to start achievement chain.",	--Rolo's Riddle
	"A:34.60,26.70:8730::Random Drop [Rolo's Riddle] required to start achievement chain.",	--Rolo's Riddle
	"A:66.00,23.20:8730::Random Drop [Rolo's Riddle] required to start achievement chain.")	--Rolo's Riddle

tappend(points["TimelessIsle:0"],	--Gonna Need a Bigger Bag
	"A:39.70,93.40:8728:1:Sunken Treasure",	--Cursed Swabby Helmet
	"A:55.00,77.80:8728:2:Any Yaungol",	--Warped Warning Sign
	"A:67.40,42.90:8728:2:Any Yaungol",	--Warped Warning Sign
	"A:46.70,26.70:8728:2:Any Yaungol",	--Warped Warning Sign
	"A:34.70,31.40:8728:2:Any Yaungol",	--Warped Warning Sign
	"A:34.10,85.50:8728:3:Karkanos",	--Giant Purse of Timeless Coins
	"A:43.50,40.70:8728:4:Eerie Crystal",	--Crystal of Insanity
	"A:55.00,77.80:8728:5:Any Yaungol",	--Battle Horn
	"A:67.40,42.90:8728:5:Any Yaungol",	--Battle Horn
	"A:46.70,26.70:8728:5:Any Yaungol",	--Battle Horn
	"A:34.70,31.40:8728:5:Any Yaungol",	--Battle Horn
	"A:50.20,22.40:8728:6:Archiereus of Flame",	--Elixir of Ancient Knowledge
	"A:53.80,77.60:8728:7:Any Elite Yaungol",	--Forager's Gloves
	"A:62.60,42.70:8728:7:Any Elite Yaungol",	--Forager's Gloves
	"A:68.00,32.60:8728:7:Any Elite Yaungol",	--Forager's Gloves
	"A:33.50,28.50:8728:7:Any Elite Yaungol",	--Forager's Gloves
	"A:53.80,77.60:8728:8:Any Elite Yaungol",	--Big Bag of Herbs
	"A:62.60,42.70:8728:8:Any Elite Yaungol",	--Big Bag of Herbs
	"A:68.00,32.60:8728:8:Any Elite Yaungol",	--Big Bag of Herbs
	"A:33.50,28.50:8728:8:Any Elite Yaungol",	--Big Bag of Herbs
	"A:63.20,80.60:8728:9:Gulp Frog",	--Overgrown Lilypad
	"A:70.20,68.40:8728:10:Ancient Spineclaw",	--Hardened Shell
	"A:36.40,72.80:8728:11:Spectral Windwalker",	--Bubbling Pi'jiu Brew
	"A:38.20,77.40:8728:12:Spectral Brewmaster",	--Thick Pi'jiu Brew
	"A:40.00,73.20:8728:13:Spectral Mistweaver",	--Misty Pi'jiu Brew
	"A:53.30,82.90:8728:14:Jakur of Ordon",	--Warning Sign
	"A:34.20,33.40:8728:15:High Priest of Ordos",	--Ash-Covered Horn
	"A:57.60,58.20:8728:16:Molten Guardian",	--Cauterizing Core
	"A:33.40,31.20:8728:16:Molten Guardian",	--Cauterizing Core
	"A:60.50,87.60:8728:17:Rattleskew",	--Captain Zvezdan's Lost Leg
	"A:59.60,48.80:8728:18:Spelurk",	--Cursed Talisman
	"A:43.00,41.30:8728:19:Rock Moss",	--Golden Moss
	"A:43.00,41.30:8728:20:Rock Moss / Damp Shambler",	--Strange Glowing Mushroom
	"A:35.80,33.00:8728:21:Eternal Kilnmaster",	--Eternal Kiln
	"A:44.00,41.30:8728:22:Spirit of Jadefire",	--Jadefire Spirit
	"A:44.40,25.70:8728:23:Urdur the Cauterizer",	--Sunset Stone
	"A:57.60,76.90:8728:24:Watcher Osu",	--Ashen Stone
	"A:36.20,37.80:8728:25:Blazebound Chanter",	--Blizzard Stone
	"A:47.70,88.70:8728:26:Zesqua",	--Rain Stone
	"A:66.20,58.90:8728:27:Champion of the Black Flame",	--Blackflame Daggers
	"A:54.00,52.50:8728:28:Cinderfall",	--Falling Flame
	"A:56.10,38.20:8728:29:Flintlord Gairan",	--Ordon Death Chime
	"A:52.80,78.60:8728:30:Any Elite Yaungol",	--Blazing Sigil of Ordos
	"A:61.60,43.70:8728:30:Any Elite Yaungol",	--Blazing Sigil of Ordos
	"A:67.00,31.60:8728:30:Any Elite Yaungol",	--Blazing Sigil of Ordos
	"A:31.50,29.50:8728:30:Any Elite Yaungol",	--Blazing Sigil of Ordos
	"A:57.60,76.90:8728:31:Watcher Osu",	--Ordon Ceremonial Robes
	"A:55.80,79.60:8728:31:Ordon Fire-Watcher",	--Ordon Ceremonial Robes
	"A:26.60,27.10:8728:32:Dread Ship Vazuvius",	--Rime of the Time-Lost Mariner
	"A:70.60,64.20:8728:33:Ancient Spineclaw / Monstrous Spineclaw",	--Scuttler's Shell
	"A:39.20,84.80:8728:33:Ancient Spineclaw / Monstrous Spineclaw",	--Scuttler's Shell
	"A:27.20,73.20:8728:33:Ancient Spineclaw / Monstrous Spineclaw",	--Scuttler's Shell
	"A:21.80,49.80:8728:33:Ancient Spineclaw / Monstrous Spineclaw",	--Scuttler's Shell
	"A:25.40,30.00:8728:33:Ancient Spineclaw / Monstrous Spineclaw",	--Scuttler's Shell
	"A:50.60,47.20:8728:34:Imperial Python",	--Partially-Digested Meal
	"A:42.20,78.70:8728:35:Gu'chi the Swarmbringer",	--Swarmling of Gu'chi
	"A:42.20,78.70:8728:36:Gu'chi the Swarmbringer",	--Sticky Silkworm Goo
	"A:34.20,77.60:8728:36:Spotted Swarmer",	--Sticky Silkworm Goo
	"A:42.40,78.60:8728:36:Spotted Swarmer",	--Sticky Silkworm Goo
	"A:67.30,44.20:8728:37:Leafmender",	--Faintly-Glowing Herb
	"A:66.50,56.80:8728:37:Ashleaf Sprite",	--Faintly-Glowing Herb
	"A:70.20,54.80:8728:37:Ashleaf Sprite",	--Faintly-Glowing Herb
	"A:75.20,44.80:8728:37:Ashleaf Sprite",	--Faintly-Glowing Herb
	"A:68.40,44.20:8728:37:Ashleaf Sprite",	--Faintly-Glowing Herb
	"A:63.00,42.60:8728:37:Ashleaf Sprite",	--Faintly-Glowing Herb
	"A:25.80,28.40:8728:38:Jademist Dancer",	--Condensed Jademist
	"A:42.20,67.60:8728:39:Brilliant Windfeather / Emerald Gander",	--Windfeather Plume
	"A:45.20,51.60:8728:39:Brilliant Windfeather / Emerald Gander",	--Windfeather Plume
	"A:32.60,39.20:8728:39:Brilliant Windfeather / Emerald Gander",	--Windfeather Plume
	"A:30.60,63.00:8728:39:Brilliant Windfeather / Emerald Gander",	--Windfeather Plume
	"A:68.60,58.60:8728:40:Crimsonscale Firestorm / Huolon",	--Quivering Firestorm Egg
	"A:68.20,54.40:8728:40:Crimsonscale Firestorm / Huolon",	--Quivering Firestorm Egg
	"A:61.20,46.00:8728:40:Crimsonscale Firestorm / Huolon",	--Quivering Firestorm Egg
	"A:58.20,58.40:8728:40:Crimsonscale Firestorm / Huolon",	--Quivering Firestorm Egg
	"A:68.60,58.60:8728:41:Huolon",	--Reins of the Thundering Onyx Cloud Serpent
	"A:54.10,42.40:8728:42:Tsavo'ka",	--Pristine Stalker Hide
	"A:59.80,68.60:8728:42:Primal Stalker",	--Pristine Stalker Hide
	"A:64.80,54.80:8728:42:Primal Stalker",	--Pristine Stalker Hide
	"A:58.00,44.60:8728:42:Primal Stalker",	--Pristine Stalker Hide
	"A:52.40,63.40:8728:42:Primal Stalker",	--Pristine Stalker Hide
	"A:61.60,64.00:8728:43:Golganarr",	--Glinting Pile of Stone
	"A:61.60,64.00:8728:44:Golganarr",	--Odd Polished Stone
	"A:46.20,34.60:8728:45:Foreboding Flame",	--Glowing Blue Ash
	"A:44.00,41.30:8728:46:Spirit of Jadefire",	--Glowing Green Ash
	"A:57.60,43.10:8728:47:Timeless Chest/Requires a Key From Master Kukuru",	--Bonkers
	"A:66.60,65.80:8728:48:Bufo",	--Gulp Froglet
	"A:51.90,87.00:8728:49:Monstrous Spineclaw",	--Spineclaw Crab
	"A:37.30,77.60:8728:50:Zhu-Gon the Sour",	--Skunky Alemental
	"A:46.20,34.60:8728:51:Foreboding Flame",	--Ominous Flame
	"A:25.80,28.40:8728:52:Jademist Dancer",	--Jademist Dancer
	"A:50.60,47.20:8728:53:Imperial Python",	--Death Adder Hatchling
	"A:46.80,74.00:8728:54:Use the Neverending Spritewood nearby to turn Nice Sprite into Angry Sprite",	--Dandelion Frolicker
	"A:64.50,27.40:8728:55:Garnia",	--Ruby Droplet
	"A:43.20,68.40:8728:56:Crane Nests",	--Azure Crane Chick
	"A:36.20,82.20:8728:56:Crane Nests",	--Azure Crane Chick
	"A:33.60,66.50:8728:56:Crane Nests",	--Azure Crane Chick
	"A:31.20,50.20:8728:56:Crane Nests",	--Azure Crane Chick
	"A:39.80,41.00:8728:56:Crane Nests",	--Azure Crane Chick
	"A:67.30,44.20:8728:57:Leafmender")	--Ashleaf Spriteling

tappend(points["TimelessIsle:0"], 	--rares/battle pets
	--battle pets
	"P:44.20,46.40:1324:Level 25",	--Ashwing Moth
	"P:66.20,51.20:1324:Level 25",	--Ashwing Moth
	"P:55.80,67.60:1324:Level 25",	--Ashwing Moth
	"P:39.60,81.60:1324:Level 25",	--Ashwing Moth
	"P:30.60,65.00:1324:Level 25",	--Ashwing Moth
	"P:68.20,38.40:1325:Level 25",	--Flamering Moth
	"P:68.40,43.60:1325:Level 25",	--Flamering Moth
	"P:28.00,34.60:1326:Level 25",	--Skywisp Moth
	"P:25.20,42.00:1326:Level 25",	--Skywisp Moth
	"P:26.40,65.20:1326:Level 25",	--Skywisp Moth
	--rares
	"R:37.00,83.80:73158",	--Emerald Gander
	"R:32.40,78.60:73158",	--Emerald Gander
	"R:31.40,62.80:73158",	--Emerald Gander
	"R:32.40,49.60:73158",	--Emerald Gander
	"R:38.20,38.20:73158",	--Emerald Gander
	"R:44.60,53.80:73158",	--Emerald Gander
	"R:42.00,72.20:73158",	--Emerald Gander
	"R:33.00,46.80:73160",	--Ironfur Steelhorn
	"R:63.30,27.00:73160",	--Ironfur Steelhorn
	"R:36.20,66.00:73160",	--Ironfur Steelhorn
	"R:32.00,60.20:73160",	--Ironfur Steelhorn
	"R:29.00,46.40:73160",	--Ironfur Steelhorn
	"R:23.90,51.70:73161",	--Great Turtle Furyshell
	"R:24.30,61.10:73161",	--Great Turtle Furyshell
	"R:23.00,65.40:73161",	--Great Turtle Furyshell
	"R:24.10,56.30:73161",	--Great Turtle Furyshell
	"R:42.20,78.70:72909",	--Gu'chi the Swarmbringer
	"R:47.70,88.70:72245",	--Zesqua
	"R:37.30,77.60:71919",	--Zhu-Gon the Sour
	"R:34.10,85.50:72193",	--Karkanos
	"R:25.20,36.10:72045",	--Chelon
	"R:59.60,48.80:71864",	--Spelurk
	"R:43.90,70.30:72049",	--Cranegnasher
	"R:60.50,87.60:72048",	--Rattleskew
	"R:44.00,41.30:72769",	--Spirit of Jadefire
	"R:67.30,44.20:73277",	--Leafmender
	"R:66.60,65.80:72775",	--Bufo
	"R:65.00,70.80:72775",	--Bufo
	"R:61.90,76.40:72775",	--Bufo
	"R:64.50,27.40:73282",	--Garnia
	"R:54.10,42.40:72808",	--Tsavo'ka
	"R:51.90,87.00:73166",	--Monstrous Spineclaw
	"R:71.90,65.30:73166",	--Monstrous Spineclaw
	"R:67.00,79.60:73166",	--Monstrous Spineclaw
	"R:31.10,84.30:73166",	--Monstrous Spineclaw
	"R:25.10,75.40:73166",	--Monstrous Spineclaw
	"R:50.60,47.20:73163",	--Imperial Python
	"R:36.60,74.20:73163",	--Imperial Python
	"R:28.40,72.20:73163",	--Imperial Python
	"R:26.20,46.60:73163",	--Imperial Python
	"R:33.80,46.60:73163",	--Imperial Python
	"R:34.80,31.80:73163",	--Imperial Python
	"R:71.40,83.10:73704",	--Stinkbraid
	"R:43.00,41.30:73157",	--Rock Moss
	"R:57.60,76.90:73170",	--Watcher Osu
	"R:53.30,82.90:73169",	--Jakur of Ordon
	"R:66.20,58.90:73171",	--Champion of the Black Flame
	"R:70.50,52.90:73171",	--Champion of the Black Flame
	"R:71.40,46.90:73171",	--Champion of the Black Flame
	"R:66.10,42.60:73171",	--Champion of the Black Flame
	"R:61.10,46.80:73171",	--Champion of the Black Flame
	"R:54.00,52.50:73175",	--Cinderfall
	"R:44.40,25.70:73173",	--Urdur the Cauterizer
	"R:56.10,38.20:73172",	--Flintlord Gairan
	"R:48.90,37.20:73172",	--Flintlord Gairan
	"R:40.70,29.50:73172",	--Flintlord Gairan
	"R:68.60,58.60:73167",	--Huolon
	"R:72.60,48.80:73167",	--Huolon
	"R:68.60,41.40:73167",	--Huolon
	"R:62.60,43.80:73167",	--Huolon
	"R:61.60,64.00:72970",	--Golganarr
	"R:18.20,34.90:73279",	--Evermaw
	"R:22.70,21.10:73279",	--Evermaw
	"R:29.10,05.80:73279",	--Evermaw
	"R:52.00,07.70:73279",	--Evermaw
	"R:69.80,13.70:73279",	--Evermaw
	"R:80.80,38.60:73279",	--Evermaw
	"R:80.00,64.60:73279",	--Evermaw
	"R:72.00,81.90:73279",	--Evermaw
	"R:58.90,88.50:73279",	--Evermaw
	"R:36.90,88.30:73279",	--Evermaw
	"R:23.80,78.40:73279",	--Evermaw
	"R:17.80,58.80:73279",	--Evermaw
	"R:26.60,27.10:73281:Requires [Mist-Filled Spirit Lantern] From Evermaw",	--Dread Ship Vazuvius
	"R:50.20,22.40:73174",	--Archiereus of Flame
	"R:58.10,25.00:73174",	--Archiereus of Flame
	"R:56.50,35.90:73174",	--Archiereus of Flame
	"R:48.60,33.30:73174",	--Archiereus of Flame
	"R:39.70,93.40:71920",	--Cursed Hozen Swabby
	"R:22.70,58.60:71987")	--Spectral Pirate

--Disable atomatic addition of key/table combos
getmetatable(DugisWorldMapTrackingPoints).__index = nil
