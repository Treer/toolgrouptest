minetest.register_tool("toolgrouptest:pick_lucky", {
	description = "Lucky Pickaxe",
	inventory_image = "default_tool_diamondpick.png^[multiply:#FF8080",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1, lucky = 1}
})

minetest.register_tool("toolgrouptest:pick_mundane", {
	description = "Mundane Pickaxe (not lucky)",
	inventory_image = "default_tool_diamondpick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1, lucky = 0}
})

minetest.register_tool("toolgrouptest:magic_wand", {
	description = "Magic wand",
	inventory_image = "default_stick.png^[multiply:#FF80A0^[transformR90",
	wield_image = "default_stick.png^[multiply:#FF80A0^[transformR90",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {magicwand = 1}
})

minetest.register_tool("toolgrouptest:shovel_lucky", {
	description = "Lucky Shovel",
	inventory_image = "default_tool_diamondshovel.png^[multiply:#FF8080",
	wield_image = "default_tool_diamondshovel.png^[multiply:#FF8080^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=30, maxlevel=3},
			cracky  = {times={[3]=1.60}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1, lucky = 1}
})



minetest.register_node("toolgrouptest:stone_with_coal", {
	description = "Coal Ore for tool testing",
	tiles = {"default_stone.png^default_mineral_coal.png"},
	groups = {cracky = 3},
	drop = {
		items = {
			{ 
				items = {"default:coal_lump"}
			},
			{
				tool_groups = { 
					"magicwand", 
					{"pickaxe", "lucky"}
				},
				items = {"default:coal_lump 4"}
			}
		}
	},
	sounds = default.node_sound_stone_defaults(),
})
