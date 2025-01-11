if (modifierID = 0){
	if (obj_game.MOD_valerix){
		image_alpha = 1
	}else{
		image_alpha = 0.55
	}
	if (collision_circle(mouse_x, mouse_y, 2, self, false, false)){
		if (mouse_check_button_pressed(mb_left)){
			obj_game.MOD_valerix = !obj_game.MOD_valerix
		}
	}
}
if (modifierID = 1){
	if (obj_game.MOD_a90){
		image_alpha = 1
	}else{
		image_alpha = 0.55
	}
	if (collision_circle(mouse_x, mouse_y, 2, self, false, false)){
		if (mouse_check_button_pressed(mb_left)){
			obj_game.MOD_a90 = !obj_game.MOD_a90
		}
	}
}
if (modifierID = 2){
	if (obj_game.MOD_switches){
		image_alpha = 1
	}else{
		image_alpha = 0.55
	}
	if (collision_circle(mouse_x, mouse_y, 2, self, false, false)){
		if (mouse_check_button_pressed(mb_left)){
			obj_game.MOD_switches = !obj_game.MOD_switches
		}
	}
}
if (modifierID = 3){
	if (obj_game.MOD_a90blue){
		image_alpha = 1
	}else{
		image_alpha = 0.55
	}
	if (collision_circle(mouse_x, mouse_y, 2, self, false, false)){
		if (mouse_check_button_pressed(mb_left)){
			obj_game.MOD_a90blue = !obj_game.MOD_a90blue
		}
	}
}
if (modifierID = 4){
	if (obj_game.MOD_manimen){
		image_alpha = 1
	}else{
		image_alpha = 0.55
	}
	if (collision_circle(mouse_x, mouse_y, 2, self, false, false)){
		if (mouse_check_button_pressed(mb_left)){
			obj_game.MOD_manimen = !obj_game.MOD_manimen
		}
	}
}
if (modifierID = 5){
	if (obj_game.MOD_fastmanimo){
		image_alpha = 1
	}else{
		image_alpha = 0.55
	}
	if (collision_circle(mouse_x, mouse_y, 2, self, false, false)){
		if (mouse_check_button_pressed(mb_left)){
			obj_game.MOD_fastmanimo = !obj_game.MOD_fastmanimo
		}
	}
}