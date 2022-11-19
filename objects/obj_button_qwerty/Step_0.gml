if (obj_button_azerty.keyboardType){image_index = 1}
else {image_index = 0}

if (flown_over()){
	image_alpha = 0.8;
}
else {
	image_alpha = 1;
}

if (clicked()){
	obj_button_azerty.keyboardType = true;
	ini_open("save.ini");
	ini_write_real("Controls", "keyboardType", 1);
	ini_write_string("Controls", "left", "A");
	ini_write_string("Controls", "interact", "W");
	ini_write_string("Controls", "dash", "Q");
	ini_close();
}