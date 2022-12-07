function cendrier_Sattack(enter){
	if (enter){
		xspd = 0;
		yspd = 0;
		image_xscale = -image_xscale;
		sprite_index = spr_cendrier_superAttack;
		image_index = 0;
		image_speed = 0.2;
	}
	yspd += grav;
	
	cendrier_mana_use(8);
	
	return cendrier_Sattack;
}