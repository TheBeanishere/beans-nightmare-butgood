randomize()
shakex = choose(-5, 5)
shakey = choose(-5, 5)
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
	}
}
if (round(image_index) = 13){
	shake = true
	if (!audio_is_playing(sfx_kill_dj)){
		audio_play_sound(sfx_kill_dj, 1, false, 3)
	}
}