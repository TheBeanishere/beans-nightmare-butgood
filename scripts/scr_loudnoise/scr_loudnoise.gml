// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_loudnoise(){
	global.alertx = self.x
	global.alerty = self.y
	if (instance_exists(obj_monster_manimo)){
		obj_monster_manimo.alerted = true
	}
	if (instance_exists(obj_monster_sports)){
		obj_monster_sports.alerted = true
	}
	if (instance_exists(obj_monster_valerix) && distance_to_object(obj_monster_valerix) < 270){
		if (obj_monster_valerix.state = "hunt"){
			global.danger -= 1.5
			obj_monster_valerix.nest = instance_furthest(obj_monster_valerix.x, obj_monster_valerix.y, obj_valerix_nest)
			obj_monster_valerix.state = "scared"
			obj_monster_valerix.chasespeed = 4
			randomize()
			obj_monster_valerix.voice = choose(sfx_monster_PH_valerix_scare_1, sfx_monster_PH_valerix_scare_2)
			audio_play_sound_at(obj_monster_valerix.voice, obj_monster_valerix.x, obj_monster_valerix.y, 0, 1000, 2000, 1, false, 1, 0.7)	
		}
	}
	if (instance_exists(obj_monster_valerix_corn) && distance_to_object(obj_monster_valerix_corn) < 270){
		if (obj_monster_valerix_corn.state = "hunt"){
			global.danger -= 1.5
			obj_monster_valerix_corn.scaredcounter += 1
			obj_monster_valerix_corn.nest = instance_furthest(obj_monster_valerix_corn.x, obj_monster_valerix_corn.y, obj_valerix_nest)
			obj_monster_valerix_corn.state = "scared"
			obj_monster_valerix_corn.chasespeed = 4
			randomize()
			obj_monster_valerix_corn.voice = choose(sfx_monster_PH_valerix_scare_1, sfx_monster_PH_valerix_scare_2)
			audio_play_sound_at(obj_monster_valerix_corn.voice, obj_monster_valerix_corn.x, obj_monster_valerix_corn.y, 0, 1000, 2000, 1, false, 1, 0.7)	
		}
	}
}