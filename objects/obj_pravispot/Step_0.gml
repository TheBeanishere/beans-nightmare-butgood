if (obj_monster_pravi.state != "respawn" && obj_monster_pravi.state != "explode" && !obj_monster_pravi.respawnanim){
	if (!collision_line(x, y, obj_player.x, obj_player.y + 32, obj_solid, false, true)){
		if (collision_circle(x, y, 250, obj_player, false, true)){
			obj_monster_pravi.x_target = obj_player.x
			obj_monster_pravi.y_target = obj_player.y + 32
			obj_monster_pravi.attention = obj_monster_pravi.aggrotime
			obj_monster_pravi.respawnx = x
			obj_monster_pravi.respawny = y
			if (obj_monster_pravi.state != "aggro"){
				global.danger += 1.5
				randomize()
				audio_stop_sound(obj_monster_pravi.voice)
				audio_play_sound(mus_chasetrans, 1, false)
				obj_monster_pravi.voice = choose(sfx_monster_pravi_aggro_1, sfx_monster_pravi_aggro_2, sfx_monster_pravi_aggro_3)
				audio_play_sound_at(obj_monster_pravi.voice, obj_monster_pravi.x, obj_monster_pravi.y, 0, 1000, 2000, 1, false, 1, 0.7)	
			}
			obj_monster_pravi.state = "aggro"
		}
	}
}

if (obj_monster_pravi.state = "respawn"){
	image_alpha = 0.25
}else{
	image_alpha = 0.55
}
	