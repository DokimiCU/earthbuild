----------------------------------------------------------
-- Whitewash
-- Coloring added to surfaces
--historically used for aesthetics, durability, hygiene
-------------------------------------------------
--Note on crafting:
-- made from slaked lime (+ optional additives)
--slaked lime is from quicklime mixed with water
-- quicklime is made by burning limestone
--...and limestone is not currently in the game.
--(but coral is, and limestone rocks could be found in gravel).

--Note on crafting ratios:
--control ratio at cooking stage. More lime rich -> more quicklime.
--wash is spread thin...
--so one block of pure lime (e.g. coral) covers many. 18?
--assume gravel is 1/3rd limestone.

--Note on digging strength:
--cures to limestone (sort of), so give a boost to digging strength
-- {crumbly = 1, cracky = 2}
-- makes it like stone. Gives a reason for making it, other than aesthetics


----------------------------------------------------

---------------------------------------------
--Sourcing The Whitewash itself

--Quicklime
minetest.register_craftitem("earthbuild:quicklime", {
	description = "Quicklime",
	inventory_image = "earthbuild_quicklime.png",
	stack_max = 99,
})

--Whitewash (technically Slaked lime)
minetest.register_craftitem("earthbuild:whitewash", {
	description = "Whitewash",
	inventory_image = "earthbuild_whitewash.png",
	stack_max = 99,
})

----------------
--Cooking to get quicklime

--Cook gravel to give quicklime
minetest.register_craft({
	type = "cooking",
	output = "earthbuild:quicklime 6",
	recipe = "default:gravel",
	cooktime = 3,
})

--Cook coral to give quicklime
minetest.register_craft({
	type = "cooking",
	output = "earthbuild:quicklime 9",
	recipe = "default:coral_skeleton",
	cooktime = 3,
})


----------------------
--Slake the quicklime in water to make whitewash
--with clay pots
minetest.register_craft({
	output = 'earthbuild:whitewash 6',
	recipe = {
		{'earthbuild:quicklime','earthbuild:quicklime','earthbuild:quicklime'},
		{'earthbuild:quicklime','earthbuild:quicklime','earthbuild:quicklime'},
		{'','earthbuild:clay_pot_water',''},
	},
	replacements = {{"earthbuild:clay_pot_water", "earthbuild:clay_pot"}}
})

minetest.register_craft({
	output = 'earthbuild:whitewash 6',
	recipe = {
		{'earthbuild:quicklime','earthbuild:quicklime','earthbuild:quicklime'},
		{'earthbuild:quicklime','earthbuild:quicklime','earthbuild:quicklime'},
		{'','earthbuild:clay_pot_river_water',''},
	},
	replacements = {{"earthbuild:clay_pot_river_water", "earthbuild:clay_pot"}}
})

--with default buckets
minetest.register_craft({
	output = 'earthbuild:whitewash 6',
	recipe = {
		{'earthbuild:quicklime','earthbuild:quicklime','earthbuild:quicklime'},
		{'earthbuild:quicklime','earthbuild:quicklime','earthbuild:quicklime'},
		{'','bucket:bucket_water',''},
	},
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}}
})

minetest.register_craft({
	output = 'earthbuild:whitewash 6',
	recipe = {
		{'earthbuild:quicklime','earthbuild:quicklime','earthbuild:quicklime'},
		{'earthbuild:quicklime','earthbuild:quicklime','earthbuild:quicklime'},
		{'','bucket:bucket_river_water',''},
	},
	replacements = {{"bucket:bucket_river_water", "bucket:bucket_empty"}}
})



--------------------------------------------------------------
--WHITEWASH NODES AND CRAFTS

--------------------------------------
--Wattle and Daub

