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

if (global.screentype = "ingame" && MOD_a90){
	a90spawn -= 1
	if (a90spawn <= 0){
		randomize()
		a90spawn = irandom_range(900, 1200)
		instance_create_layer(0, 0, "a90", obj_monster_a90)
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
	room_goto(MENU_main)
}

if (room = MENU_main){
	if (keyboard_check_pressed(vk_enter)){
		room_goto(LEVEL_attic)
		global.screentype = "ingame"
		killedby = noone
	}
	if (keyboard_check(ord("Q")) && keyboard_check(ord("M"))){
		ini_open("playtestdata.ini")
		ini_write_real("save", "normal", 0)
		ini_write_real("save", "modifier", 0)
		VICTORY_normal = ini_read_real("save", "normal", 0)
		VICTORY_modifier = ini_read_real("save", "modifier", 0)
		ini_close()
		room_goto(MENU_main)
	}
}

if (global.danger > 0){
	audio_sound_gain(mus_repression_chase, musicvolume, 0)
	audio_sound_gain(mus_repression_calm, 0, 0)
}else{
	audio_sound_gain(mus_repression_chase, 0, 0)
	audio_sound_gain(mus_repression_calm, musicvolume, 0)
}