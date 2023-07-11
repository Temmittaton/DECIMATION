function ant_walk (enter) {
	if (enter) {
		sprite_index = spr_ant_walk;
		image_index = 0;
		image_speed = 0.25;
		xspd = choose (-1, 1);
	}
	
	if (place_meeting (x + xspd * 4, y, par_solid) or (x + xspd < 0) or (x + xspd > room_width)) {
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