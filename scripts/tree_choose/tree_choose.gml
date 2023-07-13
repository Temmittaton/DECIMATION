function tree_choose () {
	if (keyboard_check(ord("H"))) {
		return tree_heal;
	}
	
	if (place_meeting (x, y, obj_player)) {
		obj_player.dmg = id;
		return tree_attack;
	}
	else if ((state == tree_cinematic) && (animation_end())) {
		obj_player.stateNext = player_idle;
		return tree_walk;
	}
	else if (state == tree_walk && point_distance(x, y, obj_player.x, obj_player.y) < 64) {
		return tree_attack;
	}
	else if (state == tree_attack && animation_end()) {
		return tree_walk;
	}
	else if (state == tree_walk && animation_end() && (point_distance(x, y, obj_player.x, obj_player.y) < 96)) {
		return tree_shoot;
	}
	else if (state == tree_walk && animation_end() && hp < 10) {
		return tree_heal;
	}
	if (state == tree_shoot && animation_end()) {
		return tree_walk;
	}
	else if (state == tree_walk && animation_end()) {
		chase(obj_player);
	}
	else if (state = tree_heal && animation_end()) {
		return tree_walk;
	}
}