function cendrier_powerless(enter){
	if (enter){
		sprite_index = spr_cendrier_down;
		image_index = 0;
		image_speed = 0.1;
		xspd = 0;
	}
	
	if (animation_end()){
		image_index = 16;
	}
	yspd += grav;
	
	mana++;
	
	return cendrier_powerless;
}