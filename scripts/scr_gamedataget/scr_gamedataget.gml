// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gamedataget(type){
	if (type = "level"){
		obj_game.WINattic = ini_read_real("wins", "attic", 0)
		obj_game.WINstronghold = ini_read_real("wins", "stronghold", 0)
		obj_game.WINstorage = ini_read_real("wins", "storage", 0)
		obj_game.WINwheatfield = ini_read_real("wins", "wheatfield", 0)
		obj_game.WINhotel = ini_read_real("wins", "hotel", 0)
		obj_game.WINforest = ini_read_real("wins", "forest", 0)
		obj_game.WINhome = ini_read_real("wins", "home", 0)
	}else if (type = "achieve"){
		
	}else if (type = "collect"){
		
	}
}