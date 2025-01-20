image_index = progress
if (collision_circle(x, y, 50, obj_player, false, true) && !touched){
	if (progress >= 5){
		ini_open("playtestdata.ini")
		ini_write_real("save", "stronghold", 1)
		obj_game.VICTORY_stronghold = ini_read_real("save", "stronghold", 0)
		ini_close()
		with instance_create_layer(0, 0, "blackfade", obj_blackfade){
			roomdes = WIN_valerix
			screentypechange = "win"
		}
	}
}
if (collision_circle(x, y, 50, obj_player, false, true)){
	if (!touched && progress < 5 && !carrying){
		with (instance_create_layer(0, 0, "whitepain", obj_textpopup)){
			textsay = "The gate is locked."
		}
	}else if (!touched && progress < 5){
		progress += carrying
		carrying = 0
		image_index = progress
		audio_play_sound(sfx_key_use, 1, false)
		global.objective = "Find another key."
		with (instance_create_layer(0, 0, "whitepain", obj_textpopup)){
			textsay = string(other.progress) + "/5"+ " Keys"
		}
	}
	touched = true
}else{
	touched = false
}