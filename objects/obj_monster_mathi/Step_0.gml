pathdelay -= 1

if (pathdelay = 0){
	if (state != "charge"){	
		mp_grid_path(global.mp_gridcrouch, path, x, y, x_target, y_target, true)
	}else{
		mp_grid_path(global.mp_gridcrouch, path, x, y, x_target, y_target, false)
	}
	randomize()
	pathdelay = 4 + irandom_range(-2, 2)
	if (state !="aggro" && state != "charge" && state != "wind"){
		x_target = poi.x
		y_target = poi.y
	}
	if (state != "recover" && state != "charge" && state != "wind"){
		if (!collision_line(x, y, obj_player.x, obj_player.y + 32, obj_solid, false, true)){
			if (distance_to_object(obj_player) < eyesight){
				x_target = obj_player.x
				y_target = obj_player.y + 48
				attention = aggrotime
				if (state != "aggro" && state != "recover"){
					global.danger += 1.5
					randomize()
					audio_play_sound(mus_chasetrans, 1, false)
					voice = choose(sfx_monster_mathi_aggro_1, sfx_monster_mathi_aggro_2, sfx_monster_mathi_aggro_3)
					audio_play_sound_at(voice, x, y, 0, 1000, 2000, 1, false, 1, 0.7)	
				}
				state = "aggro"
			}
		}
	}
	if (state = "aggro"){
		path_start(path, chasespeed, path_action_stop, false)
	}else if (state = "charge"){
		path_start(path, chargespeed, path_action_stop, false)
	}else if (state = "wander"){
		path_start(path, movespeed, path_action_stop, false)
	}
}

if (place_meeting(obj_player.x, obj_player.y, obj_enemyunreachable) && (state = "investigate"||state = "aggro")){
	state = "wander"
	poi.touched = true
	x_target = poi.x
	y_target = poi.y
}

if (state = "aggro"){
	x_target = obj_player.x
	y_target = obj_player.y + 48
	attention -= 1
	if (collision_circle(x, y, 250, obj_player, false, true) || collision_rectangle(bbox_right, bbox_bottom, bbox_left, bbox_top, obj_player, false, true)){
		state = "wind"
		windtime = 0
		attention = 0
	}
	if ((attention <= 0 && state != "wind")|| collision_circle(x_target, y_target, 10, self, false, false)){
		global.danger -= 1.5
		randomize()
		voice = choose(sfx_monster_mathi_deaggro_1, sfx_monster_mathi_deaggro_2, sfx_monster_mathi_deaggro_3)
		audio_play_sound_at(voice, x, y, 0, 1000, 2000, 1, false, 1, 0.7)	
		state = "idle"
		randomize()
		idletime = irandom_range(90, 120)
		poi.x = x_target
		poi.y = y_target
	}
}

if (state = "wind"){
	path_end()
	windtime += 1
	x_target = obj_player.x + obj_player.spdX
	y_target = obj_player.y + 48 + obj_player.spdY
	if (windtime >= 90){
		if (collision_circle(x, y, 75, obj_player, false, true)||collision_rectangle(bbox_right, bbox_bottom, bbox_left, bbox_top, obj_player, false, true)){
			if (!obj_game.ACHIEVE_death_mathi){
				ini_open("savedata.ini")
				ini_write_real("achieves", "death_mathi", 1)
				obj_game.ACHIEVE_death_mathi = ini_read_real("achieves", "death_mathi", 0)
				ini_close()
			}
			global.screentype = "gameover"
			obj_game.killedby = "Mathi"
			global.level = room
			room_goto(KILL_mathi)
		}
		randomize()
		voice = choose(sfx_monster_mathi_charge_1, sfx_monster_mathi_charge_2, sfx_monster_mathi_charge_3)
		audio_play_sound_at(voice, x, y, 0, 1000, 2000, 1, false, 1, 0.7)	
		state = "charge"
		mp_grid_path(global.mp_gridcrouch, path, x, y, x_target, y_target, true)
	}
}

if (state = "charge"){
	windtime += 1
	if (windtime < 135){
		x_target = obj_player.x + obj_player.spdX
		y_target = obj_player.y + 48 + obj_player.spdY
	}
	if (collision_circle(x_target, y_target, 15, self, false, false)){
		state = "recover"
		global.danger -= 1.5
		idletime = 90
	}
}

if (state = "wander"){
	if (collision_circle(x_target, y_target, 15, self, false, false)){
		state = "idle"
		randomize()
		idletime = irandom_range(90, 160)
		poi.touched = true
		facedir = "front"
	}
}

if (state = "idle"||state = "recover"){
	path_end()
	idletime -= 1
	if (idletime <= 0){
		state = "wander"
		poi.touched = true
		x_target = poi.x
		y_target = poi.y
	}
}

if (instance_exists(obj_monster_a90)){
	if (obj_monster_a90.timer > 30 && obj_monster_a90.move = 0){ 	
		path_speed = 0
		image_speed = 0
	}
}else{
	image_speed = 1
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

if (sprite_index != asset_get_index("spr_monster_mathi_" + facedir + "_idle")){
	if (floor(image_index) = 1){	
		if (!stepped){
			stepped = true
			randomize()
			var _pitch = random_range(0.95, 1.05)
			foot =sfx_monster_mathi_step
			audio_play_sound_at(foot, x, y, 0, 1200, 2400, 1, false, 1, 1.25, 0, _pitch)
		}
	}else{
		stepped = false
	}
}

if (state = "charge"){
	image_speed = 2.25
}else{
	image_speed = 1
}

if (state != "idle" && state != "recover" && state != "wind"){	
	sprite_index = asset_get_index("spr_monster_mathi_" + facedir + "_move")
}else{	
	sprite_index = asset_get_index("spr_monster_mathi_" + facedir + "_idle")
}

if (collision_circle(x, y, 75, obj_player, false, true) && state = "charge"){
	if (!obj_game.ACHIEVE_death_mathi){
		ini_open("savedata.ini")
		ini_write_real("achieves", "death_mathi", 1)
		obj_game.ACHIEVE_death_mathi = ini_read_real("achieves", "death_mathi", 0)
		ini_close()
	}
	global.screentype = "gameover"
	obj_game.killedby = "Mathi"
	global.level = room
	room_goto(KILL_mathi)
}