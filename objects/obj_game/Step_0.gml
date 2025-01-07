if (keyboard_check_pressed(vk_f4)){
	global.debug = !global.debug
}
if (keyboard_check_pressed(vk_f11)||keyboard_check_pressed(ord("F"))){
	window_set_fullscreen(!window_get_fullscreen())
}