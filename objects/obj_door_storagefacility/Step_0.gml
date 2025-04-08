image_index = progress
if (collision_circle(x, y, 50, obj_player, false, true) && !touched){
	if (progress >= 4){
		if (obj_game.WINstorage){
			with instance_create_layer(0, 0, "blackfade", obj_blackfade){
				roomdes = MENU_level
				screentypechange = "levelselect"
			}
			obj_game.selectedlevel = 2
		}else{
			obj_game.WINstorage = 1
			ini_open("sava1.txt")
			ini_write_real("wins", "storage", obj_game.WINstorage)
			ini_close()
			ini_open("save1.txt")
			scr_gamedataget()
			ini_close()
			with instance_create_layer(0, 0, "blackfade", obj_blackfade){
				roomdes = COMIC_wheatfield
				screentypechange = "ingame"
			}
		}
	}
}
if (collision_circle(x, y, 50, obj_player, false, true)){
	if (!touched && progress < 4){
		with (instance_create_layer(0, 0, "whitepain", obj_textpopup)){
			ini_open(lang)
			textsay = string(obj_door_storagefacility.progress) + "/4 " + ini_read_string("gamestuff", "storage3", "ugh")
			ini_close()
		}
	}
	touched = true
}else{
	touched = false
}