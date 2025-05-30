draw_set_alpha(1)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)
if (!global.debug){
	draw_sprite_ext(spr_overlay_stamina, 0, 640, 360, 1.25, 1.25, 0, c_white, 1-(obj_player.stamina/obj_player.staminamax))
	draw_sprite_ext(spr_overlay_stamina, 0, 640, 360, 1.25, 1.25, 0, c_white, 1-(obj_player.stamina/obj_player.staminamax))
	draw_sprite_ext(spr_overlay_stamina, 0, 640, 360, 1.25, 1.25, 0, c_purple, windedalpha)
	draw_sprite_ext(spr_overlay_health, 0, 0, 0, 1, 1, 0, c_white, hpalpha/2)
	draw_sprite_ext(spr_overlay_health, 0, 0, 0, 1, 1, 0, c_white, deathalpha)
	draw_sprite_ext(spr_overlay_death, 0, 0, 0, 1, 1, 0, c_white, deathalpha/2)
}
if (global.debug){	
	draw_text(0, 60, "Health: " + string((obj_player.hp/obj_player.hpmax)*100) + "%")
	draw_text(0, 80, "Danger: " + string(global.danger))
}