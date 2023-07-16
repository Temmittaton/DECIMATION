function cendrier_attack(enter){
	if (enter){
		xspd = 0;
		yspd = 0;
		sprite_index = spr_cendrier_attack;
		image_index = 0;
		image_speed = 0.2;
		audio_play_sound (sfx_attack_charge, .8, false);
	}
	yspd += grav;
	superAttack++;
	
	cendrier_mana_use(2);
	
	return cendrier_attack;
}