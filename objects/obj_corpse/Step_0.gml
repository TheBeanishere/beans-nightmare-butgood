x += spdX
y += spdY

spdY += 0.25

image_angle += anglechange

anglechange = lerp(anglechange, 0, 0.05)

if (collision_point(mouse_x, mouse_y, self, true, false) && mouse_check_button_pressed(mb_left)){
	spdY = -6
	randomize()
	spdX = choose(5, 3, -5, -3)
	anglechange = choose(-10, -20, 10, 20)
	audio_play_sound(sfx_shoot, 1, false)
	obj_game.customcombo += 1
	obj_game.customcombotime = 90
}
