if (state = "explode"){
	image_xscale = 0.25
	image_yscale = 0.25
	state = "respawn"
	global.danger -= 1.5
	exploded = false
	image_alpha = 0
	randomize()
	respawntime = irandom_range(1500, 2100)
	x = ds_list_find_value(respawnlocations, choose(0, 2, 4, 6, 8, 10))
	y = ds_list_find_value(respawnlocations, choose(1, 3, 5, 7, 9, 11))
	respawnx = x
	respawny = y
}