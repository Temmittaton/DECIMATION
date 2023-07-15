if (!audio_is_playing (music)) {
	audio_stop_all();
	audio_play_sound(music, 0.5, true);
}
instance_destroy ();