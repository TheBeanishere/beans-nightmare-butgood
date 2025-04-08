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
		
	}
	array_push(_savedata, _palettechoice)
	array_push(_savedata, _options)
	array_push(_savedata, _savewins)
	array_push(_savedata, _saveachieves)

	var _stringbs = json_stringify(_savedata, true)

	var _buffer = buffer_create(string_byte_length(_stringbs) + 1, buffer_fixed, 1)
	buffer_write(_buffer, buffer_string, _stringbs)
	buffer_save(_buffer, "savedata.sav")
	buffer_delete(_buffer)
	
	show_debug_message("Game saved!")
}