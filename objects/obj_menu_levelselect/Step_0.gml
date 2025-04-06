if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))){
	if (obj_game.selectedlevel = 9){
		obj_game.selectedlevel = 0
	}else{
		obj_game.selectedlevel += 1
	}
}

if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))){
	if (obj_game.selectedlevel = 0){
		obj_game.selectedlevel = 9
	}else{
		obj_game.selectedlevel -= 1
	}
}