ini_open("save.ini");

var _key = ini_read_string("Controls", actionID, "Error");
if (_key != key){
	key =_key;
}

ini_close();

if (keyboard_check(ord(key))){
	image_index = 1;
}
else {image_index = 0}