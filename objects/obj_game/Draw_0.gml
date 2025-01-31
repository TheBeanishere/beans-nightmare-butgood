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
			switch (global.palettebeanie){
				case 0:
					draw_text(320, 330, "Normal Clothes")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "As Expected\n\nUnlocked by default", 25, 250)
				break;
				case 1:
					draw_text(320, 330, "Trans")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "Pride comes before the fall, but atleast you'll look good on your way to hell, right?\n\nUnlocked by being Transgender", 25, 250)
				break;
				case 2:
					draw_text(320, 330, "Eddhead")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "Lover of Dr. Pepper, not Cola\n\nUnlocked by completing the Attic", 25, 250)
				break;
				case 3:
					draw_text(320, 330, "Nevadian")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "Don't let her near blenders while she's wearing this\n\nUnlocked by completing the Stronghold", 25, 250)
				break;
				case 4:
					draw_text(320, 330, "Some Schmo")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "Generic, but disliked by greed\n\nUnlocked by completing the Storage Facility", 25, 250)
				break;
				case 5:
					draw_text(320, 330, "Submarine Bean")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "She's a Pisces, afterall\n\nUnlocked by completing the Wheatfield", 25, 250)
				break;
				case 6:
					draw_text(320, 330, "Eyebleeding")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "OW MY EYES\n\nUnlocked by completing the Halls", 25, 250)
				break;
				case 7:
					draw_text(320, 330, "Technicolour")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "Don't deal with the devil!\n\nUnlocked by completing the Hotel", 25, 250)
				break;
				case 8:
					draw_text(320, 330, "Cotton Candy")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "Better than Neon pink, I guess\n\nUnlocked by completing the Forest", 25, 250)
				break;
				case 9:
					draw_text(320, 330, "Motherly Dress")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "She's why you're named Beanie!\n\nUnlocked by completing a level with all modifiers enabled", 25, 250)
				break;
				case 10:
					draw_text(320, 330, "Pants' Pants")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "Kinda stinks\n\nUnlocked by completing all levels with all modifiers enabled", 25, 250)
				break;
				case 11:
					draw_text(320, 330, "White")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "You fucking yankee\n\nUnlocked by dying in a level after having completed all objectives", 25, 250)
				break;
				case 12:
					draw_text(320, 330, "Goopy")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "What a silly little lemon dog\n\nUnlocked by beating the game", 25, 250)
				break;
				case 13:
					draw_text(320, 330, "A True Bops")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "Brag about it, you earned it!\nStrangely see-through\n\nUnlocked by getting an [H] rank", 25, 250)
				break;
				case 14:
					draw_text(320, 330, "Timothy")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "Only he would intentionally get this bad of a rank\n\nUnlocked by getting an [F] rank", 25, 250)
				break;
				case 15:
					draw_text(320, 330, "Strange plushie")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "She's a bit of a klutz and a blockhead\n\nUnlocked by collecting all plushies", 25, 250)
				break;
				case 16:
					draw_text(320, 330, "Weird mascot")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "Har har har har har har\n\nUnlocked by collecting all cereal boxes", 25, 250)
				break;
				case 17:
					draw_text(320, 330, "Fastest Bitch")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "Gets cancer and rabies, and eat their own babies\n\nUnlocked by beating the game faster than fast", 25, 250)
				break;
				case 18:
					draw_text(320, 330, "Logan Watkins")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "Your antithesis\n\nUnlocked by taunting TOO MUCH", 25, 250)
				break;
				case 19:
					draw_text(320, 330, "Extra Normal")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "There's nothing wrong with me\n\nUnlocked by beating Repressed mode", 25, 250)
				break;
				case 20:
					draw_text(320, 330, "Tree hugging, Rock kisser")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "USE YOUR BRAKES\n\nUnlocked by beating all modifier Repressed mode", 25, 250)
				break;
				case 21:
					draw_text(320, 330, "Wolf in Sheep's clothing")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "Strawberry lemonade\n\nUnlocked by getting a Fae-rie", 25, 250)
				break;
				case 22:
					draw_text(320, 330, "Pastel Perfection")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "Easy on the eyes\n\nUnlocked by beating Repressed mode without using a single Fae-rie", 25, 250)
				break;
				case 23:
					draw_text(320, 330, "Bloodied")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "That fucking sucked\n\nUnlocked by completing a lucid dream with all monsters active with More to do, Runner, and Persistence enabled", 25, 250)
				break;
				case 24:
					draw_text(320, 330, "Manimo's fit")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "Smells like bad humour\n\nUnlocked by dying to Manimo/The Mimic", 25, 250)
				break;
				case 25:
					draw_text(320, 330, "Mathi Zentai")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "Orange-tastic!\n\nUnlocked by dying to Mathi/The Brute", 25, 250)
				break;
				case 26:
					draw_text(320, 330, "Pravi Paint")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "Saxophone talent not included\n\nUnlocked by dying to Pravi/The Pawn", 25, 250)
				break;
				case 27:
					draw_text(320, 330, "Sports' Tux")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "Anyone home?\n\nUnlocked by dying to Sports/The Umpire", 25, 250)
				break;
				case 28:
					draw_text(320, 330, "Ava fursuit")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "Someone pissed in this.\n\nUnlocked by dying to Ava/The Lookout", 25, 250)
				break;
				case 29:
					draw_text(320, 330, "Valerix skin suit")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "Italian leather\n\nUnlocked by dying to Valerix/The Equine", 25, 250)
				break;
				case 30:
					draw_text(320, 330, "DJ's Mist")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "Shhh...\n\nUnlocked by dying to DJ/The Seer", 25, 250)
				break;
				case 31:
					draw_text(320, 330, "Fatherly suit")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "He's the reason you could make this game\n\nUnlocked by dying to your Father/The Maestro", 25, 250)
				break;
				case 32:
					draw_text(320, 330, "Joetube jeans")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "Ignore the white stains\n\nUnlocked by dying to Joetube/The Monster", 25, 250)
				break;
				case 33:
					draw_text(320, 330, "STOPSIGN")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "bzzt\nNOOOOO\n\nUnlocked by dying to A-90/The Faulter", 25, 250)
				break;
				case 34:
					draw_text(320, 330, "Coconut's Apron")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "A top tier chef\n\nUnlocked by dying to Coconut/The Chef", 25, 250)
				break;
				case 35:
					draw_text(320, 330, "Fusion-esqe paint job")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "Crumper munchers, smh\n\nUnlocked by dying to Fusion/The Doll", 25, 250)
				break;
				case 36:
					draw_text(320, 330, "Inverse")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "It's you, but not really\n\nUnlocked by dying to yourself/The Doubt", 25, 250)
				break;
				case 37:
					draw_text(320, 330, "Monochrome")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "I'm dead\n\nUnlocked by dying in everyway possible", 25, 250)
				break;
				case 38:
					draw_text(320, 330, "Zombean")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "Grrg...Brainz\n\nUnlocked by dying more than you really should", 25, 250)
				break;
				case 39:
					draw_text(320, 330, "Genuine DJ")
					draw_set_color(c_grey)
					draw_text_ext(320, 360, "Thank you :]\n\nUnlocked by 100%'ing the game or by being DJ", 25, 250)
				break;
				default:
					
				break;
			}
		break;
		case 1:
			if (global.palettemanimo = 0){
				draw_text(320, 330, "Manimo skin")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Stolen", 25, 250)
			}else if (global.palettemanimo = 1){
				draw_text(320, 330, "Beanie's Clothes")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Pilfered from her corpse", 25, 250)
			}else if (global.palettemanimo = 2){
				draw_text(320, 330, "Strange Alien")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Holy shit is that fucking Xnorbyl Glleegneegalk!?", 25, 250)
			}else if (global.palettemanimo = 3){
				draw_text(320, 330, "County Creature")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Nothing's worth this risk", 25, 250)
			}
		break;
		case 6:
			if (global.palettevalerix = 0){
				draw_text(320, 330, "Cannibal Horse")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Woah there girl", 25, 250)
			}else if (global.palettevalerix = 1){
				draw_text(320, 330, "Beanie's Skin Suit")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Skin's unhealthy", 25, 250)
			}else if (global.palettevalerix = 2){
				draw_text(320, 330, "Sussed Out")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Green saboteur", 25, 250)
			}else if (global.palettevalerix = 3){
				draw_text(320, 330, "Chester")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Chester from Brawlstars by Supercell", 25, 250)
			}
		break;
		case 2:
			if (global.palettemathi = 0){
				draw_text(320, 330, "Orange")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Feeling glad!!", 25, 250)
			}else if (global.palettemathi = 1){
				draw_text(320, 330, "Beanie paint")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Not much to change", 25, 250)
			}else if (global.palettemathi = 2){
				draw_text(320, 330, "Ball Brother")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Brother's in arms(or lack there of for pravi)", 25, 250)
			}else if (global.palettemathi = 3){
				draw_text(320, 330, "Blue Guy")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "A prototype that can't really be named.", 25, 250)
			}
		break;
		case 3:
			if (global.palettepravi = 0){
				draw_text(320, 330, "Pink Ball")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Volatile, musically inclined, and a bit cancerous", 25, 250)
			}else if (global.palettepravi = 1){
				draw_text(320, 330, "Beanie Ball")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Snugged up in her stolen, charred hair", 25, 250)
			}else if (global.palettepravi = 3){
				draw_text(320, 330, "Radioactive")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Cancer premium", 25, 250)
			}else if (global.palettepravi = 2){
				draw_text(320, 330, "Furniture")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Comes with instructions on reassembly", 25, 250)
			}
		break;
		case 4:
			if (global.palettesports = 0){
				draw_text(320, 330, "Fancy Suit")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Snazzy!", 25, 250)
			}else if (global.palettesports = 1){
				draw_text(320, 330, "Beanie Suit")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Golden perfection", 25, 250)
			}else if (global.palettesports = 2){
				draw_text(320, 330, "Warriordan's Threads")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Hater of generators and enjoyer of Yakuza", 25, 250)
			}else if (global.palettesports = 3){
				draw_text(320, 330, "In his prime")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Thy gore shall GLISTEN before the temples of Man", 25, 250)
			}
		break;
		case 5:
			if (global.paletteava = 0){
				draw_text(320, 330, "Lunyan")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "An alien from a far off planet \nI think.", 25, 250)
			}else if (global.paletteava = 1){
				draw_text(320, 330, "Beanie fursuit")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Someone pissed in this, too.", 25, 250)
			}else if (global.paletteava = 2){
				draw_text(320, 330, "Mirror self")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Does this one ring a bell?", 25, 250)
			}else if (global.paletteava = 3){
				draw_text(320, 330, "Perfect Species")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Gnarp gnarp", 25, 250)
			}
		break;
		case 7:
			if (global.palettedj = 1){
				draw_text(320, 330, "Dark shroud")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Shush. No one likes a begger\n\nUnlocked by being an eye monster", 25, 250)
			}else if (global.palettedj = 2){
				draw_text(320, 330, "Beanie's eyes")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Had to finagle them out with a spoon\n\nUnlocked by dying to DJ/The Seer", 25, 250)
			}else if (global.palettedj = 3){
				draw_text(320, 330, "The Impostor from amoang us?")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "is this the Impostor from Amoang Us?\n\nUnlocked by completing the Forest", 25, 250)
			}if (global.palettedj = 4){
				draw_text(320, 330, "Unpleasent look")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Oh, she's ugly\nShe's so ugly\n\nUnlocked by taunting too much", 25, 250)
			}else if (global.palettedj = 5){
				draw_text(320, 330, "THE FOG")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "THE FOG\n\nUnlocked by dying in every possible way", 25, 250)
			}
		break;
		case 8:
			if (global.palettefather = 0){
				draw_text(320, 330, "Casual wear")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "An asshole often wears these while making really rude jokes", 25, 250)
			}else if (global.palettefather = 1){
				draw_text(320, 330, "Yellow Mockery")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Stop fucking mumbling", 25, 250)
			}else if (global.palettefather = 2){
				draw_text(320, 330, "Hardcore")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Often confused for a lad named Calvin", 25, 250)
			}else if (global.palettefather = 3){
				draw_text(320, 330, "Black knight")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Worse than a flesh wound", 25, 250)
			}
		break;
		case 9:
			if (global.palettejoetube = 4){
				draw_text(320, 330, "Destruction Worker")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "HE'S GONNA BLAST THEM INTO TEENY TINY LITTLE PIECES!!", 25, 250)
			}else if (global.palettejoetube = 1){
				draw_text(320, 330, "Pocket Monster")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Weak to Fire, Fighting and Ground", 25, 250)
			}else if (global.palettejoetube = 2){
				draw_text(320, 330, "Beanie Fur")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "I'm running out of ideas for descriptions lmao", 25, 250)
			}else if (global.palettejoetube = 3){
				draw_text(320, 330, "V1")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Watch out! \nHe might ultra kill you!", 25, 250)
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