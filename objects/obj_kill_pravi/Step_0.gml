randomize()
shakex = choose(-shakeamount, shakeamount)
shakey = choose(-shakeamount, shakeamount)
if (shake){
	shakeamount += 0.05
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
		audio_play_sound(sfx_kill_pravi, 1, false, 0.75)
	}
}

