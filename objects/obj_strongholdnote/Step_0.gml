if (collision_circle(x, y, 70, obj_player, false, true)){
	if (!touched){
		with (instance_create_layer(0, 0, "whitepain", obj_textpopup)){
			textsay = "The pink ball is very volatile, keep your distance."
			lifetimereduce = 0.25
		}
		with (instance_create_layer(0, 0, "whitepain", obj_textpopup)){
			textsay = "The orange brute is like a bull, bait his charge."
			lifetimereduce = 0.25
		}
	}
	touched = true
}else{
	touched = false
}