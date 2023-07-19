function DrawQuitToMenuButton () {
	_x = window_mouse_get_x ();
	_y = window_mouse_get_y ();
	
	if (_x > x && _x < x + sprite_width && _y > y && _y < y + sprite_height) && (con_controllerMenuSelection.device == noone) {
		var alpha = 0.5;
		if (mouse_check_button_pressed(mb_left)) {
			audio_play_sound(sfx_click, 1, false);
			
			application_surface_draw_enable(true);
			surface_resize(application_surface, con_lightSetup.SCREEN_WIDTH, con_lightSetup.SCREEN_HEIGHT);
			display_set_gui_maximize();
			room_goto (Menu);
			return noone;
		}
	}
	else {var alpha = 1;}
	
	draw_sprite_ext (sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, alpha);
}