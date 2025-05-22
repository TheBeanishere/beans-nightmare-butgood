if (global.screentype = "ingame"){
	draw_set_font(Big)
	draw_set_alpha(1)
	draw_text(0, 0, global.objective)
}
if (room = MENU_journal){
	draw_set_font(Big)
	draw_sprite(spr_collectibles, 0, 0, 0)
	draw_sprite_ext(spr_collectibles, choose(1, 2, 3, 2), 0, 0, 1, 1, 0, c_white, 0.6)
	draw_text_ext(640, 90, "Collect the Memoir in The Attic", 20, 600)
}

if (room = initroom && nekofail){
	draw_set_font(Big)
	draw_set_alpha(1)
	ini_open(lang)
	draw_text_ext(320, 360, ini_read_string("gamestuff", "nekofail1", "ugh")+ "\n" + ini_read_string("gamestuff", "nekofail2", "ugh"), 24, 600)
	ini_close()
}

if (room = MENU_palette){
	draw_set_font(Medium)
	draw_set_alpha(1)
	draw_text_ext(80, 20, "[ESC.] for main menu \nUp and Down arrow keys to change palettes\nRight and Left arrows keys to change characters", 16, 450)
}

if (showfps){
	draw_set_font(Medium)
	draw_text(0, 680, "FPS = " + string(fps))
}