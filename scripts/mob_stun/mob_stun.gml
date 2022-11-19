function mob_stun(enter){
	if (enter){
		xspd = 0;
	}
	returnedState = mob_stun;
	
	// Action
	
	//Animation
	sprite_index = spr_soldier_stun;
	image_speed = 0.8;
	
	return returnedState;
}