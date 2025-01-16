pathdelay -= 1

if (pathdelay = 0){
	mp_grid_path(global.mp_gridcrouch, path, x, y, x_target, y_target, true)
	randomize()
	pathdelay = 4 + irandom_range(-2, 2)
	if (state !="aggro"){
		x_target = poi.x
		y_target = poi.y
	}
	if (!collision_line(x, y, obj_player.x, obj_player.y + 32, obj_solid, false, true)){
		if (distance_to_object(obj_player) < eyesight){
			x_target = obj_player.x
			y_target = obj_player.y + 32
			attention = aggrotime
			if (state != "aggro"){
				global.danger += 1.5
				randomize()
				audio_play_sound(mus_chasetrans, 1, false)
				voice = choose(sfx_monster_manimo_aggro_1, sfx_monster_manimo_aggro_2, sfx_monster_manimo_aggro_3)
				audio_play_sound_at(voice, x, y, 0, 1000, 2000, 1, false, 1, 0.7)	
			}
			state = "aggro"
		}
	}
	if (state = "aggro"){
		path_start(path, chasespeed, path_action_stop, false)
	}else if (state = "investigate"){
		path_start(path, investspeed, path_action_stop, false)
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

if (alerted){
	if (state != "aggro"){
		randomize()
		voice = choose(sfx_monster_manimo_invest_1, sfx_monster_manimo_invest_2, sfx_monster_manimo_invest_3)
		audio_play_sound_at(voice, x, y, 0, 1000, 2000, 1, false, 1, 0.7)	
		alerted = false
		poi.x = obj_player.x
		poi.y = obj_player.y + 32
		x_target = obj_player.x
		y_target = obj_player.y + 32
		state = "investigate"
	}
}

if (state = "aggro"){
	attention -= 1
	x_target = obj_player.x
	y_target = obj_player.y + 32
	if (attention <= 0 || collision_circle(x_target, y_target, 5, self, false, false)){
		global.danger -= 1.5
		randomize()
		voice = choose(sfx_monster_manimo_deaggro_1, sfx_monster_manimo_deaggro_2, sfx_monster_manimo_deaggro_3)
		audio_play_sound_at(voice, x, y, 0, 1000, 2000, 1, false, 1, 0.7)	
		state = "wander"
		poi.x = x_target
		poi.y = y_target
	}
}

if (state = "investigate"){
	if (point_in_circle(x, y, x_target, y_target, 5)){
		state = "idle"
		randomize()
		idletime = irandom_range(120, 180)
		poi.touched = true
		facedir = "front"
	}
}

if (state = "wander"){
	if (collision_circle(x_target, y_target, 5, self, false, false)){
		state = "idle"
		randomize()
		idletime = irandom_range(90, 160)
		poi.touched = true
		facedir = "front"
	}
}

if (state = "idle"){
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

if (collision_circle(x, y, 65, obj_player, false, true) && state = "aggro"){
	if (!obj_game.ACHIEVE_death_manimo){
		ini_open("savedata.ini")
		ini_write_real("achieves", "death_manimo", 1)
		obj_game.ACHIEVE_death_manimo = ini_read_real("achieves", "death_manimo", 0)
		ini_close()
	}
	global.screentype = "gameover"
	obj_game.killedby = "Manimo"
	global.level = room
	room_goto(KILL_manimo)
}