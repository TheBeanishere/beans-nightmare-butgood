draw_set_alpha(1)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)
pal_swap_set(spr_palette_valerix, global.palettevalerix, false);
draw_self()
pal_swap_reset()
if (place_meeting(x, y - 16, obj_solidcorn)){
	draw_sprite_ext(spr_monster_valerix_wheat, choose(0,1), x, y, image_xscale, image_yscale, image_angle, c_white, 1)
	draw_sprite_ext(spr_monster_valerix_wheat, choose(0,1), x + 12, y - 32, image_xscale, image_yscale, image_angle, c_white, 1)
	draw_sprite_ext(spr_monster_valerix_wheat, choose(0,1), x - 12, y, image_xscale, image_yscale, image_angle, c_white, 1)
}
if (instance_exists(obj_monster_a90)){
	if (obj_monster_a90.timer > 30){ 	
		randomize()
		draw_sprite_ext(spr_monster_a90_sign, obj_monster_a90.move, x + irandom_range(-2, 2), y + irandom_range(-2, 2), 0.45, 0.45, 0, c_white, 1)
	}
}
if (global.debug){
	draw_text(x, y - 50, string(state))
	draw_circle(x_target, y_target, 5, true)
	draw_circle(x, y, 350, true)
	draw_circle(x, y, 270, true)
	draw_line(x_target, y_target, x_target + 64, y_target)
	draw_line(x_target, y_target, x_target - 64, y_target)
	draw_line(x_target, y_target, x_target, y_target + 64)
	draw_line(x_target, y_target, x_target, y_target - 64)
	draw_path(path, x, y, true)
}