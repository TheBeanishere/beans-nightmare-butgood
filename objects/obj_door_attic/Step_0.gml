image_index =  progress
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