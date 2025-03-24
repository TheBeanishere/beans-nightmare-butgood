if (collision_circle(x, y + 32, 40, obj_player, false, true) && !interacted){
	interacted = true
	obj_door_stronghold.carrying += 1
	image_index = 0
	audio_play_sound(sfx_key_pickup, 1, false)
	with (instance_create_layer(0, 0, "whitepain", obj_textpopup)){
		ini_open(lang)
		textsay = string(obj_door_stronghold.carrying + obj_door_stronghold.progress) + "/5 " + ini_read_string("gamestuff", "stronghold3", "ugh")
		ini_close()
		textsay = string(obj_door_stronghold.carrying + obj_door_stronghold.progress) + "/5 Keys."
	}
	if (obj_door_stronghold.progress = 5){
		ini_open(lang)
		global.objective = ini_read_string("gamestuff", "leave", "ugh")
		ini_close()
	}else{
		ini_open(lang)
		global.objective = ini_read_string("gamestuff", "stronghold4", "ugh")
		ini_close()
	}
}