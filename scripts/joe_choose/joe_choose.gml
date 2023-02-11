function joe_choose() {
	if (state == mob_idle && (point_distance(x, y, obj_player.x, obj_player.y) < 64) && (!place_meeting(x, y + 4, obj_stone))) {
		return joe_surprised;
	}
	if (state == joe_surprised && animation_end()) {
		return joe_flee;
	}
	if (state == joe_flee && (place_meeting(x + 12, y, obj_stone))) {
		return joe_mine;
	}
}