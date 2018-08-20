-------------------------------------------------------------
--Do files
-------------------------------------------------------------
dofile(minetest.get_modpath("earthbuild").."/earth.lua")
dofile(minetest.get_modpath("earthbuild").."/roofing.lua")
dofile(minetest.get_modpath("earthbuild").."/wattle.lua")
dofile(minetest.get_modpath("earthbuild").."/whitewash.lua")
dofile(minetest.get_modpath("earthbuild").."/drystack.lua")
dofile(minetest.get_modpath("earthbuild").."/earthship.lua")

dofile(minetest.get_modpath("earthbuild").."/tools.lua")
dofile(minetest.get_modpath("earthbuild").."/clay_pot.lua")
dofile(minetest.get_modpath("earthbuild").."/bed.lua")
dofile(minetest.get_modpath("earthbuild").."/furnace.lua")
dofile(minetest.get_modpath("earthbuild").."/doors.lua")
dofile(minetest.get_modpath("earthbuild").."/storage.lua")
dofile(minetest.get_modpath("earthbuild").."/weaving.lua")
dofile(minetest.get_modpath("earthbuild").."/hearth.lua")
dofile(minetest.get_modpath("earthbuild").."/farming.lua")



---------------------------------------------------------------
--MISC STUFF


----------------------------
-- DEGRADE
--Most of these construction need special care.
--they must be kept dry or they fall to bits.
--Therefore the degradation mechanism simulates how builders cope with that.
--Earthen blocks must be kept away from moisture/soil
-- simulates water, worms etc breaking it back up to dirt
--Therefore they must be kept off the ground/dry/whitewashed
-- A fairly slow process
--Some things are more durable than others...


--Fast. Things that are already dirt like, easily decomposed
minetest.register_abm({
	label = "Fast degrade Earthbuild",
	nodenames = {
			"earthbuild:compacted_dirt",
			"earthbuild:strawbale",
			"earthbuild:thatch",
			"stairs:thatch",
			"stairs:slab_thatch",
			"earthbuild:turf",
			"stairs:stair_turf",
			"stairs:slab_turf",
			},
	neighbors = {
		"group:soil",
		"group:water",
	},
	interval = 180,
	chance = 250,
	catch_up = false,
	action = function(pos, node)
		--turn back to dirt
		minetest.set_node(pos, {name = "default:dirt"})
	end
})

--Medium. Harder to degrade, but no special resistance.
minetest.register_abm({
	label = "Degrade Earthbuild",
	nodenames = {
			"earthbuild:cob",
			"earthbuild:mud_brick",
			"stairs:stair_cob",
			"stairs:stair_mud_brick",
			"stairs:slab_cob",
			"stairs:slab_mud_brick",
			},
	neighbors = {
		"group:soil",
		"group:water",
	},
	interval = 360,
	chance = 500,
	catch_up = false,
	action = function(pos, node)
		--turn back to dirt
		minetest.set_node(pos, {name = "default:dirt"})
	end
})

--Slow. Resistant, or partly protected
minetest.register_abm({
	label = "Slow Degrade Earthbuild",
	nodenames = {
			"earthbuild:rammed_earth",
			"stairs:stair_rammed_earth",
			"stairs:slab_rammed_earth",
			"earthbuild:wattle_and_daub",
			"earthbuild:supported_rammed_earth",
			"earthbuild:junglewood_supported_rammed_earth",
			"earthbuild:pine_wood_supported_rammed_earth",
			"earthbuild:acacia_wood_supported_rammed_earth",
			"earthbuild:aspen_wood_supported_rammed_earth",
			"earthbuild:supported_cob",
			"earthbuild:junglewood_supported_cob",
			"earthbuild:pine_wood_supported_cob",
			"earthbuild:acacia_wood_supported_cob",
			"earthbuild:aspen_wood_supported_cob"
			},
	neighbors = {
		"group:soil",
		"group:water",
	},
	interval = 720,
	chance = 1000,
	catch_up = false,
	action = function(pos, node)
		if node.name == "earthbuild:wattle_and_daub" then
			--daub falls off
			minetest.set_node(pos, {name = "earthbuild:wattle"})
		else
			--turn back to dirt
			minetest.set_node(pos, {name = "default:dirt"})
		end
	end
})
