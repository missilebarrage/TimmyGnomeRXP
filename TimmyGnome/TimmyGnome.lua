-- TimmyGnome: a Gnome Mage route through Coldridge Valley, Dun Morogh and Elwynn Forest, levels 1-12. The
-- first two guides were rebuilt from the turn-in log of Charli Brat's run (2026-10-11), and the Elwynn guide
-- below them has its own notes. Like that run, Coldridge Valley opens with a grind to level 2
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
#version 5
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
    >>Gather wand materials while Tim goes to Ironforge
    +Craft a Copper Rod and give it to Tim
    .collect 2770,10 >> 10 Copper Ore
    .collect 2835,20 >> 20 Rough Stone
    +|cFFFF0000MAKE SURE TIM HAS A BRACER!|r
step << Mage
    >>Gather wand materials before you go to Ironforge
    .collect 6217,1 >> Copper Rod (your paladin crafts it)
    +3 silver
    +|cFFFF0000ANY BRACER|r
step << Mage
    .goto 1455,59.77,45.45,15 >> Travel to the enchanting trainer in Ironforge: take the road north out of Kharanos, cross the bridge and follow the road east up the mountain
step << Mage
    .goto 1455,59.77,45.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimble Thistlefuzz|r, the enchanting trainer
    .skill enchanting,1 >> Learn Enchanting
    .target Gimble Thistlefuzz
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
    .collect 4470,1 >> Keep 1 Simple Wood to craft the Lesser Magic Wand later
    .target Gimble Thistlefuzz
step << Mage
    .goto 1455/0,-1026.28,-4872.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWhile you're in Ironforge, talk to |cRXP_FRIENDLY_Senator Barin Redstone|r in the throne room
    .turnin 291 >> Turn in The Reports
    .target Senator Barin Redstone
step << Mage
    .hs >> Hearth back to Kharanos
step << Mage
    #completewith HerdAccept
    >>|cRXP_WARN_Level your wand skill: shoot the mobs you fight with your wand|r
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
-- Loch Modan flight path (with Honor Students for Dwarves and Gnomes), fly to Ironforge, then the Deeprun
-- Tram to Stormwind for Elwynn Forest. The quests need level 10: their steps skip themselves below that.
-- The Hall of Thanes quests in Ironforge wait until it's time to run the dungeon.
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
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3014.86,-5366.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brock Stoneseeker|r
    .accept 6387 >> Accept Honor Students
    .target Brock Stoneseeker
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
    .goto 1455,44.029,50.074,20,0
    .goto 1455/0,-1026.28,-4872.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senator Barin Redstone|r in the throne room
    .turnin 291 >> Turn in The Reports
    .target Senator Barin Redstone
step
    #completewith next
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nipsy|r on the middle platform on the Stormwind side
    .turnin 6662 >> Turn in Me Brother, Nipsy
    .target Nipsy
]])

