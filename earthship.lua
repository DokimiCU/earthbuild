----------------------------------------------------------
-- Modern Eco-Construction
-- techniques more popular today/only possible with present technology
--(although some techniques are actually very old)
-------------------------------------------------



-------------------------------------------------
--STRAW BALE
--made from straw bales (or equivalent), covered with some layer (e.g. clay, plaster etc)
--for our purposes... cob then whitewash will do
--common in farms where straw is abundant, but soil is valuable.

minetest.register_node('earthbuild:strawbale', {
	description = 'Straw-bale Wall',
	drawtype = "normal",
	tiles = {"earthbuild_wattle_and_daub.png"},
	paramtype = "light",
	--drop = "default:dirt",
	groups = {crumbly = 1, snappy = 2, falling_node = 1},
	sounds = default.node_sound_dirt_defaults(),
})

--make from thatch
minetest.register_craft({
	output = 'earthbuild:strawbale 6',
	recipe = {
		{'earthbuild:thatch', 'earthbuild:thatch', 'earthbuild:thatch'},
		{'earthbuild:thatch', 'earthbuild:thatch', 'earthbuild:thatch'},
		{'', 'earthbuild:cob', ''},
	}
})

--make from straw
minetest.register_craft({
	output = 'earthbuild:strawbale 6',
	recipe = {
		{'farming:straw', 'farming:straw', 'farming:straw'},
		{'farming:straw', 'farming:straw', 'farming:straw'},
		{'', 'earthbuild:cob', ''},
	}
})
