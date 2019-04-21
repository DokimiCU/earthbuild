--------------------------------------------------
--TOOLS

----------------------------------------------------
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


-------------------------------------------------
--CONSTRUCTION Tools

-----------------
--Dirt compactor
--a tool for compacting dirt floors.
-- the only way to get compacted dirt.
local ram = function(itemstack, user, pointed_thing)

	local player_name = user:get_player_name()

	--quit if not valid
	if pointed_thing.type ~= "node" then
		return
	end

	local pos = pointed_thing.under
	local node = minetest.get_node(pos)

	if minetest.get_item_group(node.name, "soil") == 1 then
		minetest.sound_play("dig_crumbly",{pos=pos, max_hear_distance = 5, loop=false, gain=0.5})

		minetest.set_node(pos, {name="earthbuild:compacted_dirt"})

		if not (creative and creative.is_enabled_for
				and creative.is_enabled_for(player_name)) then
			-- Wear tool
			local wdef = itemstack:get_definition()
			itemstack:add_wear(700)
			-- Tool break sound
			if itemstack:get_count() == 0 and wdef.sound and wdef.sound.breaks then
				minetest.sound_play(wdef.sound.breaks, {pos = sound_pos, gain = 0.5})
			end
			return itemstack
		end
	end
end


--Dirt Compactor
minetest.register_tool("earthbuild:dirt_compactor", {
	description = "Dirt Compactor",
	inventory_image = "earthbuild_dirt_compactor.png",
	groups = {flammable = 2},
	sound = {breaks = "default_tool_breaks"},
	on_use = ram
})

--Craft dirt compactor
minetest.register_craft({
	output = 'earthbuild:dirt_compactor',
	recipe = {
		{'group:stick','default:shovel_wood','group:stick'},
	}
})


--------------------
--Turf cutter
--a modified shovel so can dig turf from dirt_with_grass,
--leaves behind dirt, with a chance of destroying the dirt
local turf_cut = function(itemstack, user, pointed_thing)

	local player_name = user:get_player_name()

	--quit if not valid
	if pointed_thing.type ~= "node" then
		return
	end

	local pos = pointed_thing.under
	local node = minetest.get_node(pos)

	--use healthy grass, or snowy ground... (it is a cold climate technique)
	if node.name  == "default:dirt_with_grass" or node.name  == "default:dirt_with_snow" then
		--take turf
		minetest.sound_play("dig_crumbly",{pos=pos, max_hear_distance = 5, loop=false, gain=0.5})
		local inv = user:get_inventory()
		inv:add_item("main", "earthbuild:turf")

		--chance of depleting dirt
		local chance = math.random(1,2)
		if chance == 1 then
			minetest.set_node(pos, {name="air"})
			--minetest.dig_node(pos)
		else
			minetest.set_node(pos, {name="default:dirt"})
		end

		if not (creative and creative.is_enabled_for
				and creative.is_enabled_for(player_name)) then
			-- Wear tool
			local wdef = itemstack:get_definition()
			itemstack:add_wear(700)
			-- Tool break sound
			if itemstack:get_count() == 0 and wdef.sound and wdef.sound.breaks then
				minetest.sound_play(wdef.sound.breaks, {pos = sound_pos, gain = 0.5})
			end
			return itemstack
		end
	end
end




--turf cutter
minetest.register_tool("earthbuild:turf_cutter", {
	description = "Turf Cutter",
	inventory_image = "earthbuild_turf_cutter.png",
	groups = {flammable = 2},
	sound = {breaks = "default_tool_breaks"},
	on_use = turf_cut
})

--Craft Turf cutter
--modified shovel
minetest.register_craft({
	output = 'earthbuild:turf_cutter',
	recipe = {
		{'group:stick','default:shovel_wood',''},
	}
})



-------------------------------------------------------
-- Fire Sticks

minetest.register_tool("earthbuild:fire_sticks", {
	description = "Fire Sticks",
	inventory_image = "earthbuild_fire_sticks.png",
	sound = {breaks = "default_tool_breaks"},

	on_use = function(itemstack, user, pointed_thing)
		local sound_pos = pointed_thing.above or user:get_pos()
		minetest.sound_play(
			"fire_sticks",
			{pos = sound_pos, gain = 0.5, max_hear_distance = 8}
		)
		local player_name = user:get_player_name()
		if pointed_thing.type == "node" then
			local node_under = minetest.get_node(pointed_thing.under).name
			local nodedef = minetest.registered_nodes[node_under]
			if not nodedef then
				return
			end
			if minetest.is_protected(pointed_thing.under, player_name) then
				minetest.chat_send_player(player_name, "This area is protected")
				return
			end
			if nodedef.on_ignite then
				nodedef.on_ignite(pointed_thing.under, user)
			elseif minetest.get_item_group(node_under, "flammable") >= 1
					and minetest.get_node(pointed_thing.above).name == "air" then
				minetest.set_node(pointed_thing.above, {name = "fire:basic_flame"})
			end
		end
		if not (creative and creative.is_enabled_for
				and creative.is_enabled_for(player_name)) then
			-- Wear tool
			local wdef = itemstack:get_definition()
			itemstack:add_wear(2000)
			-- Tool break sound
			if itemstack:get_count() == 0 and wdef.sound and wdef.sound.breaks then
				minetest.sound_play(wdef.sound.breaks, {pos = sound_pos, gain = 0.5})
			end
			return itemstack
		end
	end
})


--craft fire_sticks
minetest.register_craft({
	output = 'earthbuild:fire_sticks',
	recipe = {
		{'group:stick'},
		{'group:stick'},
		{'group:leaves'},
	}
})

minetest.register_craft({
	output = 'earthbuild:fire_sticks',
	recipe = {
		{'group:stick'},
		{'group:stick'},
		{'group:grass'},
	}
})

minetest.register_craft({
	output = 'earthbuild:fire_sticks',
	recipe = {
		{'group:stick'},
		{'group:stick'},
		{'group:dry_grass'},
	}
})

minetest.register_craft({
	output = 'earthbuild:fire_sticks',
	recipe = {
		{'group:stick'},
		{'group:stick'},
		{'default:dry_shrub'},
	}
})
