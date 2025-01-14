image_speed = 0
image_index = which
if (which = 1){
	if (!obj_game.VICTORY_wheatfield){
		instance_destroy(self)
	}
}
if (which = 0){
	if (!obj_game.VICTORY_normal){
		instance_destroy(self)
	}
}