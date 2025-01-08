originy = y

switch (achieveID){
	case 1:
		if (obj_game.ACHIEVE_death_manimo){
			completed = true
			image_blend = color
		}else{
			completed = false
			image_blend = color + c_white
		}
	break;
	case 2:
		if (obj_game.ACHIEVE_death_valerix){
			completed = true
			image_blend = color
		}else{
			completed = false
			image_blend = color + c_white
		}
	break;
	case 3:
		if (obj_game.ACHIEVE_death_mathi){
			completed = true
			image_blend = color
		}else{
			completed = false
			image_blend = color + c_white
		}
	break;
	case 4:
		if (obj_game.ACHIEVE_death_sports){
			completed = true
			image_blend = color
		}else{
			completed = false
			image_blend = color + c_white
		}
	break;
	case 5:
		if (obj_game.ACHIEVE_death_ava){
			completed = true
			image_blend = color
		}else{
			completed = false
			image_blend = color + c_white
		}
	break;
	case 6:
		if (obj_game.ACHIEVE_death_pravi){
			completed = true
			image_blend = color
		}else{
			completed = false
			image_blend = color + c_white
		}
	break;
	case 7:
		if (obj_game.ACHIEVE_death_joetube){
			completed = true
			image_blend = color
		}else{
			completed = false
			image_blend = color + c_white
		}
	break;
	case 8:
		if (obj_game.ACHIEVE_death_dj){
			completed = true
			image_blend = color
		}else{
			completed = false
			image_blend = color + c_white
		}
	break;
	case 9:
		if (obj_game.ACHIEVE_death_jesse){
			completed = true
			image_blend = color
		}else{
			completed = false
			image_blend = color + c_white
		}
	break;
	case 10:
		if (obj_game.ACHIEVE_death_lydia){
			completed = true
			image_blend = color
		}else{
			completed = false
			image_blend = color + c_white
		}
	break;
	case 11:
		if (obj_game.ACHIEVE_complete_attic){
			completed = true
			image_blend = color
		}else{
			completed = false
			image_blend = color + c_white
		}
	break;
	case 12:
		if (obj_game.ACHIEVE_complete_wheatfield){
			completed = true
			image_blend = color
		}else{
			completed = false
			image_blend = color + c_white
		}
	break;
	case 13:
		if (obj_game.ACHIEVE_complete_stronghold){
			completed = true
			image_blend = color
		}else{
			completed = false
			image_blend = color + c_white
		}
	break;
	case 14:
		if (obj_game.ACHIEVE_complete_storage){
			completed = true
			image_blend = color
		}else{
			completed = false
			image_blend = color + c_white
		}
	break;
	case 15:
		if (obj_game.ACHIEVE_complete_hotel){
			completed = true
			image_blend = color
		}else{
			completed = false
			image_blend = color + c_white
		}
	break;
	case 16:
		if (obj_game.ACHIEVE_complete_forest){
			completed = true
			image_blend = color
		}else{
			completed = false
			image_blend = color + c_white
		}
	break;
	case 17:
		if (obj_game.ACHIEVE_complete_game){
			completed = true
			image_blend = color
		}else{
			completed = false
			image_blend = color + c_white
		}
	break;
	case 18:
		if (obj_game.ACHIEVE_complete_fast){
			completed = true
			image_blend = color
		}else{
			completed = false
			image_blend = color + c_white
			if (!obj_game.ACHIEVE_complete_game){
				LOCKED_name = "?"
				LOCKED_desc = "Beat the game to see how to unlock this!"
			}
		}
	break;
	case 19:
		if (obj_game.ACHIEVE_complete_hard){
			completed = true
			image_blend = color
		}else{
			completed = false
			image_blend = color + c_white
			if (!obj_game.ACHIEVE_complete_game){
				LOCKED_name = "?"
				LOCKED_desc = "Beat the game to see how to unlock this!"
			}
		}
	break;
	case 20:
		if (obj_game.ACHIEVE_complete_hardfast){
			completed = true
			image_blend = color
		}else{
			completed = false
			image_blend = color + c_white
			if (!obj_game.ACHIEVE_complete_game){
				LOCKED_name = "?"
				LOCKED_desc = "Beat the game to see how to unlock this!"
			}
		}
	break;
	case 21:
		if (obj_game.ACHIEVE_complete_endless){
			completed = true
			image_blend = color
		}else{
			completed = false
			image_blend = color + c_white
			if (!obj_game.ACHIEVE_complete_game){
				LOCKED_name = "?"
				LOCKED_desc = "Beat the game to see how to unlock this!"
			}
		}
	break;
	case 22:
		if (obj_game.ACHIEVE_complete_somemods){
			completed = true
			image_blend = color
		}else{
			completed = false
			image_blend = color + c_white
			if (!obj_game.ACHIEVE_complete_game){
				LOCKED_name = "?"
				LOCKED_desc = "Beat the game to see how to unlock this!"
			}else if (!obj_game.ACHIEVE_complete_endless){
				LOCKED_name = "?"
				LOCKED_desc = "Beat Repressed mode to see how to unlock this!"
			}
		}
	break;
	case 23:
		if (obj_game.ACHIEVE_complete_allmods){
			completed = true
			image_blend = color
		}else{
			completed = false
			image_blend = color + c_white
			if (!obj_game.ACHIEVE_complete_game){
				LOCKED_name = "?"
				LOCKED_desc = "Beat the game to see how to unlock this!"
			}else if (!obj_game.ACHIEVE_complete_endless){
				LOCKED_name = "?"
				LOCKED_desc = "Beat Repressed mode to see how to unlock this!"
			}
		}
	break;
	case 24:
		if (obj_game.ACHIEVE_death_a90){
			completed = true
			image_blend = color
		}else{
			completed = false
			image_blend = color + c_white
			if (!obj_game.ACHIEVE_complete_game){
				LOCKED_name = "?"
				LOCKED_desc = "Beat the game to see how to unlock this!"
			}
		}
	break;
	default:
		if (obj_game.ACHIEVE_death_manimo){
			completed = true
			image_blend = color
		}else{
			completed = false
			image_blend = color + c_white
		}
	break;
}