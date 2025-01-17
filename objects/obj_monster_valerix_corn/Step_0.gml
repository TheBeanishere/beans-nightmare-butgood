pathdelay -= 1

if (pathdelay <= 0){
	if (state != "scared" && state != "retreat"){
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
	mp_grid_path(global.mp_gridcorn, path, x, y, x_target, y_target, true)
	if (state = "hunt"||state = "aggro"){	
		path_start(path, chasespeed, path_action_stop, true)
	}else if (state = "scared"){
		path_start(path, fleespeed, path_action_stop, true)
	}else if (state = "retreat"){
		path_start(path, retreatspeed, path_action_stop, true)
	}else{
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

if (state = "aggro"){
	audio_emitter_position(soundemitter, x, y, 0)
	aggrotime -= 1
	if (aggrotime <= 0){
		global.danger -= 1.5
		randomize()
		voice = choose(sfx_monster_PH_valerix_scare_1, sfx_monster_PH_valerix_scare_2)
		audio_play_sound_at(voice, x, y, 0, 1000, 2000, 1, false, 1, 0.7)	
		nest = instance_nearest(x, y, obj_valerix_nest)
		state = "retreat"
		chasespeed = 4
	}
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
		state = "aggro"
		voice = sfx_monster_PH_valerix_chase
		audio_play_sound_on(soundemitter, voice, true, 1, 1, 0, 0.8)
		audio_play_sound(mus_chasetrans, 1, false)
		chasespeed = 5
		aggrotime = round(510 + (scaredcounter * 30) + (distance_to_object(obj_player)/6))
		global.danger += 1.5
	}
}

if (state = "retreat"){
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
			audio_play_sound_at(foot, x, y, 0, 600, 1200, 1, false, 1, 0.7)
		}
	}else{
		stepped = false
	}
}

if (state = "hunt"||state = "scared"||state = "aggro"|| state = "retreat"){	
	sprite_index = asset_get_index("spr_monster_valerix_" + facedir + "_move")
}else if (state = "stalk"){
	sprite_index = asset_get_index("spr_monster_valerix_" + facedir + "_stalk")
}else{
	sprite_index = asset_get_index("spr_monster_valerix_" + facedir + "_idle")
}

if (place_meeting(x, y, obj_player) && (state = "hunt"||state = "aggro")){
	if (!obj_game.ACHIEVE_death_valerix){
		ini_open("savedata.ini")
		ini_write_real("achieves", "death_valerix", 1)
		obj_game.ACHIEVE_death_valerix = ini_read_real("achieves", "death_valerix", 0)
		ini_close()
	}
	global.screentype = "gameover"
	global.level = room
	randomize()
	global.deathline = choose("Don't back yourself into a corner, he can go through the field's walls.", "He doesn't gain speed when he's chasing you for the second time", "He runs off, listen for the music cue to tell you when to start making distance.", "Scare him off before he outpaces you.", "Running won't work, he will eventually become faster than you", "Time your taunt, there's a cool down.")
	obj_game.killedby = "Valerix"
	room_goto(KILL_valerix)
}