if (!jammed){	
	draw_healthbar(0, 32, 250, 48, (((1800-battery)/1800)*100), c_black, c_white, c_white, 0, false, false)
}else{
	draw_healthbar(0, 32, 250, 48, (((1800-battery)/1800)*100), c_black, c_grey, c_grey, 0, false, false)
}