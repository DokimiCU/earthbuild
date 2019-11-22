----------------------------------------------------------
-- Weaving

-------------------------------------------------

--Woven mat

minetest.register_node("earthbuild:woven_mat", {
	description = "Woven Mat",
	drawtype = "nodebox",
	tiles = {"earthbuild_woven_mat.png"},
	paramtype = "light",
	node_box = {
		type = "fixed",
        	fixed = {
			{-0.5, -0.5, -0.5,  0.5, -0.48, 0.5},
		},
	},
	selection_box = {
		type = "fixed",
        	fixed = {
            {-0.5, -0.5, -0.5,  0.5, -0.48, 0.5},
		},
    },

	groups = {snappy=3, flammable = 3,},
	sounds = default.node_sound_leaves_defaults(),
})




-- adds mat recipes

minetest.register_craft({
	output = 'earthbuild:woven_mat',
	recipe = {
		{'', '', ''},
		{'', '', ''},
		{'group:leaves', 'group:leaves', 'group:leaves'},
	}
})


minetest.register_craft({
	output = 'earthbuild:woven_mat',
	recipe = {
		{'', '', ''},
		{'', '', ''},
		{'default:junglegrass', 'default:junglegrass', 'default:junglegrass'},
	}
})



minetest.register_craft({
	output = 'earthbuild:woven_mat',
	recipe = {
		{'', '', ''},
		{'', '', ''},
		{'group:grass', 'group:grass', 'group:grass'},
	}
})

minetest.register_craft({
	output = 'earthbuild:woven_mat',
	recipe = {
		{'', '', ''},
		{'', '', ''},
		{'group:dry_grass', 'group:dry_grass', 'group:dry_grass'},
	}
})

--[[
--conflicts with default paper  :-(
minetest.register_craft({
	output = 'earthbuild:woven_mat',
	recipe = {
		{'', '', ''},
		{'', '', ''},
		{'default:papyrus', 'default:papyrus', 'default:papyrus'},
	}
})
]]


--Burn it

minetest.register_craft({
	type = "fuel",
	recipe = "earthbuild:woven_mat",
	burntime = 1,
})

