function cendrier_attack(enter){
	if (enter){
		xspd = 0;
		yspd = 0;
		sprite_index = spr_cendrier_attack;
		image_index = 0;
		image_speed = 0.2;
	}
	yspd += grav;
	
	return cendrier_attack;
}