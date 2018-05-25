-------------------------------------------------------------
--Do files
-------------------------------------------------------------

dofile(minetest.get_modpath("earthbuild").."/clay_pot.lua")
dofile(minetest.get_modpath("earthbuild").."/bed.lua")


----------------------------------------------------------
--EARTH AND COB NODES AND CRAFTS

-- adds rammed_earth

minetest.register_node('earthbuild:rammed_earth', {
	description = 'Rammed Earth',
	drawtype = "normal",
	tiles = {"earthbuild_rammed_earth.png"},
	paramtype = "light",
	--drop = "default:dirt",
	groups = {crumbly = 2, cracky = 3, falling_node = 1},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds rammed_earth recipes

minetest.register_craft({
	output = 'earthbuild:rammed_earth 1',
	recipe = {
		{'default:dirt'},
		{'default:dirt'},
		{'default:dirt'},
	}
})



-- adds cob

minetest.register_node('earthbuild:cob', {
	description = 'Cob',
	drawtype = "normal",
	tiles = {"earthbuild_cob.png"},
	paramtype = "light",
	--drop = "default:dirt",
	groups = {crumbly = 2, cracky = 3, falling_node = 1},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds cob recipes

minetest.register_craft({
	output = 'earthbuild:cob 2',
	recipe = {
		{'default:dirt', '', 'default:dirt'},
		{'', 'group:grass', ''},
		{'', '', ''},
	}
})




minetest.register_craft({
	output = 'earthbuild:cob 2',
	recipe = {
		{'default:dirt', '', 'default:dirt'},
		{'', 'group:dry_grass', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'earthbuild:cob 2',
	recipe = {
		{'default:dirt', '', 'default:dirt'},
		{'', 'default:junglegrass', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'earthbuild:cob 2',
	recipe = {
		{'default:dirt', '', 'default:dirt'},
		{'', 'default:dry_shrub', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'earthbuild:cob 2',
	recipe = {
		{'default:dirt', '', 'default:dirt'},
		{'', 'default:papyrus', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'earthbuild:cob 2',
	recipe = {
		{'default:dirt', '', 'default:dirt'},
		{'', 'farming:straw', ''},
		{'', '', ''},
	}
})


-----------------------------------------------------------
--EARTH AND COB WOOD SUPPORTED NODES AND CRAFTS

-- adds supported rammed_earth

minetest.register_node('earthbuild:supported_rammed_earth', {
	description = 'Supported Rammed Earth',
	drawtype = "normal",
	tiles = {
		"earthbuild_rammed_earth.png",
		"default_wood.png",
		"earthbuild_supported_rammed_earth.png",
		"earthbuild_supported_rammed_earth.png",
		"earthbuild_supported_rammed_earth.png",
		"earthbuild_supported_rammed_earth.png"
},
	paramtype = "light",
	groups = {crumbly = 2, cracky = 3, choppy = 2, flammable=1},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds supported rammed_earth recipe

minetest.register_craft({
	output = 'earthbuild:supported_rammed_earth 3',
	recipe = {
		{'earthbuild:rammed_earth', 'earthbuild:rammed_earth', 'earthbuild:rammed_earth'},
		{'default:wood', '', ''},
		{'', '', ''},
	}
})


-- adds jungle wood supported rammed_earth

minetest.register_node('earthbuild:junglewood_supported_rammed_earth', {
	description = 'Jungle Wood Supported Rammed Earth',
	drawtype = "normal",
	tiles = {
		"earthbuild_rammed_earth.png",
		"default_junglewood.png",
		"earthbuild_junglewood_supported_rammed_earth.png",
		"earthbuild_junglewood_supported_rammed_earth.png",
		"earthbuild_junglewood_supported_rammed_earth.png",
		"earthbuild_junglewood_supported_rammed_earth.png"
},
	paramtype = "light",
	groups = {crumbly = 2, cracky = 3, choppy = 2, flammable=1},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds jungle wood supported rammed_earth recipe

minetest.register_craft({
	output = 'earthbuild:junglewood_supported_rammed_earth 3',
	recipe = {
		{'earthbuild:rammed_earth', 'earthbuild:rammed_earth', 'earthbuild:rammed_earth'},
		{'default:junglewood', '', ''},
		{'', '', ''},
	}
})


-- adds pine wood supported rammed_earth

minetest.register_node('earthbuild:pine_wood_supported_rammed_earth', {
	description = 'Pine Wood Supported Rammed Earth',
	drawtype = "normal",
	tiles = {
		"earthbuild_rammed_earth.png",
		"default_pine_wood.png",
		"earthbuild_pine_wood_supported_rammed_earth.png",
		"earthbuild_pine_wood_supported_rammed_earth.png",
		"earthbuild_pine_wood_supported_rammed_earth.png",
		"earthbuild_pine_wood_supported_rammed_earth.png"
},
	paramtype = "light",
	groups = {crumbly = 2, cracky = 3, choppy = 2, flammable=1},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds pine wood supported rammed_earth recipe

minetest.register_craft({
	output = 'earthbuild:pine_wood_supported_rammed_earth 3',
	recipe = {
		{'earthbuild:rammed_earth', 'earthbuild:rammed_earth', 'earthbuild:rammed_earth'},
		{'default:pine_wood', '', ''},
		{'', '', ''},
	}
})


-- adds acacia wood supported rammed_earth

minetest.register_node('earthbuild:acacia_wood_supported_rammed_earth', {
	description = 'Acacia Wood Supported Rammed Earth',
	drawtype = "normal",
	tiles = {
		"earthbuild_rammed_earth.png",
		"default_acacia_wood.png",
		"earthbuild_acacia_wood_supported_rammed_earth.png",
		"earthbuild_acacia_wood_supported_rammed_earth.png",
		"earthbuild_acacia_wood_supported_rammed_earth.png",
		"earthbuild_acacia_wood_supported_rammed_earth.png"
},
	paramtype = "light",
	groups = {crumbly = 2, cracky = 3, choppy = 2, flammable=1},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds acacia wood supported rammed_earth recipe

minetest.register_craft({
	output = 'earthbuild:acacia_wood_supported_rammed_earth 3',
	recipe = {
		{'earthbuild:rammed_earth', 'earthbuild:rammed_earth', 'earthbuild:rammed_earth'},
		{'default:acacia_wood', '', ''},
		{'', '', ''},
	}
})


-- adds aspen wood supported rammed_earth

minetest.register_node('earthbuild:aspen_wood_supported_rammed_earth', {
	description = 'Aspen Wood Supported Rammed Earth',
	drawtype = "normal",
	tiles = {
		"earthbuild_rammed_earth.png",
		"default_aspen_wood.png",
		"earthbuild_aspen_wood_supported_rammed_earth.png",
		"earthbuild_aspen_wood_supported_rammed_earth.png",
		"earthbuild_aspen_wood_supported_rammed_earth.png",
		"earthbuild_aspen_wood_supported_rammed_earth.png"
},
	paramtype = "light",
	groups = {crumbly = 2, cracky = 3, choppy = 2, flammable=1},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds aspen wood supported rammed_earth recipe

minetest.register_craft({
	output = 'earthbuild:aspen_wood_supported_rammed_earth 3',
	recipe = {
		{'earthbuild:rammed_earth', 'earthbuild:rammed_earth', 'earthbuild:rammed_earth'},
		{'default:aspen_wood', '', ''},
		{'', '', ''},
	}
})


-- adds supported cob

minetest.register_node('earthbuild:supported_cob', {
	description = 'Supported Cob',
	drawtype = "normal",
	tiles = {
		"earthbuild_cob.png",
		"default_wood.png",
		"earthbuild_supported_cob.png",
		"earthbuild_supported_cob.png",
		"earthbuild_supported_cob.png",
		"earthbuild_supported_cob.png"
},
	paramtype = "light",
	groups = {crumbly = 2, cracky = 3, choppy = 2, flammable=1},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds supported cob recipe

minetest.register_craft({
	output = 'earthbuild:supported_cob 3',
	recipe = {
		{'earthbuild:cob', 'earthbuild:cob', 'earthbuild:cob'},
		{'default:wood', '', ''},
		{'', '', ''},
	}
})


-- adds jungle wood supported cob

minetest.register_node('earthbuild:junglewood_supported_cob', {
	description = 'Jungle Wood Supported Cob',
	drawtype = "normal",
	tiles = {
		"earthbuild_cob.png",
		"default_junglewood.png",
		"earthbuild_junglewood_supported_cob.png",
		"earthbuild_junglewood_supported_cob.png",
		"earthbuild_junglewood_supported_cob.png",
		"earthbuild_junglewood_supported_cob.png"
},
	paramtype = "light",
	groups = {crumbly = 2, cracky = 3, choppy = 2, flammable=1},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds jungle wood supported cob recipe

minetest.register_craft({
	output = 'earthbuild:junglewood_supported_cob 3',
	recipe = {
		{'earthbuild:cob', 'earthbuild:cob', 'earthbuild:cob'},
		{'default:junglewood', '', ''},
		{'', '', ''},
	}
})


-- adds pine wood supported cob

minetest.register_node('earthbuild:pine_wood_supported_cob', {
	description = 'Pine Wood Supported Cob',
	drawtype = "normal",
	tiles = {
		"earthbuild_cob.png",
		"default_pine_wood.png",
		"earthbuild_pine_wood_supported_cob.png",
		"earthbuild_pine_wood_supported_cob.png",
		"earthbuild_pine_wood_supported_cob.png",
		"earthbuild_pine_wood_supported_cob.png"
},
	paramtype = "light",
	groups = {crumbly = 2, cracky = 3, choppy = 2, flammable=1},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds pine wood supported cob recipe

minetest.register_craft({
	output = 'earthbuild:pine_wood_supported_cob 3',
	recipe = {
		{'earthbuild:cob', 'earthbuild:cob', 'earthbuild:cob'},
		{'default:pine_wood', '', ''},
		{'', '', ''},
	}
})


-- adds acacia wood supported cob

minetest.register_node('earthbuild:acacia_wood_supported_cob', {
	description = 'Acacia Wood Supported Cob',
	drawtype = "normal",
	tiles = {
		"earthbuild_cob.png",
		"default_acacia_wood.png",
		"earthbuild_acacia_wood_supported_cob.png",
		"earthbuild_acacia_wood_supported_cob.png",
		"earthbuild_acacia_wood_supported_cob.png",
		"earthbuild_acacia_wood_supported_cob.png"
},
	paramtype = "light",
	groups = {crumbly = 2, cracky = 3, choppy = 2, flammable=1},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds acacia wood supported cob recipe

minetest.register_craft({
	output = 'earthbuild:acacia_wood_supported_cob 3',
	recipe = {
		{'earthbuild:cob', 'earthbuild:cob', 'earthbuild:cob'},
		{'default:acacia_wood', '', ''},
		{'', '', ''},
	}
})


-- adds aspen wood supported cob

minetest.register_node('earthbuild:aspen_wood_supported_cob', {
	description = 'Aspen Wood Supported Cob',
	drawtype = "normal",
	tiles = {
		"earthbuild_cob.png",
		"default_aspen_wood.png",
		"earthbuild_aspen_wood_supported_cob.png",
		"earthbuild_aspen_wood_supported_cob.png",
		"earthbuild_aspen_wood_supported_cob.png",
		"earthbuild_aspen_wood_supported_cob.png"
},
	paramtype = "light",
	groups = {crumbly = 2, cracky = 3, choppy = 2, flammable=1},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds aspen wood supported cob recipe

minetest.register_craft({
	output = 'earthbuild:aspen_wood_supported_cob 3',
	recipe = {
		{'earthbuild:cob', 'earthbuild:cob', 'earthbuild:cob'},
		{'default:aspen_wood', '', ''},
		{'', '', ''},
	}
})

-----------------------------------------------------------
--WATTLE AND DAUB NODES AND CRAFTS

--adds wattle
minetest.register_node('earthbuild:wattle', {
	description = 'Wattle',
	drawtype = "nodebox",
	node_box = {
		type = "connected",
		fixed = {{-1/8, -1/2, -1/8, 1/8, 1/2, 1/8}},
		-- connect_bottom =
		connect_front = {{-1/8, -1/2, -1/2,  1/8, 1/2, -1/8}},
		connect_left = {{-1/2, -1/2, -1/8, -1/8, 1/2,  1/8}},
		connect_back = {{-1/8, -1/2,  1/8,  1/8, 1/2,  1/2}},
		connect_right = {{ 1/8, -1/2, -1/8,  1/2, 1/2,  1/8}},
	},
	connects_to = { "group:crumbly", "group:wood", "group:tree", "group:stone", 'earthbuild:wattle'},
	paramtype = "light",
	tiles = {"earthbuild_wattle.png"},
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 1,},
	sounds = default.node_sound_wood_defaults(),
})

-- adds wattle recipe
minetest.register_craft({
	output = 'earthbuild:wattle 16',
	recipe = {
		{'group:stick', 'group:stick', 'group:stick'},
		{'group:stick', 'group:stick', 'group:stick'},
		{'group:stick', 'group:stick', 'group:stick'},
	}
})


----------------------------
-- adds wattle_and_daub
minetest.register_node('earthbuild:wattle_and_daub', {
	description = 'Wattle and Daub',
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
	connects_to = { "group:crumbly", "group:wood", "group:tree", "group:stone",'earthbuild:wattle'},
	paramtype = "light",
	tiles = {"earthbuild_wattle_and_daub.png"},
	groups = {crumbly = 2, cracky = 3, choppy = 2},
	sounds = default.node_sound_dirt_defaults(),
})


-- adds wattle_and_daub recipes

minetest.register_craft({
	output = 'earthbuild:wattle_and_daub 6',
	recipe = {
		{'earthbuild:wattle', 'earthbuild:wattle', 'earthbuild:wattle'},
		{'earthbuild:wattle', 'earthbuild:wattle', 'earthbuild:wattle'},
		{'', 'earthbuild:cob', ''},
	}
})




---------------------------------------------------------
--MUD BRICK NODES AND CRAFTS

minetest.register_node('earthbuild:mud_brick', {
	description = 'Mud Brick',
	drawtype = "normal",
	tiles = {"earthbuild_mud_brick.png"},
	paramtype = "light",
	groups = {crumbly = 2, cracky = 3},
	sounds = default.node_sound_dirt_defaults(),
})

-- craft the mud brick from cob
-- (they are the same stuff, just arranged differently)
minetest.register_craft({
	output = 'earthbuild:mud_brick',
	recipe = {{'earthbuild:cob'}}
})

-----------------------------------------------------------
--THATCH NODES AND CRAFTS

-- adds thatch

minetest.register_node('earthbuild:thatch', {
	description = 'Thatch',
	drawtype = "normal",
	tiles = {"earthbuild_thatch.png"},
	paramtype = "light",
	drop = "earthbuild:thatch",
	groups = {snappy=3, flammable=1},
	sounds = default.node_sound_leaves_defaults(),
})

-- adds thatch recipes

minetest.register_craft({
	output = 'earthbuild:thatch 6',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'group:leaves', 'group:leaves'},
	}
})

minetest.register_craft({
	output = 'earthbuild:thatch 6',
	recipe = {
		{'group:grass', 'group:grass', 'group:grass'},
		{'group:grass', 'group:grass', 'group:grass'},
		{'group:grass', 'group:grass', 'group:grass'},
	}
})

minetest.register_craft({
	output = 'earthbuild:thatch 6',
	recipe = {
		{'group:dry_grass', 'group:dry_grass', 'group:dry_grass'},
		{'group:dry_grass', 'group:dry_grass', 'group:dry_grass'},
		{'group:dry_grass', 'group:dry_grass', 'group:dry_grass'},
	}
})

minetest.register_craft({
	output = 'earthbuild:thatch 6',
	recipe = {
		{'default:junglegrass', 'default:junglegrass', 'default:junglegrass'},
		{'default:junglegrass', 'default:junglegrass', 'default:junglegrass'},
		{'default:junglegrass', 'default:junglegrass', 'default:junglegrass'},
	}
})


----------------------------------------------------------
--STAIRS WALLS AND SLABS NODES

-- Stairs and slab for rammed earth
stairs.register_stair_and_slab("rammed_earth", "earthbuild:rammed_earth",
		{crumbly = 2, cracky = 3, falling_node = 1},
		{"earthbuild_rammed_earth.png"},
		"Rammed Earth Stair",
		"Rammed Earth Slab",
		default.node_sound_dirt_defaults())


-- Stairs and slab for cob
stairs.register_stair_and_slab("cob", "earthbuild:cob",
		{crumbly = 2, cracky = 3, falling_node = 1},
		{"earthbuild_cob.png"},
		"Cob Stair",
		"Cob Slab",
		default.node_sound_dirt_defaults())


-- Stairs and slab for mud brick
stairs.register_stair_and_slab("mud_brick", "earthbuild:mud_brick",
		{crumbly = 2, cracky = 3},
		{"earthbuild_mud_brick.png"},
		"Mud Brick Stair",
		"Mud Brick Slab",
		default.node_sound_dirt_defaults())


-- Stairs and slab for thatch
stairs.register_stair_and_slab("thatch", "earthbuild:thatch",
		{snappy=3, flammable=1},
		{"earthbuild_thatch.png"},
		"Thatch Stair",
		"Thatch Slab",
		default.node_sound_leaves_defaults())





----------------------------------------------------------
--HEARTH NODES AND CRAFTS

-- adds hearth

minetest.register_node('earthbuild:hearth', {
	description = 'Hearth',
	drawtype = "normal",
	tiles = {
		"earthbuild_hearth_top.png",
		"earthbuild_cob.png",
		"earthbuild_hearth_side.png",
		"earthbuild_hearth_side.png",
		"earthbuild_hearth_side.png",
		"earthbuild_hearth_side.png"
},
	paramtype = "light",
	drop = "earthbuild:hearth",
	groups = {crumbly = 1, cracky = 1, falling_node = 1},
	sounds = default.node_sound_dirt_defaults(),

	on_punch = function(pos)
		pos.y = pos.y + 1
		if minetest.get_node(pos).name == "air" then
			minetest.add_node(pos, {name="fire:permanent_flame"})
		end
	end
})


-- adds hearth recipes

minetest.register_craft({
	output = 'earthbuild:hearth',
	recipe = {
		{'', 'group:tree', ''},
		{'group:stick', 'group:stick', 'group:stick'},
		{'', 'earthbuild:rammed_earth', ''},
	}
})

minetest.register_craft({
	output = 'earthbuild:hearth',
	recipe = {
		{'', 'group:tree', ''},
		{'group:stick', 'group:stick', 'group:stick'},
		{'', 'earthbuild:cob', ''},
	}
})

minetest.register_craft({
	output = 'earthbuild:hearth',
	recipe = {
		{'', 'group:tree', ''},
		{'group:stick', 'group:stick', 'group:stick'},
		{'default:dirt', 'default:dirt', 'default:dirt'},
	}
})


--------------------------------------------------------------
--WHITEWASH NODES AND CRAFTS

--------------------------------------
-- adds whitewashed_wattle_and_daub
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
	connects_to = { "group:crumbly", "group:wood", "group:tree", "group:stone", 'earthbuild:wattle'},
	paramtype = "light",
	tiles = {"earthbuild_whitewashed_earth.png"},
	groups = {crumbly = 2, cracky = 3, choppy = 2},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds whitewashed_wattle_and_daub recipes
minetest.register_craft({
	output = 'earthbuild:whitewashed_wattle_and_daub',
	recipe = {
		{'', '', ''},
		{'earthbuild:wattle_and_daub', 'default:gravel', ''},
		{'', '', ''},
	}
})


--------------------------------------
-- adds whitewashed_mud_brick
minetest.register_node('earthbuild:whitewashed_mud_brick', {
	description = 'Whitewashed Mud Brick',
	drawtype = "normal",
	tiles = {"earthbuild_whitewashed_earth.png"},
	paramtype = "light",
	groups = {crumbly = 2, cracky = 3},
	sounds = default.node_sound_dirt_defaults(),
})


-- adds whitewashed_mud_brick recipes
minetest.register_craft({
	output = 'earthbuild:whitewashed_mud_brick',
	recipe = {
		{'', '', ''},
		{'earthbuild:mud_brick', 'default:gravel', ''},
		{'', '', ''},
	}
})

------------------------------------------
-- adds whitewashed_earth

minetest.register_node('earthbuild:whitewashed_earth', {
	description = 'Whitewashed Earth',
	drawtype = "normal",
	tiles = {"earthbuild_whitewashed_earth.png"},
	paramtype = "light",
	groups = {crumbly = 2, cracky = 3, falling_node = 1},
	sounds = default.node_sound_dirt_defaults(),
})


-- adds whitewashed_earth recipes

minetest.register_craft({
	output = 'earthbuild:whitewashed_earth',
	recipe = {
		{'', '', ''},
		{'earthbuild:cob', 'default:gravel', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'earthbuild:whitewashed_earth',
	recipe = {
		{'', '', ''},
		{'earthbuild:rammed_earth', 'default:gravel', ''},
		{'', '', ''},
	}
})



-- adds supported whitewashed_earth

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
	groups = {crumbly = 2, cracky = 3, choppy = 2, flammable=1},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds supported whitewashed_earth recipes

minetest.register_craft({
	output = 'earthbuild:supported_whitewashed_earth',
	recipe = {
		{'', '', ''},
		{'earthbuild:supported_rammed_earth', 'default:gravel', ''},
		{'', '', ''},
	}
})


minetest.register_craft({
	output = 'earthbuild:supported_whitewashed_earth',
	recipe = {
		{'', '', ''},
		{'earthbuild:supported_cob', 'default:gravel', ''},
		{'', '', ''},
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

-- adds jungle wood supported whitewashed_earth

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
	groups = {crumbly = 2, cracky = 3, choppy = 2, flammable=1},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds junglewood supported whitewashed_earth recipes

minetest.register_craft({
	output = 'earthbuild:junglewood_supported_whitewashed_earth',
	recipe = {
		{'', '', ''},
		{'earthbuild:junglewood_supported_rammed_earth', 'default:gravel', ''},
		{'', '', ''},
	}
})


minetest.register_craft({
	output = 'earthbuild:junglewood_supported_whitewashed_earth',
	recipe = {
		{'', '', ''},
		{'earthbuild:junglewood_supported_cob', 'default:gravel', ''},
		{'', '', ''},
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



-- adds pine wood supported whitewashed_earth

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
	groups = {crumbly = 2, cracky = 3, choppy = 2, flammable=1},
	sounds = default.node_sound_dirt_defaults(),
})


-- adds pine wood supported whitewashed_earth recipes

minetest.register_craft({
	output = 'earthbuild:pine_wood_supported_whitewashed_earth',
	recipe = {
		{'', '', ''},
		{'earthbuild:pine_wood_supported_rammed_earth', 'default:gravel', ''},
		{'', '', ''},
	}
})


minetest.register_craft({
	output = 'earthbuild:pine_wood_supported_whitewashed_earth',
	recipe = {
		{'', '', ''},
		{'earthbuild:pine_wood_supported_cob', 'default:gravel', ''},
		{'', '', ''},
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


-- adds acacia wood supported whitewashed_earth

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
	groups = {crumbly = 2, cracky = 3, choppy = 2, flammable=1},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds acacia wood supported whitewashed_earth recipes

minetest.register_craft({
	output = 'earthbuild:acacia_wood_supported_whitewashed_earth',
	recipe = {
		{'', '', ''},
		{'earthbuild:acacia_wood_supported_rammed_earth', 'default:gravel', ''},
		{'', '', ''},
	}
})


minetest.register_craft({
	output = 'earthbuild:acacia_wood_supported_whitewashed_earth',
	recipe = {
		{'', '', ''},
		{'earthbuild:acacia_wood_supported_cob', 'default:gravel', ''},
		{'', '', ''},
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


-- adds aspen wood supported whitewashed_earth

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
	groups = {crumbly = 2, cracky = 3, choppy = 2, flammable=1},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds aspen wood supported whitewashed_earth recipes

minetest.register_craft({
	output = 'earthbuild:aspen_wood_supported_whitewashed_earth',
	recipe = {
		{'', '', ''},
		{'earthbuild:aspen_wood_supported_rammed_earth', 'default:gravel', ''},
		{'', '', ''},
	}
})


minetest.register_craft({
	output = 'earthbuild:aspen_wood_supported_whitewashed_earth',
	recipe = {
		{'', '', ''},
		{'earthbuild:aspen_wood_supported_cob', 'default:gravel', ''},
		{'', '', ''},
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

-- Stairs and slab for whitewashed_earth

stairs.register_stair_and_slab("whitewashed_earth", "earthbuild:whitewashed_earth",
		{crumbly = 2, cracky = 3, falling_node = 1},
		{"earthbuild_whitewashed_earth.png"},
		"Whitewashed Earth Stair",
		"Whitewashed Earth Slab",
		default.node_sound_dirt_defaults())



---------------------------------------------------------------
--FLINT TOOLS

--Flint axe
-- sharper than stone axe but less durable
-- sharpeness is half way between stone and steel

minetest.register_tool("earthbuild:flint_axe", {
	description = "Flint Axe",
	inventory_image = "earthbuild_flintaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			choppy={times={[1]=2.75, [2]=1.70, [3]=1.15}, uses=15, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
})

--Craft flint axe
minetest.register_craft({
	output = 'earthbuild:flint_axe',
	recipe = {
		{'default:flint', 'group:stick'},
		{'', 'group:stick'},
	}
})



--Flint knife
-- sharper than stone but less durable
-- sharpeness is half way between stone and steel

minetest.register_tool("earthbuild:flint_knife", {
	description = "Flint knife",
	inventory_image = "earthbuild_flintknife.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			snappy={times={[1]=2.75, [2]=1.3, [3]=0.38}, uses=15, maxlevel=2},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
})


--Craft flint knife

minetest.register_craft({
	output = 'earthbuild:flint_knife',
	recipe = {
		{'default:flint'},
		{'group:stick'},
	}
})



---------------------------------------------------
--old

-- Wattle and Daub walls
--[[REACTIVATE if need compatibility with old maps!!!
walls.register("earthbuild:wattle_and_daub_wall", "Wattle and Daub Wall", "earthbuild_wattle_and_daub.png",
		"earthbuild:wattle_and_daub", default.node_sound_dirt_defaults())
]]


--[[REACTIVATE this if you need to restore compatibility with old maps!!!
-- Whitewashed Wattle and Daub walls
walls.register("earthbuild:whitewashed_wattle_and_daub_wall", "Whitewashed Wattle and Daub Wall", "earthbuild_whitewashed_earth.png",
		"earthbuild:whitewashed_wattle_and_daub", default.node_sound_dirt_defaults())
		]]
