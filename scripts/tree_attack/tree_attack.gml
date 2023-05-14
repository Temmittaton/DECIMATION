function tree_attack(enter){
	if (enter) {
		sprite_index = spr_tree_attack;
		image_index = 1;
		image_speed = 0.25;
		chase(obj_player);
		xspd *= 16;
	}
	
	if (image_index > 2) {
		if (collision_rectangle(x, y - 32, x + 22 * image_xscale, y - 10, obj_player, false, true)) {
			obj_player.dmg = id;
		}
	}
	if (image_index == 4) {
		screen_shake (2, 8);
	}
	
	return tree_attack;
}