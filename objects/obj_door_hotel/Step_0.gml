if (collision_circle(x, y, 150, obj_player, false, true)){
	if (!touched && obj_door_hotel_boiler.progress < 6){
		with (instance_create_layer(0, 0, "whitepain", obj_textpopup)){
		ini_open(lang)
		textsay = ini_read_string("gamestuff", "hotel2", "ugh")
		ini_close()
		}
	}
	touched = true
}else{
	touched = false
}
if (collision_circle(x, y, 130, obj_player, false, true)){	
	if (obj_door_hotel_boiler.progress >= 6){
		if (obj_game.WINhotel){
			with instance_create_layer(0, 0, "blackfade", obj_blackfade){
				roomdes = MENU_main
				screentypechange = "levelselect"
			}
			obj_game.selectedlevel = 4
		}else{
			ini_open("savadata.ini")
			ini_write_real("wins", "hotel", 1)
			scr_gamedataget("level")
			ini_close()
			with instance_create_layer(0, 0, "blackfade", obj_blackfade){
				roomdes = COMIC_stronghold
				screentypechange = "ingame"
			}
		}
	}
}

if (obj_door_hotel_boiler.progress = 6){
	sprite_index = spr_door_hotel_2
}