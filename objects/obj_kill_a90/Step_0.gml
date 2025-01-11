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

lifetime += 1

if (lifetime > 60){
	if ((lifetime mod 12) = 0){
		randomize()
		audio_play_sound(sfx_kill_a90, 1,false, 1, 0, random_range(0.9, 1.05))
	}
}else{
	if ((lifetime mod 20) = 0){
		randomize()
		audio_play_sound(sfx_kill_a90, 1,false, 1, 0, random_range(0.9, 1.05))
	}
}