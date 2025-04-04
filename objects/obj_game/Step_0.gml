if (keyboard_check_pressed(vk_f4)){
	global.debug = !global.debug
}

if (keyboard_check_pressed(vk_f11)){
	window_set_fullscreen(!window_get_fullscreen())
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
	if (keyboard_check_pressed(ord("5"))){
		with instance_create_layer(0, 0, "blackfade", obj_blackfade){
			roomdes = LEVEL_hotel
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
				ini_open("savedata.ini")
				ini_write_real("palette", "beanie", global.palettebeanie)
				ini_close()
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettebeanie < 42){	
					global.palettebeanie += 1
				}else{
					global.palettebeanie = 0
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "beanie", global.palettebeanie)
				ini_close()
			}
		break;
		case 1:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettemanimo > 0){	
					global.palettemanimo -= 1
				}else{
					global.palettemanimo = 4
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "manimo", global.palettemanimo)
				ini_close()
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettemanimo < 4){	
					global.palettemanimo += 1
				}else{
					global.palettemanimo = 0
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "manimo", global.palettemanimo)
				ini_close()
			}
		break;
		case 6:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettevalerix > 0){	
					global.palettevalerix -= 1
				}else{
					global.palettevalerix = 4
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "valerix", global.palettevalerix)
				ini_close()
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettevalerix < 4){	
					global.palettevalerix += 1
				}else{
					global.palettevalerix = 0
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "valerix", global.palettevalerix)
				ini_close()
			}
		break;
		case 2:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettemathi > 0){	
					global.palettemathi -= 1
				}else{
					global.palettemathi = 4
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "mathi", global.palettemathi)
				ini_close()
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettemathi < 4){	
					global.palettemathi += 1
				}else{
					global.palettemathi = 0
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "mathi", global.palettemathi)
				ini_close()
			}
		break;
		case 3:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettepravi > 0){	
					global.palettepravi -= 1
				}else{
					global.palettepravi = 4
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "pravi", global.palettepravi)
				ini_close()
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettepravi < 4){	
					global.palettepravi += 1
				}else{
					global.palettepravi = 0
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "pravi", global.palettepravi)
				ini_close()
			}
		break;
		case 4:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettesports > 1){	
					global.palettesports -= 1
				}else{
					global.palettesports = 5
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "sports", global.palettesports)
				ini_close()
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettesports < 5){	
					global.palettesports += 1
				}else{
					global.palettesports = 1
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "sports", global.palettesports)
				ini_close()
			}
		break;
		case 5:
			if (keyboard_check_pressed(vk_up)){
				if (global.paletteava > 0){	
					global.paletteava -= 1
				}else{
					global.paletteava = 4
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "ava", global.paletteava)
				ini_close()
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.paletteava < 4){	
					global.paletteava += 1
				}else{
					global.paletteava = 0
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "ava", global.paletteava)
				ini_close()
			}
		break;
		case 7:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettedj > 1){	
					global.palettedj -= 1
				}else{
					global.palettedj = 5
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "dj", global.palettedj)
				ini_close()
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettedj < 5){	
					global.palettedj += 1
				}else{
					global.palettedj = 1
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "dj", global.palettedj)
				ini_close()
			}
		break;
		case 8:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettefather > 0){	
					global.palettefather -= 1
				}else{
					global.palettefather = 4
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "father", global.palettefather)
				ini_close()
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettefather < 4){	
					global.palettefather += 1
				}else{
					global.palettefather = 0
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "father", global.palettefather)
				ini_close()
			}
		break;
		case 9:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettejoetube > 1){	
					global.palettejoetube -= 1
				}else{
					global.palettejoetube = 5
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "joetube", global.palettejoetube)
				ini_close()
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettejoetube < 5){	
					global.palettejoetube += 1
				}else{
					global.palettejoetube = 1
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "joetube", global.palettejoetube)
				ini_close()
			}
		break;
		case 10:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettea90 > 0){	
					global.palettea90 -= 1
				}else{
					global.palettea90 = 4
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "a90", global.palettea90)
				ini_close()
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettea90 < 4){	
					global.palettea90 += 1
				}else{
					global.palettea90 = 0
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "a90", global.palettea90)
				ini_close()
			}
		break;
		case 11:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettecoconut > 0){	
					global.palettecoconut -= 1
				}else{
					global.palettecoconut = 4
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "coconut", global.palettecoconut)
				ini_close()
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettecoconut < 4){	
					global.palettecoconut += 1
				}else{
					global.palettecoconut = 0
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "coconut", global.palettecoconut)
				ini_close()
			}
		break;
		case 12:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettefusion > 0){	
					global.palettefusion -= 1
				}else{
					global.palettefusion = 4
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "fusion", global.palettefusion)
				ini_close()
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettefusion < 4){	
					global.palettefusion += 1
				}else{
					global.palettefusion = 0
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "fusion", global.palettefusion)
				ini_close()
			}
		break;
		case 13:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettecriminal > 0){	
					global.palettecriminal -= 1
				}else{
					global.palettecriminal = 4
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "criminal", global.palettecriminal)
				ini_close()
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettecriminal < 4){	
					global.palettecriminal += 1
				}else{
					global.palettecriminal = 0
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "criminal", global.palettecriminal)
				ini_close()
			}
		break;
		case 14:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettewillow > 0){	
					global.palettewillow -= 1
				}else{
					global.palettewillow = 4
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "willow", global.palettewillow)
				ini_close()
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettewillow < 4){	
					global.palettewillow += 1
				}else{
					global.palettewillow = 0
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "willow", global.palettewillow)
				ini_close()
			}
		break;
		case 15:
			if (keyboard_check_pressed(vk_up)){
				if (global.paletteroachy > 0){	
					global.paletteroachy -= 1
				}else{
					global.paletteroachy = 4
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "roachy", global.paletteroachy)
				ini_close()
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.paletteroachy < 4){	
					global.paletteroachy += 1
				}else{
					global.paletteroachy = 0
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "roachy", global.paletteroachy)
				ini_close()
			}
		break;
		case 16:
			if (keyboard_check_pressed(vk_up)){
				if (global.palettelydia > 0){	
					global.palettelydia -= 1
				}else{
					global.palettelydia = 4
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "lydia", global.palettelydia)
				ini_close()
			}
			if (keyboard_check_pressed(vk_down)){
				if (global.palettelydia < 4){	
					global.palettelydia += 1
				}else{
					global.palettelydia = 0
				}
				ini_open("savedata.ini")
				ini_write_real("palette", "lydia", global.palettelydia)
				ini_close()
			}
		break;
	}
}

if (global.screentype = "ingame" && 1 = 2){
	a90spawn -= 1
	if (a90spawn <= 0 && global.screentype = "ingame"){
		randomize()
		a90spawn = irandom_range(120, 120)
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

if (global.danger > 0){
	audio_sound_gain(chasemusic, musicvolume, 0)
	audio_sound_gain(calmmusic, 0, 0)
}else{
	audio_sound_gain(chasemusic, 0, 0)
	audio_sound_gain(calmmusic, musicvolume, 0)
}