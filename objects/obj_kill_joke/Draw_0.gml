draw_set_alpha(1)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)
pal_swap_set(spr_palette_ava, global.paletteava, false);
draw_self()
pal_swap_reset()