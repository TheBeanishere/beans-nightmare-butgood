if (collision_circle(x, y + 48, 150, obj_player, false, true)){
	if (!touched && progress < 6 && !carrying){
		with (instance_create_layer(0, 0, "whitepain", obj_textpopup)){
		ini_open(lang)
		textsay = ini_read_string("gamestuff", "hotel3", "ugh")
		ini_close()
		}
	}else if (!touched && progress < 6){
		progress += 1
		carrying = false
		image_index = progress
		audio_play_sound(sfx_boiler_CLANG, 1, false, 1.2)
		ini_open(lang)
		global.objective = ini_read_string("gamestuff", "hotel4", "ugh")
		ini_close()
		with (instance_create_layer(0, 0, "whitepain", obj_textpopup)){
			ini_open(lang)
			textsay = string(other.progress) + "/6 " + ini_read_string("gamestuff", "hotel1", "ugh")
			ini_close()
		}
		if (progress >= 6){
			ini_open(lang)
			global.objective = ini_read_string("gamestuff", "leave", "ugh")
			ini_close()
		}
	}
	touched = true
}else{
	touched = false
}

if (progress = 6){
	sprite_index = spr_door_hotel_4
	if (!audio_is_playing(sfx_boiler_fire)){
		audio_play_sound_at(sfx_boiler_fire, x, y, 0, 1000, 2000, 1, false, 1, 1)
	}
}