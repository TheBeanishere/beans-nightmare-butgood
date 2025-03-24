draw_set_alpha(1)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)
draw_self()
if (global.screentype = "options"){
	draw_set_font(Medium)
	draw_text(80, 230, "Music Volume:")
	draw_text(80, 250, "SFX Volume:")
	ini_open(lang)
	var language = ini_read_string("options", "language", "english")
	ini_close()
	if (language = "english"){
		draw_text(80, 270, "Language: [English] Español Deutsch Italiano Polski Русский")
	}
}