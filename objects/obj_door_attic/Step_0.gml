if (obj_game.MOD_switches){	
	image_index =  progress/1.75
}else{
	image_index = progress
}
if (collision_circle(x, y, 150, obj_player, false, true)){
	if (obj_game.MOD_switches){	
		if (!touched && progress < 9){
			with (instance_create_layer(0, 0, "whitepain", obj_textpopup)){
			textsay = "The door is locked."
			}
		}
	}else{
		if (!touched && progress < 5){
			with (instance_create_layer(0, 0, "whitepain", obj_textpopup)){
			textsay = "The door is locked."
			}
		}
	}
	touched = true
}else{
	touched = false
}
if (collision_circle(x, y, 70, obj_player, false, true)){
	if (obj_game.MOD_switches){	
		if (progress >= 9){
			if (obj_game.MOD_switches && obj_game.MOD_a90 && obj_game.MOD_a90blue && obj_game.MOD_fastmanimo && obj_game.MOD_valerix && obj_game.MOD_manimen){
				global.screentype = "win"
				ini_open("playtestdata.ini")
				ini_write_real("save", "modifier", 1)
				obj_game.VICTORY_normal = ini_read_real("save", "normal", 0)
				obj_game.VICTORY_modifier = ini_read_real("save", "modifier", 0)
				ini_close()
				with instance_create_layer(0, 0, "blackfade", obj_blackfade){
					roomdes = WIN_valerix
				}
			}else{
				ini_open("playtestdata.ini")
				ini_write_real("save", "normal", 1)
				obj_game.VICTORY_normal = ini_read_real("save", "normal", 0)
				obj_game.VICTORY_modifier = ini_read_real("save", "modifier", 0)
				ini_close()
				global.screentype = "win"
				with instance_create_layer(0, 0, "blackfade", obj_blackfade){
					roomdes = WIN_normal
				}
			}
		}
	}else{
		if (progress >= 5){
			global.screentype = "win"
			ini_open("playtestdata.ini")
			ini_write_real("save", "normal", 1)
			obj_game.VICTORY_normal = ini_read_real("save", "normal", 0)
			obj_game.VICTORY_modfier = ini_read_real("save", "modifier", 0)
			ini_close()
			with instance_create_layer(0, 0, "blackfade", obj_blackfade){
				roomdes = WIN_normal
			}
		}
	}
}