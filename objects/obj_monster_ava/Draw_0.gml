draw_set_alpha(1)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)
pal_swap_set(spr_palette_ava, global.paletteava, false);
draw_self()
draw_sprite_ext(spr_monster_ava_eye, (direction/360)*4, x, y, abs(image_xscale), image_yscale, 0, c_white, 1)
var _x1 = lengthdir_x(eyesight, direction - 65)
var _x2 = lengthdir_x(eyesight, direction + 65)
var _y1 = lengthdir_y(eyesight, direction - 65)
var _y2 = lengthdir_y(eyesight, direction + 65)
draw_set_alpha(0.55)
gpu_set_blendmode(bm_add)
draw_triangle_color(x, y - 145, x + _x1, y + _y1, x + _x2, y + _y2, #7f33cb, #7f33cb, #7f33cb, false)
pal_swap_reset()
gpu_set_blendmode(bm_normal)
draw_set_alpha(1)
if (instance_exists(obj_monster_a90)){
	if (obj_monster_a90.timer > 30){ 	
		randomize()
		draw_sprite_ext(spr_monster_a90_sign, obj_monster_a90.move, x + irandom_range(-2, 2), y + irandom_range(-2, 2), 0.45, 0.45, 0, c_white, 1)
	}
}
if (global.debug){
	draw_text(x, y - 50, string(state))
	draw_circle(x_target, y_target, 15, true)
	draw_line(x_target, y_target, x_target + 64, y_target)
	draw_line(x_target, y_target, x_target - 64, y_target)
	draw_line(x_target, y_target, x_target, y_target + 64)
	draw_line(x_target, y_target, x_target, y_target - 64)
	draw_rectangle(bbox_right, bbox_top, bbox_left, bbox_bottom, true)
	draw_path(path, x, y, true)
	draw_circle(x, y - 45, 60, true)
}