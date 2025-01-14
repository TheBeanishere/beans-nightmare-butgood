if (collision_circle(x, y + 32, 40, obj_player, false, true) && !interacted && !obj_door_wheatfield.carrying){
	interacted = true
	audio_play_sound(sfx_leverflip, 1, false, 1.3)
	obj_door_wheatfield.carrying = true
	image_index = 1
	audio_play_sound(sfx_firewood_pickup, 1, false)
	if (obj_door_wheatfield.progress = 6){
		global.objective = "Get to the exit."
	}else{
		global.objective = "Bring the firework to the gate."
	}
}