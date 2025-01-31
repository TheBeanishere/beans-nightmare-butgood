// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerinput(){
	if (global.controller){
		key_right = keyboard_check(ord("D")) || gamepad_button_check(global.gamepad[0], gp_padr)
		key_left = keyboard_check(ord("A")) || gamepad_button_check(global.gamepad[0], gp_padl)
		key_up = keyboard_check(ord("W")) || gamepad_button_check(global.gamepad[0], gp_padu)
		key_down = keyboard_check(ord("S")) || gamepad_button_check(global.gamepad[0], gp_padd)
		axis_horz = gamepad_axis_value(global.gamepad[0], gp_axislh)
		axis_vert = gamepad_axis_value(global.gamepad[0], gp_axislv)
		key_crouch = keyboard_check_pressed(ord("C"))||keyboard_check_pressed(vk_control)||gamepad_button_check_pressed(global.gamepad[0], gp_face2)||gamepad_button_check_pressed(global.gamepad[0], gp_stickr)
		key_run = keyboard_check(vk_shift)||gamepad_button_check(global.gamepad[0], gp_shoulderrb)||gamepad_button_check(global.gamepad[0], gp_shoulderlb)
		key_runpress = keyboard_check_pressed(vk_shift)||gamepad_button_check_pressed(global.gamepad[0], gp_shoulderrb)||gamepad_button_check_pressed(global.gamepad[0], gp_shoulderlb)
		key_taunt = keyboard_check_pressed(ord("E")) || gamepad_button_check_pressed(global.gamepad[0], gp_face4)
		key_scream = keyboard_check(ord("Q")) || gamepad_button_check(global.gamepad[0], gp_face3)
		key_flashlight = keyboard_check_pressed(ord("F"))||mouse_check_button_pressed(mb_left)|| gamepad_button_check_pressed(global.gamepad[0], gp_shoulderl)|| gamepad_button_check_pressed(global.gamepad[0], gp_shoulderr)
	}else{
		axis_horz = 0
		axis_vert = 0
		key_right = keyboard_check(ord("D"))
		key_left = keyboard_check(ord("A"))
		key_up = keyboard_check(ord("W"))
		key_down = keyboard_check(ord("S"))
		key_scream = keyboard_check(ord("Q"))
		key_crouch = keyboard_check_pressed(ord("C"))||keyboard_check_pressed(vk_control)
		key_run = keyboard_check(vk_shift)
		key_runpress = keyboard_check_pressed(vk_shift)
		key_taunt = keyboard_check_pressed(ord("E"))
		key_flashlight = keyboard_check_pressed(ord("F")) || mouse_check_button_pressed(mb_left)
	}
}