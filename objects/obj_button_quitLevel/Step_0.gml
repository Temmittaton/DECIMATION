if (click) {
	audio_play_sound(sfx_click, 1, false);
	
	cursor_sprite = -1;
	room_goto (LevelSelection);
	click = false;
}