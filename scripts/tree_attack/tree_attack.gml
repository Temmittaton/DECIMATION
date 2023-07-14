function tree_attack(enter){
	if (enter) {
		sprite_index = spr_tree_attack;
		image_index = 1;
		image_speed = 0.15;
		chase(obj_player);
		xspd *= 16;
	}
	
	if (image_index > 2) {
		if (collision_rectangle(x, y - 32, x + 22 * image_xscale, y - 10, obj_player, false, true)) {
			obj_player.dmg = id;
		}
	}
	if (image_index >= 3.90 && image_index <= 4.10) {
		screen_shake (16, 32);
		var _n = irandom (128);
		while (_n > 102) {
			drop (obj_scarab);
			_n -= 96;
		}
		while (_n > 96) {
			drop (obj_chenille_head);
			_n -= 96;
		}
		while (_n > 32) {
			drop (obj_ant);
			_n -= 48;
		}
		
		repeat (32) {
			instance_create_layer (x + 16 * image_xscale, y - 12, "Items", obj_leaf);
		}
	}
	
	return tree_attack;
}