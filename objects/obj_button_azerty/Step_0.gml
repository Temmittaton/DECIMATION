if (!keyboardType){image_index = 1}
else {image_index = 0}

if (flown_over()){
	image_alpha = 0.8;
}
else {
	image_alpha = 1;
}

if (clicked()){
	keyboardType = false;
	ini_open("save.ini");
	ini_write_real("Controls", "keyboardType", 0);
	ini_write_string("Controls", "left", "Q");
	ini_write_string("Controls", "interact", "Z");
	ini_write_string("Controls", "dash", "A");
	ini_close();
}