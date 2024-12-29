lifetime++

depth = obj_player.depth + 1
x = obj_player.x
y = obj_player.y

if (lifetime < 6){
	image_xscale += -(image_xscale - 0.3)/15
	image_yscale += -(image_yscale - 0.3)/15
}else{
	image_xscale += -(image_xscale - 0.15)/15
	image_yscale += -(image_yscale - 0.15)/15
}

if (lifetime = 15){
	instance_destroy(self)
}