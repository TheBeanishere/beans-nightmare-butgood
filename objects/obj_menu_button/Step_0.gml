x = originx + offsetx
if (global.screentype != submenu){
	if (submenu = "main"){
		offsetx += (-(offsetx + 256))/15
	}else{
		offsetx += (-(offsetx - 0))/15
	}
}else{
	if (submenu = "main"){
		offsetx += (-(offsetx - 0))/15
	}else{
	offsetx += (-(offsetx - 256))/15
	}
}
if (collision_point(mouse_x, mouse_y, self, false, false)){
	if (mouse_check_button_pressed(mb_left)){
		if (menuchange = "palette"){
			audio_stop_all()
			global.screentype = menuchange
			with instance_create_layer(0, 0, "blackfade", obj_blackfade){
				roomdes = MENU_palette
				alphagain = 1/90
				screentypechange = "palette"
			}
			audio_play_sound(mus_skibidistart, 1, false)
			obj_game.killedby = noone
			obj_game.palettechoose = 0
		}else if (menuchange = "new"){
			if (obj_game.WINattic){
				global.screentype = menuchange
			}else{
				with instance_create_layer(0, 0, "blackfade", obj_blackfade){
					roomdes = COMIC_attic
					screentypechange = "ingame"
				}
			}
		}else if (menuchange = "newconfirm"){
			obj_game.WINattic = false
			obj_game.WINstronghold = false
			obj_game.WINstorage = false
			obj_game.WINwheatfield = false
			obj_game.WINhotel = false
			obj_game.WINforest = false
			obj_game.WINhome = false
			with instance_create_layer(0, 0, "blackfade", obj_blackfade){
				roomdes = LEVEL_attic
				screentypechange = "ingame"
			}
		}else if (menuchange = "levelselect"){
			with instance_create_layer(0, 0, "blackfade", obj_blackfade){
				roomdes = MENU_level
				screentypechange = "ingame"
			}
		}else if(menuchange = "achievements"){
			scr_gamedataget()
			with instance_create_layer(0, 0, "blackfade", obj_blackfade){
				roomdes = MENU_achieve
				screentypechange = "menu"
			}
		}else if(menuchange = "dreamjournal"){
			scr_gamedataget()
			with instance_create_layer(0, 0, "blackfade", obj_blackfade){
				roomdes = MENU_journal
				screentypechange = "menu"
			}
		}else if(menuchange = "gamekill"){
			scr_gamedataget()
			game_end()
		}else{
			global.screentype = menuchange
		}
	}
	image_xscale += (-(image_xscale - 0.7))/8
	image_yscale += (-(image_yscale - 0.7))/8
	textalpha += (-(textalpha - 1))/12
	textoffset += (-(textoffset - 65))/12
}else{
	image_xscale += (-(image_xscale - 0.6))/8
	image_yscale += (-(image_yscale - 0.6))/8
	textalpha += (-(textalpha - 0))/12
	textoffset += (-(textoffset - 0))/12
}