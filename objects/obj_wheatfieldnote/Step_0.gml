if (collision_circle(x, y, 70, obj_player, false, true)){
	if (!touched){
		with (instance_create_layer(0, 0, "whitepain", obj_textpopup)){
			textsay = "try to run you down directly, scaring him off won't work then."
			lifetimereduce = 0.5
		}
		with (instance_create_layer(0, 0, "whitepain", obj_textpopup)){
			textsay = "If the cannibal horse attacks, scare him off, but be prepared for him to"
			lifetimereduce = 0.5
		}
	}
	touched = true
}else{
	touched = false
}