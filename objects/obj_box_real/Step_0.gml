ini_open("save.ini");

var _key = ini_read_real("Controls", actionID, 0);
if (_key != key){
	key =_key;
}

ini_close();

if (keyboard_check(key)){
	image_index = 1;
}
else {image_index = 0}