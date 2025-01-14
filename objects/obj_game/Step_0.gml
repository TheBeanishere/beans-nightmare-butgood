if (keyboard_check_pressed(vk_f4)){
	global.debug = !global.debug
}

if (keyboard_check_pressed(vk_f11)){
	window_set_fullscreen(!window_get_fullscreen())
}

if (room = MENU_gameover){
	if (keyboard_check_pressed(vk_enter)){
		with instance_create_layer(0, 0, "blackfade", obj_blackfade){
			roomdes = global.level
		}
		global.screentype = "ingame"
		killedby = noone
	}
	if (keyboard_check_pressed(vk_escape)){
		with instance_create_layer(0, 0, "blackfade", obj_blackfade){
			roomdes = MENU_main
		}
		global.screentype = "menu"
		killedby = noone
	}
}

if (room = MENU_palette){
	if (palettesizeshift > 0){
		palettesizeshift -= 0.025
	}
	if (palettesizeshift < 0){
		palettesizeshift += 0.025
	}
	if (keyboard_check_pressed(vk_escape)){
		with instance_create_layer(0, 0, "blackfade", obj_blackfade){
			roomdes = MENU_main
		}
		global.screentype = "menu"
		killedby = noone
	}
	if (keyboard_check_pressed(vk_right)){
		palettechoose += 1
	}
	if (keyboard_check_pressed(vk_left)){
		palettechoose -= 1
	}
	palettechoose = clamp(palettechoose, 0, 4)
	switch (palettechoose){
		case 0:
			if (keyboard_check_pressed(vk_up)){
				palettesizeshift = -0.2
				if (global.palettebeanie > 0){	
					global.palettebeanie -= 1
				}else{
					global.palettebeanie = 17
				}
			}
			if (keyboard_check_pressed(vk_down)){
				palettesizeshift = 0.2
				if (global.palettebeanie < 17){	
					global.palettebeanie += 1
				}else{
					global.palettebeanie = 0
				}
			}
		break;
		case 1:
			if (keyboard_check_pressed(vk_up)){
				palettesizeshift = -0.2
				if (global.palettemanimo > 0){	
					global.palettemanimo -= 1
				}else{
					global.palettemanimo = 3
				}
			}
			if (keyboard_check_pressed(vk_down)){
				palettesizeshift = 0.2
				if (global.palettemanimo < 3){	
					global.palettemanimo += 1
				}else{
					global.palettemanimo = 0
				}
			}
		break;
		case 2:
			if (keyboard_check_pressed(vk_up)){
				palettesizeshift = -0.2
				if (global.palettevalerix > 0){	
					global.palettevalerix -= 1
				}else{
					global.palettevalerix = 3
				}
			}
			if (keyboard_check_pressed(vk_down)){
				palettesizeshift = 0.2
				if (global.palettevalerix < 3){	
					global.palettevalerix += 1
				}else{
					global.palettevalerix = 0
				}
			}
		break;
		case 3:
			if (keyboard_check_pressed(vk_up)){
				palettesizeshift = -0.2
				if (global.palettemathi > 0){	
					global.palettemathi -= 1
				}else{
					global.palettemathi = 3
				}
			}
			if (keyboard_check_pressed(vk_down)){
				palettesizeshift = 0.2
				if (global.palettemathi < 3){	
					global.palettemathi += 1
				}else{
					global.palettemathi = 0
				}
			}
		break;
		case 4:
			if (keyboard_check_pressed(vk_up)){
				palettesizeshift = -0.2
				if (global.palettepravi > 0){	
					global.palettepravi -= 1
				}else{
					global.palettepravi = 3
				}
			}
			if (keyboard_check_pressed(vk_down)){
				palettesizeshift = 0.2
				if (global.palettepravi < 3){	
					global.palettepravi += 1
				}else{
					global.palettepravi = 0
				}
			}
		break;
	}
}

if (global.screentype = "ingame" && MOD_a90){
	a90spawn -= 1
	if (a90spawn <= 0 && global.screentype = "ingame"){
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
	if (keyboard_check_pressed(ord("P"))){
		with instance_create_layer(0, 0, "blackfade", obj_blackfade){
			roomdes = MENU_palette
		}
		global.screentype = "menu"
		killedby = noone
		palettechoose = 0
	}
	if (keyboard_check_pressed(ord("1"))){
		with instance_create_layer(0, 0, "blackfade", obj_blackfade){
			roomdes = LEVEL_attic
		}
		global.screentype = "ingame"
		killedby = noone
	}
	if (keyboard_check_pressed(ord("2")) && VICTORY_normal){
		with instance_create_layer(0, 0, "blackfade", obj_blackfade){
			roomdes = LEVEL_wheatfield
		}
		global.screentype = "ingame"
		killedby = noone
	}
	if (keyboard_check(ord("Q")) && keyboard_check(ord("M"))){
		ini_open("playtestdata.ini")
		ini_write_real("save", "normal", 0)
		ini_write_real("save", "wheatfield", 0)
		ini_write_real("save", "modifier", 0)
		VICTORY_normal = ini_read_real("save", "normal", 0)
		VICTORY_wheatfield = ini_read_real("save", "wheatfield", 0)
		VICTORY_modifier = ini_read_real("save", "modifier", 0)
		ini_close()
		room_goto(MENU_main)
	}
}

if (global.danger > 0){
	audio_sound_gain(chasemusic, musicvolume, 0)
	audio_sound_gain(calmmusic, 0, 0)
}else{
	audio_sound_gain(chasemusic, 0, 0)
	audio_sound_gain(calmmusic, musicvolume, 0)
}