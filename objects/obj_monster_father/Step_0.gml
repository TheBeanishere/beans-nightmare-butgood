pathdelay -= 1
audio_emitter_position(soundemitter, x, y, 0)

if (distance_to_object(obj_player) < 700){
	if (!close){
		global.danger += 1.5
		close = true
		audio_play_sound(mus_chasetrans, 1, false)
	}
}else if (close){
	global.danger -= 1.5
	close = false
}

if (pathdelay = 0){
	mp_grid_path(global.mp_gridcrouch, path, x, y, x_target, y_target, true)
	randomize()
	pathdelay = 4 + irandom_range(-2, 2)
	x_target = obj_player.x
	y_target = obj_player.y + 32
	path_start(path, movespeed, path_action_stop, false)
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

if (sprite_index != asset_get_index("spr_monster_father_" + facedir + "_idle")){
	if (floor(image_index) = 1||floor(image_index) = 3){	
		if (!stepped){
			stepped = true
			randomize()
			var _pitch = random_range(0.95, 1.05)
			foot = sfx_father_footstep
			audio_play_sound_at(foot, x, y, 0, 700, 1400, 1, false, 1, 0.65, 0, _pitch)
		}
	}else{
		stepped = false
	}
}

sprite_index = asset_get_index("spr_monster_father_" + facedir + "_move")

if (collision_circle(x, y - 45, 45, obj_player, false, true)){
	//if (!obj_game.ACHIEVE_death_father){
	//	ini_open("savedata.ini")
	//	ini_write_real("achieves", "death_father", 1)
	//	obj_game.ACHIEVE_death_father = ini_read_real("achieves", "death_father", 0)
	//	ini_close()
	//}
	global.screentype = "gameover"
	obj_game.killedby = "your Father"
	randomize()
	ini_open(lang)
	global.deathline = ini_read_string("advice", "father" + string(irandom_range(1, 3)), "What, there's no reasonable way that this didn't load what the fuck")
	ini_close()
	global.level = room
	room_goto(KILL_father)
}