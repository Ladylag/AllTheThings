---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

_.Zones =
{
	m(NORTHREND, {
		m(GRIZZLY_HILLS, {
			petbattle(filter(BATTLE_PETS, {
				p(647, {	-- Grizzly Squirrel
					["crs"] = { 62818 },	-- Grizzly Squirrel
				}),
				p(534, {	-- Imperial Eagle Chick
					["crs"] = { 62819 },	-- Imperial Eagle Chick
				}),
				p(633, {	-- Mountain Skunk
					["crs"] = { 61677 },	-- Mountain Skunk
				}),
				p(1238, {	-- Unborn Val'kyr
					["crs"] = { 71163 },	-- Unborn Val'kyr
				}),
			})),
		}),
	}),
};
