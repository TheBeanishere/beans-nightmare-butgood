if (global.screentype = "ingame"){
	draw_set_font(Big)
	draw_set_alpha(1)
	draw_text(0, 0, global.objective)
}

if (room = MENU_main){
	draw_set_font(Big)
	draw_set_alpha(1)
	draw_text(25, 360, "Enter to play the Attic level with Manimo")
	draw_text(25, 390, "Hold Q and M to reset data.")
}