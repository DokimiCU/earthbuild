----------------------------------------------------------
-- Roofing
-- Materials for making a roof, upper story floors, shelves etc
-------------------------------------------------


-----------------------------------------------------------
--EARTH AND COB WOOD SUPPORTED NODES AND CRAFTS

--RAMMED EARTH
--------------------
-- supported rammed_earth

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
	groups = {crumbly = 1, cracky = 3, choppy = 2, flammable=1},
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

------------------------
-- jungle wood supported rammed_earth

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
	groups = {crumbly = 1, cracky = 3, choppy = 2, flammable=1},
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

---------------------------
-- pine wood supported rammed_earth

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
	groups = {crumbly = 1, cracky = 3, choppy = 2, flammable=1},
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

-----------------------------
-- acacia wood supported rammed_earth

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
	groups = {crumbly = 1, cracky = 3, choppy = 2, flammable=1},
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

----------------------------
-- aspen wood supported rammed_earth

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
	groups = {crumbly = 1, cracky = 3, choppy = 2, flammable=1},
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

--COB
-------------------------------
-- supported cob

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

--------------------------------
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

------------------------------------
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

---------------------------------
-- acacia wood supported cob

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

----------------------------------
-- aspen wood supported cob

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

---------------------------------
--  aspen wood supported cob recipe

minetest.register_craft({
	output = 'earthbuild:aspen_wood_supported_cob 3',
	recipe = {
		{'earthbuild:cob', 'earthbuild:cob', 'earthbuild:cob'},
		{'default:aspen_wood', '', ''},
		{'', '', ''},
	}
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

minetest.register_craft({
	output = 'earthbuild:thatch 6',
	recipe = {
		{'default:papyrus', 'default:papyrus', 'default:papyrus'},
		{'default:papyrus', 'default:papyrus', 'default:papyrus'},
		{'default:papyrus', 'default:papyrus', 'default:papyrus'},
	}
})




----------------------------------------------------------
----------------------
-- Stick platform

minetest.register_node("earthbuild:stick_platform", {
	description = "Stick Platform",
	drawtype = "nodebox",
	tiles = { "earthbuild_stick_platform_top.png",
	 					"earthbuild_stick_platform_top.png",
						"earthbuild_stick_platform_side.png",
						"earthbuild_stick_platform_side.png",
						"earthbuild_stick_platform_side.png",
						"earthbuild_stick_platform_side.png"},
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.375, -0.5, 0.5, 0.501, 0.5},
		},
	},
	selection_box = {
		type = "fixed",
        	fixed = {
			{-0.5, 0.375, -0.5, 0.5, 0.501, 0.5},
		},

    },
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 1,},
	sounds = default.node_sound_wood_defaults(),
})


--recipe for stick platform
minetest.register_craft({
	output = 'earthbuild:stick_platform 5',
	recipe = {
		{'group:stick', '', 'group:stick'},
		{'', 'group:stick', ''},
		{'group:stick', '', 'group:stick'},
	}
})

--recycle stick platform
minetest.register_craft({
	output = 'default:stick 5',
	recipe = {
		{'earthbuild:stick_platform'}
	}
})


----------------------
-- Stick platform with brush
--(this mimics how a mud roof is typically made...
-- cob would go on top. More realistic than the wood supported ones)

minetest.register_node("earthbuild:stick_platform_with_brush", {
	description = "Stick Platform with Brush",
	drawtype = "nodebox",
	tiles = { "earthbuild_thatch.png", "earthbuild_stick_platform_with_brush.png", "earthbuild_stick_platform_with_brush_side.png", "earthbuild_stick_platform_with_brush_side.png", "earthbuild_stick_platform_with_brush_side.png", "earthbuild_stick_platform_with_brush_side.png"},
	paramtype = "light",
	node_box = {
		type = "fixed",
        	fixed = {
            {-0.5, 0.25, -0.5, 0.5, 0.5, 0.5},
		},
	},
	selection_box = {
		type = "fixed",
        	fixed = {
            {-0.5, 0.25, -0.5, 0.5, 0.5, 0.5},
		},
    },

	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 1,},
	sounds = default.node_sound_wood_defaults(),
})


--recipe for stick platform with brush
minetest.register_craft({
	output = 'earthbuild:stick_platform_with_brush 6',
	recipe = {
		{'', 'earthbuild:thatch', ''},
		{'earthbuild:stick_platform', 'earthbuild:stick_platform', 'earthbuild:stick_platform'},
		{'earthbuild:stick_platform', 'earthbuild:stick_platform', 'earthbuild:stick_platform'},
	}
})

--recycle stick platform with brush
minetest.register_craft({
	output = 'earthbuild:stick_platform',
	recipe = {
		{'earthbuild:stick_platform_with_brush'}
	}
})



----------------------------------------------------------
--STAIRS AND SLABS NODES


-- Stairs and slab for thatch
stairs.register_stair_and_slab("thatch", "earthbuild:thatch",
		{snappy=3, flammable=1},
		{"earthbuild_thatch.png"},
		"Thatch Stair",
		"Thatch Slab",
		default.node_sound_leaves_defaults())


----------------------------------------------
--Burnables

minetest.register_craft({
	type = "fuel",
	recipe = "earthbuild:thatch",
	burntime = 9,
})

minetest.register_craft({
	type = "fuel",
	recipe = "stairs:stair_thatch",
	burntime = 8,
})

minetest.register_craft({
	type = "fuel",
	recipe = "stairs:slab_thatch",
	burntime = 3,
})


minetest.register_craft({
	type = "fuel",
	recipe = "earthbuild:stick_platform",
	burntime = 1.5,
})

minetest.register_craft({
	type = "fuel",
	recipe = "earthbuild:stick_platform_with_brush",
	burntime = 3,
})
