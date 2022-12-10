function scarab_choose(){
	if (place_meeting(x, y, obj_player)){
		obj_player.dmg = id;
		return mob_stun;
	}
	else if ((point_distance(x, y, obj_player.x, obj_player.y) < 128) && (state == mob_idle)){
		return ennemy_chase;
	}
	else if ((state == mob_stun) && (animation_end())){
		return ennemy_chase;
	}
}