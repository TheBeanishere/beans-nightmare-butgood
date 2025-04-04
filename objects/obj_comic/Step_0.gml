if (keyboard_check_pressed(vk_enter)){
	if (image_index >= image_number - 1){
		with instance_create_layer(0, 0, "blackfade", obj_blackfade){
			roomdes = other.roomgo
			screentypechange = "ingame"
		}
	obj_game.killedby = noone
	}else{
		image_index += 1
	}
}
	