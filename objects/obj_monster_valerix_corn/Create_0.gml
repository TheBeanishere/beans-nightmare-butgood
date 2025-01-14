path = path_add()
image_xscale = 0.25
image_yscale = 0.25

scaredcounter = 0

randomize()
aggrotime = 0

soundemitter = audio_emitter_create()
audio_emitter_falloff(soundemitter, 1250, 2500, 1)

movespeed = 2
chasespeed = 4
fleespeed = 11
retreatspeed = 7

//states are stare, stalk, hunt, aggro, and scared
state = "stalk"
staretime = 0
nest = noone

x_target = obj_player.x
y_target = obj_player.y

voice = noone

stepped = false
foot = sfx_monster_valerix_step

mp_grid_path(global.mp_gridcorn, path, x, y, x_target, y_target, true)
path_start(path, 1, path_action_stop, true)
pathdelay = 4 + irandom_range(-2, 2)

facedir = "front"
