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
	}
}
if (round(image_index) = 11){
	shake = true
}
if (round(image_index) = 11){
	if (!audio_is_playing(sfx_kill_mathi)){
		audio_play_sound(sfx_grab, 1, false, 0.75, 0, 0.7)
		audio_play_sound(sfx_kill_mathi, 1, false, 0.75)
	}
}
if (round(image_index) = 18){
	if (!audio_is_playing(sfx_splat)){
		audio_play_sound(sfx_splat, 1, false, 0.75)
	}
}
