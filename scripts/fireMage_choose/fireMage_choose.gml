function fireMage_choose(){
	if (place_meeting(x, y, obj_player)){
		instance_destroy();
	}
	else if ((state == mob_idle) && (point_distance(x, y, obj_player.x, obj_player.y) < 256)){
		return caster_chase;
	}
	else if ((state == caster_chase) && (animation_end())){
		if (point_distance(x, y, obj_player.x, obj_player.y) < 128){
			return fireMage_attack;
		}
	}
	else if ((state == fireMage_attack) && (animation_end())){
		instance_create_layer(x, y, "Projectiles", obj_fireBall);
		
		return caster_chase;
	}
}