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
		instance_create_layer (x, y - 4, "Controllers", con_lifeSteal);
		obj_player.dmg = id;
		audio_play_sound (sfx_tree_heal, .9, false);
	}
}