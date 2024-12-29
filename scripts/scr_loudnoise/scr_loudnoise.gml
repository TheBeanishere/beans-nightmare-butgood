// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_loudnoise(){
	if (instance_exists(obj_monster_manimo)){
		obj_monster_manimo.alerted = true
		obj_monster_manimo.poi.x = obj_player.x
		obj_monster_manimo.poi.y = obj_player.y
		obj_monster_manimo.x_target = obj_player.x
		obj_monster_manimo.y_target = obj_player.y
	}
}