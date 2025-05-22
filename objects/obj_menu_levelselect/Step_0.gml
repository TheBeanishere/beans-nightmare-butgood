if (keyboard_check_pressed(vk_escape)){
	with instance_create_layer(0, 0, "blackfade", obj_blackfade){
		roomdes = MENU_main
		screentypechange = "main"
	}
	obj_game.killedby = noone
}
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
if (keyboard_check_pressed(vk_enter)){
	if (obj_game.selectedlevel = 0){
		with instance_create_layer(0, 0, "blackfade", obj_blackfade){
			roomdes = COMIC_attic
			screentypechange = "ingame"
		}
		obj_game.killedby = noone
	}else if (obj_game.selectedlevel = 1){
		if (obj_game.WINattic){
			with instance_create_layer(0, 0, "blackfade", obj_blackfade){
				roomdes = COMIC_stronghold
				screentypechange = "ingame"
			}
			obj_game.killedby = noone
		}
	}else if (obj_game.selectedlevel = 2){
		if (obj_game.WINstronghold){
			with instance_create_layer(0, 0, "blackfade", obj_blackfade){
				roomdes = COMIC_storage
				screentypechange = "ingame"
			}
			obj_game.killedby = noone
		}
	}else if (obj_game.selectedlevel = 3){
		if (obj_game.WINstorage){
			with instance_create_layer(0, 0, "blackfade", obj_blackfade){
				roomdes = COMIC_wheatfield
				screentypechange = "ingame"
			}
			obj_game.killedby = noone
		}
	}else if (obj_game.selectedlevel = 4){
		if (obj_game.WINwheatfield){
			with instance_create_layer(0, 0, "blackfade", obj_blackfade){
				roomdes = COMIC_hotel
				screentypechange = "ingame"
			}
			obj_game.killedby = noone
		}
	}else if (obj_game.selectedlevel = 9){
		with instance_create_layer(0, 0, "blackfade", obj_blackfade){
			roomdes = MENU_custom
			screentypechange = "custommenu"
		}
		obj_game.killedby = noone
	}
}