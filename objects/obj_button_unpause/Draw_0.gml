function DrawUnpauseButton () {
	_x = window_mouse_get_x ();
	_y = window_mouse_get_y ();
	
	if (_x > x && _x < x + sprite_width && _y > y && _y < y + sprite_height) && (con_controllerMenuSelection.device == noone) {
		image_index = 1;
		if (mouse_check_button_pressed(mb_left)) {
			audio_play_sound(sfx_click, 1, false);
			
			con_lightSetup.paused = false;
			
			cursor_sprite = -1;
		}
	}
	else {image_index = 0;}
	
	draw_sprite_ext (sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
}