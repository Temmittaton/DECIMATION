function joe_mine(enter) {
	if (enter) {
		sprite_index = spr_joe_mine;
		image_index = 0;
		image_speed = 0.15;
	}
	
	if (animation_end()) {
		instance_create_layer(x + image_xscale*4, y, "Items", obj_stone_particle);
	}
	
	return joe_mine;
}