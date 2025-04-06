draw_set_alpha(1)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)
draw_self()
if (progress >= 6){
	gpu_set_blendmode(bm_add)
	draw_sprite_ext(spr_whitelight, 0, x, y + 56, 0.65, 0.65, 0, c_orange, choose(0.45, 0.44, 0.46))
}