-- Elwynn Forest, from the Stormwind end of the tram to level 12. The core is RestedXP's Forever "11-12 Elwynn
-- (Dwarf/Gnome)" route with the Fargodeep and Jasperlode mines and the Young Lovers deliveries added. Gathering
-- quests are left out, except three whose items drop from mobs the route kills anyway (Collecting Kelp, Bounty on
-- Murlocs, Riverpaw Gnoll Bounty). Their accept steps say OPTIONAL, and the steps that follow skip themselves when
-- you didn't take them. Downstream is a required step: its three items lie on the way to Croaky and respawn
-- instantly. A Bundle of Trouble is skipped on purpose: its wood bundles are slow, and contested on a busy server.
-- Without the optional quests you end around 70% into level 11 and the last steps grind the rest. 1429 is Elwynn
-- Forest, 1453 Stormwind City and 1433 Redridge Mountains.
RXPGuides.RegisterGuide([[
#forever
#version 2
<< Alliance
#group TimmyGnome
#name 10-12 Elwynn Forest

step
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tLeave the tram station and talk to |cRXP_FRIENDLY_Dungar Longdrink|r, the gryphon master in the Trade District
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
    #completewith PaladinTrain12
    >>|cRXP_WARN_Keep 10|r |T132889:0|t[Linen Cloth] |cRXP_WARN_from the kobolds and gnolls: your level 12 class quest, The Tome of Divinity, asks for it|r
    .collect 2589,10 --Linen Cloth (10)
step
    .goto 1429/0,16.20,-9462.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r in the Lion's Pride Inn
    >>|cRXP_WARN_You'll hearth back here from Redridge|r
    .home 87 >> Set your Hearthstone to Goldshire
    .target Innkeeper Farley
step << Mage
    #completewith next
    .goto 1429/0,12.52,-9479.85,9 >> Go upstairs in the inn
step << Mage
    .goto 1429/0,34.28,-9471.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldimar Wefhellt|r upstairs
    .trainer >> Train your level 10 spells (Frost Nova and new ranks)
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
    .goto 1429/0,31.92,-9460.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r at the Lion's Pride Inn
    .turnin 107 >> Turn in Note to William
    .target William Pestle
step
    .goto 1429/0,31.92,-9460.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    >>|cRXP_WARN_OPTIONAL (loot): 4 Crystal Kelp Fronds from the murlocs at Crystal Lake, on your way east. It unlocks The Escape, a 790 XP delivery. Skip this step to leave it|r
    .accept 112 >> Accept Collecting Kelp
    .target William Pestle
step
    .isOnQuest 112
    #loop
    .goto 1429,50.833,65.453,0
    .goto 1429,57.435,63.662,0
    .goto 1429,54.236,66.888,0
    .goto 1429,50.833,65.453,50,0
    .goto 1429,52.020,65.177,50,0
    .goto 1429,54.144,62.468,50,0
    .goto 1429,56.332,63.538,50,0
    .goto 1429,57.162,62.157,50,0
    .goto 1429,57.435,63.662,50,0
    .goto 1429,58.237,64.888,50,0
    .goto 1429,56.897,67.017,50,0
    .goto 1429,55.523,66.707,50,0
    .goto 1429,55.203,66.171,50,0
    .goto 1429,54.236,66.888,50,0
    >>Kill |cRXP_ENEMY_Murlocs|r and |cRXP_ENEMY_Murloc Streamrunners|r around Crystal Lake. Loot them for |cRXP_LOOT_Crystal Kelp Fronds|r
    .complete 112,1 --Crystal Kelp Frond (4)
    .mob Murloc
    .mob Murloc Streamrunner
step
    #completewith next
    .goto 1429/0,-604.49,-9180.39,15 >> Head north-east to the Jasperlode Mine
step
    .goto 1429/0,-588.73,-9130.67,15,0
    .goto 1429/0,-572.07,-9116.55,15,0
    .goto 1429/0,-560.62,-9100.58
    >>Follow the tunnel through the middle of the mine
    .complete 76,1 --Scout through the Jasperlode Mine
step
    #completewith next
    .goto 1429/0,-1032.06,-9610.23,30 >> Leave the mine and head south-east to the bridge
step
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r at the east bridge
    .turnin 35 >> Turn in Further Concerns
    .accept 37 >> Accept Find the Lost Guards
    .accept 52 >> Accept Protect the Frontier
    .target Guard Thomas
step
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    >>|cRXP_WARN_OPTIONAL (loot): 8 Torn Murloc Fins from the murlocs at Rolf's camp and down the river, which the route clears anyway. Skip this step to leave it, or if he doesn't offer it|r
    .accept 46 >> Accept Bounty on Murlocs
    .target Guard Thomas
step
    #completewith ThomasReturn
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Young Forest Bears|r as you go
    .complete 52,1 --Prowler (8)
    .mob +Prowler
    .complete 52,2 --Young Forest Bear (5)
    .mob +Young Forest Bear
step
    #completewith ThomasReturn
    .isOnQuest 46
    >>Kill |cRXP_ENEMY_Murloc Foragers|r and |cRXP_ENEMY_Murloc Lurkers|r as you go. Loot them for |cRXP_LOOT_Torn Murloc Fins|r
    .complete 46,1 --Torn Murloc Fin (8)
    .mob Murloc Forager
    .mob Murloc Lurker
step
    .goto 1429/0,-986.35,-9336.06
    >>Follow the river north. Click |cRXP_PICK_A half-eaten body|r on the ground
    .turnin 37 >> Turn in Find the Lost Guards
    .accept 45 >> Accept Discover Rolf's Fate
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
    .isOnQuest 46
    #loop
    .goto 1429,76.53,79.69,0
    .goto 1429,76.30,84.39,0
    .goto 1429,78.48,83.99,0
    .goto 1429,76.53,79.69,30,0
    .goto 1429,76.91,82.66,30,0
    .goto 1429,76.30,84.39,30,0
    .goto 1429,77.11,85.84,30,0
    .goto 1429,78.48,83.99,30,0
    .goto 1429,77.55,80.95,30,0
    >>Finish the |cRXP_LOOT_Torn Murloc Fins|r on the murlocs along the river. Still short? The camps at Stone Cairn Lake have more
    .complete 46,1 --Torn Murloc Fin (8)
    .mob Murloc Forager
    .mob Murloc Lurker
step
    .goto 1429/0,-869.87,-9768.10
    >>Kill |cRXP_ENEMY_Princess|r at the Brackwell Pumpkin Patch. Loot her for the |cRXP_LOOT_Brass Collar|r
    >>|cRXP_WARN_Two|r |cRXP_ENEMY_Porcine Entourage|r |cRXP_WARN_fight with her, and her charge hits hard|r
    .complete 88,1 --Brass Collar (1)
    .mob Princess
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
    #label ThomasReturn
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
    .accept 39 >> Accept Deliver Thomas' Report
    .target Guard Thomas
step
    .isQuestComplete 46
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    .turnin 46 >> Turn in Bounty on Murlocs
    .target Guard Thomas
step
    .goto 1429/0,-1119.7708,-9603.7687
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormin Pelford|r
    .turnin 91733 >> Turn in Downstream
    .target Ormin Pelford
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
    .fp Lakeshire >> Get the Lakeshire flight path
    .target Ariena Stormfeather
step
    >>|cRXP_WARN_If your Hearthstone is on cooldown, fly to Stormwind and walk to Goldshire instead|r
    .hs >> Hearth to Goldshire
step
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 39 >> Turn in Deliver Thomas' Report
    .turnin 76 >> Turn in The Jasperlode Mine
    .accept 239 >> Accept Westbrook Garrison Needs Help!
    .target Marshal Dughan
step
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    >>|cRXP_WARN_OPTIONAL: only worth it if Westfall is next. It's 630 XP for reporting at Sentinel Hill|r
    .accept 109 >> Accept Report to Gryan Stoutmantle
    .target Marshal Dughan
step
    .goto 1429/0,87.87,-9462.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSell your trash and repair at |cRXP_FRIENDLY_Andrew Krighton|r
    .vendor >> Sell your trash and repair
    .target Andrew Krighton
step
    .isQuestComplete 112
    .goto 1429/0,31.92,-9460.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    >>|cRXP_WARN_He takes a few seconds to brew the potion before he offers The Escape|r
    .turnin 112 >> Turn in Collecting Kelp
    .accept 114 >> Accept The Escape
    .target William Pestle
step
    .isOnQuest 85
    .goto 1429/0,38.41,-9923.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHead south to the Maclure Vineyards and talk to |cRXP_FRIENDLY_Billy Maclure|r
    >>|cRXP_WARN_Don't take Pie for Billy: it's a boar meat collection quest|r
    .turnin 85 >> Turn in Lost Necklace
    .target Billy Maclure
step
    .isOnQuest 114
    .goto 1429/0,37.61,-10014.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Turn in The Escape
    .target Maybell Maclure
step
    .goto 1429/0,332.43,-9894.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r at the Stonefield farm
    .turnin 88 >> Turn in Princess Must Die!
    .target Ma Stonefield
step
    #completewith next
    .goto 1429/0,673.96,-9704.45,80 >> Head north-west to Westbrook Garrison
step
    .goto 1429/0,694.29,-9662.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r at Westbrook Garrison
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
    .target Deputy Rainer
step
    .goto 1429/0,694.29,-9662.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r
    >>|cRXP_WARN_OPTIONAL (loot): 8 Painted Gnoll Armbands from the gnolls around Hogger's camp, just south of here. Skip this step to leave it|r
    .accept 11 >> Accept Riverpaw Gnoll Bounty
    .target Deputy Rainer
step
    .goto 1429/0,683.40,-9667.93
    >>Click the |cRXP_PICK_Wanted Poster|r next to the garrison
    >>|cRXP_WARN_OPTIONAL: Hogger is a level 11 elite with gnolls around him. Skip this step if you'd rather not fight him|r
    .accept 176 >> Accept Wanted: "Hogger"
step
    #completewith HoggerKill
    .isOnQuest 11
    >>Kill |cRXP_ENEMY_Riverpaw Runts|r and |cRXP_ENEMY_Riverpaw Outrunners|r. Loot them for |cRXP_LOOT_Painted Gnoll Armbands|r
    .complete 11,1 --Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step
    #label HoggerKill
    .isOnQuest 176
    #loop
    .goto 1429,26.83,86.69,0
    .goto 1429,25.02,92.90,0
    .goto 1429,26.43,93.65,0
    .goto 1429,27.36,92.71,0
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    >>Kill |cRXP_ENEMY_Hogger|r. Loot him for his |cRXP_LOOT_Huge Gnoll Claw|r
    >>|cRXP_WARN_He can spawn in several spots around the camp. Clear the gnolls near him first and let the paladin hold him|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    .isOnQuest 11
    #loop
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    >>Finish the |cRXP_LOOT_Painted Gnoll Armbands|r on the |cRXP_ENEMY_Riverpaw Runts|r and |cRXP_ENEMY_Riverpaw Outrunners|r
    .complete 11,1 --Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step
    .isQuestComplete 11
    .goto 1429/0,694.29,-9662.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack at Westbrook Garrison, talk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 11 >> Turn in Riverpaw Gnoll Bounty
    .target Deputy Rainer
step
    .isQuestComplete 176
    #loop
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    >>Grind the |cRXP_ENEMY_Riverpaw gnolls|r around Hogger's camp. Hogger's turn-in in Goldshire covers the last 880 XP
    >>|cRXP_WARN_Still far off? Westfall's quests will get you there faster than this grind|r
    .xp 12-880
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step
    .isQuestNotComplete 176
    #loop
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    >>Grind the |cRXP_ENEMY_Riverpaw gnolls|r around Hogger's camp
    >>|cRXP_WARN_Still far off? Westfall's quests will get you there faster than this grind|r
    .xp 12
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step
    #completewith next
    .goto 1429/0,74.02,-9465.52
    .subzone 87 >> Head back to Goldshire
step
    .isQuestComplete 176
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 176 >> Turn in Wanted: "Hogger"
    .target Marshal Dughan
step << Paladin
    #label PaladinTrain12
    .xp <12,1
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Train your level 12 spells
    .target Brother Wilhelm
step << !Mage !Paladin
    .xp <12,1
    >>Visit your class trainer in Goldshire
    .trainer >> Train your level 12 spells
step << Mage
    #completewith next
    .xp <12,1
    .goto 1429/0,12.52,-9479.85,9 >> Go upstairs in the inn
step << Mage
    .xp <12,1
    .goto 1429/0,34.28,-9471.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldimar Wefhellt|r upstairs
    .trainer >> Train your level 12 spells
    .target Zaldimar Wefhellt
]])
