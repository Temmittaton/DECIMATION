function tree_walk (enter) {
	if (enter) {
		sprite_index = spr_tree_walk;
		image_index = 0;
		image_speed = 0.1;
		chase(obj_player);
	}
	
	if (image_index == 0 or image_index == 2 or image_index == 4 or image_index == 7) {
		audio_play_sound (sfx_tree_walk, .6, false);
	}
	
	return tree_walk;
}