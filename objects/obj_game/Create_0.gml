audio_group_load(sfx)
audio_falloff_set_model(audio_falloff_linear_distance)
#macro TS 32
var _w = ceil(room_width/TS)
var _h = ceil(room_height/TS)

global.debug = false
global.death = noone
global.danger = 0
global.mp_grid = mp_grid_create(0, 0, _w, _h, TS, TS)
global.mp_gridcrouch = mp_grid_create(0, 0, _w, _h, TS, TS)

mp_grid_add_instances(global.mp_grid, obj_solid, false)
mp_grid_add_instances(global.mp_gridcrouch, obj_solid, false)
mp_grid_add_instances(global.mp_gridcrouch, obj_solid_crouch, false)