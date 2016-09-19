-- adds rammed_earth

minetest.register_node('earthbuild:rammed_earth', {
	description = 'Rammed Earth',
	drawtype = "normal",
	tiles = {"earthbuild_rammed_earth.png"},
	paramtype = "light",
	drop = "default:dirt",
	groups = {crumbly = 1, cracky = 3, falling_node = 1},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds rammed_earth recipes

minetest.register_craft({
	output = 'earthbuild:rammed_earth 3',
	recipe = {
		{'default:dirt', 'default:dirt', 'default:dirt'},
		{'default:dirt', 'default:dirt', 'default:dirt'},
		{'default:dirt', 'default:dirt', 'default:dirt'},
	}
})



-- adds cob

minetest.register_node('earthbuild:cob', {
	description = 'Cob',
	drawtype = "normal",
	tiles = {"earthbuild_cob.png"},
	paramtype = "light",
	drop = "default:dirt",
	groups = {crumbly = 1, cracky = 3, falling_node = 1},
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
	drop = {
		max_items = 2,
		items = {
			{items = {'default:dirt'}},
			{items = {'default:wood'}}
		}
	},
	groups = {crumbly = 1, cracky = 3, choppy = 2},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds supported rammed_earth recipe

minetest.register_craft({
	output = 'earthbuild:supported_rammed_earth',
	recipe = {
		{'earthbuild:rammed_earth', '', ''},
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
	drop = {
		max_items = 2,
		items = {
			{items = {'default:dirt'}},
			{items = {'default:junglewood'}}
		}
	},
	groups = {crumbly = 1, cracky = 3, choppy = 2},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds jungle wood supported rammed_earth recipe

minetest.register_craft({
	output = 'earthbuild:junglewood_supported_rammed_earth',
	recipe = {
		{'earthbuild:rammed_earth', '', ''},
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
	drop = {
		max_items = 2,
		items = {
			{items = {'default:dirt'}},
			{items = {'default:pine_wood'}}
		}
	},
	groups = {crumbly = 1, cracky = 3, choppy = 2},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds pine wood supported rammed_earth recipe

minetest.register_craft({
	output = 'earthbuild:pine_wood_supported_rammed_earth',
	recipe = {
		{'earthbuild:rammed_earth', '', ''},
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
	drop = {
		max_items = 2,
		items = {
			{items = {'default:dirt'}},
			{items = {'default:acacia_wood'}}
		}
	},
	groups = {crumbly = 1, cracky = 3, choppy = 2},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds acacia wood supported rammed_earth recipe

minetest.register_craft({
	output = 'earthbuild:acacia_wood_supported_rammed_earth',
	recipe = {
		{'earthbuild:rammed_earth', '', ''},
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
	drop = {
		max_items = 2,
		items = {
			{items = {'default:dirt'}},
			{items = {'default:aspen_wood'}}
		}
	},
	groups = {crumbly = 1, cracky = 3, choppy = 2},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds aspen wood supported rammed_earth recipe

minetest.register_craft({
	output = 'earthbuild:aspen_wood_supported_rammed_earth',
	recipe = {
		{'earthbuild:rammed_earth', '', ''},
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
	drop = {
		max_items = 2,
		items = {
			{items = {'default:dirt'}},
			{items = {'default:wood'}}
		}
	},
	groups = {crumbly = 1, cracky = 3, choppy = 2},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds supported cob recipe

minetest.register_craft({
	output = 'earthbuild:supported_cob',
	recipe = {
		{'earthbuild:cob', '', ''},
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
	drop = {
		max_items = 2,
		items = {
			{items = {'default:dirt'}},
			{items = {'default:junglewood'}}
		}
	},
	groups = {crumbly = 1, cracky = 3, choppy = 2},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds jungle wood supported cob recipe

minetest.register_craft({
	output = 'earthbuild:junglewood_supported_cob',
	recipe = {
		{'earthbuild:cob', '', ''},
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
	drop = {
		max_items = 2,
		items = {
			{items = {'default:dirt'}},
			{items = {'default:pine_wood'}}
		}
	},
	groups = {crumbly = 1, cracky = 3, choppy = 2},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds pine wood supported cob recipe

minetest.register_craft({
	output = 'earthbuild:pine_wood_supported_cob',
	recipe = {
		{'earthbuild:cob', '', ''},
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
	drop = {
		max_items = 2,
		items = {
			{items = {'default:dirt'}},
			{items = {'default:acacia_wood'}}
		}
	},
	groups = {crumbly = 1, cracky = 3, choppy = 2},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds acacia wood supported cob recipe

minetest.register_craft({
	output = 'earthbuild:acacia_wood_supported_cob',
	recipe = {
		{'earthbuild:cob', '', ''},
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
	drop = {
		max_items = 2,
		items = {
			{items = {'default:dirt'}},
			{items = {'default:aspen_wood'}}
		}
	},
	groups = {crumbly = 1, cracky = 3, choppy = 2},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds aspen wood supported cob recipe

minetest.register_craft({
	output = 'earthbuild:aspen_wood_supported_cob',
	recipe = {
		{'earthbuild:cob', '', ''},
		{'default:aspen_wood', '', ''},
		{'', '', ''},
	}
})



-- adds wattle_and_daub

minetest.register_node('earthbuild:wattle_and_daub', {
	description = 'Wattle and Daub',
	drawtype = "normal",
	tiles = {"earthbuild_wattle_and_daub.png"},
	paramtype = "light",
	drop = {
		max_items = 2,
		items = {
			{items = {'default:dirt'}},
			{items = {'default:stick'}}
		}
	},
	groups = {crumbly = 1, cracky = 3, choppy = 2},
	sounds = default.node_sound_dirt_defaults(),
})


-- adds wattle_and_daub recipes

minetest.register_craft({
	output = 'earthbuild:wattle_and_daub 2',
	recipe = {
		{'default:dirt', '', ''},
		{'', 'group:grass', ''},
		{'group:stick', '', ''},
	}
})

minetest.register_craft({
	output = 'earthbuild:wattle_and_daub 2',
	recipe = {
		{'default:dirt', '', ''},
		{'', 'group:dry_grass', ''},
		{'group:stick', '', ''},
	}
})

minetest.register_craft({
	output = 'earthbuild:wattle_and_daub 2',
	recipe = {
		{'default:dirt', '', ''},
		{'', 'default:junglegrass', ''},
		{'group:stick', '', ''},
	}
})

minetest.register_craft({
	output = 'earthbuild:wattle_and_daub 2',
	recipe = {
		{'default:dirt', '', ''},
		{'', 'default:dry_shrub', ''},
		{'group:stick', '', ''},
	}
})

minetest.register_craft({
	output = 'earthbuild:wattle_and_daub 2',
	recipe = {
		{'default:dirt', '', ''},
		{'', 'default:papyrus', ''},
		{'group:stick', '', ''},
	}
})


minetest.register_craft({
	output = 'earthbuild:wattle_and_daub 2',
	recipe = {
		{'default:dirt', '', ''},
		{'', 'farming:straw', ''},
		{'group:stick', '', ''},
	}
})


-- adds thatch

minetest.register_node('earthbuild:thatch', {
	description = 'Thatch',
	drawtype = "normal",
	tiles = {"earthbuild_thatch.png"},
	paramtype = "light",
	drop = "earthbuild:thatch",
	groups = {snappy=3, flammable=4},
	sounds = default.node_sound_leaves_defaults(),
})

-- adds thatch recipes

minetest.register_craft({
	output = 'earthbuild:thatch 3',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'group:leaves', 'group:leaves'},
	}
})


-- Stairs and slab for rammed earth

stairs.register_stair_and_slab("rammed_earth", "earthbuild:rammed_earth",
		{crumbly = 1, cracky = 3, falling_node = 1},
		{"earthbuild_rammed_earth.png"},
		"Rammed Earth Stair",
		"Rammed Earth Slab",
		default.node_sound_dirt_defaults())



-- Stairs and slab for cob

stairs.register_stair_and_slab("cob", "earthbuild:cob",
		{crumbly = 1, cracky = 3, falling_node = 1},
		{"earthbuild_cob.png"},
		"Cob Stair",
		"Cob Slab",
		default.node_sound_dirt_defaults())


-- Stairs and slab for thatch

stairs.register_stair_and_slab("thatch", "earthbuild:thatch",
		{snappy=3, flammable=4},
		{"earthbuild_thatch.png"},
		"Thatch Stair",
		"Thatch Slab",
		default.node_sound_leaves_defaults())



-- Wattle and Daub walls

walls.register("earthbuild:wattle_and_daub_wall", "Wattle and Daub Wall", "earthbuild_wattle_and_daub.png",
		"earthbuild:wattle_and_daub", default.node_sound_dirt_defaults())


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
	groups = {crumbly = 1, cracky = 3, falling_node = 1},
	sounds = default.node_sound_dirt_defaults(),

	on_punch = function(pos)
		pos.y = pos.y + 1
		minetest.add_node(pos, {name="fire:permanent_flame"})
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


-- adds whitewashed_wattle_and_daub

minetest.register_node('earthbuild:whitewashed_wattle_and_daub', {
	description = 'Whitewashed Wattle and Daub',
	drawtype = "normal",
	tiles = {"earthbuild_whitewashed_earth.png"},
	paramtype = "light",
	drop = "default:dirt",
	groups = {crumbly = 1, cracky = 2, choppy = 2},
	sounds = default.node_sound_dirt_defaults(),
})


-- Whitewashed Wattle and Daub walls

walls.register("earthbuild:whitewashed_wattle_and_daub_wall", "Whitewashed Wattle and Daub Wall", "earthbuild_whitewashed_earth.png",
		"earthbuild:whitewashed_wattle_and_daub", default.node_sound_dirt_defaults())



-- adds whitewashed_earth recipes

minetest.register_craft({
	output = 'earthbuild:whitewashed_wattle_and_daub',
	recipe = {
		{'', '', ''},
		{'earthbuild:wattle_and_daub', 'default:gravel', ''},
		{'', '', ''},
	}
})


-- adds whitewashed_earth

minetest.register_node('earthbuild:whitewashed_earth', {
	description = 'Whitewashed Earth',
	drawtype = "normal",
	tiles = {"earthbuild_whitewashed_earth.png"},
	paramtype = "light",
	drop = "default:dirt",
	groups = {crumbly = 1, cracky = 2, falling_node = 1},
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
	drop = {
		max_items = 2,
		items = {
			{items = {'default:dirt'}},
			{items = {'default:wood'}}
		}
	},
	groups = {crumbly = 1, cracky = 2, choppy = 2},
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
	output = 'earthbuild:supported_whitewashed_earth',
	recipe = {
		{'earthbuild:whitewashed_earth', '', ''},
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
	drop = {
		max_items = 2,
		items = {
			{items = {'default:dirt'}},
			{items = {'default:junglewood'}}
		}
	},
	groups = {crumbly = 1, cracky = 2, choppy = 2},
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
	output = 'earthbuild:junglewood_supported_whitewashed_earth',
	recipe = {
		{'earthbuild:whitewashed_earth', '', ''},
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
	drop = {
		max_items = 2,
		items = {
			{items = {'default:dirt'}},
			{items = {'default:pine_wood'}}
		}
	},
	groups = {crumbly = 1, cracky = 2, choppy = 2},
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
	output = 'earthbuild:pine_wood_supported_whitewashed_earth',
	recipe = {
		{'earthbuild:whitewashed_earth', '', ''},
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
	drop = {
		max_items = 2,
		items = {
			{items = {'default:dirt'}},
			{items = {'default:acacia_wood'}}
		}
	},
	groups = {crumbly = 1, cracky = 2, choppy = 2},
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
	output = 'earthbuild:acacia_wood_supported_whitewashed_earth',
	recipe = {
		{'earthbuild:whitewashed_earth', '', ''},
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
	drop = {
		max_items = 2,
		items = {
			{items = {'default:dirt'}},
			{items = {'default:aspen_wood'}}
		}
	},
	groups = {crumbly = 1, cracky = 2, choppy = 2},
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
	output = 'earthbuild:aspen_wood_supported_whitewashed_earth',
	recipe = {
		{'earthbuild:whitewashed_earth', '', ''},
		{'default:aspen_wood', '', ''},
		{'', '', ''},
	}
})

-- Stairs and slab for whitewashed_earth

stairs.register_stair_and_slab("whitewashed_earth", "earthbuild:whitewashed_earth",
		{crumbly = 1, cracky = 2, falling_node = 1},
		{"earthbuild_whitewashed_earth.png"},
		"Whitewashed Earth Stair",
		"Whitewashed Earth Slab",
		default.node_sound_dirt_defaults())


