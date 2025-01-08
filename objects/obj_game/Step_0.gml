if (keyboard_check_pressed(vk_f4)){
	global.debug = !global.debug
}
if (keyboard_check_pressed(vk_f11)||keyboard_check_pressed(ord("F"))){
	window_set_fullscreen(!window_get_fullscreen())
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