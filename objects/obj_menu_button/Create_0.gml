image_speed = 0
textalpha = 0
textoffset = 0
originx = x
offsetx = 0

if (menuchange = "levelselect"){
	if (!obj_game.WINattic){
		instance_destroy(self)
	}
}

//if (menuchange = "palette"){
//	locked = true
//}