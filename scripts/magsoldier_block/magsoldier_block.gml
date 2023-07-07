function magsoldier_block (enter) {
	if (enter) {
		xspd = 0;
		if (obj_player.x < x) {
			image_xscale = -1;
		}
		else {
			image_xscale = 1;
		}
	}
	returnedState = magsoldier_block;
	
	// Action
	yspd+=grav;
	
	//Animation
	sprite_index = spr_magsoldier_stun;
	image_speed = 0.1;
	
	return returnedState;
}