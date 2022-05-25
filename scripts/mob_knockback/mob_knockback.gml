function mob_knockback(enter){
	if (enter){
		xspd = 0;
	}
	returnedState = mob_knockback;
	
	// Action
	xspd += knockback;
	knockback-=sign(knockback);
	
	//Animation
	sprite_index = spr_soldier_walk;
	image_speed = 0;
	
	//Returned State Selection
	if (knockback == 0){
		returnedState = mob_stun;
	}
	
	return returnedState;
}