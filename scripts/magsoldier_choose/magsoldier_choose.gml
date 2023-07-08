function magsoldier_choose() {
	if (place_meeting(x, y, obj_player)) {
		obj_player.dmg = id;
		audio_play_sound (sfx_soldierAttack, .5, false);
		return magsoldier_block;
	}
	else if (point_distance(x, y, obj_player.x, obj_player.y)<256) && (state == mob_idle) {
		return ennemy_chase;
	}
	else if (point_distance(x, y, obj_player.x, obj_player.y)>256) && (state == ennemy_chase) {
		xspd = -xspd;
		return ennemy_chase;
	}
	else if ((state == ennemy_chase) or (state == magsoldier_block)) && (animation_end()) {
		return mob_idle;
	}
	else if (state == magsoldier_block) && (animation_end()) {
		return ennemy_chase;
	}
	else if ((state == ennemy_chase) && (point_distance(x, y, obj_player.x, obj_player.y)<24)) {
		return magsoldier_attack;
	}
	else if ((state == magsoldier_attack) && (animation_end())) {
		return ennemy_chase;
	}
}