function mob_idle(enter){
	if (enter){
		xspd = 0;
	}
	returnedState = mob_idle;
	
	// Action
	yspd+=grav;
	
	//Animation
	sprite_index = idleSprite;
	image_speed = 0.05;
	
	return returnedState;
}