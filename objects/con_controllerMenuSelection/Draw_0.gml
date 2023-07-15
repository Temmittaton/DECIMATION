/*if (check != gamepad_is_connected (0) && gamepad_is_connected(0)) {
	if (room == Menu) {
		buttons [0] = instance_find (obj_button_quit, 0);
		buttons [1] = instance_find (obj_button_play, 0);
		buttons [2] = instance_find (obj_button_options, 0);
		button = 1;
	}
	else {
		buttons [0] = instance_find (obj_button_quitToMenu, 0);
		buttons [1] = instance_find (obj_button_quitLevel, 0);
		buttons [2] = instance_find (obj_button_unpause, 0);
		button = 2;
	}
}*/

for (var i = 0; i < 14; i++) {
	if (gamepad_is_connected (i)) {
		device = i;
		break;
	}
	device = noone;
}

check = gamepad_is_connected (device);

if (check) {
	cursor_sprite = -1;
	if (room == Menu) {
		buttons [0] = instance_find (obj_button_quit, 0);
		buttons [1] = instance_find (obj_button_play, 0);
		buttons [2] = instance_find (obj_button_options, 0);
	}
	else if (con_lightSetup.paused) {
		buttons [0] = instance_find (obj_button_quitToMenu, 0);
		buttons [1] = instance_find (obj_button_quitLevel, 0);
		buttons [2] = instance_find (obj_button_unpause, 0);
	}
	button += sign (gamepad_axis_value (device, gp_axislh) + gamepad_axis_value (device, gp_axisrv)) / 16;
	if (gamepad_axis_value (device, gp_axislh) == 0) {button = floor (button + .5);}
	
	if (button >= array_length (buttons)) {
		button = 0;
	}
	else if (button < 0) {
		button = array_length (buttons) - 1;
	}
	
	if (room == Menu) {
		var _x = buttons [button].x + buttons [button].sprite_width / 2;
		draw_sprite_ext (spr_sword_vertical, 0, _x, buttons [button].y, .15, .15, 0, c_white, 1);
	
		if (gamepad_button_check_pressed (device, gp_face2)) {
			buttons [button].Click ();
		}
	}
}
else {
	cursor_sprite = spr_pauseMenu_curseur;
}