----------------------------------------------------------
-- Earthen Construction
-- blocks made from dirt
-------------------------------------------------








-------------------------------
--Compacted dirt
--i.e. a dirt floor
-- this is to simulate dirt floored buildings...
-- where the only preparation was clearing the vegetation
--created via dirt compactor tool

minetest.register_node("earthbuild:compacted_dirt", {
	description = "Compacted Dirt",
	tiles = {"earthbuild_compacted_dirt.png"},
	groups = {crumbly = 2},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults(),
})




-----------------------------------------------------
--TURF
-- the grass layer sliced off from the soil.
-- uses the grass roots for strength.
--grass still grows on top
--craft... only using grass layer, so need to harvest dirt_with_grass...
-- turf cutter to override default drop dirt.


---------
--Turf
minetest.register_node('earthbuild:turf', {
	description = 'Turf Wall',
	drawtype = "normal",
	tiles = { "default_grass.png",
						"earthbuild_compacted_dirt.png",
					 	"earthbuild_turf.png",
						"earthbuild_turf.png",
						"earthbuild_turf.png",
						"earthbuild_turf.png"},
	paramtype = "light",
	--drop = "default:dirt",
	groups = {crumbly = 2, falling_node = 1},
	sounds = default.node_sound_dirt_defaults(),
})


--------------
--Turf with drystack.
-- this is typically used at the bottom of walls.
-- would make both materials go further (1/2 each).
minetest.register_node('earthbuild:turf_and_drystack', {
	description = 'Turf and Drystack Wall',
	drawtype = "normal",
	tiles = { "default_grass.png",
						"earthbuild_compacted_dirt.png",
					 	"earthbuild_turf_and_drystack.png",
						"earthbuild_turf_and_drystack.png",
						"earthbuild_turf_and_drystack.png",
						"earthbuild_turf_and_drystack.png"},
	paramtype = "light",
	groups = {cracky = 3, crumbly = 1, oddly_breakable_by_hand = 1, falling_node = 1},
	sounds = default.node_sound_dirt_defaults(),
})

--craft turf and drystack
minetest.register_craft({
	output = 'earthbuild:turf_and_drystack 2',
	recipe = {
		{'earthbuild:turf'},
		{'earthbuild:drystack'},
	}
})


----------------------------------------------------------
--EARTH, COB, and MUD BRICK NODES AND CRAFTS
--Note on digging strenghts:
-- Rammed earth is hard e.g. like default sandstone {crumbly = 1, cracky = 3}
-- cob is stronger than dirt {crumbly = 3}, but softer than rammed earth (i.e. 2)
-- all are easy with a pick axe {cracky = 3}


--Note on falling:
--all of these are massive lumps of mud... so need support.
--apparently domes, arches etc can be made with cob and mudbrick but are difficult.
-- limited this ability to mudbrick... to give some point to making it.

--Note on merits of each block:
--all are stronger/more aesthetic than dirt.
--rammed earth: when have lots of/only dirt and want hard walls.
-- cob: a precursor to mudbricks, or for wattle and daub. Use when don't need supports.
-- mudbrick: more versatile than cob (no falling)




---------------------------
--Rammed Earth

