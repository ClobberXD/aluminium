minetest.register_craftitem("aluminium:aluminium_lump",{
	description = "Aluminium Lump",
	inventory_image = "aluminium_aluminium_lump.png"
})

minetest.register_craft({
	type = "cooking",
	output = "aluminium:aluminium_ingot",
	recipe = "aluminium:aluminium_lump"
})

minetest.register_node("aluminium:stone_with_aluminium",{
	description = "Aluminium Ore",
	tiles = {"default_stone.png^aluminium_mineral_aluminium.png"},
	is_ground_content = true,
	groups = {cracky = 2},
	drop = "aluminium:aluminium_lump",
	sounds = default.node_sound_stone_defaults()
})

minetest.register_craftitem("aluminium:aluminium_ingot",{
	description = "Aluminium Ingot",
	inventory_image = "aluminium_aluminium_ingot.png"
})

minetest.register_node("aluminium:aluminium_block",{
	description="Aluminium Block",
	tiles={"aluminium_aluminium_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_metal_defaults()
})

minetest.register_craft({
	output = "aluminium:aluminium_block",
	recipe = {
		{"aluminium:aluminium_ingot", "aluminium:aluminium_ingot", "aluminium:aluminium_ingot"},
		{"aluminium:aluminium_ingot", "aluminium:aluminium_ingot", "aluminium:aluminium_ingot"},
		{"aluminium:aluminium_ingot", "aluminium:aluminium_ingot", "aluminium:aluminium_ingot"},
	}
})

minetest.register_craft({
	output = "aluminium:aluminium_ingot 9",
	type = "shapeless",
	recipe = {"aluminium:aluminium_block"}
})
