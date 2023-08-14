function tree_cinematic (enter) {
	if (enter) {
		sprite_index = spr_tree_spawn;
		image_index = 0;
		image_speed = 0;
		xspd = 0;
	}
	
	if (image_speed == 0 && (x - obj_player.x < 128)) {
		image_speed = 1;
		audio_play_sound (sfx_tree_intro, 1, false);
	}
	
	return tree_cinematic;
}