minetest.register_node('earthbuild:rammed_earth', {
	description = 'Rammed Earth',
	drawtype = "normal",
	tiles = {
		"earthbuild_rammed_earth.png",
		"earthbuild_rammed_earth_side.png",
		"earthbuild_rammed_earth_side.png",
		"earthbuild_rammed_earth_side.png",
		"earthbuild_rammed_earth_side.png",
		"earthbuild_rammed_earth_side.png"
},
	paramtype = "light",
	--drop = "default:dirt",
	groups = {crumbly = 1, cracky = 3, falling_node = 1},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds rammed_earth recipes

minetest.register_craft({
	output = 'earthbuild:rammed_earth 1',
	recipe = {
		{'default:dirt'},
		{'default:dirt'},
		{'default:dirt'},
	}
})


------------------------------------------
--Cob

minetest.register_node('earthbuild:cob', {
	description = 'Cob',
	drawtype = "normal",
	tiles = {"earthbuild_cob.png"},
	paramtype = "light",
	--drop = "default:dirt",
	groups = {crumbly = 2, cracky = 3, falling_node = 1},
	sounds = default.node_sound_dirt_defaults(),
})

-- adds cob recipes

minetest.register_craft({
	output = 'earthbuild:cob 2',
	recipe = {
		{'default:dirt', '', 'default:dirt'},
		{'', 'group:grass', ''},
		{'', '', ''},
	}
})


minetest.register_craft({
	output = 'earthbuild:cob 2',
	recipe = {
		{'default:dirt', '', 'default:dirt'},
		{'', 'group:dry_grass', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'earthbuild:cob 2',
	recipe = {
		{'default:dirt', '', 'default:dirt'},
		{'', 'default:junglegrass', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'earthbuild:cob 2',
	recipe = {
		{'default:dirt', '', 'default:dirt'},
		{'', 'default:dry_shrub', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'earthbuild:cob 2',
	recipe = {
		{'default:dirt', '', 'default:dirt'},
		{'', 'default:papyrus', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'earthbuild:cob 2',
	recipe = {
		{'default:dirt', '', 'default:dirt'},
		{'', 'farming:wheat', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'earthbuild:cob 2',
	recipe = {
		{'default:dirt', '', 'default:dirt'},
		{'', 'group:leaves', ''},
		{'', '', ''},
	}
})

-- craft the cob from mudbrick
-- (they are the same stuff, just arranged differently)
minetest.register_craft({
	output = 'earthbuild:cob',
	recipe = {{'earthbuild:mud_brick'}}
})


---------------------------------------------------------
--MUD BRICK NODES AND CRAFTS

minetest.register_node('earthbuild:mud_brick', {
	description = 'Mud Brick',
	drawtype = "normal",
	tiles = {"earthbuild_mud_brick.png"},
	paramtype = "light",
	groups = {crumbly = 2, cracky = 3},
	sounds = default.node_sound_dirt_defaults(),
})

-- craft the mud brick from cob
-- (they are the same stuff, just arranged differently)
minetest.register_craft({
	output = 'earthbuild:mud_brick',
	recipe = {{'earthbuild:cob'}}
})



----------------------------------------------------------
--STAIRS AND SLABS NODES

-- Stairs and slab for rammed earth
stairs.register_stair_and_slab("rammed_earth", "earthbuild:rammed_earth",
		{crumbly = 1, cracky = 3, falling_node = 1},
		{"earthbuild_rammed_earth.png"},
		"Rammed Earth Stair",
		"Rammed Earth Slab",
		default.node_sound_dirt_defaults())


-- Stairs and slab for cob
stairs.register_stair_and_slab("cob", "earthbuild:cob",
		{crumbly = 2, cracky = 3, falling_node = 1},
		{"earthbuild_cob.png"},
		"Cob Stair",
		"Cob Slab",
		default.node_sound_dirt_defaults())


-- Stairs and slab for mud brick
stairs.register_stair_and_slab("mud_brick", "earthbuild:mud_brick",
		{crumbly = 2, cracky = 3},
		{"earthbuild_mud_brick.png"},
		"Mud Brick Stair",
		"Mud Brick Slab",
		default.node_sound_dirt_defaults())


-- Stairs and slab for Turf
stairs.register_stair_and_slab("turf", "earthbuild:turf",
		{crumbly = 2, falling_node = 1},
		{ "default_grass.png",
							"earthbuild_compacted_dirt.png",
							"earthbuild_turf.png",
							"earthbuild_turf.png",
							"earthbuild_turf.png",
							"earthbuild_turf.png"},
		"Turf Stair",
		"Turf Slab",
		default.node_sound_dirt_defaults())
