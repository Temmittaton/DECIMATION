function Click () {
	room_goto(target);
}

if (flown_over()){
	image_alpha = 0.8;
}
else {
	image_alpha = 1;
}

if (clicked()) or (keyboard_check_pressed(key)) {
	Click ();
}
if (con_controllerMenuSelection.device != noone) {
	if (gamepad_button_check_pressed (con_controllerMenuSelection.device, gp_face2)) {
		Click ();
	}
}