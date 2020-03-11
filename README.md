# Earthbuild, by Dokimi

Current version: 1.0.2.1

A mod for minetest that adds traditional dirt and vegetation based construction methods and technologies, which do not require the use of quarrying or mining.


# Instructions:
This mod aims to realistically capture these building techniques. Therefore it contains a mechanism which will degrade most earthen blocks to dirt if they are in contact with soil or water. This reflects the real world importance of keeping these materials dry. Make sure dirt based blocks (e.g. "Rammed Earth", "Cob" etc) are placed on foundations above the soil, or whitewashed.

Each material has different pros and cons. Explore!

Turf can only be aquired using the turf cutting tool on dirt with grass (to get the grass), or dirt with snow (it's a cold climate method).

Compacted dirt can only be made using the dirt compactor. This is to simulate bare ground that has been cleared of vegetation but little else.

# What are all these things?
- Cob: an ancient building material of straw and mud.
- Mud brick: cob shaped into bricks and dried.
- Rammed Earth: an ancient building technique of compressing earth into thick walls.
- Wattle and daub: woven sticks (the wattle), covered by daub (cob or something similar).
- Thatch: an ancient roofing method. Thick bundles of vegetation.
- Whitewash: a protective coating made from limestone. A little chemistry is used to turn it into a paint-like paste.
- Turf: soil held together by deep grass roots. Used to make thick insulating walls in places like Iceland.
- Drystack: Walls made from found stones (e.g. from clearing a field), stacked. Typically used for farm fences.
- Straw-bale walls: Bales of straw covered in cob (or similar). Historically used on farms with lots of excess straw.
- Bottle gourd: a pumpkin-like plant. The hollowed out fruits have long been used as storage vessels, bowls, etc.
- Fire sticks: the difficult task of rubbing two sticks together to start a fire via friction.




# License:

Code is licensed under GNU GPLv3.

Textures are licensed under CC BY-SA 3.0 Unported.


# Changelog:

# 0.2
- double amount of thatch made by recipe.
- Thatch grass recipes.
- Fixed supported whitewashed earth recipes. 
- add clay pot. 
- add primitive bed. 
- stopped hearth from destroying blocks when another block is in the way. 
- add mud brick
- remove flammability for wattle and daub 
- changed rammed earth recipe to avoid conflict with moreblocks 
- add wattle
- changed wattle and daub, and whitewashed wattle and daub to nodebox
- changed recipe for wattle and daub.
- remove wattle and daub wall register
- adjust groups
- add furnace
- adjust wattle recipe
- hearth breakable by hand
- wattle and thatch as fuels
- adjust whitewash recipe to need a lower ratio of gravel

# 1.0
- More realistic whitewash crafting (via quicklime)
- Add "Loose Wattle"
- Add "Stick Platform" and "Stick Platform with Brush"
- Add "Wattle Door" and "Wattle Trapdoor"
- Add Storage: basket, clay pot, and bottle gourd
- Add woven mat
- Improved Hearth (fuel use, and smoke effects)
- Add Drystack
- Add dirt compactor tool
- Add Turf construction (via turf cutting tool)
- Add Fire sticks
- Degradation mechanism for earthen blocks
- Numerous minor additions and adjustments

# 1.0.1
- Fix crashing bug with dirt compactor and turf cutter
- Add mod.conf file

# 1.0.2
- Nodeboxes and better meta handling for storage
- Remove conflicting papyrus weaving recipe
- dry dirt for rammed earth recipe

# 1.0.2.1
- Patch conflict between mods from overriding jungle grass drops (by ThorfinnS)
