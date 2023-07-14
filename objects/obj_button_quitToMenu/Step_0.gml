function Click () {
	audio_play_sound(sfx_click, 1, false);
	
	application_surface_draw_enable(true);
	surface_resize(application_surface, con_lightSetup.SCREEN_WIDTH, con_lightSetup.SCREEN_HEIGHT);
	display_set_gui_maximize();
	room_goto (Menu);
	
	cursor_sprite = -1;
}