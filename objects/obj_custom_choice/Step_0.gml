if (collision_point(mouse_x, mouse_y, self, true, false) && !collision_point(mouse_x, mouse_y, obj_corpse, true, false) && mouse_check_button_pressed(mb_left)){
	enabled = !enabled
	if (!enabled){
		with instance_create_layer(x, y, "corpses", obj_corpse){
			image_index = other.characterid
		}
		audio_play_sound(sfx_shoot, 1, false)
		obj_game.customcombo += 1
		obj_game.customcombotime = 90
	}
}

x = originx + obj_game.customscroll