draw_set_alpha(1)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)
pal_swap_set(spr_palette_beanie, global.palettebeanie, false);
draw_self()
pal_swap_reset()
if (global.debug){
	var _dir = point_direction(x, y, _mx, _my)
	var _x1 = lengthdir_x(750, _dir + 45)
	var _x2 = lengthdir_x(750, _dir - 45)
	var _y1 = lengthdir_y(750, _dir + 45)
	var _y2 = lengthdir_y(750, _dir - 45)
	draw_triangle(x, y, x + _x1, y + _y1, x + _x2, y + _y2, true)
	draw_rectangle(bbox_right, bbox_top, bbox_left, bbox_bottom, true)
}
