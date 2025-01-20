image_index = progress
if (collision_circle(x, y, 50, obj_player, false, true) && !touched){
	if (progress >= 4){
		ini_open("playtestdata.ini")
		ini_write_real("save", "storagefacility", 1)
		obj_game.VICTORY_storagefacility = ini_read_real("save", "storagefacility", 0)
		ini_close()
		with instance_create_layer(0, 0, "blackfade", obj_blackfade){
			roomdes = WIN_valerix
			screentypechange = "win"
		}
	}
}
if (collision_circle(x, y, 50, obj_player, false, true)){
	if (!touched && progress < 4){
		with (instance_create_layer(0, 0, "whitepain", obj_textpopup)){
			textsay = "The gate needs power."
		}
	}
	touched = true
}else{
	touched = false
}