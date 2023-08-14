sprite_index = sprites [i];
if (animation_end ()) {
	i ++;
	image_index = 0;
	audio_play_sound (sfxs [i], 1, false);
}
if (i >= 3) {
	audio_stop_all ();
	room_goto (Tutorial);
}