-- TimmyGnome: a Gnome Mage route through Coldridge Valley, Dun Morogh, Elwynn Forest, Loch Modan, the Hall of
-- Thanes and Darkshore, levels 1 to about 18. From the Hall of Thanes on, guides are named by the level you start
-- them at ("14+"): where a duo ends up is hard to predict.
-- The first two guides were rebuilt from the turn-in log of Charli Brat's run (2026-10-11); the Elwynn and Loch
-- Modan guides below them have their own notes. Like that run, Coldridge Valley opens with a grind to level 2
-- and skips Dwarven Outfitters, which also skips both Coldridge Valley mail deliveries and the Glyphic
-- Memorandum (both need Outfitters done: Questie's Forever data). At level 5 it goes from the tunnel
-- straight to Brewnall for Bitter Rivals and Frosthowl, killing every boar for meat and ribs on the way,
-- then death-skips to Kharanos. Changes from that run:
--   * Kharanos, then Steelgrill's Depot, then the south loop, instead of Gretchen -> Depot -> south.
--   * Boar meat and ribs are collected all through the west. Stocking Jetsteam goes in before Brewnall
--     (it unlocks Evershine), Beer Basted Boar Ribs on the last Kharanos visit, after the Brewnall lap.
--   * Level 6 before the Grizzled Den; mages death-skip to Kharanos to train first.
--   * The Perfect Stout (Shimmerweed) is skipped.
-- RestedXP's Import box only accepts the encoded strings from its website. Custom guides load the
-- way RestedXP's own do: RXPGuides.RegisterGuide, called from an addon that depends on RXPGuides.
-- Coordinates and several waypoint paths are adapted from RestedXP Guides by RestedXP
-- (https://github.com/RestedXP/RXPGuides), licensed CC BY-NC-SA 4.0; this guide is shared under the same
-- license (https://creativecommons.org/licenses/by-nc-sa/4.0/). 1426 is Dun Morogh, "1426/0,x,y" are world
-- coordinates. Inside the guide text, "--" starts a comment that RestedXP strips.

RXPGuides.RegisterGuide([[
#forever
#version 2
<< Alliance
#group TimmyGnome
#name 1-5 Coldridge Valley
#next 5-9 Dun Morogh

step
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    >>Kill |cRXP_ENEMY_Ragged Young Wolves|r and |cRXP_ENEMY_Rockjaw Troggs|r around Anvilmar
    .xp 2 >> Grind to level 2
    .mob Ragged Young Wolf
    .mob Rockjaw Trogg
step
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adlin Pridedrift|r at the starting camp and sell your trash
    >>|cRXP_BUY_Buy 5|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,5 --Refreshing Spring Water (5)
    .target Adlin Pridedrift
step << Mage
    .goto 1426/0,388.17,-6056.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marryk Nurribit|r inside Anvilmar and train your spells
    >>|cRXP_WARN_Stop by any profession trainers you want while you're here|r
    .trainer >> Train your class spells
    .target Marryk Nurribit
step << !Mage
    .goto 1426,28.939,68.387
    >>Visit your class trainer inside Anvilmar and train your spells
    >>|cRXP_WARN_Stop by any profession trainers you want while you're here|r
    .trainer >> Train your class spells
step
    .goto 1426/0,688.98,-6222.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talin Keeneye|r at his camp to the west
    .accept 183 >> Accept The Boar Hunter
    .target Talin Keeneye
step
    #loop
    .goto 1426,22.276,72.549,0
    .goto 1426,20.924,70.393,0
    .goto 1426,22.662,69.331,0
    .goto 1426,24.358,72.591,0
    .goto 1426,22.276,72.549,45,0
    .goto 1426,21.209,72.266,45,0
    .goto 1426,20.880,71.470,45,0
    .goto 1426,20.924,70.393,45,0
    .goto 1426,21.330,69.261,45,0
    .goto 1426,22.035,69.231,45,0
    .goto 1426,22.662,69.331,45,0
    .goto 1426,24.317,68.026,45,0
    .goto 1426,24.754,69.257,45,0
    .goto 1426,24.878,71.191,45,0
    .goto 1426,24.358,72.591,45,0
    >>Kill |cRXP_ENEMY_Small Crag Boars|r around the camp
    .complete 183,1 --Small Crag Boar (12)
    .mob Small Crag Boar
step
    .goto 1426/0,688.98,-6222.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 183 >> Turn in The Boar Hunter
    .target Talin Keeneye
step
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r at the troll camp
    .accept 182 >> Accept The Troll Cave
    .target Grelin Whitebeard
step
    #loop
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r
    .complete 182,1 --Frostmane Troll Whelp (14)
    .mob Frostmane Troll Whelp
step
    .goto 1426/0,567.09,-6362.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 182 >> Turn in The Troll Cave
    .accept 218 >> Accept The Stolen Journal
    .target Grelin Whitebeard
step
    #completewith next
    .goto 1426,27.098,80.707,20 >> Enter the Frostmane Cave
step
    .goto 1426,30.489,80.165
    >>Kill |cRXP_ENEMY_Grik'nir the Cold|r at the back of the cave. Loot him for |cRXP_LOOT_Grelin Whitebeard's Journal|r
    .complete 218,1 --Grelin Whitebeard's Journal
    .mob Grik'nir the Cold
step
    .goto 1426/0,567.14,-6363.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >> Turn in The Stolen Journal
    .accept 282 >> Accept Senir's Observations
    .target Grelin Whitebeard
step
    .goto 1426,24.358,72.591,0
    .xp 4 >> Grind to level 4 on the boars and trolls around the camp
    .mob Frostmane Troll Whelp
    .mob Small Crag Boar
step
    .goto 1426/0,571.82,-6371.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r next to Grelin
    >>|cRXP_WARN_This starts a 5 minute timer: run straight to Anvilmar|r
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .target Nori Pridedrift
step
    #completewith next
    .goto 1426,28.939,68.387,12 >> Enter Anvilmar
step
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnan Furcutter|r inside Anvilmar
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .target Durnan Furcutter
step
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSell your trash to |cRXP_FRIENDLY_Durnan Furcutter|r, so you have money for training
    .vendor >> Sell your trash
    .target Durnan Furcutter
step << Mage
    .goto 1426/0,388.17,-6056.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marryk Nurribit|r inside and train your spells
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .train 116 >> Train |T135846:0|t[Frostbolt]
    .target Marryk Nurribit
step << !Mage
    .goto 1426,28.939,68.387
    >>Visit your class trainer inside Anvilmar and train your spells
    .trainer >> Train your class spells
step
    .goto 1426/0,390.000,-6093.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grund Drokda|r
    .accept 97277 >> Accept Grund and Gozwin
    .target Grund Drokda::2756
step
    #completewith next
    .goto 1426/0,497.300,-6118.500,20,0
    .goto 1426/0,467.700,-6012.800,20 >> Travel up to the hills in northern Coldridge Valley
step
    >>Kill the |cRXP_ENEMY_Snow Leopard Prowler|r
    >>Loot |cRXP_PICK_Gozwin's Mechanic's Log|r on the ground
    .complete 97277,2 --Snow Leopard Prowler slain
    .mob +Snow Leopard Prowler::269075
    .goto 1426/0,447.800,-5942.000
    .complete 97277,1 --Gozwin's Mechanic's Log
    .goto 1426/0,458.700,-5940.600
step
    .goto 1426/0,390.000,-6093.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grund Drokda|r
    .turnin 97277 >> Turn in Grund and Gozwin
    .target Grund Drokda::2756
step
    .goto 1426/0,571.82,-6371.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r back at Grelin's camp
    .turnin 3365 >> Turn in Bring Back the Mug
    .target Nori Pridedrift
step
    .goto 1426/0,152.900,-6235.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Thalos|r at the tunnel
    .turnin 282 >> Turn in Senir's Observations
    .accept 420 >> Accept Senir's Observations
    .accept 96628 >> Accept The Adventurer
    .target Mountaineer Thalos::1965
step
    .goto 1426/0,135.100,-6248.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hands Springsprocket|r
    .accept 2160 >> Accept Supplies to Tannok
    .target Hands Springsprocket::6782
step
    .goto 1426/0,111.82,-6206.61,15,0
    .goto 1426/0,46.32,-6037.19,15 >> Go through Coldridge Pass. Kill the |cRXP_ENEMY_Rockjaw Raiders|r in your way
]])

-- Shown as "5-10 Dun Morogh". The #name stays "5-9 Dun Morogh" because RestedXP keys saved progress (and
-- the first guide's #next) by name: renaming it would send everyone back to step 1.
RXPGuides.RegisterGuide([[
#forever
#version 23
<< Alliance
#group TimmyGnome
#name 5-9 Dun Morogh
#displayname 5-10 Dun Morogh
#next 10-12 Elwynn Forest

step
    #sticky
    #label Boars
    >>Kill every boar you pass from here on. Save 4 |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r and 6 |cRXP_LOOT_Crag Boar Ribs|r for Stocking Jetsteam and Beer Basted Boar Ribs
    .collect 769,4,317,1 --Chunk of Boar Meat (4)
    .collect 2886,6,384,1 --Crag Boar Rib (6)
    .mob +Crag Boar
    .mob +Large Crag Boar
    .mob +Elder Crag Boar
step
    .goto 1426,34.42,56.23
    >>Out of the tunnel, head north and discover Chill Breeze Valley
    .subzone 801 >> Discover Chill Breeze Valley
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tContinue to Brewnall Village. Talk to |cRXP_FRIENDLY_Marleth Barleybrew|r and |cRXP_FRIENDLY_Gretta Ganter|r (on the ice next to the village)
    >>|cRXP_WARN_Don't take The Perfect Stout from Rejold: it's skipped|r
    .accept 310 >> Accept Bitter Rivals
    .goto 1426/0,315.42,-5372.02
    .target +Marleth Barleybrew
    .accept 98326 >> Accept Frosthowl (for later: Frosthowl is the boss at the back of the Grizzled Den)
    .goto 1426,31.53,44.65
    .target +Gretta Ganter
step
    .goto 1426,34.0,42.2
    >>Run onto the frozen lake and let the |cRXP_ENEMY_Winter Wolves|r kill you. Release, then talk to the |cRXP_FRIENDLY_Spirit Healer|r to revive in Kharanos
    .deathskip >> Die and revive at the Kharanos graveyard
step
    .goto 1426/0,-498.400,-5648.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eric Brighthammer|r at the campfire next to the graveyard
    .turnin 96628 >> Turn in The Adventurer
    .accept 96608 >> Accept The Great Outdoors
    .target Eric Brighthammer::265813
step
    .goto 1426/0,-501.400,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 420 >> Turn in Senir's Observations
    .accept 98322 >> Accept Secure the Mountain
    .target Senir Whitebeard::1252
step
    .goto 1426/0,-498.400,-5648.400
    >>|cRXP_WARN_Type /sit next to Eric's campfire and wait for the Boosted Rest buff (about a minute)|r
    .complete 96608,1 --Sit near the campfire
    .complete 96608,2 --Gain the Boosted Rest buff
step
    .goto 1426/0,-498.400,-5648.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eric Brighthammer|r
    .turnin 96608 >> Turn in The Great Outdoors
    .accept 96629 >> Accept Camping 101: Cooking
    .target Eric Brighthammer::265813
step
    .goto 1426/0,-504.05,-5596.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r outside the Thunderbrew Distillery
    .accept 384 >> Accept Beer Basted Boar Ribs
    .target Ragnar Thunderbrew
step
    .goto 1426/0,-523.35,-5590.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tannok Frosthammer|r inside
    .turnin 2160 >> Turn in Supplies to Tannok
    .target Tannok Frosthammer
step
    .goto 1426/0,-529.600,-5590.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxan Anvol|r
    .accept 99158 >> Accept Dawn in the Mountains
    .target Maxan Anvol::1226
step
    .goto 1426/0,-531.23,-5601.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r
    >>|cRXP_BUY_Buy a|r |T132800:0|t[Thunder Ale] |cRXP_BUY_for Jarven, and the|r |T132800:0|t[Rhapsody Malt] |cRXP_BUY_for Beer Basted Boar Ribs if you can afford it|r
    .collect 2686,1,311 --Thunder Ale
    .complete 384,2 --Rhapsody Malt
    .home 2102 >> Set your Hearthstone to Thunderbrew Distillery
    .target Innkeeper Belm
step
    #completewith next
    .goto 1426/0,-551.03,-5598.40,6,0
    .goto 1426/0,-544.38,-5605.92,3 >> Go down to the basement: the stairs are behind the table in the kitchen
step
    .goto 1426/0,-544.38,-5605.92
    >>Give |cRXP_FRIENDLY_Jarven Thunderbrew|r the |T132800:0|t[Thunder Ale]. If he has nothing for you, click the |cRXP_PICK_Guarded Thunder Ale Barrel|r first
    .turnin 308 >> Turn in Distracting Jarven
    .target Jarven Thunderbrew
step
    .goto 1426/0,-547.93,-5607.27
    >>Click the |cRXP_PICK_Unguarded Thunder Ale Barrel|r while Jarven is away
    .turnin 310 >> Turn in Bitter Rivals
    .accept 311 >> Accept Return to Marleth
step
    .goto 1426/0,-464.45,-5573.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharek Blackstone|r
    .accept 400 >> Accept Tools for Steelgrill
    .target Tharek Blackstone
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Bellowfiz|r and |cRXP_FRIENDLY_Pilot Stonegear|r at Steelgrill's Depot
    >>|cRXP_WARN_Don't kill Young Black Bears on the way: their fur only drops once you have Stocking Jetsteam|r
    .accept 317 >> Accept Stocking Jetsteam
    .goto 1426/0,-632.15,-5466.540
    .target +Pilot Bellowfiz
    .accept 313 >> Accept The Grizzled Den
    .goto 1426/0,-641.80,-5473.18
    .target +Pilot Stonegear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beldin Steelgrill|r and |cRXP_FRIENDLY_Loslor Rudge|r
    .turnin 400 >> Turn in Tools for Steelgrill
    .goto 1426/0,-682.23,-5488.94
    .target +Beldin Steelgrill
    .accept 5541 >> Accept Ammo for Rumbleshot
    .goto 1426/0,-664.55,-5499.710
    .target +Loslor Rudge
step
    #sticky
    #label BearFur
    >>Kill |cRXP_ENEMY_Young Black Bears|r as you go for 2 |cRXP_LOOT_Thick Bear Fur|r
    .complete 317,2 --Thick Bear Fur (2)
    .mob Young Black Bear
step
    .goto 1426/0,-370.000,-5750.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Gretchen|r
    .turnin 98322 >> Turn in Secure the Mountain
    .accept 98319 >> Accept Secure the Mountain
    .target Mountaineer Gretchen::271546
step
    .goto 1426/0,-371.400,-5746.900
    >>Open the |cRXP_PICK_Ammo Crate|r next to Gretchen. Loot it for |cRXP_LOOT_Rumbleshot's Ammo|r
    .complete 5541,1 --Rumbleshot's Ammo
step
    .goto 1426/0,-201.51,-6015.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .turnin 5541 >> Turn in Ammo for Rumbleshot
    .target Hegnar Rumbleshot
step
    .goto 1426,43.704,65.296,0
    .xp 6 >> Reach level 6 before the Grizzled Den
    .mob Crag Boar
    .mob Young Black Bear
step << Mage
    >>Let nearby mobs kill you, release, and talk to the |cRXP_FRIENDLY_Spirit Healer|r to revive in Kharanos
    .deathskip >> Death skip to Kharanos
step << Mage
    .goto 1426/0,-537.200,-5587.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magis Sparkmantle|r upstairs in the Thunderbrew Distillery
    .trainer >> Train your level 6 spells (Fireball, Fire Blast, Conjure Food)
    .target Magis Sparkmantle
step
    #completewith Cornelius
    >>Kill |cRXP_ENEMY_Wendigos|r and |cRXP_ENEMY_Young Wendigos|r. Loot them for their |cRXP_LOOT_Wendigo Manes|r
    .complete 313,1 --Wendigo Mane (8)
    .mob +Wendigo
    .mob +Young Wendigo
step
    #label Cornelius
    .goto 1426/0,-221.800,-5516.300,20,0
    .goto 1426/0,-312.500,-5506.300
    >>Find the body of |cRXP_FRIENDLY_Mountaineer Cornelius|r inside the Grizzled Den
    >>|cRXP_WARN_Skip Flintfire's Shipments and leave Frosthowl, the boss at the back, alone: you only need the 8 manes and Cornelius|r
    .complete 98319,1 --Mountaineer Cornelius found
step
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426/0,-274.900,-5423.500,40,0
    .goto 1426/0,-312.500,-5506.300,40,0
    .goto 1426/0,-275.000,-5623.200,40,0
    >>Finish the |cRXP_LOOT_Wendigo Manes|r
    .complete 313,1 --Wendigo Mane (8)
    .mob +Wendigo
    .mob +Young Wendigo
step
    >>Stocking Jetsteam goes in at the Depot next, because it unlocks Evershine for the Brewnall lap. Finish its 4 |cRXP_LOOT_Chunks of Boar Meat|r and 2 |cRXP_LOOT_Thick Bear Fur|r around Kharanos if you're short
    >>|cRXP_WARN_The ribs can wait: keep collecting them in the west. Beer Basted Boar Ribs goes in after Brewnall|r
    .complete 317,2 --Thick Bear Fur (2)
    .goto 1426,43.704,65.296,0
    .goto 1426,47.657,64.039,0
    .goto 1426,46.285,59.797,0
    .goto 1426,43.704,65.296,60,0
    .goto 1426,44.729,65.685,60,0
    .goto 1426,45.128,64.702,60,0
    .goto 1426,46.111,64.349,60,0
    .goto 1426,47.657,64.039,60,0
    .goto 1426,49.484,62.370,60,0
    .goto 1426,49.156,59.842,60,0
    .goto 1426,49.403,58.855,60,0
    .goto 1426,48.523,57.088,60,0
    .goto 1426,46.285,59.797,60,0
    .mob +Young Black Bear
    .complete 317,1 --Chunk of Boar Meat (4)
    .goto 1426,43.452,58.760,0
    .goto 1426,44.898,50.142,0
    .goto 1426,50.555,51.778,0
    .goto 1426,43.452,58.760,60,0
    .goto 1426,44.969,55.078,60,0
    .goto 1426,43.748,51.885,60,0
    .goto 1426,44.243,50.923,60,0
    .goto 1426,44.898,50.142,60,0
    .goto 1426,45.395,49.347,60,0
    .goto 1426,48.092,49.904,60,0
    .goto 1426,49.177,51.013,60,0
    .goto 1426,50.555,51.778,60,0
    .mob +Crag Boar
    .mob +Large Crag Boar
step
    .goto 1426/0,-370.000,-5750.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Gretchen|r
    .turnin 98319 >> Turn in Secure the Mountain
    .accept 98323 >> Accept Secure the Mountain
    .target Mountaineer Gretchen::271546
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Stonegear|r and |cRXP_FRIENDLY_Pilot Bellowfiz|r at Steelgrill's Depot
    .turnin 313 >> Turn in The Grizzled Den
    .goto 1426/0,-641.900,-5471.600
    .target +Pilot Stonegear::1377
    .turnin 317 >> Turn in Stocking Jetsteam
    .accept 318 >> Accept Evershine
    .goto 1426/0,-632.100,-5466.400
    .target +Pilot Bellowfiz::1378
step
    .goto 1426/0,-501.400,-5643.900,0
    .xp 7 >> Grind to level 7 on the boars around Kharanos
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto 1426/0,-501.400,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senir Whitebeard|r in Kharanos
    .turnin 98323 >> Turn in Secure the Mountain
    .accept 287 >> Accept Frostmane Hold
    .target Senir Whitebeard::1252
step
    .goto 1426/0,-545.800,-5594.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremlock Pilsnor|r in the Thunderbrew Distillery (about 1 silver)
    .train 2550 >> Train |T133971:0|t[Cooking]
    .turnin 96629 >> Turn in Camping 101: Cooking
    .target Gremlock Pilsnor::1699
step
    .goto 1426/0,99.17,-5572.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tundra MacGrann|r on the way west
    .accept 312 >> Accept Tundra MacGrann's Stolen Stash
    .target Tundra MacGrann
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marleth Barleybrew|r and |cRXP_FRIENDLY_Rejold Barleybrew|r in Brewnall Village
    >>|cRXP_WARN_Don't take The Perfect Stout from Rejold: it's skipped|r
    .turnin 311 >> Turn in Return to Marleth
    .goto 1426/0,315.42,-5372.02
    .target +Marleth Barleybrew
    .turnin 318 >> Turn in Evershine
    .accept 319 >> Accept A Favor for Evershine
    .goto 1426/0,315.23,-5378.42
    .target +Rejold Barleybrew
step
    #sticky
    #label Evershine
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>Kill |cRXP_ENEMY_Ice Claw Bears|r, |cRXP_ENEMY_Elder Crag Boars|r and |cRXP_ENEMY_Snow Leopards|r around Brewnall, before and after Frostmane Hold
    .complete 319,1 --Ice Claw Bear (6)
    .mob +Ice Claw Bear
    .complete 319,2 --Elder Crag Boar (8)
    .mob +Elder Crag Boar
    .complete 319,3 --Snow Leopard (8)
    .mob +Snow Leopard
step
    #completewith Explore
    >>Kill |cRXP_ENEMY_Frostmane Headhunters|r in and around the cave
    .complete 287,1 --Frostmane Headhunter (5)
    .mob Frostmane Headhunter
step
    #label Explore
    .goto 1426/0,628.400,-5579.500,20,0
    .goto 1426/0,696.600,-5674.600,20,0
    .goto 1426/0,746.900,-5614.900,20,0
    .goto 1426/0,695.300,-5528.300,20,0
    .goto 1426/0,657.700,-5544.600
    >>|cRXP_WARN_Enter Frostmane Hold and keep to the left side as you go further in to explore it|r
    .complete 287,2 --Fully explore Frostmane Hold
step
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .waypoint 1426,22.390,51.701,30,0
    .waypoint 1426,21.113,51.717,30,0
    .waypoint 1426,21.131,51.024,30,0
    .waypoint 1426,22.067,50.215,30,0
    .waypoint 1426,23.136,50.886,30,0
    .waypoint 1426,23.373,51.385,30,0
    .waypoint 1426,23.568,50.924,30,0
    .waypoint 1426,24.301,50.898,30,0
    >>Kill |cRXP_ENEMY_Frostmane Headhunters|r inside the cave
    .complete 287,1 --Frostmane Headhunter (5)
    .mob Frostmane Headhunter
step
    #requires Evershine
    .goto 1426/0,315.28,-5378.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .turnin 319 >> Turn in A Favor for Evershine
    .accept 320 >> Accept Return to Bellowfiz
    .target Rejold Barleybrew
step
    .goto 1426/0,-94.88,-5647.69
    >>Loot |cRXP_PICK_MacGrann's Meat Locker|r in Old Icebeard's cave
    >>|cRXP_WARN_Old Icebeard is an elite yeti: wait for him to walk out of the cave, or pull him and kill him with your group|r
    .complete 312,1 --MacGrann's Dried Meats
step
    .goto 1426/0,99.17,-5572.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Turn in Tundra MacGrann's Stolen Stash
    .target Tundra MacGrann
step
    .goto 1426,38.52,53.93
    >>Head back east toward Old Icebeard's cave and let mobs kill you, then release and talk to the |cRXP_FRIENDLY_Spirit Healer|r to revive in Kharanos
    >>|cRXP_WARN_Don't die at Tundra's camp: it's about as close to the Coldridge Valley graveyard as to Kharanos|r
    .deathskip >> Death skip to Kharanos
step
    .goto 1426/0,-501.400,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senir Whitebeard|r in Kharanos
    .turnin 287 >> Turn in Frostmane Hold
    .accept 291 >> Accept The Reports (for Senator Barin Redstone in Ironforge)
    .target Senir Whitebeard::1252
step << Paladin
    >>Before Tim goes to Ironforge for his wand
    +Craft a Copper Rod and give it to Tim
    +Trade Tim your spare |T132889:0|t[Linen Cloth] (keep 10 for The Tome of Divinity): he makes Brown Linen Pants in Ironforge and disenchants them for his wand
    +|cFFFF0000MAKE SURE TIM HAS A BRACER!|r
step << Paladin
    #completewith DeeprunTram
    +|cRXP_WARN_Linen Cloth: save 10 for your level 12 class quest (The Tome of Divinity) and trade the rest to Tim. He turns it into Tailoring gear at level 10|r
step << Mage
    >>Gather wand materials before you go to Ironforge
    .collect 6217,1 >> Copper Rod (your paladin crafts it)
    +About 6 silver for training, Motes of Magic, Simple Wood and Coarse Thread
    +All your |T132889:0|t[Linen Cloth] plus your partner's spares: you bolt it for Tailoring skill, then make Brown Linen Pants (4 linen each) to disenchant for the wand's Lesser Magic Essence
    +|cFFFF0000ANY BRACER|r
step << Mage
    .goto 1455,59.77,45.45,15 >> Travel to the enchanting trainer in Ironforge: take the road north out of Kharanos, cross the bridge and follow the road east up the mountain
step << Mage
    .goto 1455,59.77,45.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimble Thistlefuzz|r, the enchanting trainer
    .skill enchanting,1 >> Learn Enchanting
    .target Gimble Thistlefuzz
step << Mage
    .goto 1455,60.27,45.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thonys Pillarstone|r next to Gimble: now that you have Enchanting, he has a camping quest for it
    >>|cRXP_WARN_It completes at 20 Enchanting, which you reach at the Stormwind tailoring stop at level 10. Bring it back to him on the Ironforge stop at the end of Loch Modan|r
    .accept 96059 >> Accept Camping 101: Enchanting
    .target Thonys Pillarstone
step << Mage
    .goto 1455,61.03,44.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tilli Thistlefuzz|r, the enchanting supplies vendor
    .collect 247786,9 >> Buy 9 Motes of Magic
    .collect 4470,2 >> Buy 2 Simple Wood
    .target Tilli Thistlefuzz
step << Mage
    .collect 6218,1 >> Craft a Runed Copper Rod
step << Mage
    .collect 247789,1 >> Craft a Novice's Practice Wand
step << Mage
    .skill enchanting,10 >> Enchant Bracer - Inferior Stamina on your bracer until Enchanting reaches 10 (about 7 times)
step << Mage
    .goto 1455,59.77,45.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimble Thistlefuzz|r
    .trainer >> Train Lesser Magic Wand
    .target Gimble Thistlefuzz
step << Mage
    .goto 1455,43.82,27.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthrar Threx|r, the tailoring trainer on the other side of the Great Forge
    .skill tailoring,1 >> Learn Tailoring
    .target Uthrar Threx
step << Mage
    .goto 1455,42.94,28.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Poranna Snowbraid|r next to Uthrar
    >>|cRXP_BUY_Buy 13|r |T132891:0|t[Coarse Thread] |cRXP_BUY_and 1 Bleach (about 1s 55c): a thread for each pair of pants you make now, the rest for your level 10 Tailoring gear. Short on money? Buy just the pants' thread: the Stormwind stop sells the rest|r
    .collect 2320,13 --Coarse Thread (13)
    .collect 2324,1 --Bleach (1)
    .target Poranna Snowbraid
step << Mage
    .goto 1455,43.82,27.86
    >>|cRXP_WARN_Turn your|r |T132889:0|t[Linen Cloth] |cRXP_WARN_into|r |T132890:0|t[Bolts of Linen Cloth] |cRXP_WARN_(a Tailoring point each) until Uthrar Threx will teach you Brown Linen Pants. Keep 2 bolts for each pair you'll make|r
    >>|cRXP_WARN_Not enough linen to get there? Skip this step and the next, and buy the essence from Tilli Thistlefuzz or the Auction House instead|r
    .train 3914 >> Train Brown Linen Pants
    .target Uthrar Threx
step << Mage
    >>|cRXP_WARN_Craft Brown Linen Pants (2 bolts and 1 Coarse Thread) and Disenchant them until one gives you a|r |T132867:0|t[Lesser Magic Essence]|cRXP_WARN_. The others give Strange Dust: Dust to Motes turns it into Motes of Magic|r
    >>|cRXP_WARN_Out of linen? Tilli Thistlefuzz or the Auction House sells the essence|r
    .collect 10938,1 >> Get a Lesser Magic Essence
step << Mage
    >>|cRXP_WARN_Craft the|r |T135139:0|t[Lesser Magic Wand] |cRXP_WARN_from your other Simple Wood and the|r |T132867:0|t[Lesser Magic Essence]|cRXP_WARN_, then equip it|r
    .collect 11287,1 >> Craft a Lesser Magic Wand
step << Mage
    #completewith DeeprunTram
    >>|cRXP_WARN_Tailoring stash for your crafting stop in Stormwind at level 10. Keep every|r |T132889:0|t[Linen Cloth] |cRXP_WARN_and turn it into|r |T132890:0|t[Bolts of Linen Cloth] |cRXP_WARN_as you go: each bolt is a Tailoring skill point. Ask your partner for spare linen too|r
    .collect 2996,36 --Bolt of Linen Cloth (36)
    .collect 2320,13 --Coarse Thread (13)
    .collect 2324,1 --Bleach (1)
step << Mage
    .goto 1455/0,-1026.28,-4872.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWhile you're in Ironforge, talk to |cRXP_FRIENDLY_Senator Barin Redstone|r in the throne room
    .turnin 291 >> Turn in The Reports
    .target Senator Barin Redstone
step << Mage
    .hs >> Hearth back to Kharanos
step
    .goto 1426/0,-521.97,-5597.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreg Bilmn|r near the inn
    >>|cRXP_WARN_OPTIONAL: if you have 5 silver to spare, buy a|r |T133634:0|t[Small Brown Pouch] |cRXP_WARN_(6 slots). Skip this step if not|r
    .vendor >> Buy a Small Brown Pouch
    .target Kreg Bilmn
step << Mage
    #completewith HerdAccept
    +|cRXP_WARN_Level your wand skill: shoot the mobs you fight with your wand|r
step << Mage
    .goto 1426/0,-537.200,-5587.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magis Sparkmantle|r upstairs
    .trainer >> Train your level 8 spells (Polymorph, Frostbolt, Arcane Missiles)
    .target Magis Sparkmantle
step
    >>Last stop for Beer Basted Boar Ribs: if you're still short on |cRXP_LOOT_Crag Boar Ribs|r, kill boars around Kharanos
    .complete 384,1 --Crag Boar Rib (6)
    .goto 1426,43.452,58.760,0
    .goto 1426,44.898,50.142,0
    .goto 1426,50.555,51.778,0
    .goto 1426,43.452,58.760,60,0
    .goto 1426,44.969,55.078,60,0
    .goto 1426,43.748,51.885,60,0
    .goto 1426,44.243,50.923,60,0
    .goto 1426,44.898,50.142,60,0
    .goto 1426,45.395,49.347,60,0
    .goto 1426,48.092,49.904,60,0
    .goto 1426,49.177,51.013,60,0
    .goto 1426,50.555,51.778,60,0
    .mob +Crag Boar
    .mob +Large Crag Boar
step
    .goto 1426/0,-531.23,-5601.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy the |T132800:0|t[Rhapsody Malt] from |cRXP_FRIENDLY_Innkeeper Belm|r if you haven't yet
    .complete 384,2 --Rhapsody Malt
    .target Innkeeper Belm
step
    .goto 1426/0,-504.05,-5596.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r outside
    .turnin 384 >> Turn in Beer Basted Boar Ribs
    .target Ragnar Thunderbrew
step
    .goto 1426/0,-632.15,-5466.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Bellowfiz|r at Steelgrill's Depot
    .turnin 320 >> Turn in Return to Bellowfiz
    .target Pilot Bellowfiz::1378
step
    .xp <9,1
    .goto 1426/0,-682.300,-5489.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beldin Steelgrill|r at the depot
    >>|cRXP_WARN_It needs level 9, so this step only shows if you're 9 already. It goes in at Earthseer Farsen for 675 XP|r
    .accept 96408 >> Accept A Visitor to Dun Morogh
    .target Beldin Steelgrill::1376
step
    .goto 1426/0,-1041.000,-5350.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Father Gavin|r at Misty Pine Refuge
    .turnin 99158 >> Turn in Dawn in the Mountains
    .target Father Gavin::1253
step
    #label HerdAccept
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rudra Amberstill|r at Amberstill Ranch
    .accept 314 >> Accept Protecting the Herd
    .target Rudra Amberstill
step
    .goto 1426,62.538,46.195
    .goto 1426,63.50,50.17,0
    >>Kill |cRXP_ENEMY_Vagash|r (elite). Loot him for his |cRXP_LOOT_Fang|r
    >>|cRXP_WARN_Pull him and kite him around the fence at 63.50, 50.17|r
    .complete 314,1 --Fang of Vagash
    .mob Vagash
step
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .turnin 314 >> Turn in Protecting the Herd
    .target Rudra Amberstill
step
    .goto 1426/0,-1589.76,-5714.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tAs soon as you reach Gol'Bolar Quarry, sell your trash to |cRXP_FRIENDLY_Frast Dokner|r
    .vendor >> Sell your trash
    .target Frast Dokner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Stonebrow|r and |cRXP_FRIENDLY_Senator Mehr Stonehallow|r at Gol'Bolar Quarry
    .accept 432 >> Accept Those Blasted Troggs!
    .goto 1426/0,-1600.30,-5726.590
    .target +Foreman Stonebrow
    .accept 433 >> Accept The Public Servant
    .goto 1426/0,-1579.96,-5714.73
    .target +Senator Mehr Stonehallow
step
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .waypoint 1426,70.073,57.030,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.420,45,0
    >>Kill |cRXP_ENEMY_Rockjaw Skullthumpers|r in and around the quarry. Kill the |cRXP_ENEMY_Rockjaw Bonesnappers|r you meet too
    .complete 432,1 --Rockjaw Skullthumper (6)
    .mob Rockjaw Skullthumper
step
    .goto 1426/0,-1600.30,-5726.590
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Stonebrow|r. This turn-in takes you to level 9
    .turnin 432 >> Turn in Those Blasted Troggs!
    .target Foreman Stonebrow
step
    #loop
    .goto 1426,70.750,56.219,0
    .goto 1426,71.344,51.873,0
    .goto 1426,72.570,53.488,0
    .goto 1426,70.750,56.219,30,0
    .goto 1426,70.964,54.538,30,0
    .goto 1426,70.679,53.301,30,0
    .goto 1426,70.461,52.292,30,0
    .goto 1426,71.344,51.873,30,0
    .goto 1426,71.999,50.204,30,0
    .goto 1426,72.456,51.300,30,0
    .goto 1426,72.613,52.509,30,0
    .goto 1426,72.570,53.488,30,0
    .goto 1426,71.790,52.278,30,0
    .goto 1426,71.591,51.831,30,0
    >>Kill |cRXP_ENEMY_Rockjaw Bonesnappers|r inside the mine
    .complete 433,1 --Rockjaw Bonesnapper (10)
    .mob Rockjaw Bonesnapper
step
    .goto 1426/0,-1579.96,-5714.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 433 >> Turn in The Public Servant
    .target Senator Mehr Stonehallow
-- Earthseer Farsen's chain leads to Old Ironforge Incursion, the Hall of Thanes dungeon quest.
step
    .isOnQuest 96408
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthseer Farsen|r at his camp overlooking Gol'Bolar Quarry
    .turnin 96408 >> Turn in A Visitor to Dun Morogh
    .target Earthseer Farsen
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthseer Farsen|r at his camp overlooking Gol'Bolar Quarry
    .accept 96392 >> Accept Farsen's Watch
    .target Earthseer Farsen
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthseer Farsen|r again and use his far sight
    >>|cRXP_WARN_Press Escape to leave the far sight once the objective completes|r
    .complete 96392,1 --Use Farsen's Far Sight
    .target Earthseer Farsen
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96392 >> Turn in Farsen's Watch
    .accept 96390 >> Accept Nip 'Em in the Bud
    .target Earthseer Farsen
step
    #completewith Incursion
    >>Kill |cRXP_ENEMY_Rockjaw Ambushers|r. Loot them for the |T132621:0|t[|cRXP_LOOT_Empty Powder Keg|r]
    .use 268548 >> |cRXP_WARN_Use the|r |T132621:0|t[|cRXP_LOOT_Empty Powder Keg|r] |cRXP_WARN_to start the quest|r
    >>|cRXP_WARN_NOTE: This item has a low drop rate. Skip this step if you do not find it by the time you are done with the|r |cRXP_ENEMY_Dark Iron Spies|r
    .collect 268548,1,95213,1 --Empty Powder Keg (1)
    .accept 95213 >> Accept Stolen Blasting Powder
    .mob Rockjaw Ambusher
step
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>Kill |cRXP_ENEMY_Dark Iron Spies|r at Ironband's Compound. Loot them for the |T237385:0|t[|cRXP_LOOT_Dark Iron Map|r]
    >>|cRXP_WARN_Each of you needs your own map (the quest can't be shared): keep killing until you both have one|r
    .use 274268 >>|cRXP_WARN_Use the|r |T237385:0|t[|cRXP_LOOT_Dark Iron Map|r] |cRXP_WARN_to start the quest|r
    .complete 96390,1 --Dark Iron Spy slain (10)
    .collect 274268,1,96391,1 --Dark Iron Map (1)
    .accept 96391 >> Accept Underground Map
    .mob Dark Iron Spy
step
    #label Incursion
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack at |cRXP_FRIENDLY_Earthseer Farsen|r
    >>|cRXP_WARN_Old Ironforge Incursion is the Hall of Thanes dungeon quest: claim Durgen Dirgehammer's head there and take it to King Magni in Ironforge|r
    .turnin 96390 >> Turn in Nip 'Em in the Bud
    .turnin 96391 >> Turn in Underground Map
    .accept 96393 >> Accept Old Ironforge Incursion
    .target Earthseer Farsen
step
    .isOnQuest 95213
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tYou found the keg: talk to |cRXP_FRIENDLY_Quarrymaster Thesten|r at Gol'Bolar Quarry
    .turnin 95213 >> Turn in Stolen Blasting Powder
    .target Quarrymaster Thesten
step
    .isQuestTurnedIn 95213
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quarrymaster Thesten|r
    >>|cRXP_WARN_OPTIONAL: the follow-up needs 16 Stolen Blasting Powder from Rockjaw Ambushers. Skip this step if that's too slow|r
    .accept 95214 >> Accept Stolen Blasting Powder
    .target Quarrymaster Thesten
step
    .isOnQuest 95214
    #loop
    .goto 1426/0,-1881.82,-5735.45,50,0
    .goto 1426/0,-1832.57,-5571.28,50,0
    .goto 1426/0,-1724.22,-5636.95,50,0
    .goto 1426/0,-1881.82,-5735.45,0
    .goto 1426/0,-1832.57,-5571.28,0
    .goto 1426/0,-1724.22,-5636.95,0
    >>Kill |cRXP_ENEMY_Rockjaw Ambushers|r. Loot them for their |cRXP_LOOT_Stolen Blasting Powder|r
    >>|cRXP_WARN_OPTIONAL: if the drops are too slow, skip this step and abandon the quest|r
    .complete 95214,1 --Stolen Blasting Powder (16)
    .mob Rockjaw Ambusher
step
    .isQuestComplete 95214
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quarrymaster Thesten|r
    .turnin 95214 >> Turn in Stolen Blasting Powder
    .target Quarrymaster Thesten
step
    .goto 1426/0,-1589.76,-5714.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSell your trash to |cRXP_FRIENDLY_Frast Dokner|r at Gol'Bolar Quarry
    .vendor >> Sell your trash
    .target Frast Dokner
-- Loch Modan flight path (with Honor Students for Dwarves and Gnomes) and the hearth in Thelsamar, fly to
-- Ironforge, then the Deeprun Tram to Stormwind for Elwynn Forest. The Elwynn guide ends by hearthing back here.
-- The quests need level 10: their steps skip themselves below that. The Hall of Thanes quests in Ironforge wait
-- until it's time to run the dungeon.
step
    #completewith LochModan
    .goto 1426/0,-2165.600,-5609.000,70,0
    .goto 1426/0,-2262.200,-5622.700,20,0
    .goto 1426/0,-2350.700,-5558.700,20 >> Head east along the road to the South Gate Pass
step
    #label LochModan
    .goto 1432,16.494,58.424,20,0
    .goto 1432,19.594,62.735,20,0
    .goto 1432,20.749,64.326,20,0
    .goto 1432,21.106,65.007,20,0
    .goto 1432,21.388,66.357,20,0
    .goto 1432,21.498,67.840
    .subzone 924 >> Go through the South Gate Pass into Loch Modan
step
    .goto 1432,34.405,48.276
    .subzone 144 >> Travel to Thelsamar
step << Dwarf/Gnome
    .xp <10,1
    .goto 1432,37.26,46.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brock Stoneseeker|r
    .accept 6387 >> Accept Honor Students
    .target Brock Stoneseeker
step
    #completewith ThelsamarHearth
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >> Enter the Stoutlager Inn
step
    #label ThelsamarHearth
    .goto 1432/0,-2973.90,-5377.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Hearthstove|r inside the Stoutlager Inn
    >>|cRXP_WARN_You'll hearth back here from Westfall at the end of Elwynn Forest|r
    .home 2101 >> Set your Hearthstone to Thelsamar
    .target Innkeeper Hearthstove
step
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r, the gryphon master
    .fp Thelsamar >> Get the Thelsamar flight path
    .target Thorgrum Borrelson
step << Dwarf/Gnome
    .isOnQuest 6387
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >> Turn in Honor Students
    .accept 6391 >> Accept Ride to Ironforge
    .target Thorgrum Borrelson
step
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Fly to Ironforge
    .target Thorgrum Borrelson
    .zoneskip Ironforge
step << Dwarf/Gnome
    .isOnQuest 6391
    .goto 1455,56.714,41.945,20,0
    .goto 1455,55.748,38.127,20,0
    .goto 1455,51.569,29.956,15,0
    .goto 1455,49.645,28.195,12,0
    .goto 1455/0,-1120.93,-4708.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Golnir Bouldertoe|r inside the building
    .turnin 6391 >> Turn in Ride to Ironforge
    .accept 6388 >> Accept Gryth Thurden
    .target Golnir Bouldertoe
step << Dwarf/Gnome
    .isOnQuest 6388
    .goto 1455/0,-1152.40,-4821.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r, the gryphon master
    >>|cRXP_WARN_Don't fly anywhere: keep Return to Brock for your next trip to Loch Modan|r
    .turnin 6388 >> Turn in Gryth Thurden
    .accept 6392 >> Accept Return to Brock
    .target Gryth Thurden
step
    .goto 1455,55.09,58.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nissa Firestone|r, the First Aid trainer just south of the gryphon master
    >>|cRXP_WARN_Bandages use Linen Cloth: keep yours for Tailoring and the paladin's class quest for now|r
    .skill firstaid,1 >> Learn First Aid
    .target Nissa Firestone
step
    .goto 1455,44.029,50.074,20,0
    .goto 1455/0,-1026.28,-4872.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senator Barin Redstone|r in the throne room
    .turnin 291 >> Turn in The Reports
    .target Senator Barin Redstone
step
    #completewith next
    #label DeeprunTram
    .goto 1455/0,-1330.28,-4840.430
    .subzone 2257 >> Enter the Deeprun Tram: you'll ride it to Stormwind
step
    .xp <10,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monty|r on the middle platform of the Deeprun Tram
    .accept 6661 >> Accept Deeprun Rat Roundup
    .target Monty
step
    .isOnQuest 6661
    >>|cRXP_WARN_Use the|r |T133942:0|t[Rat Catcher's Flute] |cRXP_WARN_on|r |cRXP_ENEMY_Deeprun Rats|r |cRXP_WARN_around the tram station|r
    .complete 6661,1 --Rats Captured (5)
    .use 17117
    .mob Deeprun Rat
step
    .isOnQuest 6661
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monty|r on the middle platform
    .turnin 6661 >> Turn in Deeprun Rat Roundup
    .accept 6662 >> Accept Me Brother, Nipsy
    .target Monty
step
    .isOnQuest 6662
    >>|cRXP_WARN_Take the Deeprun Tram to Stormwind|r
    >>|cRXP_WARN_On the ride, turn your|r |T132889:0|t[Linen Cloth] |cRXP_WARN_into|r |T132890:0|t[Bolts of Linen Cloth] << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nipsy|r on the middle platform on the Stormwind side
    .turnin 6662 >> Turn in Me Brother, Nipsy
    .target Nipsy
]])

-- Elwynn Forest, from the Stormwind end of the tram until Elwynn stops being worth it, then back to Loch Modan.
-- The core is RestedXP's Forever "11-12 Elwynn (Dwarf/Gnome)" route with the Fargodeep and Jasperlode mines and the
-- Young Lovers deliveries added. Level 12 is a target, not a requirement: Riverpaw Gnoll Bounty, Hogger and any
-- grinding are left out because Loch Modan pays better by then. The Hearthstone stays bound in Thelsamar (guide 2),
-- so Redridge ends with a flight to Stormwind, and the guide ends with Report to Gryan Stoutmantle, the Sentinel
-- Hill flight path and a hearth to Thelsamar. Mages: Speak with Jennea (Zaldimar in Goldshire) goes in on the
-- Stormwind stop after Redridge, Mirror Lake's water comes from the waterfall next to the Applejack Still, and a
-- flight from Sentinel Hill to Stormwind hands it in before the hearth. That last Stormwind trip also buys 2 Minor
-- Mana Potions at the Auction House and trains and crafts Novice Arcanist's Sash (they're its reagent; it needs 35
-- Tailoring) and Green Linen Bracers. Meanwhile a level 12 Dwarf paladin flies from Sentinel Hill to Ironforge for
-- the start of The Tome of Divinity (Brandur, Tiza, John Turner, Muiredon) and hearths from there. Gathering quests
-- are left out except Red Linen Goods, whose bandanas drop from Defias on the route: its accept step says OPTIONAL
-- and the steps that follow skip themselves when you didn't take it. Collecting Kelp (and with it The Escape) and Bottles and Baubles are out:
-- Crystal Lake's murlocs and junk piles won't hold up on launch day. Guard Thomas doesn't offer Bounty on Murlocs
-- in Forever. Downstream is a required step: its three items lie on the way to Croaky and respawn instantly. A Bundle of Trouble is skipped on
-- purpose: its wood bundles are slow and contested on a busy server. Forever's Tower of Azora quests: Delicate
-- Instruments (Kobold Geomancers at Jasperlode, then Defias Rogue Wizards on the way to Rolf) is OPTIONAL because
-- only about seven Geomancers spawn; Stolen Enchanting Supplies is left out (crates in gnoll camps off the route).
-- The mage's An Enchanting Lesson (Kitta Firewind, top of the tower, enchanters only) rides on the same Geomancers:
-- they drop Crude Wax Effigies that disenchant into Luminous Residue. No farming: if the kills don't give 3, drop it.
-- Applejack Still and An Apple Treat (apples from Homer Stonefield, the still by the Mirror Lake falls, Sergeant De
-- Vries at Westbrook) fit the walk to Westbrook. Both are hand-ins with no quest giver; the still is repeatable and
-- pays no XP, and An Apple Treat pays 625. Hogger and Goldtooth stay out: Hogger's turn-in is in Goldshire,
-- which the route has already left, and Goldtooth is a single spawn in a crowded mine. Stormpike's Delivery (for
-- Loch Modan) is tried at Grimand Elmore off the tram; if he wants Elmore's Task first, Smith Argus gives it and the
-- post-Redridge stop in Stormwind swaps it. 1429 is Elwynn Forest, 1453 Stormwind City, 1433 Redridge Mountains and
-- 1436 Westfall.
RXPGuides.RegisterGuide([[
#forever
#version 29
<< Alliance
#group TimmyGnome
#name 10-12 Elwynn Forest
#next 12-14 Loch Modan

step
    .goto 1453/0,685.22,-8387.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tLeave the tram station and talk to |cRXP_FRIENDLY_Grimand Elmore|r in the Dwarven District
    >>|cRXP_WARN_If he doesn't offer Stormpike's Delivery yet, skip this step: Elmore's Task in Goldshire unlocks it|r
    .accept 353 >> Accept Stormpike's Delivery
    .target Grimand Elmore
step
    .goto 1453,52.90,50.65,15,0
    .goto 1453,51.82,48.68,15,0
    .goto 1453,51.93,46.14,15,0
    .goto 1453,53.00,44.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tNo First Aid from Ironforge yet? Talk to |cRXP_FRIENDLY_Shaina Fuller|r in the Cathedral of Light, on your way from the Dwarven District to the Trade District
    >>|cRXP_WARN_Bandages use Linen Cloth: hold off until the mage's Tailoring linen and the paladin's 10 for his class quest are put aside|r
    .skill firstaid,1 >> Learn First Aid
    .target Shaina Fuller
step
    .goto 1453,55.09,69.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Catherine Leland|r, the fishing supplier on the canal just west of the Trade District
    >>|cRXP_BUY_Buy 1|r |T134335:0|t[Shiny Bauble] |cRXP_BUY_and 3 Nightcrawlers (about 3s 50c) now: Gilbert Gray at the harbor gives you Fishin' Time and takes them straight back for 900 XP|r
    .collect 6529,1 --Shiny Bauble (1)
    .collect 6530,3 --Nightcrawlers (3)
    .target Catherine Leland
step
    .goto 1453,54.99,69.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arnold Leland|r, the fishing trainer next to Catherine
    >>|cRXP_WARN_Catherine sells the Fishing Pole too, if you want to start fishing|r
    .skill fishing,1 >> Learn Fishing
    .target Arnold Leland
step << Mage
    #label TailoringStop
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTailoring stop. If you're short on linen, buy it from |cRXP_FRIENDLY_Auctioneer Jaxon|r in the Trade District
    >>|cRXP_WARN_You want about 72|r |T132889:0|t[Linen Cloth] |cRXP_WARN_in total, counting each bolt as 2, plus 12 for each reagent bag you make your party|r
    +Buy the linen you're missing, or tick this if you have enough
    .target Auctioneer Jaxon
step << Mage
    .train 7411,3
    .skill enchanting,20,1
    .goto 1453,52.80,74.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessara Cordell|r, the enchanting supplies vendor in the Mage Quarter, on the way to the tailoring shop
    >>|cRXP_WARN_Motes are 10c each. Buy one extra if your Enchanting is below 11|r
    .collect 247786,9 >> Buy 9 Motes of Magic
    .target Jessara Cordell
step << Mage
    .train 7411,3
    >>|cRXP_WARN_Cast Enchant Bracer - Inferior Stamina on your bracer until Enchanting reaches 20: every cast is a skill point. That completes Camping 101: Enchanting|r
    .skill enchanting,20 >> Reach 20 Enchanting
step << Mage
    >>|cRXP_WARN_Turn all your|r |T132889:0|t[Linen Cloth] |cRXP_WARN_into|r |T132890:0|t[Bolts of Linen Cloth]|cRXP_WARN_: each bolt is a skill point up to about 25, where the gear recipes unlock|r
    .skill tailoring,25 >> Reach 25 Tailoring
step << Mage
    .goto 1453,53.48,81.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lawrence Schneider|r at the tailoring shop
    .train 7624 >> Train White Linen Robe
    .train 3914 >> Train Brown Linen Pants
    .train 3840 >> Train Heavy Linen Gloves
    .target Lawrence Schneider
step << Mage
    .goto 1453,53.30,81.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Antonio Bolero|r, the tailoring recipe vendor in the same shop
    >>|cRXP_BUY_Buy|r [Pattern: Linen Reagent Bag] |cRXP_BUY_(about 1s 50c, needs 5 Tailoring) and use it to learn the recipe|r
    .train 1257013 >> Learn Linen Reagent Bag
    .target Antonio Bolero::258568
step << Mage
    .goto 1453,53.14,81.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexandra Bolero|r in the same shop
    >>|cRXP_BUY_Buy|r |T132891:0|t[Coarse Thread] |cRXP_BUY_(one per item, three per Linen Bag, three for the cape, six for the Linen Reagent Bag, and six more for each reagent bag you make your partner) and 1 Bleach for the robe|r
    .collect 2320,19 --Coarse Thread (19)
    .collect 2324,1 --Bleach (1)
    .target Alexandra Bolero
step << Mage
    >>|cRXP_WARN_Craft a White Linen Robe (Intellect), Brown Linen Pants and Heavy Linen Gloves (Spell Power), then equip them|r
    >>|cRXP_WARN_Spare bolts: a Linen Bag (6 slots) if you need room, then extra Brown Linen Pants for skill points|r
    .collect 6241,1 --White Linen Robe (1)
    .collect 4343,1 --Brown Linen Pants (1)
    .collect 4307,1 --Heavy Linen Gloves (1)
step << Mage
    >>|cRXP_WARN_Craft a Linen Reagent Bag (6 bolts and 6 Coarse Thread) and equip it: 6 slots for your reagents|r
    >>|cRXP_WARN_Got the bolts and silver to spare? Craft one for each party member too: it's tradeable|r
    .collect 253664,1 --Linen Reagent Bag (1)
step << Mage
    .goto 1453,53.48,81.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tOPTIONAL nice-to-have: |cRXP_FRIENDLY_Lawrence Schneider|r also teaches the Reinforced Linen Cape, a Spell Power cloak (level 7) from 2 bolts and 3 Coarse Thread
    >>|cRXP_WARN_It needs more Tailoring than the robe, pants and gloves. If he won't teach it yet, make a few more Brown Linen Pants first, or skip this step|r
    .train 2397 >> Train Reinforced Linen Cape
    .collect 2580,1 >> Craft a Reinforced Linen Cape, then equip it
    .target Lawrence Schneider
step << Mage
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
    >>|cRXP_WARN_Still no Lesser Magic Wand from Ironforge? Disenchant a spare pair of pants for a|r |T132867:0|t[Lesser Magic Essence]|cRXP_WARN_, then craft the|r |T135139:0|t[Lesser Magic Wand] |cRXP_WARN_(it also takes a Simple Wood) and equip it|r
    .collect 11287,1 --Lesser Magic Wand (1)
step << Mage
    #completewith ArcanistCraft
    +|cRXP_WARN_Keep your Linen Cloth from here on: back in Stormwind at the end of Elwynn you craft Novice Arcanist's Sash (8 bolts) and Green Linen Bracers (3 bolts). That's 22 linen, plus spares if you still need Tailoring 35 for the Sash|r
step
    .goto 1453,26.0,47.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHead west to Stormwind Harbor and talk to |cRXP_FRIENDLY_Gilbert Gray|r at the south end of the harbor: accept Fishin' Time and hand it straight back with the bauble and nightcrawlers
    .accept 95065 >> Accept Fishin' Time
    .turnin 95065 >> Turn in Fishin' Time
    .target Gilbert Gray
step
    .goto 1453,30.0,29.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Manifest Clerk Philmor|r further up the harbor
    .accept 97220 >> Accept Philmor's Favor
    .target Manifest Clerk Philmor
step
    .isOnQuest 97220
    .goto 1453,66.56,73.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTake Philmor's delivery back to Trias' Cheese in the Trade District, next to the gryphon master
    >>|cRXP_WARN_If your quest log points at the stockroom entrance on the building's second floor, drop it off there|r
    .turnin 97220 >> Turn in Philmor's Favor
    .target +Elaine Trias
    .target +Elling Trias
step
    .goto 1453,66.56,73.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaine Trias|r in Trias' Cheese
    >>|cRXP_WARN_Take Gatehouse Goods if she offers it. Skip this step if she doesn't|r
    .accept 97222 >> Accept Gatehouse Goods
    .target Elaine Trias
step
    .isOnQuest 97222
    .goto 1453,66.56,73.37
    >>|cRXP_WARN_Carry the Gatehouse Shipment up to the stockroom entrance on the second floor of the same building, then hand the quest in where your quest log says|r
    .turnin 97222 >> Turn in Gatehouse Goods
step
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r, the gryphon master in the Trade District
    .fp Stormwind >> Get the Stormwind flight path
    .target Dungar Longdrink
step
    #completewith next
    .goto 1429/0,74.02,-9465.52
    .subzone 87 >> Leave Stormwind by the main gate and follow the road south to Goldshire
step
    .goto 1429/0,72.81,-9496.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .accept 40 >> Accept A Fishy Peril
    .target Remy "Two Times"
step
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 40 >> Turn in A Fishy Peril
    .accept 35 >> Accept Further Concerns
    .accept 62 >> Accept The Fargodeep Mine
    .target Marshal Dughan
step << Paladin
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Train your level 10 spells
    .target Brother Wilhelm
step << !Mage !Paladin
    >>Visit your class trainer in Goldshire
    .trainer >> Train your level 10 spells
step << Paladin
    #sticky
    >>|cRXP_WARN_Keep the|r |T132889:0|t[Linen Cloth] |cRXP_WARN_you loot: your level 12 class quest, The Tome of Divinity, asks for 10|r
    .collect 2589,10 --Linen Cloth (10)
step << Mage
    #completewith next
    .goto 1429/0,12.52,-9479.85,9 >> Go upstairs in the inn
step << Mage
    .goto 1429/0,34.28,-9471.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldimar Wefhellt|r upstairs
    .trainer >> Train your level 10 spells (Frost Nova and new ranks)
    .target Zaldimar Wefhellt
step << Mage
    .goto 1429/0,34.28,-9471.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldimar Wefhellt|r again: at level 10 he has a mage quest
    >>|cRXP_WARN_It goes in at Jennea Cannon when you fly back to Stormwind from Redridge|r
    .accept 1860 >> Accept Speak with Jennea
    .target Zaldimar Wefhellt
step
    .goto 1429/0,181.44,-9842.17,15,0
    .goto 1429/0,149.86,-9793.80
    >>Head south to Fargodeep Mine and walk into one of the big open caves inside
    .complete 62,1 --Scout through the Fargodeep Mine
step
    .goto 1429/0,37.61,-10014.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybell Maclure|r at the Maclure Vineyards
    .accept 106 >> Accept Young Lovers
    .target Maybell Maclure
step
    .goto 1429/0,499.72,-9930.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tommy Joe Stonefield|r by the river, west of the Stonefield farm
    .turnin 106 >> Turn in Young Lovers
    .accept 111 >> Accept Speak with Gramma
    .target Tommy Joe Stonefield
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gramma Stonefield|r inside the farmhouse, then |cRXP_FRIENDLY_Ma Stonefield|r and |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r outside
    >>|cRXP_WARN_Lost Necklace goes to Billy Maclure on your last trip south|r
    .turnin 111 >> Turn in Speak with Gramma
    .accept 107 >> Accept Note to William
    .goto 1429,34.945,83.855
    .target +Gramma Stonefield
    .accept 88 >> Accept Princess Must Die!
    .goto 1429/0,332.43,-9894.99
    .target +Ma Stonefield
    .accept 85 >> Accept Lost Necklace
    .goto 1429/0,338.47,-9889.69
    .target +"Auntie" Bernice Stonefield
step
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack in Goldshire, talk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 62 >> Turn in The Fargodeep Mine
    .accept 76 >> Accept The Jasperlode Mine
    .target Marshal Dughan
step
    .goto 1429/0,87.87,-9462.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSell your trash and repair at |cRXP_FRIENDLY_Andrew Krighton|r in the smithy
    .vendor >> Sell your trash and repair
    .target Andrew Krighton
step
    .isNotOnQuest 353
    .goto 1429/0,87.87,-9456.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smith Argus|r in the smithy
    >>|cRXP_WARN_Grimand Elmore wouldn't give you Stormpike's Delivery: this unlocks it when you pass through Stormwind after Redridge|r
    .accept 1097 >> Accept Elmore's Task
    .target Smith Argus
step
    .goto 1429/0,31.92,-9460.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r at the Lion's Pride Inn
    .turnin 107 >> Turn in Note to William
    .target William Pestle
step
    .goto 1429,65.0,70.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hamish Bergwort|r at the Tower of Azora, on the road east
    >>|cRXP_WARN_OPTIONAL: Delicate Instruments wants 8 Kobold Geomancers around Jasperlode, and only about seven spawn there. If they're camped, skip this step (it also skips part two)|r
    >>|cRXP_WARN_Leave Stolen Enchanting Supplies from Blixie Fitzwink: its crates sit in gnoll camps off the route and will be swarmed|r
    .accept 91723 >> Accept Delicate Instruments
    .target Hamish Bergwort
step << Mage
    .isOnQuest 91723
    .train 7411,3
    .goto 1429,64.93,70.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClimb to the top floor of the tower and talk to |cRXP_FRIENDLY_Kitta Firewind|r. Only enchanters get this one
    >>|cRXP_WARN_480 XP for 3 Luminous Residue, which you get by disenchanting the Crude Wax Effigies that Kobold Geomancers drop: the same kills as Delicate Instruments|r
    .accept 91753 >> Accept An Enchanting Lesson
    .target Kitta Firewind
step
    #completewith GeomancersDone
    .isOnQuest 91723
    >>Kill |cRXP_ENEMY_Kobold Geomancers|r around the mine as you go. Each kill counts for both of you
    .complete 91723,1 --Kobold Geomancer (8)
    .mob Kobold Geomancer
step << Mage
    #completewith GeomancersDone
    .isOnQuest 91753
    >>|cRXP_WARN_Loot the|r |cRXP_LOOT_Crude Wax Effigies|r |cRXP_WARN_from the Kobold Geomancers and Disenchant them into|r |cRXP_LOOT_Luminous Residue|r|cRXP_WARN_. Don't farm: whatever the Delicate Instruments kills give you is enough|r
    .complete 91753,1 --Luminous Residue (3)
step << Paladin
    #completewith GeomancersDone
    .isOnQuest 91723
    +|cRXP_WARN_Tim is also doing An Enchanting Lesson, an enchanters-only quest from Kitta Firewind at the top of the tower. Kobold Geomancers drop Crude Wax Effigies for it: let him have every one (pass on the roll, or trade him any you loot)|r
    >>|cRXP_WARN_He climbs the tower to Kitta now, and again to hand it in when you come back for Delicate Instruments part two|r
step
    #completewith next
    .goto 1429/0,-604.49,-9180.39,15 >> Head to the Jasperlode Mine
step
    .goto 1429/0,-588.73,-9130.67,15,0
    .goto 1429/0,-572.07,-9116.55,15,0
    .goto 1429/0,-560.62,-9100.58
    >>Follow the tunnel through the middle of the mine
    .complete 76,1 --Scout through the Jasperlode Mine
step
    #label GeomancersDone
    .isOnQuest 91723
    #loop
    .goto 1429,61.26,51.66,0
    .goto 1429,62.2,55.74,0
    .goto 1429,64.5,56.72,0
    .goto 1429,61.26,51.66,30,0
    .goto 1429,62.2,55.74,30,0
    .goto 1429,64.49,56.55,30,0
    .goto 1429,63.53,58.32,30,0
    .goto 1429,60.97,56.51,30,0
    >>Finish the |cRXP_ENEMY_Kobold Geomancers|r around the mine entrance
    .complete 91723,1 --Kobold Geomancer (8)
    .mob Kobold Geomancer
step
    .isQuestComplete 91723
    .goto 1429,65.0,70.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack at the Tower of Azora, talk to |cRXP_FRIENDLY_Hamish Bergwort|r
    >>|cRXP_WARN_Part two's 6 Defias Rogue Wizards are on your way to Rolf|r
    .turnin 91723 >> Turn in Delicate Instruments
    .accept 91724 >> Accept Delicate Instruments
    .target Hamish Bergwort
step << Mage
    .isQuestComplete 91753
    .goto 1429,64.93,70.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClimb back to |cRXP_FRIENDLY_Kitta Firewind|r on the top floor
    .turnin 91753 >> Turn in An Enchanting Lesson
    .target Kitta Firewind
step << Mage
    .isOnQuest 91753
    .isQuestNotComplete 91753
    >>|cRXP_WARN_Short of 3 Luminous Residue? Drop the quest rather than farm more Geomancers|r
    .abandon 91753 >> Abandon An Enchanting Lesson
step
    #completewith next
    .goto 1429/0,-1032.06,-9610.23,30 >> Follow the road east to the bridge
step
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r at the east bridge
    .turnin 35 >> Turn in Further Concerns
    .accept 37 >> Accept Find the Lost Guards
    .accept 52 >> Accept Protect the Frontier
    .target Guard Thomas
step
    .goto 1429/0,-1222.40,-9531.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r at the Eastvale Logging Camp, just past the bridge
    >>|cRXP_WARN_OPTIONAL (loot): 6 Red Linen Bandanas. They drop from the Defias Rogue Wizards on your way to Rolf and the Defias Bandits around Princess. Skip this step to leave it|r
    .accept 83 >> Accept Red Linen Goods
    .target Sara Timberlain
step
    #completewith ThomasReturn
    .isOnQuest 83
    >>Loot |cRXP_LOOT_Red Linen Bandanas|r from the |cRXP_ENEMY_Defias|r you kill
    .complete 83,1 --Red Linen Bandana (6)
    .mob Defias Rogue Wizard
    .mob Defias Bandit
step
    #completewith ThomasReturn
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Young Forest Bears|r as you go
    .complete 52,1 --Prowler (8)
    .mob +Prowler
    .complete 52,2 --Young Forest Bear (5)
    .mob +Young Forest Bear
step
    .goto 1429/0,-986.35,-9336.06
    >>Follow the river north. Click |cRXP_PICK_A half-eaten body|r on the ground
    .turnin 37 >> Turn in Find the Lost Guards
    .accept 45 >> Accept Discover Rolf's Fate
step
    .isOnQuest 91724
    #loop
    .goto 1429,73.4,49.8,0
    .goto 1429,74.5,52.4,0
    .goto 1429,73.9,55.6,0
    .goto 1429,72.6,46.4,35,0
    .goto 1429,73.4,49.8,35,0
    .goto 1429,74.5,52.4,35,0
    .goto 1429,73.1,54.2,35,0
    .goto 1429,73.9,55.6,35,0
    .goto 1429,76.6,53.4,35,0
    .goto 1429,76.8,48.6,35,0
    .goto 1429,74.4,47.0,35,0
    >>Kill |cRXP_ENEMY_Defias Rogue Wizards|r north of the body, up toward Stone Cairn Lake
    .complete 91724,1 --Defias Rogue Wizard (6)
    .mob Defias Rogue Wizard
step
    .goto 1429/0,-1234.31,-9224.18
    >>Click |cRXP_PICK_Rolf's corpse|r in the murloc camp at Stone Cairn Lake
    >>|cRXP_WARN_The murlocs here come in packs: pull them carefully|r
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step
    .goto 1429/0,-1119.7708,-9603.7687
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHead back south and talk to |cRXP_FRIENDLY_Ormin Pelford|r near the bridge
    >>|cRXP_WARN_Don't take A Bundle of Trouble from Supervisor Raelen at the logging camp: it's skipped (too slow with a crowd)|r
    .accept 91733 >> Accept Downstream
    .target Ormin Pelford
step
    .goto 1429,74.3,76.4
    >>Follow the river south. Loot the |cRXP_PICK_Waterlogged Saw|r on the bank
    >>|cRXP_WARN_The three Downstream items respawn right away if someone beats you to one|r
    .complete 91733,2 --Waterlogged Saw (1)
step
    .goto 1429,76.7,82.5
    >>Loot the |cRXP_PICK_Waterlogged Axe|r
    .complete 91733,1 --Waterlogged Axe (1)
step
    .goto 1429,77.3,86.8
    >>Loot the |cRXP_PICK_Waterlogged Toolbox|r
    .complete 91733,3 --Waterlogged Toolbox (1)
step
    .goto 1429/0,-1119.80,-9931.30
    >>Kill |cRXP_ENEMY_Croaky|r, a level 11 elite. Loot him for |T134169:0|t[|cRXP_LOOT_Croaky's Head|r]
    >>|cRXP_WARN_Each of you needs a head. If only one drops, try sharing the quest|r
    .use 247826 >> |cRXP_WARN_Use|r |T134169:0|t[|cRXP_LOOT_Croaky's Head|r] |cRXP_WARN_to start the quest|r
    .collect 247826,1,91740,1 --Croaky's Head (1)
    .accept 91740 >> Accept Croaky's Head
    .mob Croaky
step
    #loop
    .goto 1429,77.499,74.518,0
    .goto 1429,80.496,78.223,0
    .goto 1429,87.342,63.763,0
    .goto 1429,77.499,74.518,55,0
    .goto 1429,77.222,77.499,55,0
    .goto 1429,78.483,79.323,55,0
    .goto 1429,80.496,78.223,55,0
    .goto 1429,81.434,76.695,55,0
    .goto 1429,87.145,69.922,55,0
    .goto 1429,87.342,63.763,55,0
    >>Finish the |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Young Forest Bears|r east of the river
    .complete 52,1 --Prowler (8)
    .mob +Prowler
    .complete 52,2 --Young Forest Bear (5)
    .mob +Young Forest Bear
step
    .goto 1429/0,-869.87,-9768.10
    >>Kill |cRXP_ENEMY_Princess|r at the Brackwell Pumpkin Patch. Loot her for the |cRXP_LOOT_Brass Collar|r
    >>|cRXP_WARN_Two|r |cRXP_ENEMY_Porcine Entourage|r |cRXP_WARN_fight with her, and her charge hits hard|r
    .complete 88,1 --Brass Collar (1)
    .mob Princess
step
    .isOnQuest 83
    #loop
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    >>Finish the |cRXP_LOOT_Red Linen Bandanas|r on the |cRXP_ENEMY_Defias Bandits|r around the pumpkin patch
    .complete 83,1 --Red Linen Bandana (6)
    .mob Defias Bandit
step
    .isQuestComplete 91724
    .goto 1429,65.0,70.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hamish Bergwort|r at the Tower of Azora, just north-west of the pumpkin patch
    .turnin 91724 >> Turn in Delicate Instruments
    .target Hamish Bergwort
step
    #label ThomasReturn
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    >>|cRXP_WARN_Report to Gryan Stoutmantle goes in at Sentinel Hill, where the guide ends|r
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
    .accept 39 >> Accept Deliver Thomas' Report
    .accept 109 >> Accept Report to Gryan Stoutmantle
    .target Guard Thomas
step
    .goto 1429/0,-1119.7708,-9603.7687
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormin Pelford|r
    .turnin 91733 >> Turn in Downstream
    .target Ormin Pelford
step
    .isQuestComplete 83
    .goto 1429/0,-1222.40,-9531.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r at the logging camp
    .turnin 83 >> Turn in Red Linen Goods
    .target Sara Timberlain
step
    .isOnQuest 91740
    .goto 1429/0,-1406.20,-9775.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merell Ross|r at Ridgepoint Tower
    .turnin 91740 >> Turn in Croaky's Head
    .target Merell Ross::248277
step
    .goto 1429,80.56,80.23,0
    .xp 11 >> Reach level 11: Encroaching Gnolls in Redridge needs it
    .mob Prowler
step
    #completewith next
    .goto 1433/0,-1948.56,-9582.75
    .zone Redridge Mountains >> Follow the road east into Redridge Mountains
step
    .goto 1433/0,-1906.40,-9606.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r at the tower by the border
    .accept 244 >> Accept Encroaching Gnolls
    .target Guard Parker
step
    .goto 1433/0,-2238.00,-9443.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFollow the road to Lakeshire and talk to |cRXP_FRIENDLY_Deputy Feldon|r
    >>|cRXP_WARN_Stay on the road: the mobs beside it are level 15 and up|r
    .turnin 244 >> Turn in Encroaching Gnolls
    .target Deputy Feldon
step
    .goto 1433/0,-2234.90,-9435.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r, the gryphon master
    >>|cRXP_WARN_Keep your Hearthstone: it takes you back to Loch Modan at the end|r
    .fp Lakeshire >> Get the Lakeshire flight path
    .fly Stormwind >> Fly to Stormwind
    .target Ariena Stormfeather
step
    .isOnQuest 1097
    .goto 1453/0,685.22,-8387.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimand Elmore|r in the Dwarven District
    .turnin 1097 >> Turn in Elmore's Task
    .accept 353 >> Accept Stormpike's Delivery
    .target Grimand Elmore
step << Mage
    #completewith next
    .isOnQuest 1860
    .goto 1453/0,942.34,-9001.49,15,0
    .goto 1453/0,949.86,-9009.38,10,0
    .goto 1453/0,962.63,-8990.73,15,0
    .goto 1453/0,928.62,-9010.10,15,0
    .goto 1453/0,863.96,-9001.40,8,0
    .goto 1453/0,877.00,-9008.03,6,0
    .goto 1453/0,868.8,-9004.27,8,0
    .goto 1453/0,871.36,-9013.14,10,0
    .goto 1453/0,887.22,-9017.80,10 >> Go into the Wizard's Sanctum in the Mage Quarter and follow its ramp to |cRXP_FRIENDLY_Jennea|r
step << Mage
    .isOnQuest 1860
    .goto 1453/0,861.95,-8990.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea Cannon|r in the Wizard's Sanctum
    >>|cRXP_WARN_Mirror Lake hands you Jennea's Flask: you fill it at the Mirror Lake waterfall on the way to the Applejack Still|r
    >>|cRXP_WARN_She doesn't offer Mirror Lake? If Mage-tastic Gizmonitor (Bink's quest from Ironforge) is in your quest log, abandon it and talk to her again: the two are alternatives, and Bink's blocks hers|r
    .turnin 1860 >> Turn in Speak with Jennea
    .accept 1861 >> Accept Mirror Lake
    .target Jennea Cannon
step << Mage
    .xp <12,1
    .goto 1453/0,861.95,-8990.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea Cannon|r again: she's a mage trainer
    .train 145 >> Train your level 12 spells (Fireball rank 3, Dampen Magic)
    .target Jennea Cannon
step
    #completewith next
    .goto 1429/0,74.02,-9465.52
    .subzone 87 >> Leave Stormwind by the main gate and walk to Goldshire
step
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 39 >> Turn in Deliver Thomas' Report
    .turnin 76 >> Turn in The Jasperlode Mine
    .accept 239 >> Accept Westbrook Garrison Needs Help!
    .target Marshal Dughan
step
    .goto 1429/0,87.87,-9462.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSell your trash and repair at |cRXP_FRIENDLY_Andrew Krighton|r
    .vendor >> Sell your trash and repair
    .target Andrew Krighton
step
    .isOnQuest 85
    .goto 1429/0,38.41,-9923.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHead south to the Maclure Vineyards and talk to |cRXP_FRIENDLY_Billy Maclure|r
    >>|cRXP_WARN_Don't take Pie for Billy: it's a boar meat collection quest|r
    .turnin 85 >> Turn in Lost Necklace
    .target Billy Maclure
step
    .goto 1429/0,332.43,-9894.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r at the Stonefield farm
    .turnin 88 >> Turn in Princess Must Die!
    .target Ma Stonefield
step
    .goto 1429,33.69,82.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Homer Stonefield|r, the fruit seller at the farm
    >>|cRXP_BUY_Buy 4 Shiny Red Apples (about 1 silver) for the Applejack Still on the way to Westbrook|r
    .collect 4536,4 --Shiny Red Apple (4)
    .target Homer Stonefield
step << Mage
    .isOnQuest 1861
    .goto 1429/0,529.57,-9363.05
    >>|cRXP_WARN_On the way to the still, use|r |T132788:0|t[Jennea's Flask] |cRXP_WARN_at the base of the Mirror Lake waterfall (5 second cast)|r
    .use 7207
    .complete 1861,1 --Mirror Lake Water Sample (1)
step
    #completewith next
    .goto 1429,27.60,58.32,10 >> Climb the hill here: it's the way up to the Applejack Still
step
    .goto 1429,24.0,58.0
    >>Head north-west to the |cRXP_PICK_Applejack Still|r by the Mirror Lake falls. Kill the |cRXP_ENEMY_Defias Bandits|r guarding it
    >>|cRXP_WARN_There's nothing to accept: it's a hand-in. Out of combat, stand right next to the still and right-click the device itself (the floating ? isn't clickable) with the 4 apples in your bags|r
    >>|cRXP_WARN_It's repeatable and pays no XP: one Thunder Applejack is all you need. The XP comes from Sergeant De Vries at Westbrook|r
    .turnin 91736 >> Turn in Applejack Still
    .mob Defias Bandit
step
    #completewith next
    .goto 1429/0,673.96,-9704.45,80 >> Head south to Westbrook Garrison
step
    .itemcount 247824,1
    .goto 1429,24.08,73.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant De Vries|r at Westbrook Garrison and hand him the |cRXP_LOOT_Thunder Applejack|r (625 XP)
    .turnin 91738 >> Turn in An Apple Treat
    .target Sergeant De Vries
step
    .goto 1429/0,694.29,-9662.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r at Westbrook Garrison
    >>|cRXP_WARN_Skip Riverpaw Gnoll Bounty and the Hogger poster: Loch Modan is better XP from here|r
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
    .target Deputy Rainer
step
    #completewith next
    .goto 1436/0,918.42,-9851.50
    .zone Westfall >> Follow the road west into Westfall
step
    .goto 1436/0,919.47,-9853.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verna Furlbrow|r at the farm by the road
    .accept 36 >> Accept Westfall Stew
    .target Verna Furlbrow
step
    .goto 1436/0,1042.67,-10111.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFollow the road south and talk to |cRXP_FRIENDLY_Salma Saldean|r at the Saldean farm
    >>|cRXP_WARN_Don't take her follow-ups: they're Westfall collection quests|r
    .turnin 36 >> Turn in Westfall Stew
    .target Salma Saldean
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tKeep following the road south to Sentinel Hill and talk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    >>|cRXP_WARN_Skip The People's Militia: you're heading back to Loch Modan|r
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
    .target Gryan Stoutmantle
step << Mage
    .goto 1436,57.64,54.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gina MacGregor|r, the trade supplies vendor just past the gryphon master
    >>|cRXP_BUY_Buy|r [Pattern: Red Linen Bag] |cRXP_BUY_(about 2s). You can learn it at 50 Tailoring: an 8-slot bag from 4 bolts, 1 Fine Thread and 1 Red Dye, and a point every craft until 75. Sold out? Skip this step|r
    .collect 5771,1 >> Buy Pattern: Red Linen Bag
    .target Gina MacGregor
step
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r, the gryphon master
    .fp Sentinel Hill >> Get the Sentinel Hill flight path
    .target Thor
step << Mage
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBefore you hearth, talk to |cRXP_FRIENDLY_Thor|r and fly to Stormwind: the Auction House, two Tailoring recipes and Jennea. It's a short flight, and your Hearthstone works from there
    >>|cRXP_WARN_Your partner flies to Ironforge for his class quest meanwhile. You meet up again in Thelsamar|r
    .fly Stormwind >> Fly to Stormwind
    .target Thor
step << Mage
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r in the Trade District
    >>|cRXP_WARN_The potions are a reagent for Novice Arcanist's Sash. Short on linen? The Sash and the Bracers take 11 Bolts of Linen Cloth (22 linen), plus any you need for skill points|r
    .collect 2455,2 >> Buy 2 Minor Mana Potions
    .target Auctioneer Jaxon
step << Mage
    .goto 1453,53.48,81.47
    >>|cRXP_WARN_Novice Arcanist's Sash needs 35 Tailoring. Short? Linen Cloak gives a point every craft until 35, for 1 bolt and 1 Coarse Thread each|r
    .skill tailoring,35 >> Reach 35 Tailoring
step << Mage
    .goto 1453,53.48,81.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lawrence Schneider|r at the tailoring shop in the Mage Quarter
    >>|cRXP_WARN_Won't he teach Green Linen Bracers yet? Craft Simple Linen Pants (a point every craft until 40) and ask again|r
    .train 1257368 >> Train Novice Arcanist's Sash
    .train 3841 >> Train Green Linen Bracers
    .target Lawrence Schneider
step << Mage
    .goto 1453,53.14,81.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexandra Bolero|r in the same shop
    >>|cRXP_BUY_Buy 2 Fine Thread for the Sash, and 2|r |T132891:0|t[Coarse Thread] |cRXP_BUY_and 1 Green Dye for the Bracers|r
    .collect 2321,2 --Fine Thread (2)
    .collect 2320,2 --Coarse Thread (2)
    .collect 2605,1 --Green Dye (1)
    .target Alexandra Bolero
step << Mage
    #label ArcanistCraft
    >>|cRXP_WARN_Craft Novice Arcanist's Sash (8 bolts, 2 Fine Thread, 2 Minor Mana Potions) and Green Linen Bracers (3 bolts, 2 Coarse Thread, 1 Green Dye), then equip them|r
    .collect 253885,1 --Novice Arcanist's Sash (1)
    .collect 4308,1 --Green Linen Bracers (1)
step << Mage
    #completewith next
    .isQuestComplete 1861
    .goto 1453/0,942.34,-9001.49,15,0
    .goto 1453/0,949.86,-9009.38,10,0
    .goto 1453/0,962.63,-8990.73,15,0
    .goto 1453/0,928.62,-9010.10,15,0
    .goto 1453/0,863.96,-9001.40,8,0
    .goto 1453/0,877.00,-9008.03,6,0
    .goto 1453/0,868.8,-9004.27,8,0
    .goto 1453/0,871.36,-9013.14,10,0
    .goto 1453/0,887.22,-9017.80,10 >> Go into the Wizard's Sanctum in the Mage Quarter and follow its ramp to |cRXP_FRIENDLY_Jennea|r
step << Mage
    .isQuestComplete 1861
    .goto 1453/0,861.95,-8990.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea Cannon|r in the Wizard's Sanctum
    >>|cRXP_WARN_Pick the Ley Staff (Intellect and Spirit) or the Ley Orb (Spirit, off-hand)|r
    .turnin 1861 >> Turn in Mirror Lake
    .target Jennea Cannon
step << Mage
    .xp <12,1
    .goto 1453/0,861.95,-8990.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHit 12 since your last visit? Train with |cRXP_FRIENDLY_Jennea Cannon|r in the Wizard's Sanctum while you're here
    .train 145 >> Train your level 12 spells (Fireball rank 3, Dampen Magic)
    .target Jennea Cannon
step << Dwarf Paladin
    .xp <12,1
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r and fly to Ironforge (the flight goes through Stormwind) to start your class quest, The Tome of Divinity, while Tim does his Stormwind errands
    >>|cRXP_WARN_You meet up again in Thelsamar: hearth there when you're done. Not 12 yet? Skip ahead and hearth now: Brandur offers it on the Ironforge stop at the end of Loch Modan|r
    .fly Ironforge >> Fly to Ironforge
    .target Thor
    .zoneskip Ironforge
step << Dwarf Paladin
    .xp <12,1
    #completewith next
    .goto 1455,35.239,32.789,20,0
    .goto 1455,27.208,12.552,20 >> Head through the Great Forge to the Mystic Ward
step << Dwarf Paladin
    .xp <12,1
    .goto 1455/0,-896.47,-4601.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r in the Mystic Ward
    .trainer >> Train your level 12 spells
    .accept 2999 >> Accept Tome of Divinity
    .target Brandur Ironhammer
step << Dwarf Paladin
    .isOnQuest 2999
    #completewith next
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10,0
    .goto 1455,27.622,12.177,12 >> Go up the stairs to |cRXP_FRIENDLY_Tiza Battleforge|r
step << Dwarf Paladin
    .isOnQuest 2999
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tiza Battleforge|r upstairs
    .turnin 2999 >> Turn in Tome of Divinity
    .accept 1645 >> Accept The Tome of Divinity
    .turnin 1645 >> Turn in The Tome of Divinity
    .target Tiza Battleforge
step << Dwarf Paladin
    .isQuestTurnedIn 1645
    .goto 1455,27.622,12.177
    >>|cRXP_WARN_Use|r |T133739:0|t[The Tome of Divinity] |cRXP_WARN_to start the next quest|r
    .accept 1646 >> Accept The Tome of Divinity
    .use 6916
step << Dwarf Paladin
    .isOnQuest 1646
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 1646 >> Turn in The Tome of Divinity
    .accept 1647 >> Accept The Tome of Divinity
    .target Tiza Battleforge
step << Dwarf Paladin
    .isOnQuest 1647
    #loop
    .line Ironforge,21.750,51.733,22.015,54.945,23.328,61.865,23.723,63.824,26.021,68.382,27.495,71.320,31.352,77.807,32.405,78.563,37.256,82.159,39.204,83.202,42.944,84.113
    .goto 1455,21.750,51.733,0
    .goto 1455,26.021,68.382,0
    .goto 1455,42.944,84.113,0
    .goto 1455,21.750,51.733,20,0
    .goto 1455,22.015,54.945,20,0
    .goto 1455,23.328,61.865,20,0
    .goto 1455,23.723,63.824,20,0
    .goto 1455,26.021,68.382,20,0
    .goto 1455,27.495,71.320,20,0
    .goto 1455,31.352,77.807,20,0
    .goto 1455,32.405,78.563,20,0
    .goto 1455,37.256,82.159,20,0
    .goto 1455,39.204,83.202,20,0
    .goto 1455,42.944,84.113,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFind |cRXP_FRIENDLY_John Turner|r: he walks the outer ring between the Stonefire Tavern and the Visitors' Center
    >>|cRXP_WARN_He takes the 10 Linen Cloth you saved|r
    .turnin 1647 >> Turn in The Tome of Divinity
    .accept 1648 >> Accept The Tome of Divinity
    .turnin 1648 >> Turn in The Tome of Divinity
    .accept 1778 >> Accept The Tome of Divinity
    .unitscan John Turner
step << Dwarf Paladin
    .isOnQuest 1778
    #completewith next
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10,0
    .goto 1455,27.622,12.177,12 >> Go back up to |cRXP_FRIENDLY_Tiza Battleforge|r
step << Dwarf Paladin
    .isOnQuest 1778
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tiza Battleforge|r upstairs
    .turnin 1778 >> Turn in The Tome of Divinity
    .accept 1779 >> Accept The Tome of Divinity
    .target Tiza Battleforge
step << Dwarf Paladin
    .isOnQuest 1779
    .goto 1455/0,-899.70,-4613.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muiredon Battleforge|r upstairs
    >>|cRXP_WARN_Narm Faulk is near the South Gate in Dun Morogh: you'll pass him on the trogg lap|r
    .turnin 1779 >> Turn in The Tome of Divinity
    .accept 1783 >> Accept The Tome of Divinity
    .target Muiredon Battleforge
step
    #label HearthLoch
    >>|cRXP_WARN_Elwynn is done: next stop, Loch Modan|r
    .hs >> Hearth to Thelsamar
    .cooldown item,6948,>2,1
    .zoneskip Loch Modan
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHearthstone on cooldown? Talk to the nearest gryphon master and fly to Thelsamar instead
    .fly Thelsamar >> Fly to Thelsamar
    .zoneskip Loch Modan
]])

-- Loch Modan, from the hearth into Thelsamar at the end of Elwynn. Built from RestedXP's Forever "12-14 Loch Modan
-- (Dwarf/Gnome)" route and the Loch Modan quests RestedXP picks up on its first visit, rearranged into laps:
-- Thelsamar; the southern guard tower's In
-- Defense of the King's Lands chain with a Dun Morogh detour (The Lost Pilot, the paladin's Narm Faulk); Snowbound
-- from the South Gate to the dam (a 10 minute jar); Algaz Station; the excavation and Farstrider Lodge in the east;
-- Ironforge to finish. Gathering quests a launch-day crowd makes slow are left out: Filthy Paws (mine crates),
-- Bingles' Missing Supplies, Crocolisk Hunting, Gathering Idols and Silver of the Waves. Rat Catching, Thelsamar
-- Blood Sausages, the two hardest trogg quests and Daryl's timed hunts are OPTIONAL. 1432 is Loch Modan, 1426 Dun
-- Morogh and 1455 Ironforge.
RXPGuides.RegisterGuide([[
#forever
#version 13
<< Alliance
#group TimmyGnome
#name 12-14 Loch Modan
#next 14+ Hall of Thanes

step
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vidra Hearthstove|r in the inn
    >>|cRXP_WARN_OPTIONAL (loot): 3 Bear Meat, 3 Boar Intestines and 3 Spider Ichor from the bears, boars and spiders all over Loch Modan. A sticky tracks them on the laps. Skip this step if you'd rather not|r
    .accept 418 >> Accept Thelsamar Blood Sausages
    .target Vidra Hearthstove
step
    .goto 1432/0,-2973.90,-5377.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSell your trash to |cRXP_FRIENDLY_Innkeeper Hearthstove|r
    .vendor >> Sell your trash
    .target Innkeeper Hearthstove
step
    .goto 1432/0,-3003.30,-5376.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grenhild Darktalon|r
    >>|cRXP_WARN_You fill the jar at the South Gate after the troggs, then have 10 minutes to reach the dam: the guide lines that up|r
    .accept 86667 >> Accept Snowbound
    .target Grenhild Darktalon
step << Dwarf/Gnome
    .isOnQuest 6392
    .goto 1432,37.26,46.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brock Stoneseeker|r
    .turnin 6392 >> Turn in Return to Brock
    .target Brock Stoneseeker
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r, who walks the road through Thelsamar
    .accept 1339 >> Accept Mountaineer Stormpike's Task
    .target Mountaineer Kadrell
step
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_WARN_OPTIONAL (loot): 12 Tunnel Rat Ears from the kobolds in the hills between Algaz Station and Thelsamar. Skip this step if you'd rather not|r
    .accept 416 >> Accept Rat Catching
    .target Mountaineer Kadrell
-- In Defense of the King's Lands: four kill quests in a row from the southern guard tower, plus The Trogg Threat on
-- the same troggs. The third and fourth are harder (level 15-17 troggs) and marked OPTIONAL.
step
    #completewith SausagePause
    .isOnQuest 418
    >>Kill |cRXP_ENEMY_Elder Black Bears|r, |cRXP_ENEMY_Mountain Boars|r and |cRXP_ENEMY_Forest Lurkers|r as you go for Thelsamar Blood Sausages
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob +Elder Black Bear
    .collect 3172,3,418,1 --Boar Intestines (3)
    .mob +Mountain Boar
    .collect 3174,3,418,1 --Spider Ichor (3)
    .mob +Forest Lurker
step
    #completewith next
    .goto 1432,34.405,48.276,30,0
    .goto 1432,27.501,65.367,30,0
    .goto 1432,23.522,70.102,30 >> Head south-west to the southern guard tower
step
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r outside the guard tower
    .accept 224 >> Accept In Defense of the King's Lands
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >> Go into the guard tower and up to the top floor
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r on the top floor
    >>|cRXP_WARN_The Trogg Threat drops from the same troggs as Cobbleflint's quest|r
    .accept 267 >> Accept The Trogg Threat
    .target Captain Rugelfuss
step
    #loop
    .goto 1432,30.2,72.7,0
    .goto 1432,33.5,77.8,0
    .goto 1432,34.9,72.0,0
    .goto 1432,30.2,72.7,40,0
    .goto 1432,31.5,75.4,40,0
    .goto 1432,31.6,79.0,40,0
    .goto 1432,32.6,79.9,40,0
    .goto 1432,33.5,77.8,40,0
    .goto 1432,34.9,76.4,40,0
    .goto 1432,34.9,72.0,40,0
    .goto 1432,33.5,70.4,40,0
    .goto 1432,32.1,72.4,40,0
    >>Kill |cRXP_ENEMY_Stonesplinter Troggs|r and |cRXP_ENEMY_Stonesplinter Scouts|r east of the tower. Loot them for |cRXP_LOOT_Trogg Stone Teeth|r
    .complete 224,1 --Stonesplinter Trogg (10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Stonesplinter Scout (10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Trogg Stone Tooth (8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .turnin 224 >> Turn in In Defense of the King's Lands
    .target Mountaineer Cobbleflint
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r on the top floor
    .turnin 267 >> Turn in The Trogg Threat
    .target Captain Rugelfuss
step
    .goto 1432,23.54,76.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Gravelgaw|r at the guard tower
    .accept 237 >> Accept In Defense of the King's Lands
    .target Mountaineer Gravelgaw
step
    #loop
    .goto 1432,28.3,83.5,0
    .goto 1432,34.5,87.5,0
    .goto 1432,36.2,83.6,0
    .goto 1432,28.0,81.3,40,0
    .goto 1432,28.3,83.5,40,0
    .goto 1432,28.8,86.6,40,0
    .goto 1432,31.3,85.4,40,0
    .goto 1432,33.7,87.4,40,0
    .goto 1432,35.4,88.6,40,0
    .goto 1432,36.3,85.9,40,0
    .goto 1432,36.2,83.6,40,0
    .goto 1432,35.5,80.5,40,0
    .goto 1432,34.5,82.4,40,0
    >>Kill |cRXP_ENEMY_Stonesplinter Skullthumpers|r and |cRXP_ENEMY_Stonesplinter Seers|r further south in the valley
    .complete 237,1 --Stonesplinter Skullthumper (10)
    .mob +Stonesplinter Skullthumper
    .complete 237,2 --Stonesplinter Seer (10)
    .mob +Stonesplinter Seer
step
    .goto 1432,23.54,76.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Gravelgaw|r
    .turnin 237 >> Turn in In Defense of the King's Lands
    .target Mountaineer Gravelgaw
step
    .goto 1432,23.47,74.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Wallbang|r
    >>|cRXP_WARN_OPTIONAL: level 15-16 troggs at the far end of the valley, a fair step up. Skip this step to leave it|r
    .accept 263 >> Accept In Defense of the King's Lands
    .target Mountaineer Wallbang
step
    .isOnQuest 263
    #loop
    .goto 1432,34.6,94.4,0
    .goto 1432,37.3,92.4,0
    .goto 1432,38.0,87.4,0
    .goto 1432,33.4,91.0,35,0
    .goto 1432,34.6,94.4,35,0
    .goto 1432,36.2,94.0,35,0
    .goto 1432,37.3,92.4,35,0
    .goto 1432,37.5,90.1,35,0
    .goto 1432,38.0,87.4,35,0
    .goto 1432,36.2,91.0,35,0
    >>Kill |cRXP_ENEMY_Stonesplinter Shamans|r and |cRXP_ENEMY_Stonesplinter Bonesnappers|r at the far end of the valley
    .complete 263,1 --Stonesplinter Shaman (10)
    .mob +Stonesplinter Shaman
    .complete 263,2 --Stonesplinter Bonesnapper (10)
    .mob +Stonesplinter Bonesnapper
step
    .isQuestComplete 263
    .goto 1432,23.47,74.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Wallbang|r
    .turnin 263 >> Turn in In Defense of the King's Lands
    .target Mountaineer Wallbang
step
    .isQuestTurnedIn 263
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r on the top floor
    >>|cRXP_WARN_OPTIONAL: Grawmug (level 17) and his two guards (16) fight together. Best at 13 or higher. Skip this step to leave it|r
    .accept 217 >> Accept In Defense of the King's Lands
    .target Captain Rugelfuss
step
    .isOnQuest 217
    .goto 1432,34.77,90.45
    >>Kill |cRXP_ENEMY_Grawmug|r, |cRXP_ENEMY_Gnasher|r and |cRXP_ENEMY_Brawler|r at the far end of the valley. Clear the troggs around them first
    .complete 217,1 --Grawmug
    .mob +Grawmug
    .complete 217,2 --Gnasher
    .mob +Gnasher
    .complete 217,3 --Brawler
    .mob +Brawler
step
    .isQuestComplete 217
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r on the top floor
    .turnin 217 >> Turn in In Defense of the King's Lands
    .target Captain Rugelfuss
-- Dun Morogh detour through the South Gate Pass: The Lost Pilot, and the paladin's Narm Faulk.
step
    #label SausagePause
    #completewith next
    .goto 1432,21.498,67.840,20,0
    .goto 1432,21.388,66.357,20,0
    .goto 1432,21.106,65.007,20,0
    .goto 1432,20.749,64.326,20,0
    .goto 1432,19.594,62.735,20,0
    .goto 1432,16.494,58.424,20,0
    .goto 1426,84.262,51.367
    .zone Dun Morogh >> Go back through the South Gate Pass into Dun Morogh
step
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHead north to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >> Accept The Lost Pilot
    .target Pilot Hammerfoot
step
    .goto 1426/0,-2121.76,-5064.70
    >>Click the |cRXP_PICK_Dwarven Corpse|r to the west
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    .goto 1426/0,-2087.19,-5096.51
    >>Kill |cRXP_ENEMY_Mangeclaw|r. Loot him for his |cRXP_LOOT_Mangy Claw|r
    .complete 417,1 --Mangy Claw (1)
    .mob Mangeclaw
step
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 417 >> Turn in A Pilot's Revenge
    .target Pilot Hammerfoot
step << Dwarf Paladin
    .isOnQuest 1783
    #completewith next
    .goto 1426/0,-2055.23,-5784.31
    .cast 8593 >> |cRXP_WARN_Use the|r |T133439:0|t[Symbol of Life] |cRXP_WARN_on|r |cRXP_FRIENDLY_Narm Faulk|r |cRXP_WARN_on the ground, south of the South Gate Pass|r
    .use 6866
    .target Narm Faulk
step << Dwarf Paladin
    .isOnQuest 1783
    .goto 1426/0,-2055.23,-5784.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm Faulk|r
    .turnin 1783 >> Turn in The Tome of Divinity
    .accept 1784 >> Accept The Tome of Divinity
    .target Narm Faulk
step << Dwarf Paladin
    .isOnQuest 1784
    .goto 1426/0,-2004.94,-5863.50,20,0
    .goto 1426/0,-2031.04,-5905.53
    >>Kill |cRXP_ENEMY_Dark Iron Spies|r at Ironband's Compound. Loot them for the |cRXP_LOOT_Dark Iron Script|r
    .complete 1784,1 --Dark Iron Script (1)
    .mob Dark Iron Spy
-- Snowbound: fill the jar right outside the tunnel, then 10 minutes to Norric Lochthane at the dam.
step
    #completewith next
    .goto 1426,84.262,51.367,20,0
    .goto 1432,16.494,58.424,20,0
    .goto 1432,19.594,62.735,20,0
    .goto 1432/0,-2534.38,-5648.28,5 >> Go back through the South Gate Pass to the snowy patch just outside the Loch Modan end
step
    .goto 1432/0,-2534.38,-5648.28
    .use 279380 >> |cRXP_WARN_Use the|r |T1387609:0|t[Ceramic Jar] |cRXP_WARN_while standing on the snowy patch|r
    >>|cRXP_WARN_The snow lasts 10 minutes: head straight for the dam, north past Thelsamar|r
    .complete 86667,1 --Jar of Snow (1)
step
    .goto 1432/0,-3146.73,-4837.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Norric Lochthane|r at the Stonewrought Dam before the snow melts
    .turnin 86667 >> Turn in Snowbound
    .target Norric Lochthane
step
    #completewith SausageFinish
    .isOnQuest 418
    >>Kill bears, boars and spiders as you go for Thelsamar Blood Sausages: |cRXP_ENEMY_Elder Black Bears|r, |cRXP_ENEMY_Mountain Boars|r and |cRXP_ENEMY_Forest Lurkers|r in the west, their |cRXP_ENEMY_Grizzled|r, |cRXP_ENEMY_Mangy|r and |cRXP_ENEMY_Cliff|r cousins in the east
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob +Elder Black Bear
    .mob +Grizzled Black Bear
    .collect 3172,3,418,1 --Boar Intestines (3)
    .mob +Mountain Boar
    .mob +Mangy Mountain Boar
    .collect 3174,3,418,1 --Spider Ichor (3)
    .mob +Forest Lurker
    .mob +Cliff Lurker
step << Paladin
    .goto 1432/0,-3176.16,-4669.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nillen Andemar|r north of the dam
    >>|cRXP_BUY_If you can afford it, buy the|r |T133476:0|t[Heavy Spiked Mace] |cRXP_BUY_or the|r |T133053:0|t[Ironwood Maul]
    +Buy one, or tick this to skip
    .target Nillen Andemar
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
-- Algaz Station, then back to Thelsamar through the hills.
step
    #completewith next
    .goto 1432,23.490,18.008,15,0
    .goto 1432,24.279,17.959,15 >> Head west to Algaz Station and go into the bunker
step
    .goto 1432/0,-2659.45,-4822.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSell your trash and repair at |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >> Sell your trash and repair
    .target Gothor Brumn
step
    .isOnQuest 353
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 353 >> Turn in Stormpike's Delivery
    .target Mountaineer Stormpike
step
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    >>|cRXP_WARN_Don't take Filthy Paws: its crates in the Silver Stream Mine will be swarmed on launch day|r
    >>|cRXP_WARN_Stormpike's Order goes to Furen Longbeard next to the tram exit in Stormwind, whenever you're next there|r
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
    .accept 1338 >> Accept Stormpike's Order
    .target Mountaineer Stormpike
step
    #completewith ThelsamarReturn
    .isOnQuest 416
    >>Kill |cRXP_ENEMY_Tunnel Rat|r kobolds in the hills on the way back. Loot them for their |cRXP_LOOT_Ears|r
    .complete 416,1 --Tunnel Rat Ear (12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
    .mob Tunnel Rat Geomancer
step
    .isOnQuest 416
    #loop
    .goto 1432/0,-2684.71,-5042.87,0
    .goto 1432/0,-2712.57,-5286.61,0
    .goto 1432/0,-3033.92,-4797.29,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92,50,0
    .goto 1432/0,-2684.71,-5042.87,50,0
    .goto 1432/0,-2712.57,-5286.61,50,0
    >>Finish the |cRXP_LOOT_Tunnel Rat Ears|r in the hills between Algaz Station and Thelsamar
    >>|cRXP_WARN_OPTIONAL: if it's crowded, skip this step and abandon Rat Catching|r
    .complete 416,1 --Tunnel Rat Ear (12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
    .mob Tunnel Rat Geomancer
step
    #label ThelsamarReturn
    #completewith next
    .goto 1432,34.405,48.276
    .subzone 144 >> Head back to Thelsamar
step
    .isQuestComplete 416
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r on the road
    .turnin 416 >> Turn in Rat Catching
    .target Mountaineer Kadrell
step
    .isQuestComplete 418
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vidra Hearthstove|r in the inn
    .turnin 418 >> Turn in Thelsamar Blood Sausages
    .target Vidra Hearthstove
step
    .goto 1432,34.02,46.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSell your trash and repair at |cRXP_FRIENDLY_Morhan Coppertongue|r
    .vendor >> Sell your trash and repair
    .target Morhan Coppertongue
-- East: the excavation's two deliveries, and Daryl's timed hunts at the Farstrider Lodge (OPTIONAL).
step
    .xp <13,1
    .goto 1432,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jern Hornhelm|r
    .accept 436 >> Accept Ironband's Excavation
    .target Jern Hornhelm
step
    #completewith next
    .goto 1432,64.9,66.66,40 >> Follow the road east around the loch to Ironband's Excavation
step
    .isOnQuest 436
    .goto 1432,64.9,66.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magmar Fellhew|r
    >>|cRXP_WARN_Don't take Gathering Idols: level 18 troggs and a loot grind|r
    .turnin 436 >> Turn in Ironband's Excavation
    .target Magmar Fellhew
step
    .goto 1432,65.93,65.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
    .accept 298 >> Accept Excavation Progress Report
    .target Prospector Ironband
step
    .goto 1432,64.82,66.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSell your trash to |cRXP_FRIENDLY_Aldren Cordon|r
    .vendor >> Sell your trash
    .target Aldren Cordon
step
    .goto 1432,83.47,65.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryl the Youngling|r at the Farstrider Lodge
    >>|cRXP_WARN_OPTIONAL: kill 6 level 15-16 Mountain Buzzards within 15 minutes. If the buzzards are crowded, skip this step|r
    .accept 257 >> Accept A Hunter's Boast
    .target Daryl the Youngling
step
    .isOnQuest 257
    #loop
    .goto 1432,77.2,57.4,0
    .goto 1432,79.2,63.7,0
    .goto 1432,76.0,72.3,0
    .goto 1432,71.1,73.0,0
    .goto 1432,77.2,57.4,45,0
    .goto 1432,78.7,59.2,45,0
    .goto 1432,79.2,63.7,45,0
    .goto 1432,79.3,66.9,45,0
    .goto 1432,76.0,70.5,45,0
    .goto 1432,77.5,75.0,45,0
    .goto 1432,74.5,72.5,45,0
    .goto 1432,71.1,73.0,45,0
    .goto 1432,74.7,67.7,45,0
    .goto 1432,76.8,63.7,45,0
    >>Kill |cRXP_ENEMY_Mountain Buzzards|r around the lodge
    .complete 257,1 --Mountain Buzzard (6)
    .mob Mountain Buzzard
step
    .isQuestComplete 257
    .goto 1432,83.47,65.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryl the Youngling|r
    .turnin 257 >> Turn in A Hunter's Boast
    .target Daryl the Youngling
step
    .isQuestTurnedIn 257
    .goto 1432,83.47,65.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryl the Youngling|r
    >>|cRXP_WARN_OPTIONAL: 5 level 16-17 Elder Mountain Boars within 12 minutes, north of the lodge. Skip this step if that's too tight|r
    .accept 258 >> Accept A Hunter's Challenge
    .target Daryl the Youngling
step
    .isOnQuest 258
    #loop
    .goto 1432,61.2,39.6,0
    .goto 1432,66.1,38.3,0
    .goto 1432,75.7,46.6,0
    .goto 1432,60.0,37.9,45,0
    .goto 1432,60.2,33.9,45,0
    .goto 1432,63.2,35.1,45,0
    .goto 1432,64.9,38.8,45,0
    .goto 1432,67.1,39.4,45,0
    .goto 1432,70.1,37.8,45,0
    .goto 1432,74.8,42.1,45,0
    .goto 1432,75.7,46.6,45,0
    .goto 1432,67.4,41.3,45,0
    .goto 1432,62.4,38.4,45,0
    >>Kill |cRXP_ENEMY_Elder Mountain Boars|r
    .complete 258,1 --Elder Mountain Boar (5)
    .mob Elder Mountain Boar
step
    .isQuestComplete 258
    .goto 1432,83.47,65.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryl the Youngling|r
    .turnin 258 >> Turn in A Hunter's Challenge
    .target Daryl the Youngling
step
    >>|cRXP_WARN_If your Hearthstone is on cooldown, follow the road back west instead|r
    .hs >> Hearth to Thelsamar
    .cooldown item,6948,>2,1
    .subzoneskip 144
step
    #completewith next
    .goto 1432,34.405,48.276
    .subzone 144 >> Head back to Thelsamar
step
    #label SausageFinish
    .isOnQuest 418
    #loop
    .goto 1432,33.4,30.1,0
    .goto 1432,38.2,36.6,0
    .goto 1432,29.4,40.3,0
    .goto 1432,33.4,30.1,40,0
    .goto 1432,37.2,32.8,40,0
    .goto 1432,38.2,36.6,40,0
    .goto 1432,34.8,36.4,40,0
    .goto 1432,33.8,40.7,40,0
    .goto 1432,29.4,40.3,40,0
    .goto 1432,29.5,35.0,40,0
    .goto 1432,29.0,31.0,40,0
    >>Finish the Thelsamar Blood Sausages items in the woods north-west of Thelsamar: |cRXP_ENEMY_Elder Black Bears|r for Bear Meat, |cRXP_ENEMY_Mountain Boars|r for Boar Intestines and |cRXP_ENEMY_Forest Lurkers|r for Spider Ichor
    >>|cRXP_WARN_OPTIONAL: if it's crowded, skip this step and abandon the quest: this is its last chance|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob +Elder Black Bear
    .collect 3172,3,418,1 --Boar Intestines (3)
    .mob +Mountain Boar
    .collect 3174,3,418,1 --Spider Ichor (3)
    .mob +Forest Lurker
step
    #label SausageTurnin
    .isQuestComplete 418
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vidra Hearthstove|r in the inn
    .turnin 418 >> Turn in Thelsamar Blood Sausages
    .target Vidra Hearthstove
step
    .goto 1432,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jern Hornhelm|r
    .turnin 298 >> Turn in Excavation Progress Report
    .accept 301 >> Accept Report to Ironforge
    .target Jern Hornhelm
-- Ironforge to finish: Report to Ironforge, the paladin's Tome of Divinity, and level 14 training if you're there.
-- The mage's Camping 101: Enchanting goes in here. The paladin started The Tome of Divinity at the end of Elwynn.
step
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Fly to Ironforge
    .target Thorgrum Borrelson
    .zoneskip Ironforge
step << Mage
    .isQuestComplete 96059
    .goto 1455,60.27,45.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thonys Pillarstone|r in the enchanting shop where you learned Enchanting, next to the flight master
    >>|cRXP_WARN_He teaches you the Enchanted Lute, a camp item. OPTIONAL: Tilli Thistlefuzz in the same shop sells the Simple Wood and Strange Dust to craft one|r
    .turnin 96059 >> Turn in Camping 101: Enchanting
    .target Thonys Pillarstone
step
    .goto 1455,74.64,11.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r in the Hall of Explorers
    >>|cRXP_WARN_Leave Powder to Ironband unless you're coming back to Loch Modan|r
    .turnin 301 >> Turn in Report to Ironforge
    .target Prospector Stormpike
step << Dwarf Paladin
    .isQuestComplete 1784
    .goto 1455/0,-899.70,-4613.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muiredon Battleforge|r upstairs in the Mystic Ward
    .turnin 1784 >> Turn in The Tome of Divinity
    .accept 1785 >> Accept The Tome of Divinity
    .target Muiredon Battleforge
step << Dwarf Paladin
    .isOnQuest 1785
    .goto 1455/0,-932.04,-4633.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 1785 >> Turn in The Tome of Divinity
    .target Tiza Battleforge
step << Mage
    .xp <12,1
    .goto 1455/0,-928.48,-4614.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r in the Mystic Ward: you didn't train with Jennea in Stormwind
    .train 145 >> Train your level 12 spells
    .target Dink
step << Dwarf Paladin
    .xp <12,1
    .isQuestAvailable 2999
    .goto 1455/0,-896.47,-4601.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r in the Mystic Ward: you weren't 12 for the Ironforge trip at the end of Elwynn
    >>|cRXP_WARN_He also starts The Tome of Divinity, but its Dun Morogh part is behind you now: take it when you have time for it|r
    .trainer >> Train your level 12 spells
    .target Brandur Ironhammer
step << Mage
    .xp <14,1
    .goto 1455/0,-928.48,-4614.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r in the Mystic Ward
    .trainer >> Train your level 14 spells
    .target Dink
step << Paladin
    .xp <14,1
    .goto 1455/0,-896.47,-4601.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r in the Mystic Ward
    .trainer >> Train your level 14 spells
    .target Brandur Ironhammer
step << !Mage !Paladin
    .xp <14,1
    >>Visit your class trainer in Ironforge
    .trainer >> Train your level 14 spells
step << Mage
    .goto 1455,43.82,27.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthrar Threx|r, the tailoring trainer across the Great Forge
    >>|cRXP_WARN_Linen Belt is the cheapest way to 50 Tailoring: 1 bolt and 1 Coarse Thread each, and a point every craft until 50|r
    .train 8776 >> Train Linen Belt
    .target Uthrar Threx
step << Mage
    .goto 1455,42.94,28.31
    >>|cRXP_WARN_Craft Linen Belts until 50 Tailoring and sell them: 15 from 35, so 15 bolts (30 linen) and 15|r |T132891:0|t[Coarse Thread] |cRXP_WARN_from|r |cRXP_FRIENDLY_Poranna Snowbraid|r |cRXP_WARN_next to Uthrar (10c each)|r
    >>|cRXP_WARN_Short on linen? Try the Auction House in the Commons. At 50 you can learn Gina's Pattern: Red Linen Bag|r
    .skill tailoring,50 >> Reach 50 Tailoring
]])

-- Hall of Thanes, the 5-player dungeon under Ironforge, straight from the end of Loch Modan: bring three more
-- players. Old Ironforge Incursion is Earthseer Farsen's quest from guide 2; The Restless Dead (Afadra Dunwall) and
-- Important Heirlooms (Thom Filch) are on the way in, An Ancient Grudge inside and The Treaty of Understanding from
-- a tablet in the last room. Forever pays a bonus on dungeon quests (2.2 times, from the client's quest cache):
-- about 13,300 XP for the five, a level at 14-15. Quest items here are per player: each of you loots your own
-- heirlooms and Durgen's head, and clicks the tablet. The way in, the inside steps and the turn-in paths follow
-- RestedXP's Forever "15-16 Hall of Thanes" (its Dungeon Guide, in beta). If you're already 16 at the end, train
-- before you leave; there's no mage or paladin trainer in Darkshore. 1455 is Ironforge.
RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group TimmyGnome
#name 14+ Hall of Thanes
#next 15+ Darkshore

step
    #completewith EnterHoT
    +|cRXP_WARN_Find three more players for the Hall of Thanes, a 5-player dungeon under Ironforge: ask in the LookingForGroup channel|r
    >>|cRXP_WARN_Everyone takes The Restless Dead and Important Heirlooms on the way in. Old Ironforge Incursion is Earthseer Farsen's quest from Dun Morogh|r
step
    .zone Ironforge >> Travel to Ironforge
step
    #completewith next
    .goto 1455,44.029,50.074,20,0
    .goto 1455/0,-1054.300,-4843.200,10,0
    .goto 1455/0,-1081.900,-4850.100,10,0
    .goto 1455/0,-1082.800,-4886.000,10,0
    .goto 1455/0,-1087.700,-4821.900,10,0
    .goto 1455/0,-1010.300,-4850.900,10 >> Go into King Magni's throne room, take the corridor with the spiderwebs on your left and follow the stairs down into Old Ironforge
step
    .goto 1455/0,-971.800,-4820.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Afadra Dunwall|r on the stairs down
    .accept 96394 >> Accept The Restless Dead
    .target Afadra Dunwall
step
    #completewith next
    .goto 1455/0,-996.100,-4821.200,10,0
    .goto 1455/0,-972.000,-4803.000,10,0
    .goto 1455/0,-988.900,-4854.400,10 >> |cRXP_WARN_Drop down onto the ramp below|r
step
    .goto 1455/0,-968.200,-4803.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thom Filch|r by the bridge
    >>|cRXP_WARN_The heirlooms aren't shared: each of you loots your own 8|r
    .accept 96403 >> Accept Important Heirlooms
    .target Thom Filch
step
    #label EnterHoT
    .goto 1455/0,-933.200,-4821.900
    >>|cRXP_WARN_Stay on the bridge: the lava below kills you|r
    .subzone 16919 >> Cross the bridge and enter the Hall of Thanes
step
    #completewith HeirloomsFinish
    .isOnQuest 96403
    >>Loot the |cRXP_PICK_Dwarven Heirlooms|r on the ground as you go. Each of you loots your own
    .complete 96403,1 --Dwarven Heirloom (8)
step
    #completewith RestlessFinish
    .isOnQuest 96394
    >>Kill |cRXP_ENEMY_Enraged Apparitions|r and |cRXP_ENEMY_Tormented Souls|r as you go
    .complete 96394,1 --Enraged Apparition (15)
    .mob +Enraged Apparition
    .complete 96394,2 --Tormented Soul (10)
    .mob +Tormented Soul
step
    #completewith Durgen
    +|cRXP_WARN_Bosses: Faldrim Anvilmar; Magmatus (kill the Dark Iron Summoner first); Plunder (he knocks you back: fight him with your backs to a wall); Durgen Dirgehammer (an 8 second fear and two golems: clear his room first)|r
    >>|cRXP_WARN_Worth a Need roll: Aetherwisp Bracers (Faldrim), Golemheart Stave (Plunder), Robes of the Disgraced Thane (Durgen)|r << Mage
    >>|cRXP_WARN_Worth a Need roll: Kindlegem Girdle (Magmatus), Golemguard Chest and Treads of the Protector Golem (Plunder)|r << Paladin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Ghostly Attendant|r in the second room
    .accept 96395 >> Accept An Ancient Grudge
    .target Ghostly Attendant
step
    .isOnQuest 96395
    >>Kill |cRXP_ENEMY_Faldrim Anvilmar|r
    .complete 96395,1 --Faldrim Anvilmar slain (1)
    .mob Faldrim Anvilmar
step
    .isQuestComplete 96395
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Ghostly Attendant|r back in the second room if your group waits for you
    >>|cRXP_WARN_Group moving on? Skip this step: you hand it in on the way out|r
    .turnin 96395 >> Turn in An Ancient Grudge
    .target Ghostly Attendant
step
    #label RestlessFinish
    .isOnQuest 96394
    >>Finish the |cRXP_ENEMY_Enraged Apparitions|r and |cRXP_ENEMY_Tormented Souls|r now: there may not be enough of them further in
    >>|cRXP_WARN_Rooms behind you cleared and still short? Skip this step|r
    .complete 96394,1 --Enraged Apparition (15)
    .mob +Enraged Apparition
    .complete 96394,2 --Tormented Soul (10)
    .mob +Tormented Soul
step
    #label Durgen
    .isOnQuest 96393
    >>Past |cRXP_ENEMY_Magmatus|r and |cRXP_ENEMY_Plunder|r, kill |cRXP_ENEMY_Durgen Dirgehammer|r in the last room. Loot him for |cRXP_LOOT_Durgen Dirgehammer's Head|r: each of you loots your own
    .complete 96393,1 --Durgen Dirgehammer's Head (1)
    .mob Durgen Dirgehammer
step
    >>Click the |cRXP_PICK_Treaty of Understanding|r, a tablet behind one of the vault doors in Durgen's room. Each of you clicks it
    .accept 98423 >> Accept The Treaty of Understanding
step
    #label HeirloomsFinish
    .isOnQuest 96403
    >>Loot the rest of your |cRXP_PICK_Dwarven Heirlooms|r: there are plenty behind the vault doors in this room
    >>|cRXP_WARN_Each of you needs 8 of your own. Skip this step if you can't find the rest|r
    .complete 96403,1 --Dwarven Heirloom (8)
step
    .isQuestComplete 96395
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Ghostly Attendant|r in the second room on your way out
    .turnin 96395 >> Turn in An Ancient Grudge
    .target Ghostly Attendant
step
    .zone Ironforge >> Leave the Hall of Thanes: from Durgen's room, run straight down the corridor to the entrance
    .subzoneskip 16919,1
step
    .isQuestComplete 96403
    .goto 1455/0,-968.200,-4803.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thom Filch|r by the bridge
    >>|cRXP_WARN_Take Tomb Robber's Gloves (+6 Intellect): your staff is two-handed, so the Dwarven Tome is no use to you|r << Mage
    >>|cRXP_WARN_Neither reward suits you: take whichever sells for more|r << Paladin
    .turnin 96403 >> Turn in Important Heirlooms
    .target Thom Filch
step
    #completewith next
    .goto 1455/0,-1006.600,-4841.600,10,0
    .goto 1455/0,-969.700,-4841.500,10,0
    .goto 1455/0,-964.300,-4807.500,10,0
    .goto 1455/0,-993.500,-4817.600,10,0
    .goto 1455/0,-983.700,-4847.800,10,0
    .goto 1455/0,-1022.000,-4842.100,10,0
    .goto 1455/0,-994.000,-4843.100,10 >> Go back up the ramp to |cRXP_FRIENDLY_Afadra Dunwall|r
step
    .isQuestComplete 96394
    .goto 1455/0,-971.800,-4820.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Afadra Dunwall|r
    >>|cRXP_WARN_The Cryptwalker Bracers are mail: take the Dusty Belt|r << Mage
    >>|cRXP_WARN_Take the Cryptwalker Bracers (mail)|r << Paladin
    .turnin 96394 >> Turn in The Restless Dead
    .target Afadra Dunwall
step
    #completewith next
    .goto 1455/0,-1030.200,-4831.000,10,0
    .goto 1455/0,-1090.900,-4830.400,10,0
    .goto 1455/0,-1079.600,-4884.100,10,0
    .goto 1455/0,-1058.000,-4842.500,10 >> Go up to King Magni's throne room
step
    .isQuestComplete 96393
    .goto 1455/0,-1022.600,-4865.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    >>|cRXP_WARN_Take Deepblaze: an 18.5 DPS wand, a big step up from your Lesser Magic Wand|r << Mage
    >>|cRXP_WARN_Take the Ironforge Greathammer (two-handed mace)|r << Paladin
    .turnin 96393 >> Turn in Old Ironforge Incursion
    .target King Magni Bronzebeard
step
    .isOnQuest 98423
    .goto 1455/0,-1022.600,-4865.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .turnin 98423 >> Turn in The Treaty of Understanding
    .target King Magni Bronzebeard
step << Mage
    .xp <16,1
    .goto 1455/0,-928.48,-4614.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tAlready 16? Talk to |cRXP_FRIENDLY_Dink|r in the Mystic Ward before you leave
    .train 2120 >> Train your level 16 spells (Flamestrike)
    .target Dink
step << Paladin
    .xp <16,1
    .goto 1455/0,-896.47,-4601.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tAlready 16? Talk to |cRXP_FRIENDLY_Brandur Ironhammer|r in the Mystic Ward before you leave
    .train 7294 >> Train your level 16 spells (Retribution Aura)
    .target Brandur Ironhammer
step << !Mage !Paladin
    .xp <16,1
    >>Already 16? Visit your class trainer in Ironforge before you leave
    .trainer >> Train your level 16 spells
]])

-- Darkshore from level 15, straight after the Hall of Thanes: the tram to Stormwind (Stormpike's Order on the way),
-- the Stormwind Harbor boat to Auberdine, and nearly every quest in the zone that's quick or pays well. It follows
-- RestedXP's Forever Darkshore route (its 14-16 and 16-19 guides) for a non-Night Elf, minus Easy Strider Living
-- (Cooking 10), The Family and the Fishing Pole (Auction House fish), Tools of the Highborne (RestedXP drops it past
-- 16), the escort for The Absent Minded Prospector, and the quests that end outside Darkshore: Therylune's Escape
-- and The Tower of Althalaxx's third part (Ashenvale), Mathystra Relics (its turn-in is back at Onu), A Lost
-- Master's second part and The Powers Below. OPTIONAL: the Buzzbox chain (its crawler legs drop rarely), For Love
-- Eternal (Anaya is a rare), WANTED: Jai'vhanel, Bashal'Aran's satyr seal and Gyromast's Revenge. Every drop quest
-- has a sticky plus a real finish step you can skip. The Hearthstone goes to Auberdine. Loops: south (crawlers, the
-- bear trap, the furbolg camp), north (threshers, the sunken lockboxes, Bashal'Aran, the red crystal), Ameth'Aran,
-- north-east (the crystal again, the Cliffspring River, the moonstalkers, the cave), the far south (bears, Onu's
-- Master's Glaive chain, the Twilight camp, Remtravel, Murkdeep, the beached creatures) and the far north-east (Den
-- Mother, the Blackwood stores and Xabraxxis, the Tower of Althalaxx, Gyromast), then a hearth back. No mage or
-- paladin trainer here: level 16 and 18 training waits for your next city. 1439 is Darkshore ("1439/1,y,x" are
-- Kalimdor world coordinates), 1453 Stormwind City and 1455 Ironforge.
RXPGuides.RegisterGuide([[
#forever
#version 2
<< Alliance
#group TimmyGnome
#name 15+ Darkshore

step
    #completewith next
    .goto 1455/0,-1330.28,-4840.430
    .subzone 2257 >> Enter the Deeprun Tram in Tinker Town
    .zoneskip Stormwind City
    .zoneskip Darkshore
step
    .zone Stormwind City >> Take the Deeprun Tram to Stormwind
    .zoneskip Darkshore
step
    .isOnQuest 1338
    .goto 1453/0,600.07,-8427.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furen Longbeard|r in the Dwarven District, near the tram
    .turnin 1338 >> Turn in Stormpike's Order
    .target Furen Longbeard
step
    #completewith next
    .goto 1453/0,875.50,-8680.90,20,0
    .goto 1453/0,1330.10,-8645.40,15 >> Go west into Stormwind Harbor: the Darkshore boat leaves from the southernmost dock
    .zoneskip Darkshore
step
    .goto 1453/0,1330.10,-8645.40
    >>|cRXP_WARN_On the crossing, turn spare cloth into bolts and conjure water|r << Mage
    .zone Darkshore >> Take the boat to Auberdine in Darkshore
step
    .goto 1439/1,561.66,6343.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r, the hippogryph master by the docks
    .fp Auberdine >> Get the Auberdine flight path
    .target Caylais Moonfeather
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Accept Washed Ashore
    .target Gwennyth Bly'Leggonde
step
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r on the dock
    >>|cRXP_WARN_The crab chunks drop from the Reef Crawlers and Encrusted Tide Crawlers on the north and south shores: a sticky tracks them|r
    .accept 1138 >> Accept Fruit of the Sea
    .target Gubber Blump
step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    >>|cRXP_WARN_OPTIONAL: his pendant is on Anaya Dawnrunner, a rare at Ameth'Aran (she respawns fast in Forever). Skip this step if you'd rather not. You may need to wait out his talk if someone just handed it in|r
    .accept 963 >> Accept For Love Eternal
    .target Cerellean Whiteclaw
step
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizbang Cranktoggle|r upstairs in the inn
    >>|cRXP_WARN_OPTIONAL: Buzzbox 827 starts a chain of four drop quests (crawler legs, thresher eyes, moonstalker fangs, grizzled scalps), about 4,100 XP in all, and the crawler legs drop rarely. Skip this step to leave the whole chain out: its later steps skip themselves|r
    .accept 983 >> Accept Buzzbox 827
    .target Wizbang Cranktoggle
step
    .goto 1439/1,515.55,6406.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Shaussiy|r downstairs
    .home >> Set your Hearthstone to Auberdine
    .bindlocation 442
    .target Innkeeper Shaussiy
step
    .goto 1439/1,504.41,6402.39
    >>Click the |cRXP_PICK_Wanted Poster|r outside the inn
    >>|cRXP_WARN_Murkdeep is an event at a murloc camp on the south coast, near the end of the guide|r
    .accept 4740 >> Accept WANTED: Murkdeep!
step
    .goto 1439/1,503.10,6402.10
    >>Click the other |cRXP_PICK_Wanted Poster|r
    >>|cRXP_WARN_OPTIONAL: Jai'vhanel is a named mob east of Ameth'Aran. Skip this step if you'd rather not|r
    .accept 98025 >> Accept WANTED: Jai'vhanel
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .accept 4811 >> Accept The Red Crystal
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >> Accept Cave Mushrooms
    .target Barithras Moonshade
step
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    >>|cRXP_WARN_Prospector Remtravel is at the far south end of Darkshore: you get there late in the guide|r
    .accept 729 >> Accept The Absent Minded Prospector
    .target Archaeologist Hollee
step
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .accept 954 >> Accept Bashal'Aran
    .target Thundris Windweaver
step
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    >>|cRXP_WARN_Two lockboxes in sunken ships off the north coast: mind your breath meter|r
    .accept 982 >> Accept Deep Ocean, Vast Sea
    .target Gorbold Steelhand
step
    .goto 1439,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Elissa Starbreeze|r upstairs
    >>|cRXP_WARN_Balthule is at the Tower of Althalaxx in the far north-east, on the last loop|r
    .accept 965 >> Accept The Tower of Althalaxx
    .target Sentinel Elissa Starbreeze
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2118 >> Accept Plagued Lands
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Accept How Big a Threat?
    .target Terenthis
step
    #completewith BuzzBox827
    .isOnQuest 983
    >>OPTIONAL Buzzbox chain: kill |cRXP_ENEMY_Pygmy Tide Crawlers|r and |cRXP_ENEMY_Young Reef Crawlers|r on the beach. Loot them for |cRXP_LOOT_Crawler Legs|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    .isOnQuest 3524
    .goto 1439,36.371,50.920
    >>Open the |cRXP_PICK_Beached Sea Creature|r on the beach south of Auberdine. Loot it for the |cRXP_LOOT_Sea Creature Bones|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    .isOnQuest 984
    .goto 1439/1,393.72,5993.24
    >>Go south-east to the furbolg camp and run up to its edge
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    .isOnQuest 2118
    #loop
    .goto 1439,38.226,52.780,0
    .goto 1439,39.129,59.176,0
    .goto 1439,38.226,52.780,50,0
    .goto 1439,38.527,54.661,50,0
    .goto 1439,38.037,56.815,50,0
    .goto 1439,38.095,58.395,50,0
    .goto 1439,38.696,57.874,50,0
    .goto 1439,39.129,59.176,50,0
    >>|cRXP_WARN_Use|r |T134335:0|t[Tharnariun's Hope] |cRXP_WARN_on a|r |cRXP_ENEMY_Rabid Thistle Bear|r|cRXP_WARN_: target the bear first. Don't use it with no bear nearby, or you waste the trap and have to ask Tharnariun for another|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .use 7586
    .unitscan Rabid Thistle Bear
step
    #label BuzzBox827
    .isOnQuest 983
    #loop
    .goto 1439,36.091,51.501,0
    .goto 1439,35.902,47.145,0
    .goto 1439,36.091,51.501,60,0
    .goto 1439,37.130,53.663,60,0
    .goto 1439,35.655,55.872,60,0
    .goto 1439,35.275,53.464,60,0
    .goto 1439,36.280,50.071,60,0
    .goto 1439,35.977,48.408,60,0
    .goto 1439,35.902,47.145,60,0
    .goto 1439,35.759,45.455,60,0
    >>Finish the |cRXP_LOOT_Crawler Legs|r on the beach on the way back north
    >>|cRXP_WARN_OPTIONAL: the legs drop rarely. Slow? Skip this step and abandon Buzzbox 827: the rest of the Buzzbox chain then skips itself. The gray crawlers drop legs too|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    .isQuestComplete 983
    .goto 1439,36.634,46.250
    >>Click |cRXP_PICK_Buzzbox 827|r on the beach
    .turnin 983 >> Turn in Buzzbox 827
    .accept 1001 >> Accept Buzzbox 411
step
    .isQuestComplete 3524
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Turn in Washed Ashore
    .accept 4681 >> Accept Washed Ashore
    .target Gwennyth Bly'Leggonde
step
    #completewith ThresherEyes
    .isOnQuest 1001
    >>OPTIONAL Buzzbox chain: kill |cRXP_ENEMY_Darkshore Threshers|r in the water off the coast. Loot them for |cRXP_LOOT_Thresher Eyes|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
step
    .isOnQuest 4681
    .goto 1439,31.841,46.304
    >>Swim out west and open the |cRXP_PICK_Skeletal Sea Turtle|r underwater. Loot it for the |cRXP_LOOT_Sea Turtle Remains|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .isQuestComplete 4681
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Turn in Washed Ashore
    .target Gwennyth Bly'Leggonde
step
    .isQuestComplete 2118
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2118 >> Turn in Plagued Lands
    .accept 2138 >> Accept Cleansing of the Infected
    .target Tharnariun Treetender
step
    .isQuestComplete 984
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Turn in How Big a Threat?
    .accept 985 >> Accept How Big a Threat?
    .accept 4761 >> Accept Thundris Windweaver
    .target Terenthis
step
    .isOnQuest 4761
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4761 >> Turn in Thundris Windweaver
    .accept 4762 >> Accept The Cliffspring River
    .target Thundris Windweaver
step
    #completewith BearsFinish
    .isOnQuest 2138
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r whenever you pass them
    >>|cRXP_WARN_Kill them fast: their Rabies halves your health regeneration for 10 minutes|r
    .complete 2138,1 --Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .isOnQuest 982
    .goto 1439,38.213,28.754
    >>|cRXP_WARN_Go north up the coast. Mind your breath meter: swim down to the outside of the back of the sunken ship and use your Interact with Target key on the arrow to loot the|r |cRXP_LOOT_Silver Dawning's Lockbox|r|cRXP_WARN_, or swim into the bottom floor and loot it there|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
step
    .isOnQuest 982
    .goto 1439,39.581,27.487
    >>|cRXP_WARN_Same again at the second ship for the|r |cRXP_LOOT_Mist Veil's Lockbox|r
    .complete 982,2 --Mist Veil's Lockbox (1)
step
    #label ThresherEyes
    .isOnQuest 1001
    #loop
    .goto 1439/1,310.53,7077.48,0
    .goto 1439/1,620.35,6768.76,0
    .goto 1439/1,310.53,7077.48,55,0
    .goto 1439/1,404.85,7099.75,55,0
    .goto 1439/1,537.82,7023.33,55,0
    .goto 1439/1,602.66,6924.21,55,0
    .goto 1439/1,620.35,6768.76,55,0
    >>Finish the |cRXP_LOOT_Thresher Eyes|r on the |cRXP_ENEMY_Darkshore Threshers|r along this coast
    >>|cRXP_WARN_OPTIONAL: slow? Skip this step and abandon Buzzbox 411: the rest of the Buzzbox chain then skips itself|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
step
    .goto 1439,41.901,31.339
    >>Click the |cRXP_PICK_Beached Sea Creature|r on the shore
    .accept 4723 >> Accept Beached Sea Creature
step
    .isQuestComplete 1001
    .goto 1439,41.960,28.616
    >>Click |cRXP_PICK_Buzzbox 411|r on the shore
    .turnin 1001 >> Turn in Buzzbox 411
    .accept 1002 >> Accept Buzzbox 323
step
    #completewith FangsFinish
    .isOnQuest 1002
    >>OPTIONAL Buzzbox chain: kill |cRXP_ENEMY_Moonstalker Runts|r and |cRXP_ENEMY_Moonstalkers|r as you go. Loot them for |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    .isOnQuest 954
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r at Bashal'Aran
    .turnin 954 >> Turn in Bashal'Aran
    .accept 955 >> Accept Bashal'Aran
    .target Asterion
step
    .isOnQuest 955
    #loop
    .goto 1439,44.528,36.587,0
    .goto 1439,45.334,39.393,0
    .goto 1439,46.096,36.541,0
    .goto 1439,44.528,36.587,50,0
    .goto 1439,44.443,38.202,50,0
    .goto 1439,44.821,39.711,50,0
    .goto 1439,45.334,39.393,50,0
    .goto 1439,45.091,37.865,50,0
    .goto 1439,45.831,36.790,50,0
    .goto 1439,46.906,36.171,50,0
    .goto 1439,47.022,37.083,50,0
    .goto 1439,45.827,36.812,50,0
    >>Kill |cRXP_ENEMY_Wild Grells|r and |cRXP_ENEMY_Vile Sprites|r. Loot them for |cRXP_LOOT_Grell Earrings|r: each of you loots your own
    >>|cRXP_WARN_Leave the Deth'ryll Satyrs for the next part|r
    .complete 955,1 --Grell Earring (8)
    .mob Wild Grell
    .mob Vile Sprite
step
    .isQuestComplete 955
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Turn in Bashal'Aran
    .accept 956 >> Accept Bashal'Aran
    .target Asterion
step
    .isOnQuest 956
    #loop
    .goto 1439,45.393,36.472,0
    .goto 1439,45.429,39.773,0
    .goto 1439,47.368,36.774,0
    .goto 1439,45.393,36.472,45,0
    .goto 1439,45.938,37.800,45,0
    .goto 1439,46.531,39.134,45,0
    .goto 1439,45.429,39.773,45,0
    .goto 1439,47.262,37.674,45,0
    .goto 1439,47.920,37.228,45,0
    .goto 1439,47.368,36.774,45,0
    >>Kill |cRXP_ENEMY_Deth'ryll Satyrs|r. Loot them for the |cRXP_LOOT_Ancient Moonstone Seal|r
    >>|cRXP_WARN_OPTIONAL: the satyrs don't respawn faster with more players around. Skip this step if they're taken|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
step
    .isQuestComplete 956
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_The Ancient Flame for the last part is at Ameth'Aran, next on the route|r
    .turnin 956 >> Turn in Bashal'Aran
    .accept 957 >> Accept Bashal'Aran
    .target Asterion
step
    .isOnQuest 4811
    .goto 1439,47.314,48.676
    >>Go south-east up to the |cRXP_PICK_Mysterious Red Crystal|r on the ridge
    >>|cRXP_WARN_Mind the two pairs of Raging Moonkin just west of it: each pair is linked|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGo south-west to Ameth'Aran and talk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .accept 953 >> Accept The Fall of Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #completewith FurbolgGrind
    .isOnQuest 963
    .goto 1439,42.017,58.866,0
    .goto 1439,43.222,59.693,0
    .goto 1439,43.069,62.448,0
    .goto 1439,42.489,60.677,0
    >>Keep an eye out for |cRXP_ENEMY_Anaya Dawnrunner|r at Ameth'Aran: four spawn spots, marked on your map. Kill her and loot her |cRXP_LOOT_Pendant|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    .isOnQuest 953
    .goto 1439,42.652,63.145
    >>Click |cRXP_PICK_The Fall of Ameth'Aran|r
    .complete 953,2 --Read The Fall of Ameth'Aran (1)
step
    .isOnQuest 957
    .goto 1439,42.373,61.815
    >>Click the |cRXP_PICK_Ancient Flame|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .isOnQuest 953
    .goto 1439/1,105.52,5770.10
    >>Click |cRXP_PICK_The Lay of Ameth'Aran|r
    .complete 953,1 --Read The Lay of Ameth'Aran (1)
step
    .isOnQuest 98025
    .goto 1439/1,-18.10,5779.80
    >>Kill |cRXP_ENEMY_Jai'vhanel|r east of Ameth'Aran. Loot it for the |cRXP_LOOT_Feather of Jai'vhanel|r
    >>|cRXP_WARN_Not up, or someone's on it? Skip this step|r
    .complete 98025,1 --Feather of Jai'vhanel (1)
    .mob Jai'vhanel
step
    .isQuestComplete 953
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .turnin 953 >> Turn in The Fall of Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    .goto 1439,37.105,62.167
    >>Click the |cRXP_PICK_Beached Sea Turtle|r on the shore west of Ameth'Aran
    .accept 4722 >> Accept Beached Sea Turtle
step
    #label FurbolgGrind
    .isOnQuest 985
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Kill |cRXP_ENEMY_Blackwood Pathfinders|r and |cRXP_ENEMY_Blackwood Windtalkers|r at the furbolg camp on the way back north
    .complete 985,1 --Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 --Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
step
    .isOnQuest 4722
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack in Auberdine, talk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Turn in Beached Sea Turtle
    .target Gwennyth Bly'Leggonde
step
    .isOnQuest 4723
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4723 >> Turn in Beached Sea Creature
    .target Gwennyth Bly'Leggonde
step
    .isQuestComplete 963
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .turnin 963 >> Turn in For Love Eternal
    .target Cerellean Whiteclaw
step
    .isQuestComplete 98025
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 98025 >> Turn in WANTED: Jai'vhanel
    .target Sentinel Glynda Nal'Shea
step
    .isQuestComplete 4811
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4811 >> Turn in The Red Crystal
    .accept 4812 >> Accept As Water Cascades
    .target Sentinel Glynda Nal'Shea
step
    .isOnQuest 4812
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_Use the|r |T134865:0|t[Empty Water Tube] |cRXP_WARN_at the Auberdine moonwell|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
step
    .isQuestComplete 2138
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Turn in Cleansing of the Infected
    .accept 2139 >> Accept Tharnariun's Hope
    .target Tharnariun Treetender
step
    .isQuestComplete 985
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    >>|cRXP_WARN_A Lost Master's pelts come from Moonstalker Sires in the far south and far north: a sticky tracks them|r
    .turnin 985 >> Turn in How Big a Threat?
    .accept 986 >> Accept A Lost Master
    .target Terenthis
step
    .isQuestComplete 982
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >> Turn in Deep Ocean, Vast Sea
    .target Gorbold Steelhand
step
    .isQuestComplete 4812
    .goto 1439,47.314,48.676
    >>Back east at the |cRXP_PICK_Mysterious Red Crystal|r, click it
    .turnin 4812 >> Turn in As Water Cascades
    .accept 4813 >> Accept The Fragments Within
step
    .isQuestComplete 957
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r at Bashal'Aran
    .turnin 957 >> Turn in Bashal'Aran
    .target Asterion
step
    .goto 1439/1,47.88,7433.80
    >>Click the |cRXP_PICK_Beached Sea Turtle|r on the north shore
    .accept 4725 >> Accept Beached Sea Turtle
step
    #completewith CrabsFinish
    .isOnQuest 1138
    >>Kill |cRXP_ENEMY_Reef Crawlers|r and |cRXP_ENEMY_Encrusted Tide Crawlers|r on the shores. Loot them for |cRXP_LOOT_Fine Crab Chunks|r
    >>|cRXP_WARN_Reef Crawlers' Muscle Tear hits for 30-55|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
    .mob Encrusted Tide Crawler
step
    .isOnQuest 4762
    .goto 1439/1,-386.39,7219.83
    >>|cRXP_WARN_Use the|r |T134865:0|t[Empty Sampling Tube] |cRXP_WARN_at the base of the Cliffspring River|r
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
step
    #label FangsFinish
    .isOnQuest 1002
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.022,27.199,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,53.629,26.054,60,0
    >>Finish the |cRXP_LOOT_Moonstalker Fangs|r on the |cRXP_ENEMY_Moonstalkers|r here
    >>|cRXP_WARN_OPTIONAL: slow? Skip this step and abandon Buzzbox 323: the rest of the Buzzbox chain then skips itself|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    .isQuestComplete 1002
    .goto 1439,51.288,24.554
    >>Click |cRXP_PICK_Buzzbox 323|r by the river
    >>|cRXP_WARN_Its last part, Buzzbox 525 (OPTIONAL), wants Grizzled Scalps from the Grizzled Thistle Bears in the far south: abandon it later if you'd rather not|r
    .turnin 1002 >> Turn in Buzzbox 323
    .accept 1003 >> Accept Buzzbox 525
step
    .isOnQuest 947
    .goto 1439/1,-690.31,6751.29,12,0
    .goto 1439/1,-706.68,6748.23,12,0
    .goto 1439/1,-719.13,6787.53,12,0
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67
    >>In the Cliffspring Falls cave, loot the |cRXP_LOOT_Scaber Stalks|r and a |cRXP_LOOT_Death Cap|r on the ground
    >>|cRXP_WARN_Stay on the upper level: the Stormscale Wave Riders' Aqua Jet knocks you back. No Death Cap at the end of the top? Drop down and look in the southern room below|r
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
step
    .isQuestComplete 4762
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack in Auberdine, talk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4762 >> Turn in The Cliffspring River
    .accept 4763 >> Accept The Blackwood Corrupted
    .target Thundris Windweaver
step
    .isQuestComplete 982
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >> Turn in Deep Ocean, Vast Sea
    .target Gorbold Steelhand
step
    .isOnQuest 4813
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4813 >> Turn in The Fragments Within
    .target Sentinel Glynda Nal'Shea
step
    .isOnQuest 4763
    .goto 1439/1,467.08,6409.38
    >>|cRXP_WARN_Use the|r |T133748:0|t[Empty Cleansing Bowl] |cRXP_WARN_at the Auberdine moonwell|r
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
step
    .isQuestComplete 947
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .turnin 947 >> Turn in Cave Mushrooms
    .accept 948 >> Accept Onu
    .target Barithras Moonshade
step
    .isQuestComplete 2138
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Turn in Cleansing of the Infected
    .accept 2139 >> Accept Tharnariun's Hope
    .target Tharnariun Treetender
step
    .isOnQuest 4725
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4725 >> Turn in Beached Sea Turtle
    .target Gwennyth Bly'Leggonde
step
    .isQuestComplete 1138
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r on the dock
    .turnin 1138 >> Turn in Fruit of the Sea
    .target Gubber Blump
step
    #completewith PeltsFinish
    .isOnQuest 986
    >>Kill |cRXP_ENEMY_Moonstalker Sires|r when you see them. Loot them for |cRXP_LOOT_Fine Moonstalker Pelts|r
    >>|cRXP_WARN_Their Exploit Weakness backstab hits for 20-40 if you turn your back|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
step
    #completewith ScalpsFinish
    .isOnQuest 1003
    >>OPTIONAL Buzzbox chain: kill |cRXP_ENEMY_Grizzled Thistle Bears|r when you see them. Loot them for |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_WARN_Their Ravage knocks you down for 2 seconds|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
step
    #label BearsFinish
    .isOnQuest 2138
    #loop
    .goto 1439/1,385.20,5393.69,0
    .goto 1439/1,155.30,5374.48,0
    .goto 1439/1,322.32,4907.25,0
    .goto 1439/1,385.20,5393.69,70,0
    .goto 1439/1,155.30,5374.48,70,0
    .goto 1439/1,322.32,4907.25,70,0
    >>Head south and finish the |cRXP_ENEMY_Rabid Thistle Bears|r
    >>|cRXP_WARN_Still short and they're all taken? Skip this step|r
    .complete 2138,1 --Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .isOnQuest 948
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r at the Grove of the Ancients
    .turnin 948 >> Turn in Onu
    .accept 944 >> Accept The Master's Glaive
    .target Onu
step
    .isOnQuest 944
    .goto 1439/1,390.70,4542.70
    >>Go south-west to The Master's Glaive
    .complete 944,1 --Enter the Master's Glaive (1)
step
    .isOnQuest 944
    .goto 1439/1,417.30,4575.82
    >>|cRXP_WARN_Use the|r |T134715:0|t[Phial of Scrying] |cRXP_WARN_to place it on the ground, then click the|r |cRXP_PICK_Scrying Bowl|r
    .turnin 944 >> Turn in The Master's Glaive
    .accept 949 >> Accept The Twilight Camp
    .use 5251
step
    .isOnQuest 949
    .goto 1439,38.537,86.050
    >>Click the |cRXP_PICK_Twilight Tome|r on the northern pedestal
    .turnin 949 >> Turn in The Twilight Camp
    .accept 950 >> Accept Return to Onu
    .accept 98042 >> Accept It's All Fun and Games Until...
step
    #label EyeFinish
    .isOnQuest 98042
    #loop
    .goto 1439/1,376.80,4608.60,40,0
    .goto 1439/1,453.10,4580.20,40,0
    .goto 1439/1,409.44,4521.02,40,0
    >>Kill |cRXP_ENEMY_Twilight Disciples|r and |cRXP_ENEMY_Twilight Thugs|r around the camp. Loot them for the |cRXP_LOOT_Peerless Eye|r
    >>|cRXP_WARN_Interrupt or kill the Disciples first: they cast Renew and a 3 second Heal|r
    .complete 98042,1 --Peerless Eye (1)
    .mob +Twilight Disciple
    .mob +Twilight Thug
step
    #label ScalpsFinish
    .isOnQuest 1003
    .goto 1439/1,227.35,4575.38,50,0
    .goto 1439/1,205.73,4639.13,50,0
    .goto 1439/1,129.10,4741.75,50,0
    .goto 1439/1,86.52,4839.13,50,0
    .goto 1439/1,338.70,4821.22,50,0
    .goto 1439/1,452.67,4684.98
    >>Finish the |cRXP_LOOT_Grizzled Scalps|r on the |cRXP_ENEMY_Grizzled Thistle Bears|r south of Onu
    >>|cRXP_WARN_OPTIONAL: skip this step if they're taken or slow|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
step
    .isQuestComplete 1003
    .goto 1439,41.390,80.563
    >>Click |cRXP_PICK_Buzzbox 525|r
    .turnin 1003 >> Turn in Buzzbox 525
step
    .isOnQuest 950
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    >>|cRXP_WARN_Don't take Mathystra Relics: its relics are in the far north-east and it comes back here|r
    .turnin 950 >> Turn in Return to Onu
    .target Onu
step
    .goto 1439,32.644,80.711
    >>Head west to the coast and click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4730 >> Accept Beached Sea Creature
step
    .goto 1439,31.690,83.700
    >>Click the |cRXP_PICK_Beached Sea Turtle|r further south
    >>|cRXP_WARN_Greymist Oracles nearby cast Lightning Bolt and heal; Greymist Tidehunters poison you in melee|r
    .accept 4731 >> Accept Beached Sea Turtle
step
    .isOnQuest 729
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Remtravel|r
    >>|cRXP_WARN_Don't take his escort: it's very hard and slow|r
    .turnin 729 >> Turn in The Absent Minded Prospector
    .target Prospector Remtravel
step
    .isOnQuest 4740
    .goto 1439,35.429,76.566,60,0
    .goto 1439/1,541.75,4991.52
    >>Kill the |cRXP_ENEMY_Greymist Warriors|r and |cRXP_ENEMY_Greymist Hunters|r in the murloc camp, then stand at the bonfire in the middle to start the event: three waves come out of the water, then |cRXP_ENEMY_Murkdeep|r
    >>|cRXP_WARN_Check first whether Murkdeep is already up in the water (someone failed the event). If another group is doing it, wait or help|r
    .complete 4740,1 --Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
    #label CrabsFinish
    .isOnQuest 1138
    #loop
    .goto 1439,35.4,73.7,0
    .goto 1439,32.4,82.1,0
    .goto 1439,35.4,73.7,40,0
    .goto 1439,34.0,77.5,40,0
    .goto 1439,32.4,82.1,40,0
    >>Finish the |cRXP_LOOT_Fine Crab Chunks|r on the |cRXP_ENEMY_Reef Crawlers|r and |cRXP_ENEMY_Encrusted Tide Crawlers|r along this shore
    >>|cRXP_WARN_Skip this step if it's slow|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto 1439,35.968,70.807
    >>Click the |cRXP_PICK_Beached Sea Creature|r on the shore on the way north
    .accept 4728 >> Accept Beached Sea Creature
step
    .isOnQuest 4728
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack in Auberdine, talk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4728 >> Turn in Beached Sea Creature
    .target Gwennyth Bly'Leggonde
step
    .isOnQuest 4730
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4730 >> Turn in Beached Sea Creature
    .target Gwennyth Bly'Leggonde
step
    .isOnQuest 4731
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4731 >> Turn in Beached Sea Turtle
    .target Gwennyth Bly'Leggonde
step
    .isQuestComplete 1138
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r on the dock
    .turnin 1138 >> Turn in Fruit of the Sea
    .target Gubber Blump
step
    .isQuestComplete 963
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .turnin 963 >> Turn in For Love Eternal
    .target Cerellean Whiteclaw
step
    .isQuestComplete 4740
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4740 >> Turn in WANTED: Murkdeep!
    .target Sentinel Glynda Nal'Shea
step
    .isQuestComplete 98042
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 98042 >> Turn in It's All Fun and Games Until...
    .target Thundris Windweaver
step
    .isQuestComplete 2138
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Turn in Cleansing of the Infected
    .accept 2139 >> Accept Tharnariun's Hope
    .target Tharnariun Treetender
step
    .isOnQuest 2139
    .goto 1439/1,-503.63,6732.95,45,0
    .goto 1439/1,-430.27,6662.65
    >>Go north-east and kill |cRXP_ENEMY_Den Mother|r
    >>|cRXP_WARN_Her Thistle Cubs' Ravage stuns you for 2 seconds|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step
    .isOnQuest 4763
    .goto 1439/1,-376.56,6807.62
    >>Open the |cRXP_PICK_Blackwood Grain Stores|r at the furbolg camp. Loot them for a |cRXP_LOOT_Blackwood Grain Sample|r
    >>|cRXP_WARN_Each store you loot sends 2 Blackwood furbolgs at you|r
    .collect 12342,1,4763,1 --Blackwood Grain Sample (1)
step
    .isOnQuest 4763
    .goto 1439/1,-453.20,6870.50
    >>Open the |cRXP_PICK_Blackwood Nut Stores|r. Loot them for a |cRXP_LOOT_Blackwood Nut Sample|r
    .collect 12343,1,4763,1 --Blackwood Nut Sample (1)
step
    .isOnQuest 4763
    .goto 1439/1,-520.66,6874.43
    >>Open the |cRXP_PICK_Blackwood Fruit Stores|r. Loot them for a |cRXP_LOOT_Blackwood Fruit Sample|r
    .collect 12341,1,4763,1 --Blackwood Fruit Sample (1)
step
    .isOnQuest 4763
    .goto 1439/1,-489.22,6875.30
    >>|cRXP_WARN_Use the|r |T134712:0|t[Filled Cleansing Bowl] |cRXP_WARN_at the bonfire to summon|r |cRXP_ENEMY_Xabraxxis|r|cRXP_WARN_. Kill him and open the|r |cRXP_PICK_Xabraxxis' Demon Bag|r |cRXP_WARN_he drops for the|r |cRXP_LOOT_Talisman of Corruption|r
    >>|cRXP_WARN_Someone else fighting him? Help them, then loot the bag|r
    .complete 4763,1 --Talisman of Corruption (1)
    .use 12347
    .mob Xabraxxis
step
    #completewith next
    .goto 1439,51.118,23.670,20,0
    .goto 1439,51.490,24.368,30,0
    .goto 1439,54.973,24.885,15 >> Go north-east to the Tower of Althalaxx
step
    .isOnQuest 965
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 965 >> Turn in The Tower of Althalaxx
    .accept 966 >> Accept The Tower of Althalaxx
    .target Balthule Shadowstrike
step
    .isOnQuest 966
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,57.278,26.311,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,55.743,25.915,50,0
    >>Kill |cRXP_ENEMY_Dark Strand Fanatics|r around the tower. Loot them for |cRXP_LOOT_Worn Parchments|r: each of you loots your own
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    .isQuestComplete 966
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    >>|cRXP_WARN_Don't take the next part: it goes on to Ashenvale|r
    .turnin 966 >> Turn in The Tower of Althalaxx
    .target Balthule Shadowstrike
step
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGo north and talk to |cRXP_FRIENDLY_Gelkak Gyromast|r on the shore
    .accept 2098 >> Accept Gyromast's Retrieval
    .target Gelkak Gyromast
step
    #completewith next
    .isOnQuest 2098
    >>Kill |cRXP_ENEMY_Raging Reef Crawlers|r and |cRXP_ENEMY_Encrusted Tide Crawlers|r as you go. Loot them for the |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Raging Reef Crawlers' Thrash can hit for 200 at once|r
    .complete 2098,3 --Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .isOnQuest 2098
    .goto 1439/1,-656.25,7801.04
    >>Kill |cRXP_ENEMY_Greymist Oracles|r and |cRXP_ENEMY_Greymist Tidehunters|r by the sunken ship. Loot them for the |cRXP_LOOT_Middle of Gelkak's Key|r
    >>|cRXP_WARN_Pull the Oracles around the ship to break line of sight with their Lightning Bolts|r
    .complete 2098,2 --Middle of Gelkak's Key (1)
    .mob Greymist Oracle
    .mob Greymist Tidehunter
step
    .isOnQuest 2098
    .goto 1439/1,-699.48,7591.87,45,0
    .goto 1439/1,-579.61,7505.41,45,0
    .goto 1439/1,-421.10,7372.67,45,0
    .goto 1439/1,-767.60,7805.84
    >>Finish the |cRXP_LOOT_Bottom of Gelkak's Key|r on the |cRXP_ENEMY_Raging Reef Crawlers|r and |cRXP_ENEMY_Encrusted Tide Crawlers|r along the shore
    .complete 2098,3 --Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .isOnQuest 2098
    .goto 1439/1,-941.83,7756.06,55,0
    .goto 1439/1,-1080.03,7922.87,50,0
    .goto 1439/1,-1087.24,7780.51,50,0
    .goto 1439/1,-1069.55,7661.74,50,0
    .goto 1439/1,-1080.03,7922.87
    >>Kill |cRXP_ENEMY_Giant Foreststriders|r to the north-east. Loot them for the |cRXP_LOOT_Top of Gelkak's Key|r
    .complete 2098,1 --Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step
    #label PeltsFinish
    .isOnQuest 986
    .goto 1439/1,-1080.03,7922.87,45,0
    .goto 1439/1,-1146.84,7998.41
    >>Finish the |cRXP_LOOT_Fine Moonstalker Pelts|r on the |cRXP_ENEMY_Moonstalker Sires|r and |cRXP_ENEMY_Moonstalker Matriarchs|r here
    >>|cRXP_WARN_The Matriarchs always come with a Moonstalker Runt. Skip this step if it's slow|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step
    .isQuestComplete 2098
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>|cRXP_WARN_OPTIONAL: his next quest is a fight with The Threshwackonator 4100 once it turns on you, and it's hard. It rewards Elixirs of Water Breathing. Don't accept it if you'd rather not|r
    .turnin 2098 >> Turn in Gyromast's Retrieval
    .accept 2078 >> Accept Gyromast's Revenge
    .target Gelkak Gyromast
step
    .goto 1439,53.113,18.099
    >>Click the |cRXP_PICK_Beached Sea Turtle|r on the shore
    .accept 4727 >> Accept Beached Sea Turtle
step
    .isOnQuest 2078
    .goto 1439,56.654,13.484
    >>Walk |cRXP_FRIENDLY_The Threshwackonator 4100|r back to |cRXP_FRIENDLY_Gelkak Gyromast|r, then kill it when it turns hostile
    >>|cRXP_WARN_Can't kill it? Skip this step and abandon the quest|r
    .complete 2078,1 --Gyromast's Revenge (1)
    .mob The Threshwackonator 4100
step
    .isQuestComplete 2078
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2078 >> Turn in Gyromast's Revenge
    .target Gelkak Gyromast
step
    .hs >> Hearth to Auberdine
    .cooldown item,6948,>2,1
    .bindlocation 442,1
    .subzoneskip 442
step
    .goto 1439,37.394,40.128
    .subzone 442 >> Hearthstone on cooldown? Walk back south-west to Auberdine
step
    .isQuestComplete 4763
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4763 >> Turn in The Blackwood Corrupted
    .target Thundris Windweaver
step
    .isQuestComplete 2139
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >> Turn in Tharnariun's Hope
    .target Tharnariun Treetender
step
    .isQuestComplete 986
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    >>|cRXP_WARN_Don't take the next part: it goes to Volcor in the far south|r
    .turnin 986 >> Turn in A Lost Master
    .target Terenthis
step
    .isQuestComplete 1138
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r on the dock
    .turnin 1138 >> Turn in Fruit of the Sea
    .target Gubber Blump
step
    .isOnQuest 4727
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    >>|cRXP_WARN_That's Darkshore done. Train your level 16 and 18 spells at your next city|r
    .turnin 4727 >> Turn in Beached Sea Turtle
    .target Gwennyth Bly'Leggonde
]])
