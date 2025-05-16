audio_group_load(sfx)
audio_group_load(music)
pal_swap_init_system(shd_pal_swapper)
audio_falloff_set_model(audio_falloff_linear_distance)
#macro TS 8
bigfont =  font_add("english.otf", 20, true, true, 32, 128)
verybigfont =  font_add("english.otf", 30, true, true, 32, 128)
mediumfont =  font_add("english.otf", 14, true, true, 32, 128)
customfont = font_add_sprite_ext(spr_customfont, "BCMOX0123456789@", false, 1)

global.palettebeanie = 0
global.palettemanimo = 0
global.palettevalerix = 0
global.palettemathi = 0
global.palettepravi = 0
global.palettesports = 1
global.paletteava = 0
global.palettedj = 1
global.palettejoetube = 1
global.palettefather = 0
global.palettea90 = 0
global.palettecoconut = 0
global.palettefusion = 0
global.palettecriminal = 0
global.palettewillow = 0
global.paletteroachy = 0
global.palettelydia = 0
WINattic = false
WINstronghold = false
WINstorage = false
WINwheatfield = false
WINhotel = false
WINforest = false
WINhome = false
WINrepressed = false
WINatticMOD = false
WINstrongholdMOD = false
WINstorageMOD = false
WINwheatfieldMOD = false
WINhotelMOD = false
WINforestMOD = false
WINhomeMOD = false
WINrepressedMOD = false
achieve1 = false
achieve2 = false
achieve3 = false
achieve4 = false
achieve5 = false
achieve6 = false
achieve7 = false
achieve8 = false
achieve9 = false
achieve10 = false
achieve11 = false
achieve12 = false
achieve13 = false
achieve14 = false
achieve15 = false
achieve16 = false
achieve17 = false
achieve18 = false
achieve19 = false
achieve20 = false
achieve21 = false
achieve22 = false
achieve23 = false
achieve24 = false
achieve25 = false
atticTIME = 0
strongholdTIME = 0
storageTIME = 0
wheatfieldTIME = 0
hotelTIME = 0
forestTIME = 0
homeTIME = 0
language = "english.txt"
musicvolume = 1
sfxvolume = 1
showfps = true

