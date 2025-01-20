if (collision_circle(x, y + 32, 40, obj_player, false, true) && !interacted){
	interacted = true
	image_index = 1
	audio_play_sound(sfx_generator_flip, 1, false)
	audio_play_sound_at(sfx_generator_buzz, x, y, 0, 500, 1000, 1, true, 1, 0.45)
	audio_play_sound(sfx_key_pickup, 1, false)
	with (instance_create_layer(0, 0, "whitepain", obj_textpopup)){
		textsay = string(obj_door_storagefacility.progress + 1) + "/4 Generators."
	}	
}
if (interacted){
	if (fill < 100){	
		fill += 0.25
	}
	if (fill = 99){
		scr_loudnoise()
		obj_door_storagefacility.progress += 1
		audio_play_sound_at(sfx_generator_beep, x, y, 0, 1000, 2000, 1, false, 1, 1, 0, 0.8)
		if (obj_door_storagefacility.progress = 4){
			global.objective = "Get to the exit."
		}
	}
}