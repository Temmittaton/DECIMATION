function scarab_choose(){
	if (place_meeting(x, y, obj_player) && state != scarab_upsideDown){
		obj_player.dmg = id;
		return mob_stun;
	}
	else if ((point_distance(x, y, obj_player.x, obj_player.y) < 128) && (state == mob_idle)){
		return ennemy_chase;
	}
	else if ((state == mob_stun) && (animation_end())){
		return ennemy_chase;
	}
	else if ((state == ennemy_chase) && (point_distance(x, y, obj_player.x, obj_player.y) < 24)){
		return scarab_attack;
	}
	else if ((state == scarab_attack) && (animation_end())){
		return ennemy_chase;
	}
	if ((state == scarab_hurt) && (animation_end())){
		return scarab_upsideDown;
	}
}