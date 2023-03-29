if (flown_over()){
	image_alpha = 0.8;
}
else {
	image_alpha = 1;
}

if (clicked()) or (keyboard_check_pressed(vk_enter)) {
	con_lightSetup.paused = false;
	instance_activate_all();
	cursor_sprite = -1;
	
	instance_destroy(obj_button_quitToMenu);
	instance_destroy(obj_button_quitLevel);
	instance_destroy();
}