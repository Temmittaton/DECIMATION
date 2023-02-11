function joe_surprised(enter) {
	if (enter) {
		image_xscale = -image_xscale;
		sprite_index = spr_joe_surprised;
		image_index = 0;
		image_speed = 0.1;
	}
	
	return joe_surprised;
}