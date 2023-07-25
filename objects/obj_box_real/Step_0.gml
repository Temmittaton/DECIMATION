if (flown_over ()) {
	image_alpha = .8;
}
else {image_alpha = 1;}

if (clicked ()) {
	image_index = 2;
	keyString = "";
	with (obj_box_real) {
		if (id != other.id) {
			image_index = 0;
		}
	}
}

if (image_index != 2) {
	if (keyboard_check (key)) {
		image_index = 1;
	}
	else {image_index = 0;}
}
else {
	if (keyboard_lastkey != 0) {
		keyString = keyboard_lastchar;
		key = keyboard_lastkey;
		
		if (keyboard_lastchar == "") {
			keyString = getString (keyboard_lastkey);
		}
		
		if (keyboard_check (vk_enter)) {
			keyString = "Enter";
		}
		else if (keyboard_check (vk_space)) {
			keyString = "Space";
		}
		else if (keyboard_check (vk_tab)) {
			keyString = "Tab";
		}
		else if (keyboard_check (vk_shift) or keyboard_check (vk_lshift)) {
			keyString = "Shift";
		}
		else if (keyboard_check (vk_lalt) or keyboard_check (vk_alt)) {
			keyString = "Alt";
		}
		
		image_index = 0;/*
		keyboard_lastchar = "";
		keyboard_lastkey = vk_nokey;*/
		
		// Saving key
		ini_open ("save.ini");
		
		ini_write_real ("Controls", actionID, key);
		
		ini_close ();
		
		// Sending to player
		if (room == Options) {
			with (obj_player) {
				GetInputs ();
			}
		}
	}
}