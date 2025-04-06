draw_set_alpha(1)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)
draw_self()
draw_set_font(ReallyBig)
if (obj_game.selectedlevel = 0){
	ini_open(lang)
	draw_text(840, 40, ini_read_string("gamestuff", "attic0", "ugh"))
	draw_sprite_ext(spr_menu_levelselect, obj_game.selectedlevel + 1, x, y, image_xscale, image_yscale, 0, c_white, 1)
}else if (obj_game.selectedlevel = 1){
	if (atticwin = 1){
		draw_text(840, 40, ini_read_string("gamestuff", "stronghold0", "ugh"))
		draw_sprite_ext(spr_menu_levelselect, obj_game.selectedlevel + 1, x, y, image_xscale, image_yscale, 0, c_white, 1)
	}else{
		draw_text(840, 40, ini_read_string("gamestuff", "levellock0", "ugh"))
		draw_sprite_ext(spr_menu_levelselect, 11, x, y, image_xscale, image_yscale, 0, c_white, 1)
	}
}else if (obj_game.selectedlevel = 2){
	if (obj_game.WINstronghold = 1){
		draw_text(840, 40, ini_read_string("gamestuff", "storage0", "ugh"))
		draw_sprite_ext(spr_menu_levelselect, obj_game.selectedlevel + 1, x, y, image_xscale, image_yscale, 0, c_white, 1)
	}else{
		draw_text(840, 40, ini_read_string("gamestuff", "levellock0", "ugh"))
		draw_sprite_ext(spr_menu_levelselect, 11, x, y, image_xscale, image_yscale, 0, c_white, 1)
	}
}else if (obj_game.selectedlevel = 3){
	if (obj_game.WINstorage = 1){
		draw_text(840, 40, ini_read_string("gamestuff", "wheatfield0", "ugh"))
		draw_sprite_ext(spr_menu_levelselect, obj_game.selectedlevel + 1, x, y, image_xscale, image_yscale, 0, c_white, 1)
	}else{
		draw_text(840, 40, ini_read_string("gamestuff", "levellock0", "ugh"))
		draw_sprite_ext(spr_menu_levelselect, 11, x, y, image_xscale, image_yscale, 0, c_white, 1)
	}
}else if (obj_game.selectedlevel = 4){
	if (obj_game.WINwheatfield = 1){
		draw_text(840, 40, ini_read_string("gamestuff", "hotel0", "ugh"))
		draw_sprite_ext(spr_menu_levelselect, obj_game.selectedlevel + 1, x, y, image_xscale, image_yscale, 0, c_white, 1)
	}else{
		draw_text(840, 40, ini_read_string("gamestuff", "levellock0", "ugh"))
		draw_sprite_ext(spr_menu_levelselect, 11, x, y, image_xscale, image_yscale, 0, c_white, 1)
	}
}