ini_open ("save.ini");

var _key = ini_read_real ("Controls", actionID, 0);
if (_key != key){
	key =_key;
}

ini_close ();

keyboard_lastchar = "";

if (chr (key) != noone) {
	keyString = chr (key);
}

if (key == vk_enter) {
	keyString = "Enter";
}
else if (key == vk_space) {
	keyString = "Space";
}
else if (key == vk_shift or key == vk_lshift) {
	keyString = "Shift";
}
else if (key == vk_tab) {
	keyString = "Tab";
}
else if (key == vk_alt or key == vk_lalt) {
	keyString = "Alt";
}