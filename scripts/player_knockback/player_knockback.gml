function player_knockback(enter){
	if (enter){
		sprite_index = spr_player_knockback;
		image_index = 0;
		xspd = 0;
		yspd = -2;
		dash = 0;
	}
	returnedState = player_knockback;
	
	// Event
	xspd = knockback;
	
	// Animation
	sprite_index = spr_player_knockback;
	image_speed = 0.4;
	
	// Returned State selection
	if (animation_end()){
		returnedState = player_idle;
		knockback = 0;
	}
	
	return returnedState;
}