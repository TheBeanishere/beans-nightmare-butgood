randomize()
shakex = choose(-3, 3)
shakey = choose(-3, 3)
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
if (round(image_index) = 8){
	if (!audio_is_playing(sfx_grab)){
		audio_play_sound(sfx_grab, 1, false, 1, 0, 0.7)
	}
	if (!audio_is_playing(sfx_kill_sports)){
		audio_play_sound(sfx_kill_sports, 1, false, 1, 0, 0.7)
	}
	shake = true
}
if (ceil(image_index) > 8){
	audio_sound_pitch(sfx_kill_sports, audio_sound_get_pitch(sfx_kill_sports) + 0.01)
	image_xscale += -(image_xscale - 1.35)/12
	image_yscale += -(image_yscale - 1.35)/12
}