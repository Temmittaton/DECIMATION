function player_groundPound(enter){
	if (enter){
		xspd = 0;
		sprite_index = spr_player_groundPound;
		image_speed = 0.8;
	}
	
	returnedState = player_groundPound;
	
	// Events
	yspd++;
	
	var _list = ds_list_create();
	var _num = collision_rectangle_list(x-6*image_xscale, y, x+6*image_xscale, y+16, par_mob, false, true, _list, false);
	if (_num != 0){
		for (i=0; i<_num; i++){
			variable_instance_set(_list[| i], "udmg", true);
		}
	}
	
	// Returned state selection
	if (interactKeyPressed){
		returnedState = player_idle;
	}
	else if (attackKeyPressed) && (attackTmr == 0){
		returnedState = player_attack;
	}
	else if (spellKeyPressed){
		if (selectedSpell == 0){
			returnedState = player_spell;
		}
		else {
			returnedState = player_fireSpell;
		}
	}
	else if (dashKeyPressed) && (dashtmr == 0){
		returnedState = player_dash;
	}
	else if (place_meeting(x, y+yspd, par_solid)){
		returnedState = player_idle;
		screen_shake(10, yspd/2);
	}
	
	if (animation_end())	{
		image_index = 4;
	}
	
	return returnedState;
}
