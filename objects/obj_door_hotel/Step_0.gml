if (obj_game.MOD_switches){	
	image_index =  progress/1.75
}else{
	image_index = progress
}
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
		ini_open("playtestdata.ini")
		ini_write_real("save", "normal", 1)
		obj_game.VICTORY_normal = ini_read_real("save", "normal", 0)
		obj_game.VICTORY_modfier = ini_read_real("save", "modifier", 0)
		ini_close()
		with instance_create_layer(0, 0, "blackfade", obj_blackfade){
			roomdes = WIN_normal
			screentypechange = "win"
		}
	}
}