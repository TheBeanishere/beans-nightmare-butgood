var _enemyx = creator.x
var _enemyy = creator.y
if (can_crawl){
	if (!mp_grid_path(global.mp_grid, path, x, y, _enemyx, _enemyy, true)){
		randomize()
		x = (random_range(0, room_width))
		y = (random_range(0, room_height))
	}
}else{
	if (!mp_grid_path(global.mp_gridcrouch, path, x, y, _enemyx, _enemyy, true)){
		randomize()
		x = (random_range(0, room_width))
		y = (random_range(0, room_height))
	}
}

if (touched){
	touched = false
	randomize()
	x = (random_range(0, room_width))
	y = (random_range(0, room_height))
}