----------------------------------------------------------
-- Bottle Gourd

-------------------------------------------------


farming.register_plant("earthbuild:bottlegourd", {
	description = "Bottle Gourd seed",
	paramtype2 = "meshoptions",
	inventory_image = "earthbuild_bottlegourd_seed.png",
	steps = 7,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "rainforest"},
	groups = {flammable = 4},
	place_param2 = 3,
})





----------------------
--Gourd Crafts

--Vessel
minetest.register_node("earthbuild:bottlegourd_cup", {
	description = "Bottlegourd Cup (empty)",
	drawtype = "nodebox",
	tiles = { "earthbuild_bottlegourd_cup_top.png",
	 					"earthbuild_bottlegourd_bot.png",
						"earthbuild_bottlegourd_cup.png",
						"earthbuild_bottlegourd_cup.png",
						"earthbuild_bottlegourd_cup.png",
						"earthbuild_bottlegourd_cup.png",
						"earthbuild_bottlegourd_cup.png",
						"earthbuild_bottlegourd_cup.png",
					},
	inventory_image = "earthbuild_bottlegourd_cup.png",
	wield_image = "earthbuild_bottlegourd_cup.png",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.25, 0.25, -0.0, 0.25},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.25, 0.25, -0.0, 0.25},
	}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_wood_defaults(),
})


minetest.register_craft({
	output = 'earthbuild:bottlegourd_cup',
	recipe = {
		{'earthbuild:bottlegourd'},
	}
})

minetest.register_craft({
	type = "fuel",
	recipe = "earthbuild:bottlegourd_cup",
	burntime = 1,
})









------------
--Collect wild seeds
--a tropical species so...

minetest.override_item("default:junglegrass", {drop = {
	max_items = 1,
	items = {
		{items = {'farming:seed_cotton'},rarity = 8},
		{items = {'earthbuild:seed_bottlegourd'},rarity = 8},
		{items = {'default:junglegrass'}},
	}
}})
