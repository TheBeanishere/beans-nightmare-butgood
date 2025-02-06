if (async_load[? "event_type"] == "gamepad discovered")
{
    var _pad = async_load[? "pad_index"];
    gamepad_set_axis_deadzone(_pad, 0.2);
    array_push(global.gamepad, _pad);
	global.controller = true
}
else if (async_load[? "event_type"] == "gamepad lost")
{
    var _pad = async_load[? "pad_index"];
    var _index = array_get_index(global.gamepad, _pad);
    array_delete(global.gamepad, _index, 1);
	global.controller = false
}