depth = -y

//debug!!
if (keyboard_check(vk_up)){
	hp += 1
}
if (keyboard_check(vk_down)){
	hp -= 1
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
if (stamina >= ((staminamax/100) *25)){
	winded = false
}
if (((spdX != 0) || (spdY != 0)) && key_run && !winded){
	stamina -= 1
}else{
	stamina += 1
}

stamina = clamp(stamina, 0, staminamax)

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

if (spdY > 0){
	facedir = "front"
}else if (spdY < 0){
	facedir = "back"
}

if ((spdX != 0) || (spdY != 0)){
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