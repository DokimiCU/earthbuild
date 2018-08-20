----------------------------------------------------------
-- Clay Pot (i.e. a clay bucket)

-------------------------------------------------
--Functions


--protection function
local function check_protection(pos, name, text)
	if minetest.is_protected(pos, name) then
		minetest.log("action", (name ~= "" and name or "A mod")
			.. " tried to " .. text
			.. " at protected position "
			.. minetest.pos_to_string(pos)
			.. " with a bucket")
		minetest.record_protection_violation(pos, name)
		return true
	end
	return false
end

--------------
-- Can't just use the bucket api because that gives the player back the default steel bucket...
--otherwise this is just the same as from buckets
local earthbuild = {}
earthbuild.liquids = {}

function register_liquid(source, flowing, itemname, inventory_image, name,
		groups, force_renew)

  earthbuild.liquids[source] = {
		source = source,
		flowing = flowing,
		itemname = itemname,
		force_renew = force_renew,
	}
	earthbuild.liquids[flowing] = earthbuild.liquids[source]


	if itemname ~= nil then
		minetest.register_craftitem(itemname, {
			description = name,
			inventory_image = inventory_image,
			stack_max = 1,
			liquids_pointable = true,
			groups = groups,

			on_place = function(itemstack, user, pointed_thing)
				-- Must be pointing to node
				if pointed_thing.type ~= "node" then
					return
				end

				local node = minetest.get_node_or_nil(pointed_thing.under)
				local ndef = node and minetest.registered_nodes[node.name]

				-- Call on_rightclick if the pointed node defines it
				if ndef and ndef.on_rightclick and
				   user and not user:get_player_control().sneak then
					return ndef.on_rightclick(
						pointed_thing.under,
						node, user,
						itemstack)
				end

				local lpos

				-- Check if pointing to a buildable node
				if ndef and ndef.buildable_to then
					-- buildable; replace the node
					lpos = pointed_thing.under
				else
					-- not buildable to; place the liquid above
					-- check if the node above can be replaced

					lpos = pointed_thing.above
					node = minetest.get_node_or_nil(lpos)
					local above_ndef = node and minetest.registered_nodes[node.name]

					if not above_ndef or not above_ndef.buildable_to then
						-- do not remove the bucket with the liquid
						return itemstack
					end
				end

				if check_protection(lpos, user
						and user:get_player_name()
						or "", "place "..source) then
					return
				end

				minetest.set_node(lpos, {name = source})
				return ItemStack("earthbuild:clay_pot")
			end
		})
	end
end


----------------------------------------------------------
--Register unfired pot
minetest.register_craftitem("earthbuild:unfired_clay_pot", {
	description = "Unfired Clay Pot",
	inventory_image = "earthbuild_unfired_clay_pot.png",
	stack_max = 99,
})

--Register useable pot
minetest.register_craftitem("earthbuild:clay_pot", {
	description = "Clay Pot",
	inventory_image = "earthbuild_clay_pot.png",
	stack_max = 99,
	liquids_pointable = true,
	on_use = function(itemstack, user, pointed_thing)
		if pointed_thing.type == "object" then
			pointed_thing.ref:punch(user, 1.0, { full_punch_interval=1.0 }, nil)
			return user:get_wielded_item()
		elseif pointed_thing.type ~= "node" then
			-- do nothing if it's neither object nor node
			return
		end
		-- Check if pointing to a liquid source
		local node = minetest.get_node(pointed_thing.under)
		local liquiddef = earthbuild.liquids[node.name]
		local item_count = user:get_wielded_item():get_count()

		if liquiddef ~= nil
		and liquiddef.itemname ~= nil
		and node.name == liquiddef.source then
			if check_protection(pointed_thing.under,
					user:get_player_name(),
					"take ".. node.name) then
				return
			end

			-- default set to return filled bucket
			local giving_back = liquiddef.itemname

			-- check if holding more than 1 empty bucket
			if item_count > 1 then

				-- if space in inventory add filled bucked, otherwise drop as item
				local inv = user:get_inventory()
				if inv:room_for_item("main", {name=liquiddef.itemname}) then
					inv:add_item("main", liquiddef.itemname)
				else
					local pos = user:getpos()
					pos.y = math.floor(pos.y + 0.5)
					minetest.add_item(pos, liquiddef.itemname)
				end

				-- set to return empty buckets minus 1
				giving_back = "earthbuild:clay_pot "..tostring(item_count-1)

			end

			-- force_renew requires a source neighbour
			local source_neighbor = false
			if liquiddef.force_renew then
				source_neighbor =
					minetest.find_node_near(pointed_thing.under, 1, liquiddef.source)
			end
			if not (source_neighbor and liquiddef.force_renew) then
				minetest.add_node(pointed_thing.under, {name = "air"})
			end

			return ItemStack(giving_back)
		else
			-- non-liquid nodes will have their on_punch triggered
			local node_def = minetest.registered_nodes[node.name]
			if node_def then
				node_def.on_punch(pointed_thing.under, node, user, pointed_thing)
			end
			return user:get_wielded_item()
		end
	end,
})


-------------------------------------------------
--Register the liquids the pot can be used for

register_liquid(
	"default:water_source",
	"default:water_flowing",
	"earthbuild:clay_pot_water",
	"earthbuild_clay_pot_water.png",
	"Water Clay Pot",
	{water_bucket = 1}
)

register_liquid(
	"default:river_water_source",
	"default:river_water_flowing",
	"earthbuild:clay_pot_river_water",
	"earthbuild_clay_pot_river_water.png",
	"River Water Clay Pot",
	{water_bucket = 1},
	true
)

register_liquid(
	"default:lava_source",
	"default:lava_flowing",
	"earthbuild:clay_pot_lava",
	"earthbuild_clay_pot_lava.png",
	"Clay Pot Lava"
)

--Register lava as a fuel source
minetest.register_craft({
	type = "fuel",
	recipe = "earthbuild:clay_pot_lava",
	burntime = 60,
	replacements = {{"earthbuild:clay_pot_lava", "earthbuild:clay_pot"}},
})


---------------------------------------
--Recipes to make the pot

--Craft unfired pot
minetest.register_craft({
	output = 'earthbuild:unfired_clay_pot 1',
	recipe = {
		{'default:clay_lump', '', 'default:clay_lump'},
		{'', 'default:clay_lump', ''},
	}
})

--Craft unfired pot back into clay
minetest.register_craft({
	output = 'default:clay_lump 3',
	recipe = {{'earthbuild:unfired_clay_pot'}}
})

--Cook unfired pot to give the useable bucket
minetest.register_craft({
	type = "cooking",
	output = "earthbuild:clay_pot",
	recipe = "earthbuild:unfired_clay_pot",
	cooktime = 3,
})
