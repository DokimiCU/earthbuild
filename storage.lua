-------------------------------------------------------------
local function is_owner(pos, name)
	local owner = minetest.get_meta(pos):get_string("owner")
	if owner == "" or owner == name or minetest.check_player_privs(name, "protection_bypass") then
		return true
	end
	return false
end

---------------------------------------------------
local function get_storage_formspec(pos)
	local formspec ="size[8,7]" ..
		default.gui_bg ..
		default.gui_bg_img ..
		default.gui_slots ..
		"list[current_name;main;0,0.3;8,2]" ..
		"list[current_player;main;0,2.85;8,1]" ..
		"list[current_player;main;0,4.08;8,3;8]" ..
		"listring[current_name;main]" ..
		"listring[current_player;main]"
	return formspec
end


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
	tiles = {"earthbuild_storage_pot_top.png",
		"earthbuild_storage_pot_top.png",
		"earthbuild_storage_pot.png",
		"earthbuild_storage_pot.png",
		"earthbuild_storage_pot.png"},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
				{-0.375, -0.5, -0.375, 0.375, -0.375, 0.375},
				{-0.375, 0.375, -0.375, 0.375, 0.5, 0.375},
				{-0.4375, -0.375, -0.4375, 0.4375, -0.25, 0.4375},
				{-0.4375, 0.25, -0.4375, 0.4375, 0.375, 0.4375},
				{-0.5, -0.25, -0.5, 0.5, 0.25, 0.5},
			}
		},
	groups = {oddly_breakable_by_hand = 3},
	sounds = default.node_sound_stone_defaults(),

	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec", get_storage_formspec(pos, 8, 2))
		local inv = meta:get_inventory()
		inv:set_size("main", 8*3)
		meta:set_string("infotext", "Clay Storage Pot")
	end,

	can_dig = function(pos, player)
		local inv = minetest.get_meta(pos):get_inventory()
		local name = ""
		if player then
			name = player:get_player_name()
		end
		return is_owner(pos, name) and inv:is_empty("main")
	end,

	allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		if is_owner(pos, player:get_player_name()) then
			return count
		end
		return 0
	end,

	allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		if is_owner(pos, player:get_player_name())
		and not string.match(stack:get_name(), "backpacks:") then
			return stack:get_count()
		end
		return 0
	end,

	allow_metadata_inventory_take = function(pos, listname, index, stack, player)
		if is_owner(pos, player:get_player_name()) then
			return stack:get_count()
		end
		return 0
	end,

	on_blast = function(pos)
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
	cooktime = 10,
})



--------------------------------------------
--Basket
minetest.register_node("earthbuild:basket", {
	description = "Basket",
	tiles = {"earthbuild_basket_top.png",
		"earthbuild_basket_top.png",
		"earthbuild_basket.png",
		"earthbuild_basket.png",
		"earthbuild_basket.png"},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, 0.375, -0.25, 0.25, 0.5, 0.25},
			{-0.375, -0.25, -0.375, 0.375, 0.3125, 0.375},
			{-0.3125, -0.375, -0.3125, 0.3125, -0.25, 0.3125},
			{-0.25, -0.5, -0.25, 0.25, -0.375, 0.25},
			{-0.3125, 0.3125, -0.3125, 0.3125, 0.375, 0.3125},
		}
	},

	groups = {oddly_breakable_by_hand = 3},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec", get_storage_formspec(pos, 8, 2))
		local inv = meta:get_inventory()
		inv:set_size("main", 8*2)
		meta:set_string("infotext", "Basket")
	end,

	can_dig = function(pos, player)
		local inv = minetest.get_meta(pos):get_inventory()
		local name = ""
		if player then
			name = player:get_player_name()
		end
		return is_owner(pos, name) and inv:is_empty("main")
	end,

	allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		if is_owner(pos, player:get_player_name()) then
			return count
		end
		return 0
	end,

	allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		if is_owner(pos, player:get_player_name())
		and not string.match(stack:get_name(), "backpacks:") then
			return stack:get_count()
		end
		return 0
	end,

	allow_metadata_inventory_take = function(pos, listname, index, stack, player)
		if is_owner(pos, player:get_player_name()) then
			return stack:get_count()
		end
		return 0
	end,

	on_blast = function(pos)
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
		meta:set_string("formspec", get_storage_formspec(pos, 8, 2))
		local inv = meta:get_inventory()
		inv:set_size("main", 1*1)
		meta:set_string("infotext", "Bottle Gourd")
	end,

	can_dig = function(pos, player)
		local inv = minetest.get_meta(pos):get_inventory()
		local name = ""
		if player then
			name = player:get_player_name()
		end
		return is_owner(pos, name) and inv:is_empty("main")
	end,

	allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		if is_owner(pos, player:get_player_name()) then
			return count
		end
		return 0
	end,

	allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		if is_owner(pos, player:get_player_name())
		and not string.match(stack:get_name(), "backpacks:") then
			return stack:get_count()
		end
		return 0
	end,

	allow_metadata_inventory_take = function(pos, listname, index, stack, player)
		if is_owner(pos, player:get_player_name()) then
			return stack:get_count()
		end
		return 0
	end,

	on_blast = function(pos)
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
