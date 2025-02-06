audio_group_load(sfx)
audio_group_load(music)
pal_swap_init_system(shd_pal_swapper)
audio_falloff_set_model(audio_falloff_linear_distance)
#macro TS 8
var _w = ceil(room_width/TS)
var _h = ceil(room_height/TS)
nekowait = 0
nekofail = false

killedby = noone
achievescroll = 0
palettechoose = 0
palettesizeshift = 0
chasemusic = mus_repercussions_calm
calmmusic = mus_repercussions_calm

a90spawn = irandom_range(900, 1200)

ini_open("savedata.ini")
musicvolume = ini_read_real("options", "music", 1)
sfxvolume = ini_read_real("options", "sfx", 1)
ini_close()

global.gamepad = [];
global.controller = false

global.objective = "None"
global.debug = false
global.death = noone
global.deathline = noone
global.danger = 0
global.level = noone
global.mp_grid = mp_grid_create(0, 0, _w, _h, TS, TS)
global.mp_gridcrouch = mp_grid_create(0, 0, _w, _h, TS, TS)
global.screentype = "main"
global.palettebeanie = 0
global.palettemanimo = 0
global.palettevalerix = 0
global.palettemathi = 0
global.palettepravi = 0
global.palettesports = 0
global.paletteava = 0
global.palettedj = 1
global.palettejoetube = 1
global.palettefather = 0
global.palettea90 = 0
global.palettecoconut = 0
global.palettefusion = 0
global.palettecriminal = 0
global.palettewarriordan = 0
global.paletteroachy = 0
global.palettelydia = 0

mp_grid_add_instances(global.mp_grid, obj_solid, false)
mp_grid_add_instances(global.mp_gridcrouch, obj_solid, false)
mp_grid_add_instances(global.mp_gridcrouch, obj_solid_crouch, false)