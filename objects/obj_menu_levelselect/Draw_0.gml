draw_set_alpha(1)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)
draw_self()
draw_set_font(Big)
if (locked){
	draw_sprite_ext(spr_menu_levelselect, 1, x, y, 1, 1, 0, c_white, 1)
}else{
	draw_sprite_ext(spr_menu_levelselect, levelid + 1, x, y, 1, 1, 0, c_white, 1)
}
draw_sprite_ext(spr_menu_levelselect, -1, x, y, 1, 1, 0, c_white, 1)
if (locked){
	draw_text_transformed(x - 300, y + 90, "LOCKED", 2, 2, 0)
}else{
	draw_text_transformed(x - 300, y + 90, levelname, 2, 2, 0)
}