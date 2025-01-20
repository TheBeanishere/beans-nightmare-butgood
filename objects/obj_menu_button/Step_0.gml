x = originx + offsetx
if (keyboard_check_pressed(vk_escape)){
	global.screentype = "main"
}
if (global.screentype != submenu){
	if (submenu = "main"){
		offsetx += (-(offsetx + 256))/15
	}else{
		offsetx += (-(offsetx - 0))/15
	}
}else{
	if (submenu = "main"){
		offsetx += (-(offsetx - 0))/15
	}else{
		offsetx += (-(offsetx + 256))/15
	}
}
if (collision_point(mouse_x, mouse_y, self, false, false)){
	if (mouse_check_button_pressed(mb_left)){
		if (menuchange = "palette"){
			global.screentype = menuchange
			with instance_create_layer(0, 0, "blackfade", obj_blackfade){
				roomdes = MENU_palette
				alphagain = 1/90
				screentypechange = "menu"
			}
			audio_play_sound(mus_skibidistart, 1, false)
			obj_game.killedby = noone
			obj_game.palettechoose = 0
		}else{
			global.screentype = menuchange
		}
	}
	image_xscale += (-(image_xscale - 0.7))/8
	image_yscale += (-(image_yscale - 0.7))/8
	textalpha += (-(textalpha - 1))/12
	textoffset += (-(textoffset - 65))/12
}else{
	image_xscale += (-(image_xscale - 0.6))/8
	image_yscale += (-(image_yscale - 0.6))/8
	textalpha += (-(textalpha - 0))/12
	textoffset += (-(textoffset - 0))/12
}