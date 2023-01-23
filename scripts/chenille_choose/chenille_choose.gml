function chenille_choose() {
	if (place_meeting(x, y, obj_player)) {
		obj_player.dmg = id;
		return chenille_stun;
	}
	if (state == mob_idle) && (point_distance(obj_player.x, obj_player.y, x, y) < 256) {
		return ennemy_chase;
	}
	else if (state == chenille_stun) && (animation_end()) {
		return mob_idle;
	}
	else if (state == ennemy_chase) && (stateNext != chenille_stun) && (animation_end()) {
		return mob_idle;
	}
}