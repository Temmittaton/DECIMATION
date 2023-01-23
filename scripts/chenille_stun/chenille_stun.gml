function chenille_stun(enter) {
	if (enter) {
		sprite_index = spr_chenille_head_stun;
		image_index = 0;
		image_speed = 0.25;
		xspd = 0;
		if (yspd < 0){yspd = 0;}
	}
	
	return mob_idle;
}