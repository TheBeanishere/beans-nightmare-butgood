image_alpha = 0
image_speed = 0
image_xscale = 3
image_yscale = 3
depth = -10000
audio_play_sound(sfx_monster_a90_spawn, 1, false)
timer = 0
drawstatic = 0
drawsign = 1
drawface = false
kill = false
xoffset = 0
yoffset = 0
drawx = 0
drawy = -64
if (obj_game.MOD_a90blue){
	move = choose(0,1)
}else{
	move = 0
}