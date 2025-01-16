draw_set_alpha(1)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)
draw_sprite_ext(spr_white, 0, x, y, 1, 1, 0, #2e0d06, 1)
if (global.palettemathi = 0){
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1)
}else if (global.palettemathi = 1){
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, #F2ce18, 1)
}else if (global.palettemathi = 2){
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, #e5277f, 1)
}else if (global.palettemathi = 3){
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, #164bd6, 1)
}
