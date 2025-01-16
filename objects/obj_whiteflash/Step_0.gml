image_alpha -= alphareduce
drawalpha -= alpahreduce/2
x = obj_player.x
y = obj_player.y
x = clamp(x, 640, room_width-640)
y = clamp(y, 360, room_height-360)
if (drawalpha <= 0){
	instance_destroy(self)
}