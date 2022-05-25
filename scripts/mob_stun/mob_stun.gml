function mob_stun(enter){
	if (enter){
		xspd = 0;
	}
	returnedState = mob_knockback;
	
	// Action
	
	//Animation
	sprite_index = spr_soldier_stun;
	image_speed = 0.5;
	
	//Returned State Selection
	if (animation_end()){
		returnedState = mob_idle;
	}
	
	return returnedState;
}