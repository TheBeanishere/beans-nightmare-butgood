image_speed = 0
ini_open("savedata.ini")
show_debug_message(ini_section_exists("wins"))
atticwin = ini_read_real("wins", "attic", 0)
ini_close()
