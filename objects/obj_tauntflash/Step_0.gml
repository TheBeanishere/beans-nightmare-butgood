lifetime++

x = obj_player.x
y = obj_player.y

if (lifetime < 6){
	image_xscale = 0.3
	image_yscale = 0.3
}else{
	image_xscale = 0.15
	image_yscale = 0.15
}

if (lifetime = 15){
	instance_destroy(self)
}