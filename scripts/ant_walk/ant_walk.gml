function ant_walk (enter) {
	if (enter) {
		sprite_index = spr_ant_walk;
		image_index = 0;
		image_speed = 0.25;
		xspd = choose (-1, 1);
	}
	
	if (place_meeting (x + xspd, y, par_solid)) {
		if (choose (0, 1)) {
			xspd = -xspd;
		}
		else {
			yspd = -4;
		}
	}
	yspd += grav;
	
	return ant_walk;
}