if (progress < 6){	
	image_index = progress
}else if (!exploded && !touched){
	image_speed = 1
	if (image_index == 10){
		audio_play_sound_at(sfx_firewood_hiss, x, y, 0, 1000, 2000, 1, false, 1, 1)
	}
	if (image_index == 19){
		audio_play_sound_at(sfx_firewood_explode, x, y, 0, 1000, 2000, 1, false, 1, 0.7)
		audio_stop_sound(sfx_firewood_hiss)
	}
}
if (collision_circle(x, y, 50, obj_player, false, true)){
	if (!touched && progress < 6 && !carrying){
		with (instance_create_layer(0, 0, "whitepain", obj_textpopup)){
		ini_open(lang)
		textsay = ini_read_string("gamestuff", "wheatfield2", "ugh")
		ini_close()
		}
	}else if (!touched && progress < 6){
		progress += 1
		carrying = false
		image_index = progress
		audio_play_sound(sfx_firewood_place, 1, false)
		ini_open(lang)
		global.objective = ini_read_string("gamestuff", "wheatfield4", "ugh")
		ini_close()
		with (instance_create_layer(0, 0, "whitepain", obj_textpopup)){
			ini_open(lang)
			textsay = string(other.progress) + "/6 " + ini_read_string("gamestuff", "wheatfield3", "ugh")
			ini_close()
		}
	}
	touched = true
}else{
	touched = false
}
if (collision_circle(x, y - 32, 40, obj_player, false, true)){
	if (progress >= 6 && exploded){
		ini_open("playtestdata.ini")
		ini_write_real("save", "wheatfield", 1)
		obj_game.VICTORY_wheatfield = ini_read_real("save", "wheatfield", 0)
		ini_close()
		with instance_create_layer(0, 0, "blackfade", obj_blackfade){
			roomdes = WIN_valerix
			screentypechange = "win"
		}
	}
}