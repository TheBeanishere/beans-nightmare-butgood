pathdelay -= 1

if (pathdelay <= 0){
	if (state != "scared"){
		if (!place_meeting(obj_player.x, obj_player.y, obj_solid_crouch)){
			x_target = obj_player.x
			y_target =  obj_player.y + 64
		}else{
			var _goto = instance_nearest(obj_player.x, obj_player.y, obj_crouch_poi)
			x_target = _goto.x
			y_target = _goto.y
		}
	}else{
		x_target = nest.x
		y_target = nest.y
	}
	mp_grid_path(global.mp_gridcrouch, path, x, y, x_target, y_target, true)
	if (state = "hunt"){	
		path_start(path, chasespeed, path_action_stop, true)
	}else if (state = "scared"){
		path_start(path, fleespeed, path_action_stop, true)
	}else{
		path_start(path, movespeed, path_action_stop, true)
	}
	pathdelay = 4 + irandom_range(-2, 2)
}

if (instance_exists(obj_blackfade)){
	path_speed = 0
	image_speed = 0
}else if (instance_exists(obj_monster_a90)){
	if (obj_monster_a90.timer > 30 && obj_monster_a90.move = 0){ 	
		path_speed = 0
		image_speed = 0
	}
}else{
	image_speed = 1
}

if (state = "stalk"){
	if (distance_to_object(obj_player) < 350){
		state = "stare"
		facedir = "front"
		randomize()
		staretime = irandom_range(120, 240)
	}
}

if (state = "stare"){
	path_end()
	staretime -= 1
	direction = point_direction(x, y, obj_player.x, obj_player.y)
	if (staretime <= 0){
		global.danger += 1.5
		audio_play_sound(mus_chasetrans, 1, false)
		voice = sfx_monster_PH_valerix_chase
		audio_play_sound_on(soundemitter, voice, true, 1, 1, 0, 1)	
		state = "hunt"
		x_target = obj_player.x
		y_target =  obj_player.y + 64
		mp_grid_path(global.mp_gridcorn, path, x, y, x_target, y_target, true)
		path_start(path, chasespeed, path_action_stop, true)
		pathdelay = 4 + irandom_range(-2, 2)
	}
}

if (state = "hunt"){
	audio_emitter_position(soundemitter, x, y, 0)
	chasespeed += 0.05
}

if (state = "scared"){
	audio_stop_sound(sfx_monster_PH_valerix_chase)
	if (x = nest.x && y = nest.y){
		state = "stalk"
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

if (sprite_index != asset_get_index("spr_monster_valerix_" + facedir + "_idle")){
	if (floor(image_index) = 4||floor(image_index) = 1){	
		if (!stepped){
			stepped = true
			randomize()
			foot = sfx_monster_valerix_step
			audio_play_sound_at(foot, x, y, 0, 900, 1800, 1, false, 1, 0.7)
		}
	}else{
		stepped = false
	}
}

if (state = "hunt"||state = "scared"){	
	sprite_index = asset_get_index("spr_monster_valerix_" + facedir + "_move")
}else if (state = "stalk"){
	sprite_index = asset_get_index("spr_monster_valerix_" + facedir + "_stalk")
}else{
	sprite_index = asset_get_index("spr_monster_valerix_" + facedir + "_idle")
}

if (place_meeting(x, y, obj_player) && state = "hunt"){
	//if (!obj_game.ACHIEVE_death_valerix){
	//	ini_open("savedata.ini")
	//	ini_write_real("achieves", "death_valerix", 1)
	//	obj_game.ACHIEVE_death_valerix = ini_read_real("achieves", "death_valerix", 0)
	//	ini_close()
	//}
	global.screentype = "gameover"
	global.level = room
	randomize()
	ini_open(lang)
	obj_game.killedby = ini_read_string("gamestuff", "deathvalerix", "ugh")
	global.deathline = ini_read_string("advice", "valerix" + string(irandom_range(1, 3)), "What, there's no reasonable way that this didn't load what the fuck")
	ini_close()
	room_goto(KILL_valerix)
}