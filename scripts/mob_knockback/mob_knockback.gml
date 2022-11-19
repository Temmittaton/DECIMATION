function mob_knockback(enter){
	if (enter){
		xspd = 0;
		yspd = -1;
		image_index = 0;
		if (obj_player.x < x){
			knockback = 2;
		}
		else{
			knockback = -2;
		}
	}
	returnedState = mob_knockback;
	
	// Action
	xspd = knockback;
	
	//Animation
	sprite_index = knockbackSprite;
	image_speed = 0.3;
	
	return returnedState;
}