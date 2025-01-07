image_xscale = 0.25
image_yscale = 0.25

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

staminamax = 450
stamina = staminamax
winded = false

hpmax = 100
hp = hpmax

randomize()
stepped = false
foot = choose(sfx_beanie_step_1, sfx_beanie_step_2, sfx_beanie_step_3)