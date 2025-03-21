if (room = MENU_gameover){
	draw_set_font(Big)
	pal_swap_set(spr_palette_beanie, global.palettebeanie, false)
	draw_sprite(spr_gameover, 0, 640, 360)
	pal_swap_reset()
	draw_set_color(c_grey)
	draw_text_ext(640, 320, global.deathline, 28, 600)
	draw_set_color(c_white)
	draw_text(640, 280, "You died to " + killedby)
	draw_text(640, 410, "Enter to retry")
	draw_text(640, 440, "Escape to return to menu")
}
if (room = bootroom){
	if (boottime < 299){
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_font(Big)
		draw_text_ext(640, 360, "WARNING:\nThis game contains gore, jumpscares, loud noises, bright flashing lights, and disorientating music!\nPlay at your OWN discretion!", 28, 480)
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
			pal_swap_set(spr_palette_warriordan, global.palettewarriordan, false)
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
				ini_open("lang.txt")
				draw_text(320, 330, ini_read_string("palettes", "beanpal" + string(global.palettebeanie), "ERROR"))
				draw_set_color(c_grey)
				draw_text_ext(320, 360, ini_read_string("palettes", "beanpaldesc" + string(global.palettebeanie), "Error") + "\n\n" + ini_read_string("palettes", "beanpalunlock" + string(global.palettebeanie), "Error"), 25, 250)
				ini_close()
		break;
		case 1:
			ini_open("lang.txt")
			draw_text(320, 330, ini_read_string("palettes", "manimopal" + string(global.palettemanimo), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "manimopaldesc" + string(global.palettemanimo), "Error") + "\n\n" + ini_read_string("palettes", "manimopalunlock" + string(global.palettemanimo), "Error"), 25, 250)
			ini_close()
		break;
		case 2:
			ini_open("lang.txt")
			draw_text(320, 330, ini_read_string("palettes", "mathipal" + string(global.palettemathi), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "mathipaldesc" + string(global.palettemathi), "Error") + "\n\n" + ini_read_string("palettes", "mathipalunlock" + string(global.palettemathi), "Error"), 25, 250)
			ini_close()
		break;
		case 3:
			ini_open("lang.txt")
			draw_text(320, 330, ini_read_string("palettes", "pravipal" + string(global.palettepravi), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "pravipaldesc" + string(global.palettepravi), "Error") + "\n\n" + ini_read_string("palettes", "pravipalunlock" + string(global.palettepravi), "Error"), 25, 250)
			ini_close()
		break;
		case 4:
			ini_open("lang.txt")
			draw_text(320, 330, ini_read_string("palettes", "sportspal" + string(global.palettesports), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "sportspaldesc" + string(global.palettesports), "Error") + "\n\n" + ini_read_string("palettes", "sportspalunlock" + string(global.palettesports), "Error"), 25, 250)
			ini_close()
		break;
		case 5:
			ini_open("lang.txt")
			draw_text(320, 330, ini_read_string("palettes", "avapal" + string(global.paletteava), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "avapaldesc" + string(global.paletteava), "Error") + "\n\n" + ini_read_string("palettes", "avapalunlock" + string(global.paletteava), "Error"), 25, 250)
			ini_close()
		break;
		case 6:
			ini_open("lang.txt")
			draw_text(320, 330, ini_read_string("palettes", "valerixpal" + string(global.palettevalerix), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "valerixpaldesc" + string(global.palettevalerix), "Error") + "\n\n" + ini_read_string("palettes", "valerixpalunlock" + string(global.palettevalerix), "Error"), 25, 250)
			ini_close()
		break;
		case 7:
			ini_open("lang.txt")
			draw_text(320, 330, ini_read_string("palettes", "djpal" + string(global.palettedj), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "djpaldesc" + string(global.palettedj), "Error") + "\n\n" + ini_read_string("palettes", "djpalunlock" + string(global.palettedj), "Error"), 25, 250)
			ini_close()
		break;
		case 8:
			ini_open("lang.txt")
			draw_text(320, 330, ini_read_string("palettes", "fatherpal" + string(global.palettefather), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "fatherpaldesc" + string(global.palettefather), "Error") + "\n\n" + ini_read_string("palettes", "fatherpalunlock" + string(global.palettefather), "Error"), 25, 250)
			ini_close()	
		break;
		case 9:
			ini_open("lang.txt")
			draw_text(320, 330, ini_read_string("palettes", "joetubepal" + string(global.palettejoetube), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "joetubepaldesc" + string(global.palettejoetube), "Error") + "\n\n" + ini_read_string("palettes", "joetubepalunlock" + string(global.palettejoetube), "Error"), 25, 250)
			ini_close()
		break;
		case 10:
			ini_open("lang.txt")
			draw_text(320, 330, ini_read_string("palettes", "a90pal" + string(global.palettea90), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "a90paldesc" + string(global.palettea90), "Error") + "\n\n" + ini_read_string("palettes", "a90palunlock" + string(global.palettea90), "Error"), 25, 250)
			ini_close()
		break;
		case 11:
			ini_open("lang.txt")
			draw_text(320, 330, ini_read_string("palettes", "coconutpal" + string(global.palettecoconut), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "coconutpaldesc" + string(global.palettecoconut), "Error") + "\n\n" + ini_read_string("palettes", "coconutpalunlock" + string(global.palettecoconut), "Error"), 25, 250)
			ini_close()
			//if (global.palettecoconut = 0){
			//	draw_text(320, 330, "Tropical Chef")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "He's coconuts\n\nUnlocked by being a tropical guy", 25, 250)
			//}else if (global.palettecoconut = 1){
			//	draw_text(320, 330, "Legume attire")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "Baking some beans\n\nUnlocked by dying to Coconut/The Chef", 25, 250)
			//}else if (global.palettecoconut = 2){
			//	draw_text(320, 330, "Im-pear'd")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "Hates oranges\n\nUnlocked by beating a level with all modifiers enabled", 25, 250)
			//}else if (global.palettecoconut = 3){
			//	draw_text(320, 330, "Flame grilled")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "Frost and fire\n\nUnlocked by getting an [F] Rank", 25, 250)
			//}else if (global.palettecoconut = 4){
			//	draw_text(320, 330, "Skinned")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "FUCKING OW\n\nUnlocked by dying in every way possible", 25, 250)
			//}
		break;
		case 12:
			ini_open("lang.txt")
			draw_text(320, 330, ini_read_string("palettes", "fusionpal" + string(global.palettefusion), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "fusionpaldesc" + string(global.palettefusion), "Error") + "\n\n" + ini_read_string("palettes", "fusionpalunlock" + string(global.palettefusion), "Error"), 25, 250)
			ini_close()
			//if (global.palettefusion = 0){
			//	draw_text(320, 330, "purple puppet")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "no strings attached\n\nunlocked by being a purple doll", 25, 250)
			//}else if (global.palettefusion = 1){
			//	draw_text(320, 330, "beanie baby")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "actually a plushie, not a puppet\n\nunlocked by dying to Fusion/The Doll", 25, 250)
			//}else if (global.palettefusion = 2){
			//	draw_text(320, 330, "coloorful crew")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "space dweller\n\nunlocked by beating the forest", 25, 250)
			//}else if (global.palettefusion = 3){
			//	draw_text(320, 330, "neon genesis")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "virtual-like reality\n\nunlocked by ", 25, 250)
			//}else if (global.palettefusion = 4){
			//	draw_text(320, 330, "bloodshot body")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "not her's\n\nunlocked by completing a lucid dream with all monsters active with more to do, runner, and persistence enabled", 25, 250)
			//}
		break;
		case 13:
			ini_open("lang.txt")
			draw_text(320, 330, ini_read_string("palettes", "criminalpal" + string(global.palettecriminal), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "criminalpaldesc" + string(global.palettecriminal), "Error") + "\n\n" + ini_read_string("palettes", "criminalpalunlock" + string(global.palettecriminal), "Error"), 25, 250)
			ini_close()
			//if (global.palettecriminal = 0){
			//	draw_text(320, 330, "Rotted meat")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "Disgusting!\n\nUnlocked by being a festering pile of flesh", 25, 250)
			//}else if (global.palettecriminal = 1){
			//	draw_text(320, 330, "Bean mush")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "Grinded up the beans\n\nUnlocked by dying to Criminal/The Rot", 25, 250)
			//}else if (global.palettecriminal = 2){
			//	draw_text(320, 330, "Booger")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "Nosepicker\n\nUnlocked by taunting too much", 25, 250)
			//}else if (global.palettecriminal = 3){
			//	draw_text(320, 330, "Mathi's nightmare")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "Blocks doors!!\n\nUnlocked by dying to Mathi/The Brute", 25, 250)
			//}else if (global.palettecriminal = 4){
			//	draw_text(320, 330, "MANIMO SLOP")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "MANIMO SLOP\n\nUnlocked by dying to Manimo/The Mimic", 25, 250)
			//}
		break;
		case 14:
			ini_open("lang.txt")
			draw_text(320, 330, ini_read_string("palettes", "warriordanpal" + string(global.palettewarriordan), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "warriordanpaldesc" + string(global.palettewarriordan), "Error") + "\n\n" + ini_read_string("palettes", "warriordanpalunlock" + string(global.palettewarriordan), "Error"), 25, 250)
			ini_close()
			//if (global.palettewarriordan = 0){
			//	draw_text(320, 330, "Shadow")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "Spooky\n\nUnlocked by ", 25, 250)
			//}else if (global.palettewarriordan = 1){
			//	draw_text(320, 330, "Beanie blotter")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "Famous streamer personality Beanie Bopper!\n\nUnlocked by dying to Warriordan/The Shroud", 25, 250)
			//}else if (global.palettewarriordan = 2){
			//	draw_text(320, 330, "Crystal clear")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "It's very apparent\nTRANSPARENT\n\nUnlocked by beating The Storage Facility", 25, 250)
			//}else if (global.palettewarriordan = 3){
			//	draw_text(320, 330, "Transtar Attire")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "Suited up, and ready to beat the mind games!\n\nUnlocked by taunting more than you should", 25, 250)
			//}else if (global.palettewarriordan = 4){
			//	draw_text(320, 330, "Pure dark")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "True fear will be known\n\nUnlocked by beating all levels with all modifiers enabled", 25, 250)
			//}
		break;
		case 15:
			ini_open("lang.txt")
			draw_text(320, 330, ini_read_string("palettes", "roachypal" + string(global.paletteroachy), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "roachypaldesc" + string(global.paletteroachy), "Error") + "\n\n" + ini_read_string("palettes", "roachypalunlock" + string(global.paletteroachy), "Error"), 25, 250)
			ini_close()
			//if (global.paletteroachy = 0){
			//	draw_text(320, 330, "Virus")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "Deleting system32\n\nUnlocked by being a virus", 25, 250)
			//}else if (global.paletteroachy = 1){
			//	draw_text(320, 330, "Bloatware")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "If you don't get the name, you never will\n\nUnlocked by dying to Roachy/The Malware", 25, 250)
			//}else if (global.paletteroachy = 2){
			//	draw_text(320, 330, "EXEcutable")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "Bloodied eyes\n\nUnlocked by dying in every way possible", 25, 250)
			//}else if (global.paletteroachy = 3){
			//	draw_text(320, 330, "Morris' worm")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "Maggot filled too!\n\nUnlocked by dying to Criminal/The Rot", 25, 250)
			//}else if (global.paletteroachy = 4){
			//	draw_text(320, 330, "Idiot")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "That's what you are\n\nUnlocked by dying after completing all objectives in a level", 25, 250)
			//}
		break;
		case 16:
			ini_open("lang.txt")
			draw_text(320, 330, ini_read_string("palettes", "lydiapal" + string(global.palettelydia), "ERROR"))
			draw_set_color(c_grey)
			draw_text_ext(320, 360, ini_read_string("palettes", "lydiapaldesc" + string(global.palettelydia), "Error") + "\n\n" + ini_read_string("palettes", "lydiapalunlock" + string(global.palettelydia), "Error"), 25, 250)
			ini_close()
			//if (global.palettelydia = 0){
			//	draw_text(320, 330, "Pride")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "As expected.\n\nUnlocked by being her", 25, 250)
			//}else if (global.palettelydia = 1){
			//	draw_text(320, 330, "Greed")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "Greed takes and takes and leaves nothing.\n\nUnlocked by dying to yourself/The Doubt", 25, 250)
			//}else if (global.palettelydia = 2){
			//	draw_text(320, 330, "Envy")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "Enny denies yourself joy from within.\n\nUnlocked by dying to Ava/The Lookout", 25, 250)
			//}else if (global.palettelydia = 4){
			//	draw_text(320, 330, "Sloth")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "Sloth kills ambition before it can bloom.\n\nUnlocked by dying to Mathi/The Brute or Pravi/The Pawn", 25, 250)
			//}else if (global.palettelydia = 3){
			//	draw_text(320, 330, "Wrath")
			//	draw_set_color(c_grey)
			//	draw_text_ext(320, 360, "Wrath blurs friend to foe.\n\nUnlocked by dying to your Father/The Maestro", 25, 250)
			//}
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