audio_group_load(sfx)
audio_group_load(music)
pal_swap_init_system(shd_pal_swapper)
audio_falloff_set_model(audio_falloff_linear_distance)
#macro TS 8
bigfont =  font_add("english.otf", 20, true, true, 32, 128)
verybigfont =  font_add("english.otf", 30, true, true, 32, 128)
mediumfont =  font_add("english.otf", 14, true, true, 32, 128)

ini_open("save1.txt")
WINattic = ini_read_real("wins", "attic", 0)
WINstronghold = ini_read_real("wins", "stronghold", 0)
WINstorage = ini_read_real("wins", "storage", 0)
WINwheatfield = ini_read_real("wins", "wheatfield", 0)
WINhotel = ini_read_real("wins", "hotel", 0)
WINforest = ini_read_real("wins", "forest", 0)
WINhome = ini_read_real("wins", "home", 0)
language = "lang/" + ini_read_string("options", "language", "english") + ".txt"
musicvolume = ini_read_real("options", "music", 1)
sfxvolume = ini_read_real("options", "sfx", 1)
showfps = ini_read_real("options", "showfps", 1)
ini_close()

audio_group_set_gain(music, musicvolume, 1)
audio_group_set_gain(sfx, sfxvolume, 1)
#macro Big obj_game.bigfont
#macro ReallyBig obj_game.verybigfont
#macro Medium obj_game.mediumfont
#macro lang obj_game.language
var _w = ceil(room_width/TS)
var _h = ceil(room_height/TS)
nekowait = 0
nekofail = false

boottime = 0
ini_open(lang)
randomize()
bootmessage = ini_read_string("bootmessages", string(irandom_range(0, 58)), "Error")
ini_close()

selectedlevel = 0
killedby = noone
achievescroll = 0
palettechoose = 0
chasemusic = mus_calm_wheatfield_the_herd
calmmusic = mus_calm_wheatfield_the_herd

a90spawn = irandom_range(900, 1200)

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
global.alertx = 0
global.alerty = 0

ini_open("colourchoice.ini")
global.palettebeanie = ini_read_real("palette", "beanie", 0)
global.palettemanimo = ini_read_real("palette", "manimo", 0)
global.palettevalerix = ini_read_real("palette", "valerix", 0)
global.palettemathi = ini_read_real("palette", "mathi", 0)
global.palettepravi = ini_read_real("palette", "pravi", 0)
global.palettesports = ini_read_real("palette", "sports", 1)
global.paletteava = ini_read_real("palette", "ava", 0)
global.palettedj = ini_read_real("palette", "dj", 1)
global.palettejoetube = ini_read_real("palette", "joetube", 1)
global.palettefather = ini_read_real("palette", "father", 0)
global.palettea90 = ini_read_real("palette", "a90", 0)
global.palettecoconut = ini_read_real("palette", "coconut", 0)
global.palettefusion = ini_read_real("palette", "fusion", 0)
global.palettecriminal = ini_read_real("palette", "criminal", 0)
global.palettewillow = ini_read_real("palette", "willow", 0)
global.paletteroachy = ini_read_real("palette", "roachy", 0)
global.palettelydia = ini_read_real("palette", "lydia", 0)
ini_close()

mp_grid_add_instances(global.mp_grid, obj_solid, false)
mp_grid_add_instances(global.mp_gridcrouch, obj_solid, false)
mp_grid_add_instances(global.mp_gridcrouch, obj_solid_crouch, false)