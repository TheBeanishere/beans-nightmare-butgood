randomize()
shakex = choose(-7, 7)
shakey = choose(-7, 7)
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
		audio_play_sound(sfx_kill_ava, 1, false, 1.35)
	}
}
if (round(image_index) > 14){
	shake = true
	image_xscale = choose(0.95, 1, 1.05, 1.1, 1.15, 1.2,1.25)
	image_yscale = choose(0.95, 1, 1.05, 1.1, 1.15, 1.2,1.25)
}