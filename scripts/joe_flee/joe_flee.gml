function joe_flee(enter) {
	if (enter) {
		xspd = 1;
		sprite_index = spr_joe_walk;
		image_index = 0;
		image_speed = 0.25;
	}
	
	yspd += grav;
	
	return joe_flee;
}