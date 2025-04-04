if (room = MENU_gameover){
	draw_set_font(Big)
	pal_swap_set(spr_palette_beanie, global.palettebeanie, false)
	draw_sprite(spr_gameover, 0, 640, 360)
	pal_swap_reset()
	draw_set_color(c_grey)
	draw_text_ext(640, 320, global.deathline, 28, 600)
	draw_set_color(c_white)
	ini_open(lang)
	draw_text(640, 280, ini_read_string("gamestuff", "death1", "ugh") + killedby)
	draw_text(640, 410, ini_read_string("gamestuff", "death2", "ugh"))
	draw_text(640, 440, ini_read_string("gamestuff", "death3", "ugh"))
	ini_close()
}
if (room = bootroom){
	if (boottime < 299){
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_font(Big)
		ini_open(lang)
		draw_text_ext(640, 360, ini_read_string("gamestuff", "disclaimer1", "ugh") + "\n" + ini_read_string("gamestuff", "disclaimer2", "ugh") + "\n" + ini_read_string("gamestuff", "disclaimer3", "ugh"), 28, 480)
		ini_close()
		draw_set_valign(fa_top)
		draw_set_halign(fa_left)
	}else if (boottime > 300 && boottime < 449){
		draw_sprite(spr_splash, 0, 0, 0)
	}else if (boottime < 601 && boottime > 449){
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_font(Big)
		draw_text_ext(640, 360, bootmessage, 28, 480)
		draw_set_valign(fa_top)
		draw_set_halign(fa_left)
	}
}

