---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(EASTERN_KINGDOMS, {
	m(REDRIDGE_MOUNTAINS, {
		["lore"] = "Redridge Mountains is a sleepy zone that is primarily Alliance. However, threats come from the Blackrock Invasion, which is revealed to be tied to the Black Dragonflight and Deathwing. The main series of quests follows John J. Keeshan, a clear tribute to Rambo.",
		-- #if AFTER WRATH
		["achievementID"] = 780,
		-- #endif
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(4902, {	-- Redridge Mountain Quests
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						crit(1, {	-- The Gnoll Offensive
							["sourceQuest"] = 26545,	-- Yowler Must Die!
						}),
						crit(2, {	-- Keeshan's Raiders
							["sourceQuest"] = 26607,	-- They Drew First Blood
						}),
						crit(3, {	-- First Blood
							["sourceQuest"] = 26726,	-- Triumphant Return
						}),
					},
				}),
			}),
			petbattle(filter(BATTLE_PETS, {
				p(646, {	-- Chicken
					["crs"] = { 62664 },	-- Chicken
				}),
				p(395, {	-- Fledgling Buzzard
					["crs"] = { 61171 },	-- Fledgling Buzzard
				}),
				p(391, {	-- Mountain Cottontail
					["crs"] = { 61167 },	-- Mountain Cottontail
				}),
				p(378, {	-- Rabbit
					["crs"] = { 61080 },	-- Rabbit
				}),
				p(392, {	-- Redridge Rat
					["crs"] = { 61168 },	-- Redridge Rat
				}),
				p(424, {	-- Roach
					["crs"] = { 61169 },	-- Roach
				}),
			})),
			n(FLIGHT_PATHS, {
				fp(615, {	-- Camp Everstill, Redridge
					["coord"] = { 52.8, 54.6, REDRIDGE_MOUNTAINS },
				}),
				fp(5, {	-- Lakeshire, Redridge
					["coord"] = { 29.4, 53.6, REDRIDGE_MOUNTAINS },
				}),
				fp(596, {	-- Shalewind Canyon, Redridge
					["coord"] = { 77.8, 65.8, REDRIDGE_MOUNTAINS },
				}),
			}),
			n(QUESTS, {
				q(26708, {	-- AHHHHHHHHHHHH! AHHHHHHHHH!!!
					["provider"] = { "n", 43733 },	-- Colonel Troteman
					["coord"] = { 77.2, 65.9, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26694,	-- The Grand Magus Doane
					["groups"] = {
						i(131588),	-- Bravo Company Amice
						i(60722),	-- Bravo Company Mantle
						i(60723),	-- Bravo Company Monnions
						i(60725),	-- Bravo Company Pauldrons
						i(60724),	-- Bravo Company Shoulderguards
						i(131589),	-- Bravo Company Spaulders
					},
				}),
				q(26509, {	-- An Unwelcome Guest
					["provider"] = { "n", 342 },	-- Martie Jainrose
					["coord"] = { 22.0, 42.7, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26562, {	-- And Last But Not Least... Danforth
					["provider"] = { "n", 43303 },	-- Krakauer
					["coord"] = { 25.9, 10.4, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26561,	-- Krakauer
				}),
				q(26636, {	-- Bravo Company Field Kit: Camouflage
					["provider"] = { "n", 43461 },	-- Krakauer
					["coord"] = { 52.4, 55.4, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26616,	-- It's Never Over
				}),
				q(26637, {	-- Bravo Company Field Kit: Chloroform
					["provider"] = { "n", 43459 },	-- Messner
					["coord"] = { 52.4, 55.5, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26616,	-- It's Never Over
					["groups"] = {
						i(60717),	-- Everstill Breastplate
						i(60716),	-- Muckdweller Gloves
						i(131569),	-- Muckdweller Handguards
						i(60715),	-- Vial of Chloroform
					},
				}),
				q(26587, {	-- Breaking Out is Hard to Do
					["provider"] = { "n", 43270 },	-- Messner
					["coord"] = { 47.5, 41.8, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 26586 },	-- In Search of Bravo Company
				}),
				q(26514, {	-- Canyon Romp
					["provider"] = { "n", 344 },	-- Magistrate Solomon
					["coord"] = { 32.3, 39.5, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26512,	-- Tuning the Gnomecorder
				}),
				q(26714, {	-- Darkblaze, Brood of the Worldbreaker
					["provider"] = { "n", 43733 },	-- Colonel Troteman
					["coord"] = { 60.6, 36.6, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26713,	-- Showdown at Stonewatch
				}),
				q(26668, {	-- Detonation
					["provider"] = { "n", 43611 },	-- John J. Keeshan
					["coord"] = { 77.6, 65.5, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26651,	-- To Win a War, You Gotta Become War
					["groups"] = {
						i(60712),	-- Exterminator's Armbands
						i(131576),	-- Exterminator's Bracers
						i(156953),	-- 'Liberated' Greataxe
						i(60714),	-- Massive Firearm of Death
						i(60711),	-- Messner's Cuffs
						i(60713),	-- Redridge Legguards
					},
				}),
				q(116, {	-- Dry Times
					["u"] = REMOVED_FROM_GAME,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						un(REMOVED_FROM_GAME, i(1270)),	-- Finely Woven Cloak
					},
				}),
				q(26506, {	-- Franks and Beans
					["provider"] = { "n", 379 },	-- Darchy Parker
					["coord"] = { 15.6, 65.3, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26519, {	-- He Who Controls the Ettins
					["races"] = ALLIANCE_ONLY,	-- Alliance Only Races
					["provider"] = { "i", 58898 },	-- Dirt-Stained Scroll
					["sourceQuest"] = 26512,	-- Tuning the Gnomecorder
					["crs"] = {
						445,	-- Redridge Alpha
						446,	-- Redridge Basher
						430,	-- Redridge Mystic
					},
				}),
				q(26728, {	-- Hero's Call: Duskwood!
					["provider"] = { "n", 900 },	-- Bailiff Conacher
					["coord"] = { 28.7, 40.9, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(26573, {	-- His Heart Must Be In It
					["provider"] = { "n", 43221 },	-- Colonel Troteman
					["coord"] = { 28.6, 40.7, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26571,	-- Weapons of War
					["groups"] = {
						i(131557),	-- Hauberk of the Changing Heart
						i(60710),	-- Troteman's Bracers
						i(60709),	-- Vest of the Changing Heart
					},
				}),
				q(126, {	-- Howling in the Hills
					["u"] = REMOVED_FROM_GAME,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						un(REMOVED_FROM_GAME, i(2910)),	-- Gold Militia Boots
						un(REMOVED_FROM_GAME, i(1319)),	-- Ring of Iron Will
					},
				}),
				q(26638, {	-- Hunting the Hunters
					["provider"] = { "n", 43462 },	-- Danforth
					["coord"] = { 52.5, 55.5, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26616,	-- It's Never Over
				}),
				q(26586, {	-- In Search of Bravo Company
					["provider"] = { "n", 43221 },	-- Colonel Troteman
					["coord"] = { 28.6, 40.7, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26568,	-- This Ain't My War
				}),
				q(26616, {	-- It's Never Over
					["provider"] = { "n", 43184 },	-- John J. Keeshan
					["coord"] = { 26.3, 40.1, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26607,	-- They Drew First Blood
				}),
				q(26567, {	-- John J. Keeshan
					["provider"] = { "n", 43221 },	-- Colonel Troteman
					["coord"] = { 28.6, 40.7, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26545,	-- Yowler Must Die!
				}),
				q(26560, {	-- Jorgensen
					["provider"] = { "n", 43300 },	-- Messner
					["coord"] = { 47.5, 41.6, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26587,	-- Breaking Out is Hard to Do
				}),
				q(26561, {	-- Krakauer
					["provider"] = { "n", 43305 },	-- Jorgensen
					["coord"] = { 33.5, 11.8, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26560,	-- Jorgensen
				}),
				q(26511, {	-- Lake Everstill Clean Up
					["provider"] = { "n", 900 },	-- Bailiff Conacher
					["coord"] = { 28.6, 40.9, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(60699),	-- Bailiff's Gloves
						i(60698),	-- Belt of Recurring Raids
						i(131539),	-- Chain of Recurring Raids
						i(157001),	-- Everstill Hewer
						i(60697),	-- Indiscriminate Wand
						i(60696),	-- Shield of the Lesson
					},
				}),
				q(26513, {	-- Like a Fart in the Wind
					["provider"] = { "n", 382 },	-- Marshal Marris
					["coord"] = { 31.8, 44.9, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26510,	-- We Must Prepare!
					["groups"] = {
						i(60692),	-- Breadwinner's Gloves
						i(60695),	-- Cloak of Insomnia
						i(131540),	-- Starvation Leggings
						i(60694),	-- Starvation Vest
						i(60693),	-- Ventillated Leggings
						i(131541),	-- Ventillated Vest
					},
				}),
				q(219, {	-- Missing in Action
					["u"] = REMOVED_FROM_GAME,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						un(REMOVED_FROM_GAME, i(3431)),	-- Bone-Studded Leather
						un(REMOVED_FROM_GAME, i(1275)),	-- Deputy Chain Coat
						un(REMOVED_FROM_GAME, i(3555)),	-- Robe of Solomon
					},
				}),
				q(249, {	-- Morganth
					["u"] = REMOVED_FROM_GAME,
					["model"] = 189908,
					["provider"] = { "o", 31 },	-- Old Lion Statue
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						un(REMOVED_FROM_GAME, i(5274)),	-- Rose Mantle
					},
				}),
				q(150, {	-- Murloc Poachers
					["u"] = REMOVED_FROM_GAME,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						un(REMOVED_FROM_GAME, i(3567)),	-- Dwarven Fishing Pole
					},
				}),
				q(26508, {	-- Nida's Necklace
					["provider"] = { "n", 8965 },	-- Shawn
					["coord"] = { 28.3, 48.8, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26505, {	-- Parker's Report
					["provider"] = { "n", 464 },	-- Watch Captain Parker
					["coord"] = { 15.3, 64.5, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26503,	-- Still Assessing the Threat
				}),
				q(26639, {	-- Point of Contact: Brubaker
					["provider"] = { "n", 43458 },	-- John J. Keeshan
					["coord"] = { 52.5, 55.4, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26616,	-- It's Never Over
				}),
				q(26646, {	-- Prisoners of War
					["provider"] = { "n", 43458 },	-- John J. Keeshan
					["coord"] = { 52.5, 55.4, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = {
						26637,	-- Bravo Company Field Kit: Chloroform
						26636,	-- Bravo Company Field Kit: Camouflage
						26638,	-- Hunting the Hunters
						26640,	-- Unspeakable Atrocities
					},
				}),
				q(26570, {	-- Render's Army
					["provider"] = { "n", 382 },	-- Marshal Marris
					["coord"] = { 31.8, 44.8, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26568,	-- This Ain't My War
				}),
				q(26563, {	-- Return of the Bravo Company
					["provider"] = { "n", 43302 },	-- Danforth
					["coord"] = { 28.3, 17.0, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26562,	-- And Last But Not Least... Danforth
				}),
				q(26520, {	-- Saving Foreman Oslow
					["model"] = 203892,
					["coord"] = { 17.8, 18.6, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "o", 204351 },	-- Ettin Control Orb
					["sourceQuest"] = 26519,	-- He Who Controls the Ettins
					["groups"] = {
						i(60701),	-- Leverage Bracers
						i(131543),	-- Leverage Wriststraps
						i(60700),	-- Solomon's Gavel
						i(60702),	-- Sword of the Falling Sky
					},
				}),
				q(26692, {	-- Shadowhide Extinction
					["provider"] = { "n", 43607 },	-- Danforth
					["coord"] = { 77.6, 65.3, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26668,	-- Detonation
					["groups"] = {
						i(60719),	-- Danforth's Breastplate
						i(60718),	-- Shadowhide Boots
						i(131583),	-- Shadowhide Footguards
					},
				}),
				q(26713, {	-- Showdown at Stonewatch
					["provider"] = { "n", 43733 },	-- Colonel Troteman
					["coord"] = { 60.6, 36.6, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26708,	-- AHHHHHHHHHHHH! AHHHHHHHHH!!!
				}),
				q(26503, {	-- Still Assessing the Threat
					["provider"] = { "n", 464 },	-- Watch Captain Parker
					["coord"] = { 15.3, 64.5, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = {26365},	-- Hero's Call: Redridge Mountains!
					["groups"] = {
						i(60687),	-- Belt of the Sons
						i(60686),	-- Boots of the Prolific Sire
						i(131538),	-- Striders of the Prolific Sire
						i(60685),	-- Yowling Cloak
					},
				}),
				q(26569, {	-- Surveying Equipment
					["provider"] = { "n", 43194 },	-- Foreman Oslow
					["coord"] = { 29.6, 44.5, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26568,	-- This Ain't My War
					["groups"] = {
						i(60708),	-- Blackrock Shield
						i(60707),	-- Lakeshire Gloves
						i(131556),	-- Lakeshire Handwraps
						i(60706),	-- Sandals of the Neverending Bridge
					},
				}),
				q(19, {	-- Tharil'zun
					["u"] = REMOVED_FROM_GAME,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						un(REMOVED_FROM_GAME, i(1276)),	-- Fire Hardened Buckler
						un(REMOVED_FROM_GAME, i(6093)),	-- Orc Crusher
					},
				}),
				q(26693, {	-- The Dark Tower
					["provider"] = { "n", 43611 },	-- John J. Keeshan
					["coord"] = { 77.6, 65.5, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26668,	-- Detonation
				}),
				q(89, {	-- The Everstill Bridge
					["u"] = REMOVED_FROM_GAME,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						un(REMOVED_FROM_GAME, i(1303)),	-- Bridgeworker's Gloves
						un(REMOVED_FROM_GAME, i(1304)),	-- Riding Gloves
						un(REMOVED_FROM_GAME, i(1310)),	-- Smith's Trousers
					},
				}),
				q(26694, {	-- The Grand Magus Doane
					["provider"] = { "n", 43611 },	-- John J. Keeshan
					["coord"] = { 77.6, 65.5, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26693,	-- The Dark Tower
					["groups"] = {
						i(60721),	-- Shalewind Belt
						i(131584),	-- Treacherous Boots
						i(60720),	-- Treacherous Treads
					},
				}),
				q(1699, {	-- The Rethban Gauntlet
					["provider"] = { "n", 6166 },	-- Yorus Barleybrew
					["coord"] = { 26.8, 44.8, REDRIDGE_MOUNTAINS },
					["sourceQuests"] = {
						1698,	-- Yorus Barleybrew
						10371,	-- Yorus Barleybrew (Draenei)
					},
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
					["u"] = REMOVED_FROM_GAME,
				}),
				q(1702, {	-- The Shieldsmith
					["provider"] = { "n", 6166 },	-- Yorus Barleybrew
					["coord"] = { 26.8, 44.8, REDRIDGE_MOUNTAINS },
					["sourceQuest"] = 1699,	-- The Rethban Gauntlet
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
					["u"] = REMOVED_FROM_GAME,
					["groups"] = {
						un(REMOVED_FROM_GAME, i(6970)),	-- Furen's Favor
					},
				}),
				q(26607, {	-- They Drew First Blood
					["provider"] = { "n", 43221 },	-- Colonel Troteman
					["coord"] = { 28.6, 40.7, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = {
						26573,	-- His Heart Must Be In It
						26563,	-- Return of the Bravo Company
					},
				}),
				q(26544, {	-- They've Wised Up...
					["provider"] = { "n", 344 },	-- Magistrate Solomon
					["coord"] = { 28.9, 41.1, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26514,	-- Canyon Romp
				}),
				q(26568, {	-- This Ain't My War
					["provider"] = { "n", 43184 },	-- John J. Keeshan
					["coord"] = { 26.3, 40.1, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26567,	-- John J. Keeshan
				}),
				q(26651, {	-- To Win a War, You Gotta Become War
					["provider"] = { "n", 43458 },	-- John J. Keeshan
					["coord"] = { 52.5, 55.3, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26646,	-- Prisoners of War
				}),
				q(26726, {	-- Triumphant Return
					["provider"] = { "n", 43733 },	-- Colonel Troteman
					["coord"] = { 60.6, 36.6, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26714,	-- Darkblaze, Brood of the Worldbreaker
					["groups"] = {
						i(60727),	-- Keeshan's Bow
						i(60726),	-- Keeshan's Dagger
						i(60730),	-- Bravo Company Signet
					},
				}),
				q(26512, {	-- Tuning the Gnomecorder
					["provider"] = { "n", 344 },	-- Magistrate Solomon
					["coord"] = { 28.9, 41.1, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26510,	-- We Must Prepare!
				}),
				q(122, {	-- Underbelly Scales
					["u"] = REMOVED_FROM_GAME,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						un(REMOVED_FROM_GAME, i(6092)),	-- Black Whelp Boots
						un(REMOVED_FROM_GAME, i(1302)),	-- Black Whelp Gloves
					},
				}),
				q(26640, {	-- Unspeakable Atrocities
					["provider"] = { "n", 43508 },	-- Brubaker
					["coord"] = { 53.0, 67.8, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26639,	-- Point of Contact: Brubaker
				}),
				q(26504, {	-- Wanted: Redridge Gnolls
					["provider"] = { "o", 204344 },	-- Wanted!
					["model"] = 198409,
					["coord"] = { 16.0, 64.6, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(60684),	-- Royal Guard Breastplate
						i(60683),	-- Tower Watch Bracers
						i(60682),	-- Watch Captain's Cloak
					},
				}),
				q(26510, {	-- We Must Prepare!
					["provider"] = { "n", 344 },	-- Magistrate Solomon
					["coord"] = { 28.9, 41.1, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26571, {	-- Weapons of War
					["provider"] = { "n", 43221 },	-- Colonel Troteman
					["coord"] = { 28.6, 40.7, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26568,	-- This Ain't My War
				}),
				q(26545, {	-- Yowler Must Die!
					["provider"] = { "n", 344 },	-- Magistrate Solomon
					["coord"] = { 28.9, 41.1, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 26544,	-- They've Wised Up...
					["groups"] = {
						i(60703),	-- Escalation Britchers
						i(60705),	-- Legguards of Invasion
						i(131552),	-- Mongrel Greaves
						i(60704),	-- Mongrel Leggings
					},
				}),
			}),
			n(RARES, {
				n(14273, {	-- Boulderheart
					["coord"] = { 56.6, 51.6, REDRIDGE_MOUNTAINS },
				}),
				n(616, {	-- Chatter
					["coord"] = { 38.2, 35.8, REDRIDGE_MOUNTAINS },
					["groups"] = {
						un(REMOVED_FROM_GAME, i(3229)),	-- Tarantula Silk Sash
					},
				}),
				n(52146, {	-- Chitter
					["coord"] = { 63.8, 65.2, REDRIDGE_MOUNTAINS },
				}),
				n(147222, {	-- Gnollfeaster
					["isDaily"] = true,
					["questID"] = 54214,
					["coord"] = { 24.4, 70.9, REDRIDGE_MOUNTAINS },
					["groups"] = {
						i(165722),	-- Redridge Tarantula Egg (PET!)
					},
				}),
				n(584, {	-- Kazon
					["coord"] = { 34.8, 12.2, REDRIDGE_MOUNTAINS },
					["groups"] = {
						un(REMOVED_FROM_GAME, i(3231)),		-- Cutthroat Pauldrons
						un(REMOVED_FROM_GAME, i(2058)),		-- Kazon's Maul
					},
				}),
				n(14271, {	-- Ribchaser
					["coords"] = {
						{ 30.0, 57.6, REDRIDGE_MOUNTAINS },
						{ 30.0, 60.2, REDRIDGE_MOUNTAINS },
						{ 29.6, 64.2, REDRIDGE_MOUNTAINS },
					},
				}),
				n(947, {	-- Rohh the Silent
					["coord"] = { 68.0, 35.6, REDRIDGE_MOUNTAINS },
					["groups"] = {
						un(REMOVED_FROM_GAME, i(4447)),		-- Cloak of Night
					},
				}),
				n(14269, {	-- Seeker Aqualon
					["coord"] = { 71.05, 55.0, REDRIDGE_MOUNTAINS },
				}),
				n(14272, {	-- Snarlflare
					["coord"] = { 34.0, 57.0, REDRIDGE_MOUNTAINS },
				}),
				n(14270, {	-- Squiddic
					["coord"] = { 37.4, 42.6, REDRIDGE_MOUNTAINS },
					["groups"] = {
						un(REMOVED_FROM_GAME, i(1469)),	-- Scimitar of Atun
					},
				}),
			}),
			n(VENDORS, {
				n(777, {	-- Amy Davenport <Tradeswoman>
					["coord"] = { 28.0, 43.6, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(20576, {	-- Pattern: Black Whelp Tunic
							["isLimited"] = true,
						}),
						i(5772, {	-- Pattern: Red Woolen Bag
							["isLimited"] = true,
						}),
					},
				}),
				n(844, {	-- Antonio Perelli <Traveling Salesman>
					["races"] = ALLIANCE_ONLY,
					["description"] = "This vendor travels in a big circuit from Elwynn Forest (stopping in Goldshire) to Westfall (stopping in Sentinel Hill) to Duskwood (stopping in Darkshire) to Redridge Mountains (stopping in Lakeshire) and then back to Elwynn Forest.  If you cannot find him in this zone, check one of the other three.|r",
					["groups"] = {
						i(4795, {	-- Bear Bracers
							["isLimited"] = true,
						}),
						i(4796, {	-- Owl Bracers
							["isLimited"] = true,
						}),
						i(4794, {	-- Wolf Bracers
							["isLimited"] = true,
						}),
					},
				}),
				n(2697, {	-- Clyde Ranthal <Leatherworking Supplies>
					["coord"] = { 78.8, 63.5, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(7289, {	-- Pattern: Black Whelp Cloak
							["isLimited"] = true,
						}),
					},
				}),
				n(3091, {	-- Franklin Hamar <Tailoring Supplies>
					["coord"] = { 26.5, 42.0, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4782, {	-- Solstice Robe
							["isLimited"] = true,
						}),
						i(4781, {	-- Whispering Vest
							["isLimited"] = true,
						}),
						i(4786, {	-- Wise Man's Belt
							["isLimited"] = true,
						}),
					},
				}),
				n(3085, {	-- Gloria Femmel <Cooking Supplies>
					["coord"] = { 26.1, 40.3, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight
						i(21099),	-- Recipe: Smoked Sagefish
					},
				}),
				n(793, {	-- Kara Adams <Shield Crafter>
					["coord"] = { 29.4, 42.9, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4821, {	-- Bear Buckler
							["isLimited"] = true,
						}),
						i(4820, {	-- Guardian Buckler
							["isLimited"] = true,
						}),
						i(4822, {	-- Owl's Disk
							["isLimited"] = true,
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(1446, {	-- Blackrock Boots
					["u"] = REMOVED_FROM_GAME,
					["crs"] = { 440 },	-- Blackrock Grunt
				}),
				i(1455, {	-- Blackrock Champion's Axe
					["u"] = REMOVED_FROM_GAME,
					["crs"] = { 435 },	-- Blackrock Champion
				}),
				i(1448, {	-- Blackrock Gauntlets
					["u"] = REMOVED_FROM_GAME,
					["crs"] = { 485 },	-- Blackrock Outrunner
				}),
				i(1296, {	-- Blackrock Mace
					["u"] = REMOVED_FROM_GAME,
					["crs"] = { 4065 },	-- Blackrock Sentry
				}),
				i(1287, {	-- Giant Tarantula Fang
					["u"] = REMOVED_FROM_GAME,
					["crs"] = { 442 },	-- Tarantula
				}),
				i(1214, {	-- Gnoll Punisher
					["u"] = REMOVED_FROM_GAME,
					["crs"] = { 426 },	-- Redridge Brute
				}),
				i(1440, {	-- Gnoll Skull Basher
					["u"] = REMOVED_FROM_GAME,
					["crs"] = { 446 },	-- Redridge Basher
				}),
				i(1211, {	-- Gnoll War Harness
					["u"] = REMOVED_FROM_GAME,
					["crs"] = { 423 },	-- Redridge Mongrel
				}),
				i(1218, {	-- Heavy Gnoll War Club
					["u"] = REMOVED_FROM_GAME,
					["crs"] = { 445 },	-- Redridge Alpha
				}),
				i(1299, {	-- Lesser Belt of the Spire
					["u"] = REMOVED_FROM_GAME,
					["crs"] = { 436 },	-- Blackrock Shadowcaster
				}),
				i(1300, {	-- Lesser Staff of the Spire
					["u"] = REMOVED_FROM_GAME,
					["crs"] = { 436 },	-- Blackrock Shadowcaster
				}),
				i(1220, {	-- Lupine Axe
					["u"] = REMOVED_FROM_GAME,
					["crs"] = { 580 },	-- Redridge Drudger
				}),
				i(1406, {	-- Pearl-Encrusted Spear
					["u"] = REMOVED_FROM_GAME,
					["crs"] = { 544 },	-- Murloc Nightcrawler
				}),
				i(1219, {	-- Redridge Machete
					["u"] = REMOVED_FROM_GAME,
					["crs"] = { 424 },	-- Redridge Poacher
				}),
				i(1473, {	-- Riverside Staff
					["u"] = REMOVED_FROM_GAME,
					["crs"] = { 545 },	-- Murloc Tidecaller
				}),
				i(2566, {	-- Sacrificial Robes
					["u"] = REMOVED_FROM_GAME,
					["races"] = HORDE_ONLY,
					["crs"] = { 397 },	-- Grand Magus Doane (previously Morganth. Blizzard reused the npcID)
				}),
				i(2175, {	-- Shadowhide Battle Axe
					["u"] = REMOVED_FROM_GAME,
					["crs"] = { 568 },	-- Shadowhide Warrior
				}),
				i(1457, {	-- Shadowhide Mace
					["u"] = REMOVED_FROM_GAME,
					["crs"] = { 433 },	-- Shadowhide Gnoll
				}),
				i(1458, {	-- Shadowhide Maul
					["u"] = REMOVED_FROM_GAME,
					["crs"] = { 431 },	-- Shadowhide Slayer
				}),
				i(1459, {	-- Shadowhide Scalper
					["u"] = REMOVED_FROM_GAME,
					["crs"] = { 579 },	-- Shadowhide Assassin
				}),
				i(1460, {	-- Shadowhide Two-Handed Sword
					["u"] = REMOVED_FROM_GAME,
					["crs"] = { 434 },	-- Rabid Shadowhide Gnoll
				}),
				i(1461, {	-- Slayer's Battle Axe
					["u"] = REMOVED_FROM_GAME,
					["crs"] = { 431 },	-- Shadowhide Slayer
				}),
			}),
		},
	}),
}));