function cendrier_choose () {
	if (mana <= 0) {
		return cendrier_powerless;
	}
	else if (state = cendrier_powerless && mana > 128) {
		return ennemy_chase;
	}
	else if ((obj_player.x < 24 or obj_player.x > 376) && (obj_player.state != player_cinematic)) {
		audio_stop_sound (sfx_shield);
		return cendrier_dash;
	}
	else if ((state == cendrier_shield) && (usedMana > 128)) {
		audio_stop_sound (sfx_shield);
		return cendrier_dash;
	}
	else if (state == cendrier_powerless) {
		return cendrier_powerless;
	}
	else if (mana > 128) && (state != cendrier_shield_charge) && (state != cendrier_shield) && (state != cendrier_dash) && (point_distance(x, y, obj_player.x, obj_player.y) <= 32) {
		return cendrier_shield_charge;
	}
	else if (obj_player.state == player_groundPound) && (point_distance(x, y, obj_player.x, obj_player.y) < 64){
		return cendrier_dash;
	}
	else if (sprite_index == spr_cendrier_cinematic) && (animation_end()) {
		obj_player.stateNext = player_idle;
		return ennemy_chase;
	}
	else if ((state == cendrier_shield_charge) && (animation_end())) {
		return cendrier_shield;
	}
	else if (state = cendrier_attack) && (animation_end()) {
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
	else if (superAttack >= 480) {
		return cendrier_Sattack;
	}
	else if (state = cendrier_Sattack) && (animation_end()) {
		audio_play_sound (sfx_superAttack, .9, false);
		repeat (3) {
			instance_create_layer(x, y, "Projectiles", obj_ball);
		}
		return ennemy_chase;
	}
	else if (((state == cendrier_shield) or (state == cendrier_shield_charge)) && ((abs(y - obj_player.y < 24)) && (obj_player.state == player_groundPound))) {
		audio_stop_sound (sfx_shield);
		return cendrier_dash;
	}
	else if ((state == cendrier_dash) && ((x < 16) or (x > room_width - 16) or (animation_end ()) or (xspd == 0))) {
		return cendrier_attack;
	}
	else if ((state == ennemy_chase) && (point_distance(x, y, obj_player.x, obj_player.y) < 64)){
		return cendrier_attack;
	}
}