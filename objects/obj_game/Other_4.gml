audio_stop_all()
global.danger = 0
var _w = ceil(room_width/TS)
var _h = ceil(room_height/TS)

global.mp_grid = mp_grid_create(0, 0, _w, _h, TS, TS)
global.mp_gridcrouch = mp_grid_create(0, 0, _w, _h, TS, TS)
global.mp_gridcorn = mp_grid_create(0, 0, _w, _h, TS, TS)

mp_grid_add_instances(global.mp_grid, obj_solid, false)
mp_grid_add_instances(global.mp_grid, obj_solidcorn, false)
mp_grid_add_instances(global.mp_gridcrouch, obj_solid, false)
mp_grid_add_instances(global.mp_gridcrouch, obj_solid_crouch, false)
mp_grid_add_instances(global.mp_gridcrouch, obj_solidcorn, false)
mp_grid_add_instances(global.mp_gridcorn, obj_solid, false)
mp_grid_add_instances(global.mp_gridcorn, obj_solid_crouch, false)

if (room = MENU_main){
	audio_play_sound(mus_crunked_up_man, 1, true)
}

if (room = MENU_achieve){
	achievescroll = 0
	np_setpresence("Looking at achievements", "Idling", "icon", "")
}
if (room = MENU_gameover){
	audio_play_sound(sfx_die, 1, false, 1.3)
	audio_play_sound(mus_dead, 1, true)
}
if (room = MENU_palette){
	palettechoose = 0
	audio_play_sound(mus_hawktuhy, 1, true)
	np_setpresence("In the main menu", "Idling", "icon", "")
}

if (global.screentype = "win"){
	audio_play_sound(mus_win, 1, true)
}

if (room = LEVEL_attic){
	np_setpresence("In the Attic", "Sleeping", "icon", "")
	chasemusic = mus_chase_attic_nothing_good_comes_from_a_house_fire
	calmmusic = mus_calm_attic_above_board
	audio_play_sound(calmmusic, 1, true, musicvolume)
	audio_play_sound(chasemusic, 1, true, musicvolume)
	ini_open(lang)
	global.objective = ini_read_string("gamestuff", "attic1", "ugh")
	ini_close()
}

if (room = LEVEL_stronghold){
	chasemusic = mus_chase_stronghold_ball_and_chain
	calmmusic = mus_calm_stronghold_iron_bars
	audio_play_sound(chasemusic, 1, true, musicvolume - 0.225)
	audio_play_sound(calmmusic, 1, true, musicvolume - 0.225)
	randomize()
	repeat (4) {
		var _spawninteract = instance_find(obj_interactspawn, (irandom_range(0, instance_number(obj_interactspawn)-1)))
		_spawninteract.spawned = true
	}
	ini_open(lang)
	global.objective = ini_read_string("gamestuff", "stronghold1", "ugh")
	ini_close()
}

if (room = LEVEL_storagefacility){
	chasemusic = mus_chase_storage_deaf_and_angry
	calmmusic = mus_calm_storage_blind_and_lonely
	audio_play_sound(chasemusic, 1, true, musicvolume - 0.225)
	audio_play_sound(calmmusic, 1, true, musicvolume - 0.225)
	randomize()
	ini_open(lang)
	global.objective = ini_read_string("gamestuff", "storage1", "ugh")
	ini_close()
}

if (room = LEVEL_wheatfield){
	np_setpresence("In the Wheatfield", "Sleeping", "icon", "")
	chasemusic = mus_chase_wheatfield_stampede
	calmmusic = mus_calm_wheatfield_the_herd
	audio_play_sound(chasemusic, 1, true, musicvolume - 0.225)
	audio_play_sound(calmmusic, 1, true, musicvolume - 0.225)
	randomize()
	repeat (5) {
		var _spawninteract = instance_find(obj_interactspawn, (irandom_range(0, instance_number(obj_interactspawn)-1)))
		_spawninteract.spawned = true
	}
	ini_open(lang)
	global.objective = ini_read_string("gamestuff", "wheatfield1", "ugh")
	ini_close()
}

if (room = LEVEL_hotel){
	chasemusic = mus_chase_hotel_feverish
	calmmusic = mus_calm_hotel_frigidity
	audio_play_sound(chasemusic, 1, true, musicvolume - 0.225)
	audio_play_sound(calmmusic, 1, true, musicvolume - 0.225)
	randomize()
	ini_open(lang)
	global.objective = ini_read_string("gamestuff", "hotel1", "ugh")
	ini_close()
}

if (instance_exists(obj_monsterspawner_1)){
	randomize()
	var _spawn1 = instance_find(obj_monsterspawner_1, (irandom_range(0, instance_number(obj_monsterspawner_1)-1)))
	instance_create_layer(_spawn1.x, _spawn1.y, "player", obj_monsterspawner_1.monstertype)
}