x = 640
y = 360

if (timer = 0){
	audio_play_sound(sfx_jokescare_1, 1, false)
}
if (timer = 45){
	audio_play_sound(sfx_jokescare_2, 1, false)
	image_index = 1
}
if (timer = 90){
	image_index = 2
}
if (timer = 120){
	audio_play_sound(sfx_jokescare_3, 1, false)
	image_index = 3
}
if (timer = 135){
	room_goto(MENU_gameover)
}

timer += 1
