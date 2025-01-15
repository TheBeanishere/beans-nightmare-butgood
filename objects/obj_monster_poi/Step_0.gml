var _enemyx = creator.x
var _enemyy = creator.y
if (can_crawl){
	if (!mp_grid_path(global.mp_grid, path, x, y, _enemyx, _enemyy, true)){
		randomize()
		x = (round((random_range(0, room_width)) / TS)) * 32
		y = (round((random_range(0, room_height)) / TS)) * 32
	}
}else{
	if (!mp_grid_path(global.mp_gridcrouch, path, x, y, _enemyx, _enemyy, true)){
		randomize()
		x = (round((random_range(0, room_width)) / TS)) * 32
		y = (round((random_range(0, room_height)) / TS)) * 32
	}
}

if (touched){
	touched = false
	randomize()
	x = (round((random_range(0, room_width)) / TS)) * 32
	y = (round((random_range(0, room_height)) / TS)) * 32
}