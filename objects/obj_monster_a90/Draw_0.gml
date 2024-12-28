draw_set_alpha(1)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)
randomize()
if (drawstatic = 2){
	draw_sprite_ext(spr_monster_a90_static, 0, (x - 640) - irandom_range(0, 3840), y - 360, 1, 1, 0, c_white, 1)
}
if (drawsign = 2){
	randomize()
	draw_sprite_ext(spr_monster_a90_sign, 0, obj_player.x + irandom_range(-2, 2), obj_player.y + irandom_range(-2, 2), 1, 1, 0, c_white, 1)
}
if (drawface = 2){
	draw_sprite_ext(spr_monster_a90, image_index, drawx, drawy, 3, 3, 0, c_white, 1)
}