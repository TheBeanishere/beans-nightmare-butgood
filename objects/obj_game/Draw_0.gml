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
				//case 1:
				//	draw_text(320, 330, "Trans")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "Pride comes before the fall, but atleast you'll look good on your way to hell, right?\n\nUnlocked by being Transgender", 25, 250)
				//break;
				//case 2:
				//	draw_text(320, 330, "Eddhead")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "Lover of Dr. Pepper, not Cola\n\nUnlocked by completing the Attic", 25, 250)
				//break;
				//case 3:
				//	draw_text(320, 330, "Nevadian")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "Don't let her near blenders while she's wearing this\n\nUnlocked by completing the Stronghold", 25, 250)
				//break;
				//case 4:
				//	draw_text(320, 330, "Some Schmo")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "Generic, but disliked by greed\n\nUnlocked by completing the Storage Facility", 25, 250)
				//break;
				//case 5:
				//	draw_text(320, 330, "Submarine Bean")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "She's a Pisces, afterall\n\nUnlocked by completing the Wheatfield", 25, 250)
				//break;
				//case 6:
				//	draw_text(320, 330, "Eyebleeding")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "OW MY EYES\n\nUnlocked by completing the Halls", 25, 250)
				//break;
				//case 7:
				//	draw_text(320, 330, "Technicolour")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "Don't deal with the devil!\n\nUnlocked by completing the Hotel", 25, 250)
				//break;
				//case 8:
				//	draw_text(320, 330, "Cotton Candy")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "Better than Neon pink, I guess\n\nUnlocked by completing the Forest", 25, 250)
				//break;
				//case 9:
				//	draw_text(320, 330, "Motherly Dress")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "She's why you're named Beanie!\n\nUnlocked by completing a level with all modifiers enabled", 25, 250)
				//break;
				//case 10:
				//	draw_text(320, 330, "Pants' Pants")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "Kinda stinks\n\nUnlocked by completing all levels with all modifiers enabled", 25, 250)
				//break;
				//case 11:
				//	draw_text(320, 330, "White")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "You fucking yankee\n\nUnlocked by dying in a level after having completed all objectives", 25, 250)
				//break;
				//case 12:
				//	draw_text(320, 330, "Goopy")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "What a silly little lemon dog\n\nUnlocked by beating the game", 25, 250)
				//break;
				//case 13:
				//	draw_text(320, 330, "A True Bops")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "Brag about it, you earned it!\nStrangely see-through\n\nUnlocked by getting an [H] rank", 25, 250)
				//break;
				//case 14:
				//	draw_text(320, 330, "Timothy")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "Only he would intentionally get this bad of a rank\n\nUnlocked by getting an [F] rank", 25, 250)
				//break;
				//case 15:
				//	draw_text(320, 330, "Strange plushie")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "She's a bit of a klutz and a blockhead\n\nUnlocked by collecting all plushies", 25, 250)
				//break;
				//case 16:
				//	draw_text(320, 330, "Weird mascot")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "Har har har har har har\n\nUnlocked by collecting all cereal boxes", 25, 250)
				//break;
				//case 17:
				//	draw_text(320, 330, "Fastest Bitch")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "Gets cancer and rabies, and eat their own babies\n\nUnlocked by beating the game faster than fast", 25, 250)
				//break;
				//case 18:
				//	draw_text(320, 330, "Logan Watkins")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "Your antithesis\n\nUnlocked by taunting TOO MUCH", 25, 250)
				//break;
				//case 19:
				//	draw_text(320, 330, "Extra Normal")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "There's nothing wrong with me\n\nUnlocked by beating Repressed mode", 25, 250)
				//break;
				//case 20:
				//	draw_text(320, 330, "Tree hugging, Rock kisser")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "USE YOUR BRAKES\n\nUnlocked by beating all modifier Repressed mode", 25, 250)
				//break;
				//case 21:
				//	draw_text(320, 330, "Wolf in Sheep's clothing")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "Strawberry lemonade\n\nUnlocked by getting a Fae-rie", 25, 250)
				//break;
				//case 22:
				//	draw_text(320, 330, "Pastel Perfection")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "Easy on the eyes\n\nUnlocked by beating Repressed mode without using a single Fae-rie", 25, 250)
				//break;
				//case 23:
				//	draw_text(320, 330, "Bloodied")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "That fucking sucked\n\nUnlocked by completing a lucid dream with all monsters active with More to do, Runner, and Persistence enabled", 25, 250)
				//break;
				//case 24:
				//	draw_text(320, 330, "Manimo's fit")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "Smells like bad humour\n\nUnlocked by dying to Manimo/The Mimic", 25, 250)
				//break;
				//case 25:
				//	draw_text(320, 330, "Mathi Zentai")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "Orange-tastic!\n\nUnlocked by dying to Mathi/The Brute", 25, 250)
				//break;
				//case 26:
				//	draw_text(320, 330, "Pravi Paint")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "Saxophone talent not included\n\nUnlocked by dying to Pravi/The Pawn", 25, 250)
				//break;
				//case 27:
				//	draw_text(320, 330, "Sports' Tux")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "Anyone home?\n\nUnlocked by dying to Sports/The Umpire", 25, 250)
				//break;
				//case 28:
				//	draw_text(320, 330, "Ava fursuit")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "Someone pissed in this.\n\nUnlocked by dying to Ava/The Lookout", 25, 250)
				//break;
				//case 29:
				//	draw_text(320, 330, "Valerix skin suit")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "Italian leather\n\nUnlocked by dying to Valerix/The Equine", 25, 250)
				//break;
				//case 30:
				//	draw_text(320, 330, "DJ's Mist")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "Shhh...\n\nUnlocked by dying to DJ/The Seer", 25, 250)
				//break;
				//case 31:
				//	draw_text(320, 330, "Fatherly suit")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "He's the reason you could make this game\n\nUnlocked by dying to your Father/The Maestro", 25, 250)
				//break;
				//case 32:
				//	draw_text(320, 330, "Joetube jeans")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "Ignore the white stains\n\nUnlocked by dying to Joetube/The Monster", 25, 250)
				//break;
				//case 33:
				//	draw_text(320, 330, "STOPSIGN")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "bzzt\nNOOOOO\n\nUnlocked by dying to A-90/The Faulter", 25, 250)
				//break;
				//case 34:
				//	draw_text(320, 330, "Coconut's Apron")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "A top tier chef\n\nUnlocked by dying to Coconut/The Chef", 25, 250)
				//break;
				//case 35:
				//	draw_text(320, 330, "Fusion-esqe paint job")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "Crumpet munchers, smh\n\nUnlocked by dying to Fusion/The Doll", 25, 250)
				//break;
				//case 36:
				//	draw_text(320, 330, "Inverse")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "It's you, but not really\n\nUnlocked by dying to yourself/The Doubt", 25, 250)
				//break;
				//case 37:
				//	draw_text(320, 330, "Monochrome")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "I'm dead\n\nUnlocked by dying in everyway possible", 25, 250)
				//break;
				//case 38:
				//	draw_text(320, 330, "Zombean")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "Grrg...Brainz\n\nUnlocked by dying more than you really should", 25, 250)
				//break;
				//case 39:
				//	draw_text(320, 330, "Genuine DJ")
				//	draw_set_color(c_grey)
				//	draw_text_ext(320, 360, "Thank you :]\n\nUnlocked by 100%'ing the game or by being DJ", 25, 250)
				//break;
				//default:
					
				//break;
		break;
		case 1:
			if (global.palettemanimo = 0){
				draw_text(320, 330, "Manimo skin")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Stolen\n\nUnlocked by being a mimic", 25, 250)
			}else if (global.palettemanimo = 1){
				draw_text(320, 330, "Beanie's Clothes")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Pilfered from her corpse\n\nUnlocked by dying to The Mimic/Manimo", 25, 250)
			}else if (global.palettemanimo = 2){
				draw_text(320, 330, "Strange Alien")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Holy shit is that fucking Xnorbyl Glleegneegalk!?\n\nUnlocked by finding every single plushie", 25, 250)
			}else if (global.palettemanimo = 3){
				draw_text(320, 330, "County Creature")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Nothing's worth this risk\n\nUnlocked by dying more than you should", 25, 250)
			}else if (global.palettemanimo = 4){
				draw_text(320, 330, "Mythic Manimo")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "1/100000!!!!\n\nUnlocked by getting an [H] Rank", 25, 250)
			}
		break;
		case 6:
			if (global.palettevalerix = 0){
				draw_text(320, 330, "Cannibal Horse")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Woah there girl\n\nUnlocked by being a cannibal horse", 25, 250)
			}else if (global.palettevalerix = 1){
				draw_text(320, 330, "Beanie's Skin Suit")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Skin's unhealthy\n\nUnlocked by dying to The Equine/Valerix", 25, 250)
			}else if (global.palettevalerix = 2){
				draw_text(320, 330, "Sussed Out")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Green saboteur\n\nUnlocked by completing The Forest", 25, 250)
			}else if (global.palettevalerix = 3){
				draw_text(320, 330, "Chester")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Chester from Brawlstars by Supercell\n\nUnlocked by beating The Wheatfield with all modifiers enabled", 25, 250)
			}else if (global.palettevalerix = 4){
				draw_text(320, 330, "Stotchhold")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "You're grounded!\n\nUnlocked by getting an [F] Rank", 25, 250)
			}
		break;
		case 2:
			if (global.palettemathi = 0){
				draw_text(320, 330, "Orange")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Feeling glad!!\n\nUnlocked by being german", 25, 250)
			}else if (global.palettemathi = 1){
				draw_text(320, 330, "Beanie paint")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Not much to change\n\nUnlocked by dying to Mathi/The Brute", 25, 250)
			}else if (global.palettemathi = 2){
				draw_text(320, 330, "Ball Brother")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Brother's in arms(or lack there of for pravi)\n\nUnlocked by beating The Stronghold", 25, 250)
			}else if (global.palettemathi = 3){
				draw_text(320, 330, "Blue Guy")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "A prototype that can't really be named.\n\nUnlocked by beating The Hotel", 25, 250)
			}else if (global.palettemathi = 4){
				draw_text(320, 330, "PURPLE GUY??")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "He always comes back\nthe prick.\n\nUnlocked by dying to Fusion/The Doll", 25, 250)
			}
		break;
		case 3:
			if (global.palettepravi = 0){
				draw_text(320, 330, "Pink Ball")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Volatile, musically inclined, and a bit cancerous\n\nUnlocked by being not Indonesian", 25, 250)
			}else if (global.palettepravi = 1){
				draw_text(320, 330, "Beanie Ball")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Snugged up in her stolen, charred hair\n\nUnlocked by dying to Pravi/The Pawn", 25, 250)
			}else if (global.palettepravi = 3){
				draw_text(320, 330, "Radioactive")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Cancer premium\n\nUnlocked by beating the Stronghold", 25, 250)
			}else if (global.palettepravi = 2){
				draw_text(320, 330, "Furniture")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Comes with instructions on reassembly\n\nUnlocked by dying after completing every objective in a level", 25, 250)
			}else if (global.palettepravi = 4){
				draw_text(320, 330, "Meet your troyd")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Comes from Space\n\nUnlocked by beating Repressed mode", 25, 250)
			}
		break;
		case 4:
			if (global.palettesports = 0){
				draw_text(320, 330, "Fancy Suit")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Snazzy!\n\nUnlocked by being a football", 25, 250)
			}else if (global.palettesports = 1){
				draw_text(320, 330, "Beanie Suit")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Golden perfection\n\nUnlocked by dying to Sports/The Umpire", 25, 250)
			}else if (global.palettesports = 2){
				draw_text(320, 330, "Warriordan's Threads")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Hater of generators and enjoyer of Yakuza\n\nUnlocked by dying to Warriordan/The Shroud", 25, 250)
			}else if (global.palettesports = 3){
				draw_text(320, 330, "In his prime")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Thy gore shall GLISTEN before the temples of Man", 25, 250)
			}else if (global.palettesports = 4){
				draw_text(320, 330, "Blue ball'd")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Got fucked up last friday night\n\nUnlocked by dying more than you really should", 25, 250)
			}
		break;
		case 5:
			if (global.paletteava = 0){
				draw_text(320, 330, "Lunyan")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "An alien from a far off planet \nI think.\n\nUnlocked by being an alien cat", 25, 250)
			}else if (global.paletteava = 1){
				draw_text(320, 330, "Beanie fursuit")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Someone pissed in this, too.\n\nUnlocked by dying to Ava/The Lookout", 25, 250)
			}else if (global.paletteava = 2){
				draw_text(320, 330, "Mirror self")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Does this one ring a bell?\n\nUnlocked by dying to Yourself/The Doubt", 25, 250)
			}else if (global.paletteava = 3){
				draw_text(320, 330, "Perfect Species")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Gnarp gnarp\n\nUnlocked by beating all levels with all modifiers enabled", 25, 250)
			}else if (global.paletteava = 4){
				draw_text(320, 330, "Anxious one")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "His name fucking sucks to spell\n\nUnlocked by beating level without using the flashlight", 25, 250)
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
				draw_text_ext(320, 360, "An asshole often wears these while making really rude jokes\n\nUnlocked by being a dad", 25, 250)
			}else if (global.palettefather = 1){
				draw_text(320, 330, "Yellow Mockery")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Stop fucking mumbling\n\nUnlocked by dying to your Father/The Maestro", 25, 250)
			}else if (global.palettefather = 2){
				draw_text(320, 330, "Hardcore")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Often confused for a lad named Calvin\n\nUnlocked by beating all levels with all modifiers enabled", 25, 250)
			}else if (global.palettefather = 3){
				draw_text(320, 330, "Black knight")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Worse than a flesh wound\n\nUnlocked by dying in every way possible", 25, 250)
			}else if (global.palettefather = 4){
				draw_text(320, 330, "Able bodied")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Steak lover and first person game\n\nUnlocked by dying to Sports/The Umpire", 25, 250)
			}
		break;
		case 9:
			if (global.palettejoetube = 4){
				draw_text(320, 330, "Giza Glass")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Watch your head and neck, if you'd kindly\n\nUnlocked by beating a level without using the flashlight", 25, 250)
			}else if (global.palettejoetube = 1){
				draw_text(320, 330, "Pocket Monster")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Weak to Fire, Fighting and Ground\n\nUnlocked by being a blue pocket monster", 25, 250)
			}else if (global.palettejoetube = 2){
				draw_text(320, 330, "Beanie Fur")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "I'm running out of ideas for descriptions lmao\n\nUnlocked by dying to Joetube/The Monster", 25, 250)
			}else if (global.palettejoetube = 3){
				draw_text(320, 330, "V1")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Watch out! \nHe might ultra kill you!\n\nUnlocked by getting a [P]- I mean [H] Rank", 25, 250)
			}else if (global.palettejoetube = 5){
				draw_text(320, 330, "Satanic Panic")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "You're that BLASTed devil that stole my spirits!!\n\nUnlocked by beating the game faster than fast", 25, 250)
			}
		break;
		case 10:
			if (global.palettea90 = 0){
				draw_text(320, 330, "HEART STOPPER")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "FOUND IN SOME ROOMS\n\nUNLOCKED BY NOT BEING REAL", 25, 250)
			}else if (global.palettea90 = 1){
				draw_text(320, 330, "STOPPED THE BOPPER")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "BEANIE BLOCKER\n\nUNLOCKED BY DYING TO A-90/THE FAULTER", 25, 250)
			}else if (global.palettea90 = 2){
				draw_text(320, 330, "BLUE STOPSIGN")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "WELCOME TO THE UNDERGROUND\n\nUNLOCKED BY BEATING REPRESSED MODE", 25, 250)
			}else if (global.palettea90 = 3){
				draw_text(320, 330, "INVERTED")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "MUSCLE MEMORY WILL DESTROY YOU\n\nUNLOCKED BY", 25, 250)
			}else if (global.palettea90 = 4){
				draw_text(320, 330, "OBNOXIOUS")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "FUCK YOUR EYES\n\nUNLOCKED BY BEATING ALL MODIFIER REPRESSED MODE", 25, 250)
			}
		break;
		case 11:
			if (global.palettecoconut = 0){
				draw_text(320, 330, "Tropical Chef")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "He's coconuts\n\nUnlocked by being a tropical guy", 25, 250)
			}else if (global.palettecoconut = 1){
				draw_text(320, 330, "Legume attire")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Baking some beans\n\nUnlocked by dying to Coconut/The Chef", 25, 250)
			}else if (global.palettecoconut = 2){
				draw_text(320, 330, "Im-pear'd")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Hates oranges\n\nUnlocked by beating a level with all modifiers enabled", 25, 250)
			}else if (global.palettecoconut = 3){
				draw_text(320, 330, "Flame grilled")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Frost and fire\n\nUnlocked by getting an [F] Rank", 25, 250)
			}else if (global.palettecoconut = 4){
				draw_text(320, 330, "Skinned")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "FUCKING OW\n\nUnlocked by dying in every way possible", 25, 250)
			}
		break;
		case 12:
			if (global.palettefusion = 0){
				draw_text(320, 330, "purple puppet")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "no strings attached\n\nunlocked by being a purple doll", 25, 250)
			}else if (global.palettefusion = 1){
				draw_text(320, 330, "beanie baby")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "actually a plushie, not a puppet\n\nunlocked by dying to Fusion/The Doll", 25, 250)
			}else if (global.palettefusion = 2){
				draw_text(320, 330, "coloorful crew")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "space dweller\n\nunlocked by beating the forest", 25, 250)
			}else if (global.palettefusion = 3){
				draw_text(320, 330, "neon genesis")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "virtual-like reality\n\nunlocked by ", 25, 250)
			}else if (global.palettefusion = 4){
				draw_text(320, 330, "bloodshot body")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "not her's\n\nunlocked by completing a lucid dream with all monsters active with more to do, runner, and persistence enabled", 25, 250)
			}
		break;
		case 13:
			if (global.palettecriminal = 0){
				draw_text(320, 330, "Rotted meat")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Disgusting!\n\nUnlocked by being a festering pile of flesh", 25, 250)
			}else if (global.palettecriminal = 1){
				draw_text(320, 330, "Bean mush")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Grinded up the beans\n\nUnlocked by dying to Criminal/The Rot", 25, 250)
			}else if (global.palettecriminal = 2){
				draw_text(320, 330, "Booger")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Nosepicker\n\nUnlocked by taunting too much", 25, 250)
			}else if (global.palettecriminal = 3){
				draw_text(320, 330, "Mathi's nightmare")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Blocks doors!!\n\nUnlocked by dying to Mathi/The Brute", 25, 250)
			}else if (global.palettecriminal = 4){
				draw_text(320, 330, "MANIMO SLOP")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "MANIMO SLOP\n\nUnlocked by dying to Manimo/The Mimic", 25, 250)
			}
		break;
		case 14:
			if (global.palettewarriordan = 0){
				draw_text(320, 330, "Shadow")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Spooky\n\nUnlocked by ", 25, 250)
			}else if (global.palettewarriordan = 1){
				draw_text(320, 330, "Beanie blotter")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Famous streamer personality Beanie Bopper!\n\nUnlocked by dying to Warriordan/The Shroud", 25, 250)
			}else if (global.palettewarriordan = 2){
				draw_text(320, 330, "Crystal clear")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "It's very apparent\nTRANSPARENT\n\nUnlocked by beating The Storage Facility", 25, 250)
			}else if (global.palettewarriordan = 3){
				draw_text(320, 330, "Deep hue")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Queries and questions, how quirky\n\nUnlocked by taunting more than you should", 25, 250)
			}else if (global.palettewarriordan = 4){
				draw_text(320, 330, "Pure dark")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "True fear will be known\n\nUnlocked by beating all levels with all modifiers enabled", 25, 250)
			}
		break;
		case 15:
			if (global.paletteroachy = 0){
				draw_text(320, 330, "Virus")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Deleting system32\n\nUnlocked by being a virus", 25, 250)
			}else if (global.paletteroachy = 1){
				draw_text(320, 330, "Bloatware")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "If you don't get the name, you never will\n\nUnlocked by dying to Roachy/The Malware", 25, 250)
			}else if (global.paletteroachy = 2){
				draw_text(320, 330, "EXEcutable")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Bloodied eyes\n\nUnlocked by dying in every way possible", 25, 250)
			}else if (global.paletteroachy = 3){
				draw_text(320, 330, "Morris' worm")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Maggot filled too!\n\nUnlocked by dying to Criminal/The Rot", 25, 250)
			}else if (global.paletteroachy = 4){
				draw_text(320, 330, "Idiot")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "That's what you are\n\nUnlocked by dying after completing all objectives in a level", 25, 250)
			}
		break;
		case 16:
			if (global.palettelydia = 0){
				draw_text(320, 330, "Pride")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "As expected.\n\nUnlocked by being her", 25, 250)
			}else if (global.palettelydia = 1){
				draw_text(320, 330, "Greed")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Greed takes and takes and leaves nothing.\n\nUnlocked by dying to yourself/The Doubt", 25, 250)
			}else if (global.palettelydia = 2){
				draw_text(320, 330, "Envy")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Enny denies yourself joy from within.\n\nUnlocked by dying to Ava/The Lookout", 25, 250)
			}else if (global.palettelydia = 4){
				draw_text(320, 330, "Sloth")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Sloth kills ambition before it can bloom.\n\nUnlocked by dying to Mathi/The Brute or Pravi/The Pawn", 25, 250)
			}else if (global.palettelydia = 3){
				draw_text(320, 330, "Wrath")
				draw_set_color(c_grey)
				draw_text_ext(320, 360, "Wrath blurs friend to foe.\n\nUnlocked by dying to your Father/The Maestro", 25, 250)
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