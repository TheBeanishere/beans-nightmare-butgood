if (collision_circle(x, y + 32, 40, obj_player, false, true) && !interacted && !obj_door_wheatfield.carrying){
	interacted = true
	obj_door_wheatfield.carrying = true
	image_index = 1
	audio_play_sound(sfx_firewood_pickup, 1, false)
	if (obj_door_wheatfield.progress = 6){
		ini_open(lang)
		global.objective = ini_read_string("gamestuff", "leave", "ugh")
		ini_close()
	}else{
		ini_open(lang)
		global.objective = ini_read_string("gamestuff", "wheatfield5", "ugh")
		ini_close()
	}
}