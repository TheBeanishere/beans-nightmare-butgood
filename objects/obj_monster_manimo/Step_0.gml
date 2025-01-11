pathdelay -= 1

if (pathdelay <= 0){
	var _x1 = lengthdir_x(eyesight, direction - 55)
	var _x2 = lengthdir_x(eyesight, direction + 55)
	var _y1 = lengthdir_y(eyesight, direction - 55)
	var _y2 = lengthdir_y(eyesight, direction + 55)
	if ((collision_circle(x, y, awareness, obj_player, false, true)&& !collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, true))||(point_distance(x, y, obj_player.x, obj_player.y) < eyesight && !collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, true))){
		if (!place_meeting(obj_player.x, obj_player.y, obj_solid_crouch)){
			x_target = (round(obj_player.x/TS))*32
			y_target =  (round((obj_player.y + 64)/TS))*32
		}else{
			var _goto = instance_nearest(obj_player.x, obj_player.y, obj_crouch_poi)
			x_target = (round(_goto.x/TS))*32
			y_target = (round(_goto.x/TS))*32
		}
		if (state != "aggro"){
			if (audio_is_playing(voice)){
				audio_stop_sound(voice)
			}
			randomize()
			voice = choose(sfx_monster_manimo_aggro_1, sfx_monster_manimo_aggro_2, sfx_monster_manimo_aggro_3)
			audio_play_sound_at(voice, x, y, 0, 1000, 2000, 1, false, 1, 0.7)	
			global.danger += 1.5
			
		}
		state = "aggro"
		attention = aggrotime
	}
	mp_grid_path(global.mp_gridcrouch, path, x, y, x_target, y_target, true)
	if (state = "aggro"){	
		path_start(path, chasespeed, path_action_stop, true)
	}else if (state = "investigate"){	
		path_start(path, investspeed, path_action_stop, true)
	}else if (state = "wander"){	
		path_start(path, movespeed, path_action_stop, true)
	}
	pathdelay = 4 + irandom_range(-2, 2)
}

if (instance_exists(obj_monster_a90)){
	if (obj_monster_a90.timer > 30 && obj_monster_a90.move = 0){ 	
		path_speed = 0
		image_speed = 0
	}
}else{
	image_speed = 1
}

if (alerted){
	alerted = false
	if (state != "aggro"){
		if (audio_is_playing(voice)){
			audio_stop_sound(voice)
		}
		randomize()
		voice = choose(sfx_monster_manimo_invest_1, sfx_monster_manimo_invest_2, sfx_monster_manimo_invest_3)
		audio_play_sound_at(voice, x, y, 0, 1000, 2000, 1, false, 1, 0.7)
		state = "investigate"
		mp_grid_path(global.mp_gridcrouch, path, x, y, x_target, y_target, true)
		path_start(path, investspeed, path_action_stop, true)
	}
}

if (state = "wander"){
	if (x = poi.x && y = poi.y){
		state = "idle"
		facedir = "front"
		idletime = 120
		poi.touched = true
	}
}

if (state = "investigate"){
	if (x = poi.x && y = poi.y){
		state = "idle"
		facedir = "front"
		idletime = 180
		poi.touched = true
	}
}

if (state = "idle"){
	path_end()
	idletime -= 1
	if (idletime <= 0){
		state = "wander"
		x_target = poi.x
		y_target = poi.y
		mp_grid_path(global.mp_gridcrouch, path, x, y, x_target, y_target, true)
		path_start(path, chasespeed, path_action_stop, true)
		pathdelay = 4 + irandom_range(-2, 2)
	}
}

if (state = "aggro"){
	if (!place_meeting(obj_player.x, obj_player.y, obj_solid_crouch)){
		x_target = (round(obj_player.x/TS))*32
		y_target =  (round(obj_player.y/TS))*32
	}else{
		var _goto = instance_nearest(obj_player.x, obj_player.y, obj_crouch_poi)
		x_target = (round(_goto.x/TS))*32
		y_target = (round(_goto.x/TS))*32
		
	}
	attention -= 1
	if (attention <= 0){
		global.danger -= 1.5
		if (audio_is_playing(voice)){
			audio_stop_sound(voice)
		}
		randomize()
		voice = choose(sfx_monster_manimo_deaggro_1, sfx_monster_manimo_deaggro_2, sfx_monster_manimo_deaggro_3)
		audio_play_sound_at(voice, x, y, 0, 1000, 2000, 1, false, 1, 0.7)
		state = "idle"
		idletime = 60
		poi.touched = true
	}
}

if (direction > 89 && direction < 271){
	image_xscale = -0.25
}else{
	image_xscale = 0.25
}

if (direction > 0 && direction < 181){
	facedir = "back"
}else{
	facedir = "front"
}

if (sprite_index != asset_get_index("spr_monster_manimo_" + facedir + "_idle")){
	if (floor(image_index) = 4||floor(image_index) = 1){	
		if (!stepped){
			stepped = true
			randomize()
			var _pitch = random_range(0.95, 1.05)
			foot = choose(sfx_monster_manimo_step_1, sfx_monster_manimo_step_2, sfx_monster_manimo_step_3)
			audio_play_sound_at(foot, x, y, 0, 600, 1200, 1, false, 1, 0.65, 0, _pitch)
		}
	}else{
		stepped = false
	}
}

if (state = "aggro"){	
	sprite_index = asset_get_index("spr_monster_manimo_" + facedir + "_chase")
}else if (state = "wander"||state = "investigate"){	
	sprite_index = asset_get_index("spr_monster_manimo_" + facedir + "_move")
}else if (state = "idle"){	
	sprite_index = asset_get_index("spr_monster_manimo_" + facedir + "_idle")
}

if (place_meeting(x, y, obj_player)){
	if (!obj_game.ACHIEVE_death_manimo){
		ini_open("savedata.ini")
		ini_write_real("achieves", "death_manimo", 1)
		obj_game.ACHIEVE_death_manimo = ini_read_real("achieves", "death_manimo", 0)
		ini_close()
	}
	global.screentype = "gameover"
	obj_game.killedby = "manimo"
	room_goto(KILL_manimo)
}