minetest.register_node('earthbuild:whitewashed_wattle_and_daub', {
	description = 'Whitewashed Wattle and Daub',
	drawtype = "nodebox",
	node_box = {
		type = "connected",
		fixed = {{-1/4, -1/2, -1/4, 1/4, 1/2, 1/4}},
		-- connect_bottom =
		connect_front = {{-1/4, -1/2, -1/2,  1/4, 1/2, -1/4}},
		connect_left = {{-1/2, -1/2, -1/4, -1/4, 1/2,  1/4}},
		connect_back = {{-1/4, -1/2,  1/4,  1/4, 1/2,  1/2}},
		connect_right = {{ 1/4, -1/2, -1/4,  1/2, 1/2,  1/4}},
	},
	connects_to = { "group:crumbly", "group:wood", "group:tree", "group:stone", 'earthbuild:wattle', 'earthbuild:wattle_loose'},
	paramtype = "light",
	tiles = {"earthbuild_whitewashed_earth.png"},
	inventory_image = "earthbuild_whitewashed_earth.png",
	wield_image = "earthbuild_whitewashed_earth.png",
	groups = {crumbly = 1, cracky = 2, choppy = 2},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds whitewashed_wattle_and_daub recipes
minetest.register_craft({
	output = 'earthbuild:whitewashed_wattle_and_daub',
	recipe = {
		{'earthbuild:wattle_and_daub', 'earthbuild:whitewash'},
	}
})



--------------------------------------
-- Mud brick

minetest.register_node('earthbuild:whitewashed_mud_brick', {
	description = 'Whitewashed Mud Brick',
	drawtype = "normal",
	tiles = {"earthbuild_whitewashed_earth.png"},
	paramtype = "light",
	groups = {crumbly = 1, cracky = 2},
	sounds = default.node_sound_dirt_defaults(),
})


-- adds whitewashed_mud_brick recipes
minetest.register_craft({
	output = 'earthbuild:whitewashed_mud_brick',
	recipe = {
		{'earthbuild:mud_brick', 'earthbuild:whitewash'},
	}
})



------------------------------------------
-- Earth (both from cob and rammed earth...as they end up indistinguishable)

minetest.register_node('earthbuild:whitewashed_earth', {
	description = 'Whitewashed Earth',
	drawtype = "normal",
	tiles = {"earthbuild_whitewashed_earth.png"},
	paramtype = "light",
	groups = {crumbly = 1, cracky = 2, falling_node = 1},
	sounds = default.node_sound_dirt_defaults(),
})


-- adds whitewashed_earth recipes

minetest.register_craft({
	output = 'earthbuild:whitewashed_earth',
	recipe = {
		{'earthbuild:cob', 'earthbuild:whitewash'},
	}
})

minetest.register_craft({
	output = 'earthbuild:whitewashed_earth',
	recipe = {
		{'earthbuild:rammed_earth', 'earthbuild:whitewash'},
	}
})




--------------------------------------------
-- Supported Earth Roof

-----------
--  supported earth
minetest.register_node('earthbuild:supported_whitewashed_earth', {
	description = 'Supported Whitewashed Earth',
	drawtype = "normal",
	tiles = {
		"earthbuild_whitewashed_earth.png",
		"default_wood.png",
		"earthbuild_supported_whitewashed_earth.png",
		"earthbuild_supported_whitewashed_earth.png",
		"earthbuild_supported_whitewashed_earth.png",
		"earthbuild_supported_whitewashed_earth.png"
},
	paramtype = "light",
	groups = {crumbly = 1, cracky = 2, choppy = 2, flammable=1},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds supported whitewashed_earth recipes

minetest.register_craft({
	output = 'earthbuild:supported_whitewashed_earth',
	recipe = {
		{'earthbuild:supported_rammed_earth', 'earthbuild:whitewash'},
	}
})


minetest.register_craft({
	output = 'earthbuild:supported_whitewashed_earth',
	recipe = {
		{'earthbuild:supported_cob', 'earthbuild:whitewash'},
	}
})

minetest.register_craft({
	output = 'earthbuild:supported_whitewashed_earth 3',
	recipe = {
		{'earthbuild:whitewashed_earth', 'earthbuild:whitewashed_earth', 'earthbuild:whitewashed_earth'},
		{'default:wood', '', ''},
		{'', '', ''},
	}
})


-----------------------------
--  jungle wood supported earth

minetest.register_node('earthbuild:junglewood_supported_whitewashed_earth', {
	description = 'Jungle Wood Supported Whitewashed Earth',
	drawtype = "normal",
	tiles = {
		"earthbuild_whitewashed_earth.png",
		"default_junglewood.png",
	"earthbuild_junglewood_supported_whitewashed_earth.png",
	"earthbuild_junglewood_supported_whitewashed_earth.png",
	"earthbuild_junglewood_supported_whitewashed_earth.png",
	"earthbuild_junglewood_supported_whitewashed_earth.png"
},
	paramtype = "light",
	groups = {crumbly = 1, cracky = 2, choppy = 2, flammable=1},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds junglewood supported whitewashed_earth recipes

minetest.register_craft({
	output = 'earthbuild:junglewood_supported_whitewashed_earth',
	recipe = {
		{'earthbuild:junglewood_supported_rammed_earth', 'earthbuild:whitewash'},
	}
})


minetest.register_craft({
	output = 'earthbuild:junglewood_supported_whitewashed_earth',
	recipe = {
		{'earthbuild:junglewood_supported_cob', 'earthbuild:whitewash'},
	}
})

minetest.register_craft({
	output = 'earthbuild:junglewood_supported_whitewashed_earth 3',
	recipe = {
		{'earthbuild:whitewashed_earth', 'earthbuild:whitewashed_earth', 'earthbuild:whitewashed_earth'},
		{'default:junglewood', '', ''},
		{'', '', ''},
	}
})


------------------------------------
-- pine wood supported earth

minetest.register_node('earthbuild:pine_wood_supported_whitewashed_earth', {
	description = 'Pine Wood Supported Whitewashed Earth',
	drawtype = "normal",
	tiles = {
		"earthbuild_whitewashed_earth.png",
		"default_pine_wood.png",
	"earthbuild_pine_wood_supported_whitewashed_earth.png",
	"earthbuild_pine_wood_supported_whitewashed_earth.png",
	"earthbuild_pine_wood_supported_whitewashed_earth.png",
	"earthbuild_pine_wood_supported_whitewashed_earth.png"
},
	paramtype = "light",
	groups = {crumbly = 1, cracky = 2, choppy = 2, flammable=1},
	sounds = default.node_sound_dirt_defaults(),
})


-- adds pine wood supported whitewashed_earth recipes

minetest.register_craft({
	output = 'earthbuild:pine_wood_supported_whitewashed_earth',
	recipe = {
		{'earthbuild:pine_wood_supported_rammed_earth', 'earthbuild:whitewash'},
	}
})


minetest.register_craft({
	output = 'earthbuild:pine_wood_supported_whitewashed_earth',
	recipe = {
		{'earthbuild:pine_wood_supported_cob', 'earthbuild:whitewash'},
	}
})

minetest.register_craft({
	output = 'earthbuild:pine_wood_supported_whitewashed_earth 3',
	recipe = {
		{'earthbuild:whitewashed_earth', 'earthbuild:whitewashed_earth', 'earthbuild:whitewashed_earth'},
		{'default:pine_wood', '', ''},
		{'', '', ''},
	}
})


-------------------------------
-- acacia wood supported earth

minetest.register_node('earthbuild:acacia_wood_supported_whitewashed_earth', {
	description = 'Acacia Wood Supported Whitewashed Earth',
	drawtype = "normal",
	tiles = {
		"earthbuild_whitewashed_earth.png",
		"default_acacia_wood.png",
	"earthbuild_acacia_wood_supported_whitewashed_earth.png",
	"earthbuild_acacia_wood_supported_whitewashed_earth.png",
	"earthbuild_acacia_wood_supported_whitewashed_earth.png",
	"earthbuild_acacia_wood_supported_whitewashed_earth.png"
},
	paramtype = "light",
	groups = {crumbly = 1, cracky = 2, choppy = 2, flammable=1},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds acacia wood supported whitewashed_earth recipes

minetest.register_craft({
	output = 'earthbuild:acacia_wood_supported_whitewashed_earth',
	recipe = {
		{'earthbuild:acacia_wood_supported_rammed_earth', 'earthbuild:whitewash'},
	}
})


minetest.register_craft({
	output = 'earthbuild:acacia_wood_supported_whitewashed_earth',
	recipe = {
		{'earthbuild:acacia_wood_supported_cob', 'earthbuild:whitewash'},
	}
})

minetest.register_craft({
	output = 'earthbuild:acacia_wood_supported_whitewashed_earth 3',
	recipe = {
		{'earthbuild:whitewashed_earth', 'earthbuild:whitewashed_earth', 'earthbuild:whitewashed_earth'},
		{'default:acacia_wood', '', ''},
		{'', '', ''},
	}
})

-----------------------------------------------
--  aspen wood supported earth

minetest.register_node('earthbuild:aspen_wood_supported_whitewashed_earth', {
	description = 'Aspen Wood Supported Whitewashed Earth',
	drawtype = "normal",
	tiles = {
		"earthbuild_whitewashed_earth.png",
		"default_aspen_wood.png",
	"earthbuild_aspen_wood_supported_whitewashed_earth.png",
	"earthbuild_aspen_wood_supported_whitewashed_earth.png",
	"earthbuild_aspen_wood_supported_whitewashed_earth.png",
	"earthbuild_aspen_wood_supported_whitewashed_earth.png"
},
	paramtype = "light",
	groups = {crumbly = 1, cracky = 2, choppy = 2, flammable=1},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds aspen wood supported whitewashed_earth recipes

minetest.register_craft({
	output = 'earthbuild:aspen_wood_supported_whitewashed_earth',
	recipe = {
		{'earthbuild:aspen_wood_supported_rammed_earth', 'earthbuild:whitewash'},
	}
})


minetest.register_craft({
	output = 'earthbuild:aspen_wood_supported_whitewashed_earth',
	recipe = {
		{'earthbuild:aspen_wood_supported_cob', 'earthbuild:whitewash'},
	}
})

minetest.register_craft({
	output = 'earthbuild:aspen_wood_supported_whitewashed_earth 3',
	recipe = {
		{'earthbuild:whitewashed_earth', 'earthbuild:whitewashed_earth', 'earthbuild:whitewashed_earth'},
		{'default:aspen_wood', '', ''},
		{'', '', ''},
	}
})



------------------------------------------
--STRAW-BALE
minetest.register_node('earthbuild:whitewashed_strawbale', {
	description = 'Whitewashed Straw-bale Wall',
	drawtype = "normal",
	tiles = {"earthbuild_whitewashed_earth.png"},
	paramtype = "light",
	--drop = "default:dirt",
	groups = {crumbly = 1, snappy = 1, falling_node = 1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_craft({
	output = 'earthbuild:whitewashed_strawbale',
	recipe = {
		{'earthbuild:strawbale', 'earthbuild:whitewash'},
	}
})

----------------------------------------------
--STAIRS and SLABS

-- Stairs and slab for whitewashed_earth
stairs.register_stair_and_slab("whitewashed_earth", "earthbuild:whitewashed_earth",
		{crumbly = 1, cracky = 2, falling_node = 1},
		{"earthbuild_whitewashed_earth.png"},
		"Whitewashed Earth Stair",
		"Whitewashed Earth Slab",
		default.node_sound_dirt_defaults())


-- Stairs and slab for whitewashed_mud_brick
stairs.register_stair_and_slab("whitewashed_mud_brick", "earthbuild:whitewashed_mud_brick",
		{crumbly = 1, cracky = 2},
		{"earthbuild_whitewashed_earth.png"},
		"Whitewashed Earth Stair",
		"Whitewashed Earth Slab",
		default.node_sound_dirt_defaults())
