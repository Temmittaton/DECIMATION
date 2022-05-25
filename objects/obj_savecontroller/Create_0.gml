ini_open("controls.ini");
if !file_exists("controls.ini")
{
	ini_write_string("Controls", "left", "Q");
	ini_write_string("Controls", "right", "D");
	ini_write_string("Controls", "interact", "Z");
	ini_write_string("Controls", "crouch", "S");
	ini_write_string("Controls", "attack", "Enter");
	ini_write_string("Controls", "spell", "Shift");
	ini_write_string("Controls", "switch weapon", "Tab");
	ini_write_string("Controls", "switch spell", "Alt");
	ini_write_string("Controls", "dash", "A");
	ini_write_string("Controls", "jump", "Space");
	ini_write_real("Save", "gold", 0);
}

global.gold=ini_read_real("Save", "gold", 0);

if instance_exists(obj_player)
{
	obj_player.leftKey = ini_read_string("Controls", "left", "Error");
	obj_player.interactKey = ini_read_string("Controls", "interact", "Error");
	obj_player.dashKey = ini_read_string("Controls", "dash", "Error");
}

ini_close();
