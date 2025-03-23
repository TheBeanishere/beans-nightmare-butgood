if (global.screentype = "ingame"){
	draw_set_font(Big)
	draw_set_alpha(1)
	draw_text(0, 0, global.objective)
}

if (room = initroom && nekofail){
	draw_set_font(Big)
	draw_set_alpha(1)
	draw_text(320, 360, "NekoPresence failed. \nContinue without Discord presence?\nEnter to continue\nOr you could just wait here to see if Discord connects, your call")
}

if (room = MENU_palette){
	draw_set_font(Medium)
	draw_set_alpha(1)
	draw_text_ext(80, 20, "[ESC.] for main menu \nUp and Down arrow keys to change palettes\nRight and Left arrows keys to change characters", 14, 450)
}

if (showfps){
	draw_set_font(Medium)
	draw_text(0, 680, "FPS = " + string(fps))
}