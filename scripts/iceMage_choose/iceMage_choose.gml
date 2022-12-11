function iceMage_choose(){
	if (place_meeting(x, y, obj_player)){
		obj_player.stateNext = player_gloryKill2;
		obj_player.x = x;
		instance_create_layer(x, y, "Controllers", obj_iceMage_glory);
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