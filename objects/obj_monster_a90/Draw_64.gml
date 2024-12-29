draw_set_alpha(1)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)
randomize()
if (drawstatic = 1){
	draw_sprite_ext(spr_monster_a90_static, move, 0 - irandom_range(0, 3840), 0, 1, 1, 0, c_white, 1)
}
if (drawsign = 1){
	randomize()
	draw_sprite_ext(spr_monster_a90_sign, move, 120 + irandom_range(-2, 2), 120 + irandom_range(-2, 2), 1, 1, 0, c_white, 1)
}
if (drawface = 1){
	draw_sprite_ext(spr_monster_a90, image_index, 640  + irandom_range(-2, 2), 360 + irandom_range(-2, 2), 3, 3, 0, c_white, 1)
}