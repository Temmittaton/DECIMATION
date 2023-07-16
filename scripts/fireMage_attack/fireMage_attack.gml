function fireMage_attack(enter){
	if (enter){
		if (obj_player.x < x){
			xspd = -chaseSpeed;
		}
		else{
			xspd = chaseSpeed;
		}
		xspd = 0;
		sprite_index = spr_fireMage_attack;
		image_index = 0;
		image_speed = 0.15;
		audio_play_sound (sfx_fireMage_attack, .8, false);
	}
	
	return fireMage_attack;
}