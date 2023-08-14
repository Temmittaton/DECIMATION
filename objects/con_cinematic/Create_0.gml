sprites = [spr_cinematic_0, spr_cinematic_1, spr_cinematic_2];
sfxs = [sfx_cinematic_0, sfx_cinematic_1, sfx_cinematic_2, 0];
i = 0;
r = display_get_height () / 135;
surface_resize (application_surface, display_get_width (), display_get_height ());
audio_stop_all ();
audio_play_sound (sfx_cinematic_0, 1, false);
cursor_sprite = -1;