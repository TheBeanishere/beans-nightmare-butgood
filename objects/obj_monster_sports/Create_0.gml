image_xscale = 0.25
image_yscale = 0.25

movespeed = 2
chasespeed = 5
investspeed = 12

//states are idle, wander, investigate, and aggro
state = "idle"
attention = 0
aggrotime = 90
idletime = 120
alerted = false

eyesight = 650
path = path_add()
poi = instance_create_depth(x, y, 50, obj_monster_poi)
with (poi){
	creator = other.id
	can_crawl = false
}
x_target = poi.x
y_target = poi.y

stepped = false
voice = sfx_monster_manimo_step_1
foot = choose(sfx_monster_manimo_step_1, sfx_monster_manimo_step_2, sfx_monster_manimo_step_3)

mp_grid_path(global.mp_gridcrouch, path, x, y, x_target, y_target, true)
path_start(path, 1, path_action_stop, true)
pathdelay = 4 + irandom_range(-2, 2)

facedir = "front"