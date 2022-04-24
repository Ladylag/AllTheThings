---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(EASTERN_KINGDOMS, {
	m(THE_HINTERLANDS, {
		["lore"] = "The Hinterlands are both a center for the Wildhammer Dwarves to the west at Aerie Peak and the forest trolls to the east. It is an ancient region with pine trees, troll ruins, and one of the few remaining high elf settlements.",
		-- #if AFTER WRATH
		["achievementID"] = 773,
		-- #endif
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(4897, {	-- Hinterlands Quests
					crit(1, {	-- Quel'Danil Lodge
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							26532,	-- Shadra the Venom Queen
							26643,	-- Starvation Diet
						},
					}),
					crit(2, {	-- Jintha'Alor
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							26524,	-- Dark Vessels
							26526,	-- Hunt the Keeper
							26516,	-- It's Ours Now
							26525,	-- Venomous Secrets
						},
					}),
					crit(3, {	-- Stormfeather Outpost
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							26486,	-- 99 Bottles of Booze on the Beach
							26490,	-- Prime Slime
							26491,	-- Skulk Rock Clean-Up
							26492,	-- Skulk Rock Supplies
							26485,	-- Snapjaws, Lad!
						},
					}),
					crit(1, {	-- Jintha'Alor
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							26357,	-- Faces of Evil
							26369,	-- Hunt the Keeper
							26368,	-- Venomous Secrets
						},
					}),
					crit(2, {	-- Hiri'watha
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							26419,	-- Shadra the Venom Queen
							26387,	-- Starvation Diet
						},
					}),
					crit(3, {	-- Revantusk Village
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							26210,	-- Gammerita, Mon! (TODO: Verify if needed)
							26224,	-- Hunt the Savages
							26212,	-- Lard Lost His Lunch (TODO: Verify if needed)
							26283,	-- Prime Slime
							26225,	-- Pupellyverbos Port
							26267,	-- Skulk Rock Clean-Up
							26268,	-- Skulk Rock Supplies
							26211,	-- Snapjaws, Mon! (TODO: Verify if needed)
							26240,	-- Stomp To My Beat (TODO: Verify if needed)
						},
					}),
				}),
			}),
			petbattle(filter(BATTLE_PETS, {
				p(449, {	-- Brown Marmot
					["crs"] = { 61752 },	-- Brown Marmot
				}),
				p(393, {	-- Cockroach
					["crs"] = { 61384 },	-- Cockroach
				}),
				p(448, {	-- Hare
					["crs"] = { 61751 },	-- Hare
				}),
				p(446, {	-- Jade Oozeling
					["crs"] = { 61718 },	-- Jade Oozeling
				}),
				p(450, {	-- Maggot
					["crs"] = { 61753 },	-- Maggot
				}),
				p(417, {	-- Rat
					["crs"] = { 61366 },	-- Rat
				}),
			})),
			n(FLIGHT_PATHS, {
				fp(43, {	-- Aerie Peak, The Hinterlands
					["coord"] = { 11.0, 46.0, THE_HINTERLANDS },
				}),
				fp(617, {	-- Hiri'watha Research Station, The Hinterlands
					["coord"] = { 32.4, 58.0, THE_HINTERLANDS },
				}),
				fp(76, {	-- Revantusk Village, The Hinterlands
					["coord"] = { 81.6, 81.8, THE_HINTERLANDS },
				}),
				fp(618, {	-- Stormfeather Outpost, The Hinterlands
					["coord"] = { 65.6, 44.8, THE_HINTERLANDS },
				}),
			}),
			n(QUESTS, {
				q(26486, {	-- 99 Bottles of Booze on the Beach
					["provider"] = { "n", 43109 },	-- Dron Blastbrew
					["coord"] = { 66.2, 44.2, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26547, {	-- A Mangy Threat
					["provider"] = { "n", 5636 },	-- Gryphon Master Talonaxe
					["coord"] = { 9.9, 44.2, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 26542 },	-- Hero's Call: The Hinterlands!
				}),
				q(77, {	-- A Sticky Situation
					["u"] = REMOVED_FROM_GAME,
					["races"] = HORDE_ONLY,
					["provider"] = { "n", 7801 },	-- Gilveradin Sunchaser
					["sourceQuest"] = 650,	-- Ripple Recovery
				}),
				q(26523, {	-- All That Skitters (A)
					["provider"] = { "n", 43156 },	-- Fraggar Thundermantle
					["coord"] = { 63.7, 59.9, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26310, {	-- All That Skitters (H)
					["provider"] = { "n", 42622 },	-- Eliza Darkgrin
					["coord"] = { 67.6, 66.6, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
				}),
				q(7842, {	-- Another Message to the Wildhammer
					["u"] = REMOVED_FROM_GAME,
					["races"] = HORDE_ONLY,
					["provider"] = { "n", 14738 },	-- Otho Moji'ko
					["sourceQuest"] = 7841,	-- Message to the Wildhammer
				}),
				q(7830, {	-- Avenging the Fallen
					["u"] = REMOVED_FROM_GAME,
					["races"] = HORDE_ONLY,
					["provider"] = { "n", 14741 },	-- Huntsman Markhor
				}),
				q(26641, {	-- Can't Make An Omelette Without... (A)
					["provider"] = { "n", 43200 },	-- Gilda Cloudcaller
					["coord"] = { 30.6, 47.0, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = {
						27625,	-- In Defense of Quel'Danil
						27626,	-- The Highvale Documents
					},
					["groups"] = {
						i(59260),	-- Shadraspawn Mantle
						i(59262),	-- Cloudcaller Leggings
						i(59263),	-- Belt of the Scattering Wind
						i(59264),	-- Legguards of Caution
						i(131570),	-- Cloudcaller Greaves
						i(131571),	-- Cinch of the Scattering Wind
					},
				}),
				q(26382, {	-- Can't Make An Omelette Without... (H)
					["provider"] = { "n", 42896 },	-- Apothecary Surlis
					["coord"] = { 31.8, 58.5, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(59298),	-- Surlis' Mantle
						i(59299),	-- Apothecary Leggings
						i(59300),	-- Shadraspawn Belt
						i(59301),	-- Legguards of Caution
						i(131519),	-- Apothecary Chain Pants
						i(131520),	-- Shadraspawn Waistguard
					},
				}),
				q(7844, {	-- Cannibalistic Cousins
					["u"] = REMOVED_FROM_GAME,
					["races"] = HORDE_ONLY,
					["provider"] = { "n", 14739 },	-- Mystic Yayo'jin
				}),
				q(26384, {	-- Darkcleric Marnal
					["provider"] = { "n", 42622 },	-- Eliza Darkgrin
					["coord"] = { 67.6, 66.6, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 26369 },	-- Hunt the Keeper
				}),
				q(26524, {	-- Dark Vessels (A)
					["provider"] = { "n", 43156 },	-- Fraggar Thundermantle
					["coord"] = { 63.7, 59.9, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 26523 },	-- All That Skitters
					["groups"] = {
						i(59252),	-- Sandals of Tainted Blood
						i(59253, {	-- Sandrene's Invisible Vest
							["description"] = "You will not be able to transmog this item.",
						}),
						i(59254),	-- Spider Venom Leggings
						i(59255),	-- Dark Vessel Breastplate
						i(131544, {	-- Sandrene's Invisible Hauberk
							["description"] = "You will not be able to transmog this item.",
						}),
						i(59253),	-- Sandrene's Invisible Vest
						i(131545),	-- Spider Venom Legguards
					},
				}),
				q(7850, {	-- Dark Vessels (H Legacy)
					["u"] = REMOVED_FROM_GAME,
					["races"] = HORDE_ONLY,
					["groups"] = {
						un(REMOVED_FROM_GAME, i(19118)),	-- Nature's Breath
					},
				}),
				q(26309, {	-- Dark Vessels (H)
					["provider"] = { "n", 42622 },	-- Eliza Darkgrin
					["coord"] = { 67.6, 66.6, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 26310 },	-- All That Skitters
					["groups"] = {
						i(59294),	-- Sandals of Tainted Blood
						i(59295, {	-- Sandrene's Invisible Vest
							["description"] = "You will not be able to transmog this item.",
						}),
						i(59296),	-- Spider Venom Leggings
						i(59297),	-- Dark Vessel Breastplate
						i(131510, {	-- Sandrene's Invisible Hauberk
							["description"] = "You will not be able to transmog this item.",
						}),
						i(59253),	-- Sandrene's Invisible Vest
						i(131511),	-- Spider Venom Legguards
					},
				}),
				q(26498, {	-- Death to the Vilebranch (A)
					["provider"] = { "n", 43157 },	-- Doran Steelwing
					["coord"] = { 63.8, 59.8, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 26497 },	-- Vilebranch Scum
				}),
				q(26307, {	-- Death to the Vilebranch (H)
					["provider"] = { "n", 42642 },	-- Death to the Vilebranch
					["coord"] = { 67.8, 66.5, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 26306 },	-- Start Taking Back
				}),
				q(26496, {	-- Down with the Vilebranch
					["provider"] = { "n", 43108 },	-- Kerr Ironsight
					["coord"] = { 66.3, 44.2, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["sourceQuests"] = {
						26491,	-- Skulk Rock Clean-Up
						26492,	-- Skulk Rock Supplies
					},
				}),
				q(26521, {	-- Faces of Evil (A)
					["provider"] = { "n", 43156 },	-- Fraggar Thundermantle
					["coord"] = { 63.7, 59.9, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(59249),	-- Vile Branch
						i(59251),	-- Jintha'Alor Bracers
					},
				}),
				q(26522, {	-- Faces of Evil (duplicate, NYI)
					["u"] = NEVER_IMPLEMENTED,
				}),
				q(26357, {	-- Faces of Evil (H)
					["provider"] = { "n", 42624 },	-- Kotonga
					["coord"] = { 67.7, 66.2, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(59288),	-- Vile Branch
						i(59290),	-- Jintha'Alor Axe
					},
				}),
				q(485, {	-- Find OOX-09/HL!
					["provider"] = { "i", 8704 },	-- OOX-09/HL Distress Beacon
					["description"] = "The item that starts this quest drops from any mob in The Hinterlands.",
				}),
				q(7816, {	-- Gammerita, Mon!
					["u"] = REMOVED_FROM_GAME,
					["races"] = HORDE_ONLY,
					["provider"] = { "n", 14740 },	-- Katoom the Angler
				}),
				q(26210, {	-- Gammerita, Mon!
					["provider"] = { "n", 14740 },	-- Katoom the Angler
					["coord"] = { 80.3, 81.5, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(59274),	-- Katoom's Mask
						i(59275),	-- Stomachache Belt
						i(59276),	-- Snapjaw Bracers
						i(131495),	-- Stomachache Cinch
					},
				}),
				q(26483, {	-- Gan'dranda
					["provider"] = { "n", 43108 },	-- Kerr Ironsight
					["coord"] = { 66.3, 44.2, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(59242),	-- Ironsight Crossbow
						i(59243),	-- Theresa's Bracers
						i(59244),	-- Stormfeather Boots
						i(59245),	-- Head Kickers
						i(131536),	-- Stormfeather Treads
					},
				}),
				q(26527, {	-- Gryphon Master Talonaxe
					["u"] = NEVER_IMPLEMENTED,
				}),
				q(26518, {	-- Heads Up (A)
					["provider"] = { "n", 43157 },	-- Doran Steelwing
					["coord"] = { 63.8, 59.8, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26366, {	-- Heads Up (H)
					["provider"] = { "n", 42642 },	-- Primal Torntusk
					["coord"] = { 67.8, 66.5, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
				}),
				q(26526, {	-- Hunt the Keeper (A)
					["provider"] = { "n", 43156 },	-- Fraggar Thundermantle
					["coord"] = { 63.8, 59.9, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 26517 },	-- Summit of Fate
					["groups"] = {
						i(59256),	-- Unkeeper Blade
						i(59257),	-- Leggings of Secret Rituals
						i(59258),	-- Gloves of Strange Words
						i(59259),	-- Tablet-Bearer's Pauldrons
						i(131546),	-- Gauntlets of Strange Words
						i(156945),	-- Talon Hatchet
					},
				}),
				q(26369, {	-- Hunt the Keeper (H)
					["provider"] = { "n", 42642 },	-- Primal Torntusk
					["coord"] = { 67.8, 66.5, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 26363 },	-- Summit of Fate
					["groups"] = {
						i(59284),	-- Unkeeper Blade
						i(59285),	-- Leggings of Secret Rituals
						i(59286),	-- Gloves of Strange Words
						i(59287),	-- Tablet-Bearer's Pauldrons
						i(131518),	-- Gauntlets of Strange Words
						i(156945),	-- Talon Hatchet
					},
				}),
				q(7829, {	-- Hunt the Savages
					["u"] = REMOVED_FROM_GAME,
					["races"] = HORDE_ONLY,
					["provider"] = { "n", 14741 },	-- Huntsman Markhor
				}),
				q(26224, {	-- Hunt the Savages
					["provider"] = { "n", 14741 },	-- Huntsman Markhor
					["coord"] = { 79.1, 79.5, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 26223 },	-- Stalking the Stalkers
				}),
				q(27625, {	-- In Defense of Quel'Danil
					["provider"] = { "n", 46475 },	-- Anchorite Traska
					["coord"] = { 32.1, 42.5, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 27725 },	-- Quel'Danil Lodge
				}),
				q(26516, {	-- It's Ours Now (A)
					["provider"] = { "n", 43157 },	-- Doran Steelwing
					["coord"] = { 63.8, 59.8, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 26498 },	-- Death to the Vilebranch
					["groups"] = {
						i(59246),	-- Blood Drinker Staff
						i(59247),	-- Soul Eater Shoulderguard
						i(131542),	-- Soul Eater Pauldrons
					},
				}),
				q(26308, {	-- It's Ours Now (H)
					["provider"] = { "n", 42642 },	-- Primal Torntusk
					["coord"] = { 67.8, 66.5, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 26307 },	-- Death to the Vilebranch
					["groups"] = {
						i(59291),	-- Blood Drinker Staff
						i(59292),	-- Soul Eater Shoulderguard
						i(131509),	-- Soul Eater Pauldrons
					},
				}),
				q(7862, {	-- Job Opening: Guard Captain of Revantusk Village
					["u"] = REMOVED_FROM_GAME,
					["races"] = HORDE_ONLY,
					["groups"] = {
						un(REMOVED_FROM_GAME, i(19120)),	-- Rune of the Guard Captain
					},
				}),
				q(7845, {	-- Kidnapped Elder Torntusk!
					["u"] = REMOVED_FROM_GAME,
					["races"] = HORDE_ONLY,
					["provider"] = { "n", 14736 },	-- Primal Torntusk
				}),
				q(7840, {	-- Lard Lost His Lunch
					["u"] = REMOVED_FROM_GAME,
					["races"] = HORDE_ONLY,
					["provider"] = { "n", 14731 },	-- Lard
				}),
				q(26212, {	-- Lard Lost His Lunch
					["provider"] = { "n", 14731 },	-- Lard
					["coord"] = { 78.1, 81.3, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(19035, {	-- Lard's Special Picnic Basket
							["description"] = "These items have a small chance of dropping from this box.",
							["groups"] = {
								i(3871),	-- Plans: Golden Scale Shoulders
								i(6044),	-- Plans: Iron Shield Spike
							},
						}),
					},
				}),
				q(7841, {	-- Message to the Wildhammer
					["u"] = REMOVED_FROM_GAME,
					["races"] = HORDE_ONLY,
					["provider"] = { "n", 14738 },	-- Otho Moji'ko
				}),
				q(26515, {	-- Ongo'longo's Revenge (A)
					["provider"] = { "n", 43157 },	-- Doran Steelwing
					["coord"] = { 63.8, 59.8, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = {
						26498,	-- Death to the Vilebranch (A)
						26518,	-- Heads Up (A)
					},
				}),
				q(26367, {	-- Ongo'longo's Revenge (H)
					["provider"] = { "n", 42642 },	-- Primal Torntusk
					["coord"] = { 67.8, 66.5, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						26307,	-- Death to the Vilebranch (H)
						26366,	-- Heads Up (H)
					},
				}),
				q(26548, {	-- Out to the Front
					["provider"] = { "n", 5636 },	-- Gryphon Master Talonaxe
					["coord"] = { 9.8, 44.2, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = {
						26547,	-- A Mangy Threat
						26546,	-- Razorbeak Friends
					},
				}),
				q(26490, {	-- Prime Slime (A)
					["provider"] = { "n", 43109 },	-- Dron Blastbrew
					["coord"] = { 66.2, 44.2, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = {
						26483,	-- Gan'dranda
						26462,	-- The Wicked Revantusk
					},
					["groups"] = {
						i(59239),	-- Wand of Oomph
						i(59240),	-- Blastbrew Hat
						i(59241),	-- Direglob-Slimed Belt
						i(131537),	-- Blastbrew Headgear
						i(156946),	-- Goopy Mallet
					},
				}),
				q(26283, {	-- Prime Slime (H)
					["provider"] = { "n", 42612 },	-- Malcolm Fendelson
					["coord"] = { 78.1, 81.3, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						26238,	-- The Savage Dwarves
						26263,	-- Thornar Thunderclash
					},
					["groups"] = {
						i(59277),	-- Research Assistant's Wand
						i(59278),	-- Slime Hunter Headguard
						i(59279),	-- Skulk Rock Belt
						i(131501),	-- Slime Hunter Headgear
						i(156946),	-- Goopy Mallet
					},
				}),
				q(26225, {	-- Pupellyverbos Port
					["provider"] = { "n", 42464 },	-- Grognard
					["coord"] = { 77.3, 79.9, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
				}),
				q(27725, {	-- Quel'Danil Lodge
					["provider"] = { "n", 46476 },	-- Tracker Yoro
					["coord"] = { 63.9, 59.8, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 26526 },	-- Hunt the Keeper
				}),
				q(26546, {	-- Razorbeak Friends
					["provider"] = { "n", 5636 },	-- Gryphon Master Talonaxe
					["coord"] = { 9.9, 44.2, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(59236),	-- Gryphon-Down Scarf
						i(59237),	-- Gryphon Master's Belt
						i(59238),	-- Talon Axe
						i(131553),	-- Gryphon Master's Chain
                        i(59235),	-- Razorbeak Amulet
					},
				}),
				q(7846, {	-- Recover the Key!
					["u"] = REMOVED_FROM_GAME,
					["races"] = HORDE_ONLY,
					["provider"] = { "n", 14757 },	-- Elder Torntusk
					["sourceQuest"] = 7845,	-- Kidnapped Elder Torntusk!
				}),
				q(836, {	-- Rescue OOX-09/HL!
					["provider"] = { "n", 7806 },	-- Homing Robot OOX-09/HL
					["coord"] = { 49.4, 37.7, THE_HINTERLANDS },
					["sourceQuest"] = 485,	-- Find OOX-09/HL!
					["groups"] = {
						i(9645),	-- Gnomish Inventor Boots
						i(9646),	-- Gnomish Water Sinking Device
					},
				}),
				q(7847, {	-- Return to Primal Torntusk
					["u"] = REMOVED_FROM_GAME,
					["races"] = HORDE_ONLY,
					["groups"] = {
						un(REMOVED_FROM_GAME, i(19115)),	-- Flask of Forest Mojo
						un(REMOVED_FROM_GAME, i(19114)),	-- Highland Bow
					},
				}),
				q(2742, {	-- Rin'ji is Trapped!
					["u"] = REMOVED_FROM_GAME,
					["races"] = HORDE_ONLY,
					["provider"] = { "n", 7780 },	-- Rin'ji
				}),
				q(2782, {	-- Rin'ji's Secret
					["u"] = REMOVED_FROM_GAME,
					["races"] = HORDE_ONLY,
					["provider"] = { "o", 142127 },	-- Rin'ji's Secret
					["sourceQuest"] = 2742,	-- Rin'ji is Trapped!
				}),
				q(81, {	-- Ripple Discovery
					["u"] = REMOVED_FROM_GAME,
					["races"] = HORDE_ONLY,
					["provider"] = { "n", 7801 },	-- Gilveradin Sunchaser
				}),
				q(2994, {	-- Saving Sharpbeak
					["u"] = REMOVED_FROM_GAME,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						un(REMOVED_FROM_GAME, i(9652)),	-- Gryphon Rider's Leggings
						un(REMOVED_FROM_GAME, i(9651)),	-- Gryphon Rider's Stormhammer
					},
				}),
				q(7849, {	-- Separation Anxiety
					["u"] = REMOVED_FROM_GAME,
					["races"] = HORDE_ONLY,
					["groups"] = {
						un(REMOVED_FROM_GAME, i(19116)),	-- Greenleaf Handwraps
						un(REMOVED_FROM_GAME, i(19117)),	-- Laquered Wooden Plate Legplates
					},
				}),
				q(26532, {	-- Shadra the Venom Queen (A)
					["provider"] = { "n", 43298 },	-- Wildhammer Lookout
					["coord"] = { 34.3, 67.7, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 26531 },	-- Summoning Shadra
					["groups"] = {
						i(59269),	-- Veil of Aerie Peak
						i(59270),	-- Headguard of Aerie Peak
						i(59271),	-- Headcover of Aerie Peak
						i(59272),	-- Helm of Aerie Peak
						i(131549),	-- Aerie Headgear
						i(131550),	-- Aerie War Cap
					},
				}),
				q(26419, {	-- Shadra the Venom Queen (H)
					["provider"] = { "n", 43299 },	-- Deathstalker Lookout
					["coord"] = { 35.6, 68.4, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 26558 },	-- Summoning Shadra
					["groups"] = {
						i(59306),	-- Darkcleric's Veil
						i(59307),	-- Virulent Headguard
						i(59308),	-- Venomous Headcover
						i(59309),	-- Poisoner's Helm
						i(131526),	-- Virulent Headpiece
						i(131527),	-- Venomous Headgear
					},
				}),
				q(26491, {	-- Skulk Rock Clean-Up (A)
					["provider"] = { "n", 43108 },	-- Kerr Ironsight
					["coord"] = { 66.3, 44.2, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = {
						26483,	-- Gan'dranda
						26462,	-- The Wicked Revantusk
					},
				}),
				q(26267, {	-- Skulk Rock Clean-Up (H)
					["provider"] = { "n", 42613 },	-- Elder Torntusk
					["coord"] = { 78.1, 81.3, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						26238,	-- The Savage Dwarves
						26263,	-- Thornar Thunderclash
					},
				}),
				q(26492, {	-- Skulk Rock Supplies (A)
					["provider"] = { "n", 43108 },	-- Kerr Ironsight
					["coord"] = { 66.3, 44.2, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = {
						26483,	-- Gan'dranda
						26462,	-- The Wicked Revantusk
					},
				}),
				q(26268, {	-- Skulk Rock Supplies (H)
					["provider"] = { "n", 42613 },	-- Elder Torntusk
					["coord"] = { 78.1, 81.3, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						26238,	-- The Savage Dwarves
						26263,	-- Thornar Thunderclash
					},
				}),
				q(26485, {	-- Snapjaws, Lad!
					["provider"] = { "n", 43109 },	-- Dron Blastbrew
					["coord"] = { 66.2, 44.2, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(19022),	-- Nat Pagle's Extreme Angler FC-5000
					},
				}),
				q(7815, {	-- Snapjaws, Mon!
					["u"] = REMOVED_FROM_GAME,
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(19022),	-- Nat Pagle's Extreme Angler FC-5000 NOTE: Now available from quests 26485 & 26211
					},
				}),
				q(26211, {	-- Snapjaws, Mon!
					["provider"] = { "n", 14740 },	-- Katoom the Angler
					["coord"] = { 80.3, 81.5, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(19022),	-- Nat Pagle's Extreme Angler FC-5000
					},
				}),
				q(7828, {	-- Stalking the Stalkers
					["u"] = REMOVED_FROM_GAME,
					["races"] = HORDE_ONLY,
					["provider"] = { "n", 14741 },	-- Huntsman Markhor
				}),
				q(26223, {	-- Stalking the Stalkers
					["provider"] = { "n", 14741 },	-- Huntsman Markhor
					["coord"] = { 79.1, 79.5, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
				}),
				q(26306, {	-- Start Taking Back
					["provider"] = { "n", 42642 },	-- Primal Torntusk
					["coord"] = { 67.8, 66.5, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 26432 },	-- The Fall of Jintha'Alor
				}),
				q(26643, {	-- Starvation Diet (A)
					["provider"] = { "n", 43200 },	-- Gilda Cloudcaller
					["coord"] = { 30.6, 47.0, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 26641 },	-- Can't Make an Omelette Without...
				}),
				q(26387, {	-- Starvation Diet (H)
					["provider"] = { "n", 42896 },	-- Apothecary Surlis
					["coord"] = { 31.8, 58.5, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 26382 },	-- Can't Make an Omelette Without...
				}),
				q(26240, {	-- Stomp To My Beat
					["provider"] = { "n", 14739 },	-- Mystic Yayo'jin
					["coord"] = { 78.8, 78.2, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
				}),
				q(26517, {	-- Summit of Fate (A)
					["provider"] = { "n", 43156 },	-- Fraggar Thundermantle
					["coord"] = { 63.7, 59.9, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = {
						26498,	-- Death to the Vilebranch
						26515,	-- Ongo'longo's Revenge
					},
				}),
				q(26363, {	-- Summit of Fate (H)
					["provider"] = { "n", 42642 },	-- Primal Torntusk
					["coord"] = { 67.8, 66.5, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						26308,	-- It's Ours Now
						26367,	-- Ongo'longo's Revenge
					},
				}),
				q(26531, {	-- Summoning Shadra (A)
					["provider"] = { "n", 43200 },	-- Gilda Cloudcaller
					["coord"] = { 30.6, 47.0, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 26530 },	-- The Shell of Shadra
				}),
				q(26558, {	-- Summoning Shadra (H)
					["provider"] = { "n", 42898 },	-- Darkcleric Marnal
					["coord"] = { 31.8, 58.3, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 26418 },	-- The Shell of Shadra
				}),
				q(28505, {	-- The Battle for Andorhal (A)
					["provider"] = { "n", 5636 },	-- Gryphon Master Talonaxe
					["coord"] = { 9.9, 44.2, THE_HINTERLANDS },
					["lvl"] = 35,
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(28508, {	-- The Battle for Andorhal (H)
					["provider"] = { "n", 42898 },	-- Darkcleric Marnal
					["coord"] = { 31.8, 58.3, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
					["isBreadcrumb"] = true,
				}),
				q(26528, {	-- The Eye of Shadra (A)
					["provider"] = { "n", 43200 },	-- Gilda Cloudcaller
					["coord"] = { 30.6, 47.0, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = {
						27625,	-- In Defense of Quel'Danil
						27626,	-- The Highvale Documents
					},
				}),
				q(26381, {	-- The Eye of Shadra (H)
					["provider"] = { "n", 42898 },	-- Darkcleric Marnal
					["coord"] = { 31.8, 58.3, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
				}),
				q(26432, {	-- The Fall of Jintha'Alor
					["provider"] = { "n", 42613 },	-- Elder Torntusk
					["coord"] = { 78.1, 81.3, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["sourceQuests"] = {
						26267,	-- Skulk Rock Clean-Up
						26268,	-- Skulk Rock Supplies
					},
				}),
				q(26529, {	-- The Fang of Shadra (A)
					["provider"] = { "n", 43200 },	-- Gilda Cloudcaller
					["coord"] = { 30.6, 47.0, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 26528 },	-- The Eye of Shadra
				}),
				q(26406, {	-- The Fang of Shadra (H)
					["provider"] = { "n", 42898 },	-- Darkcleric Marnal
					["coord"] = { 31.8, 58.3, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 26381 },	-- The Eye of Shadra
				}),
				q(26282, {	-- The Favor of Akil'darah
					["u"] = NEVER_IMPLEMENTED,
				}),
				q(7843, {	-- The Final Message to the Wildhammer
					["u"] = REMOVED_FROM_GAME,
					["races"] = HORDE_ONLY,
					["groups"] = {
						un(REMOVED_FROM_GAME, i(19119)),	-- Owlbeast Hide Gloves
					},
				}),
				q(27626, {	-- The Highvale Documents
					["provider"] = { "n", 46475 },	-- Anchorite Traska
					["coord"] = { 32.1, 42.5, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 27725 },	-- Quel'Danil Lodge
				}),
				q(26238, {	-- The Savage Dwarves
					["provider"] = { "n", 42613 },	-- Elder Torntusk
					["coord"] = { 78.1, 81.3, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 28574 },	-- Warchief's Command: The Hinterlands!
				}),
				q(26530, {	-- The Shell of Shadra (A)
					["provider"] = { "n", 43200 },	-- Gilda Cloudcaller
					["coord"] = { 30.6, 47.0, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 26529 },	-- The Fang of Shadra
					["groups"] = {
						i(59265),	-- Gown of the Last Priestess
						i(59266),	-- Gwenyth's Bracers
						i(59267),	-- Gloves of Fanatical Zealotry
						i(59268),	-- Greathammer of the Hinterlands
						i(131547),	-- Gwenyth's Wristguards
						i(131548),	-- Grips of Fanatical Zealotry
					},
				}),
				q(26418, {	-- The Shell of Shadra (H)
					["provider"] = { "n", 42898 },	-- Darkcleric Marnal
					["coord"] = { 31.8, 58.3, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 26406 },	-- The Fang of Shadra
					["groups"] = {
						i(59302),	-- Gown of the Last Priestess
						i(59303),	-- Gwenyth's Bracers
						i(59304),	-- Gloves of Fanatical Zealotry
						i(59305),	-- Greataxe of the Hinterlands
						i(131524),	-- Gwenyth's Wristguards
						i(131525),	-- Grips of Fanatical Zealotry
					},
				}),
				q(26462, {	-- The Wicked Revantusk
					["provider"] = { "n", 43108 },	-- Kerr Ironsight
					["coord"] = { 66.3, 44.2, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26263, {	-- Thornar Thunderclash
					["provider"] = { "n", 42613 },	-- Elder Torntusk
					["coord"] = { 78.1, 81.3, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(59280),	-- Voice Stealer
						i(59281),	-- Elder's Wristwraps
						i(59282),	-- Encroaching Treads
						i(59283),	-- Revantusk Boots
						i(131498),	-- Encroaching Boots
					},
				}),
				q(2933, {	-- Venom Bottles
					["u"] = REMOVED_FROM_GAME,
					["races"] = HORDE_ONLY,
					["provider"] = { "o", 142702 },	-- Venom Bottle
				}),
				q(26525, {	-- Venomous Secrets (A)
					["provider"] = { "n", 43156 },	-- Fraggar Thundermantle
					["coord"] = { 63.7, 59.9, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 26517 },	-- Summit of Fate
				}),
				q(26368, {	-- Venomous Secrets (H)
					["provider"] = { "n", 42622 },	-- Eliza Darkgrin
					["coord"] = { 67.6, 66.6, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 26309 },	-- Dark Vessels
				}),
				q(7839, {	-- Vilebranch Hooligans
					["u"] = REMOVED_FROM_GAME,
					["races"] = HORDE_ONLY,
					["provider"] = { "n", 14737 },	-- Smith Slagtree
				}),
				q(26497, {	-- Vilebranch Scum
					["provider"] = { "n", 43157 },	-- Doran Steelwing
					["coord"] = { 63.8, 59.8, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 26496 },	-- Down with the Vilebranch
				}),
				q(7861, {	-- Wanted: Vile Priestess Hexx and Her Minions
					["u"] = REMOVED_FROM_GAME,
					["races"] = HORDE_ONLY,
					["groups"] = {
						un(REMOVED_FROM_GAME, i(19121)),	-- Deep Woodlands Cloak
						un(REMOVED_FROM_GAME, i(19159)),	-- Woven Ivy Necklace
					},
				}),
			}),
			n(RARES, {
				n(8215, {	-- Grimungous
					["coords"] = {
						{ 71.6, 62.6, THE_HINTERLANDS },
						{ 73.8, 55.8, THE_HINTERLANDS },
						{ 78.6, 50.8, THE_HINTERLANDS },
					},
				}),
				n(8213, {	-- Ironback
					["coords"] = {
						{ 80.2, 58.2, THE_HINTERLANDS },
						{ 81.0, 55.4, THE_HINTERLANDS },
						{ 79.4, 56.6, THE_HINTERLANDS },
					},
				}),
				n(8214, {	-- Jalinde Summerdrake
					["coord"] = { 34.6, 55.2, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
				}),
				n(8217, {	-- Mith'rethis the Enchanter
					["coord"] = { 64.8, 81.6, THE_HINTERLANDS },
					["groups"] = {
						i(17050),	-- Chan's Imperial Robes
					},
				}),
				n(8211, {	-- Old Cliff Jumper
					["coord"] = { 13.6, 53.8, THE_HINTERLANDS },
				}),
				n(107617, {	-- Ol' Muddle
					["description"] = "This rare wanders the eastern portion of the zone, coords provide general areas to look for this rare.",
					["coords"] = {
						{ 44.4, 64.6, THE_HINTERLANDS },
						{ 44.0, 59.6, THE_HINTERLANDS },
						{ 44.6, 53.6, THE_HINTERLANDS },
						{ 49.8, 57.2, THE_HINTERLANDS },
						{ 52.4, 51.0, THE_HINTERLANDS },
						{ 54.8, 46.2, THE_HINTERLANDS },
						{ 61.0, 50.4, THE_HINTERLANDS },
						{ 64.6, 42.0, THE_HINTERLANDS },
						{ 70.2, 51.2, THE_HINTERLANDS },
						{ 72.8, 50.0, THE_HINTERLANDS },
						{ 76.8, 49.8, THE_HINTERLANDS },
						{ 67.8, 57.4, THE_HINTERLANDS },
						{ 64.0, 54.6, THE_HINTERLANDS },
					},
				}),
				n(8210, {	-- Razortalon
					["coord"] = { 66.2, 53.6, THE_HINTERLANDS },
				}),
				n(8216, {	-- Retherokk the Berserker
					["coords"] = {
						{ 47.6, 66.4, THE_HINTERLANDS },
						{ 48.6, 68.4, THE_HINTERLANDS },
					},
				}),
				n(8212, {	-- The Reak
					["coord"] = { 57.5, 42.6, THE_HINTERLANDS },
				}),
				n(8218, {	-- Witherheart the Stalker
					["coord"] = { 39.8, 66.6, THE_HINTERLANDS },
				}),
				n(8219, {	-- Zul'arek Hatefowler
					["coord"] = { 24.8, 65.6, THE_HINTERLANDS },
				}),
			}),
			n(VENDORS, {
				n(12040, {	-- Brannik Ironbelly <Armorsmith>
					["coord"] = { 66.6, 44.2, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12257, {	-- Heavy Notched Belt
							["isLimited"] = true,
						}),
						i(12258, {	-- Serpent Clasp Belt
							["isLimited"] = true,
						}),
					},
				}),
				n(12958, {	-- Gigget Zipcoil <Trade Supplies>
					["coord"] = { 34.4, 38.6, THE_HINTERLANDS },
					["groups"] = {
						i(15735, {	-- Pattern: Ironfeather Shoulders
							["isLimited"] = true,
						}),
					},
				}),
				n(8161, {	-- Harggan <Blacksmithing Supplies>
					["coord"] = { 13.5, 45.0, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(7995, {	-- Plans: Mithril Scale Bracers
							["isLimited"] = true,
						}),
					},
				}),
				n(14738, {	-- Otho Moji'ko <Cooking Supplies>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight
						i(21099),	-- Recipe: Smoked Sagefish
					},
				}),
				n(8160, {	-- Nioma <Leatherworking Supplies>
					["coord"] = { 13.3, 43.4, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8409, {	-- Pattern: Nightscape Shoulders
							["isLimited"] = true,
						}),
					},
				}),
				n(2688, {	-- Ruppo Zipcoil <Engineering Supplies>
					["coord"] = { 34.33, 37.77, THE_HINTERLANDS },
					["groups"] = {
						i(10609, {	-- Schematic: Mithril Mechanical Dragonling
							["isLimited"] = true,
						}),
					},
				}),
				n(4782, {	-- Truk Wildbeard <Bartender>
					["coord"] = { 14.4, 42.3, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(18046),	-- Recipe: Tender Wolf Steak
					},
				}),
			}),
			-- #if AFTER 3.0.8
			n(SPECIAL, {
				i(9240, {	-- Mallet of Zul'Farrak
					["description"] = "The Sacred Mallet drops from Qiaga the Keeper on top of the Altar of Zul in Hinterlands. You then bring it to the top of Jintha'alor and use it near the altar to turn into the Mallet of Zul'Farrak so you can summon Gahz'rilla in Zul'Farrak.",
					["coord"] = { 59.0, 79.6, THE_HINTERLANDS },
					["timeline"] = { "removed 4.0.3" },
					["cost"] = { { "i", 9241, 1 } },	-- Sacred Mallet
				}),
				i(9241, {	-- Sacred Mallet
					["description"] = "Bring this to the top of Jintha'alor and use it near the altar to turn into the Mallet of Zul'Farrak so you can summon Gahz'rilla in Zul'Farrak.",
					["coord"] = { 49.2, 68.6, THE_HINTERLANDS },
					["timeline"] = { "removed 4.0.3" },
					["cr"] = 7996,	-- Qiaga the Keeper
				}),
			}),
			-- #endif
			n(ZONE_DROPS, {
				n(2644, {	-- Vilebranch Hideskinner
					un(REMOVED_FROM_GAME, i(15760)),	-- Pattern: Ironfeather Breastplate
				}),
				n(2642, {	-- Vilebranch Shadowcaster
					un(REMOVED_FROM_GAME, i(16214)),	-- Formula: Enchant Bracer - Greater Intellect
				}),
			}),
		},
	}),
}));