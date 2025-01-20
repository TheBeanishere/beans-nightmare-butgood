image_xscale = 0.25
image_yscale = 0.25

waittime = 0
chasespeed = 6.5

exploded = false
respawnx = x
respawny = y
respawnlocations = ds_list_create()
ds_list_add(respawnlocations, respawnx)
ds_list_add(respawnlocations, respawny)
repeat (instance_number(obj_pravipoint)){
	var _point = instance_nearest(x, y, obj_pravipoint)
	ds_list_add(respawnlocations, _point.x)
	ds_list_add(respawnlocations, _point.y)
	instance_destroy(_point)
}
respawntime = irandom_range(1500, 2100)
x = ds_list_find_value(respawnlocations, choose(0, 2, 4, 6, 8, 10))
y = ds_list_find_value(respawnlocations, choose(1, 3, 5, 7, 9, 11))
respawnx = x
respawny = y

//states are idle, aggro, return, explode and respawn
state = "idle"
attention = 0
aggrotime = 120
respawntime = 0


path = path_add()
x_target = x
y_target = y

soundemitter = audio_emitter_create()
audio_emitter_falloff(soundemitter, 1250, 2500, 1)
stepped = false
voice = sfx_monster_manimo_step_1
foot = choose(sfx_monster_manimo_step_1, sfx_monster_manimo_step_2, sfx_monster_manimo_step_3)

mp_grid_path(global.mp_gridcrouch, path, x, y, x_target, y_target, true)
path_start(path, 1, path_action_stop, true)
pathdelay = 4 + irandom_range(-2, 2)
