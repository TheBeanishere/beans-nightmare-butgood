draw_set_alpha(1)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)
draw_self()
if (!locked){
	draw_sprite_ext(spr_menu_buttons, buttonid, x, y, image_xscale, image_yscale, 0, c_white, 1)
}else{
	draw_sprite_ext(spr_menu_buttons, 6, x, y, image_xscale, image_yscale, 0, c_white, 1)
}
draw_set_alpha(textalpha)
draw_set_font(Big)
if (!locked){	
	draw_text(x + textoffset, y - (25 * image_yscale), buttonname)
}else{
	draw_text(x + textoffset, y - (25 * image_yscale), "Locked")
}
draw_set_alpha(1)