draw_set_alpha(1)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)
draw_self()
if (obj_game.MOD_switches){
	if (progress < 9){
		gpu_set_blendmode(bm_add)
		draw_sprite_ext(spr_whitelight, 0, x, y, 0.25, 0.1, 0, c_red, 0.25)
	}
}else{
	if (progress < 5){
		gpu_set_blendmode(bm_add)
		draw_sprite_ext(spr_whitelight, 0, x, y, 0.25, 0.1, 0, c_red, 0.25)
	}
}