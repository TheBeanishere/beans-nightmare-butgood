if (keyboard_check_pressed(vk_f4)){
	global.debug = !global.debug
}

if (keyboard_check_pressed(vk_f11)){
	window_set_fullscreen(!window_get_fullscreen())
}

if (global.screentype = "ingame"){
	if (global.danger > 0){
		audio_sound_gain(chasemusic, musicvolume, 1)
		audio_sound_gain(calmmusic, 0, 1)
	}else{
		audio_sound_gain(chasemusic, 0, 1)
		audio_sound_gain(calmmusic, musicvolume, 1)
	}
}

if (room = bootroom){
	boottime += 1
	if (keyboard_check_pressed(vk_enter)){
		if (boottime < 300){
			boottime = 300
		}else{
			boottime += 150
		}
	}
	if (boottime > 599){
		room_goto(MENU_main)
	}
}

if (room = MENU_main){
	//if (keyboard_check_pressed(ord("1"))){
	//	with instance_create_layer(0, 0, "blackfade", obj_blackfade){
	//		roomdes = COMIC_attic
	//		screentypechange = "ingame"
	//	}
	//	killedby = noone
	//}
	//if (keyboard_check_pressed(ord("3"))){
	//	with instance_create_layer(0, 0, "blackfade", obj_blackfade){
	//		roomdes = LEVEL_storagefacility
	//		screentypechange = "ingame"
	//	}
		
	//	killedby = noone
	//}
	//if (keyboard_check_pressed(ord("5"))){
	//	with instance_create_layer(0, 0, "blackfade", obj_blackfade){
	//		roomdes = LEVEL_hotel
	//		screentypechange = "ingame"
	//	}
		
	//	killedby = noone
	//}
	//if (keyboard_check_pressed(ord("4"))){
	//	with instance_create_layer(0, 0, "blackfade", obj_blackfade){
	//		roomdes = LEVEL_wheatfield
	//		screentypechange = "ingame"
	//	}
		
	//	killedby = noone
	//}
	//if (keyboard_check_pressed(ord("2"))){
	//	with instance_create_layer(0, 0, "blackfade", obj_blackfade){
	//		roomdes = COMIC_stronghold
	//		screentypechange = "ingame"
	//	}
	//	killedby = noone
	//}
	if (keyboard_check_pressed(ord("0"))){
		with instance_create_layer(0, 0, "blackfade", obj_blackfade){
			roomdes = LEVEL_test
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
	palettechoose = clamp(palettechoose, 0, 16)
	switch (palettechoose){
		case 0:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettebeanie > 0){	
					global.palettebeanie -= 1
				}else{
					global.palettebeanie = 42
				}
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettebeanie < 42){	
					global.palettebeanie += 1
				}else{
					global.palettebeanie = 0
				}
			}
		break;
		case 1:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettemanimo > 0){	
					global.palettemanimo -= 1
				}else{
					global.palettemanimo = 4
				}
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettemanimo < 4){	
					global.palettemanimo += 1
				}else{
					global.palettemanimo = 0
				}
			}
		break;
		case 6:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettevalerix > 0){	
					global.palettevalerix -= 1
				}else{
					global.palettevalerix = 4
				}
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettevalerix < 4){	
					global.palettevalerix += 1
				}else{
					global.palettevalerix = 0
				}
			}
		break;
		case 2:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettemathi > 0){	
					global.palettemathi -= 1
				}else{
					global.palettemathi = 4
				}
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettemathi < 4){	
					global.palettemathi += 1
				}else{
					global.palettemathi = 0
				}
			}
		break;
		case 3:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettepravi > 0){	
					global.palettepravi -= 1
				}else{
					global.palettepravi = 4
				}
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettepravi < 4){	
					global.palettepravi += 1
				}else{
					global.palettepravi = 0
				}
			}
		break;
		case 4:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettesports > 1){	
					global.palettesports -= 1
				}else{
					global.palettesports = 5
				}
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettesports < 5){	
					global.palettesports += 1
				}else{
					global.palettesports = 1
				}
			}
		break;
		case 5:
			if (keyboard_check_pressed(vk_up)){
				if (global.paletteava > 0){	
					global.paletteava -= 1
				}else{
					global.paletteava = 4
				}
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.paletteava < 4){	
					global.paletteava += 1
				}else{
					global.paletteava = 0
				}
			}
		break;
		case 7:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettedj > 1){	
					global.palettedj -= 1
				}else{
					global.palettedj = 5
				}
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettedj < 5){	
					global.palettedj += 1
				}else{
					global.palettedj = 1
				}
			}
		break;
		case 8:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettefather > 0){	
					global.palettefather -= 1
				}else{
					global.palettefather = 4
				}
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettefather < 4){	
					global.palettefather += 1
				}else{
					global.palettefather = 0
				}
			}
		break;
		case 9:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettejoetube > 1){	
					global.palettejoetube -= 1
				}else{
					global.palettejoetube = 5
				}
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettejoetube < 5){	
					global.palettejoetube += 1
				}else{
					global.palettejoetube = 1
				}
			}
		break;
		case 10:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettea90 > 0){	
					global.palettea90 -= 1
				}else{
					global.palettea90 = 4
				}
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettea90 < 4){	
					global.palettea90 += 1
				}else{
					global.palettea90 = 0
				}
			}
		break;
		case 11:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettecoconut > 0){	
					global.palettecoconut -= 1
				}else{
					global.palettecoconut = 4
				}
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettecoconut < 4){	
					global.palettecoconut += 1
				}else{
					global.palettecoconut = 0
				}
			}
		break;
		case 12:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettefusion > 0){	
					global.palettefusion -= 1
				}else{
					global.palettefusion = 4
				}
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettefusion < 4){	
					global.palettefusion += 1
				}else{
					global.palettefusion = 0
				}
			}
		break;
		case 13:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettecriminal > 0){	
					global.palettecriminal -= 1
				}else{
					global.palettecriminal = 4
				}
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettecriminal < 4){	
					global.palettecriminal += 1
				}else{
					global.palettecriminal = 0
				}
			}
		break;
		case 14:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettewillow > 0){	
					global.palettewillow -= 1
				}else{
					global.palettewillow = 4
				}
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettewillow < 4){	
					global.palettewillow += 1
				}else{
					global.palettewillow = 0
				}
			}
		break;
		case 15:
			if (keyboard_check_pressed(vk_up)){
				if (global.paletteroachy > 0){	
					global.paletteroachy -= 1
				}else{
					global.paletteroachy = 4
				}
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.paletteroachy < 4){	
					global.paletteroachy += 1
				}else{
					global.paletteroachy = 0
				}
			}
		break;
		case 16:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettelydia > 0){	
					global.palettelydia -= 1
				}else{
					global.palettelydia = 4
				}
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettelydia < 4){	
					global.palettelydia += 1
				}else{
					global.palettelydia = 0
				}
			}
		break;
	}
}

