draw_set_alpha(1)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)
draw_sprite_ext(spr_white, 0, x, y, 1, 1, 0, #2e0d06, 1)
pal_swap_set(spr_palette_father, global.palettefather, false);
draw_self()
pal_swap_reset()