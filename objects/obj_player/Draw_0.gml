draw_set_alpha(1)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)
pal_swap_set(spr_palette_beanie, global.palettebeanie, false);
draw_self()
pal_swap_reset()
if (flashlight){
	draw_sprite_ext(spr_overlay_darkness, 1, x, y, 0.75, 0.75, point_direction(x, y, mouse_x, mouse_y), c_white, flicker)
	if (flicker < 1){
		draw_sprite_ext(spr_overlay_darkness, 0, x - 16, y, 0.75, 0.75, 0, c_white, 1)
	}else{
		draw_sprite_ext(spr_overlay_darkness, 0, x - 16, y, 0.75, 0.75, 0, c_white, battery/5400)
	}
}else{
	//draw_sprite_ext(spr_overlay_darkness, 0, x - 16, y, 0.75, 0.75, 0, c_white, 1)
}
if (global.debug){
	draw_rectangle(bbox_right, bbox_top, bbox_left, bbox_bottom, true)
}