if (global.screentype = "ingame"){
	if (room = LEVEL_attic){
		atticTIME += 1
	}
	if (room = LEVEL_stronghold){
		strongholdTIME += 1
	}
	if (room = LEVEL_storagefacility){
		storageTIME += 1
	}
	if (room = LEVEL_wheatfield){
		wheatfieldTIME += 1
	}
	if (room = LEVEL_hotel){
		hotelTIME += 1
	}
	if (room = LEVEL_forest){
		forestTIME += 1
	}
	if (room = LEVEL_home){
		homeTIME += 1
	}
//	a90spawn -= 1
//	if (a90spawn <= 0 && global.screentype = "ingame"){
//		randomize()
//		a90spawn = irandom_range(120, 120)
//		instance_create_layer(0, 0, "a90", obj_monster_a90)
//	}
}

if (room = MENU_journal){
	if (keyboard_check_pressed(vk_escape)){
		with instance_create_layer(0, 0, "blackfade", obj_blackfade){
			roomdes = MENU_main
			screentypechange = "main"
		}
		killedby = noone
	}
}

if (room = MENU_custom){
	if (customcombotime > -1){
		customcombotime -= 1
	}
	if (customcombotime = 0){
		customcombo = 0
	}
	if (mouse_wheel_down()){
		customscroll -= 15
	}
	if (mouse_wheel_up()){
		customscroll += 15
	}
	customscroll = clamp(customscroll, -200, 0)
}

if (room = MENU_achieve){
	if (keyboard_check_pressed(vk_escape)){
		with instance_create_layer(0, 0, "blackfade", obj_blackfade){
			roomdes = MENU_main
			screentypechange = "main"
		}
	}
	if (mouse_wheel_down()){
		achievescroll -= 60
	}
	if (mouse_wheel_up()){
		achievescroll += 60
	}
	achievescroll = clamp(achievescroll, -2800, 0)
}
if (room = initroom && objNekoPresenceDemo.ready){
	room_goto(bootroom)
}
if (room = initroom){
	nekowait += 1
	if (nekofail && keyboard_check_pressed(vk_enter)){
		room_goto(bootroom)
	}
	if (nekowait >= 450){
		nekofail = true
	}
}