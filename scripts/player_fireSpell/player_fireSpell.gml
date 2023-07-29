function player_fireSpell (enter) {
	if (enter) {
		xspd = 0;
		if (mana <= 0){player_move();return player_idle;}
		image_index = 0;
		sprite_index = spr_player_fireSpell;
		image_speed = 0.25;
		color = #ff8600;
		size = 128;
		audio_play_sound (sfx_fire, .9, false);
	}
	
	returnedState = player_fireSpell;
	
	// Event
	yspd += grav;
	
	instance_create_layer(x, y, "Projectiles", obj_redwindFire);
	mana--;
	
	// Returned State Selection
	if (mana <= 0) or (!spellKey) or (xspd != 0) or leftKeyPressed or rightKeyPressed or jumpKeyPressed {
		returnedState = player_idle;
	}
	else if (attackKeyPressed) && (attackTmr == 0) {
		returnedState = player_attack;
	}
	else if (dashKeyPressed) && (dashtmr == 0) {
		returnedState = player_dash;
	}
	else if (downKeyPressed) && (!place_meeting(x, y + 3, par_solid)) {
		returnedState = player_groundPound;
	}
	
	if (returnedState != player_fireSpell) {
		color = #FFFFFF;
		size = 32;
		audio_stop_sound (sfx_fire);
	}
	
	return returnedState;
}