if (global.screentype = "ingame"){
	draw_set_font(Big)
	draw_set_alpha(1)
	draw_text(0, 0, global.objective)
}

if (room = MENU_palette){
	draw_text(0, 0, "[ESC.] for main menu \nUp and Down arrow keys to change palettes\nRight and Left arrows keys to change characters")
}

if (room = MENU_main){
	draw_set_font(Big)
	draw_set_alpha(1)
	draw_text(25, 330, "[P] for Palette room!")
	draw_text(25, 360, "1. Attic")
	if (VICTORY_normal){
		draw_text(25, 390, "2. Stronghold")
	}
	if (VICTORY_wheatfield){
		draw_text(25, 420, "3. Wheatfield")
	}
	if (VICTORY_stronghold){
		draw_text(25, 420, "4. Storage Facility")
	}
	draw_text(25, 200, "Hold Q and M to reset data.")
	draw_text_ext(960, 120, "[W][S][A][D] - Move \n[E] - Taunt, Alerts enemies \n[F] - Flashlight, battery in top left\n[SHIFT] - Sprint, Uses stamina \n[CONTROL] or [C] - Crouch\n[f11] - Fullscreen", 28, 290)
}