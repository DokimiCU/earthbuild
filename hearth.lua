--------------------------------------------------
--HEARTH

------------------------------------------------
--Functions



----------
-- On construct
-- set form
local hearth_on_construct = function(pos)
	local inv = minetest.get_meta(pos):get_inventory()
	inv:set_size("fuel", 1)

	local meta = minetest.get_meta(pos)
	meta:set_string("formspec",
		"size[8,5.3]" ..
		default.gui_bg ..
		default.gui_bg_img ..
		default.gui_slots ..
		"list[current_name;fuel;3.5,0;1,1;]" ..
		"list[current_player;main;0,1.15;8,1;]" ..
		"list[current_player;main;0,2.38;8,3;8]" ..
		"listring[current_name;main]" ..
		"listring[current_player;main]" ..
		default.get_hotbar_bg(0,1.15)
	)
end



----------
--Digging only if no fuel
local hearth_can_dig = function(pos, player)
	local inv = minetest.get_meta(pos):get_inventory()
	return inv:is_empty("fuel")
end


-------------
-- Only fuel items allowed
local hearth_allow_metadata_inventory_put = function(pos, listname, index, stack, player)
	if listname == "fuel" then
		if minetest.get_craft_result({method="fuel", width=1, items={stack}}).time ~= 0 then
			return stack:get_count()
		else
			return 0
		end
	end
	return 0
end


--------------
--Particle Effects

local function hearth_fire_on(pos, time)
	local meta = minetest.get_meta(pos)
	--flames
    	minetest.add_particlespawner({
       amount = 4,
       time = time,
       minpos = {x = pos.x - 0.1, y = pos.y + 0.6, z = pos.z - 0.1},
       maxpos = {x = pos.x + 0.1, y = pos.y + 1, z = pos.z + 0.1},
       minvel = {x= 0, y= 0, z= 0},
       maxvel = {x= 0.001, y= 0.001, z= 0.001},
       minacc = {x= 0, y= 0, z= 0},
       maxacc = {x= 0.001, y= 0.001, z= 0.001},
       minexptime = 3,
       maxexptime = 5,
       minsize = 4,
       maxsize = 8,
       collisiondetection = false,
       vertical = true,
       texture = "fire_basic_flame_animated.png",
       animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1
			},
	  glow = 13,
    })

    --Smoke
    minetest.add_particlespawner({
        amount = 4,
        time = time,
        minpos = {x = pos.x - 0.1, y = pos.y + 0.8, z = pos.z - 0.1},
        maxpos = {x = pos.x + 0.1, y = pos.y + 1, z = pos.z + 0.1},
        minvel = {x= 0, y= 0, z= 0},
        maxvel = {x= 0.01, y= 0.07, z= 0.01},
        minacc = {x= 0, y= 0, z= 0},
        maxacc = {x= 0.01, y= 0.2, z= 0.01},
        minexptime = 5,
        maxexptime = 20,
        minsize = 1,
        maxsize = 8,
        collisiondetection = true,
        vertical = true,
        texture = "default_item_smoke.png",
        --animation = {type="vertical_frames", aspect_w=16, aspect_h=16, length = 0.7,},
    })
end



----------
--Burn
--add flames and burn fuel
local hearth_burn = function(pos, elapsed)
	local pos_above = {x=pos.x, y=pos.y+1, z=pos.z}
	local node_above = minetest.get_node(pos_above)
	local timer = minetest.get_node_timer(pos)

	local inv = minetest.get_inventory({type="node", pos=pos})
	local item = inv:get_stack("fuel", 1)
	local fuel_burned = minetest.get_craft_result({method="fuel", width=1, items={item:peek_item(1)}}).time

	--remove light...
	-- so it doesn't stay on permanently
	if inv:is_empty("fuel") and node_above.name == "earthbuild:hearth_air" then
		minetest.set_node(pos_above, {name = "air"})
	end

	--burn item and add smoke and flames
	if fuel_burned > 0 and (node_above.name == "air" or node_above.name == "earthbuild:hearth_air") then
		--randomly remove an item of fuel based on it's burn time.
		--this is so it can get through the fuel slowly, but..
		-- still do frequent flames
		--i.e. every X sec it will have a 1/X chance of burning
		local burn_time = fuel_burned * 30
		local burn_it = math.random(1, burn_time)
		--it's luck was up, it got burnt away.
		if burn_it == 1 then
			item:set_count(item:get_count() - 1)
			inv:set_stack("fuel", 1, item)
		end

		--if has no light
		if node_above.name == "air" then
			minetest.set_node(pos_above, {name = "earthbuild:hearth_air"})
		end

		--do fire effects and restart timer
		timer:start(5)
		hearth_fire_on(pos, 5)
		minetest.sound_play("fire_small",{pos=pos, max_hear_distance = 15, loop=false, gain=0.2})
	end
end

--Removed node..make sure to remove light
local no_hearth = function(pos, oldnode)
	local pos_above = {x=pos.x, y=pos.y+1, z=pos.z}
	local node_above = minetest.get_node(pos_above)

	if node_above.name == "earthbuild:hearth_air" then
		minetest.set_node(pos_above, {name = "air"})
	end
end

-------------------------------------------------
--Node

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
	groups = {crumbly = 1, cracky = 1, oddly_breakable_by_hand = 2},
	damage_per_second = 1,
	sounds = default.node_sound_dirt_defaults(),

	on_construct = hearth_on_construct,
	can_dig = hearth_can_dig,
	allow_metadata_inventory_put = hearth_allow_metadata_inventory_put,
	on_metadata_inventory_put = hearth_burn,
	on_timer = hearth_burn,
	after_destruct = no_hearth,

})

-----------------------------------------
--Hearth Air
--this is to add a light source
-- an invisible glowing block added above the fire when burning
--this is needed because particles give no light
minetest.register_node("earthbuild:hearth_air", {
	description = "Hearth Air",
	tiles = {"earthbuild_hearth_top.png"},
	drawtype = "airlike",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	protected = true,
	groups = {not_in_creative_inventory = 1, igniter = 2},
	light_source= 9,
	on_blast = function(pos)
	end,
})



----------------------------------------------
--Crafts

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
