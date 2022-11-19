function iceMage_choose(){
	if (place_meeting(x, y, obj_player)){
		instance_destroy();
	}
	else if ((state == mob_idle) && (point_distance(x, y, obj_player.x, obj_player.y) < 256)){
		return caster_chase;
	}
	else if ((state == caster_chase) && (animation_end())){
		if (point_distance(x, y, obj_player.x, obj_player.y) < 64){
			return iceMage_attack;
		}
	}
	else if ((state == iceMage_attack) && (animation_end())){
		return caster_chase;
	}
}