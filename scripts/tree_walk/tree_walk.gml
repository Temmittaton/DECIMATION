function tree_walk (enter) {
	if (enter) {
		sprite_index = spr_tree_walk;
		image_index = 0;
		image_speed = 0.1;
		chase(obj_player);
	}
	
	return tree_walk;
}