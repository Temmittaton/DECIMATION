function player_idle(enter){
	if (enter)	{
		image_speed = 0.03;
		sprite_index = spr_player_idle;
	}
	
	returnedState = player_idle;
	
	// Movement
	player_move();
	
	// Animations
	
	if (!place_meeting(x, y+2, par_solid))	{
		sprite_index = spr_player_jump;
		image_speed = 0.5;
	} 
	else if (xspd == 0)	{
		sprite_index = spr_player_idle;
		image_speed = 1;
	}
	else	{
		sprite_index = spr_player_walk;
		image_speed = 0.13;
	}
	
	// Returned state selection
	if (attackKeyPressed) && (attackTmr == 0){
		returnedState = player_attack;
	}
	else if (spellKey){
		if (global.selectedSpell == 0){
			returnedState = player_spell;
		}
		else if (!player_pressedInput()) {
			returnedState = player_fireSpell;
		}
	}
	else if (dashKeyPressed) && (dashtmr == 0)	{
		returnedState = player_dash;
	}
	else if (downKeyPressed) && (!place_meeting(x, y+3, par_solid)){
		returnedState = player_groundPound;
	}
	
	return returnedState;
}