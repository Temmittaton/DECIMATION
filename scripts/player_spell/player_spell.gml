function player_spell(enter){
	if (enter){
		image_index = 0;
		sprite_index = spr_player_spell;
		image_speed = 0.25;
		color = #ff1600;
		size = 128;
	}
	
	returnedState = player_spell;
	
	// Events
	player_move();
	
	// Returned State Selection
	if (dashKeyPressed) && (dashtmr == 0){
		returnedState = player_dash;
		color = #FFFFFF;
		size = 32;
	}
	else if (downKeyPressed) && (!place_meeting(x, y+3, par_solid)){
		returnedState = player_groundPound;
		color = #FFFFFF;
		size = 32;
	}
	else if (animation_end()){
		returnedState = player_idle;
		if (mana>10){
			mana-=10;
			instance_create_layer(x, y, "Projectiles", obj_spell);
		}
		color = #FFFFFF;
		size = 32;
	}
	
	return returnedState;
}