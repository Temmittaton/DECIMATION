function tree_heal (enter) {
	if (enter) {
		if (racineTimer != 0) {return tree_walk;}
		else {racineTimer = abs (round (hp) - 6);}
		sprite_index = spr_tree_heal;
		image_index = 0;
		image_speed = 0.2;
		xspd = 0;
		n = 0;
	}
	
	if (image_index > 7 && image_index < 8.6 && image_index > n + 1) {
		var _scale = room_width / 4;
		var _rand = random_range (-6, 6);
		
		instance_create_layer (x - _rand + (image_index - 7) * _scale, 240, "Items", obj_racine);
		instance_create_layer (x + _rand - (image_index - 7) * _scale, 240, "Items", obj_racine);
		n ++;
	}
	if (image_index > 3 && image_index < 3.3) {
		audio_play_sound (sfx_tree_racine, .9, false);
	}
	
	return tree_heal;
}