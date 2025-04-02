pal_swap_set(spr_palette_dj, global.palettedj, false);
if (obj_player.djness = 2){
	draw_sprite_ext(spr_dj_scare, 2, 0, 0, 1, 1, 0, c_white, 1)
	draw_sprite_ext(spr_dj_scare, 3, 0, 0, 1, 1, 0, c_white, 0.15)
}else if (obj_player.djness = 1){
	draw_sprite_ext(spr_dj_scare, 0, 0, 0, 1, 1, 0, c_white, 1)
	draw_sprite_ext(spr_dj_scare, 1, 0, 0, 1, 1, 0, c_white, 0.4)
}
pal_swap_reset()
if (!jammed){	
	draw_healthbar(0, 32, 250, 48, (((1800-battery)/1800)*100), c_black, c_white, c_white, 0, false, false)
}else{
	draw_healthbar(0, 32, 250, 48, (((1800-battery)/1800)*100), c_black, c_grey, c_grey, 0, false, false)
}