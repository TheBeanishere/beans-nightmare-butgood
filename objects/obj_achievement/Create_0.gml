image_speed = 0
ini_open(lang)
achievename = ini_read_string("achievements", string(achievementID) + "achieve", "What")
achievedesc = ini_read_string("achievements", string(achievementID) + "achievedesc", "What")
ini_close()
originy = y

if (file_exists("savedata.sav")){
	var _bufferload = buffer_load("savedata.sav")
	var _stringbsload = buffer_read(_bufferload, buffer_string)
	buffer_delete(_bufferload)
	var _loadarray = json_parse(_stringbsload)
	
	var _loadachievedata = array_get(_loadarray, 3)
	switch(achievementID){
		case 1:
				unlocked = _loadachievedata.achieve1
		break;
		case 2:
				unlocked = _loadachievedata.achieve2;
		break;
		case 3:
				unlocked = _loadachievedata.achieve3;
		break;
		case 4:
				unlocked = _loadachievedata.achieve4;
		break;
		case 5:
				unlocked = _loadachievedata.achieve5;
		break;
		case 6:
				unlocked = _loadachievedata.achieve6;
		break;
		case 7:
				unlocked = _loadachievedata.achieve7;
		break;
		case 8:
				unlocked = _loadachievedata.achieve8;
		break;
		case 9:
				unlocked = _loadachievedata.achieve9;
		break;
		case 10:
				unlocked = _loadachievedata.achieve10;
		break;
		case 11:
				unlocked = _loadachievedata.achieve11;
		break;
		case 12:
				unlocked = _loadachievedata.achieve12;
		break;
		case 13:
				unlocked = _loadachievedata.achieve13;
		break;
		case 14:
				unlocked = _loadachievedata.achieve14;
		break;
		case 15:
				unlocked = _loadachievedata.achieve15;
		break;
		case 16:
				unlocked = _loadachievedata.achieve16;
		break;
		case 17:
				unlocked = _loadachievedata.achieve17;
		break;
		case 18:
				unlocked = _loadachievedata.achieve18;
		break;
		case 19:
				unlocked = _loadachievedata.achieve19;
		break;
		case 20:
				unlocked = _loadachievedata.achieve20;
		break;
		case 21:
				unlocked = _loadachievedata.achieve21;
		break;
		case 22:
				unlocked = _loadachievedata.achieve22;
		break;
		case 23:
				unlocked = _loadachievedata.achieve23;
		break;
		case 24:
				unlocked = _loadachievedata.achieve24;
		break;
		case 25:
				unlocked = _loadachievedata.achieve25;
		break;
	}
}