draw_set_alpha(1)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)
pal_swap_set(spr_palette_mathi, global.palettemathi, false);
draw_self()
pal_swap_reset()
if (state = "wind"){
	if (global.palettemathi = 0){
		draw_set_color(#FF6a00)
	}else if (global.palettemathi = 1){
		draw_set_color(#F2ce18)
	}else if (global.palettemathi = 2){
		draw_set_color(#e5277f)
	}else if (global.palettemathi = 3){
		draw_set_color(#164bd6)
	}
	draw_line_width(x, y - 96, obj_player.x, obj_player.y + 32, 2 + (windtime/4.5))
	draw_set_color(c_white)
}
if (instance_exists(obj_monster_a90)){
	if (obj_monster_a90.timer > 30){ 	
		randomize()
		draw_sprite_ext(spr_monster_a90_sign, obj_monster_a90.move, x + irandom_range(-2, 2), y - 64+ irandom_range(-2, 2), 0.45, 0.45, 0, c_white, 1)
	}
}
if (global.debug){
	draw_text(x, y - 50, string(state))
	draw_circle(x_target, y_target, 15, true)
	draw_circle(x, y, 250, true)
	draw_line(x_target, y_target, x_target + 64, y_target)
	draw_line(x_target, y_target, x_target - 64, y_target)
	draw_line(x_target, y_target, x_target, y_target + 64)
	draw_line(x_target, y_target, x_target, y_target - 64)
	draw_rectangle(bbox_right, bbox_top, bbox_left, bbox_bottom, true)
	draw_path(path, x, y, true)
	draw_circle(x, y , 75, true)
	var _x = lengthdir_x(eyesight, point_direction(x, y, obj_player.x, obj_player.y))
	var _y = lengthdir_y(eyesight, point_direction(x, y, obj_player.x, obj_player.y))
	draw_line(x, y, x + _x, y + _y)
}