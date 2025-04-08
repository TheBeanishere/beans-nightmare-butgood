draw_set_alpha(1)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)
draw_self()
draw_set_font(ReallyBig)
if (obj_game.selectedlevel = 0){
	ini_open(lang)
	var _minutes = floor((obj_game.atticTIME/60)/60)
	var _seconds = floor((obj_game.atticTIME/60) mod 60)
	var _frames = (obj_game.atticTIME mod 60)/60
	draw_text(950, 175, string(_minutes) + ":" + string(_seconds + _frames))
	draw_text(840, 40, ini_read_string("gamestuff", "attic0", "ugh"))
	draw_sprite_ext(spr_menu_levelselect, obj_game.selectedlevel + 1, x, y, image_xscale, image_yscale, 0, c_white, 1)
}else if (obj_game.selectedlevel = 1){
	if (obj_game.WINattic){
		var _minutes = floor((obj_game.strongholdTIME/60)/60)
		var _seconds = floor((obj_game.strongholdTIME/60) mod 60)
		var _frames = (obj_game.strongholdTIME mod 60)/60
		draw_text(950, 175, string(_minutes) + ":" + string(_seconds + _frames))
		draw_text(840, 40, ini_read_string("gamestuff", "stronghold0", "ugh"))
		draw_sprite_ext(spr_menu_levelselect, obj_game.selectedlevel + 1, x, y, image_xscale, image_yscale, 0, c_white, 1)
	}else{
		draw_text(950, 175, "N/A")
		draw_text(840, 40, ini_read_string("gamestuff", "levellock0", "ugh"))
		draw_sprite_ext(spr_menu_levelselect, obj_game.selectedlevel + 1, x, y, image_xscale, image_yscale, 0, c_white, 0.45)
		draw_sprite_ext(spr_menu_levelselect, 11, x, y, image_xscale, image_yscale, 0, c_white, 1)
	}
}else if (obj_game.selectedlevel = 2){
	if (obj_game.WINstronghold){
		var _minutes = floor((obj_game.storageTIME/60)/60)
		var _seconds = floor((obj_game.storageTIME/60) mod 60)
		var _frames = (obj_game.storageTIME mod 60)/60
		draw_text(950, 175, string(_minutes) + ":" + string(_seconds + _frames))
		draw_text(840, 40, ini_read_string("gamestuff", "storage0", "ugh"))
		draw_sprite_ext(spr_menu_levelselect, obj_game.selectedlevel + 1, x, y, image_xscale, image_yscale, 0, c_white, 1)
	}else{
		draw_text(950, 175, "N/A")
		draw_text(840, 40, ini_read_string("gamestuff", "levellock0", "ugh"))
		draw_sprite_ext(spr_menu_levelselect, obj_game.selectedlevel + 1, x, y, image_xscale, image_yscale, 0, c_white, 0.45)
		draw_sprite_ext(spr_menu_levelselect, 11, x, y, image_xscale, image_yscale, 0, c_white, 1)
	}
}else if (obj_game.selectedlevel = 3){
	if (obj_game.WINstorage){
		var _minutes = floor((obj_game.wheatfieldTIME/60)/60)
		var _seconds = floor((obj_game.wheatfieldTIME/60) mod 60)
		var _frames = (obj_game.wheatfieldTIME mod 60)/60
		draw_text(950, 175, string(_minutes) + ":" + string(_seconds + _frames))
		draw_text(840, 40, ini_read_string("gamestuff", "wheatfield0", "ugh"))
		draw_sprite_ext(spr_menu_levelselect, obj_game.selectedlevel + 1, x, y, image_xscale, image_yscale, 0, c_white, 1)
	}else{
		draw_text(950, 175, "N/A")
		draw_text(840, 40, ini_read_string("gamestuff", "levellock0", "ugh"))
		draw_sprite_ext(spr_menu_levelselect, obj_game.selectedlevel + 1, x, y, image_xscale, image_yscale, 0, c_white, 0.45)
		draw_sprite_ext(spr_menu_levelselect, 11, x, y, image_xscale, image_yscale, 0, c_white, 1)
	}
}else if (obj_game.selectedlevel = 4){
	if (obj_game.WINwheatfield){
		var _minutes = floor((obj_game.hotelTIME/60)/60)
		var _seconds = floor((obj_game.hotelTIME/60) mod 60)
		var _frames = (obj_game.hotelTIME mod 60)/60
		draw_text(950, 175, string(_minutes) + ":" + string(_seconds + _frames))
		draw_text(840, 40, ini_read_string("gamestuff", "hotel0", "ugh"))
		draw_sprite_ext(spr_menu_levelselect, obj_game.selectedlevel + 1, x, y, image_xscale, image_yscale, 0, c_white, 1)
	}else{
		draw_text(950, 175, "N/A")
		draw_text(840, 40, ini_read_string("gamestuff", "levellock0", "ugh"))
		draw_sprite_ext(spr_menu_levelselect, obj_game.selectedlevel + 1, x, y, image_xscale, image_yscale, 0, c_white, 0.45)
		draw_sprite_ext(spr_menu_levelselect, 11, x, y, image_xscale, image_yscale, 0, c_white, 1)
	}
}else if (obj_game.selectedlevel = 5){
	draw_text(840, 40, ini_read_string("gamestuff", "levellock1", "ugh"))
	draw_sprite_ext(spr_menu_levelselect, obj_game.selectedlevel + 1, x, y, image_xscale, image_yscale, 0, c_white, 0.45)
	draw_sprite_ext(spr_menu_levelselect, 11, x, y, image_xscale, image_yscale, 0, c_white, 1)
	//if (obj_game.WINhotel = 1){
	//	draw_text(840, 40, ini_read_string("gamestuff", "forest0", "ugh"))
	//	draw_sprite_ext(spr_menu_levelselect, obj_game.selectedlevel + 1, x, y, image_xscale, image_yscale, 0, c_white, 1)
	//}else{
	//	draw_text(840, 40, ini_read_string("gamestuff", "levellock0", "ugh"))
	//	draw_sprite_ext(spr_menu_levelselect, obj_game.selectedlevel + 1, x, y, image_xscale, image_yscale, 0, c_white, 0.45)
	//	draw_sprite_ext(spr_menu_levelselect, 11, x, y, image_xscale, image_yscale, 0, c_white, 1)
	//}
}else if (obj_game.selectedlevel = 6){
	draw_text(840, 40, ini_read_string("gamestuff", "levellock1", "ugh"))
	draw_sprite_ext(spr_menu_levelselect, obj_game.selectedlevel + 1, x, y, image_xscale, image_yscale, 0, c_white, 0.45)
	draw_sprite_ext(spr_menu_levelselect, 11, x, y, image_xscale, image_yscale, 0, c_white, 1)
	//if (obj_game.WINforest = 1){
	//	draw_text(840, 40, ini_read_string("gamestuff", "home0", "ugh"))
	//	draw_sprite_ext(spr_menu_levelselect, obj_game.selectedlevel + 1, x, y, image_xscale, image_yscale, 0, c_white, 1)
	//}else{
	//	draw_text(840, 40, ini_read_string("gamestuff", "levellock0", "ugh"))
	//	draw_sprite_ext(spr_menu_levelselect, obj_game.selectedlevel + 1, x, y, image_xscale, image_yscale, 0, c_white, 0.45)
	//	draw_sprite_ext(spr_menu_levelselect, 11, x, y, image_xscale, image_yscale, 0, c_white, 1)
	//}
}else if (obj_game.selectedlevel = 7){
	draw_text(840, 40, ini_read_string("gamestuff", "levellock1", "ugh"))
	draw_sprite_ext(spr_menu_levelselect, obj_game.selectedlevel + 1, x, y, image_xscale, image_yscale, 0, c_white, 0.45)
	draw_sprite_ext(spr_menu_levelselect, 11, x, y, image_xscale, image_yscale, 0, c_white, 1)
}else if (obj_game.selectedlevel = 8){
	draw_text(840, 40, ini_read_string("gamestuff", "levellock1", "ugh"))
	draw_sprite_ext(spr_menu_levelselect, obj_game.selectedlevel + 1, x, y, image_xscale, image_yscale, 0, c_white, 0.45)
	draw_sprite_ext(spr_menu_levelselect, 11, x, y, image_xscale, image_yscale, 0, c_white, 1)
}else if (obj_game.selectedlevel = 9){
	draw_text(840, 40, ini_read_string("gamestuff", "levellock1", "ugh"))
	draw_sprite_ext(spr_menu_levelselect, obj_game.selectedlevel + 1, x, y, image_xscale, image_yscale, 0, c_white, 0.45)
	draw_sprite_ext(spr_menu_levelselect, 11, x, y, image_xscale, image_yscale, 0, c_white, 1)
}