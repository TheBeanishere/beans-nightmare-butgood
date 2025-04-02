if (active && attacking){
	audio_emitter_position(soundemitter, x, y, 0)
	if (obj_player.flashlight && obj_player.battery > 0){
		var _x = obj_player.x
		var _y = obj_player.y
		var _dir = point_direction(_x, _y, mouse_x, mouse_y)
		var _x1 = lengthdir_x(750, _dir + 45)
		var _x2 = lengthdir_x(750, _dir - 45)
		var _y1 = lengthdir_y(750, _dir + 45)
		var _y2 = lengthdir_y(750, _dir - 45)
		if (point_in_triangle(x, y, _x, _y, _x + _x1, _y + _y1, _x + _x2, _y + _y2)){
			speed = lerp(speed, 0, 0.05)
			image_alpha -= 0.015
			if (image_alpha <= 0){
				image_alpha = 1
				speed = 0
				randomize()
				global.danger -= 1.5
				audio_stop_sound(sfx_monster_dj_chase)
				var _voice = choose(sfx_monster_dj_attack_1, sfx_monster_dj_attack_2, sfx_monster_dj_attack_3)
				audio_play_sound_at(_voice, x, y, 0, 1000, 2000, 1, false, 1, 0.7, 0, 0.7)
				active = false
				attacking = false
				x = originx
				y = originy
				spawntime = irandom_range(420, 840)
			}
		}else{
			image_alpha = lerp(image_alpha, 1, 0.05)
			speed = lerp(speed, 9, 0.2)
		}
	}else{
		image_alpha = lerp(image_alpha, 1, 0.05)
		speed = lerp(speed, 9, 0.2)
	}
}else{
	if (!active){
		spawntime -= 1
		if (spawntime = 0){
			image_alpha = 1
			transanim = spr_monster_dj_mature
		}
	}
}

if (active && !attacking){
	if (collision_circle(x, y, 125, obj_player, false, true) && !collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, true)){
		attacking = true
		global.danger += 1.5
		audio_play_sound(mus_chasetrans, 1, false)
		var _voice = sfx_monster_dj_chase
		audio_play_sound_on(soundemitter, _voice, true, 1, 1, 0)
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

direction = point_direction(x, y, obj_player.x, obj_player.y)

if (direction > 89 && direction < 271){
	image_xscale = -0.25
}else{
	image_xscale = 0.25
}

if (transanim != noone){
	sprite_index = transanim
	if (sprite_index = spr_monster_dj_attack){
		speed = 7.25
	}
}else if (active){
	sprite_index = spr_monster_dj_idle
}else{
	sprite_index = spr_monster_dj_sprout
}

if (collision_circle(x, y + 45, 45, obj_player, false, true) && active){
	speed = 0
	if (obj_player.hp > 35){
		obj_player.hp -= 35
		audio_stop_sound(sfx_monster_dj_chase)
		active = false
		scr_loudnoise()
		obj_player.djness += 1
		attacking = false
		global.danger -= 1.5
		transanim = spr_monster_dj_attack
		spawntime = irandom_range(420, 840)
		randomize()
		var _voice = choose(sfx_monster_dj_attack_1, sfx_monster_dj_attack_2, sfx_monster_dj_attack_3)
		audio_play_sound_at(_voice, x, y, 0, 1000, 2000, 1, false, 1, 0.7)
	}else{
		//if (!obj_game.ACHIEVE_death_manimo){
		//	ini_open("savedata.ini")
		//	ini_write_real("achieves", "death_manimo", 1)
		//	obj_game.ACHIEVE_death_manimo = ini_read_real("achieves", "death_manimo", 0)
		//	ini_close()
		//}
		global.screentype = "gameover"
		obj_game.killedby = "DJ"
		randomize()
		ini_open(lang)
		global.deathline = ini_read_string("advice", "dj" + string(irandom_range(1, 3)), "What, there's no reasonable way that this didn't load what the fuck")
		ini_close()
		global.level = room
		room_goto(KILL_dj)
	}
}