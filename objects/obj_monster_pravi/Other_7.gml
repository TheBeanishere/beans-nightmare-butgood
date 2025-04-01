if (state = "explode"){
	image_xscale = 0.25
	image_yscale = 0.25
	state = "respawn"
	global.danger -= 1.5
	exploded = false
	
	randomize()
	respawntime = irandom_range(1500, 2100)
	var _place = choose(0, 2, 4, 6, 8, 10)
	x = ds_list_find_value(respawnlocations, _place)
	y = ds_list_find_value(respawnlocations, _place + 1)
	respawnx = x
	respawny = y
}

if (respawnanim && sprite_index = spr_monster_pravi_spawn){
	respawnanim = false
}