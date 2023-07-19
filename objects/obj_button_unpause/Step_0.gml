if (click) {
	audio_play_sound(sfx_click, 1, false);
	
	con_lightSetup.paused = false;
	
	cursor_sprite = -1;
	click = false;
}