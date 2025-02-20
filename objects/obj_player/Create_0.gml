image_xscale = 0.25
image_yscale = 0.25

scr_playerinput()

if (global.controller){
	gamepad_set_axis_deadzone(global.gamepad[0], 0.25)
}

screamframe = choose(0,1,2,4)
screamtime = 3

_mx = mouse_x
_my = mouse_y

flashlightdirection = 0

flashlight = false
jammed = false
flicker = 1
battery = 0

audio_listener_position(x, y, 0)
audio_listener_set_orientation(0, 0, 0, 1, 0, -1, 0)

spdX = 0
spdY = 0
movespeed = 3.5
runspeed = 7
crawlspeed = 1.25

crouched = false
facedir = "front"
taunt = false
taunttime = 0

staminamax = 650
stamina = staminamax
winded = false

hpmax = 100
hp = hpmax

randomize()
stepped = false
foot = choose(sfx_beanie_step_1, sfx_beanie_step_2, sfx_beanie_step_3)