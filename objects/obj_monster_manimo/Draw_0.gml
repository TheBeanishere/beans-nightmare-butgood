draw_set_alpha(1)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)
pal_swap_set(spr_palette_manimo, global.palettemanimo, false);
draw_self()
pal_swap_reset()
if (instance_exists(obj_monster_a90)){
	if (obj_monster_a90.timer > 30){ 	
		randomize()
		draw_sprite_ext(spr_monster_a90_sign, obj_monster_a90.move, x + irandom_range(-2, 2), y + irandom_range(-2, 2), 0.45, 0.45, 0, c_white, 1)
	}
}
if (global.debug){
	draw_text(x, y - 50, string(state))
	draw_circle(x_target, y_target, 5, true)
	draw_line(x_target, y_target, x_target + 64, y_target)
	draw_line(x_target, y_target, x_target - 64, y_target)
	draw_line(x_target, y_target, x_target, y_target + 64)
	draw_line(x_target, y_target, x_target, y_target - 64)
	draw_path(path, x, y, true)
	draw_circle(x, y, awareness, true)
	var _x = lengthdir_x(eyesight, point_direction(x, y, obj_player.x, obj_player.y))
	var _y = lengthdir_y(eyesight, point_direction(x, y, obj_player.x, obj_player.y))
	draw_line(x, y, x + _x, y + _y)
}