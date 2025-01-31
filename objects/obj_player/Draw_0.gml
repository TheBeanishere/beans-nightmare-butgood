draw_set_alpha(1)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)
pal_swap_set(spr_palette_beanie, global.palettebeanie, false);
draw_self()
if (key_scream){
	draw_sprite_ext(spr_beanie_scream, screamframe, x, y, image_xscale, image_yscale, 0, c_white, 1)
}
pal_swap_reset()
if (global.debug){
	draw_rectangle(bbox_right, bbox_top, bbox_left, bbox_bottom, true)
}
