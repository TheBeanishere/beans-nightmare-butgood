timer++
if (kill){
	x = obj_player.x
	y = obj_player.y
	drawx = obj_player.x
	drawy = obj_player.y  - 64
	drawx = x + xoffset
	drawy = y + yoffset
	x = clamp(x, 640, room_width-640)
	y = clamp(y, 360, room_height-360)
	drawx = clamp(drawx, 640, room_width-640)
	drawy = clamp(drawy, 360, room_height-360)
	randomize()
	xoffset = irandom_range(-5, 5)
	yoffset = irandom_range(-5, 5)
}else{
	x = obj_player.x
	y = obj_player.y
	x = clamp(x, 640, room_width-640)
	y = clamp(y, 360, room_height-360)
	drawx = x
	drawy = y
	drawx = clamp(drawx, 640, room_width-640)
	drawy = clamp(drawy, 360, room_height-360)
}
if (timer = 30){
	drawsign = 2
}
if (timer = 61){
	drawstatic = 1
	drawface = 1
	drawsign = 0
	audio_play_sound(sfx_monster_a90_success, 1, false)
}
if (timer = 66){
	drawface = 0
	drawstatic = 0
	if (move = 0){
		if (obj_player.spdX = 0 && obj_player.spdY = 0){
			global.danger -= 1.25
			instance_destroy(self)
		}else{
			global.danger += 0.75
			kill = true
		}
	}else if (move = 1){
		if (obj_player.spdX != 0 || obj_player.spdY != 0){
			global.danger -= 1.25
			instance_destroy(self)
		}else{
			global.danger += 0.75
			kill = true
		}
	}
}
if (timer = 71){
	if (kill){
		drawstatic = 2
		drawface = 2
		image_index = 1
		if ((obj_player.hp - 90) > 0){
			audio_play_sound(sfx_monster_a90_fail, 1, false)
		}else{
			if (!obj_game.ACHIEVE_death_a90){
				ini_open("savedata.ini")
				ini_write_real("achieves", "death_a90", 1)
				obj_game.ACHIEVE_death_a90 = ini_read_real("achieves", "death_a90", 0)
				ini_close()
			}
			global.screentype = "gameover"
			obj_game.killedby = "a90"
			room_goto(KILL_a90)
		}
	}
}
if (kill && timer = 120){
	obj_player.hp -= 90
	scr_loudnoise()
	instance_create_layer(0, 0, "whitepain", obj_whiteflash)
	global.danger -= 2
	instance_destroy(self)
}