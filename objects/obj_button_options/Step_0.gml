function Click () {
	if (con_controllerMenuSelection.device == noone) {
		room_goto (Options);
	}
	else {
		room_goto (OptionsController);
	}
}

if (flown_over()){
	image_alpha = 0.8;
}
else {
	image_alpha = 1;
}

if (clicked()) or (keyboard_check_pressed(key)){
	Click ();
}