function mob_idle(enter){
	if (enter){
		xspd = 0;
	}
	returnedState = mob_idle;
	
	// Action
	yspd+=grav;
	
	//Animation
	sprite_index = spr_soldier_idle;
	image_speed = 0.5;
	
	return returnedState;
}