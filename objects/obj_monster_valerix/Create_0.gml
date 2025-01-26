path = path_add()
image_xscale = 0.25
image_yscale = 0.25

randomize()

movespeed = 2
chasespeed = 4
fleespeed = 11

//states are stare, stalk hunt, and scared
state = "stalk"
staretime = 0
nest = noone

soundemitter = audio_emitter_create()
audio_emitter_falloff(soundemitter, 1250, 2500, 1)

x_target = obj_player.x
y_target = obj_player.y

stepped = false
foot = sfx_monster_valerix_step
voice = sfx_monster_valerix_step

mp_grid_path(global.mp_gridcrouch, path, x, y, x_target, y_target, true)
path_start(path, 1, path_action_stop, true)
pathdelay = 4 + irandom_range(-2, 2)

facedir = "front"
