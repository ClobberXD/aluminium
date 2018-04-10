minetest.register_craftitem("aluminum:aluminum_lump",{
	description = "Aluminium Lump",
	inventory_image = "aluminum_aluminum_lump.png"
})

minetest.register_craft({
	type = "cooking",
	output = "aluminum:aluminum_ingot",
	recipe = "aluminum:aluminum_lump"
})

minetest.register_node("aluminum:stone_with_aluminum",{
	description = "Aluminum Ore",
	tiles = {"default_stone.png^aluminum_mineral_aluminum.png"},
	groups = {cracky = 2},
	drop = "aluminum:aluminum_lump",
	sounds = default.node_sound_stone_defaults()
})

minetest.register_craftitem("aluminum:aluminum_ingot",{
	description = "Aluminum Ingot",
	inventory_image = "aluminum_aluminum_ingot.png"
})

minetest.register_node("aluminum:aluminum_block",{
	description="Aluminum Block",
	tiles={"aluminum_aluminum_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_metal_defaults()
})

minetest.register_craft({
	output = "aluminum:aluminum_block",
	recipe = {
		{"aluminum:aluminum_ingot", "aluminum:aluminum_ingot", "aluminum:aluminum_ingot"},
		{"aluminum:aluminum_ingot", "aluminum:aluminum_ingot", "aluminum:aluminum_ingot"},
		{"aluminum:aluminum_ingot", "aluminum:aluminum_ingot", "aluminum:aluminum_ingot"},
	}
})

minetest.register_craft({
	output = "aluminum:aluminum_ingot 9",
	type = "shapeless",
	recipe = "aluminum:aluminum_block"
})