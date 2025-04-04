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
		ini_open("savadata.ini")
		var _complete = ini_read_real("wins", "attic", 0)
		ini_write_real("wins", "attic", 1)
		scr_gamedataget("level")
		ini_close()
		if (_complete){
			with instance_create_layer(0, 0, "blackfade", obj_blackfade){
				roomdes = MENU_main
				screentypechange = "levelselect"
			}
		}else{
			with instance_create_layer(0, 0, "blackfade", obj_blackfade){
				roomdes = COMIC_stronghold
				screentypechange = "ingame"
			}
		}
	}
}