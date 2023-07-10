if (animation_end ()) {
	if (check) {
		sprite_index = spr_racine_die;
		check = false;
	}
	else {
		instance_destroy ();
	}
}

if (image_index > 7 && image_index < 24) {
	if (place_meeting (x, y, obj_player)) {
		obj_player.dmg = id;
		obj_tree.hp ++;
	}
}