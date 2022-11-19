function player_fireSpell(enter){
	if (enter){
		if (mana <= 0){return player_idle;}
		xspd = 0;
		image_index = 0;
		sprite_index = spr_player_fireSpell;
		image_speed = 0.25;
		color = #ff8600;
		size = 128;
	}
	
	returnedState = player_fireSpell;
	
	// Event
	player_move();
	
	instance_create_layer(x, y, "Projectiles", obj_redwindFire);
	mana--;
	
	// Returned State Selection
	if (mana == 0) or (player_pressedInput() > 0){
		returnedState = player_idle;
		color = #FFFFFF;
		size = 32;
	}
	else if (attackKeyPressed) && (attackTmr == 0){
		returnedState = player_attack;
		color = #FFFFFF;
		size = 32;
	}
	else if (dashKeyPressed) && (dashtmr == 0){
		returnedState = player_dash;
		color = #FFFFFF;
		size = 32;
	}
	else if (downKeyPressed) && (!place_meeting(x, y+3, par_solid)){
		returnedState = player_groundPound;
		color = #FFFFFF;
		size = 32;
	}
	
	return returnedState;
}