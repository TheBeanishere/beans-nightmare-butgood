pal_swap_set(spr_palette_pravi, global.palettepravi, false);
gpu_set_blendmode(bm_normal)
draw_self()
pal_swap_reset()
if (global.debug){
	draw_circle(x, y, 250, true)
}