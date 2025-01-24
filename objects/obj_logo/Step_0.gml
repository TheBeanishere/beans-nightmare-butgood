x = 80 - offsetx
if (global.screentype = "levelselect"){
	offsetx += (-(offsetx - 450))/25
	if (keyboard_check_pressed(vk_up)){
		if (levelselect > 1){	
			levelselect -= 1
		}else{
			levelselect = 8
		}
	}
	if (keyboard_check_pressed(vk_down)){
		if (levelselect < 8){	
			levelselect += 1
		}else{
			levelselect = 1
		}
	}
}else{
	offsetx += (-(offsetx - 0))/25
}