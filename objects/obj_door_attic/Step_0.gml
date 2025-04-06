image_index = progress
if (collision_circle(x, y, 150, obj_player, false, true)){
	if (!touched && progress < 5){
		with (instance_create_layer(0, 0, "whitepain", obj_textpopup)){
		ini_open(lang)
		textsay = ini_read_string("gamestuff", "attic3", "ugh")
		ini_close()
		}
	}
	touched = true
}else{
	touched = false
}
if (collision_circle(x, y, 70, obj_player, false, true)){	
	if (progress >= 5){
		if (obj_game.WINattic){
			with instance_create_layer(0, 0, "blackfade", obj_blackfade){
				roomdes = MENU_level
				screentypechange = "levelselect"
			}
			obj_game.selectedlevel = 0
		}else{
			obj_game.WINattic = 1
			ini_open("sava1.txt")
			ini_write_real("wins", "attic", obj_game.WINattic)
			ini_close()
			ini_open("save1.txt")
			scr_gamedataget("level")
			ini_close()
			with instance_create_layer(0, 0, "blackfade", obj_blackfade){
				roomdes = COMIC_stronghold
				screentypechange = "ingame"
			}
		}
	}
}