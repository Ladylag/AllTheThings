---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local SANDWORN_RELIC = 190189;
local CYPHER = 1979;
root("Zones", m(SHADOWLANDS, bubbleDown({ ["timeline"] = { "added 9.2.0" } }, {
	m(ZERETH_MORTIS, {
		n(VENDORS, {
			o(375368, {	-- Creation Catalyst Console
				["coord"] = { 47.4, 88.6, ZERETH_MORTIS },
				["sym"] = {
					{"select", "itemID",
						191010,	-- Dreadful Chest Module
						191014,	-- Dreadful Hand Module
						191005,	-- Dreadful Helm Module
						191018,	-- Dreadful Leg Module
						191006,	-- Dreadful Shoulder Module
						191011,	-- Mystic Chest Module
						191015,	-- Mystic Hand Module
						191002,	-- Mystic Helm Module
						191019,	-- Mystic Leg Module
						191007,	-- Mystic Shoulder Module
						191012,	-- Venerated Chest Module
						191016,	-- Venerated Hand Module
						191003,	-- Venerated Helm Module
						191020,	-- Venerated Leg Module
						191008,	-- Venerated Shoulder Module
						191013,	-- Zenith Chest Module
						191017,	-- Zenith Hand Module
						191004,	-- Zenith Helm Module
						191021,	-- Zenith Leg Module
						191009,	-- Zenith Shoulder Module
					},
				},

			}),
			n(185587, {	-- Elder Rafiq
				["coord"] = { 60.6, 51, ZERETH_MORTIS },
				["g"] = sharedData({ ["modID"] = 28 }, {
					i(188054, {	-- Antecedent Drape
						["cost"] = { { "i", SANDWORN_RELIC, 160 }, },
					}),
					i(188026, {	-- Anthemic Bracers
						["cost"] = { { "i", SANDWORN_RELIC, 160 }, },
					}),
					i(188022, {	-- Anthemic Coif
						["cost"] = { { "i", SANDWORN_RELIC, 300 }, },
					}),
					i(188019, {	-- Anthemic Cuirass
						["cost"] = { { "i", SANDWORN_RELIC, 300 }, },
					}),
					i(188021, {	-- Anthemic Gauntlets
						["cost"] = { { "i", SANDWORN_RELIC, 230 }, },
					}),
					i(188020, {	-- Anthemic Greaves
						["cost"] = { { "i", SANDWORN_RELIC, 230 }, },
					}),
					i(188023, {	-- Anthemic Legguards
						["cost"] = { { "i", SANDWORN_RELIC, 300 }, },
					}),
					i(188025, {	-- Anthemic Links
						["cost"] = { { "i", SANDWORN_RELIC, 160 }, },
					}),
					i(188024, {	-- Anthemic Shoulders
						["cost"] = { { "i", SANDWORN_RELIC, 230 }, },
					}),
					i(188037, {	-- Choral Amice
						["cost"] = { { "i", SANDWORN_RELIC, 230 }, },
					}),
					i(188008, {	-- Choral Handwraps
						["cost"] = { { "i", SANDWORN_RELIC, 230 }, },
					}),
					i(188009, {	-- Choral Hood
						["cost"] = { { "i", SANDWORN_RELIC, 300 }, },
					}),
					i(188010, {	-- Choral Leggings
						["cost"] = { { "i", SANDWORN_RELIC, 300 }, },
					}),
					i(188011, {	-- Choral Sash
						["cost"] = { { "i", SANDWORN_RELIC, 160 }, },
					}),
					i(188007, {	-- Choral Slippers
						["cost"] = { { "i", SANDWORN_RELIC, 230 }, },
					}),
					i(188006, {	-- Choral Vestments
						["cost"] = { { "i", SANDWORN_RELIC, 300 }, },
					}),
					i(188012, {	-- Choral Wraps
						["cost"] = { { "i", SANDWORN_RELIC, 160 }, },
					}),
					i(188028, {	-- Harmonium Breastplate
						["cost"] = { { "i", SANDWORN_RELIC, 300 }, },
					}),
					i(188030, {	-- Harmonium Gauntlets
						["cost"] = { { "i", SANDWORN_RELIC, 230 }, },
					}),
					i(188033, {	-- Harmonium Girdle
						["cost"] = { { "i", SANDWORN_RELIC, 160 }, },
					}),
					i(188027, {	-- Harmonium Helm
						["cost"] = { { "i", SANDWORN_RELIC, 300 }, },
					}),
					i(188031, {	-- Harmonium Legplates
						["cost"] = { { "i", SANDWORN_RELIC, 300 }, },
					}),
					i(188029, {	-- Harmonium Percussive Stompers
						["cost"] = { { "i", SANDWORN_RELIC, 230 }, },
					}),
					i(188032, {	-- Harmonium Spaulders
						["cost"] = { { "i", SANDWORN_RELIC, 230 }, },
					}),
					i(188034, {	-- Harmonium Vambrace
						["cost"] = { { "i", SANDWORN_RELIC, 160 }, },
					}),
					i(188017, {	-- Staccato Belt
						["cost"] = { { "i", SANDWORN_RELIC, 160 }, },
					}),
					i(188013, {	-- Staccato Boots
						["cost"] = { { "i", SANDWORN_RELIC, 230 }, },
					}),
					i(188018, {	-- Staccato Cuffs
						["cost"] = { { "i", SANDWORN_RELIC, 160 }, },
					}),
					i(188014, {	-- Staccato Grips
						["cost"] = { { "i", SANDWORN_RELIC, 230 }, },
					}),
					i(188015, {	-- Staccato Helm
						["cost"] = { { "i", SANDWORN_RELIC, 300 }, },
					}),
					i(188016, {	-- Staccato Leggings
						["cost"] = { { "i", SANDWORN_RELIC, 300 }, },
					}),
					i(188036, {	-- Staccato Mantle
						["cost"] = { { "i", SANDWORN_RELIC, 230 }, },
					}),
					i(188035, {	-- Staccato Vest
						["cost"] = { { "i", SANDWORN_RELIC, 300 }, },
					}),
				}),
			}),
			n(185713, {	-- Hadja
				["coord"] = { 35.2, 65.7, ZERETH_MORTIS },
				["g"] = sharedData({ ["cost"] = { { "c", ANIMA, 500 }, }, }, {
					i(190764, {	-- Broker's Accessory
						["sym"] = {
							{"select", "mapID", ZERETH_MORTIS },	-- Select Zereth Mortis
							{"pop"},								-- Discard the Header and acquire all of their children.
							{"where", "headerID", ZONE_DROPS },		-- Select Zone Drops
							{"pop"},								-- Discard the Header and acquire all of their children.
							{"is", "itemID"},						-- Only Items!
							{"invtype", "INVTYPE_TRINKET" },
						},
					}),
					i(190763, {	-- Broker's Belt
						["sym"] = {
							{"select", "mapID", ZERETH_MORTIS },	-- Select Zereth Mortis
							{"pop"},								-- Discard the Header and acquire all of their children.
							{"where", "headerID", ZONE_DROPS },		-- Select Zone Drops
							{"pop"},								-- Discard the Header and acquire all of their children.
							{"is", "itemID"},						-- Only Items!
							{"invtype", "INVTYPE_WAIST" },
						},
					}),
					i(190762, {	-- Broker's Boots
						["sym"] = {
							{"select", "mapID", ZERETH_MORTIS },	-- Select Zereth Mortis
							{"pop"},								-- Discard the Header and acquire all of their children.
							{"where", "headerID", ZONE_DROPS },		-- Select Zone Drops
							{"pop"},								-- Discard the Header and acquire all of their children.
							{"is", "itemID"},						-- Only Items!
							{"invtype", "INVTYPE_FEET" },
						},
					}),
					i(190761, {	-- Broker's Bracers
						["sym"] = {
							{"select", "mapID", ZERETH_MORTIS },	-- Select Zereth Mortis
							{"pop"},								-- Discard the Header and acquire all of their children.
							{"where", "headerID", ZONE_DROPS },		-- Select Zone Drops
							{"pop"},								-- Discard the Header and acquire all of their children.
							{"is", "itemID"},						-- Only Items!
							{"invtype", "INVTYPE_WRIST" },
						},
					}),
					i(190764, {	-- Broker's Braid
						["sym"] = {
							{"select", "mapID", ZERETH_MORTIS },	-- Select Zereth Mortis
							{"pop"},								-- Discard the Header and acquire all of their children.
							{"where", "headerID", ZONE_DROPS },		-- Select Zone Drops
							{"pop"},								-- Discard the Header and acquire all of their children.
							{"is", "itemID"},						-- Only Items!
							{"invtype", "INVTYPE_NECK" },
						},
					}),
					i(190760, {	-- Broker's Chestpiece
						["sym"] = {
							{"select", "mapID", ZERETH_MORTIS },	-- Select Zereth Mortis
							{"pop"},								-- Discard the Header and acquire all of their children.
							{"where", "headerID", ZONE_DROPS },		-- Select Zone Drops
							{"pop"},								-- Discard the Header and acquire all of their children.
							{"is", "itemID"},						-- Only Items!
							{"invtype", "INVTYPE_CHEST", "INVTYPE_ROBE" },
						},
					}),
					i(190759, {	-- Broker's Cloak
						["sym"] = {
							{"select", "mapID", ZERETH_MORTIS },	-- Select Zereth Mortis
							{"pop"},								-- Discard the Header and acquire all of their children.
							{"where", "headerID", ZONE_DROPS },		-- Select Zone Drops
							{"pop"},								-- Discard the Header and acquire all of their children.
							{"is", "itemID"},						-- Only Items!
							{"invtype", "INVTYPE_CLOAK" },
						},
					}),
					i(190758, {	-- Broker's Gloves
						["sym"] = {
							{"select", "mapID", ZERETH_MORTIS },	-- Select Zereth Mortis
							{"pop"},								-- Discard the Header and acquire all of their children.
							{"where", "headerID", ZONE_DROPS },		-- Select Zone Drops
							{"pop"},								-- Discard the Header and acquire all of their children.
							{"is", "itemID"},						-- Only Items!
							{"invtype", "INVTYPE_HAND" },
						},
					}),
					i(190757, {	-- Broker's Helm
						["sym"] = {
							{"select", "mapID", ZERETH_MORTIS },	-- Select Zereth Mortis
							{"pop"},								-- Discard the Header and acquire all of their children.
							{"where", "headerID", ZONE_DROPS },		-- Select Zone Drops
							{"pop"},								-- Discard the Header and acquire all of their children.
							{"is", "itemID"},						-- Only Items!
							{"invtype", "INVTYPE_HEAD" },
						},
					}),
					i(190756, {	-- Broker's Legguards
						["sym"] = {
							{"select", "mapID", ZERETH_MORTIS },	-- Select Zereth Mortis
							{"pop"},								-- Discard the Header and acquire all of their children.
							{"where", "headerID", ZONE_DROPS },		-- Select Zone Drops
							{"pop"},								-- Discard the Header and acquire all of their children.
							{"is", "itemID"},						-- Only Items!
							{"invtype", "INVTYPE_LEGS" },
						},
					}),
					i(190764, {	-- Broker's Ring
						["sym"] = {
							{"select", "mapID", ZERETH_MORTIS },	-- Select Zereth Mortis
							{"pop"},								-- Discard the Header and acquire all of their children.
							{"where", "headerID", ZONE_DROPS },		-- Select Zone Drops
							{"pop"},								-- Discard the Header and acquire all of their children.
							{"is", "itemID"},						-- Only Items!
							{"invtype", "INVTYPE_FINGER" },
						},
					}),
					i(190755, {	-- Broker's Shoulders
						["sym"] = {
							{"select", "mapID", ZERETH_MORTIS },	-- Select Zereth Mortis
							{"pop"},								-- Discard the Header and acquire all of their children.
							{"where", "headerID", ZONE_DROPS },		-- Select Zone Drops
							{"pop"},								-- Discard the Header and acquire all of their children.
							{"is", "itemID"},						-- Only Items!
							{"invtype", "INVTYPE_SHOULDER" },
						},
					}),
					i(190741, {	-- Broker's Weaponry
						["sym"] = {
							{"select", "mapID", ZERETH_MORTIS },	-- Select Zereth Mortis
							{"pop"},								-- Discard the Header and acquire all of their children.
							{"where", "headerID", ZONE_DROPS },		-- Select Zone Drops
							{"pop"},								-- Discard the Header and acquire all of their children.
							{"is", "itemID"},						-- Only Items!
							{"invtype", "INVTYPE_WEAPON", "INVTYPE_SHIELD", "INVTYPE_RANGED", "INVTYPE_2HWEAPON", "INVTYPE_WEAPONMAINHAND", "INVTYPE_WEAPONOFFHAND", "INVTYPE_HOLDABLE" },
						},
					}),
				}),
			}),
			n(185748, {	-- Mai Toa
				["coord"] = { 58.6, 49.8, ZERETH_MORTIS },
				["g"] = {
					i(190880),	-- Catalyzed Apple Pie
				},
			}),
			n(183962, {	-- Olea Manu
				["description"] = "Only Available after Hanoas Questline",
				["sourceQuests"] = { 65219 },	-- Jiro to Hero
				["coord"] = { 37.2, 44.7, ZERETH_MORTIS },
				["g"] = {
					i(189986, {	-- Armadillo Soul (SOUL!)
						["cost"] = { { "c", CYPHER, 500 }, },
					}),
					i(188793, {	-- Automated Cypher Analysis Tool
						["questID"] = 65282,
						["cost"] = { { "c", CYPHER, 150 }, },
					}),
					i(189980, {	-- Brutosaur Soul (SOUL!)
						["cost"] = { { "c", CYPHER, 1000 }, },
					}),
					i(187824, {	-- Formula: Magically Regulated Automa Core (RECIPE!)
						["recipeID"] = 360007,	-- Magically Regulated Automa Core
						["requireSkill"] = ENCHANTING,
						["cost"] = { { "c", CYPHER, 25 }, },
					}),
					i(190333, {	-- Jiro Circle of Song (TOY!)
						["cost"] = { { "c", CYPHER, 100 }, },
					}),
					i(187781, {	-- Olea Cache
						["cost"] = { { "c", CYPHER, 700 }, },
						["g"] = {
							i(190945),	-- Greatmaul of the Ancient Sentinels
							i(190947),	-- Halo-Stave of the Oracles
						},
					}),
					i(191039, {	-- Pocopoc Traveler
						["cost"] = { { "c", CYPHER, 500 }, },
					}),
					i(187804, {	-- Recipe: Empty Kettle of Stone Soup (RECIPE!)
						["recipeID"] = 359333,	-- Empty Kettle of Stone Soup
						["requireSkill"] = COOKING,
						["cost"] = { { "c", CYPHER, 25 }, },
					}),
				},
			}),
			n(182257, {	-- Vilo
				["coord"] = { 34.8, 64.1, ZERETH_MORTIS },
				["g"] = {
					i(187640),	-- Anointed Protostag (MOUNT!)
					i(190237),	-- Broker Translocation Matrix (TOY!)
					i(190956, {	-- Decanter of Untapped Potential
						--["questID"] = ,
						["cost"] = { { "g", 25000000 } },	-- 2500g
						["sym"] = {
							{"select","tierID",SL_TIER},{"pop"},	-- SL Tier
							{"where","headerID",CONDUITS},{"pop"},	-- grab the main Conduits category (to keep the class grouping)
						},
					}),
					i(190384),	-- Eternal Augment Rune
					i(190640, {	-- Font of Ephemeral Power
						["questID"] = 65694,
						["cost"] = { { "g", 5000000 } },	-- 500g
						["sym"] = {
							{"select","tierID",SL_TIER},{"pop"},	-- SL Tier
							{"where","headerID",CONDUITS},{"pop"},	-- grab the main Conduits category (to keep the class grouping)
						},
					}),
					i(187629),	-- Heartlight Vombata (MOUNT!)
					i(189174),	-- Lens of Focused Intention
					i(187750, {	-- Recipe: Crafter's Mark IV (RECIPE!)
						recipe(359666, {	-- Crafter's Mark IV
							["requireSkill"] = ALCHEMY,
						}),
						recipe(359665, {	-- Crafter's Mark IV
							["requireSkill"] = BLACKSMITHING,
						}),
						recipe(359664, {	-- Crafter's Mark IV
							["requireSkill"] = ENGINEERING,
						}),
						recipe(359663, {	-- Crafter's Mark IV
							["requireSkill"] = JEWELCRAFTING,
						}),
						recipe(359662, {	-- Crafter's Mark IV
							["requireSkill"] = LEATHERWORKING,
						}),
						recipe(359661, {	-- Crafter's Mark IV
							["requireSkill"] = TAILORING,
						}),
					}),
					i(187749, {	-- Recipe: Crafter's Mark of the First Ones (RECIPE!)
						recipe(359673, {	-- Crafter's Mark of the First Ones
							["requireSkill"] = ALCHEMY,
						}),
						recipe(359671, {	-- Crafter's Mark of the First Ones
							["requireSkill"] = BLACKSMITHING,
						}),
						recipe(359674, {	-- Crafter's Mark of the First Ones
							["requireSkill"] = ENGINEERING,
						}),
						recipe(359672, {	-- Crafter's Mark of the First Ones
							["requireSkill"] = JEWELCRAFTING,
						}),
						recipe(359669, {	-- Crafter's Mark of the First Ones
							["requireSkill"] = LEATHERWORKING,
						}),
						recipe(359670, {	-- Crafter's Mark of the First Ones
							["requireSkill"] = TAILORING,
						}),
					}),
					i(190611),	-- Tabard of the Enlightened
					i(187797, {	-- Technique: Contract: The Enlightened (RECIPE!)
						["recipeID"] = 359786,	-- Contract: Enlightened Brokers
						["requireSkill"] = INSCRIPTION,
					}),
					i(190379, {	-- Technique: Glyph of the Spectral Lupine (RECIPE!)
						["recipeID"] = 367389,	-- Glyph of the Spectral Lupine
						["requireSkill"] = INSCRIPTION,
					}),
					-- Memories
					i(190584),	-- Memory of Unity (DK)
					i(190587),	-- Memory of Unity (DH)
					i(190588),	-- Memory of Unity (DRUID)
					i(190589),	-- Memory of Unity (HUNTER)
					i(190590),	-- Memory of Unity (MAGE)
					i(190591),	-- Memory of Unity (MONK)
					i(190592),	-- Memory of Unity (PALADIN)
					i(190593),	-- Memory of Unity (PRIEST)
					i(190594),	-- Memory of Unity (ROGUE)
					i(190595),	-- Memory of Unity (SHAMAN)
					i(190596),	-- Memory of Unity (WARLOCK)
					i(190598),	-- Memory of Unity (WARRIOR)
				},
			}),
		}),
	}),
})));