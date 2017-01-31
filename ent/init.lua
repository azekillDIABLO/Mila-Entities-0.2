--try to register the first entity

mila:add_entity("milaent:evil_knight", { 
	damage = 9,
	collisionbox = {-0.4,-2.55,-0.4, 0.4, 1.6, 0.4},
	status = "hostile",
	visual_size = {x=5, y=5},
	mesh = "armour.b3d",
	textures = {"armour.png"},
	makes_footstep_sound = true,
	physical = true,		
	collide_with_objects = true,
	stepheight = 5,
	hp_max = 175,
	speed = 1, 
	range = 3, 	
	view_range = 40,	
})
   
--then the egg

mila:add_egg("milaent:evil_knight", {
	description = "Evil Knight",
	inventory_image = "default_steel_ingot.png",
})

--finally the spawning

mila:add_spawn("milaent:evil_knight", {
	nodenames = {"default:steel_block"},
	neighbors = {"air"},
	interval = 440,
	chance = 1000,
})

--try to register the second entity

mila:add_entity("milaent:bat", { -- define and access functions on Lua tables using the ":" operator
	collisionbox = {-0.1,-0.1,-0.1, 0.1,0.1,0.1},
	status = "passive",
	visual_size = {x=1, y=1},
	gravity = 0,
	mesh = "bat.b3d",
	textures = {"bat.png"},
	makes_footstep_sound = false,
	physical = true,		
	collide_with_objects = true,
	automatic_face_movement_dir = 0,
	hp_max = 4,
	speed = 4, 	
	stepheight = 3.5,
	view_range = 55,	
})
   
--then the egg

mila:add_egg("milaent:bat", {
	description = "Minecraft Bat",
	inventory_image = "bat_inv.png",
	wield_image = "bat_inv.png",
})

mila:add_spawn("milaent:bat", {
	nodenames = {"default:stone"},
	neighbors = {"air"},
	interval = 240,
	chance = 200,
})