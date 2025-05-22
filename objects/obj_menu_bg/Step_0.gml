if (global.screentype != "main"){
	image_alpha += (-(image_alpha - 0.35))/45
}else{
	image_alpha += (-(image_alpha - 1))/45
}
if (dark){
	sprite_index = spr_menu_bg_1
}else{
	sprite_index = spr_menu_bg
}
if (keyboard_check_pressed(vk_escape)){
	switch (global.screentype){
		default:
			global.screentype = "main"
		break;
	}
}

image_blend = choose(#FFFFFF, #FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF, #EEEEEE, #FFFFFF, #EEEEEE, #FFFFFF, #EEEEEE)

time -= 1
if (time <= 0){
	randomize()
	time = irandom_range(1200,1450)
	dark = true
	alarm_set(0, 60)
}
