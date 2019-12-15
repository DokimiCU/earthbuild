local function add_drop(nodename, drop_table)

	-- does node exist?
	if not minetest.registered_nodes[nodename] then return end

	-- get existing drops
	local drops = minetest.registered_nodes[nodename].drop

	-- if single item string then apend to end of new drop_table
	if type(drops) == "string" then print ("== string")

		table.insert(drop_table.items, {items = {drops}})
	elseif type(drops) == "table" then print ("== table")

		-- apend existing drops to new drop_table
		for _, item in ipairs(drops.items) do
			table.insert(drop_table.items, item)
		end

		-- use new max_items or default to current
		drop_table.max_items = drop_table.max_items or drops.max_items
	end

	-- override node with new drops
	minetest.override_item(nodename, {drop = drop_table})
end






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

if minetest.registered_nodes["default:junglegrass"].drop == nil then
	add_drop("default:junglegrass", {
		max_items = 1,
		items = {
			{items = {"farming:seed_cotton"}, rarity = 8},
			{items = {"default:junglegrass"}}
	}
})
end

------------
--Collect wild seeds
--a tropical species so...
add_drop("default:junglegrass", {
	items = {
		{items = {"earthbuild:seed_bottlegourd"}, rarity = 8},
	}
})

minetest.log(dump(minetest.registered_nodes["default:junglegrass"].drop))

minetest.log("Adding bonemeal support for ")
bonemeal:add_crop({
	{"earthbuild:bottlegourd_", 8, "earthbuild:seed_bottlegourd"}
})

