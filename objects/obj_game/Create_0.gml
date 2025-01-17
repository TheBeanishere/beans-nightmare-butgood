audio_group_load(sfx)
audio_group_load(music)
pal_swap_init_system(shd_pal_swapper)
audio_falloff_set_model(audio_falloff_linear_distance)
#macro TS 8
var _w = ceil(room_width/TS)
var _h = ceil(room_height/TS)

killedby = noone
achievescroll = 0
palettechoose = 0
palettesizeshift = 0
chasemusic = mus_repercussions_calm
calmmusic = mus_repercussions_calm

a90spawn = irandom_range(900, 1200)

ini_open("playtestdata.ini")
VICTORY_normal = ini_read_real("save", "normal", 0)
VICTORY_wheatfield = ini_read_real("save", "wheatfield", 0)
VICTORY_stronghold = ini_read_real("save", "stronghold", 0)
VICTORY_storagefacility = ini_read_real("save", "storagefacility", 0)
VICTORY_modifier = ini_read_real("save", "modifier", 0)
ini_close()

ini_open("savedata.ini")
musicvolume = ini_read_real("settings", "music", 1)
sfxvolume = ini_read_real("settings", "sfx", 1)
ACHIEVE_death_manimo = ini_read_real("achieves", "death_manimo", 0)
ACHIEVE_death_valerix = ini_read_real("achieves", "death_valerix", 0)
ACHIEVE_death_mathi = ini_read_real("achieves", "death_mathi", 0)
ACHIEVE_death_sports = ini_read_real("achieves", "death_sports", 0)
ACHIEVE_death_ava = ini_read_real("achieves", "death_ava", 0)
ACHIEVE_death_pravi = ini_read_real("achieves", "death_pravi", 0)
ACHIEVE_death_joetube = ini_read_real("achieves", "death_joetube", 0)
ACHIEVE_death_dj = ini_read_real("achieves", "death_dj", 0)
ACHIEVE_death_jesse = ini_read_real("achieves", "death_jesse", 0)
ACHIEVE_death_lydia = ini_read_real("achieves", "death_lydia", 0)
ACHIEVE_death_a90 = ini_read_real("achieves", "death_a90", 0)
ACHIEVE_complete_attic = ini_read_real("achieves", "complete_attic", 0)
ACHIEVE_complete_wheatfield = ini_read_real("achieves", "complete_wheatfield", 0)
ACHIEVE_complete_stronghold = ini_read_real("achieves", "complete_stronghold", 0)
ACHIEVE_complete_storage = ini_read_real("achieves", "complete_storage", 0)
ACHIEVE_complete_hotel = ini_read_real("achieves", "complete_hotel", 0)
ACHIEVE_complete_forest = ini_read_real("achieves", "complete_forest", 0)
ACHIEVE_complete_game = ini_read_real("achieves", "complete_game", 0)
ACHIEVE_complete_fast = ini_read_real("achieves", "complete_fast", 0)
ACHIEVE_complete_hard = ini_read_real("achieves", "complete_hard", 0)
ACHIEVE_complete_hardfast = ini_read_real("achieves", "complete_hardfast", 0)
ACHIEVE_complete_endless = ini_read_real("achieves", "complete_endless", 0)
ACHIEVE_complete_somemods = ini_read_real("achieves", "complete_somemods", 0)
ACHIEVE_complete_allmods = ini_read_real("achieves", "complete_allmods", 0)
ini_close()

global.objective = "None"
global.debug = false
global.death = noone
global.deathline = noone
global.danger = 0
global.level = noone
global.mp_grid = mp_grid_create(0, 0, _w, _h, TS, TS)
global.mp_gridcrouch = mp_grid_create(0, 0, _w, _h, TS, TS)
global.screentype = "menu"
global.palettebeanie = 0
global.palettemanimo = 0
global.palettevalerix = 0
global.palettemathi = 0
global.palettepravi = 0

mp_grid_add_instances(global.mp_grid, obj_solid, false)
mp_grid_add_instances(global.mp_gridcrouch, obj_solid, false)
mp_grid_add_instances(global.mp_gridcrouch, obj_solid_crouch, false)