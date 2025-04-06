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
		if (obj_game.WINwheatfield){
			with instance_create_layer(0, 0, "blackfade", obj_blackfade){
				roomdes = MENU_level
				screentypechange = "levelselect"
			}
			obj_game.selectedlevel = 3
		}else{
			obj_game.WINwheatfield = 1
			ini_open("sava1.txt")
			ini_write_real("wins", "wheatfield", obj_game.WINwheatfield)
			ini_close()
			ini_open("save1.txt")
			scr_gamedataget("level")
			ini_close()
			with instance_create_layer(0, 0, "blackfade", obj_blackfade){
				roomdes = COMIC_hotel
				screentypechange = "ingame"
			}
		}
	}
}