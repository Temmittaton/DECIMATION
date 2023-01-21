function ennemy_chase(enter){
	if (enter){
		chase(obj_player);
		image_index = 0;
	}
	returnedState = ennemy_chase;
	
	// Action
	if (animation_end()){
		chase(obj_player);
		image_index = 0;
	}
	
	if (animation_end()){
		chase(obj_player);
		image_index = 0;
	}
	
	if (place_meeting(x+xspd*2, y, par_solid)) && (!place_meeting(x+xspd*2, y, obj_slope)) && (place_meeting(x, y+2, par_solid)){
		yspd = -7;
		xspd += sign(xspd);
	}
	if (place_meeting(x, y+2, par_solid)) && (!place_meeting(x+xspd, y+4, par_solid)){
		yspd = -8;
		xspd += sign(xspd);
	}
	
	yspd += grav;
	
	//Animation
	if (!place_meeting(x, y+3, par_solid)){
		sprite_index = jumpSprite;
		image_speed = 0;
	}
	else {
		sprite_index = chaseSprite;
		image_speed = 0.1;
	}
	
	return returnedState;
}