randomize()
shakex = choose(-2, 2)
shakey = choose(-2, 2)
if (shake){
	x = 640 + shakex
	y = 360 + shakey
}else{
	x = 640
	y = 360
}

if (round(image_index) = 0){
	if (!audio_is_playing(mus_jumpingscare)){
		audio_play_sound(mus_deathsting, 1, false, 1.25)
		audio_play_sound(mus_jumpingscare, 1, false, 0.75)
		audio_play_sound(sfx_father_approach, 1, false, 1.5)
	}
}
if (round(image_index) = 3){
	if (!audio_is_playing(sfx_grab)){
		audio_play_sound(sfx_grab, 1, false, 1, 0, 0.65)
	}
}
if (round(image_index) = 15){
	if (!audio_is_playing(sfx_kill_father)){
		audio_play_sound(sfx_kill_father, 1, false, 5)
	}
	shake = true
}