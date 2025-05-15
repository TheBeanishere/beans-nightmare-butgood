// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gamedataget(){
	var _savedata = array_create(0)

	var _palettechoice = {
		palbean : global.palettebeanie,
		palmanimo : global.palettemanimo,
		palmathi : global.palettemathi,
		palpravi : global.palettepravi,
		palava : global.paletteava,
		palsports : global.palettesports,
		palvalerix : global.palettevalerix,
		paldj : global.palettedj,
		palfather : global.palettefather,
		paljoetube : global.palettejoetube,
		pala90 : global.palettea90,
		palcoconut : global.palettecoconut,
		palfusion : global.palettefusion,
		palcriminal : global.palettecriminal,
		palwillow : global.palettewillow,
		palroachy : global.paletteroachy,
		pallydia : global.palettelydia
	}
	var _options = {
		language : obj_game.language,
		musicvolume : obj_game.musicvolume,
		sfxvolume : obj_game.sfxvolume,
		showfps : obj_game.showfps
	}
	var _savewins = {
		WINattic : obj_game.WINattic,
		WINstronghold : obj_game.WINstronghold,
		WINstorage : obj_game.WINstorage,
		WINwheatfield : obj_game.WINwheatfield,
		WINhotel : obj_game.WINhotel,
		WINforest : obj_game.WINforest,
		WINhome : obj_game.WINhome,
		WINrepressed : obj_game.WINrepressed,
		WINatticMOD : obj_game.WINatticMOD,
		WINstrongholdMOD : obj_game.WINstrongholdMOD,
		WINstorageMOD : obj_game.WINstorageMOD,
		WINwheatfieldMOD : obj_game.WINwheatfieldMOD,
		WINhotelMOD : obj_game.WINhotelMOD,
		WINforestMOD : obj_game.WINforestMOD,
		WINhomeMOD : obj_game.WINhomeMOD,
		WINrepressedMOD : obj_game.WINrepressedMOD,
	}
	var _saveachieves = {
		achieve1 : obj_game.achieve1,
		achieve2 : obj_game.achieve2,
		achieve3 : obj_game.achieve3,
		achieve4 : obj_game.achieve4,
		achieve5 : obj_game.achieve5,
		achieve6 : obj_game.achieve6,
		achieve7 : obj_game.achieve7,
		achieve8 : obj_game.achieve8,
		achieve9 : obj_game.achieve9,
		achieve10 : obj_game.achieve10,
		achieve11 : obj_game.achieve11,
		achieve12 : obj_game.achieve12,
		achieve13 : obj_game.achieve13,
		achieve14 : obj_game.achieve14,
		achieve15 : obj_game.achieve15,
		achieve16 : obj_game.achieve16,
		achieve17 : obj_game.achieve17,
		achieve18 : obj_game.achieve18,
		achieve19 : obj_game.achieve19,
		achieve20 : obj_game.achieve20,
		achieve21 : obj_game.achieve21,
		achieve22 : obj_game.achieve22,
		achieve23 : obj_game.achieve23,
		achieve24 : obj_game.achieve24,
		achieve25 : obj_game.achieve25
	}
	var _savetimes = {
		atticTIME : obj_game.atticTIME,
		strongholdTIME : obj_game.strongholdTIME,
		storageTIME : obj_game.storageTIME,
		wheatfieldTIME : obj_game.wheatfieldTIME,
		hotelTIME : obj_game.hotelTIME,
		forestTIME : obj_game.forestTIME,
		homeTIME : obj_game.homeTIME
	}
	array_push(_savedata, _palettechoice)
	array_push(_savedata, _options)
	array_push(_savedata, _savewins)
	array_push(_savedata, _saveachieves)
	array_push(_savedata, _savetimes)

	var _stringbs = json_stringify(_savedata, true)

	var _buffer = buffer_create(string_byte_length(_stringbs) + 1, buffer_fixed, 1)
	buffer_write(_buffer, buffer_string, _stringbs)
	buffer_save(_buffer, "savedata.sav")
	buffer_delete(_buffer)
	
	show_debug_message("Game saved!")
}