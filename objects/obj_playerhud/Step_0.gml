if (obj_player.winded){
	windedalpha += -(windedalpha - 1)/35
}else{
	windedalpha += -(windedalpha - 0)/15
}

if (obj_player.hp < 16){
	hpalpha += -(hpalpha - 0.85)/65
}else if (obj_player.hp < 26){
	hpalpha += -(hpalpha - 0.6)/65
}else if (obj_player.hp < 51){
	hpalpha += -(hpalpha - 0.4)/65
}else if (obj_player.hp < 76){
	hpalpha += -(hpalpha - 0.25)/65
}else if (obj_player.hp < 101){
	hpalpha += -(hpalpha - 0)/65
}

if (obj_player.hp < 1){
	deathalpha += 0.025
}else{
	deathalpha -= 0.025
}
deathalpha = clamp(deathalpha, 0, 2)