pathdelay -= 1

if (pathdelay = 0){
	mp_grid_path(global.mp_grid, path, x, y, x_target, y_target, true)
	randomize()
	pathdelay = 4 + irandom_range(-2, 2)
	if (state !="aggro" && state != "return"){
		x_target = x
		y_target = y
	}
	if (state != "explode" && state != "respawn"){
		if (!collision_line(x, y, obj_player.x, obj_player.y + 32, obj_solid, false, true)){
			if (collision_circle(x, y, 250, obj_player, false, true)){
				x_target = obj_player.x
				y_target = obj_player.y + 32
				attention = aggrotime
				if (state != "aggro"){
					global.danger += 1.5
					randomize()
					audio_stop_sound(voice)
					audio_play_sound(mus_chasetrans, 1, false)
					voice = choose(sfx_monster_pravi_aggro_1, sfx_monster_pravi_aggro_2, sfx_monster_pravi_aggro_3)
					audio_play_sound_at(voice, x, y, 0, 1000, 2000, 1, false, 1, 0.7)	
				}
				state = "aggro"
			}
		}
	}
	if (state = "aggro"){
		path_start(path, chasespeed, path_action_stop, false)
	}else if (state = "return"){
		path_start(path, chasespeed, path_action_stop, false)
	}else{
		path_end()
	}
}

if (state = "explode"){
	audio_emitter_position(soundemitter, x, y, 0)
	if (round(image_index) = 39 && !exploded){
		audio_play_sound_at(sfx_monster_pravi_explode, x, y, 0, 1400, 3000, 1, false, 1, 0.45)	
		exploded = true
		scr_loudnoise()
		if (collision_circle(x, y, 250, obj_player, false, true)){
			if ((obj_player.hp - 55) < 0){
				//if (!obj_game.ACHIEVE_death_pravi){
				//	ini_open("savedata.ini")
				//	ini_write_real("achieves", "death_pravi", 1)
				//	obj_game.ACHIEVE_death_pravi = ini_read_real("achieves", "death_pravi", 0)
				//	ini_close()
				//}
				global.screentype = "gameover"
				obj_game.killedby = "Pravi"
				randomize()
				ini_open(lang)
				global.deathline = ini_read_string("advice", "pravi" + string(irandom_range(1, 3)), "What, there's no reasonable way that this didn't load what the fuck")
				ini_close()
				global.level = room
				room_goto(KILL_pravi)
			}else{
				obj_player.hp -= 55
				scr_loudnoise()
				with (instance_create_layer(0, 0, "whitepain", obj_whiteflash)){
					alpahreduce = 0.003125
				}
			}
		}
	}
	if (round(image_index) = 40){
		image_xscale = 1
		image_yscale = 1
	}
}

if (state = "aggro"){
	attention -= 1
	if (collision_circle(x, y, 60, obj_player, false, true)){
		state = "explode"
		image_index = 0
		audio_play_sound_on(soundemitter, sfx_monster_pravi_hiss_normal, false, 1)
	}
	if (attention <= 0 || collision_circle(x_target, y_target, 5, self, false, false)){
		global.danger -= 1.5
		randomize()
		audio_stop_sound(voice)
		voice = choose(sfx_monster_pravi_deaggro_1, sfx_monster_pravi_deaggro_2, sfx_monster_pravi_deaggro_3)
		audio_play_sound_at(voice, x, y, 0, 1000, 2000, 1, false, 1, 0.7)	
		state = "return"
		x_target = respawnx
		y_target = respawny
	}
}

if (state = "return"){
	if (collision_circle(x_target, y_target, 5, self, false, false)){
		state = "idle"
	}
}

if (state = "respawn"){
	respawntime -= 1
	if (respawntime <= 0){
		state = "idle"
		image_alpha = 1
		randomize()
		audio_stop_sound(voice)
		voice = choose(sfx_monster_pravi_respawn_1, sfx_monster_pravi_respawn_2)
		audio_play_sound_at(voice, x, y, 0, 1250, 2500, 1, false, 1, 1.25)	
	}
}

if (waittime >= 2400){
	if (state = "idle" || state = "return" || state = "respawn"){
		randomize()
		var _place = choose(0, 2, 4, 6, 8, 10)
		x = ds_list_find_value(respawnlocations, _place)
		y = ds_list_find_value(respawnlocations, _place + 1)
		randomize()
		audio_stop_sound(voice)
		voice = choose(sfx_monster_pravi_respawn_1, sfx_monster_pravi_respawn_2)
		audio_play_sound_at(voice, x, y, 0, 1250, 2500, 1, false, 1, 1.25)	
		respawnx = x
		respawny = y
		waittime = 0
	}
}

if (state = "idle"){
	waittime += 1
	path_end()
}

if (instance_exists(obj_monster_a90)){
	if (obj_monster_a90.timer > 30 && obj_monster_a90.move = 0){ 	
		path_speed = 0
		image_speed = 0
	}
}else{
	image_speed = 1
}

if (!exploded){
	if (direction > 89 && direction < 271){
		image_xscale = -0.25
	}else{
		image_xscale = 0.25
	}
}

//if (sprite_index != asset_get_index("spr_monster_pravi_" + facedir + "_idle")){
//	if (floor(image_index) = 4||floor(image_index) = 1){	
//		if (!stepped){
//			stepped = true
//			randomize()
//			var _pitch = random_range(0.95, 1.05)
//			foot = choose(sfx_monster_pravi_step_1, sfx_monster_pravi_step_2, sfx_monster_pravi_step_3)
//			audio_play_sound_at(foot, x, y, 0, 600, 1200, 1, false, 1, 0.65, 0, _pitch)
//		}
//	}else{
//		stepped = false
//	}
//}

if (state = "aggro"|| state = "return"){	
	sprite_index = spr_monster_pravi_roll
}else if (state = "explode"){	
	sprite_index = spr_monster_pravi_explode
}else if (state = "idle"){	
	sprite_index = spr_monster_pravi_idle
}