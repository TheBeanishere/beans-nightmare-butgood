var _pathfind = mp_grid_path(global.mp_grid, path, x, y, x_target, y_target, true)
pathdelay -= 1

if (state = "wander"){
	if (x = x_target && y = y_target){
		state = "idle"
		randomize()
		idletime = irandom_range(90, 160)
		poi.touched = true
	}
}

if (state = "idle"){
	idletime -= 1
	if (idletime <= 0){
		state = "wander"
		mp_grid_path(global.mp_gridcrouch, path, x, y, x_target, y_target, true)
		path_start(path, movespeed, path_action_stop, true)
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

if (place_meeting(x, y + 32, obj_player) && state = "aggro"){
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