function soldier_choose(){
	if (place_meeting(x, y, obj_player)){
		obj_player.dmg = id;
		audio_play_sound (sfx_soldierAttack, .5, false);
		return mob_knockback;
	}
	if (state == mob_idle) && (point_distance(obj_player.x, obj_player.y, x, y)<256){
		return ennemy_chase;
	}
	else if ((state == ennemy_chase) or (state == mob_stun)) && (animation_end()){
		return mob_idle;
	}
	else if (state == mob_knockback) && (animation_end()){
		return ennemy_chase;
	}
}