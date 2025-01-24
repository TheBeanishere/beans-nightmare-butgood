if (keyboard_check_pressed(vk_f4)){
	global.debug = !global.debug
}

if (keyboard_check_pressed(vk_f11)){
	window_set_fullscreen(!window_get_fullscreen())
}

if (room = MENU_main){
	if (keyboard_check_pressed(ord("1"))){
		with instance_create_layer(0, 0, "blackfade", obj_blackfade){
			roomdes = LEVEL_attic
			screentypechange = "ingame"
		}
		killedby = noone
	}
	if (keyboard_check_pressed(ord("3"))){
		with instance_create_layer(0, 0, "blackfade", obj_blackfade){
			roomdes = LEVEL_storagefacility
			screentypechange = "ingame"
		}
		
		killedby = noone
	}
	if (keyboard_check_pressed(ord("4"))){
		with instance_create_layer(0, 0, "blackfade", obj_blackfade){
			roomdes = LEVEL_wheatfield
			screentypechange = "ingame"
		}
		
		killedby = noone
	}
	if (keyboard_check_pressed(ord("2"))){
		with instance_create_layer(0, 0, "blackfade", obj_blackfade){
			roomdes = LEVEL_stronghold
			screentypechange = "ingame"
		}
		killedby = noone
	}
	
}

if (room = MENU_gameover){
	if (keyboard_check_pressed(vk_enter)){
		with instance_create_layer(0, 0, "blackfade", obj_blackfade){
			roomdes = global.level
			screentypechange = "ingame"
		}
		global.screentype = "ingame"
	}
	if (keyboard_check_pressed(vk_escape)){
		with instance_create_layer(0, 0, "blackfade", obj_blackfade){
			roomdes = MENU_main
			screentypechange = "main"
		}
		global.screentype = "main"
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
			screentypechange = "main"
		}
		killedby = noone
	}
	if (keyboard_check_pressed(vk_right)){
		palettechoose += 1
	}
	if (keyboard_check_pressed(vk_left)){
		palettechoose -= 1
	}
	palettechoose = clamp(palettechoose, 0, 9)
	switch (palettechoose){
		case 0:
			if (keyboard_check_pressed(vk_up)){
				palettesizeshift = -0.2
				if (global.palettebeanie > 0){	
					global.palettebeanie -= 1
				}else{
					global.palettebeanie = 29
				}
			}
			if (keyboard_check_pressed(vk_down)){
				palettesizeshift = 0.2
				if (global.palettebeanie < 29){	
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
		case 6:
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
		case 2:
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
		case 3:
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
		case 4:
			if (keyboard_check_pressed(vk_up)){
				palettesizeshift = -0.2
				if (global.palettesports > 0){	
					global.palettesports -= 1
				}else{
					global.palettesports = 3
				}
			}
			if (keyboard_check_pressed(vk_down)){
				palettesizeshift = 0.2
				if (global.palettesports < 3){	
					global.palettesports += 1
				}else{
					global.palettesports = 0
				}
			}
		break;
		case 5:
			if (keyboard_check_pressed(vk_up)){
				palettesizeshift = -0.2
				if (global.paletteava > 0){	
					global.paletteava -= 1
				}else{
					global.paletteava = 3
				}
			}
			if (keyboard_check_pressed(vk_down)){
				palettesizeshift = 0.2
				if (global.paletteava < 3){	
					global.paletteava += 1
				}else{
					global.paletteava = 0
				}
			}
		break;
		case 7:
			if (keyboard_check_pressed(vk_up)){
				palettesizeshift = -0.2
				if (global.palettedj > 1){	
					global.palettedj -= 1
				}else{
					global.palettedj = 4
				}
			}
			if (keyboard_check_pressed(vk_down)){
				palettesizeshift = 0.2
				if (global.palettedj < 4){	
					global.palettedj += 1
				}else{
					global.palettedj = 1
				}
			}
		break;
		case 8:
			if (keyboard_check_pressed(vk_up)){
				palettesizeshift = -0.2
				if (global.palettefather > 0){	
					global.palettefather -= 1
				}else{
					global.palettefather = 3
				}
			}
			if (keyboard_check_pressed(vk_down)){
				palettesizeshift = 0.2
				if (global.palettefather < 3){	
					global.palettefather += 1
				}else{
					global.palettefather = 0
				}
			}
		break;
		case 9:
			if (keyboard_check_pressed(vk_up)){
				palettesizeshift = -0.2
				if (global.palettejoetube > 1){	
					global.palettejoetube -= 1
				}else{
					global.palettejoetube = 4
				}
			}
			if (keyboard_check_pressed(vk_down)){
				palettesizeshift = 0.2
				if (global.palettejoetube < 4){	
					global.palettejoetube += 1
				}else{
					global.palettejoetube = 1
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
if (room = initroom && objNekoPresenceDemo.ready){
	show_debug_message("Main menu")
	room_goto(MENU_main)
}
if (room = initroom){
	nekowait += 1
	if (nekofail && keyboard_check_pressed(vk_enter)){
		room_goto(MENU_main)
	}
	if (nekowait >= 450){
		nekofail = true
	}
}

if (global.danger > 0){
	audio_sound_gain(chasemusic, musicvolume, 0)
	audio_sound_gain(calmmusic, 0, 0)
}else{
	audio_sound_gain(chasemusic, 0, 0)
	audio_sound_gain(calmmusic, musicvolume, 0)
}