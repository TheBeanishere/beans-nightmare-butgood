draw_set_alpha(1)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)
draw_self()
if (completed){	
	draw_sprite_ext(spr_achieve_icon, achieveID, x, y, image_xscale, image_yscale, 0, image_blend, 1)
}else{
	draw_sprite_ext(spr_achieve_icon, 0, x, y, image_xscale, image_yscale, 0, image_blend, 1)
}
if (completed){
	draw_set_font(Big)
	draw_text(x + 110, y, COMPLETE_name)
	draw_set_font(Medium)
	draw_set_alpha(0.65)
	if (achieveID = 19||achieveID = 20){
		draw_text_ext(x + 110, y + 35, COMPLETE_desc + "\n" + flavour, 15, 250)
		draw_set_alpha(1)
		draw_text_ext(x + 110, y + 35, COMPLETE_desc, 15, 250)
	}else{
		draw_text_ext(x + 110, y + 35, COMPLETE_desc + "\n \n" + flavour, 15, 250)
		draw_set_alpha(1)
		draw_text_ext(x + 110, y + 35, COMPLETE_desc, 15, 250)
	}
}else{
	draw_set_font(Big)
	draw_text(x + 110, y, LOCKED_name)
	draw_set_font(Medium)
	draw_text_ext(x + 110, y + 40, LOCKED_desc, 15, 250)
}