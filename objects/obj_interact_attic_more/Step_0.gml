if (collision_circle(x, y + 32, 40, obj_player, false, true) && !interacted){
	if (obj_game.MOD_switches){
		interacted = true
		audio_play_sound(sfx_leverflip, 1, false, 1.3)
		obj_door_attic.progress += 1
		image_index = 1
		with (instance_create_layer(0, 0, "whitepain", obj_textpopup)){
			textsay = string(obj_door_attic.progress) + "/9"+ " Levers"
		}
		if (obj_door_attic.progress = 9){
			global.objective = "Get to the exit."
		}
	}else{
		interacted = true
		audio_play_sound(sfx_leverflip, 1, false, 1.3)
		obj_door_attic.progress += 1
		image_index = 1
		with (instance_create_layer(0, 0, "whitepain", obj_textpopup)){
			textsay = string(obj_door_attic.progress) + "/5"+ " Levers"
		}
		if (obj_door_attic.progress = 5){
			global.objective = "Get to the exit."
		}
	}
}