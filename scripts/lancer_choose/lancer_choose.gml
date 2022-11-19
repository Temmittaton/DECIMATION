function lancer_choose(){
	if (place_meeting(x, y, obj_player)){
		obj_player.dmg = id;
		return mob_knockback;
	}
	if (state == mob_idle) && (point_distance(obj_player.x, obj_player.y, x, y)<256){
		return ennemy_chase;
	}
	else if ((state == ennemy_chase) or (state == mob_stun)) && (animation_end()){
		return mob_idle;
	}
	else if ((state == ennemy_chase) && (point_distance(x, y, obj_player.x, obj_player.y)<24)){
		return lancer_attack;
	}
	else if (state == mob_knockback) && (animation_end()){
		return ennemy_chase;
	}
	else if (state == mob_stun) && (animation_end()){
		return mob_idle;
	}
}