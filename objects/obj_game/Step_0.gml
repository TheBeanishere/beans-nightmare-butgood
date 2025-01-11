if (keyboard_check_pressed(vk_f4)){
	global.debug = !global.debug
}

if (keyboard_check_pressed(vk_f11)||keyboard_check_pressed(ord("F"))){
	window_set_fullscreen(!window_get_fullscreen())
}

if (room = MENU_gameover){
	if (keyboard_check_pressed(vk_enter)){
		room_goto(LEVEL_attic)
		global.screentype = "ingame"
		killedby = noone
	}
}

if (room = MENU_achieve){
	if (mouse_wheel_down()){
		achievescroll -= 30
	}
	if (mouse_wheel_up()){
		achievescroll += 30
	}
	achievescroll = clamp(achievescroll, -700, 0)
}
if (room = initroom){
	room_goto(LEVEL_attic)
}

if (global.danger > 0){
	audio_sound_gain(mus_repression_chase, musicvolume, 0)
	audio_sound_gain(mus_repression_calm, 0, 0)
}else{
	audio_sound_gain(mus_repression_chase, 0, 0)
	audio_sound_gain(mus_repression_calm, musicvolume, 0)
}