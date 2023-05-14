function tree_shoot (enter) {
	if (enter) {
		sprite_index = spr_tree_headAttack;
		image_index = 0;
		image_speed = 0.8;
		xspd = 0;
	}
	
	if (image_index == 8) {
		screen_shake(4, 16);
		instance_create_layer(x + 19 * image_xscale, y - 15, "Mobs", obj_tree_head);
	}
	else if (image_index == 8.8) {
		image_speed = 0;
	}
	
	return tree_shoot;
}