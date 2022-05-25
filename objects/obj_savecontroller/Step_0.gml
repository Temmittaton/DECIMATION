if instance_exists(obj_player)
{
	ini_open("controls.ini");
	obj_player.leftKey = ini_read_string("Controls", "left", "Error");
	obj_player.interactKey = ini_read_string("Controls", "interact", "Error");
	obj_player.dashKey = ini_read_string("Controls", "dash", "Error");
	ini_write_real("Save", "gold", global.gold);
	ini_close();
}
