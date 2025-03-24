if (collision_circle(x, y, 70, obj_player, false, true)){
	if (!touched){
		with (instance_create_layer(0, 0, "whitepain", obj_textpopup)){
			ini_open(lang)
			textsay = ini_read_string("gamestuff", "strongholdnote2", "ugh")
			ini_close()
			lifetimereduce = 0.25
		}
		with (instance_create_layer(0, 0, "whitepain", obj_textpopup)){
			ini_open(lang)
			textsay = ini_read_string("gamestuff", "strongholdnote1", "ugh")
			ini_close()
			lifetimereduce = 0.25
		}
	}
	touched = true
}else{
	touched = false
}