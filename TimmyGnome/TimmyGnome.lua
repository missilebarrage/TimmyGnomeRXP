-- TimmyGnome: a Gnome Mage route through Coldridge Valley, Dun Morogh, Elwynn Forest, Loch Modan, the Hall of
-- Thanes, Darkshore, the Ruins of Lordaeron, the Deadmines, Redridge, Duskwood, the Wetlands, the Stockade and the
-- Excavation Site, levels 1 to about 28. From the Hall of Thanes on, guides are named by the level you start them at ("14+"): where a duo ends up is
-- hard to predict.
-- Coldridge Valley is RestedXP's Forever "1-5 Coldridge Valley" (their v4.11.25 guide pack; their new Dungeon
-- Guide track uses the same guide), copied step for step, class branches included, up to Coldridge Pass. Ours
-- differs for mages and paladins: they skip Dwarven Outfitters and grind to level 2 instead, which also drops both
-- Coldridge Valley Mail Deliveries and the class letter (580 XP). Scalding Mornbrew Delivery needs level 4, so the
-- paladin grinds to 4 before Grelin (RestedXP: 1130/1400 plus the second mail delivery) and the mage grinds to
-- 1040/1400 before handing in The Troll Cave (360 XP in game). The mage's first Marryk visit only shows at level 4;
-- if it didn't, a second one comes after Grund and Gozwin. Ours also adds one step before Mountaineer Thalos: a
-- water top-up at Adlin Pridedrift.
-- Dun Morogh, from the tunnel on, was rebuilt from the turn-in log of Charli Brat's run (2026-10-11); the Elwynn
-- and Loch Modan guides below it have their own notes. Like that run, it goes from the tunnel straight to Brewnall
-- for Bitter Rivals, killing every boar for meat and ribs on the way, then death-skips to
-- Kharanos. Changes from that run:
--   * Kharanos, then Steelgrill's Depot, then the south loop, instead of Gretchen -> Depot -> south.
--   * Boar meat and ribs are collected all through the west. Stocking Jetsteam goes in before Brewnall
--     (it unlocks Evershine), Beer Basted Boar Ribs on the last Kharanos visit, after the Brewnall lap.
--   * Level 6 before the Grizzled Den; mages walk back to Kharanos to train first, killing boars on the way.
--   * The Perfect Stout (Shimmerweed) is skipped.
-- RestedXP's Import box only accepts the encoded strings from its website. Custom guides load the
-- way RestedXP's own do: RXPGuides.RegisterGuide, called from an addon that depends on RXPGuides.
-- Coordinates and several waypoint paths are adapted from RestedXP Guides by RestedXP
-- (https://github.com/RestedXP/RXPGuides), licensed CC BY-NC-SA 4.0; this guide is shared under the same
-- license (https://creativecommons.org/licenses/by-nc-sa/4.0/). 1426 is Dun Morogh, "1426/0,x,y" are world
-- coordinates. Inside the guide text, "--" starts a comment that RestedXP strips.

RXPGuides.RegisterGuide([[
#forever
#version 7
<< Alliance
#group TimmyGnome
#name 1-5 Coldridge Valley
#next 5-9 Dun Morogh

step << !Gnome !Dwarf
    #completewith next
    +You have selected a guide meant for Gnomes and Dwarves. You should choose the same starter zone that you start in
step << !Warlock !Warrior !Shaman
    #softcore << Warlock
    #optional
    #completewith WolfMeat
	.destroy 6948 >> Delete the |T134414:0|t[Hearthstone] from your bags, as it's no longer needed
step << !Mage !Paladin
    .goto 1426/0,328.18,-6214.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .accept 179 >> Accept Dwarven Outfitters
    .target Sten Stoutarm
step << Warrior/Warlock/Shaman
    #season 0,1
    #completewith next
    .goto 1426,28.533,72.587,50,0
    .goto 1426,28.239,71.707,50,0
    +|cRXP_WARN_Kill and loot |cRXP_ENEMY_Ragged Young Wolves|r until you have 10 copper or more of vendor trash|r
    >>|cRXP_WARN_Unequip your|r |T132665:0|t[Acolyte's Robe]|cRXP_WARN_,|r |T135005:0|t[Acolyte's Shirt]|cRXP_WARN_,|r |T134581:0|t[Acolyte's Pants]|cRXP_WARN_, and|r |T132535:0|t[Acolyte's Shoes] |cRXP_WARN_so you can vendor them for 4 copper|r << Warlock
    >>|cRXP_WARN_Unequip your|r |T135009:0|t[Recruit's Shirt]|cRXP_WARN_,|r |T134582:0|t[Recruit's Pants]|cRXP_WARN_, and|r |T132540:0|t[Recruit's Boots] |cRXP_WARN_so you can vendor them for 3 copper|r << Warrior
    .complete 179,1 --Tough Wolf Meat (8)
    .disablecheckbox
    .mob Ragged Young Wolf
    .money >0.001
step << Warrior/Warlock/Shaman
    #season 0,1
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >> Enter Anvilmar
step << Warrior/Warlock/Shaman
    #season 0,1
    .goto 1426,28.792,67.837
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grundel Harkin|r inside
    .vendor >> Vendor Trash
    .target Grundel Harkin
    .train 6673,1 << Warrior
    .train 348,1 << Warlock
    .train 8017,1 << Shaman
step << Warrior
    #season 0,1
    .goto 1426,28.831,67.238
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thran Khorman|r inside
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .target Thran Khorman
step << Warlock
    #season 0,1
    .goto 1426/0,391.07,-6048.84--c:Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alamar Grimm|r inside
    .train 348 >> Train |T135817:0|t[Immolate]
    .accept 1599 >> Accept Beginnings
    .target Alamar Grimm
step << Shaman
    .goto 1426/0,383.900,-6050.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teo Hammerstorm|r inside
    .train 8017 >> Train |T136086:0|t[Rockbiter Weapon]
    .target Teo Hammerstorm
step << Warrior/Warlock
    #season 0,1
    #softcore << Warlock
    #label WarriorHS
    #completewith WolfMeat
    .hs >> Hearth to Coldridge Valley
    .subzoneskip 77,1
step << Warrior/Warlock
    #season 0,1
    #softcore << Warlock
    #optional
    #requires WarriorHS
    #completewith WolfMeat
	.destroy 6948 >> Delete the |T134414:0|t[Hearthstone] from your bags, as it's no longer needed

step << !Mage !Paladin
    #label WolfMeat
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
    >>Kill |cRXP_ENEMY_Ragged Young Wolves|r. Loot them for their |cRXP_LOOT_Tough Wolf Meat|r
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
step << Mage/Paladin
    #label WolfMeat
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
    #optional
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
    .xp 2 >> Grind to level 2
    .mob Ragged Young Wolf
step << Priest/Mage/Warlock/Shaman
    #season 0,1
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Vendor Trash
    >>|cRXP_BUY_Buy 15|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r << !Shaman
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r << Shaman
    >>|cRXP_WARN_Grind extra |cRXP_ENEMY_Ragged Young Wolves|r if you don't have enough money|r
    .collect 159,15 << !Shaman --Collect Refreshing Spring Water (x15)
    .collect 159,10 << Shaman --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step << !Priest !Mage !Warlock !Shaman
    #completewith next << !Hunter
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>|cRXP_BUY_Buy 600|r |T132384:0|t[Light Shots] |cRXP_BUY_from him|r << Hunter
    .vendor >> |cRXP_WARN_Vendor trash|r << !Hunter
    .collect 2516,600 << Hunter --Light Shot (600)
    .target Adlin Pridedrift
    .xp >6,1
step << !Mage !Paladin
    .goto 1426/0,328.18,-6214.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .turnin 179 >> Turn in Dwarven Outfitters
    .accept 233 >> Accept Coldridge Valley Mail Delivery
    .accept 3106 >> Accept Simple Rune << Dwarf Warrior
    .accept 3107 >> Accept Consecrated Rune << Dwarf Paladin
    .accept 3108 >> Accept Etched Rune << Dwarf Hunter
    .accept 3109 >> Accept Encrypted Rune << Dwarf Rogue
    .accept 3110 >> Accept Hallowed Rune << Dwarf Priest
    .accept 3112 >> Accept Simple Memorandum << Gnome Warrior
    .accept 3113 >> Accept Encrypted Memorandum << Gnome Rogue
    .accept 3114 >> Accept Glyphic Memorandum << Gnome Mage
    .accept 3115 >> Accept Tainted Memorandum << Gnome Warlock
    .accept 98574 >>Accept Hallowed Memorandum << Gnome Priest
    .accept 98581 >>Accept Archaic Rune << Dwarf Shaman
    .target Sten Stoutarm

step << Warlock
    #season 0,1
    #optional
    #requires FrostmaneC1
    #label FrostmaneC
    #completewith Feathers
    .goto 1426/0,479.72,-6498.17,20 >> Enter the Frostmane Cave
step << Warlock
    #season 0,1
    #optional
    #requires FrostmaneC
    #completewith Feathers
    .goto 1426,27.095,80.702,20,0
    .goto 1426,27.265,80.848,20,0
    .goto 1426,27.857,81.067,20,0
    .goto 1426,28.696,83.148,50 >> Travel toward the |cRXP_ENEMY_Frostmane Novices|r inside
step << Warlock
    #season 0,1
    #label Feathers
    .goto 1426,28.696,83.148,0
    .goto 1426,30.216,80.254,0
    .goto 1426,28.696,83.148,40,0
    .goto 1426,28.999,82.504,40,0
    .goto 1426,29.298,81.579,15,0
    .goto 1426,29.041,81.168,40,0
    .goto 1426,30.055,82.385,40,0
    .goto 1426,30.381,80.766,40,0
    .goto 1426,30.216,80.254,40,0
    >>Kill |cRXP_ENEMY_Frostmane Novices|r inside. Loot them for their |cRXP_LOOT_Feather Charms|r
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock
    #season 0,1
    #hardcore
    #label BeginningsHS
    #completewith BeginningsEnd
    .hs >> Hearth to Coldridge Valley
    .subzoneskip 77,1
--XX Era hardcore warlocks
step << Warlock
    #season 0,1
    #hardcore
    #optional
    #requires BeginningsHS
    #completewith BeginningsEnd
	.destroy 6948 >> Delete the |T134414:0|t[Hearthstone] from your bags, as it's no longer needed
--XX HC Warlocks drop HS (No hearthstone items remain)
step << Warlock
    #season 0,1
    #softcore
    #label BeginningsHS
    #completewith BeginningsEnd
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
step << Warlock
    #season 0,1
    #optional
    #requires BeginningsHS
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >> Enter Anvilmar << Warlock
step << Warlock
    #season 0,1
    #label BeginningsEnd
    .goto 1426/0,391.07,-6048.84--c:Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alamar Grimm|r upstairs
    .turnin 1599 >> Turn in Beginnings
    .turnin -3115 >> Turn in Tainted Memorandum
    .target Alamar Grimm
--XX Warlock Imp Quest End. Return to normal

step
#season 0,1
    #label Talin
    .goto 1426/0,688.98,-6222.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 233 >> Turn in Coldridge Valley Mail Delivery << !Mage !Paladin
    .accept 183 >> Accept The Boar Hunter
    .accept 234 >> Accept Coldridge Valley Mail Delivery << !Mage !Paladin
    .target Talin Keeneye
step
#season 0,1
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
    >>Kill |cRXP_ENEMY_Small Crag Boars|r
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob Small Crag Boar
step
#season 0,1
    .goto 1426/0,688.98,-6222.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 183 >> Turn in The Boar Hunter
    .target Talin Keeneye

step << Paladin/Warlock/Shaman
    #loop
    .goto 1426,23.595,72.462,0
    .goto 1426,26.117,74.469,0
    .goto 1426,26.832,74.649,0
    .goto 1426,26.884,72.733,0
    .goto 1426,23.595,72.462,50,0
    .goto 1426,24.290,73.406,50,0
    .goto 1426,24.642,74.138,50,0
    .goto 1426,26.117,74.469,50,0
    .goto 1426,26.832,74.649,50,0
    .goto 1426,26.884,72.733,50,0
    .xp 3+1130 >> Grind to 1130+/1400xp << Warlock/Shaman
    .xp 4 >> Grind to level 4: Scalding Mornbrew Delivery needs it << Paladin
step
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 234 >> Turn in Coldridge Valley Mail Delivery << !Mage !Paladin
    .accept 182 >> Accept The Troll Cave
    .target Grelin Whitebeard
step << Hunter
    #completewith next
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
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << Hunter
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .xp 4 >> Grind to level 4
step << Paladin/Warlock/Hunter/Shaman
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    >>|cRXP_WARN_This will start a 5 minute timer for the quest. Do NOT go AFK or log out for the next 5 minutes|r
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .target Nori Pridedrift
step << Paladin/Warlock/Hunter/Shaman
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    >>|cRXP_WARN_You have 5 minutes to return to Anvilmar before|r |T132791:0|t[Durnan's Scalding Mornbrew] |cRXP_WARN_expires|r
    .goto 1426,28.939,68.387,12 >> Enter Anvilmar
step << Paladin/Warlock/Hunter/Shaman
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnan Furcutter|r inside
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .target Durnan Furcutter
    .isQuestAvailable 317
step << Hunter
    #season 0,1
    .goto 1426/0,365.21,-6091.86
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Turn in Etched Rune << Dwarf
    .train 1978 >>Train |T132204:0|t[Serpent Sting]
step << Warlock
    #season 0,1
    .goto 1426/0,391.07,-6048.84--c:Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alamar Grimm|r upstairs
    .turnin 3115 >> Turn in Tainted Memorandum
    .train 172 >>Train |T136118:0|t[Corruption]
    .target Alamar Grimm
step << Shaman
    .goto 1426/0,384.000,-6050.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teo Hammerstorm::257446|r
    .target Teo Hammerstorm::257446
    .turnin 98581 >>Turn in Archaic Rune
    .accept 94373 >>Accept Call of Earth
    .train 8042 >> Train |T136026:0|t[Earth Shock]
step << Paladin/Warlock/Hunter/Shaman
    .goto 1426/0,390.000,-6093.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grund Drokda::2756|r
    .target Grund Drokda::2756
    .accept 97277 >>Accept Grund and Gozwin
step << Paladin
    #season 0,1
    .goto 1426/0,382.06,-6120.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bromos Grummner|r inside
    .train 19740 >> Train |T135906:0|t[Blessing of Might]
    .train 20271 >> Train |T135959:0|t[Judgement]
    .target Bromos Grummner
step << Warlock
#season 0,1
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Vendor Trash
    >>|cRXP_BUY_Buy 15|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step << Paladin/Warlock/Hunter
    #completewith next
    .goto 1426/0,497.300,-6118.500,20,0
    .goto 1426/0,467.700,-6012.800,20 >> Travel up to the hills in northern Coldridge Valley
step << Paladin/Warlock/Hunter
    >>Kill the |cRXP_ENEMY_Snow Leopard Prowler|r
    >>Loot |cRXP_PICK_Gozwin's Mechanic's Log|r on the ground
    .complete 97277,2 --|1/1 Snow Leopard Prowler slain
    .mob +Snow Leopard Prowler::269075
    .goto 1426/0,447.800,-5942.000
    .complete 97277,1 --|1/1 Gozwin's Mechanic's Log
    .goto 1426/0,458.700,-5940.600
step << Paladin/Warlock/Hunter/Shaman
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3365 >> Turn in Bring Back the Mug
    .target Nori Pridedrift
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
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r << !Shaman
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r. Loot them for their |cRXP_LOOT_Iceclaw Bear Pendants|r << Shaman
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .complete 94373,1 << Shaman--Iceclaw Bear Pendant (2)
    .mob Frostmane Troll Whelp
step << Mage
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
    >>Keep killing |cRXP_ENEMY_Frostmane Troll Whelps|r so The Troll Cave's 360 XP takes you to level 4: Nori Pridedrift's Scalding Mornbrew Delivery needs it
    .xp 3+1040 >> Grind to 1040+/1400xp
    .mob Frostmane Troll Whelp
step
    .goto 1426/0,567.09,-6362.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 182 >> Turn in The Troll Cave
    .accept 218 >> Accept The Stolen Journal
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    >>|cRXP_WARN_This will start a 5 minute timer for the quest. Do NOT go AFK or log out for the next 5 minutes|r
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #completewith next
    +|cRXP_WARN_You have 5 minutes to get |cRXP_LOOT_Grelin Whitebeard's Journal|r and return to Anvilmar before|r |T132791:0|t[Durnan's Scalding Mornbrew] |cRXP_WARN_expires|r
    >>|cRXP_WARN_If you fail the quest don't worry as you can get it again later|r
step
    #optional
    #label FrostMCave1
    #completewith Grelin
    .goto 1426,27.098,80.707,20 >> Enter the Frostmane Cave
step
    #optional
    #requires FrostMCave1
    #completewith Grelin
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >> Travel towards |cRXP_ENEMY_Grik'nir the Cold|r inside
step
    #label Grelin
    .goto 1426,30.489,80.165,0,0
    >>Kill |cRXP_ENEMY_Grik'nir the Cold|r inside. Loot him for |cRXP_LOOT_Grelin Whitebeard's Journal|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
step
    #hardcore << !Paladin !Warlock !Hunter !Shaman
    #optional
    #completewith Stolen
    .goto 1426,29.252,79.043,15,0
    .goto 1426,28.298,79.836,15,0
    .goto 1426,27.098,80.707,20 >> Exit the Frostmane Cave
    .subzoneskip 132
step << !Paladin !Warlock !Hunter !Shaman
    #hardcore
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .target Nori Pridedrift
step
    #hardcore << !Paladin !Warlock !Hunter !Shaman
    #label Stolen
    .goto 1426/0,567.14,-6363.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >> Turn in The Stolen Journal
    .accept 282 >> Accept Senir's Observations
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnan Furcutter|r
    >>|cRXP_WARN_If you failed the quest, skip this step|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .target Durnan Furcutter
    .isOnQuest 3364
step << !Paladin !Warlock !Hunter !Shaman
    #optional
    #softcore
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnan Furcutter|r
    .accept 3365 >> Accept Bring Back the Mug
    .target Durnan Furcutter
    .isQuestTurnedIn 3364
    .isQuestAvailable 317
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #requires Grelin << Rogue
    .abandon 3364 >> Abandon Scalding Mornbrew Delivery. You'll pick it up again
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r and |cRXP_FRIENDLY_Grelin Whitebeard|r
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    .target +Nori Pridedrift
    .turnin 218 >> Turn in The Stolen Journal
    .accept 282 >> Accept Senir's Observations
    .goto 1426/0,567.14,-6363.06
    .target +Grelin Whitebeard
    .isQuestAvailable 3364
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #optional
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .target Durnan Furcutter
step << !Paladin !Warlock !Hunter !Shaman
    #hardcore
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .target Durnan Furcutter
    .isQuestAvailable 317

step << Mage
    #season 0,1
    .xp <4,1
    .goto 1426/0,388.17,-6056.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marryk Nurribit|r inside
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .train 116 >> Train |T135846:0|t[Frostbolt]
    .target Marryk Nurribit
step << Rogue
    #season 0,1
    .goto 1426/0,404.91,-6093.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >> Turn in Encrypted Memorandum << Gnome
    .turnin 3109 >> Turn in Encrypted Rune << Dwarf
    .train 1784 >>Train |T132320:0|t[Stealth]
    .target Solm Hargrin
step << Priest
    #season 0,1
    .goto 1426/0,393.53,-6056.72--c:Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Branstock Khalder|r
    .turnin 3110 >> Turn in Hallowed Rune << Dwarf
    .turnin 98574 >> Turn in Hallowed Memorandum << Gnome
    .trainer >> Train your class spells
    .target Branstock Khalder
step << Warrior
    #season 0,1
    .goto 1426/0,382.11,-6084.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >> Turn in Simple Rune << Dwarf
    .turnin 3112 >> Turn in Simple Memorandum << Gnome
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Thran Khorman
step << Shaman
    #optional
    #completewith next
    .goto 1426/0,383.800,-6133.700,10 >> Return to |cRXP_FRIENDLY_Teo Hammerstorm|r in Anvilmar
    .subzoneskip 77,1
step << Shaman
    .goto 1426/0,384.000,-6050.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teo Hammerstorm::257446|r
    .target Teo Hammerstorm::257446
    .turnin 94373 >>Turn in Call of Earth
    .accept 94374 >>Accept Call of Earth
step << !Paladin !Warlock !Hunter !Shaman
    .goto 1426/0,390.000,-6093.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grund Drokda::2756|r
    .target Grund Drokda::2756
    .accept 97277 >>Accept Grund and Gozwin
step << !Paladin !Warlock !Hunter
    #optional
    #completewith Stolen
    .goto 1426,28.831,68.698,12 >> Exit Anvilmar
    .subzoneskip 77,1
step << !Paladin !Warlock !Hunter
    #completewith next
    .goto 1426/0,497.300,-6118.500,20,0
    .goto 1426/0,467.700,-6012.800,20 >> Travel up to the hills in northern Coldridge Valley
step << !Paladin !Warlock !Hunter
    >>Kill the |cRXP_ENEMY_Snow Leopard Prowler|r
    >>Loot |cRXP_PICK_Gozwin's Mechanic's Log|r on the ground
    .complete 97277,2 --|1/1 Snow Leopard Prowler slain
    .mob +Snow Leopard Prowler::269075
    .goto 1426/0,447.800,-5942.000
    .complete 97277,1 --|1/1 Gozwin's Mechanic's Log
    .goto 1426/0,458.700,-5940.600
step << Shaman
    .isOnQuest 94374
    .goto 1426/0,582.100,-5907.800
    .cast 8202 >> |cRXP_WARN_Use the|r |T134743:0|t[Earth Sapta] |cRXP_WARN_at the |cRXP_PICK_Spirit Stone|r to summon the|r |cRXP_FRIENDLY_Minor Manifestation of Earth|r
    .use 6635
step << Shaman
    .goto 1426/0,576.500,-5908.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Minor Manifestation of Earth::5891|r
    .target Minor Manifestation of Earth::5891
    .turnin 94374 >>Turn in Call of Earth
    .accept 94375 >>Accept Call of Earth
step << Shaman
    #optional
    #completewith next
    .goto 1426/0,383.800,-6133.700,10 >> Return to |cRXP_FRIENDLY_Teo Hammerstorm|r in Anvilmar
    .subzoneskip 77,1
step << Shaman
    .goto 1426/0,383.900,-6050.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teo Hammerstorm::257446|r
    .target Teo Hammerstorm::257446
    .turnin 94375 >>Turn in Call of Earth
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #label Stolen
    .goto 1426/0,567.14,-6363.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >> Turn in The Stolen Journal
    .accept 282 >> Accept Senir's Observations
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter !Shaman
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3365 >> Turn in Bring Back the Mug
    .target Nori Pridedrift
step << Dwarf Priest/Gnome Priest
    #optional
    .xp 4+1690 >> Grind to 1690+/2100xp
step
    .goto 1426/0,390.000,-6093.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grund Drokda::2756|r
    .target Grund Drokda::2756
    .turnin 97277 >>Turn in Grund and Gozwin
step << Mage
    .goto 1426/0,388.17,-6056.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marryk Nurribit|r inside Anvilmar to train your level 4 spells
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .train 116 >> Train |T135846:0|t[Frostbolt]
    .target Marryk Nurribit
step << Dwarf Priest/Gnome Priest
    .goto 1426/0,393.53,-6056.72--c:Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Branstock Khalder|r
    .accept 5626 >> Accept In Favor of the Light
    .target Branstock Khalder
step << !Warrior !Rogue
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tOn your way to the tunnel, talk to |cRXP_FRIENDLY_Adlin Pridedrift|r at the starting camp
    >>|cRXP_BUY_Top up to 20|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,20 --Refreshing Spring Water (20)
    .target Adlin Pridedrift
step
    .goto 1426/0,152.900,-6235.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Thalos::1965|r
    .target Mountaineer Thalos::1965
    .turnin 282 >>Turn in Senir's Observations
    .accept 420 >>Accept Senir's Observations
    .accept 96628 >>Accept The Adventurer
step
    .goto 1426/0,135.100,-6248.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hands Springsprocket::6782|r
    .target Hands Springsprocket::6782
    .accept 2160 >>Accept Supplies to Tannok
step
    .goto 1426/0,111.82,-6206.61,15,0
    .goto 1426/0,46.32,-6037.19,15 >> Travel through Coldridge Pass
    .subzoneskip 800,1
    .isOnQuest 2160
]])

-- Shown as "5-11 Dun Morogh". The #name stays "5-9 Dun Morogh" because RestedXP keys saved progress (and
-- the first guide's #next) by name: renaming it would send everyone back to step 1.
RXPGuides.RegisterGuide([[
#forever
#version 35
<< Alliance
#group TimmyGnome
#name 5-9 Dun Morogh
#displayname 5-11 Dun Morogh
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
    .goto 1426/0,315.42,-5372.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tContinue to Brewnall Village and talk to |cRXP_FRIENDLY_Marleth Barleybrew|r
    >>|cRXP_WARN_Don't take The Perfect Stout from Rejold: it's skipped|r
    .accept 310 >> Accept Bitter Rivals
    .target Marleth Barleybrew
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
    .goto 1426/0,-537.200,-5587.000
    .subzone 131 >> Kill |cRXP_ENEMY_Crag Boars|r on your way back to Kharanos
    .mob Crag Boar
    .mob Large Crag Boar
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
    .goto 1426/0,-370.000,-5750.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Gretchen|r
    .turnin 98319 >> Turn in Secure the Mountain
    .accept 98323 >> Accept Secure the Mountain
    .target Mountaineer Gretchen::271546
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
step << !Warrior !Rogue
    .goto 1426/0,302.42,-5387.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeg Gibn|r, the ale and wine vendor next to the Barleybrews
    >>|cRXP_BUY_Top up to 15|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,15 --Refreshing Spring Water (15)
    .target Keeg Gibn
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
    >>Before Tim leaves for Ironforge
    +Craft a Copper Rod and give it to Tim
    +|cFFFF0000MAKE SURE TIM HAS A BRACER!|r
step << Paladin
    .goto 1455/0,-1152.40,-4821.13,15 >> Go to Ironforge with Tim: take the road north out of Kharanos, cross the bridge and follow the road east up the mountain
step << Paladin
    .goto 1455/0,-1152.40,-4821.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r, the gryphon master in the Great Forge
    .fp Ironforge >> Get the Ironforge flight path
    .target Gryth Thurden
step << Paladin
    .goto 1455/0,-1026.28,-4872.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWhile you're in Ironforge, talk to |cRXP_FRIENDLY_Senator Barin Redstone|r in the throne room
    .turnin 291 >> Turn in The Reports
    .target Senator Barin Redstone
step << Paladin
    >>|cRXP_WARN_Tim stays in Ironforge a while for his wand and Tailoring: go back and gather while he's busy|r
    .hs >> Hearth back to Kharanos
step << Paladin
    >>Gather wand materials while Tim finishes in Ironforge
    .collect 2770,10 >> 10 Copper Ore
    .collect 2835,20 >> 20 Rough Stone
step << Paladin
    #completewith DeeprunTram
    +|cRXP_WARN_When you have the materials, craft green Copper Shortswords (6 Copper Bars, 1 Weak Flux and 2 Linen Cloth each) and give them to Tim: he disenchants them for his Lesser Magic Wand|r
step << Paladin
    #completewith DeeprunTram
    +|cRXP_WARN_Linen Cloth: save 10 for your level 12 class quest (The Tome of Divinity) and 2 for each Copper Shortsword, and trade the rest to Tim. He turns it into Tailoring gear at the end of Elwynn (level 12)|r
step << Mage
    >>Gather wand materials before you go to Ironforge
    .collect 6217,1 >> Copper Rod (your paladin crafts it)
    +About 5 silver for training, Motes of Magic, Simple Wood and Coarse Thread
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
    >>|cRXP_WARN_It completes at 20 Enchanting, which you reach on the Stormwind trip at the end of Elwynn (level 12). Bring it back to him on the Ironforge stop at the end of Loch Modan|r
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
    #completewith DeeprunTram
    >>|cRXP_WARN_Keep your other Simple Wood. When your paladin gives you a green Copper Shortsword, Disenchant it for a|r |T132867:0|t[Lesser Magic Essence]|cRXP_WARN_, then craft the|r |T135139:0|t[Lesser Magic Wand] |cRXP_WARN_and equip it. Use the Novice's Practice Wand until then|r
    .collect 11287,1 --Lesser Magic Wand (1)
step << Mage
    .goto 1455,55.09,58.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nissa Firestone|r, the First Aid trainer just south of the gryphon master
    .skill firstaid,1 >> Learn First Aid
    .target Nissa Firestone
step << Mage
    .goto 1455,43.82,27.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthrar Threx|r, the tailoring trainer on the other side of the Great Forge
    .skill tailoring,1 >> Learn Tailoring
    .target Uthrar Threx
step << Mage
    .goto 1455,42.94,28.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Poranna Snowbraid|r next to Uthrar
    >>|cRXP_BUY_Buy 13|r |T132891:0|t[Coarse Thread] |cRXP_BUY_and 1 Bleach (about 1s 55c) for your Tailoring gear, crafted at the end of Elwynn. Short on money? Skip this step: Stormwind sells them too|r
    .collect 2320,13 --Coarse Thread (13)
    .collect 2324,1 --Bleach (1)
    .target Poranna Snowbraid
step << Mage
    #completewith DeeprunTram
    >>|cRXP_WARN_Tailoring stash for your crafting session in Stormwind at the end of Elwynn (level 12). Keep every|r |T132889:0|t[Linen Cloth] |cRXP_WARN_and turn it into|r |T132890:0|t[Bolts of Linen Cloth] |cRXP_WARN_as you go: each bolt is a Tailoring skill point. Ask your partner for spare linen too|r
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
-- Loch Modan at level 10, while it's still empty (the dwarf and gnome pack arrives at 10-11 and is back at 12-14):
-- the southern guard tower's first trogg pair (In Defense of the King's Lands, The Trogg Threat) where the South
-- Gate Pass comes out, then Thelsamar's flight path, hearth and Honor Students, plus Rat Catching (OPTIONAL),
-- killed on a loop north: the kobold hills west of town, Algaz Station (Mountaineer Stormpike's Task in,
-- Stormpike's Order and Filthy Paws out), the Silver Stream Mine's crates (level 12-14 kobolds; the user's call to
-- try it as a duo) and back to Stormpike. Thelsamar Blood Sausages is left out (user's call). RestedXP's Forever
-- mage route does the same quests at 10-12. Then fly to Ironforge and take the Deeprun Tram to Stormwind for Elwynn
-- Forest; Stormpike's Order goes in at Furen Longbeard by the tram exit. The Elwynn guide ends by hearthing back
-- here. The quests need level 10: their steps skip themselves below that. The Hall of Thanes quests in Ironforge
-- wait until it's time to run the dungeon.
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
    .xp <10,1
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r outside the southern guard tower, just past the pass
    >>|cRXP_WARN_Loch Modan is still empty at this point: its easy quests are quick now and slow once the pack arrives|r
    .accept 224 >> Accept In Defense of the King's Lands
    .target Mountaineer Cobbleflint
step
    .xp <10,1
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >> Go into the guard tower and up to the top floor
step
    .xp <10,1
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r on the top floor
    >>|cRXP_WARN_The Trogg Threat drops from the same troggs as Cobbleflint's quest|r
    .accept 267 >> Accept The Trogg Threat
    .target Captain Rugelfuss
step
    .isOnQuest 224
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
    >>|cRXP_WARN_They're level 11-12 and stand in groups: pull one at a time, and run if you get more than two|r
    .complete 224,1 --Stonesplinter Trogg (10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Stonesplinter Scout (10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Trogg Stone Tooth (8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step
    .isOnQuest 224
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .turnin 224 >> Turn in In Defense of the King's Lands
    .target Mountaineer Cobbleflint
step
    .isOnQuest 267
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >> Go back up to the top floor of the guard tower
step
    .isOnQuest 267
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r on the top floor
    >>|cRXP_WARN_Leave Mountaineer Gravelgaw's follow-up: its troggs are level 13-14. It waits for your next Loch Modan visit|r
    .turnin 267 >> Turn in The Trogg Threat
    .target Captain Rugelfuss
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
    .xp <10,1
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r, who walks the road through Thelsamar
    >>|cRXP_WARN_Mountaineer Stormpike's Task sends you to Algaz Station, where Stormpike also gives Filthy Paws: a loop north before you fly out|r
    .accept 1339 >> Accept Mountaineer Stormpike's Task
    .target Mountaineer Kadrell
step
    .xp <10,1
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_WARN_OPTIONAL (loot): 12 Tunnel Rat Ears from the kobolds on the loop, in the hills west of town and around the Silver Stream Mine. Skip this step if you'd rather not|r
    .accept 416 >> Accept Rat Catching
    .target Mountaineer Kadrell
step
    #completewith ThelsamarLoop
    .isOnQuest 416
    >>Kill |cRXP_ENEMY_Tunnel Rat|r kobolds as you go. Loot them for their |cRXP_LOOT_Ears|r
    .complete 416,1 --Tunnel Rat Ear (12)
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Kobold
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Geomancer
step
    .isOnQuest 1339
    #completewith next
    .goto 1432,26.7,44.1,30,0
    .goto 1432,25.4,33.4,30,0
    .goto 1432,23.490,18.008,15,0
    .goto 1432,24.279,17.959,15 >> Head north-west through the kobold hills to Algaz Station and go into the bunker
step
    .isOnQuest 1339
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    >>|cRXP_WARN_Stormpike's Order goes to Furen Longbeard, right by the tram exit in Stormwind|r
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
    .accept 1338 >> Accept Stormpike's Order
    .accept 307 >> Accept Filthy Paws
    .target Mountaineer Stormpike
step
    .isOnQuest 307
    #completewith next
    .goto 1432/0,-2972.96,-4822.30,15 >> Head east along the hills to the entrance of the Silver Stream Mine
step
    .isOnQuest 307
    #loop
    .goto 1432/0,-2972.96,-4853.58,12,0
    .goto 1432/0,-2997.78,-4868.29,12,0
    .goto 1432/0,-2967.44,-4892.21,12,0
    .goto 1432/0,-2983.99,-4894.05,12,0
    .goto 1432/0,-2995.02,-4941.88,12,0
    .goto 1432/0,-2978.47,-4934.52,12,0
    .goto 1432/0,-2956.41,-4945.56,12,0
    .goto 1432/0,-2978.47,-4934.52,12,0
    .goto 1432/0,-2995.02,-4941.88,12,0
    .goto 1432/0,-2983.99,-4894.05,12,0
    .goto 1432/0,-2967.44,-4892.21,12,0
    .goto 1432/0,-2997.78,-4868.29,12,0
    >>Loot the |cRXP_PICK_Miners' League Crates|r in the mine for 4 |cRXP_LOOT_Miners' Gear|r
    >>|cRXP_WARN_The kobolds inside are level 12-14: pull one at a time|r
    >>|cRXP_WARN_Tunnel Rat Geomancers cast Flame Ward, which makes them immune to fire: Frostbolt them|r << Mage
    .complete 307,1 --Miners' Gear (4)
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    .isOnQuest 416
    #loop
    .goto 1432,37.3,18.4,0
    .goto 1432,39.4,22.6,0
    .goto 1432,37.3,18.4,35,0
    .goto 1432,40.0,18.0,35,0
    .goto 1432,39.4,22.6,35,0
    .goto 1432,38.4,14.3,35,0
    >>Finish the |cRXP_LOOT_Tunnel Rat Ears|r around the mine entrance, where most of the kobolds are
    >>|cRXP_WARN_OPTIONAL: if the ears drop slowly, skip this step and abandon Rat Catching|r
    .complete 416,1 --Tunnel Rat Ear (12)
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Kobold
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Geomancer
step
    .isQuestComplete 307
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack at Algaz Station, talk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 307 >> Turn in Filthy Paws
    .target Mountaineer Stormpike
step
    #label ThelsamarLoop
    .isQuestComplete 416
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r on the road
    .turnin 416 >> Turn in Rat Catching
    .target Mountaineer Kadrell
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
-- Shown as "11-12 Elwynn Forest": the #name stays "10-12 Elwynn Forest" because RestedXP keys saved progress by it.
-- The core is RestedXP's Forever "11-12 Elwynn (Dwarf/Gnome)" route with the Fargodeep and Jasperlode mines and the
-- Young Lovers deliveries added. With the level 10 Loch Modan visit you're 12 by Goldshire, after the first loop
-- (the user's test run dinged at The Fargodeep Mine). From there Elwynn is a bonus, so it keeps only extremely easy
-- XP (user's call): turn-ins and deliveries on the way, Jasperlode's walk-through, the Eastvale chain to Rolf and
-- back, Downstream's three riverbank items (they respawn instantly), the Redridge delivery with the Lakeshire flight
-- path, and Westbrook, Westfall Stew, The Forgotten Heirloom (Farmer Furlbrow beside Verna; his watch is in the
-- old farmhouse about 370 yards west) and Report to Gryan Stoutmantle on the way to Sentinel Hill. Princess Must Die!
-- stays too (user's call): one elite at the Brackwell Pumpkin Patch on the way back from the river to Guard Thomas,
-- handed in at the Stonefield farm on the way west. Cut for that reason: Delicate Instruments and the mage's An
-- Enchanting Lesson (Tower of Azora), Protect the Frontier, Croaky, Red Linen Goods, Applejack Still and An Apple
-- Treat; Lost Necklace was already out. Riverpaw
-- Gnoll Bounty, Hogger and any grinding stay out because Loch Modan pays better by then. The Hearthstone stays bound
-- in Thelsamar (guide 2), so Redridge ends with a flight to Stormwind, and the guide ends with Report to Gryan
-- Stoutmantle, The People's Militia (user's call, for XP: Defias Trappers and Smugglers at the camp about 280 yards
-- west of Gryan's tower, which RestedXP calls a dynamic respawn area), the Sentinel Hill flight path and a hearth to
-- Thelsamar. Mages: Speak with Jennea (Zaldimar in Goldshire) goes in on the Stormwind stop after Redridge, Mirror
-- Lake's water comes from the Mirror Lake waterfall on the way to Westbrook, and a flight from Sentinel Hill to
-- Stormwind hands it in before the hearth. That last Stormwind trip is also the mage's whole Tailoring and
-- Enchanting session, moved from level 10 so the duo doesn't wait on it: linen top-up and 2 Minor Mana Potions at
-- the Auction House, Enchanting 20, bolts to Tailoring 25, the robe, pants, gloves and Linen Reagent Bag, then
-- Tailoring 35 and Novice Arcanist's Sash (the potions are its reagent) and Green Linen Bracers. Meanwhile a level
-- 12 Dwarf paladin flies from Sentinel Hill to Ironforge for the start of The Tome of Divinity (Brandur, Tiza, John
-- Turner, Muiredon) and hearths from there. The Stormwind harbor quests wait for later harbor visits, as in
-- RestedXP's route: Fishin' Time at the Darkshore boat at 15, Philmor's Favor and Gatehouse Goods when the boat from
-- Darkshore comes in after the Ruins of Lordaeron (full XP up to 17 and 20). The bait for Fishin' Time is still
-- bought at 10, from Catherine Leland next to the Fishing trainer. Collecting Kelp (and with it The Escape) and
-- Bottles and Baubles are out: Crystal Lake's murlocs and junk piles won't hold up on launch day. Guard Thomas
-- doesn't offer Bounty on Murlocs in Forever. A Bundle of Trouble and Stolen Enchanting Supplies are skipped on
-- purpose (slow, contested pickups). Hogger and Goldtooth stay out: Hogger's turn-in is in Goldshire, which the
-- route has already left, and Goldtooth is a single spawn in a crowded mine. Stormpike's Delivery (for Loch Modan)
-- is tried at Grimand Elmore off the tram; if he wants Elmore's Task first, Smith Argus gives it and the
-- post-Redridge stop in Stormwind swaps it. 1429 is Elwynn Forest, 1453 Stormwind City, 1433 Redridge Mountains and
-- 1436 Westfall.
RXPGuides.RegisterGuide([[
#forever
#version 37
<< Alliance
#group TimmyGnome
#name 10-12 Elwynn Forest
#displayname 11-12 Elwynn Forest
#next 12-14 Loch Modan

step
    .isOnQuest 1338
    .goto 1453/0,600.07,-8427.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tLeave the tram station and talk to |cRXP_FRIENDLY_Furen Longbeard|r in the Dwarven District, near the tram
    .turnin 1338 >> Turn in Stormpike's Order
    .target Furen Longbeard
step
    .goto 1453/0,685.22,-8387.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimand Elmore|r in the Dwarven District
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
    >>|cRXP_BUY_Buy 1|r |T134335:0|t[Shiny Bauble] |cRXP_BUY_and 3 Nightcrawlers (about 3s 50c) and keep them: Gilbert Gray at Stormwind Harbor takes them for Fishin' Time (675 XP) while you wait for the Darkshore boat at 15|r
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
    #completewith ArcanistCraft
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
    >>|cRXP_WARN_Still no Lesser Magic Wand? When your paladin gives you a green Copper Shortsword, Disenchant it for a|r |T132867:0|t[Lesser Magic Essence]|cRXP_WARN_, then craft the|r |T135139:0|t[Lesser Magic Wand] |cRXP_WARN_(it also takes a Simple Wood) and equip it|r
    .collect 11287,1 --Lesser Magic Wand (1)
step << Mage
    #completewith ArcanistCraft
    +|cRXP_WARN_Keep all your Linen Cloth and turn it into bolts as you go: the Stormwind trip at the end of Elwynn is your whole Tailoring session (robe, pants, gloves, Linen Reagent Bag, Novice Arcanist's Sash and Green Linen Bracers). That's about 94 linen in total, counting each bolt as 2|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gramma Stonefield|r inside the farmhouse, then |cRXP_FRIENDLY_Ma Stonefield|r outside
    >>|cRXP_WARN_Skip Lost Necklace from "Auntie" Bernice: it's a long walk for little XP|r
    .turnin 111 >> Turn in Speak with Gramma
    .accept 107 >> Accept Note to William
    .goto 1429,34.945,83.855
    .target +Gramma Stonefield
    .accept 88 >> Accept Princess Must Die!
    .goto 1429/0,332.43,-9894.99
    .target +Ma Stonefield
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
    #completewith next
    .goto 1429/0,-604.49,-9180.39,15 >> Head to the Jasperlode Mine
step
    .goto 1429/0,-588.73,-9130.67,15,0
    .goto 1429/0,-572.07,-9116.55,15,0
    .goto 1429/0,-560.62,-9100.58
    >>Follow the tunnel through the middle of the mine
    .complete 76,1 --Scout through the Jasperlode Mine
step
    #completewith next
    .goto 1429/0,-1032.06,-9610.23,30 >> Follow the road east to the bridge
step
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r at the east bridge
    .turnin 35 >> Turn in Further Concerns
    .accept 37 >> Accept Find the Lost Guards
    .target Guard Thomas
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
    .isOnQuest 88
    .goto 1429/0,-869.87,-9768.10
    >>On the way back to Guard Thomas, kill |cRXP_ENEMY_Princess|r at the Brackwell Pumpkin Patch, west of the river. Loot her for the |cRXP_LOOT_Brass Collar|r
    >>|cRXP_WARN_Two|r |cRXP_ENEMY_Porcine Entourage|r |cRXP_WARN_fight with her, and her charge hits hard|r
    .complete 88,1 --Brass Collar (1)
    .mob Princess
step
    #label ThomasReturn
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    >>|cRXP_WARN_Report to Gryan Stoutmantle goes in at Sentinel Hill, where the guide ends|r
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
    >>|cRXP_WARN_Mirror Lake hands you Jennea's Flask: you fill it at the Mirror Lake waterfall on the way to Westbrook|r
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
step << Dwarf Paladin
    #completewith TomeLinen
    +|cRXP_WARN_Keep 10 Linen Cloth for The Tome of Divinity, your level 12 class quest: at the end of Elwynn you fly to Ironforge for it, and John Turner takes the 10 linen. Don't sell or trade them|r
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
    .isQuestComplete 88
    .goto 1429/0,332.43,-9894.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHead south-west to the Stonefield farm and talk to |cRXP_FRIENDLY_Ma Stonefield|r
    .turnin 88 >> Turn in Princess Must Die!
    .target Ma Stonefield
step << Mage
    .isOnQuest 1861
    .goto 1429/0,529.57,-9363.05
    >>|cRXP_WARN_On the way to Westbrook, use|r |T132788:0|t[Jennea's Flask] |cRXP_WARN_at the base of the Mirror Lake waterfall (5 second cast)|r
    .use 7207
    .complete 1861,1 --Mirror Lake Water Sample (1)
step
    #completewith next
    .goto 1429/0,673.96,-9704.45,80 >> Head south to Westbrook Garrison
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verna Furlbrow|r and |cRXP_FRIENDLY_Farmer Furlbrow|r at the farm by the road
    .accept 36 >> Accept Westfall Stew
    .goto 1436/0,919.47,-9853.13
    .target +Verna Furlbrow
    .accept 64 >> Accept The Forgotten Heirloom
    .goto 1436/0,916.67,-9852.67
    .target +Farmer Furlbrow
step
    .isOnQuest 64
    .goto 1436/0,1290.12,-9849.87
    >>Head west to the old Furlbrow farmhouse and loot |cRXP_LOOT_Furlbrow's Pocket Watch|r from the |cRXP_PICK_wardrobe|r inside
    >>|cRXP_WARN_Defias hang around the farm: clear the ones in your way|r
    .complete 64,1 --Furlbrow's Pocket Watch (1)
step
    .isQuestComplete 64
    .goto 1436/0,916.67,-9852.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack at the road, talk to |cRXP_FRIENDLY_Farmer Furlbrow|r
    .turnin 64 >> Turn in The Forgotten Heirloom
    .target Farmer Furlbrow
step
    .goto 1436/0,1042.67,-10111.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFollow the road south and talk to |cRXP_FRIENDLY_Salma Saldean|r at the Saldean farm
    >>|cRXP_WARN_Don't take her follow-ups: they're Westfall collection quests|r
    .turnin 36 >> Turn in Westfall Stew
    .target Salma Saldean
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tKeep following the road south to Sentinel Hill and talk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
    .accept 12 >> Accept The People's Militia
    .target Gryan Stoutmantle
step
    .isOnQuest 12
    #loop
    .goto 1436,47.79,46.08,0
    .goto 1436,47.79,46.08,30,0
    .goto 1436,48.5,45.2,30,0
    .goto 1436,49.5,46.4,30,0
    .goto 1436,48.6,47.7,30,0
    .goto 1436,47.1,46.2,30,0
    >>Kill |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r at the camp just west of Sentinel Hill
    >>|cRXP_WARN_Dynamic respawns: the more you kill, the faster they come back|r
    .complete 12,1 --Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 --Defias Smuggler slain (15)
    .mob +Defias Smuggler
step
    .isQuestComplete 12
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack at the tower, talk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    >>|cRXP_WARN_Skip the next part: you're heading back to Loch Modan|r
    .turnin 12 >> Turn in The People's Militia
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBefore you hearth, talk to |cRXP_FRIENDLY_Thor|r and fly to Stormwind: the Auction House, your Tailoring session and Jennea. It's a short flight, and your Hearthstone works from there
    >>|cRXP_WARN_Your partner flies to Ironforge for his class quest meanwhile. You meet up again in Thelsamar|r
    .fly Stormwind >> Fly to Stormwind
    .target Thor
step << Mage
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r in the Trade District: this trip is your whole Tailoring session
    >>|cRXP_WARN_You want about 94|r |T132889:0|t[Linen Cloth] |cRXP_WARN_in total, counting each bolt as 2, plus 12 for each reagent bag you make your partner. The potions are a reagent for Novice Arcanist's Sash|r
    +Buy the linen you're missing, or tick this if you have enough
    .collect 2455,2 >> Buy 2 Minor Mana Potions
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
    >>|cRXP_BUY_Buy|r |T132891:0|t[Coarse Thread] |cRXP_BUY_(one per item, three per Linen Bag, three for the cape, six for the Linen Reagent Bag, two for the Bracers, one per Linen Cloak you craft for skill points, and six more for each reagent bag you make your partner), 1 Bleach for the robe, 2 Fine Thread for the Sash and 1 Green Dye for the Bracers|r
    .collect 2320,21 --Coarse Thread (21)
    .collect 2324,1 --Bleach (1)
    .collect 2321,2 --Fine Thread (2)
    .collect 2605,1 --Green Dye (1)
    .target Alexandra Bolero
step << Mage
    >>|cRXP_WARN_Craft a White Linen Robe (Intellect), Brown Linen Pants and Heavy Linen Gloves (Spell Power), then equip them|r
    >>|cRXP_WARN_Spare bolts: a Linen Bag (6 slots) if you need room|r
    .collect 6241,1 --White Linen Robe (1)
    .collect 4343,1 --Brown Linen Pants (1)
    .collect 4307,1 --Heavy Linen Gloves (1)
step << Mage
    >>|cRXP_WARN_Craft a Linen Reagent Bag (6 bolts and 6 Coarse Thread) and equip it: 6 slots for your reagents|r
    >>|cRXP_WARN_Got the bolts and silver to spare? Craft one for your partner too: it's tradeable|r
    .collect 253664,1 --Linen Reagent Bag (1)
step << Mage
    .goto 1453,53.48,81.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tOPTIONAL nice-to-have: |cRXP_FRIENDLY_Lawrence Schneider|r also teaches the Reinforced Linen Cape, a Spell Power cloak (level 7) from 2 bolts and 3 Coarse Thread
    >>|cRXP_WARN_It needs more Tailoring than the robe, pants and gloves. If he won't teach it yet, make a Linen Cloak or two first, or skip this step|r
    .train 2397 >> Train Reinforced Linen Cape
    .collect 2580,1 >> Craft a Reinforced Linen Cape, then equip it
    .target Lawrence Schneider
step << Mage
    .goto 1453,53.48,81.47
    >>|cRXP_WARN_Novice Arcanist's Sash needs 35 Tailoring. Short? Linen Cloak gives a point every craft until 35, for 1 bolt and 1 Coarse Thread each|r
    .skill tailoring,35 >> Reach 35 Tailoring
step << Mage
    .goto 1453,53.48,81.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lawrence Schneider|r again
    >>|cRXP_WARN_Won't he teach Green Linen Bracers yet? Craft Simple Linen Pants (a point every craft until 40) and ask again|r
    .train 1257368 >> Train Novice Arcanist's Sash
    .train 3841 >> Train Green Linen Bracers
    .target Lawrence Schneider
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
    #label TomeLinen
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
-- Ironforge to finish. The easy Loch Modan quests are done on the first visit at level 10, while the zone is still
-- empty (guide 2): the first trogg pair, Rat Catching, Mountaineer Stormpike's Task and
-- Filthy Paws, with Stormpike's Order handed to Furen Longbeard off the Stormwind tram. Their steps here are kept as
-- a fallback and skip themselves if you did them (RestedXP counts a quest you've handed in as accepted and
-- complete). Gathering quests a launch-day crowd makes slow are left out: Bingles' Missing Supplies, Crocolisk
-- Hunting, Gathering Idols and Thelsamar Blood Sausages. Rat Catching, the two hardest trogg quests (at the end, when you're stronger), Daryl's
-- timed hunts and Silver of the Waves (from 13: a toolbox on the loch floor on the way east, handed in at Khara
-- Deepwater on the way out) are OPTIONAL. 1432 is Loch Modan, 1426 Dun Morogh and 1455 Ironforge.
RXPGuides.RegisterGuide([[
#forever
#version 18
<< Alliance
#group TimmyGnome
#name 12-14 Loch Modan
#next 14+ Hall of Thanes

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
-- In Defense of the King's Lands: the first two kill quests from the southern guard tower, plus The Trogg Threat on
-- the same troggs. The first and The Trogg Threat are usually done at level 10 on the way in (guide 2), so this lap
-- is mostly Mountaineer Gravelgaw's second part. The third and fourth are harder (level 15-17 troggs) and OPTIONAL:
-- they come at the end of the guide, when you're stronger.
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
-- Dun Morogh detour through the South Gate Pass: The Lost Pilot, and the paladin's Narm Faulk.
step
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
    >>|cRXP_WARN_Skipped Filthy Paws at level 10? Leave it now: its crates in the Silver Stream Mine will be swarmed by this point|r
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
    .xp <13,1
    #loop
    .goto 1432/0,-3319.80,-5217.60,0
    .goto 1432/0,-3251.55,-5285.88,0
    .goto 1432/0,-3342.57,-5484.55,0
    .goto 1432/0,-3386.71,-5462.48,0
    .goto 1432/0,-3319.80,-5217.60,20,0
    .goto 1432/0,-3251.55,-5285.88,20,0
    .goto 1432/0,-3342.57,-5484.55,20,0
    .goto 1432/0,-3386.71,-5462.48,20,0
    >>Swim east into the loch and click the |cRXP_PICK_Discarded Fishing Toolbox|r on the lake floor. It spawns in one of several spots: swim around until you see the exclamation point on your minimap
    >>|cRXP_WARN_OPTIONAL: Silver of the Waves, a Forever quest you hand in at Thelsamar on the way out. It rewards some XP and the Repurposed Hair Band (cloth wrist, +2 Intellect, +2 Spirit). Skip this step if you'd rather take the road. Mind the Young Threshadons in the water: they're well above your level|r
    .accept 86614 >> Accept Silver of the Waves
step
    #completewith next
    .goto 1432,64.9,66.66,40 >> Head east to Ironband's Excavation: along the road around the loch, or across from the water
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
    .goto 1432,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jern Hornhelm|r
    .turnin 298 >> Turn in Excavation Progress Report
    .accept 301 >> Accept Report to Ironforge
    .target Jern Hornhelm
step
    .isOnQuest 86614
    .goto 1432/0,-3104.90,-5210.10,5,0
    .goto 1432/0,-3086.60,-5216.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khara Deepwater|r, the fishing supplies vendor on the west bank by the dock, north of the inn
    >>|cRXP_WARN_She's the K.D. on the Monogrammed Silver Hair Clip|r
    .turnin 86614 >> Turn in Silver of the Waves
    .target Khara Deepwater
-- Back to the southern guard tower for the last two In Defense of the King's Lands quests, now that you're stronger
-- (both OPTIONAL), then back to Thelsamar for the flight.
step
    #completewith next
    .goto 1432,34.405,48.276,30,0
    .goto 1432,27.501,65.367,30,0
    .goto 1432,23.522,70.102,30 >> Head south-west to the southern guard tower
step
    .goto 1432,23.47,74.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Wallbang|r
    >>|cRXP_WARN_OPTIONAL: level 15-16 troggs at the far end of the valley. You're back for them now that you're stronger (14 or higher is best). Skip this step to leave them|r
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
    >>|cRXP_WARN_OPTIONAL: Grawmug (level 17) and his two guards (16) fight together. Best at 14 or higher. Skip this step to leave it|r
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
step
    #completewith next
    .goto 1432,27.501,65.367,30,0
    .goto 1432,34.405,48.276,30,0
    .subzone 144 >> Head back north to Thelsamar
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
step << Mage
    .goto 1455,43.82,27.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthrar Threx|r again
    >>|cRXP_WARN_Journeyman raises your Tailoring cap from 75 to 150 so you can keep levelling it later. It needs 50 Tailoring and costs about 5 silver. If he won't teach it, try Jormund Stonebrow (Expert Tailor) next to him|r
    .skill tailoring,150,max,1 >> Train Journeyman Tailoring
    .target Uthrar Threx
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
#version 2
<< Alliance
#group TimmyGnome
#name 14+ Hall of Thanes
#next 15+ Darkshore

step
    #completewith EnterHoT
    +|cRXP_WARN_Start forming a party to run the Hall of Thanes dungeon|r
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

-- Darkshore from level 15, straight after the Hall of Thanes: the tram to Stormwind (Stormpike's Order on the way, if
-- it's still in your log: it normally goes in off the tram at level 11),
-- Fishin' Time at the harbor while you wait (the bait was bought at 10; Catherine Leland sells it again if not),
-- the Stormwind Harbor boat to Auberdine, and nearly every quest in the zone that's quick or pays well. It follows
-- RestedXP's Forever Darkshore route (its 14-16 and 16-19 guides) for a non-Night Elf, minus the Buzzbox chain and
-- Fruit of the Sea (slow drops, user's call), Easy Strider Living (Cooking 10), The Family and the Fishing Pole
-- (Auction House fish), Tools of the Highborne (RestedXP drops it past 16), the escort for The Absent Minded
-- Prospector, and the quests that end outside Darkshore: Therylune's Escape and The Tower of Althalaxx's third part
-- (Ashenvale), Mathystra Relics (its turn-in is back at Onu), A Lost Master's second part and The Powers Below.
-- OPTIONAL: For Love Eternal (Anaya is a rare; Cerellean gives it on the dock as you come in), WANTED: Jai'vhanel,
-- Bashal'Aran's satyr seal and Gyromast's Revenge. Every drop quest has a sticky plus a real finish step you can
-- skip. The Hearthstone goes to Auberdine. Loops: south (the bear trap, the furbolg camp), north (the sunken
-- lockboxes, Bashal'Aran, the red crystal), Ameth'Aran, north-east (the crystal again, the Cliffspring River, the
-- cave), the far south (bears, Onu's Master's Glaive chain, the Twilight camp, Remtravel, Murkdeep, the beached
-- creatures) and the far north-east (Den Mother, the Blackwood stores and Xabraxxis, the Tower of Althalaxx,
-- Gyromast), then a hearth back. No mage or paladin trainer here: level 16 and 18 training waits for your next city.
-- 1439 is Darkshore ("1439/1,y,x" are Kalimdor world coordinates), 1453 Stormwind City and 1455 Ironforge.
RXPGuides.RegisterGuide([[
#forever
#version 11
<< Alliance
#group TimmyGnome
#name 15+ Darkshore
#next 18+ Ruins of Lordaeron

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
    .goto 1453,55.09,69.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tNo bait left from level 10? Talk to |cRXP_FRIENDLY_Catherine Leland|r, the fishing supplier on the canal just west of the Trade District, on your way to the harbor
    >>|cRXP_BUY_Buy 1|r |T134335:0|t[Shiny Bauble] |cRXP_BUY_and 3 Nightcrawlers (about 3s 50c): Gilbert Gray at the harbor takes them for Fishin' Time|r
    .collect 6529,1 --Shiny Bauble (1)
    .collect 6530,3 --Nightcrawlers (3)
    .target Catherine Leland
    .zoneskip Darkshore
step
    .goto 1453,26.0,47.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWhile you wait for the boat, talk to |cRXP_FRIENDLY_Gilbert Gray|r at the south end of the harbor: accept Fishin' Time and hand it straight back with the bauble and nightcrawlers
    .accept 95065 >> Accept Fishin' Time
    .turnin 95065 >> Turn in Fishin' Time
    .target Gilbert Gray
    .zoneskip Darkshore
step
    #completewith next
    .goto 1453/0,875.50,-8680.90,20,0
    .goto 1453/0,1330.10,-8645.40,15 >> Go west into Stormwind Harbor: the Darkshore boat leaves from the southernmost dock
    .zoneskip Darkshore
step
    .goto 1453/0,1330.10,-8645.40
    >>|cRXP_WARN_On the crossing, disenchant greens you won't use, turn spare cloth into bolts and conjure water|r << Mage
    .zone Darkshore >> Take the boat to Auberdine in Darkshore
step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r on the dock as you come in
    >>|cRXP_WARN_OPTIONAL: his pendant is on Anaya Dawnrunner, a rare at Ameth'Aran (she respawns fast in Forever). Skip this step if you'd rather not. You may need to wait out his talk if someone just handed it in|r
    .accept 963 >> Accept For Love Eternal
    .target Cerellean Whiteclaw
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
    .isQuestComplete 3524
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Turn in Washed Ashore
    .accept 4681 >> Accept Washed Ashore
    .target Gwennyth Bly'Leggonde
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
    .goto 1439,41.901,31.339
    >>Click the |cRXP_PICK_Beached Sea Creature|r on the shore
    .accept 4723 >> Accept Beached Sea Creature
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
    >>|cRXP_WARN_Don't skip The Fragments Within: it rewards a +6 spell power staff|r << Mage
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
    .isOnQuest 4762
    .goto 1439/1,-386.39,7219.83
    >>|cRXP_WARN_Use the|r |T134865:0|t[Empty Sampling Tube] |cRXP_WARN_at the base of the Cliffspring River|r
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
step
    .isOnQuest 947
    .goto 1439,54.5,31.7,10 >> Approach the Cliffspring Falls cave: the ramp up to it starts here
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
    >>|cRXP_WARN_Don't skip this one: take the staff, +6 spell power|r << Mage
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
    #completewith PeltsFinish
    .isOnQuest 986
    >>Kill |cRXP_ENEMY_Moonstalker Sires|r when you see them. Loot them for |cRXP_LOOT_Fine Moonstalker Pelts|r
    >>|cRXP_WARN_Their Exploit Weakness backstab hits for 20-40 if you turn your back|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
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
    >>|cRXP_WARN_The Peerless Eye drops rarely, and nothing else depends on this quest (about 1,250 XP). Slow? Skip this step and abandon It's All Fun and Games Until...|r
    .complete 98042,1 --Peerless Eye (1)
    .mob +Twilight Disciple
    .mob +Twilight Thug
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
    >>|cRXP_WARN_Not here? Someone is escorting him, or he's respawning after an escort: wait a few minutes. Or skip this step, do Murkdeep next door and come back to hand it in|r
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
    .isOnQuest 4727
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    >>|cRXP_WARN_That's Darkshore done. Train your level 16 and 18 spells at your next city|r
    .turnin 4727 >> Turn in Beached Sea Turtle
    .target Gwennyth Bly'Leggonde
]])

-- Ruins of Lordaeron, the 5-player dungeon in the ruined city above the Undercity, straight from the end of
-- Darkshore: bring three more players. All four Alliance quests start inside: Captain Truman's Abominable Creatures
-- (on your left as you come in), Bloodied Insignia (an item the undead drop), Crest of Lordaeron (an item in one of
-- five spots) and Remember That I Love You (the Crumpled Paper by Edward's body in Rath'mael's graveyard). Forever
-- pays a bonus on dungeon quests (2.375 times): about 22,400 XP for the four. The way there: the ship from Auberdine
-- to Menethil Harbor (jump off before it docks for the flight path, then back onto the same ship), on to Southshore
-- (flight path), then the run north past Dalaran and across Lordamere Lake to the Undercity, where you're flagged
-- for PvP. The Hearthstone stays in Auberdine from Darkshore: after the dungeon you hearth there and take the boat
-- to Stormwind for the other three turn-ins and your level 16, 18 and 20 training (Hearthstone on cooldown? Run back
-- to Southshore and fly). Coming in by boat, Philmor's Favor starts at the harbor and goes in at Trias' Cheese, with
-- Gatehouse Goods, on the walk south to the Valley of Heroes (both moved here from level 10, full XP up to 20).
-- Stormwind also picks up the next guide's Deadmines quests: Underground Assault (Shoni the
-- Shilent), Oh Brother. . . and Collecting Memories (Wilder Thistlenettle), and the paladin's Tome of Valor if
-- you're 20. The way in, the inside steps and the turn-in coordinates follow RestedXP's Forever "16-18 Ruins of
-- Lordaeron" (its Dungeon Guide, in beta); the boss order and the Crest's five spots come from community guides.
-- 1439 is Darkshore, 1437 Wetlands, 1424 Hillsbrad Foothills, 1416 Alterac Mountains, 1420 Tirisfal Glades, 1458
-- Undercity and 1453 Stormwind City.
RXPGuides.RegisterGuide([[
#forever
#version 9
<< Alliance
#group TimmyGnome
#name 18+ Ruins of Lordaeron
#next 20+ The Deadmines

step
    #completewith EnterRoL
    +|cRXP_WARN_Start forming a party to run the Ruins of Lordaeron dungeon|r
step
    #completewith next
    .goto 1439,32.432,43.744,15 >> Go to the Menethil Harbor ship at the far end of the Auberdine pier
    .zoneskip Wetlands
    .zoneskip Hillsbrad Foothills
step
    .goto 1439/1,826.67,6409.82
    >>|cRXP_WARN_The ship stops at Menethil Harbor, then goes on to Southshore. Get the Menethil flight path on the way: just before it docks, jump off, run to the flight master, then run straight back and get on the same ship you jumped off|r
    >>|cRXP_WARN_On the crossing, disenchant greens you won't use and craft: spare cloth into bolts, and Tailoring if you're levelling it. Stop in time to jump off at Menethil|r << Mage
    .zone Wetlands >> Take the ship to Menethil Harbor
    .zoneskip Hillsbrad Foothills
step
    .goto 1437/0,-782.000,-3793.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tJump off the ship just before it docks and run to |cRXP_FRIENDLY_Shellei Brondir|r
    >>|cRXP_WARN_Be quick: the ship only stops for a moment before it goes on to Southshore|r
    .fp Menethil Harbor >> Get the Menethil Harbor flight path
    .target Shellei Brondir
    .zoneskip Hillsbrad Foothills
step
    .goto 1437/0,-581.800,-3722.400
    >>|cRXP_WARN_Run straight back and get on the same ship. Missed it? Wait on the dock for the next ship to Southshore|r
    >>|cRXP_WARN_On the way to Southshore, carry on disenchanting and crafting|r << Mage
    .zone Hillsbrad Foothills >> Ride the ship on to Southshore
step
    .goto 1424/0,-512.15,-715.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r, the gryphon master
    >>|cRXP_WARN_Don't skip this one: if your Hearthstone is still on cooldown after the dungeon, you fly back to Stormwind from here|r
    .fp Southshore >> Get the Southshore flight path
    .target Darla Harris
step
    #label EnterRoL
    .goto 1424/0,-272.000,-381.800,100,0
    .goto 1424/0,-47.400,-249.400,100,0
    .goto 1416/0,68.400,-46.200,130,0
    .goto 1416/0,45.300,257.100,150,0
    .goto 1416/0,-54.700,812.600,100,0
    .goto 1420/0,7.600,1530.500,70,0
    .goto 1420/0,-21.800,1668.600,20,0
    .goto 1420/0,-56.600,1692.000,10,0
    .goto 1420/0,-55.200,1779.600,15,0
    .goto 1420/0,6.300,1791.500,25,0
    .goto 1420/0,4.300,1847.500,10,0
    .goto 1458/0,238.400,1872.200,20,0
    .goto 1458/0,170.700,1804.700
    .subzone 16611 >> Run north to the Ruins of Lordaeron above the Undercity and enter the dungeon
    >>|cRXP_WARN_North-west past Dalaran, then swim north across Lordamere Lake into Tirisfal Glades and follow the road to the Undercity. Give the higher level cats, bears, spiders and murlocs on the way a wide berth|r
    >>|cRXP_WARN_You're flagged for PvP as soon as you reach the Undercity: Horde players can attack you|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Truman|r: turn left as you come in
    .accept 95250 >> Accept Abominable Creatures
    .target Captain Truman
step
    #completewith InsigniaFinish
    >>Loot the |cRXP_ENEMY_skeletons|r and other undead for a |T133328:0|t[|cRXP_LOOT_Bloodied Insignia|r]: use it to start the quest, then keep looting until you have 10
    >>|cRXP_WARN_Whoever loots the first one: share the quest with the group|r
    .use 268535 >> |cRXP_WARN_Use the|r |T133328:0|t[|cRXP_LOOT_Bloodied Insignia|r] |cRXP_WARN_to start the quest|r
    .collect 268535,1,95195 --Bloodied Insignia (1)
    .accept 95195 >> Accept Bloodied Insignia
    .complete 95195,1 --Bloodied Insignia (10)
step
    #completewith CrestFinish
    >>Look out for the |T4504543:0|t[|cRXP_LOOT_Crest of Lordaeron|r]: it hangs on a wall or lies on the floor in one of five spots, a different one each run. Loot it and use it to start the quest
    >>|cRXP_WARN_The spots: behind the crypt door right of the fountain south of the entrance (opening it brings out a Banshee); the top of the tower left of the spiders; the top of the tower just after The Abandoned; inside the tower right of Bjork's patrol, below the stairs; on the wall behind Bjork's patrol|r
    >>|cRXP_WARN_Can't all loot it? Whoever has it shares the quest|r
    .use 268579 >> |cRXP_WARN_Use the|r |T4504543:0|t[|cRXP_LOOT_Crest of Lordaeron|r] |cRXP_WARN_to start the quest|r
    .collect 268579,1,95189 --Crest of Lordaeron (1)
    .accept 95189 >> Accept Crest of Lordaeron
step
    #label BaronHead
    .isOnQuest 95250
    >>Past |cRXP_ENEMY_Witherfang|r, head south along the left wall to |cRXP_ENEMY_The Baron|r's arena and kill him. Loot him for the |cRXP_LOOT_Head of the Baron|r: each of you loots your own
    .complete 95250,1 --Head of the Baron (1)
    .mob The Baron
step
    #label CrumpledPaper
    >>Past the graveyard, The Abandoned's courtyard and |cRXP_ENEMY_Bjork|r, kill |cRXP_ENEMY_Rath'mael|r inside the fence in the graveyard. Then click the |cRXP_PICK_Crumpled Paper|r by Edward's body near him: each of you clicks it
    .accept 92415 >> Accept Remember That I Love You
step
    #label InsigniaFinish
    .isOnQuest 95195
    >>Short of 10 |cRXP_LOOT_Bloodied Insignias|r? Kill any undead your group skipped on the way out
    >>|cRXP_WARN_Nothing left to kill? Skip this step|r
    .complete 95195,1 --Bloodied Insignia (10)
step
    #label CrestFinish
    >>No |T4504543:0|t[|cRXP_LOOT_Crest of Lordaeron|r] yet? Check the spots you pass on the way out
    >>|cRXP_WARN_Not there? Skip this step|r
    .use 268579 >> |cRXP_WARN_Use the|r |T4504543:0|t[|cRXP_LOOT_Crest of Lordaeron|r] |cRXP_WARN_to start the quest|r
    .collect 268579,1,95189 --Crest of Lordaeron (1)
    .accept 95189 >> Accept Crest of Lordaeron
step
    .isQuestComplete 95250
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tRun back out to |cRXP_FRIENDLY_Captain Truman|r by the entrance
    >>|cRXP_WARN_Take the Monstrous Cleaver to sell (27s 85c), or Slain Baron's Signet (+3 Stamina) if you have no ring|r << Mage
    >>|cRXP_WARN_Take the Grave Shroud (Strength and Stamina), or the Monstrous Cleaver to sell (27s 85c): your Ironforge Greathammer hits harder|r << Paladin
    .turnin 95250 >> Turn in Abominable Creatures
    .target Captain Truman
step
    .hs >> Hearth to Auberdine
    >>|cRXP_WARN_Your Hearthstone is still set to Auberdine from Darkshore: the boat to Stormwind leaves from there|r
    .cooldown item,6948,>2,1
    .bindlocation 442,1
    .subzoneskip 442
step
    .goto 1424/0,-512.15,-715.14
    .subzone 271 >> Hearthstone on cooldown? Wait for it, or run back to Southshore the way you came and fly to Stormwind
    .zoneskip Darkshore
    .zoneskip Stormwind City
step
    .goto 1424/0,-512.15,-715.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
    .fly Stormwind >> Fly to Stormwind
    .target Darla Harris
    .zoneskip Darkshore
    .zoneskip Stormwind City
step
    #completewith next
    .goto 1439/1,926.400,6542.900,15 >> Go to the Stormwind ship at the far end of the Auberdine pier
    .zoneskip Stormwind City
step
    .goto 1439/1,929.100,6543.600
    >>|cRXP_WARN_On the crossing, disenchant greens you won't use and craft|r << Mage
    .zone Stormwind City >> Take the boat to Stormwind
step
    .goto 1453,30.0,29.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tAs you come off the boat, talk to |cRXP_FRIENDLY_Manifest Clerk Philmor|r further up the harbor
    >>|cRXP_WARN_Flew in from Southshore instead? Skip this step: the harbor is out of your way|r
    .accept 97220 >> Accept Philmor's Favor
    .target Manifest Clerk Philmor
step
    #completewith next
    .goto 1453/0,875.50,-8680.90,20 >> Leave the harbor east into the city
step << Paladin
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Go into the Cathedral of Light
step << Paladin
    .xp <16,1
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r in the Cathedral
    .train 7294 >> Train your level 16 spells (Retribution Aura)
    .target Arthur the Faithful
step << Paladin
    .xp <18,1
    .goto 1453/0,861.14,-8573.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 20288 >> Train your level 18 spells (Seal of Righteousness rank 3, Divine Protection rank 2)
    .target Arthur the Faithful
step << Paladin
    .xp <20,1
    .goto 1453/0,861.14,-8573.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tAlready 20? Train those too while you're here
    .train 19750 >> Train your level 20 spells (Flash of Light, Exorcism, Devotion Aura rank 3 and more)
    .target Arthur the Faithful
step << Paladin
    .xp <20,1
    .goto 1453/0,845.95,-8545.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tAlready 20? Talk to |cRXP_FRIENDLY_Duthorian Rall|r in the Cathedral: he gives you the Tome of Valor, your level 20 class quest
    >>|cRXP_WARN_It sends you to Daphne Stilwell in Westfall, in the next guide. Not 20 yet? The next guide offers it on its Stormwind stop|r
    .use 6776 >> |cRXP_WARN_Use the|r |T133739:0|t[|cRXP_LOOT_Tome of Valor|r] |cRXP_WARN_to start the quest|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >> Accept The Tome of Valor
    .target Duthorian Rall
step << Paladin
    .isOnQuest 1649
    .goto 1453/0,845.95,-8545.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r again
    .turnin 1649 >> Turn in The Tome of Valor
    .accept 1650 >> Accept The Tome of Valor
    .target Duthorian Rall
step
    .isOnQuest 92415
    .goto 1453/0,744.400,-8621.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orphan Matron Nightingale|r in Cathedral Square
    >>|cRXP_WARN_Your reward is the Tarnished Locket (+6 Stamina)|r
    .turnin 92415 >> Turn in Remember That I Love You
    .target Orphan Matron Nightingale
step
    .isQuestTurnedIn 92415
    .goto 1453/0,744.400,-8621.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orphan Matron Nightingale|r again
    >>|cRXP_WARN_OPTIONAL: the next part goes to Avette Fellwood in Darkshire, Duskwood. Take it if you're heading that way; skip this step if not|r
    .accept 95161 >> Accept Remember That I Love You
    .target Orphan Matron Nightingale
step
    .goto 1453/0,634.700,-8390.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGo north to the Dwarven District and talk to |cRXP_FRIENDLY_Shoni the Shilent|r
    >>|cRXP_WARN_This one and Wilder's two are for the Deadmines in the next guide|r
    .accept 2040 >> Accept Underground Assault
    .target Shoni the Shilent
step
    .goto 1453/0,501.200,-8468.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .accept 167 >> Accept Oh Brother. . .
    .accept 168 >> Accept Collecting Memories
    .target Wilder Thistlenettle
step
    #completewith next
    .isOnQuest 95189
    .goto 1453/0,437.600,-8524.500,20,0
    .goto 1453/0,408.100,-8478.500,15,0
    .goto 1453/0,502.900,-8358.800,15 >> Go into Stormwind Keep, to the Royal Gallery in its library wing
step
    .isOnQuest 95189
    .goto 1453/0,531.000,-8322.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Dena Kennedy|r in the Royal Gallery: she walks around a little
    >>|cRXP_WARN_Open the Small Sack of Gems she gives you|r
    .turnin 95189 >> Turn in Crest of Lordaeron
    .target Lady Dena Kennedy
step
    .isOnQuest 97220
    .goto 1453,66.56,73.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGo south into the Trade District and take Philmor's delivery to Trias' Cheese, next to the gryphon master
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
    .isQuestComplete 95195
    .goto 1453/0,521.000,-8954.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGo south through the Trade District and talk to |cRXP_FRIENDLY_General Marcus Jonathan|r on his horse in the Valley of Heroes
    >>|cRXP_WARN_Neither reward is cloth: take the Remembrance Armor, it sells for more (13s 93c)|r << Mage
    >>|cRXP_WARN_Take the Remembrance Armor (mail)|r << Paladin
    .turnin 95195 >> Turn in Bloodied Insignia
    .target General Marcus Jonathan
step << Mage
    #completewith next
    .goto 1453/0,942.34,-9001.49,15,0
    .goto 1453/0,949.86,-9009.38,10,0
    .goto 1453/0,962.63,-8990.73,15,0
    .goto 1453/0,928.62,-9010.10,15,0
    .goto 1453/0,863.96,-9001.40,8,0
    .goto 1453/0,877.00,-9008.03,6,0
    .goto 1453/0,868.8,-9004.27,8,0
    .goto 1453/0,871.36,-9013.14,10,0
    .goto 1453/0,887.22,-9017.80,10 >> Go west into the Wizard's Sanctum in the Mage Quarter and follow its ramp to |cRXP_FRIENDLY_Jennea|r
step << Mage
    .xp <16,1
    .goto 1453/0,861.95,-8990.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea Cannon|r in the Wizard's Sanctum
    .train 2120 >> Train your level 16 spells (Flamestrike)
    .target Jennea Cannon
step << Mage
    .xp <18,1
    .goto 1453/0,861.95,-8990.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea Cannon|r
    .train 3140 >> Train your level 18 spells (Fireball rank 4, Remove Lesser Curse)
    .target Jennea Cannon
step << Mage
    .xp <20,1
    .goto 1453/0,861.95,-8990.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tAlready 20? Train those too while you're here
    .train 1953 >> Train your level 20 spells (Blink, Evocation, Mana Shield, Frostbolt rank 4 and more)
    .target Jennea Cannon
step << !Mage !Paladin
    >>Visit your class trainer in Stormwind
    .trainer >> Train your level 16 and 18 spells, and 20 if you're there
]])

-- The Deadmines from level 20, straight after the Ruins of Lordaeron, which picked up Underground Assault, Oh
-- Brother. . . and Collecting Memories in Stormwind. Streamlined for launch day (user's call): only the Deadmines,
-- the Defias Brotherhood chain that unlocks its last quest, Red Silk Bandanas, and Patrolling Westfall at the gnoll
-- camp on the way to Moonbrook, plus the paladin's Tome of Valor. The Hearthstone moves to Sentinel Hill: you hearth
-- back from Lakeshire and again after the Deadmines. Lakeshire for Wiley the Black, then Stormwind for Master
-- Mathias Shaw, level 20 training and the Tome of Valor; then the Riverpaw camp halfway to Moonbrook for gnoll paws
-- (its Brutes and Bandits still give XP), Moonbrook for the Defias Messenger, and for the paladin Daphne Stilwell's
-- defence south of Moonbrook. Then The Defias Traitor's escort and the Deadmines with three more players: Foreman
-- Thistlenettle and Collecting Memories' cards are in the tunnel before the instance (RestedXP calls Collecting
-- Memories slow, with no dungeon bonus: OPTIONAL), Sneed and Edwin VanCleef inside. Then Stormwind for the last
-- turn-ins and training. Left out: every other Westfall quest, including Red Leather Bandanas and the later parts of
-- The People's Militia (the first ends the Elwynn guide). The Defias Brotherhood chain, the Deadmines steps and most
-- coordinates follow RestedXP's Forever "18-20 Deadmines" and "13-15 Westfall"; mob spots come from Questie's
-- Forever data. 1436 is Westfall, 1433 Redridge Mountains, 1453 Stormwind City and 1415 the Eastern Kingdoms map
-- (the tunnel before the Deadmines).
RXPGuides.RegisterGuide([[
#forever
#version 10
<< Alliance
#group TimmyGnome
#name 20+ The Deadmines
#next 21+ Redridge

step
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r, the gryphon master in the Trade District
    .fly Westfall >> Fly to Westfall
    .target Dungar Longdrink
    .zoneskip Westfall
step
    .goto 1436/0,1166.57,-10653.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Heather|r in the inn
    >>|cRXP_WARN_You hearth back here from Lakeshire, and again after the Deadmines|r
    .home >> Set your Hearthstone to Sentinel Hill
    .bindlocation 108
    .target Innkeeper Heather
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r at the tower
    >>|cRXP_WARN_All six parts of The Defias Brotherhood share the name. You hand this first one in to Wiley the Black in Lakeshire, Redridge: you fly there next|r
    .accept 65 >> Accept The Defias Brotherhood (for Wiley the Black in Lakeshire)
    .target Gryan Stoutmantle
step
    .goto 1436/0,1041.97,-10511.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Danuvin|r next to him
    >>|cRXP_WARN_The paws come from the Riverpaw gnoll camp halfway to Moonbrook, on the loop after Stormwind|r
    .accept 102 >> Accept Patrolling Westfall
    .target Captain Danuvin
step
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r, the gryphon master
    >>|cRXP_WARN_The Defias Brotherhood goes to Wiley the Black in Lakeshire|r
    .fly Redridge >> Fly to Lakeshire in Redridge
    .target Thor
    .zoneskip Redridge Mountains
step
    .goto 1433/0,-2164.56,-9213.10,8,0
    .goto 1433/0,-2145.67,-9231.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tIn Lakeshire, talk to |cRXP_FRIENDLY_Wiley the Black|r upstairs in the inn
    .turnin 65 >> Turn in The Defias Brotherhood (here in Lakeshire)
    .accept 132 >> Accept The Defias Brotherhood (Wiley's note, for Gryan)
    .target Wiley the Black
step
    .hs >> Hearth to Sentinel Hill
    .cooldown item,6948,>2,1
    .bindlocation 108,1
    .zoneskip Westfall
step
    .goto 1433/0,-2234.900,-9435.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHearthstone on cooldown? Talk to |cRXP_FRIENDLY_Ariena Stormfeather|r and fly back to Westfall
    .fly Westfall >> Fly to Westfall
    .target Ariena Stormfeather
    .zoneskip Westfall
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack at Sentinel Hill, talk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 132 >> Turn in The Defias Brotherhood (Wiley's note)
    .accept 135 >> Accept The Defias Brotherhood (for Mathias Shaw in Stormwind)
    .target Gryan Stoutmantle
step
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
    .target Thor
    .zoneskip Stormwind City
step
    #completewith next
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,10 >> Go east into Old Town and into the SI:7 building: |cRXP_FRIENDLY_Master Mathias Shaw|r is upstairs
step
    .goto 1453/0,362.28,-8815.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 135 >> Turn in The Defias Brotherhood (Wiley's note)
    .accept 141 >> Accept The Defias Brotherhood (Shaw's report, for Gryan)
    .target Master Mathias Shaw
step << Paladin
    #completewith next
    .xp <20,1
    .goto 1453/0,809.52,-8579.22,20 >> Already 20? Go to the Cathedral of Light for your class quest and training
step << Paladin
    .xp <20,1
    .goto 1453/0,845.95,-8545.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r: he gives you the Tome of Valor, your level 20 class quest
    >>|cRXP_WARN_It sends you to Daphne Stilwell, south of Moonbrook, on the next loop|r
    .use 6776 >> |cRXP_WARN_Use the|r |T133739:0|t[|cRXP_LOOT_Tome of Valor|r] |cRXP_WARN_to start the quest|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >> Accept The Tome of Valor
    .target Duthorian Rall
step << Paladin
    .isOnQuest 1649
    .goto 1453/0,845.95,-8545.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r again
    .turnin 1649 >> Turn in The Tome of Valor
    .accept 1650 >> Accept The Tome of Valor
    .target Duthorian Rall
step << Paladin
    .xp <20,1
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 19750 >> Train your level 20 spells (Flash of Light, Exorcism, Devotion Aura rank 3 and more)
    .target Arthur the Faithful
step << Mage
    #completewith next
    .xp <20,1
    .goto 1453/0,942.34,-9001.49,15,0
    .goto 1453/0,949.86,-9009.38,10,0
    .goto 1453/0,962.63,-8990.73,15,0
    .goto 1453/0,928.62,-9010.10,15,0
    .goto 1453/0,863.96,-9001.40,8,0
    .goto 1453/0,877.00,-9008.03,6,0
    .goto 1453/0,868.8,-9004.27,8,0
    .goto 1453/0,871.36,-9013.14,10,0
    .goto 1453/0,887.22,-9017.80,10 >> Already 20? Go into the Wizard's Sanctum in the Mage Quarter and follow its ramp to |cRXP_FRIENDLY_Jennea|r
step << Mage
    .xp <20,1
    .goto 1453/0,861.95,-8990.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea Cannon|r in the Wizard's Sanctum
    .train 1953 >> Train your level 20 spells (Blink, Evocation, Mana Shield, Frostbolt rank 4 and more)
    .target Jennea Cannon
step
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r in the Trade District
    .fly Westfall >> Fly back to Westfall
    .target Dungar Longdrink
    .zoneskip Westfall
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack at Sentinel Hill, talk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 141 >> Turn in The Defias Brotherhood (Shaw's report)
    .accept 142 >> Accept The Defias Brotherhood (the Defias Messenger)
    .target Gryan Stoutmantle
step
    #completewith MessengerFinish
    .isOnQuest 142
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Keep an eye out for the |cRXP_ENEMY_Defias Messenger|r: he walks from Moonbrook up the road to the Gold Coast Quarry and Jangolode Mine, then back. Kill him and loot |cRXP_LOOT_A Mysterious Message|r
    .complete 142,1 --A Mysterious Message (1)
    .unitscan Defias Messenger
step
    #completewith PawsLoop
    .goto 1436,49.0,52.0,40,0
    .goto 1436,50.6,61.0,40 >> Go south from Sentinel Hill to the Riverpaw gnoll camp, on the way to Moonbrook
step
    #label PawsLoop
    .isOnQuest 102
    #loop
    .goto 1436,50.5,61.9,0
    .goto 1436,47.7,62.4,0
    .goto 1436,50.5,61.9,30,0
    .goto 1436,51.6,62.6,30,0
    .goto 1436,49.8,63.2,30,0
    .goto 1436,47.7,62.4,30,0
    .goto 1436,49.3,60.8,30,0
    >>Kill |cRXP_ENEMY_Riverpaw Brutes|r and |cRXP_ENEMY_Riverpaw Bandits|r at the camp. Loot them for |cRXP_LOOT_Gnoll Paws|r
    >>|cRXP_WARN_Short? The bigger Riverpaw camp to the south-east has Bandits, Taskmasters and Mystics|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Brute
    .mob Riverpaw Bandit
    .mob Riverpaw Taskmaster
step
    #label MessengerFinish
    .isOnQuest 142
    .goto 1436/0,1459.17,-11024.47
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Go south-west to Moonbrook. Kill the |cRXP_ENEMY_Defias Messenger|r and loot |cRXP_LOOT_A Mysterious Message|r
    >>|cRXP_WARN_He starts here. Not around? He's on the road to the Gold Coast Quarry and Jangolode Mine: wait for him or walk it|r
    >>|cRXP_WARN_The Deadmines are under Moonbrook: you come back here with your group|r
    .complete 142,1 --A Mysterious Message (1)
    .unitscan Defias Messenger
step << Mage
    .goto 1436,41.7,89.2
    +|cRXP_WARN_Playing with a paladin? Go south from Moonbrook with them to Daphne Stilwell's farmhouse for their class quest, The Tome of Valor: help hold off three waves of Defias. Daphne and the paladin must both stay alive|r
    >>|cRXP_WARN_Skip this step when the fight is over, or now if you're not with a paladin|r
step << Paladin
    .isOnQuest 1650
    .goto 1436,41.7,89.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGo south from Moonbrook to |cRXP_FRIENDLY_Daphne Stilwell|r's farmhouse and talk to her
    .turnin 1650 >> Turn in The Tome of Valor
    .target Daphne Stilwell
step << Paladin
    .isQuestTurnedIn 1650
    .goto 1436,41.7,89.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daphne Stilwell|r again to start the attack: three waves of Defias come for her house. Keep her alive and stay alive yourself; your partner can help
    >>|cRXP_WARN_Failed? Abandon the quest and take it from her again|r
    .accept 1651 >> Accept The Tome of Valor
    .turnin 1651 >> Turn in The Tome of Valor
    .accept 1652 >> Accept The Tome of Valor
    .target Daphne Stilwell
step
    .goto 1436/0,1045.12,-10508.80
    .subzone 108 >> Go back north to Sentinel Hill
step
    .isQuestComplete 142
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 142 >> Turn in The Defias Brotherhood (the Messenger's message)
    .target Gryan Stoutmantle
step
    .isQuestComplete 102
    .goto 1436/0,1041.97,-10511.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Danuvin|r
    >>|cRXP_WARN_Take the Bracers of the People's Militia (cloth) if you have none; otherwise the Belt sells for more (1s 2c)|r << Mage
    >>|cRXP_WARN_Take the Belt of the People's Militia (mail)|r << Paladin
    .turnin 102 >> Turn in Patrolling Westfall
    .target Captain Danuvin
step
    #completewith EnterDeadmines
    +|cRXP_WARN_Start forming a party to run the Deadmines dungeon|r
step
    .isQuestTurnedIn 142
    .goto 1436/0,1067.87,-10508.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Defias Traitor|r
    >>|cRXP_WARN_Not there? Someone is escorting him: wait for him to come back|r
    .accept 155 >> Accept The Defias Brotherhood (his escort)
    .target The Defias Traitor
step
    .isOnQuest 155
    .goto 1436/0,1527.07,-11073.23
    >>Escort |cRXP_FRIENDLY_The Defias Traitor|r south to Moonbrook. He stops at the Deadmines' entrance
    >>|cRXP_WARN_Kill anything that attacks him on the way|r
    .complete 155,1 --Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
step
    .isQuestComplete 155
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack at Sentinel Hill, talk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 155 >> Turn in The Defias Brotherhood (the escort)
    .accept 166 >> Accept The Defias Brotherhood (VanCleef's head)
    .target Gryan Stoutmantle
step
    .isQuestTurnedIn 155
    .goto 1436/0,1033.22,-10504.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Riell|r at the top of the tower
    .accept 214 >> Accept Red Silk Bandanas
    .target Scout Riell
step
    #label EnterDeadmines
    .goto 1436/0,1527.42,-11072.77
    .subzone 1581 >> Go back to Moonbrook with your group and into the Defias Hideout, the mine under the town
step
    #completewith VanCleef
    .isOnQuest 214
    >>Loot the |cRXP_ENEMY_Defias|r in the mine and the Deadmines for |cRXP_LOOT_Red Silk Bandanas|r: each of you needs 10
    .complete 214,1 --Red Silk Bandana (10)
step
    .isOnQuest 167
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Before the instance portal, take the side tunnel with the undead miners and kill |cRXP_ENEMY_Foreman Thistlenettle|r. Loot him for his |cRXP_LOOT_Badge|r
    .complete 167,1 --Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
    .isOnQuest 168
    .goto 1415,41.08,80.11
    >>Kill the |cRXP_ENEMY_Skeletal Miners|r, |cRXP_ENEMY_Undead Dynamiters|r and |cRXP_ENEMY_Undead Excavators|r in the same tunnel. Loot them for |cRXP_LOOT_Miners' Union Cards|r
    >>|cRXP_WARN_OPTIONAL: RestedXP says this one is slow and gets no dungeon XP bonus. Skip this step if your group won't wait, and abandon Collecting Memories|r
    .complete 168,1 --Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >> Enter the Deadmines
step
    .isOnQuest 2040
    >>Kill |cRXP_ENEMY_Sneed's Shredder|r, then |cRXP_ENEMY_Sneed|r when he jumps out. Loot them for the |cRXP_LOOT_Gnoam Sprecklesprocket|r
    .complete 2040,1 --Gnoam Sprecklesprocket (1)
    .mob Sneed's Shredder
    .mob Sneed
step
    #label VanCleef
    .isOnQuest 166
    >>Kill |cRXP_ENEMY_Edwin VanCleef|r on the ship at the end. Loot him for his |cRXP_LOOT_Head|r: each of you loots your own
    .complete 166,1 --Head of VanCleef (1)
    .mob Edwin VanCleef
step
    >>Loot |T133471:0|t[|cRXP_LOOT_An Unsent Letter|r] from |cRXP_ENEMY_Edwin VanCleef|r too
    .use 2874 >> |cRXP_WARN_Use|r |T133471:0|t[|cRXP_LOOT_An Unsent Letter|r] |cRXP_WARN_to start the quest|r
    .collect 2874,1,373 --An Unsent Letter (1)
    .accept 373 >> Accept The Unsent Letter
step
    .isOnQuest 214
    >>Short of 10 |cRXP_LOOT_Red Silk Bandanas|r? Kill any |cRXP_ENEMY_Defias|r your group skipped on the way out
    >>|cRXP_WARN_Nothing left to kill? Skip this step|r
    .complete 214,1 --Red Silk Bandana (10)
step
    .hs >> Hearth to Sentinel Hill
    .cooldown item,6948,>2,1
    .bindlocation 108,1
    .subzoneskip 108
step
    .goto 1436/0,1045.12,-10508.80
    .subzone 108 >> Hearthstone on cooldown? Walk out of the Deadmines and north to Sentinel Hill
step
    .isQuestComplete 166
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    >>|cRXP_WARN_Take the Staff of Westfall (+16 spell damage), unless you won the Coldspire Staff and cast Frostbolt|r << Mage
    >>|cRXP_WARN_Take the Chausses of Westfall (mail)|r << Paladin
    .turnin 166 >> Turn in The Defias Brotherhood (VanCleef's head)
    .target Gryan Stoutmantle
step
    .isQuestComplete 214
    .goto 1436/0,1033.22,-10504.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Riell|r at the top of the tower
    >>|cRXP_WARN_Take the Piercing Axe to sell (15s 46c)|r
    .turnin 214 >> Turn in Red Silk Bandanas
    .target Scout Riell
step
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
    .target Thor
    .zoneskip Stormwind City
step
    .isQuestComplete 167
    .goto 1453/0,501.200,-8468.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGo north to the Dwarven District and talk to |cRXP_FRIENDLY_Wilder Thistlenettle|r
    >>|cRXP_WARN_Take Miner's Workgloves (+5 Stamina), or Miner's Revenge to sell (17s 75c)|r << Mage
    >>|cRXP_WARN_Take Miner's Revenge to sell (17s 75c)|r << Paladin
    .turnin 167 >> Turn in Oh Brother. . .
    .target Wilder Thistlenettle
step
    .isQuestComplete 168
    .goto 1453/0,501.200,-8468.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wilder Thistlenettle|r
    >>|cRXP_WARN_Take the Worn Miner's Waistcord (cloth belt) if yours is worse; otherwise Tunneler's Boots sell for more (4s 69c)|r << Mage
    >>|cRXP_WARN_Take Tunneler's Boots (mail)|r << Paladin
    .turnin 168 >> Turn in Collecting Memories
    .target Wilder Thistlenettle
step
    .isQuestComplete 2040
    .goto 1453/0,634.700,-8390.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoni the Shilent|r
    >>|cRXP_WARN_Take the Sable Wand to sell (14s 11c): Deepblaze is better|r << Mage
    >>|cRXP_WARN_Take the Polar Gauntlets (mail)|r << Paladin
    .turnin 2040 >> Turn in Underground Assault
    .target Shoni the Shilent
step
    .isOnQuest 373
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r in City Hall, on Cathedral Square
    >>|cRXP_WARN_Take his next quest too: it's for the Stockade, near the end of the track|r
    .turnin 373 >> Turn in The Unsent Letter
    .accept 389 >> Accept Bazil Thredd
    .target Baros Alexston
step << Paladin
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Go into the Cathedral of Light
step << Paladin
    .isOnQuest 1652
    .goto 1453/0,845.95,-8545.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
    >>|cRXP_WARN_His next quest, The Test of Righteousness, needs parts from dungeons you haven't done yet: leave it for now|r
    .turnin 1652 >> Turn in The Tome of Valor
    .target Duthorian Rall
step << Paladin
    .xp <20,1
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 19750 >> Train your level 20 spells (Flash of Light, Exorcism, Devotion Aura rank 3 and more)
    .target Arthur the Faithful
step << Paladin
    .xp <22,1
    .goto 1453/0,861.14,-8573.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tAlready 22? Train those too while you're here
    .train 1026 >> Train your level 22 spells (Holy Light rank 4, Blessing of Might rank 3, Seal of the Crusader rank 3)
    .target Arthur the Faithful
step << Mage
    #completewith next
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
    .xp <20,1
    .goto 1453/0,861.95,-8990.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea Cannon|r in the Wizard's Sanctum
    .train 1953 >> Train your level 20 spells (Blink, Evocation, Mana Shield, Frostbolt rank 4 and more)
    .target Jennea Cannon
step << Mage
    .xp <22,1
    .goto 1453/0,861.95,-8990.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tAlready 22? Train those too while you're here
    .train 8437 >> Train your level 22 spells (Arcane Explosion rank 2, Fire Blast rank 3)
    .target Jennea Cannon
step << !Mage !Paladin
    >>Visit your class trainer in Stormwind
    .trainer >> Train your level 20 spells, and 22 if you're there
]])

-- Redridge from level 21, after the Deadmines: the big Redridge pass that opens the 21-30 track (Redridge, Duskwood
-- and the Wetlands in big passes, then the Stockade and the Excavation Site with all their quests). Three loops from
-- Lakeshire: south (the murlocs on the south shore, the Blackrock camps in the south-east, the Sunken Chest),
-- north-west (Redridge gnolls, the Champions in the Blackrock camp up north, Corporal Keeshan's escort from Render's
-- Rock), east (Alther's Mill, the Shadowhide gnolls, Lieutenant Fangore). OPTIONAL: Deputy Feldon's two low quests,
-- Hilary's Necklace, Bellygrub, and the elite fights at Stonewatch Keep (Shadow Magic, Tharil'zun); Gath'Ilzogg and
-- Incinerator Gar'im are for a group. What Comes Around..., the first Stockade quest, is carried to the Stockade near
-- the end of the track. Forever's Redridge map is shifted from Era's (x is about 5.1 lower), so the spots here are
-- Forever map percentages from Questie's Forever data, and from AllTheThings for the objects of the Forever-new
-- quests; the loop order follows RestedXP's Classic "19-20 Redridge". 1453 is Stormwind City, 1433 Redridge
-- Mountains.
RXPGuides.RegisterGuide([[
#forever
#version 6
<< Alliance
#group TimmyGnome
#name 21+ Redridge
#next 22+ Duskwood

step
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r, the gryphon master in the Trade District
    .fly Redridge >> Fly to Lakeshire in Redridge
    .target Dungar Longdrink
    .zoneskip Redridge Mountains
step
    .goto 1433,25.6,60.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r next to the gryphon master
    >>|cRXP_WARN_OPTIONAL: low-level gnolls just west and south of here, worth taking if you want 22 sooner|r
    .accept 246 >> Accept Assessing the Threat
    .accept 98407 >> Accept Show of Force
    .target Deputy Feldon
step
    .goto 1433,26.4,57.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Howe|r by the bridge
    .accept 128 >> Accept Blackrock Bounty
    .target Guard Howe
step
    .goto 1433,24.2,53.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tCross the bridge and talk to |cRXP_FRIENDLY_Shawn|r
    >>|cRXP_WARN_OPTIONAL: the necklace is in a Glinting Mud patch on the lake floor, on the swim back from the first loop|r
    .accept 3741 >> Accept Hilary's Necklace
    .target Shawn
step
    .goto 1433,22.6,47.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r on the dock
    .accept 150 >> Accept Murloc Poachers
    .target Dockmaster Baren
step
    .goto 1433,21.7,46.4
    >>Click the |cRXP_PICK_Wanted|r poster by the inn, just up from the dock: Lieutenant Fangore is in the east, on the last loop
    .accept 180 >> Accept WANTED: Lieutenant Fangore
step
    .goto 1433,24.6,44.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailiff Conacher|r in the town hall
    >>|cRXP_WARN_The Shadowhide gnolls are on the last loop, in the east|r
    .accept 91 >> Accept Solomon's Law
    .target Bailiff Conacher
step
    .goto 1433,24.4,46.2
    >>|cRXP_WARN_OPTIONAL, group only: the two wanted posters outside, for elites in Stonewatch Keep and the far south-east|r
    .accept 169 >> Accept WANTED: Gath'Ilzogg
    .accept 95999 >> Accept WANTED: Incinerator Gar'im
step
    .goto 1433,27.1,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEast across town, talk to |cRXP_FRIENDLY_Foreman Oslow|r
    .accept 125 >> Accept The Lost Tools
    .target Foreman Oslow
step
    .goto 1433,28.4,49.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .accept 20 >> Accept Blackrock Menace
    .accept 98387 >> Accept Blackrock Blockade
    .target Marshal Marris
step
    #completewith BlackrockMenaceDone
    .isOnQuest 20
    >>Kill |cRXP_ENEMY_Blackrock|r orcs of any kind as you meet them. Loot them for |cRXP_LOOT_Battleworn Axes|r
    .complete 20,1 --Battleworn Axe (10)
    .mob Blackrock Grunt
    .mob Blackrock Outrunner
    .mob Blackrock Renegade
    .mob Blackrock Champion
    .mob Blackrock Summoner
    .mob Blackrock Tracker
step
    .isOnQuest 98407
    #loop
    .goto 1433,10.4,64.6,0
    .goto 1433,10.0,61.3,25,0
    .goto 1433,11.6,63.5,25,0
    .goto 1433,10.4,66.3,25,0
    .goto 1433,8.5,67.8,25,0
    >>Back over the bridge and west of the gryphon master, kill |cRXP_ENEMY_Redridge Thrashers|r for |cRXP_LOOT_Spiked Collars|r. Kill the |cRXP_ENEMY_Redridge Mongrels|r here too
    .complete 98407,1 --Spiked Collar (5)
    .mob Redridge Thrasher
    .mob Redridge Mongrel
step
    .isOnQuest 246
    #loop
    .goto 1433,26.6,82.6,0
    .goto 1433,24.3,84.3,25,0
    .goto 1433,27.4,82.8,25,0
    .goto 1433,29.6,83.1,25,0
    .goto 1433,25.3,81.2,25,0
    >>South of the gryphon master, kill |cRXP_ENEMY_Redridge Mongrels|r and |cRXP_ENEMY_Redridge Poachers|r
    .complete 246,1 --Redridge Mongrel (10)
    .complete 246,2 --Redridge Poacher (6)
    .mob Redridge Mongrel
    .mob Redridge Poacher
step
    #loop
    .goto 1433,43.9,70.0,0
    .goto 1433,45.3,70.9,20,0
    .goto 1433,42.6,71.2,20,0
    .goto 1433,43.2,67.4,20,0
    .goto 1433,45.1,68.5,20,0
    >>Kill |cRXP_ENEMY_murlocs|r on the south shore of the lake. Loot them for |cRXP_LOOT_Murloc Fins|r
    >>|cRXP_WARN_They respawn fast here|r
    .complete 150,1 --Murloc Fin (8)
    .mob Murloc Flesheater
    .mob Murloc Minor Tidecaller
    .mob Murloc Shorestriker
step
    #loop
    .goto 1433,68.8,78.3,0
    .goto 1433,65.6,78.7,25,0
    .goto 1433,66.1,73.6,25,0
    .goto 1433,70.0,74.3,25,0
    .goto 1433,72.6,69.4,25,0
    .goto 1433,71.5,80.6,25,0
    .goto 1433,69.6,82.3,25,0
    .goto 1433,67.2,81.7,25,0
    >>East along the road to the Blackrock camps in the south-east. Loot |cRXP_PICK_Blackrock Supplies|r and |cRXP_PICK_Stolen Weapons|r around the camps, and kill the orcs for |cRXP_LOOT_Battleworn Axes|r
    >>|cRXP_WARN_Outrunners throw nets. Incinerator Gar'im's elite camp is further south-east|r
    .complete 98387,1 --Blackrock Supplies (10)
    .complete 98387,2 --Stolen Weapon (8)
    .mob Blackrock Grunt
    .mob Blackrock Outrunner
    .mob Blackrock Renegade
step
    .isOnQuest 95999
    .goto 1433,77.8,86.6
    >>|cRXP_WARN_OPTIONAL, group only:|r further south-east, kill |cRXP_ENEMY_Incinerator Gar'im|r, an elite with Shadowcasters. Loot his |cRXP_LOOT_Broken Staff|r
    .complete 95999,1 --Broken Staff of Incinerator Gar'im (1)
    .mob Incinerator Gar'im
step
    .isQuestComplete 246
    .goto 1433,25.6,60.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack west to |cRXP_FRIENDLY_Deputy Feldon|r by the gryphon master
    .turnin 246 >> Turn in Assessing the Threat
    .target Deputy Feldon
step
    .isQuestComplete 98407
    .goto 1433,25.6,60.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 98407 >> Turn in Show of Force
    .target Deputy Feldon
step
    .goto 1433,36.4,54.7
    >>Swim out into the lake east of town and down to the |cRXP_PICK_Sunken Chest|r on the bottom. Loot it for |cRXP_LOOT_Oslow's Toolbox|r
    .complete 125,1 --Oslow's Toolbox (1)
step
    .isOnQuest 3741
    .goto 1433,33.0,54.5,15,0
    .goto 1433,28.9,55.3,15,0
    .goto 1433,26.0,54.2,15,0
    .goto 1433,22.7,56.0,15,0
    .goto 1433,18.9,55.2,15,0
    .goto 1433,21.5,50.6,15,0
    .goto 1433,14.1,51.8
    >>Swim back towards town looking for the |cRXP_PICK_Glinting Mud|r on the lake floor: it's in one of these spots. Loot it for |cRXP_LOOT_Hilary's Necklace|r
    .complete 3741,1 --Hilary's Necklace (1)
step
    .isQuestComplete 3741
    .goto 1433,24.1,53.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilary|r next to Shawn
    .turnin 3741 >> Turn in Hilary's Necklace
    .target Hilary
step
    .isQuestComplete 125
    .goto 1433,27.1,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Oslow|r
    .turnin 125 >> Turn in The Lost Tools
    .accept 89 >> Accept The Everstill Bridge
    .target Foreman Oslow
step
    .isQuestComplete 98387
    .goto 1433,28.4,49.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 98387 >> Turn in Blackrock Blockade
    .target Marshal Marris
step
    .isQuestComplete 20
    .goto 1433,28.4,49.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 20 >> Turn in Blackrock Menace
    .target Marshal Marris
step
    .isQuestTurnedIn 20
    .goto 1433,28.4,49.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    >>|cRXP_WARN_OPTIONAL: elite fights at Stonewatch Keep, on the last loop. Pull singles|r
    .accept 115 >> Accept Shadow Magic
    .accept 19 >> Accept Tharil'zun
    .target Marshal Marris
step
    .isQuestComplete 150
    .goto 1433,22.6,47.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
    .turnin 150 >> Turn in Murloc Poachers
    .target Dockmaster Baren
step
    .goto 1433,16.8,46.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r at the farm west of town
    >>|cRXP_WARN_OPTIONAL: Bellygrub is a single named boar, on the way back from the next loop. Skip this if he's camped|r
    .accept 34 >> Accept An Unwelcome Guest
    .target Martie Jainrose
step
    .isOnQuest 89
    #loop
    .goto 1433,19.3,30.0,0
    .goto 1433,17.5,38.3,30,0
    .goto 1433,21.7,35.7,30,0
    .goto 1433,19.7,31.7,30,0
    .goto 1433,23.5,28.2,30,0
    .goto 1433,20.5,22.9,30,0
    .goto 1433,17.6,26.5,30,0
    .goto 1433,15.1,33.2,30,0
    >>North-west of town, kill |cRXP_ENEMY_Redridge gnolls|r in the hills. Loot them for |cRXP_LOOT_Iron Pikes|r and |cRXP_LOOT_Iron Rivets|r
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .mob Redridge Brute
    .mob Redridge Mystic
    .mob Redridge Basher
    .mob Redridge Drudger
step
    #loop
    .goto 1433,24.5,11.6,0
    .goto 1433,22.8,16.7,25,0
    .goto 1433,24.5,14.1,25,0
    .goto 1433,26.4,12.8,25,0
    .goto 1433,25.9,7.2,25,0
    .goto 1433,24.4,8.5,25,0
    .goto 1433,22.1,10.0,25,0
    >>North to the Blackrock camp. Kill |cRXP_ENEMY_Blackrock Champions|r
    >>|cRXP_WARN_They're 24-25: pull one at a time|r
    .complete 128,1 --Blackrock Champion (15)
    .mob Blackrock Champion
step
    .goto 1433,23.3,12.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Keeshan|r at the back of Render's Rock, the cave by the camp
    >>|cRXP_WARN_Not there? Skip this and the next step|r
    .accept 219 >> Accept Missing In Action
    .target Corporal Keeshan
step
    .isOnQuest 219
    .goto 1433,28.4,49.0
    >>Escort |cRXP_FRIENDLY_Corporal Keeshan|r back to Lakeshire
    >>|cRXP_WARN_Don't pull extra mobs on the way out of the cave|r
    .complete 219,1 --Escort Corporal Keeshan back to Redridge
    .target Corporal Keeshan
step
    .isQuestComplete 219
    .goto 1433,28.4,49.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 219 >> Turn in Missing In Action
    .target Marshal Marris
step
    .isQuestComplete 20
    .goto 1433,28.4,49.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 20 >> Turn in Blackrock Menace
    .target Marshal Marris
step
    .isQuestTurnedIn 20
    .goto 1433,28.4,49.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    >>|cRXP_WARN_OPTIONAL: elite fights at Stonewatch Keep on the last loop. Pull singles|r
    .accept 115 >> Accept Shadow Magic
    .accept 19 >> Accept Tharil'zun
    .target Marshal Marris
step
    .isQuestComplete 89
    .goto 1433,27.1,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Oslow|r
    .turnin 89 >> Turn in The Everstill Bridge
    .accept 98386 >> Accept Alther's Mill
    .target Foreman Oslow
step
    .isOnQuest 34
    .goto 1433,10.8,49.3
    >>West of town, kill |cRXP_ENEMY_Bellygrub|r. Loot his |cRXP_LOOT_Tusk|r
    .complete 34,1 --Bellygrub's Tusk (1)
    .mob Bellygrub
step
    .isQuestComplete 34
    .goto 1433,16.8,46.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >> Turn in An Unwelcome Guest
    .target Martie Jainrose
step
    .isQuestComplete 128
    .goto 1433,26.4,57.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Howe|r across the bridge
    .turnin 128 >> Turn in Blackrock Bounty
    .target Guard Howe
step
    .isOnQuest 98386
    #loop
    .goto 1433,47.8,41.0,0
    .goto 1433,47.3,43.6,20,0
    .goto 1433,45.5,40.6,25,0
    .goto 1433,47.8,39.0,25,0
    .goto 1433,48.6,36.4,25,0
    .goto 1433,52.6,41.2,25,0
    .goto 1433,50.8,43.4,25,0
    >>East along the north shore to Alther's Mill. Kill |cRXP_ENEMY_Greater Tarantulas|r and destroy |cRXP_PICK_Tarantula Eggs|r
    >>|cRXP_WARN_Elite Blackrock patrols east of the mill|r
    .complete 98386,1 --Greater Tarantula (12)
    .complete 98386,2 --Tarantula Egg destroyed (6)
    .mob Greater Tarantula
step
    .isOnQuest 91
    #loop
    .goto 1433,70.6,47.2,0
    .goto 1433,69.6,44.1,25,0
    .goto 1433,71.5,45.3,25,0
    .goto 1433,73.9,41.0,25,0
    .goto 1433,72.0,45.5,25,0
    .goto 1433,70.8,51.1,25,0
    .goto 1433,69.2,49.2,25,0
    >>Further east, kill |cRXP_ENEMY_Shadowhide gnolls|r. Loot them for |cRXP_LOOT_Shadowhide Pendants|r
    >>|cRXP_WARN_The Shadowhide Gnolls here are the lowest (22-23). Stonewatch Keep's orcs, just west, are elite|r
    .complete 91,1 --Shadowhide Pendant (10)
    .mob Shadowhide Gnoll
    .mob Shadowhide Brute
    .mob Shadowhide Warrior
    .mob Shadowhide Slayer
    .mob Shadowhide Darkweaver
step
    .isOnQuest 180
    .goto 1433,75.09,37.06
    >>North-east of the gnolls, kill |cRXP_ENEMY_Lieutenant Fangore|r. Loot his |cRXP_LOOT_Paw|r
    .complete 180,1 --Fangore's Paw (1)
    .mob Lieutenant Fangore
step
    .isOnQuest 115
    #loop
    .goto 1433,63.2,55.7,0
    .goto 1433,62.9,52.8,20,0
    .goto 1433,64.4,54.0,20,0
    .goto 1433,64.2,55.5,20,0
    .goto 1433,62.0,56.4,20,0
    .goto 1433,61.2,57.3,20,0
    >>|cRXP_WARN_OPTIONAL:|r south-west of the gnolls, in Stonewatch Keep: kill |cRXP_ENEMY_Blackrock Shadowcasters|r. Loot them for |cRXP_LOOT_Midnight Orbs|r
    >>|cRXP_WARN_Every orc here is elite: pull one at a time|r
    .complete 115,1 --Midnight Orb (3)
    .mob Blackrock Shadowcaster
step
    .isOnQuest 19
    .goto 1433,64.36,59.41
    >>|cRXP_WARN_OPTIONAL:|r kill |cRXP_ENEMY_Tharil'zun|r, an elite, at the keep. Loot his |cRXP_LOOT_Head|r
    .complete 19,1 --Tharil'zun's Head (1)
    .mob Tharil'zun
step
    .isOnQuest 169
    .goto 1433,64.52,55.79
    >>|cRXP_WARN_OPTIONAL, group only:|r kill |cRXP_ENEMY_Gath'Ilzogg|r, an elite, in the keep. Loot his |cRXP_LOOT_Head|r
    .complete 169,1 --Head of Gath'Ilzogg (1)
    .mob Gath'Ilzogg
step
    .isQuestComplete 98386
    .goto 1433,27.1,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack west in town, talk to |cRXP_FRIENDLY_Foreman Oslow|r
    .turnin 98386 >> Turn in Alther's Mill
    .target Foreman Oslow
step
    #label BlackrockMenaceDone
    .isQuestComplete 20
    .goto 1433,28.4,49.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 20 >> Turn in Blackrock Menace
    .target Marshal Marris
step
    .isQuestComplete 115
    .goto 1433,28.4,49.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 115 >> Turn in Shadow Magic
    .target Marshal Marris
step
    .isQuestComplete 19
    .goto 1433,28.4,49.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 19 >> Turn in Tharil'zun
    .target Marshal Marris
step
    .isQuestComplete 180
    .goto 1433,24.9,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r in the town hall
    .turnin 180 >> Turn in WANTED: Lieutenant Fangore
    .target Magistrate Solomon
step
    .isQuestComplete 169
    .goto 1433,24.9,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 169 >> Turn in WANTED: Gath'Ilzogg
    .target Magistrate Solomon
step
    .isQuestComplete 95999
    .goto 1433,24.9,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 95999 >> Turn in WANTED: Incinerator Gar'im
    .target Magistrate Solomon
step
    .isQuestComplete 91
    .goto 1433,24.6,44.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailiff Conacher|r in the town hall
    .turnin 91 >> Turn in Solomon's Law
    .target Bailiff Conacher
step
    .goto 1433,33.9,42.7
    .xp 22 >> Reach level 22: What Comes Around... needs it. Short? Kill the Blackrock orcs at the camp east of town
    .mob Blackrock Grunt
    .mob Blackrock Outrunner
step
    .goto 1433,21.2,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Berton|r
    >>|cRXP_WARN_A Stockade quest: carry it to the Stockade, near the end of the track|r
    .accept 386 >> Accept What Comes Around...
    .target Guard Berton
]])

-- Duskwood from level 22, after Redridge: the big Duskwood pass. It opens with the run from Lakeshire through Three
-- Corners (no earlier guide picks up the Darkshire flight path), then Darkshire: the Hearthstone, the Ruins of
-- Lordaeron letter if you carry it, and Crime and Punishment, which is carried to the Stockade near the end of the
-- track. Then one east loop (the Tranquil Gardens skeletons for The Night Watch, which unlocks its second part), the
-- first west loop clockwise (Watcher Dodds, Raven Hill with Jitters, the spiders and the Valor Family's tome, Sven and
-- Lars, the wolves towards Abercrombie, his shack, the ghouls and the Raven Hill cemetery, back to Lars, then the road
-- east past Dodds, the ravagers and Sven's old farm), the Blind Mary hop, and a second trip west for the chain steps
-- the first one unlocked (Dusky Crab Cakes' spider legs, Sven's Camp, Deliver the Thread), ending with the hearth back
-- to Darkshire and the east-side deliveries (the Shadowy Figure chain, Zombie Juice and Rot Blossoms). Steps that
-- would need a third trip west (Return to Jitters, Finding the Shadowy Figure, Juice Delivery onwards) and the third
-- Night Watch wait. Then Stormwind for level 22 training (24 if you're there) and the flight to Menethil. The loop
-- order follows RestedXP's TBC "24-27 Redridge/Duskwood"; spots and counts come from Questie's Forever data and
-- Wowhead's Forever tooltips (Forever made the first Night Watch 8 + 6 skeletons and Seasoned Wolf Kabobs 10 flanks
-- with no herbs). 1433 is Redridge Mountains, 1431 Duskwood, 1453 Stormwind City.
RXPGuides.RegisterGuide([[
#forever
#version 2
<< Alliance
#group TimmyGnome
#name 22+ Duskwood
#next 23+ Wetlands

step
    .goto 1431,93.3,12.0,50,0
    .goto 1431,77.49,44.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tRun to Darkshire: back over the bridge, south-west along the road to Three Corners, then south into Duskwood. Talk to |cRXP_FRIENDLY_Felicia Maline|r, the gryphon master
    .fp Darkshire >> Get the Darkshire flight path
    .target Felicia Maline
step
    .goto 1431,75.79,45.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r in her house
    .accept 101 >> Accept The Totem of Infliction
    .target Madame Eva
step
    .goto 1431,73.87,44.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Trelayne|r in the Scarlet Raven Tavern
    >>|cRXP_WARN_You hearth back here from the second trip west|r
    .home >> Set your Hearthstone to Darkshire
    .bindlocation 42
    .target Innkeeper Trelayne
step
    .goto 1431,73.75,43.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
    .accept 90 >> Accept Seasoned Wolf Kabobs
    .target Chef Grual
step
    .isOnQuest 95161
    .goto 1431,73.03,44.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avette Fellwood|r next to the inn
    .turnin 95161 >> Turn in Remember That I Love You
    .target Avette Fellwood
step
    .goto 1431,71.92,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Councilman Millstipe|r in the town hall
    >>|cRXP_WARN_A Stockade quest: carry it to the Stockade, near the end of the track|r
    .accept 377 >> Accept Crime and Punishment
    .target Councilman Millstipe
step
    .goto 1431,72.62,47.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sirra Von'Indi|r in the town hall
    >>|cRXP_WARN_OPTIONAL: the tome is somewhere in Raven Hill, on the west loop. Nobody has published the exact spot yet|r
    .accept 96139 >> Accept The Valor Family
    .target Sirra Von'Indi
step
    .goto 1431,73.54,46.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .accept 56 >> Accept The Night Watch
    .target Commander Althea Ebonlocke
step
    .goto 1431,75.34,48.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaine Carevin|r
    .accept 163 >> Accept Raven Hill
    .accept 164 >> Accept Deliveries to Sven
    .accept 165 >> Accept The Hermit
    .target Elaine Carevin
step
    #completewith TotemDone
    .isOnQuest 101
    >>Loot |cRXP_LOOT_Skeleton Fingers|r from skeletons, |cRXP_LOOT_Vials of Spider Venom|r from spiders and |cRXP_LOOT_Ghoul Fangs|r from ghouls as you go
    .complete 101,1 --Ghoul Fang (10)
    .complete 101,2 --Vial of Spider Venom (5)
    .complete 101,3 --Skeleton Finger (10)
step
    #completewith KabobsFinish
    .isOnQuest 90
    >>Loot |cRXP_LOOT_Lean Wolf Flanks|r from the wolves and ravagers you kill
    .complete 90,1 --Lean Wolf Flank (10)
step
    #loop
    .goto 1431,79.4,70.8,0
    .goto 1431,77.4,73.8,25,0
    .goto 1431,76.9,70.2,25,0
    .goto 1431,79.0,69.7,25,0
    .goto 1431,80.6,66.7,25,0
    .goto 1431,82.1,68.7,25,0
    .goto 1431,80.8,73.8,25,0
    >>South to the Tranquil Gardens Cemetery. Kill |cRXP_ENEMY_Skeletal Warriors|r and |cRXP_ENEMY_Skeletal Mages|r
    .complete 56,1 --Skeletal Warrior (8)
    .complete 56,2 --Skeletal Mage (6)
    .mob Skeletal Warrior
    .mob Skeletal Mage
step
    .goto 1431,73.54,46.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack in Darkshire, talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    >>|cRXP_WARN_The second part is in the Raven Hill cemetery, on the west loop|r
    .turnin 56 >> Turn in The Night Watch
    .accept 57 >> Accept The Night Watch
    .target Commander Althea Ebonlocke
step
    .goto 1431,45.12,67.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFollow the road west to |cRXP_FRIENDLY_Watcher Dodds|r
    .accept 245 >> Accept Eight-Legged Menaces
    .target Watcher Dodds
step
    .goto 1431,18.38,56.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tContinue west to Raven Hill and talk to |cRXP_FRIENDLY_Jitters|r
    .turnin 163 >> Turn in Raven Hill
    .accept 5 >> Accept Jitters' Growling Gut
    .target Jitters
step
    #loop
    .goto 1431,10.5,57.1,0
    .goto 1431,10.8,53.0,25,0
    .goto 1431,9.4,57.2,25,0
    .goto 1431,10.4,59.1,25,0
    .goto 1431,11.6,62.7,25,0
    .goto 1431,12.0,59.2,25,0
    >>West of Raven Hill, kill |cRXP_ENEMY_Pygmy Venom Web Spiders|r
    .complete 245,1 --Pygmy Venom Web Spider (15)
    .mob Pygmy Venom Web Spider
step
    .isOnQuest 96139
    .goto 1431,17.4,54.0
    >>OPTIONAL: look around Raven Hill for the |cRXP_PICK_Memory of Valor|r and loot the |cRXP_LOOT_Raven Hill Tome|r from it
    >>|cRXP_WARN_Nobody has published its exact spot: skip this step if it takes more than a couple of minutes|r
    .complete 96139,1 --Raven Hill Tome (1)
step
    .goto 1431,7.78,34.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tNorth to Sven's Camp: talk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 164 >> Turn in Deliveries to Sven
    .accept 95 >> Accept Sven's Revenge
    .target Sven Yorgen
step
    .goto 1431,7.71,33.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lars|r next to him
    .accept 226 >> Accept Wolves at Our Heels
    .target Lars
step
    #loop
    .goto 1431,17.1,27.7,0
    .goto 1431,12.6,28.3,25,0
    .goto 1431,16.5,22.9,25,0
    .goto 1431,19.3,24.0,25,0
    .goto 1431,22.6,25.9,25,0
    .goto 1431,26.7,26.9,25,0
    .goto 1431,22.0,29.0,25,0
    >>Kill |cRXP_ENEMY_Starving Dire Wolves|r and |cRXP_ENEMY_Rabid Dire Wolves|r north-east of the camp, working east towards Abercrombie's shack
    >>|cRXP_WARN_Done while you're still near the camp? Hand it in to Lars now|r
    .complete 226,1 --Starving Dire Wolf (12)
    .complete 226,2 --Rabid Dire Wolf (8)
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
step
    .goto 1431,28.11,31.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r at his shack
    .turnin 165 >> Turn in The Hermit
    .accept 148 >> Accept Supplies from Darkshire
    .target Abercrombie
step
    .isOnQuest 101
    #loop
    .goto 1431,24.0,35.6,0
    .goto 1431,25.4,36.0,20,0
    .goto 1431,22.8,39.1,20,0
    .goto 1431,22.2,37.0,20,0
    .goto 1431,22.0,32.6,20,0
    .goto 1431,25.8,32.9,20,0
    >>South of the shack, kill |cRXP_ENEMY_Flesh Eaters|r and |cRXP_ENEMY_Bone Chewers|r for |cRXP_LOOT_Ghoul Fangs|r
    >>|cRXP_WARN_Bone Chewers are 26-27. Skip this step if it's slow: you're back here on the second trip west|r
    .complete 101,1 --Ghoul Fang (10)
    .mob Flesh Eater
    .mob Bone Chewer
step
    #loop
    .goto 1431,20.4,45.4,0
    .goto 1431,22.6,40.5,25,0
    .goto 1431,23.8,44.0,25,0
    .goto 1431,21.8,47.4,25,0
    .goto 1431,16.8,47.1,25,0
    .goto 1431,15.3,46.4,25,0
    .goto 1431,16.2,42.8,25,0
    >>Further south to the Raven Hill cemetery: kill |cRXP_ENEMY_Skeletal Fiends|r and |cRXP_ENEMY_Skeletal Horrors|r
    .complete 57,1 --Skeletal Fiend (15)
    .complete 57,2 --Skeletal Horror (15)
    .mob Skeletal Fiend
    .mob Skeletal Horror
step
    .isQuestComplete 226
    .goto 1431,7.71,33.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack north-west to |cRXP_FRIENDLY_Lars|r
    .turnin 226 >> Turn in Wolves at Our Heels
    .target Lars
step
    .isQuestComplete 245
    .goto 1431,45.12,67.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFollow the road east from Raven Hill back to |cRXP_FRIENDLY_Watcher Dodds|r
    .turnin 245 >> Turn in Eight-Legged Menaces
    .target Watcher Dodds
step
    .isOnQuest 90
    #loop
    .goto 1431,51.4,69.0,0
    .goto 1431,49.0,65.2,25,0
    .goto 1431,53.5,65.1,25,0
    .goto 1431,52.1,72.8,25,0
    .goto 1431,47.8,70.3,25,0
    >>Short of |cRXP_LOOT_Lean Wolf Flanks|r? Kill the |cRXP_ENEMY_Young Black Ravagers|r east of Dodds
    >>|cRXP_WARN_Skip this step if it's slow: you pass them again on the second trip west|r
    .complete 90,1 --Lean Wolf Flank (10)
    .mob Young Black Ravager
step
    .isOnQuest 95
    .goto 1431,49.85,77.71
    >>South to Sven's old farm: click the |cRXP_PICK_Mound of loose dirt|r behind the stump
    >>|cRXP_WARN_Take Sven's Camp too: it goes back to Sven on the second trip west|r
    .turnin 95 >> Turn in Sven's Revenge
    .accept 230 >> Accept Sven's Camp
step
    .goto 1431,73.75,43.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack in Darkshire, talk to |cRXP_FRIENDLY_Chef Grual|r
    >>|cRXP_WARN_The spider legs come from the Raven Hill spiders on the second trip west|r
    .turnin 5 >> Turn in Jitters' Growling Gut
    .accept 93 >> Accept Dusky Crab Cakes
    .target Chef Grual
step
    .isQuestComplete 90
    .goto 1431,73.75,43.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
    .turnin 90 >> Turn in Seasoned Wolf Kabobs
    .target Chef Grual
step
    .goto 1431,75.79,45.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 148 >> Turn in Supplies from Darkshire
    .accept 149 >> Accept Ghost Hair Thread
    .target Madame Eva
step
    .goto 1431,81.99,59.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSouth-east to |cRXP_FRIENDLY_Blind Mary|r's house
    .turnin 149 >> Turn in Ghost Hair Thread
    .accept 154 >> Accept Return the Comb
    .target Blind Mary
step
    .isOnQuest 57
    #loop
    .goto 1431,80.6,59.2,0
    .goto 1431,79.7,61.9,20,0
    .goto 1431,81.7,60.5,20,0
    .goto 1431,81.1,56.2,20,0
    .goto 1431,79.2,57.5,20,0
    >>Short of |cRXP_ENEMY_Skeletal Horrors|r? Kill the ones around her house
    >>|cRXP_WARN_Skip this step if you're done|r
    .complete 57,2 --Skeletal Horror (15)
    .mob Skeletal Horror
step
    .goto 1431,75.79,45.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack to |cRXP_FRIENDLY_Madame Eva|r in Darkshire
    >>|cRXP_WARN_The thread goes to Abercrombie on the second trip west|r
    .turnin 154 >> Turn in Return the Comb
    .accept 157 >> Accept Deliver the Thread
    .target Madame Eva
step
    .isQuestComplete 101
    .goto 1431,75.79,45.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 101 >> Turn in The Totem of Infliction
    .target Madame Eva
step
    .isQuestComplete 57
    .goto 1431,73.54,46.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    >>|cRXP_WARN_Leave the third Night Watch for later: it's 20 level 27-28 Plague Spreaders|r
    .turnin 57 >> Turn in The Night Watch
    .target Commander Althea Ebonlocke
step
    .isQuestComplete 96139
    .goto 1431,72.62,47.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 96139 >> Turn in The Valor Family
    .target Sirra Von'Indi
step
    #label KabobsFinish
    .isOnQuest 90
    #loop
    .goto 1431,51.4,69.0,0
    .goto 1431,49.0,65.2,25,0
    .goto 1431,53.5,65.1,25,0
    .goto 1431,52.1,72.8,25,0
    .goto 1431,47.8,70.3,25,0
    >>Second trip west: follow the road west. Still short of |cRXP_LOOT_Lean Wolf Flanks|r? Kill the |cRXP_ENEMY_Young Black Ravagers|r east of Dodds
    .complete 90,1 --Lean Wolf Flank (10)
    .mob Young Black Ravager
step
    .isOnQuest 93
    #loop
    .goto 1431,10.5,57.1,0
    .goto 1431,10.8,53.0,25,0
    .goto 1431,9.4,57.2,25,0
    .goto 1431,10.4,59.1,25,0
    .goto 1431,11.6,62.7,25,0
    .goto 1431,12.0,59.2,25,0
    >>Follow the road on to the spiders west of Raven Hill. Loot them for |cRXP_LOOT_Gooey Spider Legs|r
    .complete 93,1 --Gooey Spider Leg (6)
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
step
    .isOnQuest 230
    .goto 1431,7.78,34.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tNorth to Sven's Camp: talk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 230 >> Turn in Sven's Camp
    .accept 262 >> Accept The Shadowy Figure
    .target Sven Yorgen
step
    .isOnQuest 157
    .goto 1431,28.11,31.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEast to |cRXP_FRIENDLY_Abercrombie|r at his shack
    .turnin 157 >> Turn in Deliver the Thread
    .accept 158 >> Accept Zombie Juice
    .target Abercrombie
step
    .isOnQuest 101
    #loop
    .goto 1431,24.0,35.6,0
    .goto 1431,25.4,36.0,20,0
    .goto 1431,22.8,39.1,20,0
    .goto 1431,22.2,37.0,20,0
    .goto 1431,22.0,32.6,20,0
    .goto 1431,25.8,32.9,20,0
    >>Still short of |cRXP_LOOT_Ghoul Fangs|r? Kill the |cRXP_ENEMY_Flesh Eaters|r and |cRXP_ENEMY_Bone Chewers|r south of the shack
    >>|cRXP_WARN_Skip this step if you're done|r
    .complete 101,1 --Ghoul Fang (10)
    .mob Flesh Eater
    .mob Bone Chewer
step
    .hs >> Hearth to Darkshire
    .cooldown item,6948,>2,1
    .bindlocation 42,1
    .subzoneskip 42
step
    .isQuestComplete 93
    .goto 1431,73.75,43.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack in Darkshire, talk to |cRXP_FRIENDLY_Chef Grual|r
    >>|cRXP_WARN_Don't take Return to Jitters|r
    .turnin 93 >> Turn in Dusky Crab Cakes
    .target Chef Grual
step
    .isQuestComplete 90
    .goto 1431,73.75,43.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
    .turnin 90 >> Turn in Seasoned Wolf Kabobs
    .target Chef Grual
step
    .isOnQuest 262
    .goto 1431,75.79,45.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 262 >> Turn in The Shadowy Figure
    .accept 265 >> Accept The Shadowy Search Continues
    .target Madame Eva
step
    .isOnQuest 265
    .goto 1431,72.54,46.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r in the town hall
    .turnin 265 >> Turn in The Shadowy Search Continues
    .accept 266 >> Accept Inquire at the Inn
    .target Clerk Daltry
step
    .isOnQuest 266
    .goto 1431,73.78,44.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r in the inn
    >>|cRXP_WARN_Don't take Finding the Shadowy Figure|r
    .turnin 266 >> Turn in Inquire at the Inn
    .target Tavernkeep Smitts
step
    .isOnQuest 158
    .goto 1431,73.78,44.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 158 >> Turn in Zombie Juice
    .accept 156 >> Accept Gather Rot Blossoms
    .target Tavernkeep Smitts
step
    .isOnQuest 156
    #loop
    .goto 1431,80.6,59.2,0
    .goto 1431,79.7,61.9,20,0
    .goto 1431,81.7,60.5,20,0
    .goto 1431,81.1,56.2,20,0
    .goto 1431,79.2,57.5,20,0
    >>South-east to Blind Mary's house: kill the |cRXP_ENEMY_Skeletal Horrors|r around it for |cRXP_LOOT_Rot Blossoms|r
    .complete 156,1 --Rot Blossom (8)
    .mob Skeletal Horror
step
    .isQuestComplete 156
    .goto 1431,73.78,44.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    >>|cRXP_WARN_Don't take Juice Delivery|r
    .turnin 156 >> Turn in Gather Rot Blossoms
    .target Tavernkeep Smitts
step
    #label TotemDone
    .isQuestComplete 101
    .goto 1431,75.79,45.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 101 >> Turn in The Totem of Infliction
    .target Madame Eva
step
    .goto 1431,77.49,44.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r, the gryphon master
    .fly Stormwind >> Fly to Stormwind
    .target Felicia Maline
    .zoneskip Stormwind City
step << Paladin
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Go into the Cathedral of Light
step << Paladin
    .xp <22,1
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 1026 >> Train your level 22 spells (Holy Light rank 4, Blessing of Might rank 3, Seal of the Crusader rank 3)
    .target Arthur the Faithful
step << Paladin
    .xp <24,1
    .goto 1453/0,861.14,-8573.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tAlready 24? Train those too while you're here
    .train 5588 >> Train your level 24 spells (Hammer of Justice rank 2, Blessing of Wisdom rank 2, Blessing of Protection rank 2, Turn Undead)
    .target Arthur the Faithful
step << Mage
    #completewith next
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
    .xp <22,1
    .goto 1453/0,861.95,-8990.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea Cannon|r
    .train 8437 >> Train your level 22 spells (Arcane Explosion rank 2, Fire Blast rank 3)
    .target Jennea Cannon
step << Mage
    .xp <24,1
    .goto 1453/0,861.95,-8990.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tAlready 24? Train those too while you're here
    .train 8400 >> Train your level 24 spells (Fireball rank 5, Scorch, Counterspell, Flamestrike rank 2, Conjure Food rank 3)
    .target Jennea Cannon
step << !Mage !Paladin
    >>Visit your class trainer in Stormwind
    .trainer >> Train your level 22 spells, and 24 if you're there
step
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r, the gryphon master in the Trade District
    .fly Menethil >> Fly to Menethil Harbor in the Wetlands
    .target Dungar Longdrink
    .zoneskip Wetlands
]])

-- The Wetlands from level 23, after Duskwood: the big Wetlands pass. Menethil first (the Hearthstone, every pickup in
-- town and Spoils of War in the harbour), then the murlocs up the coast on the way east, Whelgar's Excavation Site
-- (Ormer's raptors, Whelgar's relics, the Excavation Team), Howin Kindfeather, Einar and Rethiel the Greenwarden, the
-- Mosshide gnolls in the south-east and Thelgen Rock, the Mosshide flint and the oozes in the north (Howin's razormaw
-- eggs are OPTIONAL), the Angerfang camps for War Banners and From the Ashes, and Sarltooth, at about 25. Then the
-- hearth to Menethil and the north-west coast: the murloc hovels, the Cursed Crew's ships and the giant crocodiles.
-- It also sets up the Excavation Site's quests: Highland Hides needs Daily Delivery or Young Crocolisk Skins (the
-- sources disagree, so it does both) and Horrors in the Highland needs Rethiel's chain. Blisters on the Land may be
-- handed in on the Excavation Site trip if the Fen Creepers are slow. Left out: the elites (Dun Modr, Dragonmaw
-- Retreat, Carnage, Nek'rosh and Old Habits next to him), Captain Halyndor (level 30, reflects spells), Crocs of the
-- Sky (three trips across the zone) and the deliveries to Darkshore. The loop order adapts RestedXP's TBC "23-24
-- Wetlands" and "27-30 Wetlands/Hillsbrad"; spots come from Questie's Forever data and AllTheThings, counts from
-- Forever's quest data (Young Crocolisk Skins wants 6 skins, Blisters on the Land 12 Fen Creepers). 1437 is the
-- Wetlands.
RXPGuides.RegisterGuide([[
#forever
#version 2
<< Alliance
#group TimmyGnome
#name 23+ Wetlands
#next 25+ The Stockade

step
    .goto 1437,10.7,61.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Helbrek|r in the Deepwater Tavern
    >>|cRXP_BUY_Buy a|r |T132792:0|t[Flagon of Dwarven Honeymead] |cRXP_BUY_from him|r
    .home >> Set your Hearthstone to Menethil Harbor
    .bindlocation 150
    .collect 2594,1,288 --Flagon of Dwarven Honeymead (1)
    .target Innkeeper Helbrek
step
    .goto 1437,10.9,59.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r at the bar
    >>|cRXP_WARN_The Cursed Crew is for the end of the guide|r
    .accept 288 >> Accept The Third Fleet
    .turnin 288 >> Turn in The Third Fleet
    .accept 289 >> Accept The Cursed Crew
    .accept 463 >> Accept The Greenwarden
    .target First Mate Fitzsimmons
step
    .goto 1437,11.9,58.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caitlin Grassman|r
    .accept 98282 >> Accept Alchemical Hazards
    .target Caitlin Grassman
step
    .goto 1437,11.8,58.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sida|r
    .accept 470 >> Accept Digging Through the Ooze
    .target Sida
step
    .goto 1437,10.1,56.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valstag Ironjaw|r in Menethil Keep
    .accept 98197 >> Accept Spoils of War
    .accept 473 >> Accept Report to Captain Stoutfist
    .target Valstag Ironjaw
step
    .goto 1437,9.9,57.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Stoutfist|r upstairs in the keep
    .turnin 473 >> Turn in Report to Captain Stoutfist
    .accept 464 >> Accept War Banners
    .accept 98221 >> Accept From the Ashes
    .target Captain Stoutfist
step
    .goto 1437,8.3,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r by the docks
    .accept 279 >> Accept Claws from the Deep
    .target Karl Boran
step
    .goto 1437,6.1,61.8,20,0
    .goto 1437,4.9,52.6
    >>Dive into the harbour: loot the |cRXP_PICK_Khaz Modan Timber|r off the docks to the south and the |cRXP_PICK_Khaz Modan Iron|r further north
    >>|cRXP_WARN_Watch your breath and the things living down there|r
    .complete 98197,1 --Khaz Modan Timber (6)
    .complete 98197,2 --Khaz Modan Iron (30)
step
    .goto 1437,8.6,55.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
    .accept 484 >> Accept Young Crocolisk Skins
    .target James Halloran
step
    .goto 1437,10.1,56.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valstag Ironjaw|r
    .turnin 98197 >> Turn in Spoils of War
    .target Valstag Ironjaw
step
    .goto 1437,11.5,52.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarrel Rockweaver|r just north of town
    .accept 305 >> Accept In Search of the Excavation Team
    .target Tarrel Rockweaver
step
    #loop
    .goto 1437,17.6,48.9,0
    .goto 1437,15.4,52.2,25,0
    .goto 1437,18.6,51.6,25,0
    .goto 1437,18.7,49.3,25,0
    .goto 1437,20.2,47.2,25,0
    .goto 1437,19.8,45.1,25,0
    .goto 1437,15.8,46.4,25,0
    >>North-east of town, kill |cRXP_ENEMY_Young Wetlands Crocolisks|r. Loot them for |cRXP_LOOT_Young Crocolisk Skins|r
    .complete 484,1 --Young Crocolisk Skin (6)
    .mob Young Wetlands Crocolisk
step
    #loop
    .goto 1437,14.0,40.7,0
    .goto 1437,12.2,39.1,25,0
    .goto 1437,12.7,42.3,25,0
    .goto 1437,14.0,40.7,25,0
    .goto 1437,16.9,39.9,25,0
    .goto 1437,18.5,38.3,25,0
    .goto 1437,18.6,40.3,25,0
    >>North-west to the murloc camps on the coast: kill |cRXP_ENEMY_Bluegill Murlocs|r. Kill |cRXP_ENEMY_Gobbler|r, who walks between the camps, and loot his |cRXP_LOOT_Head|r
    .complete 279,1 --Bluegill Murloc (12)
    .complete 279,2 --Gobbler's Head (1)
    .mob Bluegill Murloc
    .mob Gobbler
step
    .goto 1437,34.3,41.2,40,0
    .goto 1437,38.2,50.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEast to Whelgar's Excavation Site: talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .accept 294 >> Accept Ormer's Revenge
    .target Ormer Ironbraid
step
    .goto 1437,38.9,52.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merrin Rockweaver|r
    .turnin 305 >> Turn in In Search of the Excavation Team
    .accept 306 >> Accept In Search of the Excavation Team
    .target Merrin Rockweaver
step
    .goto 1437,38.8,52.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Whelgar|r
    .accept 299 >> Accept Uncovering the Past
    .target Prospector Whelgar
step
    #loop
    .goto 1437,28.0,45.5,0
    .goto 1437,29.5,46.5,25,0
    .goto 1437,28.9,42.4,25,0
    .goto 1437,30.2,44.1,25,0
    .goto 1437,26.4,46.3,25,0
    .goto 1437,24.2,48.3,25,0
    .goto 1437,23.4,51.2,25,0
    .goto 1437,25.2,49.8,25,0
    >>Back west of the dig, kill |cRXP_ENEMY_Mottled Raptors|r and |cRXP_ENEMY_Mottled Screechers|r
    .complete 294,1 --Mottled Raptor (10)
    .complete 294,2 --Mottled Screecher (10)
    .mob Mottled Raptor
    .mob Mottled Screecher
step
    .goto 1437,38.2,50.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 294 >> Turn in Ormer's Revenge
    .accept 295 >> Accept Ormer's Revenge
    .target Ormer Ironbraid
step
    #loop
    .goto 1437,34.0,48.1,0
    .goto 1437,31.8,46.9,25,0
    .goto 1437,34.5,45.8,25,0
    .goto 1437,35.7,44.1,25,0
    .goto 1437,36.0,48.4,25,0
    .goto 1437,35.1,50.8,25,0
    .goto 1437,32.8,51.0,25,0
    .goto 1437,30.6,48.7,25,0
    >>Down in the dig, kill |cRXP_ENEMY_Mottled Scytheclaws|r and |cRXP_ENEMY_Mottled Razormaws|r. Loot the |cRXP_PICK_Ancient Relics|r and the |cRXP_PICK_Loose Soil|r on the ground for the four |cRXP_LOOT_Fragments|r
    >>|cRXP_WARN_Leave Sarltooth, on the hill at the south-west end, for later|r
    .complete 295,1 --Mottled Scytheclaw (10)
    .complete 295,2 --Mottled Razormaw (10)
    .complete 299,1 --Ados Fragment (1)
    .complete 299,2 --Modr Fragment (1)
    .complete 299,3 --Golm Fragment (1)
    .complete 299,4 --Neru Fragment (1)
    .mob Mottled Scytheclaw
    .mob Mottled Razormaw
step
    .goto 1437,38.2,50.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    >>|cRXP_WARN_Sarltooth is 29: you come back for him after the Angerfang camps, at about 25|r
    .turnin 295 >> Turn in Ormer's Revenge
    .accept 296 >> Accept Ormer's Revenge
    .target Ormer Ironbraid
step
    .goto 1437,38.8,52.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Whelgar|r
    .turnin 299 >> Turn in Uncovering the Past
    .target Prospector Whelgar
step
    .goto 1437,34.3,41.2,40,0
    .goto 1437,40.0,37.5,40,0
    .goto 1437,45.5,37.5,40,0
    .goto 1437,49.3,42.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEast past the north side of the Angerfang camps to |cRXP_FRIENDLY_Howin Kindfeather|r
    >>|cRXP_WARN_OPTIONAL: his eggs are among level 27-29 razormaws in Saltspray Glen, on the loop north|r
    .accept 98246 >> Accept Trying Times
    .target Howin Kindfeather
step
    .goto 1437,49.9,39.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einar Stonegrip|r
    .accept 469 >> Accept Daily Delivery
    .target Einar Stonegrip
step
    .goto 1437,56.4,40.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEast to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 463 >> Turn in The Greenwarden
    .accept 276 >> Accept Tramping Paws
    .target Rethiel the Greenwarden
step
    #loop
    .goto 1437,62.5,68.7,0
    .goto 1437,63.9,63.8,25,0
    .goto 1437,63.2,69.1,25,0
    .goto 1437,62.6,72.7,25,0
    .goto 1437,62.6,75.0,25,0
    .goto 1437,60.3,73.8,25,0
    .goto 1437,61.2,72.2,25,0
    .goto 1437,60.5,63.7,25,0
    >>South to the Mosshide camps: kill |cRXP_ENEMY_Mosshide Gnolls|r and |cRXP_ENEMY_Mosshide Mongrels|r
    .complete 276,1 --Mosshide Gnoll (15)
    .complete 276,2 --Mosshide Mongrel (10)
    .mob Mosshide Gnoll
    .mob Mosshide Mongrel
step
    #loop
    .goto 1437,50.3,61.0,0
    .goto 1437,50.0,58.8,20,0
    .goto 1437,51.6,62.1,20,0
    .goto 1437,52.7,63.0,20,0
    .goto 1437,49.0,62.7,20,0
    .goto 1437,47.9,59.8,20,0
    >>West to Thelgen Rock: kill |cRXP_ENEMY_Leech Stalkers|r and |cRXP_ENEMY_Cave Stalkers|r until one drops an |cRXP_LOOT_Unruptured Stalker Gland|r
    .complete 98282,1 --Unruptured Stalker Gland (1)
    .mob Leech Stalker
    .mob Cave Stalker
step
    .goto 1437,58.0,57.0,40,0
    .goto 1437,56.4,40.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack north to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    >>|cRXP_WARN_Go round by the east: Chieftain Nek'rosh's camp, north of Thelgen Rock, is elite|r
    .turnin 276 >> Turn in Tramping Paws
    .accept 277 >> Accept Fire Taboo
    .target Rethiel the Greenwarden
step
    #completewith FlintDone
    >>Kill |cRXP_ENEMY_Mosshide|r gnolls of any kind as you meet them. Loot them for |cRXP_LOOT_Crude Flint|r
    .complete 277,1 --Crude Flint (9)
    .mob Mosshide Fenrunner
    .mob Mosshide Trapper
    .mob Mosshide Brute
    .mob Mosshide Mistweaver
    .mob Mosshide Mystic
step
    #completewith next
    .goto 1437,51.6,29.4,30 >> North-west through the small Mosshide camp
step
    #loop
    .goto 1437,44.6,25.0,0
    .goto 1437,44.3,24.7,15,0
    .goto 1437,44.8,24.3,15,0
    .goto 1437,46.4,24.8,15,0
    .goto 1437,44.7,25.4,15,0
    .goto 1437,44.0,27.8,15,0
    .goto 1437,43.8,25.2,15,0
    >>West to Ironbeard's Tomb: kill the |cRXP_ENEMY_oozes|r until one drops |cRXP_LOOT_Sida's Bag|r
    .complete 470,1 --Sida's Bag (1)
    .mob Black Ooze
    .mob Crimson Ooze
    .mob Monstrous Ooze
step
    .isOnQuest 98246
    .goto 1437,35.5,20.2
    >>|cRXP_WARN_OPTIONAL:|r west to Saltspray Glen: loot the |cRXP_PICK_Razormaw Eggs|r around the glen for |cRXP_LOOT_Perfect Razormaw Eggs|r
    >>|cRXP_WARN_The razormaws are 27-29: grab the eggs and go, don't clear the glen|r
    .complete 98246,1 --Perfect Razormaw Egg (12)
step
    #label FlintDone
    #loop
    .goto 1437,41.5,33.0,0
    .goto 1437,39.0,34.0,25,0
    .goto 1437,40.0,32.0,25,0
    .goto 1437,42.8,32.3,25,0
    .goto 1437,44.7,31.7,25,0
    .goto 1437,45.6,34.5,25,0
    .goto 1437,43.7,34.7,25,0
    >>South to the big Mosshide camp: kill |cRXP_ENEMY_Mosshide|r gnolls for the rest of the |cRXP_LOOT_Crude Flint|r
    .complete 277,1 --Crude Flint (9)
    .mob Mosshide Fenrunner
    .mob Mosshide Trapper
    .mob Mosshide Brute
    .mob Mosshide Mistweaver
    .mob Mosshide Mystic
step
    .isQuestComplete 98246
    .goto 1437,49.3,42.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Howin Kindfeather|r
    .turnin 98246 >> Turn in Trying Times
    .target Howin Kindfeather
step
    .goto 1437,56.4,40.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 277 >> Turn in Fire Taboo
    .accept 275 >> Accept Blisters on the Land
    .target Rethiel the Greenwarden
step
    #completewith CreepersDone
    .isOnQuest 275
    >>Kill |cRXP_ENEMY_Fen Creepers|r when you see them: they hide, stealthed, in the streams
    .complete 275,1 --Fen Creeper (12)
    .mob Fen Creeper
step
    .isOnQuest 275
    .goto 1437,53.2,36.5,20,0
    .goto 1437,55.0,37.2,20,0
    .goto 1437,54.0,41.4,20,0
    .goto 1437,55.0,46.4,20
    >>Walk Rethiel's stream from north to south and kill the |cRXP_ENEMY_Fen Creepers|r in it. The rest are in the north-west, at the end of the guide
    .mob Fen Creeper
step
    .isQuestComplete 275
    .goto 1437,56.4,40.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tAll 12 already? Hand it in to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 275 >> Turn in Blisters on the Land
    .target Rethiel the Greenwarden
step
    #completewith BannersDone
    >>Kill |cRXP_ENEMY_Dragonmaw|r orcs in the Angerfang camps. Loot them for |cRXP_LOOT_Dragonmaw War Banners|r
    >>|cRXP_WARN_They're 26-29: pull one at a time|r
    .complete 464,1 --Dragonmaw War Banner (8)
    .mob Dragonmaw Raider
    .mob Dragonmaw Bonewarder
    .mob Dragonmaw Swamprunner
    .mob Dragonmaw Centurion
    .mob Dragonmaw Shadowwarder
step
    .goto 1437,49.3,46.8
    >>West to the Angerfang Encampment: click the |cRXP_PICK_Attack Plan: Thelsamar|r on the camp's east side
    .complete 98221,2 --Attack Plan: Thelsamar destroyed (1)
step
    .goto 1437,45.3,45.6
    >>Click the |cRXP_PICK_Attack Plan: Southshore|r in the middle of the camp
    .complete 98221,3 --Attack Plan: Southshore destroyed (1)
step
    .goto 1437,45.4,42.7
    >>Click the |cRXP_PICK_Attack Plan: Menethil Harbor|r at the camp's north end
    .complete 98221,1 --Attack Plan: Menethil Harbor destroyed (1)
step
    #label BannersDone
    #loop
    .goto 1437,42.2,44.0,0
    .goto 1437,42.4,42.6,20,0
    .goto 1437,43.7,42.9,20,0
    .goto 1437,42.2,44.6,20,0
    .goto 1437,41.6,45.6,20,0
    .goto 1437,41.0,46.4,20,0
    >>Short of |cRXP_LOOT_War Banners|r? Kill the orcs in the smaller camp to the west
    .complete 464,1 --Dragonmaw War Banner (8)
    .mob Dragonmaw Raider
    .mob Dragonmaw Swamprunner
step
    .goto 1437,38.6,46.2
    >>Click the |cRXP_PICK_Attack Plan: Ironforge|r, west of the camps
    .complete 98221,4 --Attack Plan: Ironforge destroyed (1)
step
    .isOnQuest 296
    .goto 1437,31.5,48.9,30,0
    .goto 1437,33.3,51.5
    >>Up the hill at the south-west end of the dig: kill |cRXP_ENEMY_Sarltooth|r and loot his |cRXP_LOOT_Talon|r
    >>|cRXP_WARN_He's 29 and uses Thrash. Camped? Skip him: you pass Ormer again on the Excavation Site trip|r
    .complete 296,1 --Sarltooth's Talon (1)
    .mob Sarltooth
step
    .isQuestComplete 296
    .goto 1437,38.2,50.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 296 >> Turn in Ormer's Revenge
    .target Ormer Ironbraid
step
    .hs >> Hearth to Menethil Harbor
    .cooldown item,6948,>2,1
    .bindlocation 150,1
    .subzoneskip 150
step
    .goto 1437,11.9,58.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack in Menethil, talk to |cRXP_FRIENDLY_Caitlin Grassman|r
    .turnin 98282 >> Turn in Alchemical Hazards
    .target Caitlin Grassman
step
    .goto 1437,11.8,58.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sida|r
    .turnin 470 >> Turn in Digging Through the Ooze
    .target Sida
step
    .goto 1437,9.9,57.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Stoutfist|r upstairs in the keep
    >>|cRXP_WARN_Don't take Nek'rosh's Gambit|r
    .turnin 464 >> Turn in War Banners
    .turnin 98221 >> Turn in From the Ashes
    .target Captain Stoutfist
step
    .goto 1437,8.3,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
    .turnin 279 >> Turn in Claws from the Deep
    .accept 281 >> Accept Reclaiming Goods
    .target Karl Boran
step
    .goto 1437,8.6,55.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
    .turnin 484 >> Turn in Young Crocolisk Skins
    .turnin 469 >> Turn in Daily Delivery
    .accept 471 >> Accept Apprentice's Duties
    .target James Halloran
step
    .goto 1437,11.5,52.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
    .turnin 306 >> Turn in In Search of the Excavation Team
    .target Tarrel Rockweaver
step
    .goto 1437,13.5,41.4
    >>North to the murloc camps: click the |cRXP_PICK_Damaged Crate|r
    .turnin 281 >> Turn in Reclaiming Goods
    .accept 284 >> Accept The Search Continues
step
    .goto 1437,13.6,38.2
    >>Click the |cRXP_PICK_Sealed Barrel|r
    .turnin 284 >> Turn in The Search Continues
    .accept 285 >> Accept Search More Hovels
step
    .goto 1437,13.9,34.8
    >>Click the |cRXP_PICK_Half-buried Barrel|r
    .turnin 285 >> Turn in Search More Hovels
    .accept 286 >> Accept Return the Statuette
step
    #loop
    .goto 1437,13.7,30.3,0
    .goto 1437,13.7,30.3,15,0
    .goto 1437,14.1,29.3,15,0
    .goto 1437,14.3,24.5,15,0
    .goto 1437,15.1,24.0,15,0
    >>North to the two wrecked ships: kill |cRXP_ENEMY_Cursed Sailors|r and |cRXP_ENEMY_Cursed Marines|r. Kill |cRXP_ENEMY_First Mate Snellig|r inside the southern ship and loot his |cRXP_LOOT_Snuffbox|r
    >>|cRXP_WARN_Get in through the hole in the hull on the shore side. The northern ship has more Marines. Leave Captain Halyndor (30) alone|r
    .complete 289,1 --Cursed Sailor (13)
    .complete 289,2 --Cursed Marine (5)
    .complete 289,3 --Snellig's Snuffbox (1)
    .mob Cursed Sailor
    .mob Cursed Marine
    .mob First Mate Snellig
step
    #loop
    .goto 1437,18.6,25.0,0
    .goto 1437,17.0,26.9,25,0
    .goto 1437,18.4,27.0,25,0
    .goto 1437,19.0,24.8,25,0
    .goto 1437,19.2,22.9,25,0
    .goto 1437,21.7,20.0,25,0
    .goto 1437,17.5,23.5,25,0
    >>East along the shore, kill |cRXP_ENEMY_Giant Wetlands Crocolisks|r. Loot them for |cRXP_LOOT_Giant Crocolisk Skins|r
    .complete 471,1 --Giant Crocolisk Skin (6)
    .mob Giant Wetlands Crocolisk
step
    #label CreepersDone
    .isOnQuest 275
    #loop
    .goto 1437,22.5,32.0,0
    .goto 1437,18.5,27.7,20,0
    .goto 1437,20.8,28.4,20,0
    .goto 1437,22.5,30.0,20,0
    .goto 1437,23.6,32.0,20,0
    .goto 1437,25.9,31.9,20,0
    .goto 1437,25.3,35.5,20,0
    .goto 1437,27.4,37.1,20,0
    .goto 1437,27.1,39.1,20,0
    >>Still short of |cRXP_ENEMY_Fen Creepers|r? They're in the streams south of the crocodiles
    >>|cRXP_WARN_Rethiel is on the Excavation Site trip: hand it in then|r
    .complete 275,1 --Fen Creeper (12)
    .mob Fen Creeper
step
    .goto 1437,8.6,55.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack south to Menethil: talk to |cRXP_FRIENDLY_James Halloran|r
    >>|cRXP_WARN_Don't take Crocs of the Sky yet: he offers it again on the Excavation Site trip|r
    .turnin 471 >> Turn in Apprentice's Duties
    .target James Halloran
step
    .goto 1437,8.0,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylessa Duskwhisper|r next to him
    >>|cRXP_WARN_OPTIONAL: her bloom is in the wreck just south of town, among level 28-29 murlocs. Skip it under 25|r
    .accept 98208 >> Accept Bloom of the Heavens
    .target Sylessa Duskwhisper
step
    .goto 1437,8.3,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
    .turnin 286 >> Turn in Return the Statuette
    .accept 98189 >> Accept Return the Statuette
    .target Karl Boran
step
    .goto 1437,9.9,57.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Stoutfist|r upstairs in the keep
    >>|cRXP_WARN_Carry A Friend of the Family to Highlord Bolvar in Stormwind|r
    .turnin 98189 >> Turn in Return the Statuette
    .accept 98190 >> Accept A Friend of the Family
    .target Captain Stoutfist
step
    .goto 1437,10.9,59.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r in the Deepwater Tavern
    >>|cRXP_WARN_Don't take Lifting the Curse: Captain Halyndor is 30 and reflects spells|r
    .turnin 289 >> Turn in The Cursed Crew
    .target First Mate Fitzsimmons
step
    .isOnQuest 98208
    .goto 1437,12.2,63.8
    >>|cRXP_WARN_OPTIONAL:|r just south of town, loot |cRXP_PICK_Nord'el|r from the wreck
    >>|cRXP_WARN_The Bluegill Raiders here are 28-29 and come in groups|r
    .complete 98208,1 --Nord'el (1)
    .mob Bluegill Raider
step
    .isQuestComplete 98208
    .goto 1437,8.0,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylessa Duskwhisper|r
    >>|cRXP_WARN_Don't take the second part: it goes to Darkshore|r
    .turnin 98208 >> Turn in Bloom of the Heavens
    .target Sylessa Duskwhisper
step
    .goto 1437,9.5,59.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r, the gryphon master
    .fly Stormwind >> Fly to Stormwind
    .target Shellei Brondir
    .zoneskip Stormwind City
]])

-- The Stockade from level 25, after the Wetlands: the dungeon with all its quests, and the Defias chain it opens.
-- Stormwind first, while the group forms: Nikova Raskol in Old Town, Highlord Bolvar for the Wetlands' A Friend of
-- the Family, Lord Grayson Shadowbreaker in the Cathedral, Baros Alexston only if you don't have Bazil Thredd yet (the
-- Deadmines guide hands it out), level 24 training if you missed it, and Warden Thelwater at the door. Inside:
-- Targorr the Dread (a random cell off the first hall), Dextren Ward (west wing) and Bazil Thredd (east wing), with
-- stickies for Quell the Uprising and the Red Wool Bandanas (about an 80% drop). After the run, the rest of the Defias
-- chain in one Stormwind loop: Thelwater, Baros, Nikova, Mathias Shaw in SI:7, Elling Trias, Tyrion in the Keep,
-- Clara's apples just outside the main gate, The Attack! in the Keep courtyard, Elling, Shaw and Baros again, and
-- Lady Katrana Prestor. Then Lakeshire for What Comes Around... and Songblade Search (an Excavation Site quest),
-- Darkshire for Crime and Punishment, and the hearth to Menethil, where the Excavation Site guide starts. The
-- Fury Runs Deep is left out: it needs The Dark Iron War, an elite quest. The Stockade steps follow the old 22+
-- Stockade guide and the Defias chain follows RestedXP's TBC "23-30"; Stormwind spots are world coordinates from
-- Questie's Forever data. 1453 is Stormwind City, 1429 Elwynn Forest, 1433 Redridge Mountains, 1431 Duskwood.
RXPGuides.RegisterGuide([[
#forever
#version 2
<< Alliance
#group TimmyGnome
#name 25+ The Stockade
#next 26+ Excavation Site

step
    #completewith EnterStockade
    +|cRXP_WARN_Start forming a party to run the Stockade dungeon|r
step
    .goto 1453/0,450.03,-8633.96,15,0
    .goto 1453/0,422.75,-8649.60,15,0
    .goto 1453/0,395.12,-8687.94,15,0
    .goto 1453/0,407.11,-8706.36,15,0
    .goto 1453/0,440.99,-8628.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWalk north-east into Old Town and find |cRXP_FRIENDLY_Nikova Raskol|r: she walks around
    .accept 388 >> Accept The Color of Blood
    .unitscan Nikova Raskol
step
    #completewith next
    .isOnQuest 98190
    .goto 1453/0,435.32,-8522.73,15,0
    .goto 1453/0,413.03,-8471.94,20 >> North into Stormwind Keep
step
    .isOnQuest 98190
    .goto 1453/0,329.44,-8440.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r in the throne room
    .turnin 98190 >> Turn in A Friend of the Family
    .accept 98191 >> Accept A Friend of the Family
    .target Highlord Bolvar Fordragon
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWest to |cRXP_FRIENDLY_Baros Alexston|r in City Hall, on Cathedral Square
    .accept 389 >> Accept Bazil Thredd
    .target Baros Alexston
step
    #completewith next
    .isOnQuest 98191
    .goto 1453/0,809.52,-8579.22,20 >> Go into the Cathedral of Light
step
    .isOnQuest 98191
    .goto 1453/0,881.97,-8577.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Grayson Shadowbreaker|r
    >>|cRXP_WARN_Take the Royal Dagger (+18 spell damage)|r << Mage
    >>|cRXP_WARN_Take the Knight's Lance to sell|r << Paladin
    >>|cRXP_WARN_Don't take The Shamed Lieutenant: it goes to Hillsbrad|r
    .turnin 98191 >> Turn in A Friend of the Family
    .target Lord Grayson Shadowbreaker
step << Paladin
    .goto 1453/0,809.52,-8579.22,20,0
    .goto 1453/0,861.14,-8573.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r in the Cathedral
    .train 5588 >> Train your level 24 spells (Hammer of Justice rank 2, Blessing of Wisdom rank 2, Blessing of Protection rank 2, Turn Undead)
    .target Arthur the Faithful
step << Paladin
    .xp <26,1
    .goto 1453/0,861.14,-8573.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tAlready 26? Train those too while you're here
    .train 19939 >> Train your level 26 spells (Flash of Light rank 2, Retribution Aura rank 2)
    .target Arthur the Faithful
step
    .goto 1453/0,828.28,-8799.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSouth to |cRXP_FRIENDLY_Warden Thelwater|r outside the Stockade
    .turnin 389 >> Turn in Bazil Thredd
    .accept 391 >> Accept The Stockade Riots
    .accept 387 >> Accept Quell the Uprising
    .target Warden Thelwater
step << Mage
    #completewith next
    .goto 1453/0,942.34,-9001.49,15,0
    .goto 1453/0,949.86,-9009.38,10,0
    .goto 1453/0,962.63,-8990.73,15,0
    .goto 1453/0,928.62,-9010.10,15,0
    .goto 1453/0,863.96,-9001.40,8,0
    .goto 1453/0,877.00,-9008.03,6,0
    .goto 1453/0,868.8,-9004.27,8,0
    .goto 1453/0,871.36,-9013.14,10,0
    .goto 1453/0,887.22,-9017.80,10 >> Go south into the Wizard's Sanctum in the Mage Quarter and follow its ramp to |cRXP_FRIENDLY_Jennea|r
step << Mage
    .goto 1453/0,861.95,-8990.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea Cannon|r
    .train 8400 >> Train your level 24 spells (Fireball rank 5, Scorch, Counterspell, Flamestrike rank 2, Conjure Food rank 3)
    .target Jennea Cannon
step << Mage
    .xp <26,1
    .goto 1453/0,861.95,-8990.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tAlready 26? Train those too while you're here
    .train 120 >> Train your level 26 spells (Cone of Cold, Dampen Magic rank 2)
    .target Jennea Cannon
step << !Mage !Paladin
    >>Visit your class trainer in Stormwind
    .trainer >> Train your level 24 spells, and 26 if you're there
step
    #label EnterStockade
    .goto 1453/0,810.56,-8809.67,10,0
    .goto 1453/0,845.48,-8766.01
    .subzone 717 >> Enter the Stockade with your group, next to Warden Thelwater
step
    #completewith StockadeDone
    .isOnQuest 387
    >>Kill |cRXP_ENEMY_Defias Prisoners|r, |cRXP_ENEMY_Defias Convicts|r and |cRXP_ENEMY_Defias Insurgents|r. Loot the |cRXP_ENEMY_Defias|r for |cRXP_LOOT_Red Wool Bandanas|r: each of you loots your own
    .complete 387,1 --Defias Prisoner slain (10)
    .complete 387,2 --Defias Convict slain (8)
    .complete 387,3 --Defias Insurgent slain (8)
    .complete 388,1 --Red Wool Bandana (10)
    .mob Defias Prisoner
    .mob Defias Convict
    .mob Defias Insurgent
step
    #completewith StockadeDone
    .isOnQuest 386
    >>Kill |cRXP_ENEMY_Targorr the Dread|r: he's in one of the cells off the first hall. Loot his |cRXP_LOOT_Head|r
    .complete 386,1 --Head of Targorr (1)
    .mob Targorr the Dread
step
    .isOnQuest 377
    >>Kill |cRXP_ENEMY_Dextren Ward|r at the end of the west wing. Loot his |cRXP_LOOT_Hand|r
    .complete 377,1 --Hand of Dextren Ward (1)
    .mob Dextren Ward
step
    .isOnQuest 391
    >>Kill |cRXP_ENEMY_Bazil Thredd|r at the end of the east wing. Loot his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Keep 3 Silk Cloth each: Items of Some Consequence, after the run, needs them|r
    .complete 391,1 --Head of Bazil Thredd (1)
    .mob Bazil Thredd
step
    #label StockadeDone
    .isOnQuest 387
    >>Short on kills or |cRXP_LOOT_Red Wool Bandanas|r? Finish them on the |cRXP_ENEMY_Defias|r your group skipped on the way out
    >>|cRXP_WARN_Nothing left to kill? Skip this step|r
    .complete 387,1 --Defias Prisoner slain (10)
    .complete 387,2 --Defias Convict slain (8)
    .complete 387,3 --Defias Insurgent slain (8)
    .complete 388,1 --Red Wool Bandana (10)
step
    .isOnQuest 386
    >>Still missing |cRXP_ENEMY_Targorr the Dread|r? Check the cells off the first hall on the way out
    .complete 386,1 --Head of Targorr (1)
    .mob Targorr the Dread
step
    .isQuestComplete 387
    .goto 1453/0,828.28,-8799.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack outside, talk to |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 387 >> Turn in Quell the Uprising
    .target Warden Thelwater
step
    .isQuestComplete 391
    .goto 1453/0,828.28,-8799.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 391 >> Turn in The Stockade Riots
    .accept 392 >> Accept The Curious Visitor
    .target Warden Thelwater
step << Mage
    #completewith next
    .xp <26,1
    .goto 1453/0,942.34,-9001.49,15,0
    .goto 1453/0,949.86,-9009.38,10,0
    .goto 1453/0,962.63,-8990.73,15,0
    .goto 1453/0,928.62,-9010.10,15,0
    .goto 1453/0,863.96,-9001.40,8,0
    .goto 1453/0,877.00,-9008.03,6,0
    .goto 1453/0,868.8,-9004.27,8,0
    .goto 1453/0,871.36,-9013.14,10,0
    .goto 1453/0,887.22,-9017.80,10 >> 26 now? Go south into the Wizard's Sanctum, up its ramp to |cRXP_FRIENDLY_Jennea|r
step << Mage
    .xp <26,1
    .goto 1453/0,861.95,-8990.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea Cannon|r
    .train 120 >> Train your level 26 spells (Cone of Cold, Dampen Magic rank 2)
    .target Jennea Cannon
step
    .isOnQuest 392
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r in City Hall
    .turnin 392 >> Turn in The Curious Visitor
    .accept 393 >> Accept Shadow of the Past
    .target Baros Alexston
step << Paladin
    .xp <26,1
    .goto 1453/0,809.52,-8579.22,20,0
    .goto 1453/0,861.14,-8573.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t26 now? Talk to |cRXP_FRIENDLY_Arthur the Faithful|r in the Cathedral next door
    .train 19939 >> Train your level 26 spells (Flash of Light rank 2, Retribution Aura rank 2)
    .target Arthur the Faithful
step
    .isQuestComplete 388
    .goto 1453/0,450.03,-8633.96,15,0
    .goto 1453/0,422.75,-8649.60,15,0
    .goto 1453/0,395.12,-8687.94,15,0
    .goto 1453/0,407.11,-8706.36,15,0
    .goto 1453/0,440.99,-8628.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEast into Old Town, find |cRXP_FRIENDLY_Nikova Raskol|r again
    .turnin 388 >> Turn in The Color of Blood
    .unitscan Nikova Raskol
step
    #completewith next
    .isOnQuest 393
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,10 >> Go into the SI:7 building: |cRXP_FRIENDLY_Master Mathias Shaw|r is upstairs
step
    .isOnQuest 393
    .goto 1453/0,362.28,-8815.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 393 >> Turn in Shadow of the Past
    .accept 350 >> Accept Look to an Old Friend
    .target Master Mathias Shaw
step
    .isOnQuest 350
    .goto 1453/0,558.79,-8852.89,8,0
    .goto 1453/0,575.65,-8854.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWest into the Trade District: talk to |cRXP_FRIENDLY_Elling Trias|r upstairs in his cheese shop
    >>|cRXP_WARN_Short of 3 Silk Cloth? Buy them at the auction house across the street|r
    .turnin 350 >> Turn in Look to an Old Friend
    .accept 2745 >> Accept Infiltrating the Castle
    .target Elling Trias
step
    #completewith next
    .isOnQuest 2745
    .goto 1453/0,435.32,-8522.73,15,0
    .goto 1453/0,413.03,-8471.94,20 >> North to Stormwind Keep
step
    .isOnQuest 2745
    .goto 1453/0,450.67,-8407.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrion|r in the Keep courtyard
    .turnin 2745 >> Turn in Infiltrating the Castle
    .accept 2746 >> Accept Items of Some Consequence
    .target Tyrion
step
    #completewith next
    .isOnQuest 2746
    .goto 1429,32.38,49.87,50 >> Leave Stormwind by the main gate
step
    .isOnQuest 2746
    .goto 1429,33.95,57.16
    >>Follow the road south to Clara's farmhouse: loot |cRXP_PICK_Clara's Fresh Apples|r on the table inside
    >>|cRXP_WARN_Still short of Silk Cloth? Buy it at the auction house in the Trade District on the way back|r
    .complete 2746,2 --Clara's Fresh Apple (2)
    .complete 2746,1 --Silk Cloth (3)
step
    #completewith next
    .isOnQuest 2746
    .goto 1453/0,435.32,-8522.73,15,0
    .goto 1453/0,413.03,-8471.94,20 >> Back to Stormwind Keep
step
    .isQuestComplete 2746
    .goto 1453/0,450.67,-8407.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrion|r
    >>|cRXP_WARN_Both of you hand in Items of Some Consequence before either takes The Attack!: it starts the event|r
    .turnin 2746 >> Turn in Items of Some Consequence
    .accept 434,1 >> Accept The Attack!
    .target Tyrion
step
    .isOnQuest 434
    .goto 1453/0,466.54,-8405.01
    >>Wait in the middle of the courtyard: |cRXP_ENEMY_Lord Gregor Lescovar|r and |cRXP_ENEMY_Marzon the Silent Blade|r arrive after about 2 minutes. Let them talk, then kill both
    >>|cRXP_WARN_Lescovar is 31 and Marzon 30. If another group is already running the event, wait for it to finish|r
    .complete 434,1 --Lord Gregor Lescovar slain (1)
    .complete 434,2 --Marzon the Silent Blade slain (1)
    .mob Lord Gregor Lescovar
    .mob Marzon the Silent Blade
step
    .isQuestComplete 434
    .goto 1453/0,558.79,-8852.89,8,0
    .goto 1453/0,575.65,-8854.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack to |cRXP_FRIENDLY_Elling Trias|r in the Trade District
    .turnin 434 >> Turn in The Attack!
    .accept 394 >> Accept The Head of the Beast
    .target Elling Trias
step
    #completewith next
    .isOnQuest 394
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,10 >> East to the SI:7 building: |cRXP_FRIENDLY_Master Mathias Shaw|r is upstairs
step
    .isOnQuest 394
    .goto 1453/0,362.28,-8815.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 394 >> Turn in The Head of the Beast
    .accept 395 >> Accept Brotherhood's End
    .target Master Mathias Shaw
step
    .isOnQuest 395
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r in City Hall
    .turnin 395 >> Turn in Brotherhood's End
    .accept 396 >> Accept An Audience with the King
    .target Baros Alexston
step << Paladin
    .xp <26,1
    .goto 1453/0,809.52,-8579.22,20,0
    .goto 1453/0,861.14,-8573.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t26 now? Talk to |cRXP_FRIENDLY_Arthur the Faithful|r in the Cathedral next door
    .train 19939 >> Train your level 26 spells (Flash of Light rank 2, Retribution Aura rank 2)
    .target Arthur the Faithful
step
    #completewith next
    .isOnQuest 396
    .goto 1453/0,435.32,-8522.73,15,0
    .goto 1453/0,413.03,-8471.94,20 >> North-east to Stormwind Keep
step
    .isOnQuest 396
    .goto 1453/0,331.02,-8437.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Katrana Prestor|r in the throne room
    >>|cRXP_WARN_Take the Seal of Wrynn|r
    .turnin 396 >> Turn in An Audience with the King
    .target Lady Katrana Prestor
step
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r, the gryphon master in the Trade District
    .fly Lakeshire >> Fly to Lakeshire in Redridge
    .target Dungar Longdrink
    .zoneskip Redridge Mountains
step
    .goto 1433,25.8,46.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tCross the bridge into town and talk to |cRXP_FRIENDLY_Dorin Songblade|r
    >>|cRXP_WARN_An Excavation Site quest: carry it to the dungeon in the next guide|r
    .accept 95772 >> Accept Songblade Search
    .target Dorin Songblade
step
    .isQuestComplete 386
    .goto 1433,21.2,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Berton|r by the inn
    >>|cRXP_WARN_Take the Hardened Root Staff (+20 spell damage) unless the Royal Dagger and your off-hand are better|r << Mage
    >>|cRXP_WARN_Take the Ursine Hammer|r << Paladin
    .turnin 386 >> Turn in What Comes Around...
    .target Guard Berton
step
    .goto 1433,25.5,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack over the bridge to |cRXP_FRIENDLY_Ariena Stormfeather|r, the gryphon master
    .fly Darkshire >> Fly to Darkshire in Duskwood
    .target Ariena Stormfeather
    .zoneskip Duskwood
step
    .isQuestComplete 377
    .goto 1431,71.92,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Councilman Millstipe|r in the town hall
    >>|cRXP_WARN_Take the Town Clerk's Mittens (+7 Intellect, +3 spell damage)|r << Mage
    >>|cRXP_WARN_Take the Darkshire Mail Leggings to sell (22s 27c): your Chausses of Westfall are better|r << Paladin
    .turnin 377 >> Turn in Crime and Punishment
    .target Councilman Millstipe
step
    #label HearthMenethil
    >>|cRXP_WARN_Next: the Excavation Site, from Menethil|r
    .hs >> Hearth to Menethil Harbor
    .cooldown item,6948,>2,1
    .bindlocation 150,1
    .zoneskip Wetlands
step
    .goto 1431,77.49,44.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHearthstone on cooldown? Talk to |cRXP_FRIENDLY_Felicia Maline|r, the gryphon master, and fly to Menethil instead
    .fly Menethil >> Fly to Menethil Harbor
    .target Felicia Maline
    .zoneskip Wetlands
]])

-- The Excavation Site from level 26, after the Stockade: the Wetlands dungeon with all its quests, the last guide of
-- the 21-30 track. Menethil first (Caitlin Grassman and James Halloran), then Rethiel the Greenwarden (Blisters on
-- the Land if it's still open, then Horrors in the Highland) and the portal in the hills above Thelgen Rock. Inside:
-- Saltspine, Shadetooth, Daewyn Songblade's body and the Highland Horror by the camping hut past Shadetooth, the
-- Relic Guardian and Ardin Grassman beside it, with a sticky for the Thicket Raptor Hides. After the run: Whelgar
-- (and Sarltooth if Ormer's Revenge is still open), Rethiel, the hearth to Menethil for Caitlin and Halloran, the
-- flight to Ironforge for High Explorer Magellas and training, and Lakeshire for Fallen in the Fen. RestedXP has no
-- Excavation Site guide, so the structure follows its Forever dungeon guides and the dungeon facts come from
-- ForeverDungeonJournal's data, AllTheThings and the Wowhead and Icy Veins dungeon guides (boss order, where each
-- objective is, the tall grass and Shadetooth warnings). 1437 is the Wetlands, 1455 Ironforge, 1433 Redridge.
RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group TimmyGnome
#name 26+ Excavation Site

step
    #completewith EnterExcavation
    +|cRXP_WARN_Start forming a party to run the Excavation Site dungeon|r
step
    .goto 1437,11.9,58.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caitlin Grassman|r
    .accept 95647 >> Accept Lost in the Thicket Things
    .target Caitlin Grassman
step
    .goto 1437,8.6,55.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
    >>|cRXP_WARN_Don't take Crocs of the Sky|r
    .accept 98815 >> Accept Highland Hides
    .target James Halloran
step
    .isOnQuest 275
    #loop
    .goto 1437,54.0,41.4,0
    .goto 1437,53.2,36.5,20,0
    .goto 1437,55.0,37.2,20,0
    .goto 1437,54.0,41.4,20,0
    .goto 1437,55.0,46.4,20,0
    >>East to Rethiel the Greenwarden. Still short of |cRXP_ENEMY_Fen Creepers|r? Kill the ones in his stream: Horrors in the Highland needs Blisters on the Land handed in
    .complete 275,1 --Fen Creeper (12)
    .mob Fen Creeper
step
    .isQuestComplete 275
    .goto 1437,56.4,40.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 275 >> Turn in Blisters on the Land
    .target Rethiel the Greenwarden
step
    .goto 1437,56.4,40.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEast to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .accept 95646 >> Accept Horrors in the Highland
    .target Rethiel the Greenwarden
step
    #label EnterExcavation
    .goto 1437,58.0,57.0,40,0
    .goto 1437,51.5,62.0,40,0
    .goto 1437,48.0,56.3
    >>South round the east side of Nek'rosh's camp to Thelgen Rock, then up the road into the hills above it: the portal is a blue mist under a large tree. Enter with your group
    >>|cRXP_WARN_Nek'rosh, in the camp north of Thelgen Rock, is elite. The meeting stone is at 53.4,65.3|r
    .subzone 17732 >> Enter the Excavation Site
step
    #completewith HidesFinish
    .isOnQuest 98815
    >>Kill the |cRXP_ENEMY_Thicket raptors|r and loot them for |cRXP_LOOT_Thicket Raptor Hides|r: each of you loots your own
    >>|cRXP_WARN_Stay on the path: walking through tall grass spawns elite Thicket Lurkers|r
    .complete 98815,1 --Thicket Raptor Hide (4)
    .mob Thicket Lurker
    .mob Thicket Hunter
    .mob Thicket Matriarch
    .mob Shadetooth
step
    #completewith DaewynHut
    +|cRXP_WARN_Saltspine, on the lake: clear the trash around it first. Shadetooth, in the thicket: crowd-control or kill its two Thicket Hunters, dispel Infected Wound, and fight it in the cleared crocodile cove, never in Saltspine's lake|r
step
    #label DaewynHut
    .isOnQuest 95772
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tPast Shadetooth, find |cRXP_FRIENDLY_Daewyn Songblade|r's body in the camping hut
    .turnin 95772 >> Turn in Songblade Search
    .accept 95795 >> Accept Fallen in the Fen
    .target Daewyn Songblade
step
    .isOnQuest 95646
    >>Kill the |cRXP_ENEMY_Highland Horror|r by the hut. Loot it for the |cRXP_LOOT_Horrible Rootcore|r: each of you loots your own
    .complete 95646,1 --Horrible Rootcore (1)
    .mob Highland Horror
step
    >>Press the |cRXP_PICK_Archival Panel|r next to the |cRXP_ENEMY_Relic Guardian|r to start the fight. Kill it, loot the |cRXP_LOOT_Titan Relic|r and use it
    >>|cRXP_WARN_31 elite: it knocks back and stuns the tank, and its Thunderclap hits everyone within 10 yards. It can be stunned and slowed|r
    .accept 95810 >> Accept Lost Relic Carry
    .use 270865
    .mob Relic Guardian
step
    .isOnQuest 95647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ardin Grassman|r on the platform beside the Relic Guardian
    .turnin 95647 >> Turn in Lost in the Thicket Things
    .accept 95809 >> Accept Heartwoven
    .target Ardin Grassman
step
    #label HidesFinish
    .isOnQuest 98815
    >>Short of |cRXP_LOOT_Thicket Raptor Hides|r? Kill the raptors your group skipped on the way out
    >>|cRXP_WARN_Nothing left to kill? Skip this step|r
    .complete 98815,1 --Thicket Raptor Hide (4)
step
    .isOnQuest 95810
    .goto 1437,38.8,52.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tOut of the dungeon, west to |cRXP_FRIENDLY_Prospector Whelgar|r at his dig
    >>|cRXP_WARN_If Prehistoric Prism then shows 0/1 Titan Relic, abandon it and take it again from him|r
    .turnin 95810 >> Turn in Lost Relic Carry
    .accept 98824 >> Accept Prehistoric Prism
    .target Prospector Whelgar
step
    .isOnQuest 296
    .goto 1437,31.5,48.9,30,0
    .goto 1437,33.3,51.5
    >>Still on Ormer's Revenge? Kill |cRXP_ENEMY_Sarltooth|r on the hill at the south-west end of the dig and loot his |cRXP_LOOT_Talon|r
    .complete 296,1 --Sarltooth's Talon (1)
    .mob Sarltooth
step
    .isQuestComplete 296
    .goto 1437,38.2,50.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 296 >> Turn in Ormer's Revenge
    .target Ormer Ironbraid
step
    .isQuestComplete 95646
    .goto 1437,56.4,40.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEast to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    >>|cRXP_WARN_Take the Curl of Life (+5 Stamina, +5 spell damage ring)|r << Mage
    >>|cRXP_WARN_Take the Ironwood Destroyer (22.2 DPS) until Magellas' Heavehammer|r << Paladin
    .turnin 95646 >> Turn in Horrors in the Highland
    .target Rethiel the Greenwarden
step
    .hs >> Hearth to Menethil Harbor
    .cooldown item,6948,>2,1
    .bindlocation 150,1
    .subzoneskip 150
step
    .isQuestComplete 95647
    .goto 1437,11.9,58.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caitlin Grassman|r
    .turnin 95647 >> Turn in Lost in the Thicket Things
    .target Caitlin Grassman
step
    .isOnQuest 95809
    .goto 1437,11.9,58.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack in Menethil, talk to |cRXP_FRIENDLY_Caitlin Grassman|r
    >>|cRXP_WARN_Take the Mana Potions|r << Mage
    .turnin 95809 >> Turn in Heartwoven
    .target Caitlin Grassman
step
    .isQuestComplete 98815
    .goto 1437,8.6,55.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
    .turnin 98815 >> Turn in Highland Hides
    .target James Halloran
step
    .goto 1437,8.0,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylessa Duskwhisper|r next to him
    >>|cRXP_WARN_OPTIONAL, if you skipped it in the Wetlands guide: her bloom is in the wreck just south of town, among level 28-29 murlocs|r
    .accept 98208 >> Accept Bloom of the Heavens
    .target Sylessa Duskwhisper
step
    .isOnQuest 98208
    .goto 1437,12.2,63.8
    >>|cRXP_WARN_OPTIONAL:|r just south of town, loot |cRXP_PICK_Nord'el|r from the wreck
    >>|cRXP_WARN_The Bluegill Raiders here are 28-29 and come in groups|r
    .complete 98208,1 --Nord'el (1)
    .mob Bluegill Raider
step
    .isQuestComplete 98208
    .goto 1437,8.0,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylessa Duskwhisper|r
    >>|cRXP_WARN_Don't take the second part: it goes to Darkshore|r
    .turnin 98208 >> Turn in Bloom of the Heavens
    .target Sylessa Duskwhisper
step
    .goto 1437,9.5,59.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r, the gryphon master
    .fly Ironforge >> Fly to Ironforge
    .target Shellei Brondir
    .zoneskip Ironforge
step
    .isOnQuest 98824
    .goto 1455,69.9,18.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Explorer Magellas|r in the Hall of Explorers
    >>|cRXP_WARN_Take the Healer's Staff (+22 spell damage, +12 Stamina)|r << Mage
    >>|cRXP_WARN_Take the Heavehammer (27.7 DPS, +32 attack power)|r << Paladin
    .turnin 98824 >> Turn in Prehistoric Prism
    .target High Explorer Magellas
step << Mage
    .xp <26,1
    .goto 1455/0,-928.48,-4614.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r in the Mystic Ward
    .train 120 >> Train your level 26 spells (Cone of Cold, Dampen Magic rank 2)
    .target Dink
step << Mage
    .xp <28,1
    .goto 1455/0,-928.48,-4614.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tAlready 28? Train those too while you're here
    .train 1461 >> Train your level 28 spells (Arcane Intellect rank 3, Blizzard rank 2, Mana Shield rank 2, Scorch rank 2, Conjure Mana Agate)
    .target Dink
step << Paladin
    .xp <26,1
    .goto 1455/0,-896.47,-4601.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r in the Mystic Ward
    .train 19939 >> Train your level 26 spells (Flash of Light rank 2, Retribution Aura rank 2)
    .target Brandur Ironhammer
step << Paladin
    .xp <28,1
    .goto 1455/0,-896.47,-4601.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tAlready 28? Train those too while you're here
    .train 5614 >> Train your level 28 spells (Exorcism rank 2, Concentration Aura)
    .target Brandur Ironhammer
step << !Mage !Paladin
    >>Visit your class trainer in Ironforge
    .trainer >> Train your level 26 spells, and 28 if you're there
step
    .goto 1455/0,-1152.40,-4821.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r, the gryphon master
    .fly Lakeshire >> Fly to Lakeshire in Redridge
    .target Gryth Thurden
    .zoneskip Redridge Mountains
step
    .isOnQuest 95795
    .goto 1433,25.8,46.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tCross the bridge into town and talk to |cRXP_FRIENDLY_Dorin Songblade|r
    >>|cRXP_WARN_Take Daewyn's Girdle (+7 spell damage, +6 Spirit)|r << Mage
    >>|cRXP_WARN_Take the Songblade Stabilizer (mail, +6 Stamina)|r << Paladin
    .turnin 95795 >> Turn in Fallen in the Fen
    .target Dorin Songblade
]])
