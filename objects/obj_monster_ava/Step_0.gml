pathdelay -= 1

if (pathdelay = 0){
	mp_grid_path(global.mp_gridcrouch, path, x, y, x_target, y_target, false)
	randomize()
	pathdelay = 4 + irandom_range(-2, 2)
	if (state !="aggro"){
		x_target = poi.x
		y_target = poi.y
	}
	var _x1 = lengthdir_x(eyesight, direction - 65)
	var _x2 = lengthdir_x(eyesight, direction + 65)
	var _y1 = lengthdir_y(eyesight, direction - 65)
	var _y2 = lengthdir_y(eyesight, direction + 65)
	if (point_in_triangle(obj_player.x, obj_player.y, x, y - 145, x + _x1, y + _y1, x + _x2, y + _y2)){
		x_target = obj_player.x
		y_target = obj_player.y + 65
		attention = aggrotime
		if (state != "aggro"){
			global.danger += 1.5
			randomize()
			audio_play_sound(mus_chasetrans, 1, false)
			voice = choose(sfx_monster_ava_aggro_1, sfx_monster_ava_aggro_2, sfx_monster_ava_aggro_3)
			audio_play_sound_at(voice, x, y, 0, 1000, 2000, 1, false, 1, 0.7)	
		}
		state = "aggro"
	}
	if (state = "aggro"){
		path_start(path, chasespeed, path_action_stop, false)
	}else if (state = "wander"){
		path_start(path, movespeed, path_action_stop, false)
	}
}

if (place_meeting(obj_player.x, obj_player.y, obj_enemyunreachable) && (state = "aggroigate"||state = "aggro")){
	state = "wander"
	poi.touched = true
	x_target = poi.x
	y_target = poi.y
}

if (state = "aggro"){
	attention -= 1
	x_target = obj_player.x
	y_target = obj_player.y + 32
	if (attention <= 0 || collision_circle(x_target, y_target, 5, self, false, false)){
		scr_loudnoise()
		global.danger -= 1.5
		randomize()
		voice = choose(sfx_monster_ava_deaggro_1, sfx_monster_ava_deaggro_2, sfx_monster_ava_deaggro_3)
		audio_play_sound_at(voice, x, y, 0, 1000, 2000, 1, false, 1, 0.7)	
		state = "wander"
		poi.x = x_target
		poi.y = y_target
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

if (sprite_index != asset_get_index("spr_monster_ava_" + facedir + "_idle")){
	if (floor(image_index) = 4||floor(image_index) = 1){	
		if (!stepped){
			stepped = true
			randomize()
			var _pitch = random_range(0.95, 1.05)
			foot = sfx_monster_ava_step
			audio_play_sound_at(foot, x, y, 0, 600, 1200, 1, false, 1, 0.65, 0, _pitch)
		}
	}else{
		stepped = false
	}
}

if (state != "idle"){	
	sprite_index = spr_monster_ava_move
}else{	
	sprite_index = spr_monster_ava_idle
}

if (collision_circle(x, y - 45, 80, obj_player, false, true) && state = "aggro"){
	//if (!obj_game.ACHIEVE_death_ava){
	//	ini_open("savedata.ini")
	//	ini_write_real("achieves", "death_ava", 1)
	//	obj_game.ACHIEVE_death_ava = ini_read_real("achieves", "death_ava", 0)
	//	ini_close()
	//}
	global.screentype = "gameover"
	randomize()
	ini_open(lang)
	obj_game.killedby = ini_read_string("gamestuff", "deathava", "ugh")
	global.deathline = ini_read_string("advice", "ava" + string(irandom_range(1, 3)), "What, there's no reasonable way that this didn't load what the fuck")
	ini_close()
	global.level = room
	var _choose = irandom_range(0, 999)
	if (_choose = 0){
		room_goto(KILL_joke)
	}else{
		room_goto(KILL_joke)
	}
}