draw_set_alpha(1)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)
pal_swap_set(spr_palette_father, global.palettefather, false);
draw_self()
pal_swap_reset()
if (instance_exists(obj_monster_a90)){
	if (obj_monster_a90.timer > 30){ 	
		randomize()
		draw_sprite_ext(spr_monster_a90_sign, obj_monster_a90.move, x + irandom_range(-2, 2), y + irandom_range(-2, 2), 0.45, 0.45, 0, c_white, 1)
	}
}
if (global.debug){
	draw_circle(x_target, y_target, 15, true)
	draw_rectangle(bbox_right, bbox_top, bbox_left, bbox_bottom, true)
	draw_path(path, x, y, true)
}