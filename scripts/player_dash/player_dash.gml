function player_dash(enter) {
	if (enter) {
		sprite_index = 0;
		image_speed = 1.85;
		dash = image_xscale*1.5;
		yspd = 0;
		xspd = 0;
		audio_play_sound (sfx_dash, .8, false);
	}
	
	returnedState = player_dash;
	
	// Action
	xspd += dash;
	instance_create_layer (x, y, "Lights", obj_light_red);
	
	// Animation
	sprite_index = spr_player_dash;
	
	// Returned State selection
	if (attackKeyPressed) && (attackTmr == 0) {
		returnedState = player_attack;
	}
	else if (spellKey) {
		if (global.selectedSpell == 0) {
			returnedState = player_spell;
		}
		else if (!player_pressedInput()) {
			returnedState = player_fireSpell;
		}
	}
	else if (downKeyPressed) && (!place_meeting(x, y+3, par_solid)) {
		returnedState = player_groundPound;
	}
	else if (animation_end ()) {
		returnedState = player_idle;
		dashtmr = 20;
		dash = 0
	}
	
	return returnedState;
}