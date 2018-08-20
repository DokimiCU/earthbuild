----------------------------------------------------------
-- Doors

-------------------------------------------------

--Wattle Door

doors.register("door_wattle", {
		tiles = {{ name = "earthbuild_door_wattle.png", backface_culling = true }},
		description = "Wattle Door",
		inventory_image = "earthbuild_door_wattle_inv.png",
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 1},
		recipe = {
			{"earthbuild:wattle", "earthbuild:wattle"},
			{"earthbuild:wattle", "earthbuild:wattle"},
			{"earthbuild:wattle", "earthbuild:wattle"},
		}
})


minetest.register_craft({
	type = "fuel",
	recipe = "doors:door_wattle",
	burntime = 3,
})



--Wattle Trapdoor

doors.register_trapdoor("earthbuild:trapdoor_wattle", {
	description = "Wattle Trapdoor",
	inventory_image = "earthbuild_trapdoor_wattle.png",
	wield_image = "earthbuild_trapdoor_wattle.png",
	tile_front = "earthbuild_trapdoor_wattle.png",
	tile_side = "earthbuild_trapdoor_wattle_side.png",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 1, door = 1},
})

minetest.register_craft({
	output = 'earthbuild:trapdoor_wattle 2',
	recipe = {
		{'earthbuild:wattle', 'earthbuild:wattle', ''},
		{'earthbuild:wattle', 'earthbuild:wattle', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	type = "fuel",
	recipe = "trapdoor_wattle",
	burntime = 3,
})

