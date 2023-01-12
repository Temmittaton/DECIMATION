function mob_flee(enter){
	if (enter){
		chase(obj_player);
		xspd = -xspd;
		image_index = 0;
	}
	returnedState = mob_flee;
	
	// Action
	if (grounded() && place_meeting(x + xspd*4, y, par_solid)){
		yspd = -7;
	}
	if (grounded() && place_meeting(x + xspd, y, par_solid)){
		xspd = -xspd;
	}
	else if (grounded() && !place_meeting(x + xspd*2, y + 2, par_solid)){
		yspd  = -4;
	}
	
	yspd += grav;
	
	//Animation
	if (!place_meeting(x, y+1, par_solid)){
		sprite_index = jumpSprite;
		image_speed = 0;
	}
	else {
		sprite_index = chaseSprite;
		image_speed = 0.2;
	}
	
	return returnedState;
}