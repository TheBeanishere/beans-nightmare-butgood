audio_stop_all()
global.danger = 0
var _w = ceil(room_width/TS)
var _h = ceil(room_height/TS)

global.mp_grid = mp_grid_create(0, 0, _w, _h, TS, TS)
global.mp_gridcrouch = mp_grid_create(0, 0, _w, _h, TS, TS)

mp_grid_add_instances(global.mp_grid, obj_solid, false)
mp_grid_add_instances(global.mp_gridcrouch, obj_solid, false)
mp_grid_add_instances(global.mp_gridcrouch, obj_solid_crouch, false)

if (room = MENU_achieve){
	achievescroll = 0
}
if (room = MENU_gameover){
	audio_play_sound(mus_dead, 1, true)
}

if (room = LEVEL_attic){
	chasemusic = mus_repression_chase
	calmmusic = mus_repression_calm
	audio_play_sound(mus_repression_calm, 1, true, musicvolume)
	audio_play_sound(mus_repression_chase, 1, true, musicvolume)
	global.objective = "Find all 5 Levers"
}

if (instance_exists(obj_monsterspawner_1)){
	randomize()
	var _spawn1 = instance_find(obj_monsterspawner_1, (irandom_range(0, instance_number(obj_monsterspawner_1)-1)))
	instance_create_layer(_spawn1.x, _spawn1.y, "player", obj_monsterspawner_1.monstertype)
}