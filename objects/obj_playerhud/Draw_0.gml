draw_set_alpha(1)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)
if (obj_player.flashlight){
	draw_sprite_ext(spr_overlay_darkness, 1, obj_player.x, obj_player.y, 0.75, 0.75, point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y), c_white, obj_player.flicker)
	if (obj_player.flicker < 1){
		draw_sprite_ext(spr_overlay_darkness, 0, obj_player.x - 16, obj_player.y, 0.75, 0.75, 0, c_white, 1)
	}else{
		draw_sprite_ext(spr_overlay_darkness, 0, obj_player.x - 16, obj_player.y, 0.75, 0.75, 0, c_white, obj_player.battery/5400)
	}
}else{
	draw_sprite_ext(spr_overlay_darkness, 0, obj_player.x - 16, obj_player.y, 0.75, 0.75, 0, c_white, 1)
}