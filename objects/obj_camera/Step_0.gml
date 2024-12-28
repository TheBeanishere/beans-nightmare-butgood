if (object_focus != noone){
	x_to = object_focus.x - cam_width/2
	y_to = object_focus.y - cam_height/2
}

x_to = clamp(x_to, 0, room_width - cam_width)
y_to = clamp(y_to, 0, room_height - cam_height)
x += (x_to - x)
y += (y_to - y)

camera_set_view_pos(view_camera[0], x, y)