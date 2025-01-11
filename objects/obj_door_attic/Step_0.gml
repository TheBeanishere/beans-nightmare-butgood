image_index =  progress
if (collision_circle(x, y, 150, obj_player, false, true)){
	if (!touched && progress < 5){
		with (instance_create_layer(0, 0, "whitepain", obj_textpopup)){
		textsay = "The door is locked."
		}
	}
	touched = true
}else{
	touched = false
}