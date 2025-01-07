// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_loudnoise(){
	if (instance_exists(obj_monster_manimo)){
		obj_monster_manimo.alerted = true
		obj_monster_manimo.poi.x = (round(obj_player.x/TS))*32
		obj_monster_manimo.poi.y = (round(obj_player.y/TS))*32
		obj_monster_manimo.x_target = (round(obj_player.x/TS))*32
		obj_monster_manimo.y_target = (round(obj_player.y/TS))*32
	}
	if (instance_exists(obj_monster_valerix) && distance_to_object(obj_monster_valerix) < 270){
		if (obj_monster_valerix.state = "hunt"){
			global.danger -= 1.5
			obj_monster_valerix.nest = instance_furthest(obj_monster_valerix.x, obj_monster_valerix.y, obj_valerix_nest)
			obj_monster_valerix.state = "scared"
			obj_monster_valerix.chasespeed = 4
		}
	}
}