if (room = MENU_gameover){
	draw_set_font(Big)
	draw_text(320, 360, "Gameover placeholder")
	draw_text(320, 400, "Enter to retry")
	draw_text(320, 440, "Escape to return to menu")
}

if (room = MENU_palette){
	switch (palettechoose){
		case 0:
			pal_swap_set(spr_palette_beanie, global.palettebeanie, false)
		break;
		case 1:
			pal_swap_set(spr_palette_manimo, global.palettemanimo, false)
		break;
		case 2:
			pal_swap_set(spr_palette_valerix, global.palettevalerix, false)
		break;
		case 3:
			pal_swap_set(spr_palette_mathi, global.palettemathi, false)
		break;
		case 4:
			pal_swap_set(spr_palette_pravi, global.palettepravi, false)
		break;
	}
	draw_sprite_ext(spr_palette_choose, palettechoose, 925, 565, 1 + palettesizeshift, 1 - palettesizeshift, 0, c_white, 1)
	pal_swap_reset()
	draw_set_halign(fa_center)
	draw_set_font(Big)
	switch (palettechoose){
		case 0:
			if (global.palettebeanie = 0){
				draw_text(320, 360, "Normal Clothes")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "As Expected", 25, 250)
			}else if (global.palettebeanie = 1){
				draw_text(320, 360, "Manimo's Fit")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Smells like bad humour", 25, 250)
			}else if (global.palettebeanie = 2){
				draw_text(320, 360, "Mathi Zentai")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Orange-tastic", 25, 250)
			}else if (global.palettebeanie = 3){
				draw_text(320, 360, "Motherly Dress")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "TLH for life!", 25, 250)
			}else if (global.palettebeanie = 4){
				draw_text(320, 360, "Cotton Candy")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Better than neon pink, I guess", 25, 250)
			}else if (global.palettebeanie = 5){
				draw_text(320, 360, "Pravi Paint")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Saxophone talent not included", 25, 250)
			}else if (global.palettebeanie = 6){
				draw_text(320, 360, "Valerix Skin Suit")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Italian leather", 25, 250)
			}else if (global.palettebeanie = 7){
				draw_text(320, 360, "Pants' Pants")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Smells like home", 25, 250)
			}else if (global.palettebeanie = 8){
				draw_text(320, 360, "Fatherly Suit")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Snazzy and Classy, like your old man", 25, 250)
			}else if (global.palettebeanie = 9){
				draw_text(320, 360, "Sports' Tux")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Smells like retro lyrics", 25, 250)
			}else if (global.palettebeanie = 10){
				draw_text(320, 360, "Ava Fursuit")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Someone pissed in this.", 25, 250)
			}else if (global.palettebeanie = 11){
				draw_text(320, 360, "Joetube Jeans")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Ignore the white stains \n:]", 25, 250)
			}else if (global.palettebeanie = 12){
				draw_text(320, 360, "DJ Mist")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Shhhhh", 25, 250)
			}else if (global.palettebeanie = 13){
				draw_text(320, 360, "STOPSIGN")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "NOOOOOO", 25, 250)
			}else if (global.palettebeanie = 14){
				draw_text(320, 360, "Coconut's Apron")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Top tier chef", 25, 250)
			}else if (global.palettebeanie = 15){
				draw_text(320, 360, "Wicked's Slime")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Grimy and Green, just like him!!", 25, 250)
			}else if (global.palettebeanie = 16){
				draw_text(320, 360, "Fusion-esqe paint job")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Music talent and cool voice not included", 25, 250)
			}else if (global.palettebeanie = 17){
				draw_text(320, 360, "Trans")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Pride!! Yippee!!", 25, 250)
			}
		break;
		case 1:
			if (global.palettemanimo = 0){
				draw_text(320, 360, "Manimo skin")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Stolen", 25, 250)
			}else if (global.palettemanimo = 1){
				draw_text(320, 360, "Beanie's Clothes")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Pilfered from her corpse", 25, 250)
			}else if (global.palettemanimo = 2){
				draw_text(320, 360, "Strange Alien")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Holy shit is that fucking Xnorbyl Glleegneegalk!?", 25, 250)
			}else if (global.palettemanimo = 3){
				draw_text(320, 360, "County Creature")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Nothing's worth this risk", 25, 250)
			}
		break;
		case 2:
			if (global.palettevalerix = 0){
				draw_text(320, 360, "Cannibal Horse")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Woah there girl", 25, 250)
			}else if (global.palettevalerix = 1){
				draw_text(320, 360, "Beanie's Skin Suit")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Skin's unhealthy", 25, 250)
			}else if (global.palettevalerix = 2){
				draw_text(320, 360, "Sussed Out")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Green saboteur", 25, 250)
			}else if (global.palettevalerix = 3){
				draw_text(320, 360, "Chester")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Chester from Brawlstars by Supercell", 25, 250)
			}
		break;
		case 3:
			if (global.palettemathi = 0){
				draw_text(320, 360, "Orange")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Feeling glad!!", 25, 250)
			}else if (global.palettemathi = 1){
				draw_text(320, 360, "Beanie paint")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Not much to change", 25, 250)
			}else if (global.palettemathi = 2){
				draw_text(320, 360, "Ball Brother")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Brother's in arms(or lack there of for pravi)", 25, 250)
			}else if (global.palettemathi = 3){
				draw_text(320, 360, "Blue Guy")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Roguelite? No. \nRogueheavy", 25, 250)
			}
		break;
		case 4:
			if (global.palettepravi = 0){
				draw_text(320, 360, "Pink Ball")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Volatile, musically inclined, and a bit cancerous", 25, 250)
			}else if (global.palettepravi = 1){
				draw_text(320, 360, "Beanie Ball")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Snugged up in her stolen, charred hair", 25, 250)
			}else if (global.palettepravi = 3){
				draw_text(320, 360, "Inverted")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Stable, musically unskilled, and a lot cancerous", 25, 250)
			}else if (global.palettepravi = 2){
				draw_text(320, 360, "Furniture")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Comes with instructions on reassembly", 25, 250)
			}
		break;
	}
	draw_set_halign(fa_left)
	draw_set_color(c_white)
}
