-- TimmyGnome: a Gnome Mage route through Coldridge Valley and Dun Morogh, levels 1-9, rebuilt from the
-- turn-in log of Charli Brat's run (2026-10-11). Like that run it opens with a grind to level 2
-- and skips Dwarven Outfitters, which also skips both Coldridge Valley mail deliveries and the Glyphic
-- Memorandum (both need Outfitters done: Questie's Forever data). At level 5 it goes from the tunnel
-- straight to Brewnall for Bitter Rivals and Frosthowl, killing every boar for meat and ribs on the way,
-- then death-skips to Kharanos. Changes from that run:
--   * Kharanos, then Steelgrill's Depot, then the south loop, instead of Gretchen -> Depot -> south.
--   * Boar meat and ribs come from the boars killed since the tunnel, and bear fur from the south loop,
--     so the Depot needs one visit instead of two.
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
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,10 --Refreshing Spring Water (10)
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
step << Mage
    .goto 1426/0,388.17,-6056.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marryk Nurribit|r inside
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .train 116 >> Train |T135846:0|t[Frostbolt]
    .target Marryk Nurribit
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

RXPGuides.RegisterGuide([[
#forever
#version 3
<< Alliance
#group TimmyGnome
#name 5-9 Dun Morogh

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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tOut of the tunnel, head straight to Brewnall Village. Talk to |cRXP_FRIENDLY_Marleth Barleybrew|r and |cRXP_FRIENDLY_Gretta Ganter|r (on the ice next to the village)
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
    >>Finish the |cRXP_LOOT_Thick Bear Fur|r, |cRXP_LOOT_Chunks of Boar Meat|r and |cRXP_LOOT_Crag Boar Ribs|r around Kharanos
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
step << Mage
    .goto 1426/0,-537.200,-5587.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magis Sparkmantle|r upstairs
    .trainer >> Train your level 6 spells (Fireball, Fire Blast, Conjure Food)
    .target Magis Sparkmantle
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
    .goto 1426/0,-501.400,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senir Whitebeard|r in Kharanos
    .turnin 287 >> Turn in Frostmane Hold
    .accept 291 >> Accept The Reports (deliver it when you go to Ironforge)
    .target Senir Whitebeard::1252
step << Mage
    .goto 1426/0,-537.200,-5587.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magis Sparkmantle|r upstairs
    .trainer >> Train your level 8 spells (Polymorph, Frostbolt, Arcane Missiles)
    .target Magis Sparkmantle
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
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rudra Amberstill|r at Amberstill Ranch
    .accept 314 >> Accept Protecting the Herd
    .target Rudra Amberstill
step
    .goto 1426,62.538,46.195
    >>Kill |cRXP_ENEMY_Vagash|r (elite). Loot him for his |cRXP_LOOT_Fang|r
    >>|cRXP_WARN_Let your tank hold him. If it goes wrong, pull him to the guard south of the ranch, but do more than half of his damage yourselves|r
    .complete 314,1 --Fang of Vagash
    .mob Vagash
step
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .turnin 314 >> Turn in Protecting the Herd
    .target Rudra Amberstill
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
]])
