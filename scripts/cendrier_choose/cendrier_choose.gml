function cendrier_choose(){
	if (place_meeting(x, y, obj_player)){
		obj_player.dmg = id;
		return cendrier_dash;
	}
	else if (mana < 0){
		return cendrier_powerless;
	}
	else if ((state == cendrier_shield) && (usedMana > 128)){
		return cendrier_dash;
	}
	else if (state != cendrier_shield_charge) && (state != cendrier_shield) && (state != cendrier_dash) && (point_distance(x, y, obj_player.x, obj_player.y) <= 32){
		return cendrier_shield_charge;
	}
	else if (obj_player.state == player_groundPound) && (point_distance(x, y, obj_player.x, obj_player.y) < 64){
		return cendrier_dash;
	}
	else if (sprite_index == spr_cendrier_cinematic) && (animation_end()){
		obj_player.stateNext = player_idle;
		return ennemy_chase;
	}
	else if ((state == cendrier_shield_charge) && (animation_end())){
		return cendrier_shield;
	}
	else if (state = cendrier_attack) && (animation_end()){
		if (image_xscale == 1){
			var _fire = instance_create_layer(x, y, "Projectiles", obj_shuriken);
			_fire.direction = 0;
			_fire = instance_create_layer(x, y, "Projectiles", obj_shuriken);
			_fire.direction = 15;
			_fire = instance_create_layer(x, y, "Projectiles", obj_shuriken);
			_fire.direction = 365;
		}
		else {
			var _fire = instance_create_layer(x, y, "Projectiles", obj_shuriken);
			_fire.direction = 180;
			_fire = instance_create_layer(x, y, "Projectiles", obj_shuriken);
			_fire.direction = 165;
			_fire = instance_create_layer(x, y, "Projectiles", obj_shuriken);
			_fire.direction = 195;
		}
		
		return ennemy_chase;
	}
	else if (state = cendrier_Sattack) && (animation_end()){
		repeat(3){
			instance_create_layer(x, y, "Projectiles", obj_ball);
			
		}
		return ennemy_chase;
	}
	else if (((state == cendrier_shield) or (state == cendrier_shield_charge)) && ((y - obj_player.y < 24) && (obj_player.state = player_groundPound))){
		return cendrier_dash;
	}
	else if (state == cendrier_dash) && ((x < 65) or (x > room_width - 65) or (xspd = 0)){
		return cendrier_Sattack;
	}
	else if ((state == ennemy_chase) && (point_distance(x, y, obj_player.x, obj_player.y) < 64)){
		return cendrier_attack;
	}
}