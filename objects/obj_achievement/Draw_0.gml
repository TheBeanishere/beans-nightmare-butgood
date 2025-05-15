if (unlocked){
	draw_self()
	draw_sprite_ext(sprite_index, achievementID + 1, x, y, image_xscale, image_yscale, 0, c_white, 1)
}else{
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 0.3)
	draw_sprite_ext(sprite_index, achievementID + 1, x, y, image_xscale, image_yscale, 0, c_white, 0.1)
	draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, 0, c_white, 1)
}

if (unlocked){
	draw_set_font(Big)
	draw_text(x + (450 * image_xscale), y, achievename)
	draw_set_font(Medium)
	draw_text_ext(x + (450 * image_xscale), y + (100 * image_yscale), achievedesc, 14, 225)
}else{
	draw_set_font(Big)
	draw_text(x + (450 * image_xscale), y, "????")
	draw_set_font(Medium)
	draw_text_ext(x + (450 * image_xscale), y + (100 * image_yscale), achievedesc, 14, 225)
}