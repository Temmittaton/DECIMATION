function mob_knockback(enter) {
	if (enter) {
		xspd = 0;
		yspd = -4;
		image_index = 0;
		if (obj_player.x < x) {
			knockback = 16;
		}
		else {
			knockback = -16;
		}
	}
	returnedState = mob_knockback;
	
	// Action
	xspd = knockback;
	knockback -= sign(knockback);
	yspd += grav;
	
	//Animation
	sprite_index = knockbackSprite;
	image_speed = 0.8;
	
	return returnedState;
}