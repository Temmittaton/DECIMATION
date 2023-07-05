function DrawButton () {
	_x = window_mouse_get_x ();
	_y = window_mouse_get_y ();
	
	if (_x > x && _x < x + sprite_width && _y > y && _y < y + sprite_height) {
		var alpha = 0.5;
		if (mouse_check_button_pressed(mb_left)) {
			audio_play_sound(sfx_click, 1, false);
			if (object_get_name(id.object_index) == "obj_button_unpause") {
				con_lightSetup.paused = false;
				return noone;
			}
			else if (object_get_name(id.object_index) == "obj_button_quitToMenu") {
				application_surface_draw_enable(true);
				surface_resize(application_surface,SCREEN_WIDTH,SCREEN_HEIGHT);
				display_set_gui_maximize();
				room_goto (Menu);
				return noone;
			}
			cursor_sprite = -1;
			room_goto (LevelSelection);
			return noone;
		}
	}
	else {var alpha = 1;}
	
	draw_sprite_ext (sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, alpha);
	draw_rectangle(x, y, x + sprite_width, y + sprite_height, true);
}