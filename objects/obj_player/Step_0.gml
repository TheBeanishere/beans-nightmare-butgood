if (spdY != 0 || spdX != 0){
	audio_listener_position(x, y, 0)
}

if (keyboard_check_pressed(ord("P"))){
	instance_create_layer(0, 0, "a90", obj_monster_a90)
}

key_right = keyboard_check(ord("D"))
key_left = keyboard_check(ord("A"))
key_up = keyboard_check(ord("W"))
key_down = keyboard_check(ord("S"))
key_crouch = keyboard_check_pressed(ord("C"))||keyboard_check_pressed(vk_control)
key_run = keyboard_check(vk_shift)
key_runpress = keyboard_check_pressed(vk_shift)
key_taunt = keyboard_check_pressed(ord("E"))

if (key_crouch){
	crouched = !crouched
}
if (key_runpress){
	crouched = false
}

if (crouched){
	spdX = (key_right - key_left) * crawlspeed
	spdY = (key_down - key_up) * crawlspeed
}else if (key_run && stamina > 0 && !winded){
	spdX = (key_right - key_left) * runspeed
	spdY = (key_down - key_up) * runspeed
}else{
	spdX = (key_right - key_left) * movespeed
	spdY = (key_down - key_up) * movespeed
}

if ((key_right && key_up) || (key_right && key_down) || (key_left && key_down) || (key_left && key_up)){
	spdY /= sqrt(2)
	spdX /= sqrt(2)
}

if (stamina = 1){
	winded = true
}
if (stamina >= ((staminamax/100) *35)){
	winded = false
}
if (((spdX != 0) || (spdY != 0)) && key_run && !winded && !crouched){
	stamina -= 1
}else{
	stamina += 1
}

stamina = clamp(stamina, 0, staminamax)

if (key_taunt && !taunt){
	scr_loudnoise()
	instance_create_layer(x, y, "player", obj_tauntflash)
	taunt = true
	taunttime = 270
	image_speed = 0
	randomize()
	image_index = irandom_range(0, 4)
	audio_play_sound(sfx_taunt, 1, false)
}

if (taunttime <= 0){
	taunt = false
}

taunttime -= 1

if (taunttime < 241){
	image_speed = 1
}

if(!crouched){
	if (place_meeting(x + spdX, y, obj_solid_crouch)){
		while !place_meeting(x + spdX, y, obj_solid_crouch){
			x += sign(spdX)
		}
		spdX = 0
	}
}
if (place_meeting(x + spdX, y, obj_solid)){
	while !place_meeting(x + spdX, y, obj_solid){
		x += sign(spdX)
	}
	spdX = 0
}

x += spdX
if (!crouched){
	if (place_meeting(x, y + spdY, obj_solid_crouch)){
		while !place_meeting(x, y + spdY, obj_solid_crouch){
			y += sign(spdY)
		}
		spdY = 0
	}
}
if (place_meeting(x, y + spdY, obj_solid)){
	while !place_meeting(x, y + spdY, obj_solid){
		y += sign(spdY)
	}
	spdY = 0
}

y += spdY

if (spdX < 0){
	image_xscale = -0.25
}else if (spdX > 0){
	image_xscale = 0.25
}

if (crouched){
	if (floor(image_index) = 3||floor(image_index) = 1){	
		if (!stepped){
			stepped = true
			randomize()
			var _pitch = random_range(0.95, 1.05)
			foot = choose(sfx_beanie_step_1, sfx_beanie_step_2, sfx_beanie_step_3)
			audio_play_sound_at(foot, x, y, 0, 600, 1200, 1, false, 1, 0.025, 0, _pitch)
		}
	}else{
		stepped = false
	}
}else if (stamina > 0 && !winded && key_run){
	if (floor(image_index) = 3||floor(image_index) = 8){	
		if (!stepped){
			stepped = true
			randomize()
			var _pitch = random_range(0.95, 1.05)
			foot = choose(sfx_beanie_step_1, sfx_beanie_step_2, sfx_beanie_step_3)
			audio_play_sound_at(foot, x, y, 0, 600, 1200, 1, false, 1, 0.075, 0, _pitch)
		}
	}else{
		stepped = false
	}
}else{
	if (floor(image_index) = 1||floor(image_index) = 4){	
		if (!stepped){
			stepped = true
			randomize()
			var _pitch = random_range(0.95, 1.05)
			foot = choose(sfx_beanie_step_1, sfx_beanie_step_2, sfx_beanie_step_3)
			audio_play_sound_at(foot, x, y, 0, 600, 1200, 1, false, 1, 0.075, 0, _pitch)
		}
	}else{
		stepped = false
	}
}

if (spdY > 0){
	facedir = "front"
}else if (spdY < 0){
	facedir = "back"
}

if (taunttime > 240){
	sprite_index = spr_beanie_taunt
}else if ((spdX != 0) || (spdY != 0)){
	if (crouched){	
		sprite_index = asset_get_index("spr_beanie_" + facedir + "_crawl")
	}else if (key_run && stamina > 0 && !winded){
		sprite_index = asset_get_index("spr_beanie_" + facedir + "_run")
	}else{
		sprite_index = asset_get_index("spr_beanie_" + facedir + "_walk")
	}
}else{
	if (crouched){	
		sprite_index = asset_get_index("spr_beanie_" + facedir + "_crouch")
	}else{
		sprite_index = asset_get_index("spr_beanie_" + facedir + "_idle")
	}
}