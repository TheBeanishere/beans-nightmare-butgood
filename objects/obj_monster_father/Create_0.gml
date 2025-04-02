image_xscale = 0.25
image_yscale = 0.25

movespeed = 1
path = path_add()

close = false

x_target = 0
y_target = 0

soundemitter = audio_emitter_create()
audio_emitter_falloff(soundemitter, 400, 800, 1)

stepped = false
voice = sfx_monster_manimo_step_1
foot = choose(sfx_monster_manimo_step_1, sfx_monster_manimo_step_2, sfx_monster_manimo_step_3)

mp_grid_path(global.mp_gridcrouch, path, x, y, x_target, y_target, true)
path_start(path, 1, path_action_stop, true)
pathdelay = 4 + irandom_range(-2, 2)

facedir = "front"