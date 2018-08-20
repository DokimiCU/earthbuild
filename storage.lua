-------------------------------------------------------------
--Storage Pot

--Unfired pot (not usuable... must be cooked)

minetest.register_craftitem("earthbuild:storage_pot_unfired", {
	description = "Unfired Clay Storage Pot",
	inventory_image = "earthbuild_storage_pot_unfired.png",
	stack_max = 99,
})




--Finished Pot
minetest.register_node("earthbuild:storage_pot", {
	description = "Clay Storage Pot",
	drawtype = "nodebox",
	tiles = {"earthbuild_storage_pot_top.png", "earthbuild_storage_pot_top.png", "earthbuild_storage_pot.png","earthbuild_storage_pot.png", "earthbuild_storage_pot.png", "earthbuild_storage_pot.png"},
	node_box = {
		type = "fixed",
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	},
	groups = {oddly_breakable_by_hand = 3,},
	sounds = default.node_sound_stone_defaults(),
	paramtype = "light",
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",
				"size[8,9]"..
				 default.gui_bg ..
				 default.gui_bg_img ..
				 default.gui_slots ..
				"list[current_name;main;0,0;8,5;]"..
				"list[current_player;main;0,5;8,4;]")
		meta:set_string("infotext", "Storage Pot")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*3)
	end,

	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,

	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", "@1 moves stuff in pot at @2", player:get_player_name(), minetest.pos_to_string(pos))
	end,

	on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", "@1 moves stuff to pot at @2", player:get_player_name(), minetest.pos_to_string(pos))
	end,

	on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", "@1 takes stuff from pot at @2", player:get_player_name(), minetest.pos_to_string(pos))
	end,

})





--Craft unfired pot

minetest.register_craft({
	output = "earthbuild:storage_pot_unfired",
	recipe = {
		{"default:clay_lump", "default:clay_lump", "default:clay_lump"},
		{"default:clay_lump", "", "default:clay_lump"},
		{"default:clay_lump", "default:clay_lump", "default:clay_lump"},
	}
})



--Recycle unfired pot

minetest.register_craft({
	output = "default:clay_lump 8",
	recipe = {
		{"earthbuild:storage_pot_unfired"}}
})


--Cook unfired pot to give the useable pot
minetest.register_craft({
	type = "cooking",
	output = "earthbuild:storage_pot",
	recipe = "earthbuild:storage_pot_unfired",
	cooktime = 3,
})



--------------------------------------------
--Basket

--Basket
minetest.register_node("earthbuild:basket", {
	description = "Basket",
	drawtype = "nodebox",
	tiles = {
		"earthbuild_basket_top.png",
		"earthbuild_basket_top.png",
		"earthbuild_basket.png",
		"earthbuild_basket.png",
		"earthbuild_basket.png",
		"earthbuild_basket.png"},
	node_box = {
		type = "fixed",
		fixed = {-0.35, -0.5, -0.35, 0.35, 0.5, 0.35},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.35, -0.5, -0.35, 0.35, 0.5, 0.35},
	},
	groups = {snappy = 3, flammable = 3, oddly_breakable_by_hand = 3,},
	sounds = default.node_sound_stone_defaults(),
	paramtype = "light",
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",
				"size[8,9]"..
				 default.gui_bg ..
				 default.gui_bg_img ..
				 default.gui_slots ..
				"list[current_name;main;0,0;8,5;]"..
				"list[current_player;main;0,5;8,4;]")
		meta:set_string("infotext", "Basket")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*2)
	end,

	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,

	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", "@1 moves stuff in Basket at @2", player:get_player_name(), minetest.pos_to_string(pos))
	end,

	on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", "@1 moves stuff to Basket at @2", player:get_player_name(), minetest.pos_to_string(pos))
	end,

	on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", "@1 takes stuff from Basket at @2", player:get_player_name(), minetest.pos_to_string(pos))
	end,

})





--Craft basket
minetest.register_craft({
	output = "earthbuild:basket",
	recipe = {
		{"earthbuild:woven_mat", "earthbuild:woven_mat", "earthbuild:woven_mat"},
		{"earthbuild:woven_mat", "", "earthbuild:woven_mat"},
		{"earthbuild:woven_mat", "earthbuild:woven_mat", "earthbuild:woven_mat"},
	}
})

--burn basket
minetest.register_craft({
	type = "fuel",
	recipe = "earthbuild:basket",
	burntime = 8,
})



-----------------------------------------------------
--Gourd Container

--Vessel
minetest.register_node("earthbuild:bottlegourd_container", {
	description = "Bottlegourd Container",
	drawtype = "nodebox",
	tiles = { "earthbuild_bottlegourd_container_top.png",
	 					"earthbuild_bottlegourd_bot.png",
						"earthbuild_bottlegourd_container.png",
						"earthbuild_bottlegourd_container.png",
						"earthbuild_bottlegourd_container.png",
						"earthbuild_bottlegourd_container.png",
						"earthbuild_bottlegourd_container.png",
						"earthbuild_bottlegourd_container.png",
					},
	inventory_image = "earthbuild_bottlegourd_container.png",
	wield_image = "earthbuild_bottlegourd_container.png",
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
	groups = {dig_immediate = 3,},
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",
				"size[8,9]"..
				 default.gui_bg ..
				 default.gui_bg_img ..
				 default.gui_slots ..
				"list[current_name;main;0,0;8,5;]"..
				"list[current_player;main;0,5;8,4;]")
		meta:set_string("infotext", "Bottle Gourd")
		local inv = meta:get_inventory()
		inv:set_size("main", 1*1)
	end,

	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,

	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", "@1 moves stuff in Gourd at @2", player:get_player_name(), minetest.pos_to_string(pos))
	end,

	on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", "@1 moves stuff to Gourd at @2", player:get_player_name(), minetest.pos_to_string(pos))
	end,

	on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", "@1 takes stuff from Gourd at @2", player:get_player_name(), minetest.pos_to_string(pos))
	end,
})


minetest.register_craft({
	output = 'earthbuild:bottlegourd_container',
	recipe = {
		{'earthbuild:bottlegourd_cup', 'earthbuild:bottlegourd_cup'},
	}
})

minetest.register_craft({
	type = "fuel",
	recipe = "earthbuild:bottlegourd_container",
	burntime = 1,
})