if (file_exists("savedata.sav")){
	var _bufferload = buffer_load("savedata.sav")
	var _stringbsload = buffer_read(_bufferload, buffer_string)
	buffer_delete(_bufferload)
	var _loadarray = json_parse(_stringbsload)
	var _loadpalettedata = array_get(_loadarray, 0)
	
	global.palettebeanie = _loadpalettedata.palbean
	global.palettemanimo = _loadpalettedata.palmanimo
	global.palettevalerix = _loadpalettedata.palvalerix
	global.palettemathi = _loadpalettedata.palmathi 
	global.palettepravi = _loadpalettedata.palpravi 
	global.palettesports = _loadpalettedata.palsports 
	global.paletteava = _loadpalettedata.palava 
	global.palettedj = _loadpalettedata.paldj 
	global.palettejoetube = _loadpalettedata.paljoetube 
	global.palettefather = _loadpalettedata.palfather 
	global.palettea90 = _loadpalettedata.pala90 
	global.palettecoconut = _loadpalettedata.palcoconut 
	global.palettefusion = _loadpalettedata.palfusion 
	global.palettecriminal = _loadpalettedata.palcriminal 
	global.palettewillow = _loadpalettedata.palwillow 
	global.paletteroachy = _loadpalettedata.palroachy 
	global.palettelydia = _loadpalettedata.pallydia
	
	var _loadoptiondata = array_get(_loadarray, 1)
	
	obj_game.language = _loadoptiondata.language
	obj_game.musicvolume = _loadoptiondata.musicvolume
	obj_game.sfxvolume = _loadoptiondata.sfxvolume
	obj_game.showfps = _loadoptiondata.showfps
	
	var _loadwindata = array_get(_loadarray, 2)
	
	obj_game.WINattic = _loadwindata.WINattic
	obj_game.WINstronghold = _loadwindata.WINstronghold
	obj_game.WINstorage = _loadwindata.WINstorage
	obj_game.WINwheatfield = _loadwindata.WINwheatfield
	obj_game.WINhotel = _loadwindata.WINhotel
	obj_game.WINforest = _loadwindata.WINforest
	obj_game.WINhome = _loadwindata.WINhome
	obj_game.WINrepressed = _loadwindata.WINrepressed
	obj_game.WINatticMOD = _loadwindata.WINatticMOD
	obj_game.WINstrongholdMOD = _loadwindata.WINstrongholdMOD
	obj_game.WINstorageMOD = _loadwindata.WINstorageMOD
	obj_game.WINwheatfieldMOD = _loadwindata.WINwheatfieldMOD
	obj_game.WINhotelMOD = _loadwindata.WINhotelMOD
	obj_game.WINforestMOD = _loadwindata.WINforestMOD
	obj_game.WINhomeMOD = _loadwindata.WINhomeMOD
	obj_game.WINrepressedMOD = _loadwindata.WINrepressedMOD
	
	var _loadachievedata = array_get(_loadarray, 3)
	
	obj_game.achieve1 = _loadachievedata.achieve1
	obj_game.achieve2 = _loadachievedata.achieve2
	obj_game.achieve3 = _loadachievedata.achieve3
	obj_game.achieve4 = _loadachievedata.achieve4
	obj_game.achieve5 = _loadachievedata.achieve5
	obj_game.achieve6 = _loadachievedata.achieve6
	obj_game.achieve7 = _loadachievedata.achieve7
	obj_game.achieve8 = _loadachievedata.achieve8
	obj_game.achieve9 = _loadachievedata.achieve9
	obj_game.achieve10 = _loadachievedata.achieve10
	obj_game.achieve11 = _loadachievedata.achieve11
	obj_game.achieve12 = _loadachievedata.achieve12
	obj_game.achieve13 = _loadachievedata.achieve13
	obj_game.achieve14 = _loadachievedata.achieve14
	obj_game.achieve15 = _loadachievedata.achieve15
	obj_game.achieve16 = _loadachievedata.achieve16
	obj_game.achieve17 = _loadachievedata.achieve17
	obj_game.achieve18 = _loadachievedata.achieve18
	obj_game.achieve19 = _loadachievedata.achieve19
	obj_game.achieve20 = _loadachievedata.achieve20
	obj_game.achieve21 = _loadachievedata.achieve21
	obj_game.achieve22 = _loadachievedata.achieve22
	obj_game.achieve23 = _loadachievedata.achieve23
	obj_game.achieve24 = _loadachievedata.achieve24
	obj_game.achieve25 = _loadachievedata.achieve25
	
	var _loadtimedata = array_get(_loadarray, 4)
	
	obj_game.atticTIME = _loadtimedata.atticTIME
	obj_game.strongholdTIME = _loadtimedata.strongholdTIME
	obj_game.storageTIME = _loadtimedata.storageTIME
	obj_game.wheatfieldTIME = _loadtimedata.wheatfieldTIME
	obj_game.hotelTIME = _loadtimedata.hotelTIME
	obj_game.forestTIME = _loadtimedata.forestTIME
	obj_game.homeTIME = _loadtimedata.homeTIME
	
}else{
	scr_gamedataget()
}

audio_group_set_gain(music, musicvolume, 1)
audio_group_set_gain(sfx, sfxvolume, 1)
#macro Big obj_game.bigfont
#macro ReallyBig obj_game.verybigfont
#macro Medium obj_game.mediumfont
truelanguage = "lang/" + language
#macro lang obj_game.truelanguage
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
customscroll = 0
customcombo = 0
customcombotime = 0
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

ini_close()

mp_grid_add_instances(global.mp_grid, obj_solid, false)
mp_grid_add_instances(global.mp_gridcrouch, obj_solid, false)
mp_grid_add_instances(global.mp_gridcrouch, obj_solid_crouch, false)

scr_gamedataget()