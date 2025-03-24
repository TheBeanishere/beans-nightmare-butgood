if (collision_circle(x, y + 32, 40, obj_player, false, true) && !interacted){
	scr_loudnoise()
	interacted = true
	audio_play_sound(sfx_leverflip, 1, false, 1.3)
	obj_door_attic.progress += 1
	image_index = 1
	with (instance_create_layer(0, 0, "whitepain", obj_textpopup)){
		ini_open(lang)
		textsay = string(obj_door_attic.progress) + "/5 " + ini_read_string("gamestuff", "attic4", "ugh")
		ini_close()
	}
	if (obj_door_attic.progress = 5){
		ini_open(lang)
		global.objective = ini_read_string("gamestuff", "leave", "ugh")
		ini_close()
	}
}