--try to register the first entity.

mila:add_entity("milasteve:steve_minecraft", { -- define and access functions on Lua tables using the ":" operator
	damage = 6,
	collisionbox = {-0.4,-1,-0.4, 0.4,1,0.4},
	status = "hostile",
	visual_size = {x=1, y=1},
	mesh = "character.b3d",
	textures = {"character.png"},
	makes_footstep_sound = true,
	physical = true,		
	collide_with_objects = true,
	hp_max = 20,
	speed = 3, 
	range = 1.5, 	
	stepheight = 3.5,
	view_range = 55,	
})
   
--then the egg

mila:add_egg("milasteve:steve_minecraft", {
	description = "Minecraft Steve",
	inventory_image = "character.png",
	wield_image = "character.png",
})

mila:add_spawn("milasteve:steve_minecraft", {
	nodenames = {"default:dirt_with_grass"},
	neighbors = {"air"},
})