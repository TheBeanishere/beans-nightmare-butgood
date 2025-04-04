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
		with instance_create_layer(0, 0, "blackfade", obj_blackfade){
			roomdes = WIN_normal
			screentypechange = "win"
		}
	}
}