if (room = MENU_palette){
	switch (palettechoose){
		case 0:
			pal_swap_set(spr_palette_beanie, global.palettebeanie, false)
		break;
		case 1:
			pal_swap_set(spr_palette_manimo, global.palettemanimo, false)
		break;
		case 6:
			pal_swap_set(spr_palette_valerix, global.palettevalerix, false)
		break;
		case 2:
			pal_swap_set(spr_palette_mathi, global.palettemathi, false)
		break;
		case 3:
			pal_swap_set(spr_palette_pravi, global.palettepravi, false)
		break;
		case 4:
			pal_swap_set(spr_palette_sports, global.palettesports, false)
		break;
		case 5:
			pal_swap_set(spr_palette_ava, global.paletteava, false)
		break;
		case 7:
			pal_swap_set(spr_palette_dj, global.palettedj, false)
		break;
		case 8:
			pal_swap_set(spr_palette_father, global.palettefather, false)
		break;
		case 9:
			pal_swap_set(spr_palette_joetube, global.palettejoetube, false)
		break;
		case 10:
			pal_swap_set(spr_palette_a90, global.palettea90, false)
		break;
		case 11:
			pal_swap_set(spr_palette_coconut, global.palettecoconut, false)
		break;
		case 12:
			pal_swap_set(spr_palette_fusion, global.palettefusion, false)
		break;
		case 13:
			pal_swap_set(spr_palette_criminal, global.palettecriminal, false)
		break;
		case 14:
			pal_swap_set(spr_palette_willow, global.palettewillow, false)
		break;
		case 15:
			pal_swap_set(spr_palette_roachy, global.paletteroachy, false)
		break;
		case 16:
			pal_swap_set(spr_palette_lydia, global.palettelydia, false)
		break;
	}
	draw_sprite_ext(spr_palette_choose, palettechoose, 925, 565, 1, 1, 0, c_white, 1)
	pal_swap_reset()
	draw_set_halign(fa_center)
	draw_set_font(Big)
	switch (palettechoose){
		case 0:
			ini_open(lang)
			draw_text(320, 330, ini_read_string("palettes", "beanpal" + string(global.palettebeanie), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "beanpaldesc" + string(global.palettebeanie), "Error") + "\n\n" + ini_read_string("palettes", "beanpalunlock" + string(global.palettebeanie), "Error"), 25, 250)
			ini_close()
		break;
		case 1:
			ini_open(lang)
			draw_text(320, 330, ini_read_string("palettes", "manimopal" + string(global.palettemanimo), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "manimopaldesc" + string(global.palettemanimo), "Error") + "\n\n" + ini_read_string("palettes", "manimopalunlock" + string(global.palettemanimo), "Error"), 25, 250)
			ini_close()
		break;
		case 2:
			ini_open(lang)
			draw_text(320, 330, ini_read_string("palettes", "mathipal" + string(global.palettemathi), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "mathipaldesc" + string(global.palettemathi), "Error") + "\n\n" + ini_read_string("palettes", "mathipalunlock" + string(global.palettemathi), "Error"), 25, 250)
			ini_close()
		break;
		case 3:
			ini_open(lang)
			draw_text(320, 330, ini_read_string("palettes", "pravipal" + string(global.palettepravi), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "pravipaldesc" + string(global.palettepravi), "Error") + "\n\n" + ini_read_string("palettes", "pravipalunlock" + string(global.palettepravi), "Error"), 25, 250)
			ini_close()
		break;
		case 4:
			ini_open(lang)
			draw_text(320, 330, ini_read_string("palettes", "sportspal" + string(global.palettesports), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "sportspaldesc" + string(global.palettesports), "Error") + "\n\n" + ini_read_string("palettes", "sportspalunlock" + string(global.palettesports), "Error"), 25, 250)
			ini_close()
		break;
		case 5:
			ini_open(lang)
			draw_text(320, 330, ini_read_string("palettes", "avapal" + string(global.paletteava), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "avapaldesc" + string(global.paletteava), "Error") + "\n\n" + ini_read_string("palettes", "avapalunlock" + string(global.paletteava), "Error"), 25, 250)
			ini_close()
		break;
		case 6:
			ini_open(lang)
			draw_text(320, 330, ini_read_string("palettes", "valerixpal" + string(global.palettevalerix), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "valerixpaldesc" + string(global.palettevalerix), "Error") + "\n\n" + ini_read_string("palettes", "valerixpalunlock" + string(global.palettevalerix), "Error"), 25, 250)
			ini_close()
		break;
		case 7:
			ini_open(lang)
			draw_text(320, 330, ini_read_string("palettes", "djpal" + string(global.palettedj), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "djpaldesc" + string(global.palettedj), "Error") + "\n\n" + ini_read_string("palettes", "djpalunlock" + string(global.palettedj), "Error"), 25, 250)
			ini_close()
		break;
		case 8:
			ini_open(lang)
			draw_text(320, 330, ini_read_string("palettes", "fatherpal" + string(global.palettefather), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "fatherpaldesc" + string(global.palettefather), "Error") + "\n\n" + ini_read_string("palettes", "fatherpalunlock" + string(global.palettefather), "Error"), 25, 250)
			ini_close()	
		break;
		case 9:
			ini_open(lang)
			draw_text(320, 330, ini_read_string("palettes", "joetubepal" + string(global.palettejoetube), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "joetubepaldesc" + string(global.palettejoetube), "Error") + "\n\n" + ini_read_string("palettes", "joetubepalunlock" + string(global.palettejoetube), "Error"), 25, 250)
			ini_close()
		break;
		case 10:
			ini_open(lang)
			draw_text(320, 330, ini_read_string("palettes", "a90pal" + string(global.palettea90), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "a90paldesc" + string(global.palettea90), "Error") + "\n\n" + ini_read_string("palettes", "a90palunlock" + string(global.palettea90), "Error"), 25, 250)
			ini_close()
		break;
		case 11:
			ini_open(lang)
			draw_text(320, 330, ini_read_string("palettes", "coconutpal" + string(global.palettecoconut), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "coconutpaldesc" + string(global.palettecoconut), "Error") + "\n\n" + ini_read_string("palettes", "coconutpalunlock" + string(global.palettecoconut), "Error"), 25, 250)
			ini_close()
		break;
		case 12:
			ini_open(lang)
			draw_text(320, 330, ini_read_string("palettes", "fusionpal" + string(global.palettefusion), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "fusionpaldesc" + string(global.palettefusion), "Error") + "\n\n" + ini_read_string("palettes", "fusionpalunlock" + string(global.palettefusion), "Error"), 25, 250)
			ini_close()
		break;
		case 13:
			ini_open(lang)
			draw_text(320, 330, ini_read_string("palettes", "criminalpal" + string(global.palettecriminal), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "criminalpaldesc" + string(global.palettecriminal), "Error") + "\n\n" + ini_read_string("palettes", "criminalpalunlock" + string(global.palettecriminal), "Error"), 25, 250)
			ini_close()
		break;
		case 14:
			ini_open(lang)
			draw_text(320, 330, ini_read_string("palettes", "willowpal" + string(global.palettewillow), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "willowpaldesc" + string(global.palettewillow), "Error") + "\n\n" + ini_read_string("palettes", "willowpalunlock" + string(global.palettewillow), "Error"), 25, 250)
			ini_close()
		break;
		case 15:
			ini_open(lang)
			draw_text(320, 330, ini_read_string("palettes", "roachypal" + string(global.paletteroachy), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "roachypaldesc" + string(global.paletteroachy), "Error") + "\n\n" + ini_read_string("palettes", "roachypalunlock" + string(global.paletteroachy), "Error"), 25, 250)
			ini_close()
		break;
		case 16:
			ini_open(lang)
			draw_text(320, 330, ini_read_string("palettes", "lydiapal" + string(global.palettelydia), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "lydiapaldesc" + string(global.palettelydia), "Error") + "\n\n" + ini_read_string("palettes", "lydiapalunlock" + string(global.palettelydia), "Error"), 25, 250)
			ini_close()
		break;
	}
	draw_set_halign(fa_left)
	draw_set_color(c_white)
}

if (global.debug && global.screentype = "ingame"){
	draw_set_alpha(0.2)
	mp_grid_draw(global.mp_gridcrouch)
	draw_set_alpha(1)
}