image_index = progress
if (collision_circle(x, y, 50, obj_player, false, true) && !touched){
	if (progress >= 5){
		if (obj_game.WINstronghold){
			with instance_create_layer(0, 0, "blackfade", obj_blackfade){
				roomdes = MENU_level
				screentypechange = "levelselect"
			}
			obj_game.selectedlevel = 1
		}else{
			obj_game.WINstronghold = 1
			ini_open("sava1.txt")
			ini_write_real("wins", "stronghold", obj_game.WINstronghold)
			ini_close()
			ini_open("save1.txt")
			scr_gamedataget("level")
			ini_close()
			with instance_create_layer(0, 0, "blackfade", obj_blackfade){
				roomdes = COMIC_storage
				screentypechange = "ingame"
			}
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
		ini_open(lang)
		global.objective = ini_read_string("gamestuff", "stronghold2", "ugh")
		ini_close()
		with (instance_create_layer(0, 0, "whitepain", obj_textpopup)){
			textsay = string(other.progress) + "/5"+ " Keys"
		}
	}
	touched = true
}else{
	touched = false
}