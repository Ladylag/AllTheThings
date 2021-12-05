-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root("ExpansionFeatures", tier(SL_TIER, bubbleDown({ ["customCollect"] = "SL_COV_NFA" }, {
	n(NIGHT_FAE, {
		n(SANCTUM_UPGRADES, {
			["icon"] = "Interface\\Icons\\Inv_misc_sigil_ardenweald01",
			["g"] = {
				n(COMMAND_TABLE, {
					n(TIER_ONE, {
						["icon"] = "Interface\\Icons\\Sanctum_features_missiontable",
						["g"] = {
							n(QUESTS, {
									q(64459, {	-- Adventurer: Elwyn
									["description"] = "Requires Renown 62.",
									["provider"] = { "n", 164023 },	-- Watcher Vesperbloom
									["coord"] = { 44.7, 56.3, ARDENWEALD },
									["g"] = {
										follower(1338),	-- Elwyn
									},
								}),
								q(61857, {	-- Adventurer: Groonoomcrooek
									["description"] = "Requires Renown 38.",
									["provider"] = { "n", 164023 },	-- Watcher Vesperbloom
									["coord"] = { 44.7, 56.3, ARDENWEALD },
									["g"] = {
										follower(1288),	-- Groonoomcrooek
									},
								}),
								q(61854, {	-- Adventurer: Master Sha'lor
									["description"] = "Requires Renown 17.",
									["provider"] = { "n", 164023 },	-- Watcher Vesperbloom
									["coord"] = { 44.7, 56.3, ARDENWEALD },
									["g"] = {
										follower(1284),	-- Master Sha'lor
									},
								}),
								q(61852, {	-- Adventurer: Guardian Kota
									["description"] = "Requires Renown 4.",
									["provider"] = { "n", 164023 },	-- Watcher Vesperbloom
									["coord"] = { 44.7, 56.3, ARDENWEALD },
									["g"] = {
										follower(1283),	-- Guardian Kota
									},
								}),
								q(61855, {	-- Adventurer: Qadarin
									["description"] = "Requires Renown 27.",
									["provider"] = { "n", 164023 },	-- Watcher Vesperbloom
									["coord"] = { 44.7, 56.3, ARDENWEALD },
									["g"] = {
										follower(1286),	-- Qadarin
									},
								}),
								q(64458, {	-- Adventurer: Sulanoom
									["description"] = "Requires Renown 44.",
									["provider"] = { "n", 164023 },	-- Watcher Vesperbloom
									["coord"] = { 44.7, 56.3, ARDENWEALD },
									["g"] = {
										follower(1337),	-- Sulanoom
									},
								}),
								q(61853, {	-- Adventurer: Te'zan
									["description"] = "Requires Renown 12.",
									["provider"] = { "n", 164023 },	-- Watcher Vesperbloom
									["coord"] = { 44.7, 56.3, ARDENWEALD },
									["g"] = {
										follower(1285),	-- Te'zan
									},
								}),
								q(61856, {	-- Adventurer: Watcher Vesperbloom
									["description"] = "Requires Renown 33.",
									["provider"] = { "n", 164023 },	-- Watcher Vesperbloom
									["coord"] = { 44.7, 56.3, ARDENWEALD },
									["g"] = {
										follower(1287),	-- Watcher Vesperbloom
									},
								}),
								q(64460, {	-- Adventurer: Yanlar
									["description"] = "Requires Renown 71.",
									["provider"] = { "n", 164023 },	-- Watcher Vesperbloom
									["coord"] = { 44.7, 56.3, ARDENWEALD },
									["g"] = {
										follower(1339),	-- Yanlar
									},
								}),
								q(61553, {	-- Know Where to Strike
									["sourceQuests"] = { 61552 },	-- The Hunt Watches
									["provider"] = { "n", 164023 },	-- Watcher Vesperbloom
									["coord"] = { 44.6, 56.2, ARDENWEALD },
								}),
								q(61552, {	-- The Hunt Watches
									["provider"] = { "n", 165702 },	-- Zayhad, The Builder
									["coord"] = { 39.7, 55.7, THE_TRUNK },
								}),
							}),
							n(REWARDS, {
								i(178881),	-- Dutiful Spirit
								i(178880),	-- Greater Dutiful Spirit
								i(178874),	-- Martial Spirit
								i(178877),	-- Greater Martial Spirit
								i(177698),	-- Untamed Spirit
								i(177699),	-- Greater Untamed Spirit
								i(178882),	-- Prideful Spirit
								i(178883),	-- Greater Prideful Spirit
							}),
						},
					}),
				}),
			},
		}),
	}),
})));