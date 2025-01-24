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
	}
	draw_sprite_ext(spr_palette_choose, palettechoose, 925, 565, 1, 1, 0, c_white, 1)
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
				draw_text_ext(320, 390, "Shhhhh...", 25, 250)
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
				draw_text_ext(320, 390, "Crumpet munchers smh", 25, 250)
			}else if (global.palettebeanie = 17){
				draw_text(320, 360, "Trans")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Pride!! Yippee!!", 25, 250)
			}else if (global.palettebeanie = 18){
				draw_text(320, 360, "Monochrome")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "I'm dead.", 25, 250)
			}else if (global.palettebeanie = 19){
				draw_text(320, 360, "Technicolour")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Old school, you fossil", 25, 250)
			}else if (global.palettebeanie = 20){
				draw_text(320, 360, "Zom-Bean")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Grrrggg...\nBrainz", 25, 250)
			}else if (global.palettebeanie = 21){
				draw_text(320, 360, "Edd-head")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Lover of DR. PEPPER NOT FUCKING COLA", 25, 250)
			}else if (global.palettebeanie = 22){
				draw_text(320, 360, "Nevadian")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "What's this madness, starting all this combat", 25, 250)
			}else if (global.palettebeanie = 23){
				draw_text(320, 360, "White")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Coloniser", 25, 250)
			}else if (global.palettebeanie = 24){
				draw_text(320, 360, "Goopy")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Unmasked, and lemon-flavoured", 25, 250)
			}else if (global.palettebeanie = 25){
				draw_text(320, 360, "Wolf in sheep's clothing")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Snug n cozy \nLovely", 25, 250)
			}else if (global.palettebeanie = 26){
				draw_text(320, 360, "Some schmo")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Joeseph Robert Schmo, \nfriends with a puppet, mutant, alien and hybrid", 25, 250)
			}else if (global.palettebeanie = 27){
				draw_text(320, 360, "Eye bleeding")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "OW WHAT THE FUCK", 25, 250)
			}else if (global.palettebeanie = 28){
				draw_text(320, 360, "Blue tarp")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "The women's bathroom", 25, 250)
			}else if (global.palettebeanie = 29){
				draw_text(320, 360, "Green piss")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "The men's bathroom", 25, 250)
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
		case 6:
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
		case 2:
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
				draw_text_ext(320, 390, "A prototype that can't really be named.", 25, 250)
			}
		break;
		case 3:
			if (global.palettepravi = 0){
				draw_text(320, 360, "Pink Ball")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Volatile, musically inclined, and a bit cancerous", 25, 250)
			}else if (global.palettepravi = 1){
				draw_text(320, 360, "Beanie Ball")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Snugged up in her stolen, charred hair", 25, 250)
			}else if (global.palettepravi = 3){
				draw_text(320, 360, "Radioactive")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Cancer premium", 25, 250)
			}else if (global.palettepravi = 2){
				draw_text(320, 360, "Furniture")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Comes with instructions on reassembly", 25, 250)
			}
		break;
		case 4:
			if (global.palettesports = 0){
				draw_text(320, 360, "Fancy Suit")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Snazzy!", 25, 250)
			}else if (global.palettesports = 1){
				draw_text(320, 360, "Beanie Suit")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Golden perfection", 25, 250)
			}else if (global.palettesports = 2){
				draw_text(320, 360, "Warriordan's Threads")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Hater of generators and enjoyer of Yakuza", 25, 250)
			}else if (global.palettesports = 3){
				draw_text(320, 360, "In his prime")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Thy gore shall GLISTEN before the temples of Man", 25, 250)
			}
		break;
		case 5:
			if (global.paletteava = 0){
				draw_text(320, 360, "Lunyan")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "An alien from a far off planet \nI think.", 25, 250)
			}else if (global.paletteava = 1){
				draw_text(320, 360, "Beanie fursuit")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Someone pissed in this, too.", 25, 250)
			}else if (global.paletteava = 2){
				draw_text(320, 360, "Mirror self")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Does this one ring a bell?", 25, 250)
			}else if (global.paletteava = 3){
				draw_text(320, 360, "Perfect Species")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Gnarp gnarp", 25, 250)
			}
		break;
		case 7:
			if (global.palettedj = 4){
				draw_text(320, 360, "Ruined dreamer")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "What a folly, thinking that YOU mattered", 25, 250)
			}else if (global.palettedj = 1){
				draw_text(320, 360, "Dark shroud")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Shush. No one likes a begger", 25, 250)
			}else if (global.palettedj = 2){
				draw_text(320, 360, "Beanie's eyes")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Had to finagle them out with a spoon", 25, 250)
			}else if (global.palettedj = 3){
				draw_text(320, 360, "The Impostor from amoang us?")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "is this the Impostor from Amoang Us?", 25, 250)
			}
		break;
		case 8:
			if (global.palettefather = 0){
				draw_text(320, 360, "Casual wear")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "An asshole often wears these while making really rude jokes", 25, 250)
			}else if (global.palettefather = 1){
				draw_text(320, 360, "Yellow Mockery")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Stop fucking mumbling", 25, 250)
			}else if (global.palettefather = 2){
				draw_text(320, 360, "Hardcore")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Often confused for a lad named Calvin", 25, 250)
			}else if (global.palettefather = 3){
				draw_text(320, 360, "Black knight")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Worse than a flesh wound", 25, 250)
			}
		break;
		case 9:
			if (global.palettejoetube = 4){
				draw_text(320, 360, "Destruction Worker")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "HE'S GONNA BLAST THEM INTO TEENY TINY LITTLE PIECES!!", 25, 250)
			}else if (global.palettejoetube = 1){
				draw_text(320, 360, "Pocket Monster")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Weak to Fire, Fighting and Ground", 25, 250)
			}else if (global.palettejoetube = 2){
				draw_text(320, 360, "Beanie Fur")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "I'm running out of ideas for descriptions lmao", 25, 250)
			}else if (global.palettejoetube = 3){
				draw_text(320, 360, "V1")
				draw_set_color(c_grey)
				draw_text_ext(320, 390, "Watch out! \nHe might ultra kill you!", 25, 250)
			}
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